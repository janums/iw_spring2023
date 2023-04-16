; ModuleID = 'tracer.bc'
source_filename = "tracer.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
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
%struct.gcov_ctr_summary = type { i32, i32, i64, i64, i64 }
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.fibnode = type { %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, i64, i8*, i32 }
%struct.fibheap = type { i64, %struct.fibnode*, %struct.fibnode* }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"tracer\00", align 1
@pass_tracer = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_tracer, i32 ()* @tracer, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 134, i32 0, i32 0, i32 0, i32 0, i32 2053 } }, align 8, !dbg !0
@bb_seen = common dso_local local_unnamed_addr global %struct.simple_bitmap_def* null, align 8, !dbg !1916
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_tracer = external dso_local local_unnamed_addr global i32, align 4
@flag_reorder_blocks = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tracer.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@profile_info = external dso_local local_unnamed_addr global %struct.gcov_ctr_summary*, align 8
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@probability_cutoff = internal unnamed_addr global i32 0, align 4, !dbg !1928
@branch_ratio_cutoff = internal unnamed_addr global i32 0, align 4, !dbg !1930
@.str.3 = private unnamed_addr constant [26 x i8] c"Duplicated %i as %i [%i]\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" covered now %.1f\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Duplicated %i insns (%i%%)\0A\00", align 1
@eni_size_weights = external dso_local global %struct.eni_weights_d, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Trace seed %i [%i]\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c",%i [%i]\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c" forward %i [%i]\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1962 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1976, metadata !DIExpression()), !dbg !1977
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1978
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1979
  ret i32 %call, !dbg !1980
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1981 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1985
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1986
  ret i32 %call, !dbg !1987
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1988 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2043, metadata !DIExpression()), !dbg !2044
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2045
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2045
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2045
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2045
  %cmp = icmp uge i8* %0, %1, !dbg !2045
  %conv1 = zext i1 %cmp to i64, !dbg !2045
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2045
  %tobool = icmp eq i64 %expval, 0, !dbg !2045
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2045

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2045
  br label %cond.end, !dbg !2045

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2045
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2045
  %2 = load i8, i8* %0, align 1, !dbg !2045
  %conv3 = zext i8 %2 to i32, !dbg !2045
  br label %cond.end, !dbg !2045

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2045
  ret i32 %cond, !dbg !2046
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2047 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2049, metadata !DIExpression()), !dbg !2050
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2051
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2051
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2051
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2051
  %cmp = icmp uge i8* %0, %1, !dbg !2051
  %conv1 = zext i1 %cmp to i64, !dbg !2051
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2051
  %tobool = icmp eq i64 %expval, 0, !dbg !2051
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2051

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2051
  br label %cond.end, !dbg !2051

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2051
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2051
  %2 = load i8, i8* %0, align 1, !dbg !2051
  %conv3 = zext i8 %2 to i32, !dbg !2051
  br label %cond.end, !dbg !2051

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2051
  ret i32 %cond, !dbg !2052
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2053 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2054
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2054
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2054
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2054
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2054
  %cmp = icmp uge i8* %1, %2, !dbg !2054
  %conv1 = zext i1 %cmp to i64, !dbg !2054
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2054
  %tobool = icmp eq i64 %expval, 0, !dbg !2054
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2054

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2054
  br label %cond.end, !dbg !2054

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2054
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2054
  %3 = load i8, i8* %1, align 1, !dbg !2054
  %conv3 = zext i8 %3 to i32, !dbg !2054
  br label %cond.end, !dbg !2054

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2054
  ret i32 %cond, !dbg !2055
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2056 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2060, metadata !DIExpression()), !dbg !2061
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2062
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2063
  ret i32 %call, !dbg !2064
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2065 {
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

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2074 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2076, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2077, metadata !DIExpression()), !dbg !2078
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2079
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2079
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2079
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2079
  %cmp = icmp uge i8* %0, %1, !dbg !2079
  %conv1 = zext i1 %cmp to i64, !dbg !2079
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2079
  %tobool = icmp eq i64 %expval, 0, !dbg !2079
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2079

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2079
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2079
  br label %cond.end, !dbg !2079

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2079
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2079
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2079
  store i8 %conv2, i8* %0, align 1, !dbg !2079
  %conv6 = and i32 %__c, 255, !dbg !2079
  br label %cond.end, !dbg !2079

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2079
  ret i32 %cond, !dbg !2080
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2081 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2083, metadata !DIExpression()), !dbg !2084
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2085
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2085
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2085
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2085
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2085
  %cmp = icmp uge i8* %1, %2, !dbg !2085
  %conv1 = zext i1 %cmp to i64, !dbg !2085
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2085
  %tobool = icmp eq i64 %expval, 0, !dbg !2085
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2085

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2085
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2085
  br label %cond.end, !dbg !2085

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2085
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2085
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2085
  store i8 %conv4, i8* %1, align 1, !dbg !2085
  %conv6 = and i32 %__c, 255, !dbg !2085
  br label %cond.end, !dbg !2085

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2085
  ret i32 %cond, !dbg !2086
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2087 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2093, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2094, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2095, metadata !DIExpression()), !dbg !2096
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2097
  ret i64 %call, !dbg !2098
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2099 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2101, metadata !DIExpression()), !dbg !2102
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2103
  %0 = load i32, i32* %_flags, align 8, !dbg !2103
  %and = lshr i32 %0, 4, !dbg !2103
  %and.lobit = and i32 %and, 1, !dbg !2103
  ret i32 %and.lobit, !dbg !2104
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2105 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2107, metadata !DIExpression()), !dbg !2108
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2109
  %0 = load i32, i32* %_flags, align 8, !dbg !2109
  %and = lshr i32 %0, 5, !dbg !2109
  %and.lobit = and i32 %and, 1, !dbg !2109
  ret i32 %and.lobit, !dbg !2110
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2111 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2114, metadata !DIExpression()), !dbg !2115
  %__c.off = add i32 %__c, 128, !dbg !2116
  %0 = icmp ult i32 %__c.off, 384, !dbg !2116
  br i1 %0, label %cond.true, label %cond.end, !dbg !2116

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2117
  %1 = load i32*, i32** %call, align 8, !dbg !2118
  %idxprom = sext i32 %__c to i64, !dbg !2119
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2119
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2119
  br label %cond.end, !dbg !2120

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2120
  ret i32 %cond, !dbg !2121
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2122 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2124, metadata !DIExpression()), !dbg !2125
  %__c.off = add i32 %__c, 128, !dbg !2126
  %0 = icmp ult i32 %__c.off, 384, !dbg !2126
  br i1 %0, label %cond.true, label %cond.end, !dbg !2126

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2127
  %1 = load i32*, i32** %call, align 8, !dbg !2128
  %idxprom = sext i32 %__c to i64, !dbg !2129
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2129
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2129
  br label %cond.end, !dbg !2130

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2130
  ret i32 %cond, !dbg !2131
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2137, metadata !DIExpression()), !dbg !2138
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2139
  %conv = trunc i64 %call to i32, !dbg !2140
  ret i32 %conv, !dbg !2141
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2142 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2146, metadata !DIExpression()), !dbg !2147
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2148
  ret i64 %call, !dbg !2149
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2150 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2155, metadata !DIExpression()), !dbg !2156
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2157
  ret i64 %call, !dbg !2158
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2159 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2165, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2166, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2167, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2168, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2169, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 0, metadata !2170, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2171, metadata !DIExpression()), !dbg !2175
  br label %while.cond, !dbg !2176

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2177
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2171, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2170, metadata !DIExpression()), !dbg !2175
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2178
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2176

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2179
  %div = lshr i64 %add, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %div, metadata !2172, metadata !DIExpression()), !dbg !2175
  %mul = mul i64 %div, %__size, !dbg !2182
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2183
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2173, metadata !DIExpression()), !dbg !2175
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %call, metadata !2174, metadata !DIExpression()), !dbg !2175
  %cmp1 = icmp slt i32 %call, 0, !dbg !2185
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2187

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2188
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2190

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2170, metadata !DIExpression()), !dbg !2175
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2175
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2171, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2170, metadata !DIExpression()), !dbg !2175
  br label %while.cond, !dbg !2176, !llvm.loop !2192

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2175
  ret i8* %retval.0, !dbg !2194
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2195 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2201, metadata !DIExpression()), !dbg !2202
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2203
  ret double %call, !dbg !2204
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2205 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2214, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2215, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 %base, metadata !2216, metadata !DIExpression()), !dbg !2217
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2218
  ret i64 %call, !dbg !2219
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2220 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2226, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2227, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 %base, metadata !2228, metadata !DIExpression()), !dbg !2229
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2230
  ret i64 %call, !dbg !2231
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2232 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2243, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 %base, metadata !2245, metadata !DIExpression()), !dbg !2246
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2247
  ret i64 %call, !dbg !2248
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2249 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2253, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2254, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32 %base, metadata !2255, metadata !DIExpression()), !dbg !2256
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2257
  ret i64 %call, !dbg !2258
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2259 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2299, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2300, metadata !DIExpression()), !dbg !2301
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2302
  ret i32 %call, !dbg !2303
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2304 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2306, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2307, metadata !DIExpression()), !dbg !2308
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2309
  ret i32 %call, !dbg !2310
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2311 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2315, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2316, metadata !DIExpression()), !dbg !2317
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2318
  ret i32 %call, !dbg !2319
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2320 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2324, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2325, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2326, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2327, metadata !DIExpression()), !dbg !2328
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2329
  ret i32 %call, !dbg !2330
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2331 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2335, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2336, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2337, metadata !DIExpression()), !dbg !2338
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2337, metadata !DIExpression(DW_OP_deref)), !dbg !2338
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2339
  ret i32 %call, !dbg !2340
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2341 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2345, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2346, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2348, metadata !DIExpression()), !dbg !2349
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2348, metadata !DIExpression(DW_OP_deref)), !dbg !2349
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2350
  ret i32 %call, !dbg !2351
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2352 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2376, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2377, metadata !DIExpression()), !dbg !2378
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2379
  ret i32 %call, !dbg !2380
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2381 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2383, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2384, metadata !DIExpression()), !dbg !2385
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2386
  ret i32 %call, !dbg !2387
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2388 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2393, metadata !DIExpression()), !dbg !2394
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2395
  ret i32 %call, !dbg !2396
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2397 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2401, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2402, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2403, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2404, metadata !DIExpression()), !dbg !2405
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2406
  ret i32 %call, !dbg !2407
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tracer() #5 !dbg !2408 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2409
  %cmp = icmp sgt i32 %0, 0, !dbg !2410
  %1 = load i32, i32* @flag_tracer, align 4, !dbg !2411
  %tobool = icmp ne i32 %1, 0, !dbg !2411
  %or.cond = and i1 %cmp, %tobool, !dbg !2412
  br i1 %or.cond, label %land.rhs, label %land.end, !dbg !2412

land.rhs:                                         ; preds = %entry
  %2 = load i32, i32* @flag_reorder_blocks, align 4, !dbg !2413
  %tobool1 = icmp ne i32 %2, 0, !dbg !2414
  %phitmp = zext i1 %tobool1 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %3, !dbg !2415
}

; Function Attrs: nounwind uwtable
define internal i32 @tracer() #5 !dbg !2416 {
entry:
  %call = tail call i32 @current_ir_type() #6, !dbg !2417
  %cmp = icmp eq i32 %call, 0, !dbg !2417
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2417

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 354, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2417
  br label %cond.end, !dbg !2417

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2418
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2418
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2418
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !2418
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2418
  %cmp1 = icmp slt i32 %2, 4, !dbg !2420
  br i1 %cmp1, label %return, label %if.end, !dbg !2421

if.end:                                           ; preds = %cond.end
  %call2 = tail call zeroext i8 @mark_dfs_back_edges() #6, !dbg !2422
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2423
  %tobool = icmp eq %struct._IO_FILE* %3, null, !dbg !2423
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !2425

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* @dump_flags, align 4, !dbg !2426
  tail call void @dump_flow_info(%struct._IO_FILE* nonnull %3, i32 %4) #6, !dbg !2427
  br label %if.end4, !dbg !2427

if.end4:                                          ; preds = %if.end, %if.then3
  tail call fastcc void @tail_duplicate() #7, !dbg !2428
  tail call void @free_dominance_info(i32 1) #6, !dbg !2429
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2430
  %tobool5 = icmp eq %struct._IO_FILE* %5, null, !dbg !2430
  br i1 %tobool5, label %return, label %if.then6, !dbg !2432

if.then6:                                         ; preds = %if.end4
  %6 = load i32, i32* @dump_flags, align 4, !dbg !2433
  tail call void @dump_flow_info(%struct._IO_FILE* nonnull %5, i32 %6) #6, !dbg !2434
  br label %return, !dbg !2434

return:                                           ; preds = %if.end4, %if.then6, %cond.end
  ret i32 0, !dbg !2435
}

declare dso_local i32 @current_ir_type() local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #2

declare dso_local void @dump_flow_info(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @tail_duplicate() unnamed_addr #5 !dbg !2436 {
entry:
  %copy = alloca %struct.basic_block_def*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2474
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2474
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2474
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !2474
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !2474
  %conv = sext i32 %2 to i64, !dbg !2474
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2474
  %3 = bitcast i8* %call to %struct.fibnode**, !dbg !2474
  call void @llvm.dbg.value(metadata %struct.fibnode** %3, metadata !2440, metadata !DIExpression()), !dbg !2475
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2476
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2476
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !2476
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 3, !dbg !2476
  %6 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2476
  %conv3 = sext i32 %6 to i64, !dbg !2476
  %mul = shl nsw i64 %conv3, 3, !dbg !2476
  %call4 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2476
  %7 = bitcast i8* %call4 to %struct.basic_block_def**, !dbg !2476
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %7, metadata !2441, metadata !DIExpression()), !dbg !2475
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2477
  %cfg6 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !2477
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6, align 8, !dbg !2477
  %x_last_basic_block7 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 5, !dbg !2477
  %10 = load i32, i32* %x_last_basic_block7, align 8, !dbg !2477
  %conv8 = sext i32 %10 to i64, !dbg !2477
  %mul9 = shl nsw i64 %conv8, 2, !dbg !2477
  %call10 = tail call i8* @xmalloc(i64 %mul9) #6, !dbg !2477
  %11 = bitcast i8* %call10 to i32*, !dbg !2477
  call void @llvm.dbg.value(metadata i32* %11, metadata !2442, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 0, metadata !2443, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 0, metadata !2444, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 0, metadata !2445, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 0, metadata !2446, metadata !DIExpression()), !dbg !2475
  %call11 = tail call %struct.fibheap* @fibheap_new() #6, !dbg !2478
  call void @llvm.dbg.value(metadata %struct.fibheap* %call11, metadata !2447, metadata !DIExpression()), !dbg !2475
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2479
  %cfg13 = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 1, !dbg !2479
  %13 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg13, align 8, !dbg !2479
  %x_last_basic_block14 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %13, i64 0, i32 5, !dbg !2479
  %14 = load i32, i32* %x_last_basic_block14, align 8, !dbg !2479
  %mul15 = shl nsw i32 %14, 1, !dbg !2480
  %call16 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %mul15) #6, !dbg !2481
  store %struct.simple_bitmap_def* %call16, %struct.simple_bitmap_def** @bb_seen, align 8, !dbg !2482
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call16) #6, !dbg !2483
  tail call void @initialize_original_copy_tables() #6, !dbg !2484
  %15 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !2485
  %tobool = icmp ne %struct.gcov_ctr_summary* %15, null, !dbg !2485
  %16 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2487
  %tobool17 = icmp ne i32 %16, 0, !dbg !2487
  %or.cond = and i1 %tobool, %tobool17, !dbg !2488
  %17 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2489
  br i1 %or.cond, label %if.then, label %if.else, !dbg !2488

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %17, i64 51, i32 1, !dbg !2490
  br label %if.end, !dbg !2491

if.else:                                          ; preds = %entry
  %value19 = getelementptr inbounds %struct.param_info, %struct.param_info* %17, i64 52, i32 1, !dbg !2492
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge.in = phi i32* [ %value19, %if.else ], [ %value, %if.then ]
  %storemerge = load i32, i32* %storemerge.in, align 8, !dbg !2489
  %mul20 = mul nsw i32 %storemerge, 100, !dbg !2493
  store i32 %mul20, i32* @probability_cutoff, align 4, !dbg !2494
  %value22 = getelementptr inbounds %struct.param_info, %struct.param_info* %17, i64 50, i32 1, !dbg !2495
  %18 = load i32, i32* %value22, align 8, !dbg !2495
  %mul23 = mul nsw i32 %18, 100, !dbg !2496
  store i32 %mul23, i32* @branch_ratio_cutoff, align 4, !dbg !2497
  %19 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2498
  %cfg25 = getelementptr inbounds %struct.function, %struct.function* %19, i64 0, i32 1, !dbg !2498
  %20 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg25, align 8, !dbg !2498
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %20, i64 0, i32 0, !dbg !2498
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2498
  br label %for.cond, !dbg !2498

for.cond:                                         ; preds = %if.end36, %if.end
  %22 = phi %struct.control_flow_graph* [ %20, %if.end ], [ %.pre3, %if.end36 ], !dbg !2499
  %.pn = phi %struct.basic_block_def* [ %21, %if.end ], [ %bb.0, %if.end36 ]
  %weighted_insns.0 = phi i64 [ 0, %if.end ], [ %add43, %if.end36 ], !dbg !2475
  %ninsns.0 = phi i32 [ 0, %if.end ], [ %add, %if.end36 ], !dbg !2475
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2500
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2500
  call void @llvm.dbg.value(metadata i32 %ninsns.0, metadata !2443, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %weighted_insns.0, metadata !2445, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2457, metadata !DIExpression()), !dbg !2475
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %22, i64 0, i32 1, !dbg !2499
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2499
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %23, !dbg !2499
  br i1 %cmp, label %for.end, label %for.body, !dbg !2498

for.body:                                         ; preds = %for.cond
  %call29 = tail call fastcc i32 @count_insns(%struct.basic_block_def* %bb.0) #7, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %call29, metadata !2458, metadata !DIExpression()), !dbg !2502
  %call30 = tail call fastcc zeroext i8 @ignore_bb_p(%struct.basic_block_def* %bb.0) #7, !dbg !2503
  %tobool31 = icmp eq i8 %call30, 0, !dbg !2503
  br i1 %tobool31, label %if.then32, label %if.end36, !dbg !2505

if.then32:                                        ; preds = %for.body
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 11, !dbg !2506
  %24 = load i32, i32* %frequency, align 8, !dbg !2506
  %sub = sub nsw i32 0, %24, !dbg !2507
  %conv33 = sext i32 %sub to i64, !dbg !2507
  %25 = bitcast %struct.basic_block_def* %bb.0 to i8*, !dbg !2508
  %call34 = tail call %struct.fibnode* @fibheap_insert(%struct.fibheap* %call11, i64 %conv33, i8* %25) #6, !dbg !2509
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2510
  %26 = load i32, i32* %index, align 8, !dbg !2510
  %idxprom = sext i32 %26 to i64, !dbg !2511
  %arrayidx35 = getelementptr inbounds %struct.fibnode*, %struct.fibnode** %3, i64 %idxprom, !dbg !2511
  store %struct.fibnode* %call34, %struct.fibnode** %arrayidx35, align 8, !dbg !2512
  br label %if.end36, !dbg !2511

if.end36:                                         ; preds = %for.body, %if.then32
  %index37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2513
  %27 = load i32, i32* %index37, align 8, !dbg !2513
  %idxprom38 = sext i32 %27 to i64, !dbg !2514
  %arrayidx39 = getelementptr inbounds i32, i32* %11, i64 %idxprom38, !dbg !2514
  store i32 %call29, i32* %arrayidx39, align 4, !dbg !2515
  %add = add nsw i32 %ninsns.0, %call29, !dbg !2516
  call void @llvm.dbg.value(metadata i32 %add, metadata !2443, metadata !DIExpression()), !dbg !2475
  %frequency40 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 11, !dbg !2517
  %28 = load i32, i32* %frequency40, align 8, !dbg !2517
  %mul41 = mul nsw i32 %call29, %28, !dbg !2518
  %conv42 = sext i32 %mul41 to i64, !dbg !2519
  %add43 = add nsw i64 %weighted_insns.0, %conv42, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %add43, metadata !2445, metadata !DIExpression()), !dbg !2475
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2499
  %cfg27.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2521
  %.pre3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg27.phi.trans.insert, align 8, !dbg !2499
  br label %for.cond, !dbg !2499, !llvm.loop !2522

for.end:                                          ; preds = %for.cond
  %weighted_insns.0.lcssa = phi i64 [ %weighted_insns.0, %for.cond ], !dbg !2475
  %ninsns.0.lcssa = phi i32 [ %ninsns.0, %for.cond ], !dbg !2475
  call void @llvm.dbg.value(metadata i64 %weighted_insns.0.lcssa, metadata !2445, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 %ninsns.0.lcssa, metadata !2443, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %weighted_insns.0.lcssa, metadata !2445, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 %ninsns.0.lcssa, metadata !2443, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %weighted_insns.0.lcssa, metadata !2445, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 %ninsns.0.lcssa, metadata !2443, metadata !DIExpression()), !dbg !2475
  %29 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !2524
  %tobool45 = icmp ne %struct.gcov_ctr_summary* %29, null, !dbg !2524
  %30 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2526
  %tobool47 = icmp ne i32 %30, 0, !dbg !2526
  %or.cond1 = and i1 %tobool45, %tobool47, !dbg !2527
  %31 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2528
  br i1 %or.cond1, label %if.then48, label %if.else52, !dbg !2527

if.then48:                                        ; preds = %for.end
  %value50 = getelementptr inbounds %struct.param_info, %struct.param_info* %31, i64 47, i32 1, !dbg !2529
  br label %if.end56, !dbg !2530

if.else52:                                        ; preds = %for.end
  %value54 = getelementptr inbounds %struct.param_info, %struct.param_info* %31, i64 48, i32 1, !dbg !2531
  br label %if.end56

if.end56:                                         ; preds = %if.else52, %if.then48
  %cover_insns.0.in.in = phi i32* [ %value50, %if.then48 ], [ %value54, %if.else52 ]
  %cover_insns.0.in = load i32, i32* %cover_insns.0.in.in, align 8, !dbg !2528
  %cover_insns.0 = sext i32 %cover_insns.0.in to i64, !dbg !2528
  call void @llvm.dbg.value(metadata i64 %cover_insns.0, metadata !2455, metadata !DIExpression()), !dbg !2475
  %mul57 = mul nsw i64 %weighted_insns.0.lcssa, %cover_insns.0, !dbg !2532
  %add58 = add nsw i64 %mul57, 50, !dbg !2533
  %div = sdiv i64 %add58, 100, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %div, metadata !2455, metadata !DIExpression()), !dbg !2475
  %value60 = getelementptr inbounds %struct.param_info, %struct.param_info* %31, i64 49, i32 1, !dbg !2535
  %32 = load i32, i32* %value60, align 8, !dbg !2535
  %mul61 = mul nsw i32 %ninsns.0.lcssa, %32, !dbg !2536
  %add62 = add nsw i32 %mul61, 50, !dbg !2537
  %div63 = sdiv i32 %add62, 100, !dbg !2538
  call void @llvm.dbg.value(metadata i32 %div63, metadata !2456, metadata !DIExpression()), !dbg !2475
  %33 = bitcast %struct.basic_block_def** %copy to i8*, !dbg !2539
  %conv179 = sitofp i64 %weighted_insns.0.lcssa to double, !dbg !2540
  br label %while.cond, !dbg !2542

while.cond:                                       ; preds = %cleanup183, %if.end56
  %traced_insns.0 = phi i64 [ 0, %if.end56 ], [ %traced_insns.3, %cleanup183 ], !dbg !2543
  %nduplicated.0 = phi i32 [ 0, %if.end56 ], [ %nduplicated.4, %cleanup183 ], !dbg !2544
  call void @llvm.dbg.value(metadata i32 %nduplicated.0, metadata !2444, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %traced_insns.0, metadata !2446, metadata !DIExpression()), !dbg !2475
  %cmp64 = icmp slt i64 %traced_insns.0, %div, !dbg !2545
  %cmp67 = icmp slt i32 %nduplicated.0, %div63, !dbg !2546
  %or.cond2 = and i1 %cmp64, %cmp67, !dbg !2547
  br i1 %or.cond2, label %land.rhs, label %while.end, !dbg !2547

land.rhs:                                         ; preds = %while.cond
  %call69 = call i32 @fibheap_empty(%struct.fibheap* %call11) #6, !dbg !2548
  %tobool70 = icmp eq i32 %call69, 0, !dbg !2549
  br i1 %tobool70, label %while.body, label %while.end, !dbg !2542

while.body:                                       ; preds = %land.rhs
  %call72 = call i8* @fibheap_extract_min(%struct.fibheap* %call11) #6, !dbg !2550
  %34 = bitcast i8* %call72 to %struct.basic_block_def*, !dbg !2551
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %34, metadata !2462, metadata !DIExpression()), !dbg !2552
  %tobool74 = icmp eq i8* %call72, null, !dbg !2553
  br i1 %tobool74, label %cleanup183, label %if.end76, !dbg !2555

if.end76:                                         ; preds = %while.body
  %index77 = getelementptr inbounds i8, i8* %call72, i64 80, !dbg !2556
  %35 = bitcast i8* %index77 to i32*, !dbg !2556
  %36 = load i32, i32* %35, align 8, !dbg !2556
  %idxprom78 = sext i32 %36 to i64, !dbg !2557
  %arrayidx79 = getelementptr inbounds %struct.fibnode*, %struct.fibnode** %3, i64 %idxprom78, !dbg !2557
  store %struct.fibnode* null, %struct.fibnode** %arrayidx79, align 8, !dbg !2558
  %call80 = call fastcc zeroext i8 @ignore_bb_p(%struct.basic_block_def* nonnull %34) #7, !dbg !2559
  %tobool81 = icmp eq i8 %call80, 0, !dbg !2559
  br i1 %tobool81, label %if.end83, label %cleanup183, !dbg !2561, !llvm.loop !2562

if.end83:                                         ; preds = %if.end76
  %call84 = call fastcc zeroext i8 @bb_seen_p(%struct.basic_block_def* nonnull %34) #7, !dbg !2564
  %tobool85 = icmp eq i8 %call84, 0, !dbg !2564
  br i1 %tobool85, label %cond.end, label %cond.true, !dbg !2564

cond.true:                                        ; preds = %if.end83
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 278, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2564
  br label %cond.end, !dbg !2564

cond.end:                                         ; preds = %if.end83, %cond.true
  %call86 = call fastcc i32 @find_trace(%struct.basic_block_def* nonnull %34, %struct.basic_block_def** %7) #7, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %call86, metadata !2464, metadata !DIExpression()), !dbg !2552
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %7, align 8, !dbg !2566
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %37, metadata !2462, metadata !DIExpression()), !dbg !2552
  %frequency88 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 11, !dbg !2567
  %38 = load i32, i32* %frequency88, align 8, !dbg !2567
  %index89 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 9, !dbg !2568
  %39 = load i32, i32* %index89, align 8, !dbg !2568
  %idxprom90 = sext i32 %39 to i64, !dbg !2569
  %arrayidx91 = getelementptr inbounds i32, i32* %11, i64 %idxprom90, !dbg !2569
  %40 = load i32, i32* %arrayidx91, align 4, !dbg !2569
  %mul92 = mul nsw i32 %38, %40, !dbg !2570
  %conv93 = sext i32 %mul92 to i64, !dbg !2571
  %add94 = add nsw i64 %traced_insns.0, %conv93, !dbg !2572
  call void @llvm.dbg.value(metadata i64 %add94, metadata !2446, metadata !DIExpression()), !dbg !2475
  %arrayidx97 = getelementptr inbounds %struct.fibnode*, %struct.fibnode** %3, i64 %idxprom90, !dbg !2573
  %41 = load %struct.fibnode*, %struct.fibnode** %arrayidx97, align 8, !dbg !2573
  %tobool98 = icmp eq %struct.fibnode* %41, null, !dbg !2573
  br i1 %tobool98, label %if.end107, label %if.then99, !dbg !2575

if.then99:                                        ; preds = %cond.end
  %call103 = call i8* @fibheap_delete_node(%struct.fibheap* %call11, %struct.fibnode* nonnull %41) #6, !dbg !2576
  %42 = load i32, i32* %index89, align 8, !dbg !2578
  %idxprom105 = sext i32 %42 to i64, !dbg !2579
  %arrayidx106 = getelementptr inbounds %struct.fibnode*, %struct.fibnode** %3, i64 %idxprom105, !dbg !2579
  store %struct.fibnode* null, %struct.fibnode** %arrayidx106, align 8, !dbg !2580
  br label %if.end107, !dbg !2581

if.end107:                                        ; preds = %cond.end, %if.then99
  call void @llvm.dbg.value(metadata i32 1, metadata !2465, metadata !DIExpression()), !dbg !2552
  %43 = sext i32 %call86 to i64, !dbg !2582
  br label %for.cond108, !dbg !2582

for.cond108:                                      ; preds = %for.inc173, %if.end107
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc173 ], [ 1, %if.end107 ], !dbg !2552
  %bb71.0 = phi %struct.basic_block_def* [ %bb2.0, %for.inc173 ], [ %37, %if.end107 ], !dbg !2552
  %traced_insns.1 = phi i64 [ %add133, %for.inc173 ], [ %add94, %if.end107 ], !dbg !2552
  %nduplicated.1 = phi i32 [ %nduplicated.2, %for.inc173 ], [ %nduplicated.0, %if.end107 ], !dbg !2475
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2465, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i32 %nduplicated.1, metadata !2444, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %traced_insns.1, metadata !2446, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb71.0, metadata !2462, metadata !DIExpression()), !dbg !2552
  %cmp109 = icmp slt i64 %indvars.iv, %43, !dbg !2583
  br i1 %cmp109, label %for.body111, label %for.end174, !dbg !2584

for.body111:                                      ; preds = %for.cond108
  %arrayidx113 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %7, i64 %indvars.iv, !dbg !2585
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx113, align 8, !dbg !2585
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %44, metadata !2466, metadata !DIExpression()), !dbg !2586
  %index114 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i64 0, i32 9, !dbg !2587
  %45 = load i32, i32* %index114, align 8, !dbg !2587
  %idxprom115 = sext i32 %45 to i64, !dbg !2589
  %arrayidx116 = getelementptr inbounds %struct.fibnode*, %struct.fibnode** %3, i64 %idxprom115, !dbg !2589
  %46 = load %struct.fibnode*, %struct.fibnode** %arrayidx116, align 8, !dbg !2589
  %tobool117 = icmp eq %struct.fibnode* %46, null, !dbg !2589
  br i1 %tobool117, label %if.end126, label %if.then118, !dbg !2590

if.then118:                                       ; preds = %for.body111
  %call122 = call i8* @fibheap_delete_node(%struct.fibheap* %call11, %struct.fibnode* nonnull %46) #6, !dbg !2591
  %47 = load i32, i32* %index114, align 8, !dbg !2593
  %idxprom124 = sext i32 %47 to i64, !dbg !2594
  %arrayidx125 = getelementptr inbounds %struct.fibnode*, %struct.fibnode** %3, i64 %idxprom124, !dbg !2594
  store %struct.fibnode* null, %struct.fibnode** %arrayidx125, align 8, !dbg !2595
  %.pre4 = load i32, i32* %index114, align 8, !dbg !2596
  %.pre5 = sext i32 %.pre4 to i64, !dbg !2597
  br label %if.end126, !dbg !2598

if.end126:                                        ; preds = %for.body111, %if.then118
  %idxprom129.pre-phi = phi i64 [ %idxprom115, %for.body111 ], [ %.pre5, %if.then118 ], !dbg !2597
  %frequency127 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i64 0, i32 11, !dbg !2599
  %48 = load i32, i32* %frequency127, align 8, !dbg !2599
  %arrayidx130 = getelementptr inbounds i32, i32* %11, i64 %idxprom129.pre-phi, !dbg !2597
  %49 = load i32, i32* %arrayidx130, align 4, !dbg !2597
  %mul131 = mul nsw i32 %48, %49, !dbg !2600
  %conv132 = sext i32 %mul131 to i64, !dbg !2601
  %add133 = add nsw i64 %traced_insns.1, %conv132, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %add133, metadata !2446, metadata !DIExpression()), !dbg !2475
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i64 0, i32 0, !dbg !2603
  %50 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2603
  %tobool134 = icmp eq %struct.VEC_edge_gc* %50, null, !dbg !2603
  br i1 %tobool134, label %cond.end138, label %cond.true135, !dbg !2603

cond.true135:                                     ; preds = %if.end126
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %50, i64 0, i32 0, !dbg !2603
  br label %cond.end138, !dbg !2603

cond.end138:                                      ; preds = %if.end126, %cond.true135
  %cond139 = phi %struct.VEC_edge_base* [ %base, %cond.true135 ], [ null, %if.end126 ], !dbg !2603
  %call140 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond139) #7, !dbg !2603
  %cmp141 = icmp ugt i32 %call140, 1, !dbg !2604
  br i1 %cmp141, label %land.lhs.true143, label %if.end168, !dbg !2605

land.lhs.true143:                                 ; preds = %cond.end138
  %call144 = call zeroext i8 @can_duplicate_block_p(%struct.basic_block_def* %44) #6, !dbg !2606
  %tobool146 = icmp eq i8 %call144, 0, !dbg !2606
  br i1 %tobool146, label %if.end168, label %if.then147, !dbg !2607

if.then147:                                       ; preds = %land.lhs.true143
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #8, !dbg !2608
  %51 = load i32, i32* %index114, align 8, !dbg !2609
  %idxprom149 = sext i32 %51 to i64, !dbg !2610
  %arrayidx150 = getelementptr inbounds i32, i32* %11, i64 %idxprom149, !dbg !2610
  %52 = load i32, i32* %arrayidx150, align 4, !dbg !2610
  %add151 = add nsw i32 %nduplicated.1, %52, !dbg !2611
  call void @llvm.dbg.value(metadata i32 %add151, metadata !2444, metadata !DIExpression()), !dbg !2475
  %call152 = call %struct.edge_def* @find_edge(%struct.basic_block_def* %bb71.0, %struct.basic_block_def* %44) #6, !dbg !2612
  call void @llvm.dbg.value(metadata %struct.edge_def* %call152, metadata !2470, metadata !DIExpression()), !dbg !2539
  %call153 = call %struct.basic_block_def* @duplicate_block(%struct.basic_block_def* %44, %struct.edge_def* %call152, %struct.basic_block_def* %bb71.0) #6, !dbg !2613
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call153, metadata !2473, metadata !DIExpression()), !dbg !2539
  store %struct.basic_block_def* %call153, %struct.basic_block_def** %copy, align 8, !dbg !2614
  call void @flush_pending_stmts(%struct.edge_def* %call152) #6, !dbg !2615
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %copy, metadata !2473, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  call void @add_phi_args_after_copy(%struct.basic_block_def** nonnull %copy, i32 1, %struct.edge_def* null) #6, !dbg !2616
  %53 = load i32, i32* %frequency127, align 8, !dbg !2617
  %sub155 = sub nsw i32 0, %53, !dbg !2618
  %conv156 = sext i32 %sub155 to i64, !dbg !2618
  %54 = bitcast %struct.basic_block_def* %44 to i8*, !dbg !2619
  %call157 = call %struct.fibnode* @fibheap_insert(%struct.fibheap* %call11, i64 %conv156, i8* %54) #6, !dbg !2620
  %55 = load i32, i32* %index114, align 8, !dbg !2621
  %idxprom159 = sext i32 %55 to i64, !dbg !2622
  %arrayidx160 = getelementptr inbounds %struct.fibnode*, %struct.fibnode** %3, i64 %idxprom159, !dbg !2622
  store %struct.fibnode* %call157, %struct.fibnode** %arrayidx160, align 8, !dbg !2623
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2624
  %tobool161 = icmp eq %struct._IO_FILE* %56, null, !dbg !2624
  br i1 %tobool161, label %if.end167, label %if.then162, !dbg !2626

if.then162:                                       ; preds = %if.then147
  %57 = load i32, i32* %index114, align 8, !dbg !2627
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %copy, align 8, !dbg !2628
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %58, metadata !2473, metadata !DIExpression()), !dbg !2539
  %index164 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i64 0, i32 9, !dbg !2629
  %59 = load i32, i32* %index164, align 8, !dbg !2629
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %58, metadata !2473, metadata !DIExpression()), !dbg !2539
  %frequency165 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i64 0, i32 11, !dbg !2630
  %60 = load i32, i32* %frequency165, align 8, !dbg !2630
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %59, i32 %60) #6, !dbg !2631
  br label %if.end167, !dbg !2631

if.end167:                                        ; preds = %if.then147, %if.then162
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %copy, align 8, !dbg !2632
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %61, metadata !2473, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %61, metadata !2466, metadata !DIExpression()), !dbg !2586
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #8, !dbg !2633
  br label %if.end168, !dbg !2634

if.end168:                                        ; preds = %land.lhs.true143, %if.end167, %cond.end138
  %nduplicated.2 = phi i32 [ %add151, %if.end167 ], [ %nduplicated.1, %land.lhs.true143 ], [ %nduplicated.1, %cond.end138 ], !dbg !2475
  %bb2.0 = phi %struct.basic_block_def* [ %61, %if.end167 ], [ %44, %land.lhs.true143 ], [ %44, %cond.end138 ], !dbg !2586
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb2.0, metadata !2466, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 %nduplicated.2, metadata !2444, metadata !DIExpression()), !dbg !2475
  call fastcc void @mark_bb_seen(%struct.basic_block_def* %bb2.0) #7, !dbg !2635
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb2.0, metadata !2462, metadata !DIExpression()), !dbg !2552
  %call169 = call fastcc zeroext i8 @ignore_bb_p(%struct.basic_block_def* %bb2.0) #7, !dbg !2636
  %tobool170 = icmp eq i8 %call169, 0, !dbg !2636
  br i1 %tobool170, label %for.inc173, label %for.end174

for.inc173:                                       ; preds = %if.end168
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2638
  call void @llvm.dbg.value(metadata i32 undef, metadata !2465, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2552
  br label %for.cond108, !dbg !2639, !llvm.loop !2640

for.end174:                                       ; preds = %if.end168, %for.cond108
  %traced_insns.2 = phi i64 [ %add133, %if.end168 ], [ %traced_insns.1, %for.cond108 ], !dbg !2552
  %nduplicated.3 = phi i32 [ %nduplicated.2, %if.end168 ], [ %nduplicated.1, %for.cond108 ], !dbg !2475
  call void @llvm.dbg.value(metadata i32 %nduplicated.3, metadata !2444, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %traced_insns.2, metadata !2446, metadata !DIExpression()), !dbg !2475
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2642
  %tobool175 = icmp eq %struct._IO_FILE* %62, null, !dbg !2642
  br i1 %tobool175, label %cleanup183, label %if.then176, !dbg !2643

if.then176:                                       ; preds = %for.end174
  %conv177 = sitofp i64 %traced_insns.2 to double, !dbg !2644
  %mul178 = fmul double %conv177, 1.000000e+02, !dbg !2645
  %div180 = fdiv double %mul178, %conv179, !dbg !2646
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), double %div180) #6, !dbg !2647
  br label %cleanup183, !dbg !2647

cleanup183:                                       ; preds = %for.end174, %if.end76, %while.body, %if.then176
  %traced_insns.3 = phi i64 [ %traced_insns.0, %while.body ], [ %traced_insns.0, %if.end76 ], [ %traced_insns.2, %if.then176 ], [ %traced_insns.2, %for.end174 ], !dbg !2475
  %nduplicated.4 = phi i32 [ %nduplicated.0, %while.body ], [ %nduplicated.0, %if.end76 ], [ %nduplicated.3, %if.then176 ], [ %nduplicated.3, %for.end174 ], !dbg !2475
  %cleanup.dest.slot.1 = phi i1 [ true, %while.body ], [ false, %if.end76 ], [ false, %if.then176 ], [ false, %for.end174 ]
  call void @llvm.dbg.value(metadata i32 %nduplicated.4, metadata !2444, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %traced_insns.3, metadata !2446, metadata !DIExpression()), !dbg !2475
  br i1 %cleanup.dest.slot.1, label %while.end, label %while.cond

while.end:                                        ; preds = %cleanup183, %while.cond, %land.rhs
  %nduplicated.5 = phi i32 [ %nduplicated.4, %cleanup183 ], [ %nduplicated.0, %land.rhs ], [ %nduplicated.0, %while.cond ], !dbg !2544
  call void @llvm.dbg.value(metadata i32 %nduplicated.5, metadata !2444, metadata !DIExpression()), !dbg !2475
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2648
  %tobool188 = icmp eq %struct._IO_FILE* %63, null, !dbg !2648
  br i1 %tobool188, label %if.end193, label %if.then189, !dbg !2650

if.then189:                                       ; preds = %while.end
  %mul190 = mul nsw i32 %nduplicated.5, 100, !dbg !2651
  %div191 = sdiv i32 %mul190, %ninsns.0.lcssa, !dbg !2652
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %nduplicated.5, i32 %div191) #6, !dbg !2653
  br label %if.end193, !dbg !2653

if.end193:                                        ; preds = %while.end, %if.then189
  call void @free_original_copy_tables() #6, !dbg !2654
  %64 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_seen, align 8, !dbg !2655
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %64, i64 0, i32 0, !dbg !2655
  %65 = load i8*, i8** %popcount, align 8, !dbg !2655
  call void @free(i8* %65) #6, !dbg !2655
  %66 = load i8*, i8** bitcast (%struct.simple_bitmap_def** @bb_seen to i8**), align 8, !dbg !2655
  call void @free(i8* %66) #6, !dbg !2655
  call void @free(i8* %call) #6, !dbg !2656
  call void @free(i8* %call4) #6, !dbg !2657
  call void @free(i8* %call10) #6, !dbg !2658
  call void @fibheap_delete(%struct.fibheap* %call11) #6, !dbg !2659
  ret void, !dbg !2660
}

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local %struct.fibheap* @fibheap_new() local_unnamed_addr #2

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #2

declare dso_local void @initialize_original_copy_tables() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @count_insns(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !2661 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2665, metadata !DIExpression()), !dbg !2675
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2676
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2676
  call void @llvm.dbg.value(metadata i32 0, metadata !2674, metadata !DIExpression()), !dbg !2675
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2677
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2677
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb) #7, !dbg !2677
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2677
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2677
  br label %for.cond, !dbg !2679

for.cond:                                         ; preds = %for.body, %entry
  %n.0 = phi i32 [ 0, %entry ], [ %add, %for.body ], !dbg !2675
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !2674, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2675
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2680
  %tobool = icmp eq i8 %call, 0, !dbg !2682
  br i1 %tobool, label %for.body, label %for.end, !dbg !2683

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2675
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2684
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !2673, metadata !DIExpression()), !dbg !2675
  %call2 = call i32 @estimate_num_insns(%union.gimple_statement_d* %call1, %struct.eni_weights_d* nonnull @eni_size_weights) #6, !dbg !2686
  %add = add nsw i32 %n.0, %call2, !dbg !2687
  call void @llvm.dbg.value(metadata i32 %add, metadata !2674, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2675
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2688
  br label %for.cond, !dbg !2689, !llvm.loop !2690

for.end:                                          ; preds = %for.cond
  %n.0.lcssa = phi i32 [ %n.0, %for.cond ], !dbg !2675
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2674, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2674, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2674, metadata !DIExpression()), !dbg !2675
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2692
  ret i32 %n.0.lcssa, !dbg !2693
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ignore_bb_p(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !2694 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2701, metadata !DIExpression()), !dbg !2702
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !2703
  %0 = load i32, i32* %index, align 8, !dbg !2703
  %cmp = icmp slt i32 %0, 2, !dbg !2705
  br i1 %cmp, label %return, label %if.end, !dbg !2706

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def* %bb) #6, !dbg !2707
  %tobool = icmp ne i8 %call, 0, !dbg !2707
  %. = zext i1 %tobool to i8, !dbg !2702
  br label %return, !dbg !2702

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i8 [ 1, %entry ], [ %., %if.end ], !dbg !2702
  ret i8 %retval.0, !dbg !2709
}

declare dso_local %struct.fibnode* @fibheap_insert(%struct.fibheap*, i64, i8*) local_unnamed_addr #2

declare dso_local i32 @fibheap_empty(%struct.fibheap*) local_unnamed_addr #2

declare dso_local i8* @fibheap_extract_min(%struct.fibheap*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bb_seen_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2710 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2714, metadata !DIExpression()), !dbg !2715
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_seen, align 8, !dbg !2716
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !2716
  %1 = load i32, i32* %index, align 8, !dbg !2716
  %div = lshr i32 %1, 6, !dbg !2716
  %idxprom = zext i32 %div to i64, !dbg !2716
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i64 0, i32 3, i64 %idxprom, !dbg !2716
  %2 = load i64, i64* %arrayidx, align 8, !dbg !2716
  %rem = and i32 %1, 63, !dbg !2716
  %sh_prom = zext i32 %rem to i64, !dbg !2716
  %shr = lshr i64 %2, %sh_prom, !dbg !2716
  %3 = trunc i64 %shr to i8, !dbg !2716
  %conv = and i8 %3, 1, !dbg !2716
  ret i8 %conv, !dbg !2717
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_trace(%struct.basic_block_def* %bb, %struct.basic_block_def** %trace) unnamed_addr #5 !dbg !2718 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2722, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %trace, metadata !2723, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 0, metadata !2724, metadata !DIExpression()), !dbg !2728
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2729
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2729
  br i1 %tobool, label %if.end, label %if.then, !dbg !2731

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !2732
  %1 = load i32, i32* %index, align 8, !dbg !2732
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !2733
  %2 = load i32, i32* %frequency, align 8, !dbg !2733
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %1, i32 %2) #6, !dbg !2734
  br label %if.end, !dbg !2734

if.end:                                           ; preds = %entry, %if.then
  br label %while.cond, !dbg !2735

while.cond:                                       ; preds = %cleanup, %if.end
  %bb.addr.0 = phi %struct.basic_block_def* [ %bb, %if.end ], [ %bb.addr.1, %cleanup ]
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.0, metadata !2722, metadata !DIExpression()), !dbg !2728
  %call1 = tail call fastcc %struct.edge_def* @find_best_predecessor(%struct.basic_block_def* %bb.addr.0) #7, !dbg !2736
  call void @llvm.dbg.value(metadata %struct.edge_def* %call1, metadata !2725, metadata !DIExpression()), !dbg !2728
  %cmp = icmp eq %struct.edge_def* %call1, null, !dbg !2737
  br i1 %cmp, label %while.end, label %while.body, !dbg !2735

while.body:                                       ; preds = %while.cond
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 0, !dbg !2738
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2738
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %3, metadata !2726, metadata !DIExpression()), !dbg !2739
  %call2 = tail call fastcc zeroext i8 @bb_seen_p(%struct.basic_block_def* %3) #7, !dbg !2740
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2740
  br i1 %tobool3, label %lor.lhs.false, label %cleanup, !dbg !2742

lor.lhs.false:                                    ; preds = %while.body
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 7, !dbg !2743
  %4 = load i32, i32* %flags, align 8, !dbg !2743
  %and = and i32 %4, 46, !dbg !2744
  %tobool4 = icmp eq i32 %and, 0, !dbg !2744
  br i1 %tobool4, label %lor.lhs.false5, label %cleanup, !dbg !2745

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call fastcc %struct.edge_def* @find_best_successor(%struct.basic_block_def* %3) #7, !dbg !2746
  %cmp7 = icmp eq %struct.edge_def* %call6, %call1, !dbg !2747
  br i1 %cmp7, label %if.end10, label %cleanup, !dbg !2748

if.end10:                                         ; preds = %lor.lhs.false5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2749
  %tobool11 = icmp eq %struct._IO_FILE* %5, null, !dbg !2749
  br i1 %tobool11, label %cleanup, label %if.then12, !dbg !2751

if.then12:                                        ; preds = %if.end10
  %index13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.addr.0, i64 0, i32 9, !dbg !2752
  %6 = load i32, i32* %index13, align 8, !dbg !2752
  %frequency14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.addr.0, i64 0, i32 11, !dbg !2753
  %7 = load i32, i32* %frequency14, align 8, !dbg !2753
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %6, i32 %7) #6, !dbg !2754
  br label %cleanup, !dbg !2754

cleanup:                                          ; preds = %if.end10, %lor.lhs.false5, %lor.lhs.false, %while.body, %if.then12
  %cleanup.dest.slot.0 = phi i1 [ false, %lor.lhs.false5 ], [ false, %lor.lhs.false ], [ false, %while.body ], [ true, %if.then12 ], [ true, %if.end10 ]
  %bb.addr.1 = phi %struct.basic_block_def* [ %bb.addr.0, %lor.lhs.false5 ], [ %bb.addr.0, %lor.lhs.false ], [ %bb.addr.0, %while.body ], [ %3, %if.then12 ], [ %3, %if.end10 ]
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.1, metadata !2722, metadata !DIExpression()), !dbg !2728
  br i1 %cleanup.dest.slot.0, label %while.cond, label %while.end, !llvm.loop !2755

while.end:                                        ; preds = %while.cond, %cleanup
  %bb.addr.2 = phi %struct.basic_block_def* [ %bb.addr.1, %cleanup ], [ %bb.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.2, metadata !2722, metadata !DIExpression()), !dbg !2728
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2757
  %tobool17 = icmp eq %struct._IO_FILE* %8, null, !dbg !2757
  br i1 %tobool17, label %if.end22, label %if.then18, !dbg !2759

if.then18:                                        ; preds = %while.end
  %index19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.addr.2, i64 0, i32 9, !dbg !2760
  %9 = load i32, i32* %index19, align 8, !dbg !2760
  %frequency20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.addr.2, i64 0, i32 11, !dbg !2761
  %10 = load i32, i32* %frequency20, align 8, !dbg !2761
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %9, i32 %10) #6, !dbg !2762
  br label %if.end22, !dbg !2762

if.end22:                                         ; preds = %while.end, %if.then18
  call void @llvm.dbg.value(metadata i32 1, metadata !2724, metadata !DIExpression()), !dbg !2728
  store %struct.basic_block_def* %bb.addr.2, %struct.basic_block_def** %trace, align 8, !dbg !2763
  br label %while.cond23, !dbg !2764

while.cond23:                                     ; preds = %if.end46, %if.end22
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end46 ], [ 1, %if.end22 ], !dbg !2728
  %bb.addr.3 = phi %struct.basic_block_def* [ %12, %if.end46 ], [ %bb.addr.2, %if.end22 ]
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.3, metadata !2722, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2724, metadata !DIExpression()), !dbg !2728
  %call24 = tail call fastcc %struct.edge_def* @find_best_successor(%struct.basic_block_def* %bb.addr.3) #7, !dbg !2765
  call void @llvm.dbg.value(metadata %struct.edge_def* %call24, metadata !2725, metadata !DIExpression()), !dbg !2728
  %cmp25 = icmp eq %struct.edge_def* %call24, null, !dbg !2766
  %11 = trunc i64 %indvars.iv to i32, !dbg !2764
  br i1 %cmp25, label %while.end50, label %while.body27, !dbg !2764

while.body27:                                     ; preds = %while.cond23
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call24, i64 0, i32 1, !dbg !2767
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2767
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %12, metadata !2722, metadata !DIExpression()), !dbg !2728
  %call28 = tail call fastcc zeroext i8 @bb_seen_p(%struct.basic_block_def* %12) #7, !dbg !2769
  %tobool30 = icmp eq i8 %call28, 0, !dbg !2769
  br i1 %tobool30, label %lor.lhs.false31, label %while.end50, !dbg !2771

lor.lhs.false31:                                  ; preds = %while.body27
  %flags32 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call24, i64 0, i32 7, !dbg !2772
  %13 = load i32, i32* %flags32, align 8, !dbg !2772
  %and33 = and i32 %13, 46, !dbg !2773
  %tobool34 = icmp eq i32 %and33, 0, !dbg !2773
  br i1 %tobool34, label %lor.lhs.false35, label %while.end50, !dbg !2774

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %call36 = tail call fastcc %struct.edge_def* @find_best_predecessor(%struct.basic_block_def* %12) #7, !dbg !2775
  %cmp37 = icmp eq %struct.edge_def* %call36, %call24, !dbg !2776
  br i1 %cmp37, label %if.end40, label %while.end50, !dbg !2777

if.end40:                                         ; preds = %lor.lhs.false35
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2778
  %tobool41 = icmp eq %struct._IO_FILE* %14, null, !dbg !2778
  br i1 %tobool41, label %if.end46, label %if.then42, !dbg !2780

if.then42:                                        ; preds = %if.end40
  %index43 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i64 0, i32 9, !dbg !2781
  %15 = load i32, i32* %index43, align 8, !dbg !2781
  %frequency44 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i64 0, i32 11, !dbg !2782
  %16 = load i32, i32* %frequency44, align 8, !dbg !2782
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %15, i32 %16) #6, !dbg !2783
  br label %if.end46, !dbg !2783

if.end46:                                         ; preds = %if.end40, %if.then42
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !2784
  call void @llvm.dbg.value(metadata i32 undef, metadata !2724, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2728
  %arrayidx49 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %trace, i64 %indvars.iv, !dbg !2785
  store %struct.basic_block_def* %12, %struct.basic_block_def** %arrayidx49, align 8, !dbg !2786
  br label %while.cond23, !dbg !2764, !llvm.loop !2787

while.end50:                                      ; preds = %lor.lhs.false35, %lor.lhs.false31, %while.body27, %while.cond23
  %.lcssa = phi i32 [ %11, %lor.lhs.false35 ], [ %11, %lor.lhs.false31 ], [ %11, %while.body27 ], [ %11, %while.cond23 ], !dbg !2764
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2724, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2724, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2724, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2724, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2724, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2724, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2724, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2724, metadata !DIExpression()), !dbg !2728
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2789
  %tobool51 = icmp eq %struct._IO_FILE* %17, null, !dbg !2789
  br i1 %tobool51, label %if.end54, label %if.then52, !dbg !2791

if.then52:                                        ; preds = %while.end50
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2792
  br label %if.end54, !dbg !2792

if.end54:                                         ; preds = %while.end50, %if.then52
  ret i32 %.lcssa, !dbg !2793
}

declare dso_local i8* @fibheap_delete_node(%struct.fibheap*, %struct.fibnode*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2794 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2800, metadata !DIExpression()), !dbg !2801
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2802
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2802

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2802
  %0 = load i32, i32* %num, align 8, !dbg !2802
  br label %cond.end, !dbg !2802

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2802
  ret i32 %cond, !dbg !2802
}

declare dso_local zeroext i8 @can_duplicate_block_p(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @duplicate_block(%struct.basic_block_def*, %struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @flush_pending_stmts(%struct.edge_def*) local_unnamed_addr #2

declare dso_local void @add_phi_args_after_copy(%struct.basic_block_def**, i32, %struct.edge_def*) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mark_bb_seen(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2803 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2807, metadata !DIExpression()), !dbg !2809
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_seen, align 8, !dbg !2810
  %size1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i64 0, i32 2, !dbg !2810
  %1 = load i32, i32* %size1, align 4, !dbg !2810
  %mul2 = shl i32 %1, 6, !dbg !2811
  call void @llvm.dbg.value(metadata i32 %mul2, metadata !2808, metadata !DIExpression()), !dbg !2809
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !2812
  %2 = load i32, i32* %index, align 8, !dbg !2812
  %cmp = icmp ult i32 %2, %mul2, !dbg !2814
  br i1 %cmp, label %if.end, label %if.then, !dbg !2815

if.then:                                          ; preds = %entry
  %mul5 = shl i32 %1, 7, !dbg !2816
  %call = tail call %struct.simple_bitmap_def* @sbitmap_resize(%struct.simple_bitmap_def* %0, i32 %mul5, i32 0) #6, !dbg !2817
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** @bb_seen, align 8, !dbg !2818
  %.pre = load i32, i32* %index, align 8, !dbg !2819
  br label %if.end, !dbg !2820

if.end:                                           ; preds = %entry, %if.then
  %3 = phi i32 [ %2, %entry ], [ %.pre, %if.then ], !dbg !2819
  %4 = phi %struct.simple_bitmap_def* [ %0, %entry ], [ %call, %if.then ], !dbg !2821
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %4, i32 %3) #7, !dbg !2822
  ret void, !dbg !2823
}

declare dso_local void @free_original_copy_tables() local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local void @fibheap_delete(%struct.fibheap*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2824 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2828, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2829, metadata !DIExpression()), !dbg !2832
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !2833
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2830, metadata !DIExpression()), !dbg !2831
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !2834
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2835
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2836
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2837
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2838
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2839
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2840
  ret void, !dbg !2841
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2842 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2846, metadata !DIExpression()), !dbg !2847
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2848
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2848
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2849
  %conv1 = zext i1 %cmp to i8, !dbg !2850
  ret i8 %conv1, !dbg !2851
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2852 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2856, metadata !DIExpression()), !dbg !2857
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2858
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2858
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2859
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2859
  ret %union.gimple_statement_d* %1, !dbg !2860
}

declare dso_local i32 @estimate_num_insns(%union.gimple_statement_d*, %struct.eni_weights_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2861 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2866, metadata !DIExpression()), !dbg !2867
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2868
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2868
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2869
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2869
  %2 = load i64, i64* %1, align 8, !dbg !2869
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2870
  store i64 %2, i64* %3, align 8, !dbg !2870
  ret void, !dbg !2871
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2872 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2876, metadata !DIExpression()), !dbg !2877
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2878
  %0 = load i32, i32* %flags, align 8, !dbg !2878
  %and = and i32 %0, 512, !dbg !2879
  %tobool = icmp eq i32 %and, 0, !dbg !2879
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !2880

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !2881
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !2881
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !2882
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !2883

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !2884
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !2884
  br label %cond.end, !dbg !2883

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !2883
  ret %struct.gimple_seq_d* %cond, !dbg !2885
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !2886 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !2893, metadata !DIExpression()), !dbg !2894
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !2895
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2895

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !2896
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !2896
  br label %cond.end, !dbg !2895

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !2895
  ret %struct.gimple_seq_node_d* %cond, !dbg !2897
}

declare dso_local zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.edge_def* @find_best_predecessor(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !2898 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2902, metadata !DIExpression()), !dbg !2912
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2913
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2913
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !2904, metadata !DIExpression()), !dbg !2912
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2914
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2914
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2915
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2915
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2915
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2915
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2915
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2915
  store i32 %4, i32* %3, align 8, !dbg !2915
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2915
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2915
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !2915
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !2915
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2915
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2917
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2917
  br label %for.cond, !dbg !2915

for.cond:                                         ; preds = %for.inc, %entry
  %best.0 = phi %struct.edge_def* [ null, %entry ], [ %best.1, %for.inc ], !dbg !2912
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.0, metadata !2904, metadata !DIExpression()), !dbg !2912
  %9 = load i32, i32* %7, align 8, !dbg !2919
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !2919
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2903, metadata !DIExpression(DW_OP_deref)), !dbg !2912
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #7, !dbg !2919
  %tobool = icmp eq i8 %call1, 0, !dbg !2915
  %tobool2 = icmp ne %struct.edge_def* %best.0, null, !dbg !2912
  br i1 %tobool, label %for.end, label %for.body, !dbg !2915

for.body:                                         ; preds = %for.cond
  br i1 %tobool2, label %lor.lhs.false, label %if.then, !dbg !2920

lor.lhs.false:                                    ; preds = %for.body
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2922
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !2903, metadata !DIExpression()), !dbg !2912
  %call3 = call fastcc zeroext i8 @better_p(%struct.edge_def* %11, %struct.edge_def* nonnull %best.0) #7, !dbg !2923
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2923
  br i1 %tobool4, label %for.inc, label %if.then, !dbg !2924

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2925
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !2903, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !2904, metadata !DIExpression()), !dbg !2912
  br label %for.inc, !dbg !2926

for.inc:                                          ; preds = %lor.lhs.false, %if.then
  %best.1 = phi %struct.edge_def* [ %12, %if.then ], [ %best.0, %lor.lhs.false ], !dbg !2912
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.1, metadata !2904, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2905, metadata !DIExpression(DW_OP_deref)), !dbg !2912
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2919
  br label %for.cond, !dbg !2919, !llvm.loop !2927

for.end:                                          ; preds = %for.cond
  %best.0.lcssa = phi %struct.edge_def* [ %best.0, %for.cond ], !dbg !2912
  %tobool2.lcssa = phi i1 [ %tobool2, %for.cond ], !dbg !2912
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.0.lcssa, metadata !2904, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.0.lcssa, metadata !2904, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.0.lcssa, metadata !2904, metadata !DIExpression()), !dbg !2912
  br i1 %tobool2.lcssa, label %lor.lhs.false6, label %cleanup, !dbg !2929

lor.lhs.false6:                                   ; preds = %for.end
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.0.lcssa, i64 0, i32 0, !dbg !2931
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2931
  %call7 = call fastcc zeroext i8 @ignore_bb_p(%struct.basic_block_def* %13) #7, !dbg !2932
  %tobool9 = icmp eq i8 %call7, 0, !dbg !2932
  br i1 %tobool9, label %if.end11, label %cleanup, !dbg !2933

if.end11:                                         ; preds = %lor.lhs.false6
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2934
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i64 0, i32 11, !dbg !2934
  %15 = load i32, i32* %frequency, align 8, !dbg !2934
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.0.lcssa, i64 0, i32 8, !dbg !2934
  %16 = load i32, i32* %probability, align 4, !dbg !2934
  %mul = mul nsw i32 %15, %16, !dbg !2934
  %add = add nsw i32 %mul, 5000, !dbg !2934
  %17 = srem i32 %add, 10000, !dbg !2936
  %mul13 = sub i32 %add, %17, !dbg !2936
  %frequency14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !2937
  %18 = load i32, i32* %frequency14, align 8, !dbg !2937
  %19 = load i32, i32* @branch_ratio_cutoff, align 4, !dbg !2938
  %mul15 = mul nsw i32 %18, %19, !dbg !2939
  %cmp = icmp slt i32 %mul13, %mul15, !dbg !2940
  %.best.0 = select i1 %cmp, %struct.edge_def* null, %struct.edge_def* %best.0.lcssa, !dbg !2912
  br label %cleanup, !dbg !2912

cleanup:                                          ; preds = %lor.lhs.false6, %if.end11, %for.end
  %retval.0 = phi %struct.edge_def* [ null, %lor.lhs.false6 ], [ null, %for.end ], [ %.best.0, %if.end11 ], !dbg !2912
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2941
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2941
  ret %struct.edge_def* %retval.0, !dbg !2941
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.edge_def* @find_best_successor(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !2942 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2944, metadata !DIExpression()), !dbg !2948
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2949
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2949
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !2946, metadata !DIExpression()), !dbg !2948
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2950
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2950
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2951
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2951
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2951
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2951
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2951
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2951
  store i32 %4, i32* %3, align 8, !dbg !2951
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2951
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2951
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !2951
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !2951
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2951
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2953
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2953
  br label %for.cond, !dbg !2951

for.cond:                                         ; preds = %for.inc, %entry
  %best.0 = phi %struct.edge_def* [ null, %entry ], [ %best.1, %for.inc ], !dbg !2948
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.0, metadata !2946, metadata !DIExpression()), !dbg !2948
  %9 = load i32, i32* %7, align 8, !dbg !2955
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !2955
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2945, metadata !DIExpression(DW_OP_deref)), !dbg !2948
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #7, !dbg !2955
  %tobool = icmp eq i8 %call1, 0, !dbg !2951
  %tobool2 = icmp ne %struct.edge_def* %best.0, null, !dbg !2948
  br i1 %tobool, label %for.end, label %for.body, !dbg !2951

for.body:                                         ; preds = %for.cond
  br i1 %tobool2, label %lor.lhs.false, label %if.then, !dbg !2956

lor.lhs.false:                                    ; preds = %for.body
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2958
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !2945, metadata !DIExpression()), !dbg !2948
  %call3 = call fastcc zeroext i8 @better_p(%struct.edge_def* %11, %struct.edge_def* nonnull %best.0) #7, !dbg !2959
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2959
  br i1 %tobool4, label %for.inc, label %if.then, !dbg !2960

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2961
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !2945, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !2946, metadata !DIExpression()), !dbg !2948
  br label %for.inc, !dbg !2962

for.inc:                                          ; preds = %lor.lhs.false, %if.then
  %best.1 = phi %struct.edge_def* [ %12, %if.then ], [ %best.0, %lor.lhs.false ], !dbg !2948
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.1, metadata !2946, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2947, metadata !DIExpression(DW_OP_deref)), !dbg !2948
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2955
  br label %for.cond, !dbg !2955, !llvm.loop !2963

for.end:                                          ; preds = %for.cond
  %best.0.lcssa = phi %struct.edge_def* [ %best.0, %for.cond ], !dbg !2948
  %tobool2.lcssa = phi i1 [ %tobool2, %for.cond ], !dbg !2948
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.0.lcssa, metadata !2946, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.0.lcssa, metadata !2946, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.0.lcssa, metadata !2946, metadata !DIExpression()), !dbg !2948
  br i1 %tobool2.lcssa, label %lor.lhs.false6, label %cleanup, !dbg !2965

lor.lhs.false6:                                   ; preds = %for.end
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.0.lcssa, i64 0, i32 1, !dbg !2967
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2967
  %call7 = call fastcc zeroext i8 @ignore_bb_p(%struct.basic_block_def* %13) #7, !dbg !2968
  %tobool9 = icmp eq i8 %call7, 0, !dbg !2968
  br i1 %tobool9, label %if.end11, label %cleanup, !dbg !2969

if.end11:                                         ; preds = %lor.lhs.false6
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.0.lcssa, i64 0, i32 8, !dbg !2970
  %14 = load i32, i32* %probability, align 4, !dbg !2970
  %15 = load i32, i32* @probability_cutoff, align 4, !dbg !2972
  %cmp = icmp sgt i32 %14, %15, !dbg !2973
  %.best.0 = select i1 %cmp, %struct.edge_def* %best.0.lcssa, %struct.edge_def* null, !dbg !2948
  br label %cleanup, !dbg !2948

cleanup:                                          ; preds = %lor.lhs.false6, %if.end11, %for.end
  %retval.0 = phi %struct.edge_def* [ null, %lor.lhs.false6 ], [ null, %for.end ], [ %.best.0, %if.end11 ], !dbg !2948
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2974
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2974
  ret %struct.edge_def* %retval.0, !dbg !2974
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2975 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2979, metadata !DIExpression()), !dbg !2981
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2982
  store i32 0, i32* %index, align 8, !dbg !2983
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2984
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2985
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2986
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2986
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2986
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2987 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2993, metadata !DIExpression()), !dbg !2994
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2995
  %tobool = icmp eq i8 %call, 0, !dbg !2995
  br i1 %tobool, label %if.then, label %if.else, !dbg !2997

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2998
  br label %return, !dbg !3000

if.else:                                          ; preds = %entry
  br label %return, !dbg !3001

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3003
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3003
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3003
  ret i8 %retval.0, !dbg !3004
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @better_p(%struct.edge_def* %e1, %struct.edge_def* %e2) unnamed_addr #5 !dbg !3005 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e1, metadata !3012, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata %struct.edge_def* %e2, metadata !3013, metadata !DIExpression()), !dbg !3014
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e1, i64 0, i32 9, !dbg !3015
  %0 = load i64, i64* %count, align 8, !dbg !3015
  %count1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e2, i64 0, i32 9, !dbg !3017
  %1 = load i64, i64* %count1, align 8, !dbg !3017
  %cmp = icmp eq i64 %0, %1, !dbg !3018
  br i1 %cmp, label %if.end, label %if.then, !dbg !3019

if.then:                                          ; preds = %entry
  %cmp4 = icmp sgt i64 %0, %1, !dbg !3020
  br label %return, !dbg !3021

if.end:                                           ; preds = %entry
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e1, i64 0, i32 0, !dbg !3022
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3022
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 11, !dbg !3024
  %3 = load i32, i32* %frequency, align 8, !dbg !3024
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e1, i64 0, i32 8, !dbg !3025
  %4 = load i32, i32* %probability, align 4, !dbg !3025
  %mul = mul nsw i32 %3, %4, !dbg !3026
  %src6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e2, i64 0, i32 0, !dbg !3027
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src6, align 8, !dbg !3027
  %frequency7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 11, !dbg !3028
  %6 = load i32, i32* %frequency7, align 8, !dbg !3028
  %probability8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e2, i64 0, i32 8, !dbg !3029
  %7 = load i32, i32* %probability8, align 4, !dbg !3029
  %mul9 = mul nsw i32 %6, %7, !dbg !3030
  %cmp10 = icmp eq i32 %mul, %mul9, !dbg !3031
  br i1 %cmp10, label %if.end24, label %if.then12, !dbg !3032

if.then12:                                        ; preds = %if.end
  %cmp21 = icmp sgt i32 %mul, %mul9, !dbg !3033
  br label %return, !dbg !3034

if.end24:                                         ; preds = %if.end
  %cmp27 = icmp eq %struct.basic_block_def* %2, %5, !dbg !3035
  br i1 %cmp27, label %if.end36, label %if.then29, !dbg !3037

if.then29:                                        ; preds = %if.end24
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 9, !dbg !3038
  %8 = load i32, i32* %index, align 8, !dbg !3038
  %index32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 9, !dbg !3039
  %9 = load i32, i32* %index32, align 8, !dbg !3039
  %cmp33 = icmp sgt i32 %8, %9, !dbg !3040
  br label %return, !dbg !3041

if.end36:                                         ; preds = %if.end24
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e1, i64 0, i32 1, !dbg !3042
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3042
  %index37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 9, !dbg !3043
  %11 = load i32, i32* %index37, align 8, !dbg !3043
  %dest38 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e2, i64 0, i32 1, !dbg !3044
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dest38, align 8, !dbg !3044
  %index39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i64 0, i32 9, !dbg !3045
  %13 = load i32, i32* %index39, align 8, !dbg !3045
  %cmp40 = icmp sgt i32 %11, %13, !dbg !3046
  br label %return, !dbg !3047

return:                                           ; preds = %if.end36, %if.then29, %if.then12, %if.then
  %retval.0.in = phi i1 [ %cmp4, %if.then ], [ %cmp21, %if.then12 ], [ %cmp33, %if.then29 ], [ %cmp40, %if.end36 ]
  %retval.0 = zext i1 %retval.0.in to i8, !dbg !3014
  ret i8 %retval.0, !dbg !3048
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3049 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3054, metadata !DIExpression()), !dbg !3055
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3056
  %0 = load i32, i32* %index, align 8, !dbg !3056
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3056
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3056
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !3056
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3056
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3056

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3056
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3056
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !3056
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3056
  br label %cond.end, !dbg !3056

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3056
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3056
  %cmp = icmp ult i32 %0, %call2, !dbg !3056
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3056

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3056
  br label %cond.end5, !dbg !3056

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3057
  %inc = add i32 %5, 1, !dbg !3057
  store i32 %inc, i32* %index, align 8, !dbg !3057
  ret void, !dbg !3058
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3059 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3064
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3064
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3064

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3064
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3064
  br label %cond.end, !dbg !3064

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3064
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3064
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3065
  %conv3 = zext i1 %cmp to i8, !dbg !3066
  ret i8 %conv3, !dbg !3067
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3068 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3073
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3073
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3073

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3073
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3073
  br label %cond.end, !dbg !3073

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3073
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3073
  ret %struct.edge_def* %call2, !dbg !3074
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3075 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3080
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3080

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3080
  br label %cond.end, !dbg !3080

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3081
  ret %struct.VEC_edge_gc* %0, !dbg !3082
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3083 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3087, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3088, metadata !DIExpression()), !dbg !3089
  br label %land.end, !dbg !3090

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3090
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3090
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3090
  ret %struct.edge_def* %0, !dbg !3090
}

declare dso_local %struct.simple_bitmap_def* @sbitmap_resize(%struct.simple_bitmap_def*, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3091 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3095, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3096, metadata !DIExpression()), !dbg !3100
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3101
  %0 = load i8*, i8** %popcount, align 8, !dbg !3101
  %tobool = icmp eq i8* %0, null, !dbg !3102
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3103

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3104
  %.pre2 = zext i32 %.pre to i64, !dbg !3105
  %.pre3 = shl i64 1, %.pre2, !dbg !3105
  %.pre4 = lshr i32 %bitno, 6, !dbg !3106
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3107
  br label %if.end7, !dbg !3103

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3108
  %idxprom = zext i32 %div to i64, !dbg !3108
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3108
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3108
  %rem = and i32 %bitno, 63, !dbg !3108
  %sh_prom = zext i32 %rem to i64, !dbg !3108
  %2 = shl i64 1, %sh_prom, !dbg !3109
  %3 = and i64 %1, %2, !dbg !3109
  %tobool1 = icmp eq i64 %3, 0, !dbg !3109
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3111

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3112
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3113
  %inc = add i8 %4, 1, !dbg !3113
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !3113
  br label %if.end7, !dbg !3112

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3107
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3105
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3107
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3114
  %or = or i64 %5, %shl.pre-phi, !dbg !3114
  store i64 %or, i64* %arrayidx13, align 8, !dbg !3114
  ret void, !dbg !3115
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
!llvm.module.flags = !{!1958, !1959, !1960}
!llvm.ident = !{!1961}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_tracer", scope: !2, file: !3, line: 381, type: !1932, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !560, globals: !1915, nameTableKind: None)
!3 = !DIFile(filename: "tracer.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !6, line: 104, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 74, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!16 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!27 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!28 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!29 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!30 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!31 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!32 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!33 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!34 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!35 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!36 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!37 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!38 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!39 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!40 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!41 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!42 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!43 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!44 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!45 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!46 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!47 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!48 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!49 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!50 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!51 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!52 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!53 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!54 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!55 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!56 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!57 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!58 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!59 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!60 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!61 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!62 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!63 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!64 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!65 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!66 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!67 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!68 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!69 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!70 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!71 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!72 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!73 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!74 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!75 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!76 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!77 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!78 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!79 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!80 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!81 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!82 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!83 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!84 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!85 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!86 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!87 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!88 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!89 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!90 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!91 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!92 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!93 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!94 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!95 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!96 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!97 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!98 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!99 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!100 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!101 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!102 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!103 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!104 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!105 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!106 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!107 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!108 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!109 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!110 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!111 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!112 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!113 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!114 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!115 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!116 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!117 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!118 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!119 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!120 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!121 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!122 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!123 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!124 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!125 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!126 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!127 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!128 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!129 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!130 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!131 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!132 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!133 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!134 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!135 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!136 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!137 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!138 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!139 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!140 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!141 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!142 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!143 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!144 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!145 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!146 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!147 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!148 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!149 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!150 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!151 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!152 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!153 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!154 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!155 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!156 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!157 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!158 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!159 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!160 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!161 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!162 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!163 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!164 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!165 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!166 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!167 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!168 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!169 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!170 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!171 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!172 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!173 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!174 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!175 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!176 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!177 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!178 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!179 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!180 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!181 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!182 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!183 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!184 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!185 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!186 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!187 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!188 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !190, line: 7, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!192 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!196 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!197 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!198 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!199 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!200 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!201 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!202 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!203 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!204 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!205 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!206 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!207 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!208 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!209 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!210 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!211 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!212 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!213 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!214 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!215 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!216 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!217 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!218 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!219 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!220 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!221 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!222 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!223 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!224 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!225 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!226 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!227 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!228 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!229 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!230 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!231 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!232 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!233 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!234 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!235 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!236 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!237 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!238 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!239 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!240 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!241 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!242 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!243 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!244 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!245 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!246 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!247 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!248 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!249 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!250 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!251 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!252 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!253 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!254 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!255 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!256 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!257 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!258 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!259 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!260 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!261 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!262 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!263 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!264 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!265 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!266 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!267 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!268 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!269 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!270 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!271 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!272 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!273 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!274 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!275 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!276 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!277 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!278 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!279 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!280 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!281 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!282 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!283 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!284 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!285 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!286 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!288 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!289 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!290 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!291 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!292 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!293 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!294 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!295 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!296 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!297 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!298 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!299 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!300 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!301 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!302 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!303 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!304 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!305 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!306 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!307 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!308 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!309 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!310 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!311 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!312 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!313 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!314 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!315 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!316 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !318, line: 363, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322}
!320 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!323 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !318, line: 355, baseType: !7, size: 32, elements: !324)
!324 = !{!325, !326, !327}
!325 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!326 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!327 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !329, line: 474, baseType: !7, size: 32, elements: !330)
!329 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!330 = !{!331, !332}
!331 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!332 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!333 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !334, line: 280, baseType: !7, size: 32, elements: !335)
!334 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!336 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!337 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!338 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!339 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !334, line: 1817, baseType: !7, size: 32, elements: !353)
!353 = !{!354, !355, !356, !357, !358}
!354 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !334, line: 1805, baseType: !7, size: 32, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !334, line: 39, baseType: !7, size: 32, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!368 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!372 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!373 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!374 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!375 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!376 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!377 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!378 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!379 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!380 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!381 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!382 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!383 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!384 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!385 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!386 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!387 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!388 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!389 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!390 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!391 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!392 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!393 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!394 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!395 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!396 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!397 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!398 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!399 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!400 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!401 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!402 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!403 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!404 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!405 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!406 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!407 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!408 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!409 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!410 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!411 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!412 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!413 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!414 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!415 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!416 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!417 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!418 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!419 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!420 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!421 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!422 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!423 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!424 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!425 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!426 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!427 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!428 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!429 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!430 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!431 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!432 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!433 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!434 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!435 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!436 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!437 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!438 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!439 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!440 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!441 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!442 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!443 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!444 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!445 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!446 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!447 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!448 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!449 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!450 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!451 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!452 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!453 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!454 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!455 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!456 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!457 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!458 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!459 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!460 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!461 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!462 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!463 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!464 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!465 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!466 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!467 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!468 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!469 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!470 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!471 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!472 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!473 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!474 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!475 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!476 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!477 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!478 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!479 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!480 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!481 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!482 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!483 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!484 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!485 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!486 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!487 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!488 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!489 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!490 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!491 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!492 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!493 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!494 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!495 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!496 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!497 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!498 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!499 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!500 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!501 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!502 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!503 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!504 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!505 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!506 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!507 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!508 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!509 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!510 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!511 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!512 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!513 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!514 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!515 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!516 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!517 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!518 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!519 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!520 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!521 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!522 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!523 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!524 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!525 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!526 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!527 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!528 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!529 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!530 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!531 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!532 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!533 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!534 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!535 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!536 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!537 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!538 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!539 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!540 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!541 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!542 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!543 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!544 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!545 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!546 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!547 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!548 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!549 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!550 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!551 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!552 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!553 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!554 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!555 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!556 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!557 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!558 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!559 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!560 = !{!561, !562, !563, !564, !567, !568, !570, !586, !1914, !587, !7, !704}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!563 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibnode_t", file: !572, line: 74, baseType: !573)
!572 = !DIFile(filename: "./include/fibheap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fibnode", file: !572, line: 59, size: 448, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !583, !584, !585}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !574, file: !572, line: 61, baseType: !573, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !574, file: !572, line: 62, baseType: !573, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !574, file: !572, line: 63, baseType: !573, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !574, file: !572, line: 64, baseType: !573, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !574, file: !572, line: 65, baseType: !581, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibheapkey_t", file: !572, line: 50, baseType: !582)
!582 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !574, file: !572, line: 66, baseType: !567, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "degree", scope: !574, file: !572, line: 71, baseType: !7, size: 31, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !574, file: !572, line: 72, baseType: !7, size: 1, offset: 415, flags: DIFlagBitField, extraData: i64 384)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !588, line: 111, baseType: !589)
!588 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !591)
!591 = !{!592, !1879, !1880, !1881, !1884, !1888, !1889, !1890, !1908, !1909, !1910, !1911, !1912, !1913}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !590, file: !318, line: 219, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !595, file: !318, line: 151, baseType: !598, size: 128)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !600)
!600 = !{!601, !602, !603}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !599, file: !318, line: 150, baseType: !7, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !599, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !599, file: !318, line: 150, baseType: !604, size: 64, offset: 64)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 64, elements: !748)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !588, line: 108, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !608)
!608 = !{!609, !610, !611, !1871, !1872, !1873, !1874, !1875, !1876, !1877}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !607, file: !318, line: 124, baseType: !589, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !607, file: !318, line: 125, baseType: !589, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !607, file: !318, line: 131, baseType: !612, size: 64, offset: 128)
!612 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !613)
!613 = !{!614, !1870}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !612, file: !318, line: 129, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !588, line: 66, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !618, line: 143, size: 192, elements: !619)
!618 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!619 = !{!620, !1868, !1869}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !617, file: !618, line: 145, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !588, line: 69, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !618, line: 136, size: 192, elements: !624)
!624 = !{!625, !1866, !1867}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !623, file: !618, line: 137, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !588, line: 58, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !618, line: 737, size: 768, elements: !629)
!629 = !{!630, !1713, !1723, !1729, !1734, !1739, !1746, !1752, !1758, !1763, !1777, !1782, !1788, !1793, !1803, !1808, !1824, !1831, !1838, !1844, !1849, !1855, !1861}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !628, file: !618, line: 738, baseType: !631, size: 256)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !618, line: 271, size: 256, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !648, !649, !650}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !631, file: !618, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !631, file: !618, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !631, file: !618, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !631, file: !618, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !631, file: !618, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !631, file: !618, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !631, file: !618, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !631, file: !618, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !631, file: !618, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !631, file: !618, line: 312, baseType: !7, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !631, file: !618, line: 316, baseType: !644, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !645, line: 58, baseType: !646)
!645 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !647, line: 44, baseType: !7)
!647 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!648 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !631, file: !618, line: 319, baseType: !7, size: 32, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !631, file: !618, line: 323, baseType: !589, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !631, file: !618, line: 327, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !588, line: 56, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !654)
!654 = !{!655, !688, !694, !706, !725, !736, !741, !750, !756, !769, !777, !815, !1023, !1051, !1068, !1069, !1074, !1083, !1089, !1094, !1098, !1102, !1364, !1411, !1417, !1423, !1430, !1443, !1457, !1474, !1486, !1508, !1523, !1695}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !653, file: !334, line: 3372, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !656, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !656, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !656, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !656, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !656, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !656, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !656, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !656, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !656, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !656, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !656, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !656, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !656, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !656, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !656, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !656, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !656, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !656, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !656, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !656, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !656, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !656, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !656, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !656, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !656, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !656, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !656, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !656, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !656, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !656, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !653, file: !334, line: 3373, baseType: !689, size: 192)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !690)
!690 = !{!691, !692, !693}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !689, file: !334, line: 403, baseType: !656, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !689, file: !334, line: 404, baseType: !651, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !334, line: 405, baseType: !651, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !653, file: !334, line: 3374, baseType: !695, size: 320)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !695, file: !334, line: 1385, baseType: !689, size: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !695, file: !334, line: 1386, baseType: !699, size: 128, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !700, line: 58, baseType: !701)
!700 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !700, line: 54, size: 128, elements: !702)
!702 = !{!703, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !701, file: !700, line: 56, baseType: !704, size: 64)
!704 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !701, file: !700, line: 57, baseType: !582, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !653, file: !334, line: 3375, baseType: !707, size: 256)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !707, file: !334, line: 1398, baseType: !689, size: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !707, file: !334, line: 1399, baseType: !711, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !713, line: 52, size: 256, elements: !714)
!713 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!714 = !{!715, !716, !717, !718, !719, !720, !721}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !712, file: !713, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !712, file: !713, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !712, file: !713, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !712, file: !713, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !712, file: !713, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !712, file: !713, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !712, file: !713, line: 62, baseType: !722, size: 192, offset: 64)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 192, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 3)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !653, file: !334, line: 3376, baseType: !726, size: 256)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !726, file: !334, line: 1409, baseType: !689, size: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !726, file: !334, line: 1410, baseType: !730, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !732, line: 27, size: 192, elements: !733)
!732 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !731, file: !732, line: 29, baseType: !699, size: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !731, file: !732, line: 30, baseType: !189, size: 32, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !653, file: !334, line: 3377, baseType: !737, size: 256)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !737, file: !334, line: 1438, baseType: !689, size: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !737, file: !334, line: 1439, baseType: !651, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !653, file: !334, line: 3378, baseType: !742, size: 256)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !743)
!743 = !{!744, !745, !746}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !742, file: !334, line: 1419, baseType: !689, size: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !742, file: !334, line: 1420, baseType: !563, size: 32, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !742, file: !334, line: 1421, baseType: !747, size: 8, offset: 224)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 8, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 1)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !653, file: !334, line: 3379, baseType: !751, size: 320)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !752)
!752 = !{!753, !754, !755}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !751, file: !334, line: 1429, baseType: !689, size: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !751, file: !334, line: 1430, baseType: !651, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !751, file: !334, line: 1431, baseType: !651, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !653, file: !334, line: 3380, baseType: !757, size: 320)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !758)
!758 = !{!759, !760}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !757, file: !334, line: 1461, baseType: !689, size: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !757, file: !334, line: 1462, baseType: !761, size: 128, offset: 192)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !762, line: 31, size: 128, elements: !763)
!762 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!763 = !{!764, !767, !768}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !761, file: !762, line: 32, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !761, file: !762, line: 33, baseType: !7, size: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !761, file: !762, line: 34, baseType: !7, size: 32, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !653, file: !334, line: 3381, baseType: !770, size: 384)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !771)
!771 = !{!772, !773, !774, !775, !776}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !770, file: !334, line: 2508, baseType: !689, size: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !770, file: !334, line: 2509, baseType: !644, size: 32, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !770, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !770, file: !334, line: 2511, baseType: !651, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !770, file: !334, line: 2512, baseType: !651, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !653, file: !334, line: 3382, baseType: !778, size: 896)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !778, file: !334, line: 2653, baseType: !770, size: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !778, file: !334, line: 2654, baseType: !651, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !778, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !778, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !778, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !778, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !778, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !778, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !778, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !778, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !778, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !778, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !778, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !778, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !778, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !778, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !778, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !778, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !778, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !778, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !778, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !778, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !778, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !778, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !778, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !778, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !778, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !778, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !778, file: !334, line: 2705, baseType: !651, size: 64, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !778, file: !334, line: 2706, baseType: !651, size: 64, offset: 640)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !778, file: !334, line: 2707, baseType: !651, size: 64, offset: 704)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !778, file: !334, line: 2708, baseType: !651, size: 64, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !778, file: !334, line: 2711, baseType: !813, size: 64, offset: 832)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !653, file: !334, line: 3383, baseType: !816, size: 960)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !816, file: !334, line: 2757, baseType: !778, size: 896)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !816, file: !334, line: 2758, baseType: !820, size: 64, offset: 896)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !588, line: 50, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !823, line: 240, size: 384, elements: !824)
!823 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!824 = !{!825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !822, file: !823, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !822, file: !823, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !822, file: !823, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !822, file: !823, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !822, file: !823, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !822, file: !823, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !822, file: !823, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !822, file: !823, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !822, file: !823, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !822, file: !823, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !822, file: !823, line: 321, baseType: !836, size: 320, offset: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !823, line: 315, size: 320, elements: !837)
!837 = !{!838, !956, !958, !1021, !1022}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !836, file: !823, line: 316, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 64, elements: !748)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !823, line: 183, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !823, line: 166, size: 64, elements: !842)
!842 = !{!843, !844, !845, !846, !847, !855, !856, !868, !871, !931, !932, !933, !946, !953}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !841, file: !823, line: 168, baseType: !563, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !841, file: !823, line: 169, baseType: !7, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !841, file: !823, line: 170, baseType: !568, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !841, file: !823, line: 171, baseType: !820, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !841, file: !823, line: 172, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !588, line: 53, baseType: !849)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !823, line: 359, size: 128, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !850, file: !823, line: 360, baseType: !563, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !850, file: !823, line: 361, baseType: !854, size: 64, offset: 64)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 64, elements: !748)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !841, file: !823, line: 173, baseType: !189, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !841, file: !823, line: 174, baseType: !857, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !823, line: 133, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !823, line: 115, size: 32, elements: !859)
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !858, file: !823, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !858, file: !823, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !858, file: !823, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !858, file: !823, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !858, file: !823, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !858, file: !823, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !858, file: !823, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !858, file: !823, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !841, file: !823, line: 175, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !823, line: 175, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !841, file: !823, line: 176, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !874, line: 75, size: 256, elements: !875)
!874 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!875 = !{!876, !890, !891, !892}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !873, file: !874, line: 76, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !874, line: 68, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !874, line: 63, size: 320, elements: !880)
!880 = !{!881, !883, !884, !885}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !879, file: !874, line: 64, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !879, file: !874, line: 65, baseType: !882, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !879, file: !874, line: 66, baseType: !7, size: 32, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !879, file: !874, line: 67, baseType: !886, size: 128, offset: 192)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 128, elements: !888)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !874, line: 29, baseType: !704)
!888 = !{!889}
!889 = !DISubrange(count: 2)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !873, file: !874, line: 77, baseType: !877, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !873, file: !874, line: 78, baseType: !7, size: 32, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !873, file: !874, line: 79, baseType: !893, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !874, line: 49, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !874, line: 45, size: 832, elements: !896)
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !895, file: !874, line: 46, baseType: !882, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !895, file: !874, line: 47, baseType: !872, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !895, file: !874, line: 48, baseType: !900, size: 704, offset: 128)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !901, line: 164, size: 704, elements: !902)
!901 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!902 = !{!903, !904, !914, !915, !916, !917, !918, !919, !923, !927, !928, !929, !930}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !900, file: !901, line: 166, baseType: !582, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !900, file: !901, line: 167, baseType: !905, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !901, line: 157, size: 192, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !906, file: !901, line: 159, baseType: !565, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !906, file: !901, line: 160, baseType: !905, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !906, file: !901, line: 161, baseType: !911, size: 32, offset: 128)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 32, elements: !912)
!912 = !{!913}
!913 = !DISubrange(count: 4)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !900, file: !901, line: 168, baseType: !565, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !900, file: !901, line: 169, baseType: !565, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !900, file: !901, line: 170, baseType: !565, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !900, file: !901, line: 171, baseType: !582, size: 64, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !900, file: !901, line: 172, baseType: !563, size: 32, offset: 384)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !900, file: !901, line: 176, baseType: !920, size: 64, offset: 448)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!905, !567, !582}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !900, file: !901, line: 177, baseType: !924, size: 64, offset: 512)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !567, !905}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !900, file: !901, line: 178, baseType: !567, size: 64, offset: 576)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !900, file: !901, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !900, file: !901, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !900, file: !901, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !841, file: !823, line: 177, baseType: !651, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !841, file: !823, line: 178, baseType: !589, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !841, file: !823, line: 179, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !823, line: 150, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !823, line: 142, size: 320, elements: !937)
!937 = !{!938, !939, !940, !941, !944, !945}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !936, file: !823, line: 144, baseType: !651, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !936, file: !823, line: 145, baseType: !820, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !936, file: !823, line: 146, baseType: !820, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !936, file: !823, line: 147, baseType: !942, size: 32, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !943, line: 31, baseType: !563)
!943 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!944 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !936, file: !823, line: 148, baseType: !7, size: 32, offset: 224)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !936, file: !823, line: 149, baseType: !562, size: 8, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !841, file: !823, line: 180, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !823, line: 162, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !823, line: 159, size: 128, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !949, file: !823, line: 160, baseType: !651, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !949, file: !823, line: 161, baseType: !582, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !841, file: !823, line: 181, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !823, line: 181, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !836, file: !823, line: 317, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 64, elements: !748)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !836, file: !823, line: 318, baseType: !959, size: 320)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !823, line: 188, size: 320, elements: !960)
!960 = !{!961, !963, !1020}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !959, file: !823, line: 190, baseType: !962, size: 192)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 192, elements: !723)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !959, file: !823, line: 193, baseType: !964, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !823, line: 206, size: 320, elements: !966)
!966 = !{!967, !1005, !1006, !1007, !1019}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !965, file: !823, line: 208, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !588, line: 62, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !971, line: 538, size: 256, elements: !972)
!971 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!972 = !{!973, !977, !983, !996}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !970, file: !971, line: 539, baseType: !974, size: 32)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !971, line: 482, size: 32, elements: !975)
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !974, file: !971, line: 484, baseType: !7, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !970, file: !971, line: 540, baseType: !978, size: 192)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !971, line: 488, size: 192, elements: !979)
!979 = !{!980, !981, !982}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !978, file: !971, line: 489, baseType: !974, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !978, file: !971, line: 492, baseType: !568, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !978, file: !971, line: 496, baseType: !651, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !970, file: !971, line: 541, baseType: !984, size: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !971, line: 504, size: 256, elements: !985)
!985 = !{!986, !987, !994, !995}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !984, file: !971, line: 505, baseType: !974, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !984, file: !971, line: 509, baseType: !988, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !971, line: 501, baseType: !989)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !992}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !984, file: !971, line: 510, baseType: !992, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !984, file: !971, line: 513, baseType: !968, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !970, file: !971, line: 542, baseType: !997, size: 128)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !971, line: 530, size: 128, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !997, file: !971, line: 531, baseType: !974, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !997, file: !971, line: 534, baseType: !1001, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !971, line: 525, baseType: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!562, !651, !568, !704, !704}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !965, file: !823, line: 211, baseType: !7, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !965, file: !823, line: 214, baseType: !582, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !965, file: !823, line: 224, baseType: !1008, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !823, line: 202, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !823, line: 202, size: 128, elements: !1011)
!1011 = !{!1012}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1010, file: !823, line: 202, baseType: !1013, size: 128)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !823, line: 200, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !823, line: 200, size: 128, elements: !1015)
!1015 = !{!1016, !1017, !1018}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1014, file: !823, line: 200, baseType: !7, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1014, file: !823, line: 200, baseType: !7, size: 32, offset: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1014, file: !823, line: 200, baseType: !854, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !965, file: !823, line: 234, baseType: !1008, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !959, file: !823, line: 197, baseType: !582, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !836, file: !823, line: 319, baseType: !712, size: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !836, file: !823, line: 320, baseType: !731, size: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !653, file: !334, line: 3384, baseType: !1024, size: 1472)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1025)
!1025 = !{!1026, !1047, !1048, !1049, !1050}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1024, file: !334, line: 3115, baseType: !1027, size: 1216)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1027, file: !334, line: 2985, baseType: !816, size: 960)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1027, file: !334, line: 2986, baseType: !651, size: 64, offset: 960)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1027, file: !334, line: 2987, baseType: !651, size: 64, offset: 1024)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1027, file: !334, line: 2988, baseType: !651, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1027, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1027, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1027, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1027, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1027, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1027, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1027, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1027, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1027, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1027, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1027, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1027, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1027, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1027, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1024, file: !334, line: 3117, baseType: !651, size: 64, offset: 1216)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1024, file: !334, line: 3119, baseType: !651, size: 64, offset: 1280)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1024, file: !334, line: 3121, baseType: !651, size: 64, offset: 1344)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1024, file: !334, line: 3123, baseType: !651, size: 64, offset: 1408)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !653, file: !334, line: 3385, baseType: !1052, size: 1088)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1053)
!1053 = !{!1054, !1055, !1056}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1052, file: !334, line: 2875, baseType: !816, size: 960)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1052, file: !334, line: 2876, baseType: !820, size: 64, offset: 960)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1052, file: !334, line: 2877, baseType: !1057, size: 64, offset: 1024)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1059, line: 172, size: 128, elements: !1060)
!1059 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1066, !1067}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1058, file: !1059, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1058, file: !1059, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1058, file: !1059, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1058, file: !1059, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1058, file: !1059, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1058, file: !1059, line: 195, baseType: !7, size: 32, offset: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1058, file: !1059, line: 199, baseType: !651, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !653, file: !334, line: 3386, baseType: !1027, size: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !653, file: !334, line: 3387, baseType: !1070, size: 1280)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1070, file: !334, line: 3094, baseType: !1027, size: 1216)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1070, file: !334, line: 3095, baseType: !1057, size: 64, offset: 1216)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !653, file: !334, line: 3388, baseType: !1075, size: 1216)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1075, file: !334, line: 2825, baseType: !778, size: 896)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1075, file: !334, line: 2827, baseType: !651, size: 64, offset: 896)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1075, file: !334, line: 2828, baseType: !651, size: 64, offset: 960)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1075, file: !334, line: 2829, baseType: !651, size: 64, offset: 1024)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1075, file: !334, line: 2830, baseType: !651, size: 64, offset: 1088)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1075, file: !334, line: 2831, baseType: !651, size: 64, offset: 1152)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !653, file: !334, line: 3389, baseType: !1084, size: 1024)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1085)
!1085 = !{!1086, !1087, !1088}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1084, file: !334, line: 2851, baseType: !816, size: 960)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1084, file: !334, line: 2852, baseType: !563, size: 32, offset: 960)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1084, file: !334, line: 2853, baseType: !563, size: 32, offset: 992)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !653, file: !334, line: 3390, baseType: !1090, size: 1024)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1090, file: !334, line: 2858, baseType: !816, size: 960)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1090, file: !334, line: 2859, baseType: !1057, size: 64, offset: 960)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !653, file: !334, line: 3391, baseType: !1095, size: 960)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1096)
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1095, file: !334, line: 2863, baseType: !816, size: 960)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !653, file: !334, line: 3392, baseType: !1099, size: 1472)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1100)
!1100 = !{!1101}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1099, file: !334, line: 3305, baseType: !1024, size: 1472)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !653, file: !334, line: 3393, baseType: !1103, size: 1792)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1104)
!1104 = !{!1105, !1106, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1103, file: !334, line: 3249, baseType: !1024, size: 1472)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1103, file: !334, line: 3251, baseType: !1107, size: 64, offset: 1472)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1109, line: 463, size: 1152, elements: !1110)
!1109 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1110 = !{!1111, !1114, !1144, !1145, !1284, !1287, !1288, !1289, !1290, !1291, !1292, !1316, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1108, file: !1109, line: 464, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1109, line: 464, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1108, file: !1109, line: 467, baseType: !1115, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1133, !1134, !1135, !1136, !1137, !1138, !1140, !1142, !1143}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1116, file: !318, line: 377, baseType: !587, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1116, file: !318, line: 378, baseType: !587, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1116, file: !318, line: 381, baseType: !1121, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1123)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1124)
!1124 = !{!1125}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1123, file: !318, line: 282, baseType: !1126, size: 128)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1127, file: !318, line: 281, baseType: !7, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1127, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1127, file: !318, line: 281, baseType: !1132, size: 64, offset: 64)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 64, elements: !748)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1116, file: !318, line: 384, baseType: !563, size: 32, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1116, file: !318, line: 387, baseType: !563, size: 32, offset: 224)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1116, file: !318, line: 390, baseType: !563, size: 32, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1116, file: !318, line: 394, baseType: !1121, size: 64, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1116, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1116, file: !318, line: 399, baseType: !1139, size: 64, offset: 416)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !888)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1116, file: !318, line: 402, baseType: !1141, size: 64, offset: 480)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !888)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1116, file: !318, line: 406, baseType: !563, size: 32, offset: 544)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1116, file: !318, line: 409, baseType: !563, size: 32, offset: 576)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1108, file: !1109, line: 470, baseType: !616, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1108, file: !1109, line: 473, baseType: !1146, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1059, line: 39, size: 1152, elements: !1148)
!1148 = !{!1149, !1199, !1212, !1225, !1226, !1238, !1239, !1243, !1244, !1245, !1246, !1247}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1147, file: !1059, line: 41, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1151, line: 144, baseType: !1152)
!1151 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1151, line: 100, size: 896, elements: !1154)
!1154 = !{!1155, !1161, !1166, !1171, !1173, !1176, !1177, !1178, !1179, !1180, !1185, !1187, !1188, !1193, !1198}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1153, file: !1151, line: 102, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1151, line: 52, baseType: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!1160, !992}
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1151, line: 47, baseType: !7)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1153, file: !1151, line: 105, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1151, line: 59, baseType: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!563, !992, !992}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1153, file: !1151, line: 108, baseType: !1167, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1151, line: 63, baseType: !1168)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !567}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1153, file: !1151, line: 111, baseType: !1172, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1153, file: !1151, line: 114, baseType: !1174, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1175, line: 46, baseType: !704)
!1175 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1153, file: !1151, line: 117, baseType: !1174, size: 64, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1153, file: !1151, line: 120, baseType: !1174, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1153, file: !1151, line: 124, baseType: !7, size: 32, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1153, file: !1151, line: 128, baseType: !7, size: 32, offset: 480)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1153, file: !1151, line: 131, baseType: !1181, size: 64, offset: 512)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1151, line: 75, baseType: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!567, !1174, !1174}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1153, file: !1151, line: 132, baseType: !1186, size: 64, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1151, line: 78, baseType: !1168)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1153, file: !1151, line: 135, baseType: !567, size: 64, offset: 640)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1153, file: !1151, line: 136, baseType: !1189, size: 64, offset: 704)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1151, line: 82, baseType: !1190)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!567, !567, !1174, !1174}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1153, file: !1151, line: 137, baseType: !1194, size: 64, offset: 768)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1151, line: 83, baseType: !1195)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !567, !567}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1153, file: !1151, line: 141, baseType: !7, size: 32, offset: 832)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1147, file: !1059, line: 48, baseType: !1200, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !618, line: 35, baseType: !1202)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !618, line: 35, size: 128, elements: !1203)
!1203 = !{!1204}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1202, file: !618, line: 35, baseType: !1205, size: 128)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !618, line: 33, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !618, line: 33, size: 128, elements: !1207)
!1207 = !{!1208, !1209, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1206, file: !618, line: 33, baseType: !7, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1206, file: !618, line: 33, baseType: !7, size: 32, offset: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1206, file: !618, line: 33, baseType: !1211, size: 64, offset: 64)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 64, elements: !748)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1147, file: !1059, line: 51, baseType: !1213, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1215, file: !334, line: 183, baseType: !1218, size: 128)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1219)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1220)
!1220 = !{!1221, !1222, !1223}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1219, file: !334, line: 182, baseType: !7, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1219, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1219, file: !334, line: 182, baseType: !1224, size: 64, offset: 64)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 64, elements: !748)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1147, file: !1059, line: 54, baseType: !651, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1147, file: !1059, line: 57, baseType: !1227, size: 128, offset: 256)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1228, line: 31, size: 128, elements: !1229)
!1228 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1227, file: !1228, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1227, file: !1228, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1227, file: !1228, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1227, file: !1228, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1227, file: !1228, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1227, file: !1228, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1227, file: !1228, line: 56, baseType: !1237, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !588, line: 47, baseType: !872)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1147, file: !1059, line: 60, baseType: !1227, size: 128, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1147, file: !1059, line: 64, baseType: !1240, size: 64, offset: 512)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1242, line: 33, flags: DIFlagFwdDecl)
!1242 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1147, file: !1059, line: 67, baseType: !651, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1147, file: !1059, line: 73, baseType: !1150, size: 64, offset: 640)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1147, file: !1059, line: 77, baseType: !1237, size: 64, offset: 704)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1147, file: !1059, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1147, file: !1059, line: 82, baseType: !1248, size: 320, offset: 832)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1249, line: 62, size: 320, elements: !1250)
!1249 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1250 = !{!1251, !1257, !1258, !1259, !1260, !1267}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1248, file: !1249, line: 63, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1249, line: 56, size: 128, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1253, file: !1249, line: 57, baseType: !1252, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1253, file: !1249, line: 58, baseType: !747, size: 8, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1248, file: !1249, line: 64, baseType: !7, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1248, file: !1249, line: 66, baseType: !7, size: 32, offset: 96)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1248, file: !1249, line: 68, baseType: !562, size: 8, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1248, file: !1249, line: 70, baseType: !1261, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1249, line: 37, size: 128, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1262, file: !1249, line: 39, baseType: !1261, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1262, file: !1249, line: 40, baseType: !1266, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1248, file: !1249, line: 71, baseType: !1268, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1249, line: 45, size: 320, elements: !1270)
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1269, file: !1249, line: 47, baseType: !1268, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1269, file: !1249, line: 48, baseType: !1273, size: 256, offset: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !1274)
!1274 = !{!1275, !1277, !1278, !1283}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1273, file: !334, line: 1884, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1273, file: !334, line: 1885, baseType: !1276, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1273, file: !334, line: 1891, baseType: !1279, size: 64, offset: 128)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1273, file: !334, line: 1891, size: 64, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1279, file: !334, line: 1891, baseType: !626, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1279, file: !334, line: 1891, baseType: !651, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1273, file: !334, line: 1892, baseType: !1266, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1108, file: !1109, line: 476, baseType: !1285, size: 64, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1109, line: 476, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1108, file: !1109, line: 479, baseType: !1150, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1108, file: !1109, line: 484, baseType: !651, size: 64, offset: 384)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1108, file: !1109, line: 488, baseType: !651, size: 64, offset: 448)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1108, file: !1109, line: 493, baseType: !651, size: 64, offset: 512)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1108, file: !1109, line: 496, baseType: !651, size: 64, offset: 576)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1108, file: !1109, line: 501, baseType: !1293, size: 64, offset: 640)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !1295)
!1295 = !{!1296, !1299, !1300, !1301, !1302, !1304, !1305, !1310, !1311, !1312, !1313, !1314, !1315}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1294, file: !329, line: 2356, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1294, file: !329, line: 2357, baseType: !568, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1294, file: !329, line: 2358, baseType: !563, size: 32, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1294, file: !329, line: 2359, baseType: !563, size: 32, offset: 160)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1294, file: !329, line: 2360, baseType: !1303, size: 128, offset: 192)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 128, elements: !912)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1294, file: !329, line: 2364, baseType: !563, size: 32, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1294, file: !329, line: 2367, baseType: !1306, size: 128, offset: 384)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1306, file: !329, line: 2351, baseType: !820, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1306, file: !329, line: 2352, baseType: !582, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1294, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1294, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1294, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1294, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1294, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1294, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1108, file: !1109, line: 504, baseType: !1317, size: 64, offset: 704)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1109, line: 504, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1108, file: !1109, line: 507, baseType: !1150, size: 64, offset: 768)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1108, file: !1109, line: 510, baseType: !563, size: 32, offset: 832)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1108, file: !1109, line: 513, baseType: !563, size: 32, offset: 864)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1108, file: !1109, line: 516, baseType: !644, size: 32, offset: 896)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1108, file: !1109, line: 519, baseType: !644, size: 32, offset: 928)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1108, file: !1109, line: 522, baseType: !7, size: 32, offset: 960)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1108, file: !1109, line: 523, baseType: !7, size: 32, offset: 992)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1108, file: !1109, line: 528, baseType: !568, size: 64, offset: 1024)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1108, file: !1109, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1108, file: !1109, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1108, file: !1109, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1108, file: !1109, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1108, file: !1109, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1108, file: !1109, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1108, file: !1109, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1108, file: !1109, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1108, file: !1109, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1108, file: !1109, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1108, file: !1109, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1108, file: !1109, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1108, file: !1109, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1108, file: !1109, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1108, file: !1109, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1108, file: !1109, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1103, file: !334, line: 3254, baseType: !651, size: 64, offset: 1536)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1103, file: !334, line: 3257, baseType: !651, size: 64, offset: 1600)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1103, file: !334, line: 3258, baseType: !651, size: 64, offset: 1664)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1103, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1103, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1103, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1103, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1103, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1103, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1103, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1103, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1103, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1103, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1103, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1103, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1103, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1103, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1103, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1103, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1103, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1103, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !653, file: !334, line: 3394, baseType: !1365, size: 1344)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !1366)
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1365, file: !334, line: 2280, baseType: !689, size: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1365, file: !334, line: 2281, baseType: !651, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1365, file: !334, line: 2282, baseType: !651, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1365, file: !334, line: 2283, baseType: !651, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1365, file: !334, line: 2284, baseType: !651, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1365, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1365, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1365, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1365, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1365, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1365, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1365, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1365, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1365, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1365, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1365, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1365, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1365, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1365, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1365, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1365, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1365, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1365, file: !334, line: 2306, baseType: !942, size: 32, offset: 544)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1365, file: !334, line: 2307, baseType: !651, size: 64, offset: 576)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1365, file: !334, line: 2308, baseType: !651, size: 64, offset: 640)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1365, file: !334, line: 2314, baseType: !1393, size: 64, offset: 704)
!1393 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !1394)
!1394 = !{!1395, !1396, !1397}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1393, file: !334, line: 2310, baseType: !563, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1393, file: !334, line: 2311, baseType: !568, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1393, file: !334, line: 2312, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1365, file: !334, line: 2315, baseType: !651, size: 64, offset: 768)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1365, file: !334, line: 2316, baseType: !651, size: 64, offset: 832)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1365, file: !334, line: 2317, baseType: !651, size: 64, offset: 896)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1365, file: !334, line: 2318, baseType: !651, size: 64, offset: 960)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1365, file: !334, line: 2319, baseType: !651, size: 64, offset: 1024)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1365, file: !334, line: 2320, baseType: !651, size: 64, offset: 1088)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1365, file: !334, line: 2321, baseType: !651, size: 64, offset: 1152)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1365, file: !334, line: 2322, baseType: !651, size: 64, offset: 1216)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1365, file: !334, line: 2324, baseType: !1409, size: 64, offset: 1280)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !653, file: !334, line: 3395, baseType: !1412, size: 320)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !1413)
!1413 = !{!1414, !1415, !1416}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1412, file: !334, line: 1470, baseType: !689, size: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1412, file: !334, line: 1471, baseType: !651, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1412, file: !334, line: 1472, baseType: !651, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !653, file: !334, line: 3396, baseType: !1418, size: 320)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !1419)
!1419 = !{!1420, !1421, !1422}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1418, file: !334, line: 1483, baseType: !689, size: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1418, file: !334, line: 1484, baseType: !563, size: 32, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1418, file: !334, line: 1485, baseType: !1224, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !653, file: !334, line: 3397, baseType: !1424, size: 384)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1429}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1424, file: !334, line: 1830, baseType: !689, size: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1424, file: !334, line: 1831, baseType: !644, size: 32, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1424, file: !334, line: 1832, baseType: !651, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1424, file: !334, line: 1835, baseType: !1224, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !653, file: !334, line: 3398, baseType: !1431, size: 704)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !1432)
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1442}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1431, file: !334, line: 1899, baseType: !689, size: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1431, file: !334, line: 1902, baseType: !651, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1431, file: !334, line: 1905, baseType: !626, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1431, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1431, file: !334, line: 1911, baseType: !1438, size: 64, offset: 384)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1059, line: 117, size: 128, elements: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1439, file: !1059, line: 120, baseType: !1227, size: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1431, file: !334, line: 1914, baseType: !1273, size: 256, offset: 448)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !653, file: !334, line: 3399, baseType: !1444, size: 704)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1444, file: !334, line: 2009, baseType: !689, size: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1444, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1444, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1444, file: !334, line: 2014, baseType: !644, size: 32, offset: 224)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1444, file: !334, line: 2016, baseType: !651, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1444, file: !334, line: 2017, baseType: !1213, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1444, file: !334, line: 2019, baseType: !651, size: 64, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1444, file: !334, line: 2020, baseType: !651, size: 64, offset: 448)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1444, file: !334, line: 2021, baseType: !651, size: 64, offset: 512)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1444, file: !334, line: 2022, baseType: !651, size: 64, offset: 576)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1444, file: !334, line: 2023, baseType: !651, size: 64, offset: 640)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !653, file: !334, line: 3400, baseType: !1458, size: 832)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !1459)
!1459 = !{!1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1458, file: !334, line: 2431, baseType: !689, size: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1458, file: !334, line: 2433, baseType: !651, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1458, file: !334, line: 2434, baseType: !651, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1458, file: !334, line: 2435, baseType: !651, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1458, file: !334, line: 2436, baseType: !651, size: 64, offset: 384)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1458, file: !334, line: 2437, baseType: !1213, size: 64, offset: 448)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1458, file: !334, line: 2438, baseType: !651, size: 64, offset: 512)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1458, file: !334, line: 2440, baseType: !651, size: 64, offset: 576)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1458, file: !334, line: 2441, baseType: !651, size: 64, offset: 640)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1458, file: !334, line: 2443, baseType: !1470, size: 128, offset: 704)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !1472)
!1472 = !{!1473}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1471, file: !334, line: 182, baseType: !1218, size: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !653, file: !334, line: 3401, baseType: !1475, size: 320)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !1476)
!1476 = !{!1477, !1478, !1485}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1475, file: !334, line: 3329, baseType: !689, size: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1475, file: !334, line: 3330, baseType: !1479, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !1481)
!1481 = !{!1482, !1483, !1484}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1480, file: !334, line: 3322, baseType: !1479, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1480, file: !334, line: 3323, baseType: !1479, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1480, file: !334, line: 3324, baseType: !651, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1475, file: !334, line: 3331, baseType: !1479, size: 64, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !653, file: !334, line: 3402, baseType: !1487, size: 256)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1487, file: !334, line: 1541, baseType: !689, size: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1487, file: !334, line: 1542, baseType: !1491, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !1494)
!1494 = !{!1495}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1493, file: !334, line: 1538, baseType: !1496, size: 192)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !1498)
!1498 = !{!1499, !1500, !1501}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1497, file: !334, line: 1537, baseType: !7, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1497, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1497, file: !334, line: 1537, baseType: !1502, size: 128, offset: 64)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1503, size: 128, elements: !748)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1504, file: !334, line: 1533, baseType: !651, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1504, file: !334, line: 1534, baseType: !651, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !653, file: !334, line: 3403, baseType: !1509, size: 512)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1520, !1521, !1522}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1509, file: !334, line: 1939, baseType: !689, size: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1509, file: !334, line: 1940, baseType: !644, size: 32, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1509, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1509, file: !334, line: 1946, baseType: !1515, size: 32, offset: 256)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !1516)
!1516 = !{!1517, !1518, !1519}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1515, file: !334, line: 1943, baseType: !352, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1515, file: !334, line: 1944, baseType: !359, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1515, file: !334, line: 1945, baseType: !366, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1509, file: !334, line: 1950, baseType: !615, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1509, file: !334, line: 1951, baseType: !615, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1509, file: !334, line: 1953, baseType: !1224, size: 64, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !653, file: !334, line: 3404, baseType: !1524, size: 1664)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1524, file: !334, line: 3338, baseType: !689, size: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1524, file: !334, line: 3341, baseType: !1528, size: 1472, offset: 192)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1529, line: 410, size: 1472, elements: !1530)
!1529 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1528, file: !1529, line: 412, baseType: !563, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1528, file: !1529, line: 413, baseType: !563, size: 32, offset: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1528, file: !1529, line: 414, baseType: !563, size: 32, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1528, file: !1529, line: 415, baseType: !563, size: 32, offset: 96)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1528, file: !1529, line: 416, baseType: !563, size: 32, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1528, file: !1529, line: 417, baseType: !563, size: 32, offset: 160)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1528, file: !1529, line: 418, baseType: !562, size: 8, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1528, file: !1529, line: 419, baseType: !562, size: 8, offset: 200)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1528, file: !1529, line: 420, baseType: !1540, size: 8, offset: 208)
!1540 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1528, file: !1529, line: 421, baseType: !1540, size: 8, offset: 216)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1528, file: !1529, line: 422, baseType: !1540, size: 8, offset: 224)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1528, file: !1529, line: 423, baseType: !1540, size: 8, offset: 232)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1528, file: !1529, line: 424, baseType: !1540, size: 8, offset: 240)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1528, file: !1529, line: 425, baseType: !1540, size: 8, offset: 248)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1528, file: !1529, line: 426, baseType: !1540, size: 8, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1528, file: !1529, line: 427, baseType: !1540, size: 8, offset: 264)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1528, file: !1529, line: 428, baseType: !1540, size: 8, offset: 272)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1528, file: !1529, line: 429, baseType: !1540, size: 8, offset: 280)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1528, file: !1529, line: 430, baseType: !1540, size: 8, offset: 288)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1528, file: !1529, line: 431, baseType: !1540, size: 8, offset: 296)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1528, file: !1529, line: 432, baseType: !1540, size: 8, offset: 304)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1528, file: !1529, line: 433, baseType: !1540, size: 8, offset: 312)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1528, file: !1529, line: 434, baseType: !1540, size: 8, offset: 320)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1528, file: !1529, line: 435, baseType: !1540, size: 8, offset: 328)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1528, file: !1529, line: 436, baseType: !1540, size: 8, offset: 336)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1528, file: !1529, line: 437, baseType: !1540, size: 8, offset: 344)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1528, file: !1529, line: 438, baseType: !1540, size: 8, offset: 352)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1528, file: !1529, line: 439, baseType: !1540, size: 8, offset: 360)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1528, file: !1529, line: 440, baseType: !1540, size: 8, offset: 368)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1528, file: !1529, line: 441, baseType: !1540, size: 8, offset: 376)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1528, file: !1529, line: 442, baseType: !1540, size: 8, offset: 384)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1528, file: !1529, line: 443, baseType: !1540, size: 8, offset: 392)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1528, file: !1529, line: 444, baseType: !1540, size: 8, offset: 400)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1528, file: !1529, line: 445, baseType: !1540, size: 8, offset: 408)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1528, file: !1529, line: 446, baseType: !1540, size: 8, offset: 416)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1528, file: !1529, line: 447, baseType: !1540, size: 8, offset: 424)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1528, file: !1529, line: 448, baseType: !1540, size: 8, offset: 432)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1528, file: !1529, line: 449, baseType: !1540, size: 8, offset: 440)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1528, file: !1529, line: 450, baseType: !1540, size: 8, offset: 448)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1528, file: !1529, line: 451, baseType: !1540, size: 8, offset: 456)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1528, file: !1529, line: 452, baseType: !1540, size: 8, offset: 464)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1528, file: !1529, line: 453, baseType: !1540, size: 8, offset: 472)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1528, file: !1529, line: 454, baseType: !1540, size: 8, offset: 480)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1528, file: !1529, line: 455, baseType: !1540, size: 8, offset: 488)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1528, file: !1529, line: 456, baseType: !1540, size: 8, offset: 496)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1528, file: !1529, line: 457, baseType: !1540, size: 8, offset: 504)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1528, file: !1529, line: 458, baseType: !1540, size: 8, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1528, file: !1529, line: 459, baseType: !1540, size: 8, offset: 520)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1528, file: !1529, line: 460, baseType: !1540, size: 8, offset: 528)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1528, file: !1529, line: 461, baseType: !1540, size: 8, offset: 536)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1528, file: !1529, line: 462, baseType: !1540, size: 8, offset: 544)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1528, file: !1529, line: 463, baseType: !1540, size: 8, offset: 552)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1528, file: !1529, line: 464, baseType: !1540, size: 8, offset: 560)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1528, file: !1529, line: 465, baseType: !1540, size: 8, offset: 568)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1528, file: !1529, line: 466, baseType: !1540, size: 8, offset: 576)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1528, file: !1529, line: 467, baseType: !1540, size: 8, offset: 584)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1528, file: !1529, line: 468, baseType: !1540, size: 8, offset: 592)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1528, file: !1529, line: 469, baseType: !1540, size: 8, offset: 600)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1528, file: !1529, line: 470, baseType: !1540, size: 8, offset: 608)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1528, file: !1529, line: 471, baseType: !1540, size: 8, offset: 616)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1528, file: !1529, line: 472, baseType: !1540, size: 8, offset: 624)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1528, file: !1529, line: 473, baseType: !1540, size: 8, offset: 632)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1528, file: !1529, line: 474, baseType: !1540, size: 8, offset: 640)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1528, file: !1529, line: 475, baseType: !1540, size: 8, offset: 648)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1528, file: !1529, line: 476, baseType: !1540, size: 8, offset: 656)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1528, file: !1529, line: 477, baseType: !1540, size: 8, offset: 664)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1528, file: !1529, line: 478, baseType: !1540, size: 8, offset: 672)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1528, file: !1529, line: 479, baseType: !1540, size: 8, offset: 680)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1528, file: !1529, line: 480, baseType: !1540, size: 8, offset: 688)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1528, file: !1529, line: 481, baseType: !1540, size: 8, offset: 696)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1528, file: !1529, line: 482, baseType: !1540, size: 8, offset: 704)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1528, file: !1529, line: 483, baseType: !1540, size: 8, offset: 712)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1528, file: !1529, line: 484, baseType: !1540, size: 8, offset: 720)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1528, file: !1529, line: 485, baseType: !1540, size: 8, offset: 728)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1528, file: !1529, line: 486, baseType: !1540, size: 8, offset: 736)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1528, file: !1529, line: 487, baseType: !1540, size: 8, offset: 744)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1528, file: !1529, line: 488, baseType: !1540, size: 8, offset: 752)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1528, file: !1529, line: 489, baseType: !1540, size: 8, offset: 760)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1528, file: !1529, line: 490, baseType: !1540, size: 8, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1528, file: !1529, line: 491, baseType: !1540, size: 8, offset: 776)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1528, file: !1529, line: 492, baseType: !1540, size: 8, offset: 784)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1528, file: !1529, line: 493, baseType: !1540, size: 8, offset: 792)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1528, file: !1529, line: 494, baseType: !1540, size: 8, offset: 800)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1528, file: !1529, line: 495, baseType: !1540, size: 8, offset: 808)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1528, file: !1529, line: 496, baseType: !1540, size: 8, offset: 816)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1528, file: !1529, line: 497, baseType: !1540, size: 8, offset: 824)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1528, file: !1529, line: 498, baseType: !1540, size: 8, offset: 832)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1528, file: !1529, line: 499, baseType: !1540, size: 8, offset: 840)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1528, file: !1529, line: 500, baseType: !1540, size: 8, offset: 848)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1528, file: !1529, line: 501, baseType: !1540, size: 8, offset: 856)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1528, file: !1529, line: 502, baseType: !1540, size: 8, offset: 864)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1528, file: !1529, line: 503, baseType: !1540, size: 8, offset: 872)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1528, file: !1529, line: 504, baseType: !1540, size: 8, offset: 880)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1528, file: !1529, line: 505, baseType: !1540, size: 8, offset: 888)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1528, file: !1529, line: 506, baseType: !1540, size: 8, offset: 896)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1528, file: !1529, line: 507, baseType: !1540, size: 8, offset: 904)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1528, file: !1529, line: 508, baseType: !1540, size: 8, offset: 912)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1528, file: !1529, line: 509, baseType: !1540, size: 8, offset: 920)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1528, file: !1529, line: 510, baseType: !1540, size: 8, offset: 928)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1528, file: !1529, line: 511, baseType: !1540, size: 8, offset: 936)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1528, file: !1529, line: 512, baseType: !1540, size: 8, offset: 944)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1528, file: !1529, line: 513, baseType: !1540, size: 8, offset: 952)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1528, file: !1529, line: 514, baseType: !1540, size: 8, offset: 960)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1528, file: !1529, line: 515, baseType: !1540, size: 8, offset: 968)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1528, file: !1529, line: 516, baseType: !1540, size: 8, offset: 976)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1528, file: !1529, line: 517, baseType: !1540, size: 8, offset: 984)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1528, file: !1529, line: 518, baseType: !1540, size: 8, offset: 992)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1528, file: !1529, line: 519, baseType: !1540, size: 8, offset: 1000)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1528, file: !1529, line: 520, baseType: !1540, size: 8, offset: 1008)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1528, file: !1529, line: 521, baseType: !1540, size: 8, offset: 1016)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1528, file: !1529, line: 522, baseType: !1540, size: 8, offset: 1024)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1528, file: !1529, line: 523, baseType: !1540, size: 8, offset: 1032)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1528, file: !1529, line: 524, baseType: !1540, size: 8, offset: 1040)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1528, file: !1529, line: 525, baseType: !1540, size: 8, offset: 1048)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1528, file: !1529, line: 526, baseType: !1540, size: 8, offset: 1056)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1528, file: !1529, line: 527, baseType: !1540, size: 8, offset: 1064)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1528, file: !1529, line: 528, baseType: !1540, size: 8, offset: 1072)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1528, file: !1529, line: 529, baseType: !1540, size: 8, offset: 1080)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1528, file: !1529, line: 530, baseType: !1540, size: 8, offset: 1088)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1528, file: !1529, line: 531, baseType: !1540, size: 8, offset: 1096)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1528, file: !1529, line: 532, baseType: !1540, size: 8, offset: 1104)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1528, file: !1529, line: 533, baseType: !1540, size: 8, offset: 1112)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1528, file: !1529, line: 534, baseType: !1540, size: 8, offset: 1120)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1528, file: !1529, line: 535, baseType: !1540, size: 8, offset: 1128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1528, file: !1529, line: 536, baseType: !1540, size: 8, offset: 1136)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1528, file: !1529, line: 537, baseType: !1540, size: 8, offset: 1144)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1528, file: !1529, line: 538, baseType: !1540, size: 8, offset: 1152)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1528, file: !1529, line: 539, baseType: !1540, size: 8, offset: 1160)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1528, file: !1529, line: 540, baseType: !1540, size: 8, offset: 1168)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1528, file: !1529, line: 541, baseType: !1540, size: 8, offset: 1176)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1528, file: !1529, line: 542, baseType: !1540, size: 8, offset: 1184)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1528, file: !1529, line: 543, baseType: !1540, size: 8, offset: 1192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1528, file: !1529, line: 544, baseType: !1540, size: 8, offset: 1200)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1528, file: !1529, line: 545, baseType: !1540, size: 8, offset: 1208)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1528, file: !1529, line: 546, baseType: !1540, size: 8, offset: 1216)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1528, file: !1529, line: 547, baseType: !1540, size: 8, offset: 1224)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1528, file: !1529, line: 548, baseType: !1540, size: 8, offset: 1232)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1528, file: !1529, line: 549, baseType: !1540, size: 8, offset: 1240)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1528, file: !1529, line: 550, baseType: !1540, size: 8, offset: 1248)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1528, file: !1529, line: 551, baseType: !1540, size: 8, offset: 1256)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1528, file: !1529, line: 552, baseType: !1540, size: 8, offset: 1264)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1528, file: !1529, line: 553, baseType: !1540, size: 8, offset: 1272)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1528, file: !1529, line: 554, baseType: !1540, size: 8, offset: 1280)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1528, file: !1529, line: 555, baseType: !1540, size: 8, offset: 1288)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1528, file: !1529, line: 556, baseType: !1540, size: 8, offset: 1296)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1528, file: !1529, line: 557, baseType: !1540, size: 8, offset: 1304)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1528, file: !1529, line: 558, baseType: !1540, size: 8, offset: 1312)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1528, file: !1529, line: 559, baseType: !1540, size: 8, offset: 1320)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1528, file: !1529, line: 560, baseType: !1540, size: 8, offset: 1328)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1528, file: !1529, line: 561, baseType: !1540, size: 8, offset: 1336)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1528, file: !1529, line: 562, baseType: !1540, size: 8, offset: 1344)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1528, file: !1529, line: 563, baseType: !1540, size: 8, offset: 1352)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1528, file: !1529, line: 564, baseType: !1540, size: 8, offset: 1360)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1528, file: !1529, line: 565, baseType: !1540, size: 8, offset: 1368)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1528, file: !1529, line: 566, baseType: !1540, size: 8, offset: 1376)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1528, file: !1529, line: 567, baseType: !1540, size: 8, offset: 1384)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1528, file: !1529, line: 568, baseType: !1540, size: 8, offset: 1392)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1528, file: !1529, line: 569, baseType: !1540, size: 8, offset: 1400)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1528, file: !1529, line: 570, baseType: !1540, size: 8, offset: 1408)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1528, file: !1529, line: 571, baseType: !1540, size: 8, offset: 1416)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1528, file: !1529, line: 572, baseType: !1540, size: 8, offset: 1424)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1528, file: !1529, line: 573, baseType: !1540, size: 8, offset: 1432)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1528, file: !1529, line: 574, baseType: !1540, size: 8, offset: 1440)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !653, file: !334, line: 3405, baseType: !1696, size: 384)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !1697)
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1696, file: !334, line: 3353, baseType: !689, size: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1696, file: !334, line: 3356, baseType: !1700, size: 192, offset: 192)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1529, line: 578, size: 192, elements: !1701)
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1700, file: !1529, line: 580, baseType: !563, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1700, file: !1529, line: 581, baseType: !563, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1700, file: !1529, line: 582, baseType: !563, size: 32, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1700, file: !1529, line: 583, baseType: !563, size: 32, offset: 96)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1700, file: !1529, line: 584, baseType: !562, size: 8, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1700, file: !1529, line: 585, baseType: !562, size: 8, offset: 136)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1700, file: !1529, line: 586, baseType: !562, size: 8, offset: 144)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1700, file: !1529, line: 587, baseType: !562, size: 8, offset: 152)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1700, file: !1529, line: 588, baseType: !562, size: 8, offset: 160)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1700, file: !1529, line: 589, baseType: !562, size: 8, offset: 168)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1700, file: !1529, line: 590, baseType: !562, size: 8, offset: 176)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !628, file: !618, line: 739, baseType: !1714, size: 448)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !618, line: 350, size: 448, elements: !1715)
!1715 = !{!1716, !1722}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1714, file: !618, line: 353, baseType: !1717, size: 384)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !618, line: 333, size: 384, elements: !1718)
!1718 = !{!1719, !1720, !1721}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1717, file: !618, line: 336, baseType: !631, size: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1717, file: !618, line: 343, baseType: !1261, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1717, file: !618, line: 344, baseType: !1268, size: 64, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1714, file: !618, line: 359, baseType: !1224, size: 64, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !628, file: !618, line: 740, baseType: !1724, size: 512)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !618, line: 365, size: 512, elements: !1725)
!1725 = !{!1726, !1727, !1728}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1724, file: !618, line: 368, baseType: !1717, size: 384)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1724, file: !618, line: 373, baseType: !651, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1724, file: !618, line: 374, baseType: !651, size: 64, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !628, file: !618, line: 741, baseType: !1730, size: 576)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !618, line: 380, size: 576, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1730, file: !618, line: 383, baseType: !1724, size: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1730, file: !618, line: 389, baseType: !1224, size: 64, offset: 512)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !628, file: !618, line: 742, baseType: !1735, size: 320)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !618, line: 395, size: 320, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1735, file: !618, line: 397, baseType: !631, size: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1735, file: !618, line: 400, baseType: !615, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !628, file: !618, line: 743, baseType: !1740, size: 448)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !618, line: 406, size: 448, elements: !1741)
!1741 = !{!1742, !1743, !1744, !1745}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1740, file: !618, line: 408, baseType: !631, size: 256)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1740, file: !618, line: 412, baseType: !651, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1740, file: !618, line: 420, baseType: !651, size: 64, offset: 320)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1740, file: !618, line: 423, baseType: !615, size: 64, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !628, file: !618, line: 744, baseType: !1747, size: 384)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !618, line: 429, size: 384, elements: !1748)
!1748 = !{!1749, !1750, !1751}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1747, file: !618, line: 431, baseType: !631, size: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1747, file: !618, line: 434, baseType: !651, size: 64, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1747, file: !618, line: 437, baseType: !615, size: 64, offset: 320)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !628, file: !618, line: 745, baseType: !1753, size: 384)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !618, line: 443, size: 384, elements: !1754)
!1754 = !{!1755, !1756, !1757}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1753, file: !618, line: 445, baseType: !631, size: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1753, file: !618, line: 449, baseType: !651, size: 64, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1753, file: !618, line: 453, baseType: !615, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !628, file: !618, line: 746, baseType: !1759, size: 320)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !618, line: 459, size: 320, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1759, file: !618, line: 461, baseType: !631, size: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1759, file: !618, line: 464, baseType: !651, size: 64, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !628, file: !618, line: 747, baseType: !1764, size: 768)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !618, line: 469, size: 768, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1770}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1764, file: !618, line: 471, baseType: !631, size: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1764, file: !618, line: 474, baseType: !7, size: 32, offset: 256)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1764, file: !618, line: 475, baseType: !7, size: 32, offset: 288)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1764, file: !618, line: 478, baseType: !651, size: 64, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1764, file: !618, line: 481, baseType: !1771, size: 384, offset: 384)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1772, size: 384, elements: !748)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !334, line: 1917, size: 384, elements: !1773)
!1773 = !{!1774, !1775, !1776}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1772, file: !334, line: 1920, baseType: !1273, size: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1772, file: !334, line: 1921, baseType: !651, size: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1772, file: !334, line: 1922, baseType: !644, size: 32, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !628, file: !618, line: 748, baseType: !1778, size: 320)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !618, line: 487, size: 320, elements: !1779)
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1778, file: !618, line: 490, baseType: !631, size: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1778, file: !618, line: 494, baseType: !563, size: 32, offset: 256)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !628, file: !618, line: 749, baseType: !1783, size: 384)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !618, line: 500, size: 384, elements: !1784)
!1784 = !{!1785, !1786, !1787}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1783, file: !618, line: 502, baseType: !631, size: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1783, file: !618, line: 506, baseType: !615, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1783, file: !618, line: 510, baseType: !615, size: 64, offset: 320)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !628, file: !618, line: 750, baseType: !1789, size: 320)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !618, line: 529, size: 320, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1789, file: !618, line: 531, baseType: !631, size: 256)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1789, file: !618, line: 540, baseType: !615, size: 64, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !628, file: !618, line: 751, baseType: !1794, size: 704)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !618, line: 546, size: 704, elements: !1795)
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1801, !1802}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1794, file: !618, line: 549, baseType: !1724, size: 512)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1794, file: !618, line: 553, baseType: !568, size: 64, offset: 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1794, file: !618, line: 557, baseType: !562, size: 8, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1794, file: !618, line: 558, baseType: !562, size: 8, offset: 584)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1794, file: !618, line: 559, baseType: !562, size: 8, offset: 592)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1794, file: !618, line: 560, baseType: !562, size: 8, offset: 600)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1794, file: !618, line: 566, baseType: !1224, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !628, file: !618, line: 752, baseType: !1804, size: 384)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !618, line: 571, size: 384, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1804, file: !618, line: 573, baseType: !1735, size: 320)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1804, file: !618, line: 577, baseType: !651, size: 64, offset: 320)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !628, file: !618, line: 753, baseType: !1809, size: 576)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !618, line: 600, size: 576, elements: !1810)
!1810 = !{!1811, !1812, !1813, !1814, !1823}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1809, file: !618, line: 602, baseType: !1735, size: 320)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1809, file: !618, line: 605, baseType: !651, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1809, file: !618, line: 609, baseType: !1174, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1809, file: !618, line: 612, baseType: !1815, size: 64, offset: 448)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !618, line: 581, size: 320, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1821, !1822}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1816, file: !618, line: 583, baseType: !366, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1816, file: !618, line: 586, baseType: !651, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1816, file: !618, line: 589, baseType: !651, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1816, file: !618, line: 592, baseType: !651, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1816, file: !618, line: 595, baseType: !651, size: 64, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1809, file: !618, line: 616, baseType: !615, size: 64, offset: 512)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !628, file: !618, line: 754, baseType: !1825, size: 512)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !618, line: 622, size: 512, elements: !1826)
!1826 = !{!1827, !1828, !1829, !1830}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1825, file: !618, line: 624, baseType: !1735, size: 320)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1825, file: !618, line: 628, baseType: !651, size: 64, offset: 320)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1825, file: !618, line: 632, baseType: !651, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1825, file: !618, line: 636, baseType: !651, size: 64, offset: 448)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !628, file: !618, line: 755, baseType: !1832, size: 704)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !618, line: 642, size: 704, elements: !1833)
!1833 = !{!1834, !1835, !1836, !1837}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1832, file: !618, line: 644, baseType: !1825, size: 512)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1832, file: !618, line: 648, baseType: !651, size: 64, offset: 512)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1832, file: !618, line: 652, baseType: !651, size: 64, offset: 576)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1832, file: !618, line: 653, baseType: !651, size: 64, offset: 640)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !628, file: !618, line: 756, baseType: !1839, size: 448)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !618, line: 663, size: 448, elements: !1840)
!1840 = !{!1841, !1842, !1843}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1839, file: !618, line: 665, baseType: !1735, size: 320)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1839, file: !618, line: 668, baseType: !651, size: 64, offset: 320)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1839, file: !618, line: 673, baseType: !651, size: 64, offset: 384)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !628, file: !618, line: 757, baseType: !1845, size: 384)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !618, line: 694, size: 384, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1845, file: !618, line: 696, baseType: !1735, size: 320)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1845, file: !618, line: 699, baseType: !651, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !628, file: !618, line: 758, baseType: !1850, size: 384)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !618, line: 681, size: 384, elements: !1851)
!1851 = !{!1852, !1853, !1854}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1850, file: !618, line: 683, baseType: !631, size: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1850, file: !618, line: 686, baseType: !651, size: 64, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1850, file: !618, line: 689, baseType: !651, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !628, file: !618, line: 759, baseType: !1856, size: 384)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !618, line: 707, size: 384, elements: !1857)
!1857 = !{!1858, !1859, !1860}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1856, file: !618, line: 709, baseType: !631, size: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1856, file: !618, line: 712, baseType: !651, size: 64, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1856, file: !618, line: 712, baseType: !651, size: 64, offset: 320)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !628, file: !618, line: 760, baseType: !1862, size: 320)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !618, line: 718, size: 320, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1862, file: !618, line: 720, baseType: !631, size: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1862, file: !618, line: 723, baseType: !651, size: 64, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !623, file: !618, line: 138, baseType: !622, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !623, file: !618, line: 139, baseType: !622, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !617, file: !618, line: 146, baseType: !621, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !617, file: !618, line: 152, baseType: !615, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !612, file: !318, line: 130, baseType: !820, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !607, file: !318, line: 134, baseType: !567, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !607, file: !318, line: 137, baseType: !651, size: 64, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !607, file: !318, line: 138, baseType: !644, size: 32, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !607, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !318, line: 144, baseType: !563, size: 32, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !607, file: !318, line: 145, baseType: !563, size: 32, offset: 416)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !607, file: !318, line: 146, baseType: !1878, size: 64, offset: 448)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !582)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !590, file: !318, line: 220, baseType: !593, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !590, file: !318, line: 223, baseType: !567, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !590, file: !318, line: 226, baseType: !1882, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !318, line: 185, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !590, file: !318, line: 229, baseType: !1885, size: 128, offset: 256)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1886, size: 128, elements: !888)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !590, file: !318, line: 232, baseType: !589, size: 64, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !590, file: !318, line: 233, baseType: !589, size: 64, offset: 448)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !590, file: !318, line: 238, baseType: !1891, size: 64, offset: 512)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !1892)
!1892 = !{!1893, !1899}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1891, file: !318, line: 236, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !1896)
!1896 = !{!1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1895, file: !318, line: 275, baseType: !615, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1895, file: !318, line: 278, baseType: !615, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1891, file: !318, line: 237, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1906, !1907}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1901, file: !318, line: 261, baseType: !820, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1901, file: !318, line: 262, baseType: !820, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1901, file: !318, line: 266, baseType: !820, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1901, file: !318, line: 267, baseType: !820, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1901, file: !318, line: 270, baseType: !563, size: 32, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !590, file: !318, line: 241, baseType: !1878, size: 64, offset: 576)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !590, file: !318, line: 244, baseType: !563, size: 32, offset: 640)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !590, file: !318, line: 247, baseType: !563, size: 32, offset: 672)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !590, file: !318, line: 250, baseType: !563, size: 32, offset: 704)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !590, file: !318, line: 253, baseType: !563, size: 32, offset: 736)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !590, file: !318, line: 256, baseType: !563, size: 32, offset: 768)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!1915 = !{!0, !1916, !1928, !1930}
!1916 = !DIGlobalVariableExpression(var: !1917, expr: !DIExpression())
!1917 = distinct !DIGlobalVariable(name: "bb_seen", scope: !2, file: !3, line: 70, type: !1918, isLocal: false, isDefinition: true)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !1919, line: 45, baseType: !1920)
!1919 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !1919, line: 39, size: 192, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1926}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !1921, file: !1919, line: 41, baseType: !561, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !1921, file: !1919, line: 42, baseType: !7, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1921, file: !1919, line: 43, baseType: !7, size: 32, offset: 96)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !1921, file: !1919, line: 44, baseType: !1927, size: 64, offset: 128)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 64, elements: !748)
!1928 = !DIGlobalVariableExpression(var: !1929, expr: !DIExpression())
!1929 = distinct !DIGlobalVariable(name: "probability_cutoff", scope: !2, file: !3, line: 65, type: !563, isLocal: true, isDefinition: true)
!1930 = !DIGlobalVariableExpression(var: !1931, expr: !DIExpression())
!1931 = distinct !DIGlobalVariable(name: "branch_ratio_cutoff", scope: !2, file: !3, line: 66, type: !563, isLocal: true, isDefinition: true)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !1933)
!1933 = !{!1934}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1932, file: !6, line: 158, baseType: !1935, size: 640)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1936)
!1936 = !{!1937, !1938, !1939, !1943, !1947, !1949, !1950, !1951, !1953, !1954, !1955, !1956, !1957}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1935, file: !6, line: 117, baseType: !5, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1935, file: !6, line: 121, baseType: !568, size: 64, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1935, file: !6, line: 125, baseType: !1940, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!562}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1935, file: !6, line: 130, baseType: !1944, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!7}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1935, file: !6, line: 133, baseType: !1948, size: 64, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1935, file: !6, line: 136, baseType: !1948, size: 64, offset: 320)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1935, file: !6, line: 139, baseType: !563, size: 32, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1935, file: !6, line: 143, baseType: !1952, size: 32, offset: 416)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1935, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1935, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1935, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1935, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1935, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1958 = !{i32 2, !"Dwarf Version", i32 4}
!1959 = !{i32 2, !"Debug Info Version", i32 3}
!1960 = !{i32 1, !"wchar_size", i32 4}
!1961 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1962 = distinct !DISubprogram(name: "vprintf", scope: !1963, file: !1963, line: 39, type: !1964, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!1963 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!563, !1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !568)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1969)
!1969 = !{!1970, !1971, !1972, !1973}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1968, file: !3, baseType: !7, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1968, file: !3, baseType: !7, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1968, file: !3, baseType: !567, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1968, file: !3, baseType: !567, size: 64, offset: 128)
!1974 = !{!1975, !1976}
!1975 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1962, file: !1963, line: 39, type: !1966)
!1976 = !DILocalVariable(name: "__arg", arg: 2, scope: !1962, file: !1963, line: 39, type: !1967)
!1977 = !DILocation(line: 0, scope: !1962)
!1978 = !DILocation(line: 41, column: 20, scope: !1962)
!1979 = !DILocation(line: 41, column: 10, scope: !1962)
!1980 = !DILocation(line: 41, column: 3, scope: !1962)
!1981 = distinct !DISubprogram(name: "getchar", scope: !1963, file: !1963, line: 47, type: !1982, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1984)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!563}
!1984 = !{}
!1985 = !DILocation(line: 49, column: 16, scope: !1981)
!1986 = !DILocation(line: 49, column: 10, scope: !1981)
!1987 = !DILocation(line: 49, column: 3, scope: !1981)
!1988 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1963, file: !1963, line: 56, type: !1989, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2042)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!563, !1991}
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1993, line: 7, baseType: !1994)
!1993 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1995, line: 49, size: 1728, elements: !1996)
!1995 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1996 = !{!1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2012, !2014, !2015, !2016, !2019, !2021, !2022, !2023, !2026, !2028, !2031, !2034, !2035, !2036, !2037, !2038}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1994, file: !1995, line: 51, baseType: !563, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1994, file: !1995, line: 54, baseType: !565, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1994, file: !1995, line: 55, baseType: !565, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1994, file: !1995, line: 56, baseType: !565, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1994, file: !1995, line: 57, baseType: !565, size: 64, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1994, file: !1995, line: 58, baseType: !565, size: 64, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1994, file: !1995, line: 59, baseType: !565, size: 64, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1994, file: !1995, line: 60, baseType: !565, size: 64, offset: 448)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1994, file: !1995, line: 61, baseType: !565, size: 64, offset: 512)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1994, file: !1995, line: 64, baseType: !565, size: 64, offset: 576)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1994, file: !1995, line: 65, baseType: !565, size: 64, offset: 640)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1994, file: !1995, line: 66, baseType: !565, size: 64, offset: 704)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1994, file: !1995, line: 68, baseType: !2010, size: 64, offset: 768)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1995, line: 36, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1994, file: !1995, line: 70, baseType: !2013, size: 64, offset: 832)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1994, file: !1995, line: 72, baseType: !563, size: 32, offset: 896)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1994, file: !1995, line: 73, baseType: !563, size: 32, offset: 928)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1994, file: !1995, line: 74, baseType: !2017, size: 64, offset: 960)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2018, line: 152, baseType: !582)
!2018 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1994, file: !1995, line: 77, baseType: !2020, size: 16, offset: 1024)
!2020 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1994, file: !1995, line: 78, baseType: !1540, size: 8, offset: 1040)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1994, file: !1995, line: 79, baseType: !747, size: 8, offset: 1048)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1994, file: !1995, line: 81, baseType: !2024, size: 64, offset: 1088)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1995, line: 43, baseType: null)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1994, file: !1995, line: 89, baseType: !2027, size: 64, offset: 1152)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2018, line: 153, baseType: !582)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1994, file: !1995, line: 91, baseType: !2029, size: 64, offset: 1216)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1995, line: 37, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1994, file: !1995, line: 92, baseType: !2032, size: 64, offset: 1280)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1995, line: 38, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1994, file: !1995, line: 93, baseType: !2013, size: 64, offset: 1344)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1994, file: !1995, line: 94, baseType: !567, size: 64, offset: 1408)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1994, file: !1995, line: 95, baseType: !1174, size: 64, offset: 1472)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1994, file: !1995, line: 96, baseType: !563, size: 32, offset: 1536)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1994, file: !1995, line: 98, baseType: !2039, size: 160, offset: 1568)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 160, elements: !2040)
!2040 = !{!2041}
!2041 = !DISubrange(count: 20)
!2042 = !{!2043}
!2043 = !DILocalVariable(name: "__fp", arg: 1, scope: !1988, file: !1963, line: 56, type: !1991)
!2044 = !DILocation(line: 0, scope: !1988)
!2045 = !DILocation(line: 58, column: 10, scope: !1988)
!2046 = !DILocation(line: 58, column: 3, scope: !1988)
!2047 = distinct !DISubprogram(name: "getc_unlocked", scope: !1963, file: !1963, line: 66, type: !1989, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2048)
!2048 = !{!2049}
!2049 = !DILocalVariable(name: "__fp", arg: 1, scope: !2047, file: !1963, line: 66, type: !1991)
!2050 = !DILocation(line: 0, scope: !2047)
!2051 = !DILocation(line: 68, column: 10, scope: !2047)
!2052 = !DILocation(line: 68, column: 3, scope: !2047)
!2053 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1963, file: !1963, line: 73, type: !1982, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1984)
!2054 = !DILocation(line: 75, column: 10, scope: !2053)
!2055 = !DILocation(line: 75, column: 3, scope: !2053)
!2056 = distinct !DISubprogram(name: "putchar", scope: !1963, file: !1963, line: 82, type: !2057, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!563, !563}
!2059 = !{!2060}
!2060 = !DILocalVariable(name: "__c", arg: 1, scope: !2056, file: !1963, line: 82, type: !563)
!2061 = !DILocation(line: 0, scope: !2056)
!2062 = !DILocation(line: 84, column: 21, scope: !2056)
!2063 = !DILocation(line: 84, column: 10, scope: !2056)
!2064 = !DILocation(line: 84, column: 3, scope: !2056)
!2065 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1963, file: !1963, line: 91, type: !2066, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!563, !563, !1991}
!2068 = !{!2069, !2070}
!2069 = !DILocalVariable(name: "__c", arg: 1, scope: !2065, file: !1963, line: 91, type: !563)
!2070 = !DILocalVariable(name: "__stream", arg: 2, scope: !2065, file: !1963, line: 91, type: !1991)
!2071 = !DILocation(line: 0, scope: !2065)
!2072 = !DILocation(line: 93, column: 10, scope: !2065)
!2073 = !DILocation(line: 93, column: 3, scope: !2065)
!2074 = distinct !DISubprogram(name: "putc_unlocked", scope: !1963, file: !1963, line: 101, type: !2066, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2075 = !{!2076, !2077}
!2076 = !DILocalVariable(name: "__c", arg: 1, scope: !2074, file: !1963, line: 101, type: !563)
!2077 = !DILocalVariable(name: "__stream", arg: 2, scope: !2074, file: !1963, line: 101, type: !1991)
!2078 = !DILocation(line: 0, scope: !2074)
!2079 = !DILocation(line: 103, column: 10, scope: !2074)
!2080 = !DILocation(line: 103, column: 3, scope: !2074)
!2081 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1963, file: !1963, line: 108, type: !2057, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2082)
!2082 = !{!2083}
!2083 = !DILocalVariable(name: "__c", arg: 1, scope: !2081, file: !1963, line: 108, type: !563)
!2084 = !DILocation(line: 0, scope: !2081)
!2085 = !DILocation(line: 110, column: 10, scope: !2081)
!2086 = !DILocation(line: 110, column: 3, scope: !2081)
!2087 = distinct !DISubprogram(name: "getline", scope: !1963, file: !1963, line: 118, type: !2088, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2092)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!2090, !564, !2091, !1991}
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2018, line: 193, baseType: !582)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!2092 = !{!2093, !2094, !2095}
!2093 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2087, file: !1963, line: 118, type: !564)
!2094 = !DILocalVariable(name: "__n", arg: 2, scope: !2087, file: !1963, line: 118, type: !2091)
!2095 = !DILocalVariable(name: "__stream", arg: 3, scope: !2087, file: !1963, line: 118, type: !1991)
!2096 = !DILocation(line: 0, scope: !2087)
!2097 = !DILocation(line: 120, column: 10, scope: !2087)
!2098 = !DILocation(line: 120, column: 3, scope: !2087)
!2099 = distinct !DISubprogram(name: "feof_unlocked", scope: !1963, file: !1963, line: 128, type: !1989, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2100)
!2100 = !{!2101}
!2101 = !DILocalVariable(name: "__stream", arg: 1, scope: !2099, file: !1963, line: 128, type: !1991)
!2102 = !DILocation(line: 0, scope: !2099)
!2103 = !DILocation(line: 130, column: 10, scope: !2099)
!2104 = !DILocation(line: 130, column: 3, scope: !2099)
!2105 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1963, file: !1963, line: 135, type: !1989, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2106)
!2106 = !{!2107}
!2107 = !DILocalVariable(name: "__stream", arg: 1, scope: !2105, file: !1963, line: 135, type: !1991)
!2108 = !DILocation(line: 0, scope: !2105)
!2109 = !DILocation(line: 137, column: 10, scope: !2105)
!2110 = !DILocation(line: 137, column: 3, scope: !2105)
!2111 = distinct !DISubprogram(name: "tolower", scope: !2112, file: !2112, line: 207, type: !2057, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2113)
!2112 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2113 = !{!2114}
!2114 = !DILocalVariable(name: "__c", arg: 1, scope: !2111, file: !2112, line: 207, type: !563)
!2115 = !DILocation(line: 0, scope: !2111)
!2116 = !DILocation(line: 209, column: 22, scope: !2111)
!2117 = !DILocation(line: 209, column: 39, scope: !2111)
!2118 = !DILocation(line: 209, column: 38, scope: !2111)
!2119 = !DILocation(line: 209, column: 37, scope: !2111)
!2120 = !DILocation(line: 209, column: 10, scope: !2111)
!2121 = !DILocation(line: 209, column: 3, scope: !2111)
!2122 = distinct !DISubprogram(name: "toupper", scope: !2112, file: !2112, line: 213, type: !2057, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2123)
!2123 = !{!2124}
!2124 = !DILocalVariable(name: "__c", arg: 1, scope: !2122, file: !2112, line: 213, type: !563)
!2125 = !DILocation(line: 0, scope: !2122)
!2126 = !DILocation(line: 215, column: 22, scope: !2122)
!2127 = !DILocation(line: 215, column: 39, scope: !2122)
!2128 = !DILocation(line: 215, column: 38, scope: !2122)
!2129 = !DILocation(line: 215, column: 37, scope: !2122)
!2130 = !DILocation(line: 215, column: 10, scope: !2122)
!2131 = !DILocation(line: 215, column: 3, scope: !2122)
!2132 = distinct !DISubprogram(name: "atoi", scope: !2133, file: !2133, line: 361, type: !2134, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2136)
!2133 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!563, !568}
!2136 = !{!2137}
!2137 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2132, file: !2133, line: 361, type: !568)
!2138 = !DILocation(line: 0, scope: !2132)
!2139 = !DILocation(line: 363, column: 16, scope: !2132)
!2140 = !DILocation(line: 363, column: 10, scope: !2132)
!2141 = !DILocation(line: 363, column: 3, scope: !2132)
!2142 = distinct !DISubprogram(name: "atol", scope: !2133, file: !2133, line: 366, type: !2143, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!582, !568}
!2145 = !{!2146}
!2146 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2142, file: !2133, line: 366, type: !568)
!2147 = !DILocation(line: 0, scope: !2142)
!2148 = !DILocation(line: 368, column: 10, scope: !2142)
!2149 = !DILocation(line: 368, column: 3, scope: !2142)
!2150 = distinct !DISubprogram(name: "atoll", scope: !2133, file: !2133, line: 373, type: !2151, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2154)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!2153, !568}
!2153 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2154 = !{!2155}
!2155 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2150, file: !2133, line: 373, type: !568)
!2156 = !DILocation(line: 0, scope: !2150)
!2157 = !DILocation(line: 375, column: 10, scope: !2150)
!2158 = !DILocation(line: 375, column: 3, scope: !2150)
!2159 = distinct !DISubprogram(name: "bsearch", scope: !2160, file: !2160, line: 20, type: !2161, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2160 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!567, !992, !992, !1174, !1174, !2163}
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2133, line: 808, baseType: !1163)
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174}
!2165 = !DILocalVariable(name: "__key", arg: 1, scope: !2159, file: !2160, line: 20, type: !992)
!2166 = !DILocalVariable(name: "__base", arg: 2, scope: !2159, file: !2160, line: 20, type: !992)
!2167 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2159, file: !2160, line: 20, type: !1174)
!2168 = !DILocalVariable(name: "__size", arg: 4, scope: !2159, file: !2160, line: 20, type: !1174)
!2169 = !DILocalVariable(name: "__compar", arg: 5, scope: !2159, file: !2160, line: 21, type: !2163)
!2170 = !DILocalVariable(name: "__l", scope: !2159, file: !2160, line: 23, type: !1174)
!2171 = !DILocalVariable(name: "__u", scope: !2159, file: !2160, line: 23, type: !1174)
!2172 = !DILocalVariable(name: "__idx", scope: !2159, file: !2160, line: 23, type: !1174)
!2173 = !DILocalVariable(name: "__p", scope: !2159, file: !2160, line: 24, type: !992)
!2174 = !DILocalVariable(name: "__comparison", scope: !2159, file: !2160, line: 25, type: !563)
!2175 = !DILocation(line: 0, scope: !2159)
!2176 = !DILocation(line: 29, column: 3, scope: !2159)
!2177 = !DILocation(line: 27, column: 7, scope: !2159)
!2178 = !DILocation(line: 29, column: 14, scope: !2159)
!2179 = !DILocation(line: 31, column: 20, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2159, file: !2160, line: 30, column: 5)
!2181 = !DILocation(line: 31, column: 27, scope: !2180)
!2182 = !DILocation(line: 32, column: 56, scope: !2180)
!2183 = !DILocation(line: 32, column: 47, scope: !2180)
!2184 = !DILocation(line: 33, column: 22, scope: !2180)
!2185 = !DILocation(line: 34, column: 24, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2180, file: !2160, line: 34, column: 11)
!2187 = !DILocation(line: 34, column: 11, scope: !2180)
!2188 = !DILocation(line: 36, column: 29, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2186, file: !2160, line: 36, column: 16)
!2190 = !DILocation(line: 36, column: 16, scope: !2186)
!2191 = !DILocation(line: 37, column: 14, scope: !2189)
!2192 = distinct !{!2192, !2176, !2193}
!2193 = !DILocation(line: 40, column: 5, scope: !2159)
!2194 = !DILocation(line: 43, column: 1, scope: !2159)
!2195 = distinct !DISubprogram(name: "atof", scope: !2196, file: !2196, line: 25, type: !2197, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2200)
!2196 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!2199, !568}
!2199 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2200 = !{!2201}
!2201 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2195, file: !2196, line: 25, type: !568)
!2202 = !DILocation(line: 0, scope: !2195)
!2203 = !DILocation(line: 27, column: 10, scope: !2195)
!2204 = !DILocation(line: 27, column: 3, scope: !2195)
!2205 = distinct !DISubprogram(name: "strtoimax", scope: !2206, file: !2206, line: 324, type: !2207, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2213)
!2206 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!2209, !1966, !2212, !563}
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2210, line: 101, baseType: !2211)
!2210 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2018, line: 72, baseType: !582)
!2212 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !564)
!2213 = !{!2214, !2215, !2216}
!2214 = !DILocalVariable(name: "nptr", arg: 1, scope: !2205, file: !2206, line: 324, type: !1966)
!2215 = !DILocalVariable(name: "endptr", arg: 2, scope: !2205, file: !2206, line: 324, type: !2212)
!2216 = !DILocalVariable(name: "base", arg: 3, scope: !2205, file: !2206, line: 324, type: !563)
!2217 = !DILocation(line: 0, scope: !2205)
!2218 = !DILocation(line: 327, column: 10, scope: !2205)
!2219 = !DILocation(line: 327, column: 3, scope: !2205)
!2220 = distinct !DISubprogram(name: "strtoumax", scope: !2206, file: !2206, line: 336, type: !2221, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2225)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!2223, !1966, !2212, !563}
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2210, line: 102, baseType: !2224)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2018, line: 73, baseType: !704)
!2225 = !{!2226, !2227, !2228}
!2226 = !DILocalVariable(name: "nptr", arg: 1, scope: !2220, file: !2206, line: 336, type: !1966)
!2227 = !DILocalVariable(name: "endptr", arg: 2, scope: !2220, file: !2206, line: 336, type: !2212)
!2228 = !DILocalVariable(name: "base", arg: 3, scope: !2220, file: !2206, line: 336, type: !563)
!2229 = !DILocation(line: 0, scope: !2220)
!2230 = !DILocation(line: 339, column: 10, scope: !2220)
!2231 = !DILocation(line: 339, column: 3, scope: !2220)
!2232 = distinct !DISubprogram(name: "wcstoimax", scope: !2206, file: !2206, line: 348, type: !2233, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!2209, !2235, !2239, !563}
!2235 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2236)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2238)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2206, line: 34, baseType: !563)
!2239 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2240)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2242 = !{!2243, !2244, !2245}
!2243 = !DILocalVariable(name: "nptr", arg: 1, scope: !2232, file: !2206, line: 348, type: !2235)
!2244 = !DILocalVariable(name: "endptr", arg: 2, scope: !2232, file: !2206, line: 348, type: !2239)
!2245 = !DILocalVariable(name: "base", arg: 3, scope: !2232, file: !2206, line: 348, type: !563)
!2246 = !DILocation(line: 0, scope: !2232)
!2247 = !DILocation(line: 351, column: 10, scope: !2232)
!2248 = !DILocation(line: 351, column: 3, scope: !2232)
!2249 = distinct !DISubprogram(name: "wcstoumax", scope: !2206, file: !2206, line: 362, type: !2250, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!2223, !2235, !2239, !563}
!2252 = !{!2253, !2254, !2255}
!2253 = !DILocalVariable(name: "nptr", arg: 1, scope: !2249, file: !2206, line: 362, type: !2235)
!2254 = !DILocalVariable(name: "endptr", arg: 2, scope: !2249, file: !2206, line: 362, type: !2239)
!2255 = !DILocalVariable(name: "base", arg: 3, scope: !2249, file: !2206, line: 362, type: !563)
!2256 = !DILocation(line: 0, scope: !2249)
!2257 = !DILocation(line: 365, column: 10, scope: !2249)
!2258 = !DILocation(line: 365, column: 3, scope: !2249)
!2259 = distinct !DISubprogram(name: "stat", scope: !2260, file: !2260, line: 453, type: !2261, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2298)
!2260 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!563, !568, !2263}
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2265, line: 46, size: 1152, elements: !2266)
!2265 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2266 = !{!2267, !2269, !2271, !2273, !2275, !2277, !2279, !2280, !2281, !2282, !2284, !2286, !2294, !2295, !2296}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2264, file: !2265, line: 48, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2018, line: 145, baseType: !704)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2264, file: !2265, line: 53, baseType: !2270, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2018, line: 148, baseType: !704)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2264, file: !2265, line: 61, baseType: !2272, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2018, line: 151, baseType: !704)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2264, file: !2265, line: 62, baseType: !2274, size: 32, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2018, line: 150, baseType: !7)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2264, file: !2265, line: 64, baseType: !2276, size: 32, offset: 224)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2018, line: 146, baseType: !7)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2264, file: !2265, line: 65, baseType: !2278, size: 32, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2018, line: 147, baseType: !7)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2264, file: !2265, line: 67, baseType: !563, size: 32, offset: 288)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2264, file: !2265, line: 69, baseType: !2268, size: 64, offset: 320)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2264, file: !2265, line: 74, baseType: !2017, size: 64, offset: 384)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2264, file: !2265, line: 78, baseType: !2283, size: 64, offset: 448)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2018, line: 174, baseType: !582)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2264, file: !2265, line: 80, baseType: !2285, size: 64, offset: 512)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2018, line: 179, baseType: !582)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2264, file: !2265, line: 91, baseType: !2287, size: 128, offset: 576)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2288, line: 10, size: 128, elements: !2289)
!2288 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2289 = !{!2290, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2287, file: !2288, line: 12, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2018, line: 160, baseType: !582)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2287, file: !2288, line: 16, baseType: !2293, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2018, line: 196, baseType: !582)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2264, file: !2265, line: 92, baseType: !2287, size: 128, offset: 704)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2264, file: !2265, line: 93, baseType: !2287, size: 128, offset: 832)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2264, file: !2265, line: 106, baseType: !2297, size: 192, offset: 960)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2293, size: 192, elements: !723)
!2298 = !{!2299, !2300}
!2299 = !DILocalVariable(name: "__path", arg: 1, scope: !2259, file: !2260, line: 453, type: !568)
!2300 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2259, file: !2260, line: 453, type: !2263)
!2301 = !DILocation(line: 0, scope: !2259)
!2302 = !DILocation(line: 455, column: 10, scope: !2259)
!2303 = !DILocation(line: 455, column: 3, scope: !2259)
!2304 = distinct !DISubprogram(name: "lstat", scope: !2260, file: !2260, line: 460, type: !2261, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2305)
!2305 = !{!2306, !2307}
!2306 = !DILocalVariable(name: "__path", arg: 1, scope: !2304, file: !2260, line: 460, type: !568)
!2307 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2304, file: !2260, line: 460, type: !2263)
!2308 = !DILocation(line: 0, scope: !2304)
!2309 = !DILocation(line: 462, column: 10, scope: !2304)
!2310 = !DILocation(line: 462, column: 3, scope: !2304)
!2311 = distinct !DISubprogram(name: "fstat", scope: !2260, file: !2260, line: 467, type: !2312, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!563, !563, !2263}
!2314 = !{!2315, !2316}
!2315 = !DILocalVariable(name: "__fd", arg: 1, scope: !2311, file: !2260, line: 467, type: !563)
!2316 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2311, file: !2260, line: 467, type: !2263)
!2317 = !DILocation(line: 0, scope: !2311)
!2318 = !DILocation(line: 469, column: 10, scope: !2311)
!2319 = !DILocation(line: 469, column: 3, scope: !2311)
!2320 = distinct !DISubprogram(name: "fstatat", scope: !2260, file: !2260, line: 474, type: !2321, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!563, !563, !568, !2263, !563}
!2323 = !{!2324, !2325, !2326, !2327}
!2324 = !DILocalVariable(name: "__fd", arg: 1, scope: !2320, file: !2260, line: 474, type: !563)
!2325 = !DILocalVariable(name: "__filename", arg: 2, scope: !2320, file: !2260, line: 474, type: !568)
!2326 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2320, file: !2260, line: 474, type: !2263)
!2327 = !DILocalVariable(name: "__flag", arg: 4, scope: !2320, file: !2260, line: 474, type: !563)
!2328 = !DILocation(line: 0, scope: !2320)
!2329 = !DILocation(line: 477, column: 10, scope: !2320)
!2330 = !DILocation(line: 477, column: 3, scope: !2320)
!2331 = distinct !DISubprogram(name: "mknod", scope: !2260, file: !2260, line: 483, type: !2332, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2334)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!563, !568, !2274, !2268}
!2334 = !{!2335, !2336, !2337}
!2335 = !DILocalVariable(name: "__path", arg: 1, scope: !2331, file: !2260, line: 483, type: !568)
!2336 = !DILocalVariable(name: "__mode", arg: 2, scope: !2331, file: !2260, line: 483, type: !2274)
!2337 = !DILocalVariable(name: "__dev", arg: 3, scope: !2331, file: !2260, line: 483, type: !2268)
!2338 = !DILocation(line: 0, scope: !2331)
!2339 = !DILocation(line: 485, column: 10, scope: !2331)
!2340 = !DILocation(line: 485, column: 3, scope: !2331)
!2341 = distinct !DISubprogram(name: "mknodat", scope: !2260, file: !2260, line: 491, type: !2342, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2344)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!563, !563, !568, !2274, !2268}
!2344 = !{!2345, !2346, !2347, !2348}
!2345 = !DILocalVariable(name: "__fd", arg: 1, scope: !2341, file: !2260, line: 491, type: !563)
!2346 = !DILocalVariable(name: "__path", arg: 2, scope: !2341, file: !2260, line: 491, type: !568)
!2347 = !DILocalVariable(name: "__mode", arg: 3, scope: !2341, file: !2260, line: 491, type: !2274)
!2348 = !DILocalVariable(name: "__dev", arg: 4, scope: !2341, file: !2260, line: 491, type: !2268)
!2349 = !DILocation(line: 0, scope: !2341)
!2350 = !DILocation(line: 494, column: 10, scope: !2341)
!2351 = !DILocation(line: 494, column: 3, scope: !2341)
!2352 = distinct !DISubprogram(name: "stat64", scope: !2260, file: !2260, line: 502, type: !2353, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2375)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!563, !568, !2355}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2265, line: 119, size: 1152, elements: !2357)
!2357 = !{!2358, !2359, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2371, !2372, !2373, !2374}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2356, file: !2265, line: 121, baseType: !2268, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2356, file: !2265, line: 123, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2018, line: 149, baseType: !704)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2356, file: !2265, line: 124, baseType: !2272, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2356, file: !2265, line: 125, baseType: !2274, size: 32, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2356, file: !2265, line: 132, baseType: !2276, size: 32, offset: 224)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2356, file: !2265, line: 133, baseType: !2278, size: 32, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2356, file: !2265, line: 135, baseType: !563, size: 32, offset: 288)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2356, file: !2265, line: 136, baseType: !2268, size: 64, offset: 320)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2356, file: !2265, line: 137, baseType: !2017, size: 64, offset: 384)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2356, file: !2265, line: 143, baseType: !2283, size: 64, offset: 448)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2356, file: !2265, line: 144, baseType: !2370, size: 64, offset: 512)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2018, line: 180, baseType: !582)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2356, file: !2265, line: 152, baseType: !2287, size: 128, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2356, file: !2265, line: 153, baseType: !2287, size: 128, offset: 704)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2356, file: !2265, line: 154, baseType: !2287, size: 128, offset: 832)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2356, file: !2265, line: 164, baseType: !2297, size: 192, offset: 960)
!2375 = !{!2376, !2377}
!2376 = !DILocalVariable(name: "__path", arg: 1, scope: !2352, file: !2260, line: 502, type: !568)
!2377 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2352, file: !2260, line: 502, type: !2355)
!2378 = !DILocation(line: 0, scope: !2352)
!2379 = !DILocation(line: 504, column: 10, scope: !2352)
!2380 = !DILocation(line: 504, column: 3, scope: !2352)
!2381 = distinct !DISubprogram(name: "lstat64", scope: !2260, file: !2260, line: 509, type: !2353, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2382)
!2382 = !{!2383, !2384}
!2383 = !DILocalVariable(name: "__path", arg: 1, scope: !2381, file: !2260, line: 509, type: !568)
!2384 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2381, file: !2260, line: 509, type: !2355)
!2385 = !DILocation(line: 0, scope: !2381)
!2386 = !DILocation(line: 511, column: 10, scope: !2381)
!2387 = !DILocation(line: 511, column: 3, scope: !2381)
!2388 = distinct !DISubprogram(name: "fstat64", scope: !2260, file: !2260, line: 516, type: !2389, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!563, !563, !2355}
!2391 = !{!2392, !2393}
!2392 = !DILocalVariable(name: "__fd", arg: 1, scope: !2388, file: !2260, line: 516, type: !563)
!2393 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2388, file: !2260, line: 516, type: !2355)
!2394 = !DILocation(line: 0, scope: !2388)
!2395 = !DILocation(line: 518, column: 10, scope: !2388)
!2396 = !DILocation(line: 518, column: 3, scope: !2388)
!2397 = distinct !DISubprogram(name: "fstatat64", scope: !2260, file: !2260, line: 523, type: !2398, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!563, !563, !568, !2355, !563}
!2400 = !{!2401, !2402, !2403, !2404}
!2401 = !DILocalVariable(name: "__fd", arg: 1, scope: !2397, file: !2260, line: 523, type: !563)
!2402 = !DILocalVariable(name: "__filename", arg: 2, scope: !2397, file: !2260, line: 523, type: !568)
!2403 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2397, file: !2260, line: 523, type: !2355)
!2404 = !DILocalVariable(name: "__flag", arg: 4, scope: !2397, file: !2260, line: 523, type: !563)
!2405 = !DILocation(line: 0, scope: !2397)
!2406 = !DILocation(line: 526, column: 10, scope: !2397)
!2407 = !DILocation(line: 526, column: 3, scope: !2397)
!2408 = distinct !DISubprogram(name: "gate_tracer", scope: !3, file: !3, line: 376, type: !1941, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1984)
!2409 = !DILocation(line: 378, column: 11, scope: !2408)
!2410 = !DILocation(line: 378, column: 20, scope: !2408)
!2411 = !DILocation(line: 378, column: 27, scope: !2408)
!2412 = !DILocation(line: 378, column: 24, scope: !2408)
!2413 = !DILocation(line: 378, column: 42, scope: !2408)
!2414 = !DILocation(line: 378, column: 39, scope: !2408)
!2415 = !DILocation(line: 378, column: 3, scope: !2408)
!2416 = distinct !DISubprogram(name: "tracer", scope: !3, file: !3, line: 352, type: !1945, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1984)
!2417 = !DILocation(line: 354, column: 3, scope: !2416)
!2418 = !DILocation(line: 356, column: 7, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 356, column: 7)
!2420 = !DILocation(line: 356, column: 22, scope: !2419)
!2421 = !DILocation(line: 356, column: 7, scope: !2416)
!2422 = !DILocation(line: 359, column: 3, scope: !2416)
!2423 = !DILocation(line: 360, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 360, column: 7)
!2425 = !DILocation(line: 360, column: 7, scope: !2416)
!2426 = !DILocation(line: 361, column: 32, scope: !2424)
!2427 = !DILocation(line: 361, column: 5, scope: !2424)
!2428 = !DILocation(line: 364, column: 3, scope: !2416)
!2429 = !DILocation(line: 368, column: 3, scope: !2416)
!2430 = !DILocation(line: 369, column: 7, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 369, column: 7)
!2432 = !DILocation(line: 369, column: 7, scope: !2416)
!2433 = !DILocation(line: 370, column: 32, scope: !2431)
!2434 = !DILocation(line: 370, column: 5, scope: !2431)
!2435 = !DILocation(line: 373, column: 1, scope: !2416)
!2436 = distinct !DISubprogram(name: "tail_duplicate", scope: !3, file: !3, line: 219, type: !2437, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{null}
!2439 = !{!2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2455, !2456, !2457, !2458, !2462, !2464, !2465, !2466, !2470, !2473}
!2440 = !DILocalVariable(name: "blocks", scope: !2436, file: !3, line: 221, type: !570)
!2441 = !DILocalVariable(name: "trace", scope: !2436, file: !3, line: 222, type: !586)
!2442 = !DILocalVariable(name: "counts", scope: !2436, file: !3, line: 223, type: !1914)
!2443 = !DILocalVariable(name: "ninsns", scope: !2436, file: !3, line: 224, type: !563)
!2444 = !DILocalVariable(name: "nduplicated", scope: !2436, file: !3, line: 224, type: !563)
!2445 = !DILocalVariable(name: "weighted_insns", scope: !2436, file: !3, line: 225, type: !1878)
!2446 = !DILocalVariable(name: "traced_insns", scope: !2436, file: !3, line: 225, type: !1878)
!2447 = !DILocalVariable(name: "heap", scope: !2436, file: !3, line: 226, type: !2448)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibheap_t", file: !572, line: 57, baseType: !2449)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fibheap", file: !572, line: 52, size: 192, elements: !2451)
!2451 = !{!2452, !2453, !2454}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2450, file: !572, line: 54, baseType: !1174, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2450, file: !572, line: 55, baseType: !573, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2450, file: !572, line: 56, baseType: !573, size: 64, offset: 128)
!2455 = !DILocalVariable(name: "cover_insns", scope: !2436, file: !3, line: 227, type: !1878)
!2456 = !DILocalVariable(name: "max_dup_insns", scope: !2436, file: !3, line: 228, type: !563)
!2457 = !DILocalVariable(name: "bb", scope: !2436, file: !3, line: 229, type: !587)
!2458 = !DILocalVariable(name: "n", scope: !2459, file: !3, line: 248, type: !563)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 247, column: 5)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 246, column: 3)
!2461 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 246, column: 3)
!2462 = !DILocalVariable(name: "bb", scope: !2463, file: !3, line: 268, type: !587)
!2463 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 267, column: 5)
!2464 = !DILocalVariable(name: "n", scope: !2463, file: !3, line: 269, type: !563)
!2465 = !DILocalVariable(name: "pos", scope: !2463, file: !3, line: 269, type: !563)
!2466 = !DILocalVariable(name: "bb2", scope: !2467, file: !3, line: 292, type: !587)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 291, column: 2)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 290, column: 7)
!2469 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 290, column: 7)
!2470 = !DILocalVariable(name: "e", scope: !2471, file: !3, line: 303, type: !605)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 302, column: 6)
!2472 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 300, column: 8)
!2473 = !DILocalVariable(name: "copy", scope: !2471, file: !3, line: 304, type: !587)
!2474 = !DILocation(line: 221, column: 23, scope: !2436)
!2475 = !DILocation(line: 0, scope: !2436)
!2476 = !DILocation(line: 222, column: 24, scope: !2436)
!2477 = !DILocation(line: 223, column: 17, scope: !2436)
!2478 = !DILocation(line: 226, column: 20, scope: !2436)
!2479 = !DILocation(line: 233, column: 28, scope: !2436)
!2480 = !DILocation(line: 233, column: 45, scope: !2436)
!2481 = !DILocation(line: 233, column: 13, scope: !2436)
!2482 = !DILocation(line: 233, column: 11, scope: !2436)
!2483 = !DILocation(line: 234, column: 3, scope: !2436)
!2484 = !DILocation(line: 235, column: 3, scope: !2436)
!2485 = !DILocation(line: 237, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 237, column: 7)
!2487 = !DILocation(line: 237, column: 23, scope: !2486)
!2488 = !DILocation(line: 237, column: 20, scope: !2486)
!2489 = !DILocation(line: 0, scope: !2486)
!2490 = !DILocation(line: 238, column: 26, scope: !2486)
!2491 = !DILocation(line: 238, column: 5, scope: !2486)
!2492 = !DILocation(line: 240, column: 26, scope: !2486)
!2493 = !DILocation(line: 241, column: 47, scope: !2436)
!2494 = !DILocation(line: 241, column: 22, scope: !2436)
!2495 = !DILocation(line: 244, column: 31, scope: !2436)
!2496 = !DILocation(line: 244, column: 29, scope: !2436)
!2497 = !DILocation(line: 243, column: 23, scope: !2436)
!2498 = !DILocation(line: 246, column: 3, scope: !2461)
!2499 = !DILocation(line: 246, column: 3, scope: !2460)
!2500 = !DILocation(line: 0, scope: !2461)
!2501 = !DILocation(line: 248, column: 15, scope: !2459)
!2502 = !DILocation(line: 0, scope: !2459)
!2503 = !DILocation(line: 249, column: 12, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 249, column: 11)
!2505 = !DILocation(line: 249, column: 11, scope: !2459)
!2506 = !DILocation(line: 250, column: 49, scope: !2504)
!2507 = !DILocation(line: 250, column: 44, scope: !2504)
!2508 = !DILocation(line: 251, column: 10, scope: !2504)
!2509 = !DILocation(line: 250, column: 22, scope: !2504)
!2510 = !DILocation(line: 250, column: 13, scope: !2504)
!2511 = !DILocation(line: 250, column: 2, scope: !2504)
!2512 = !DILocation(line: 250, column: 20, scope: !2504)
!2513 = !DILocation(line: 253, column: 19, scope: !2459)
!2514 = !DILocation(line: 253, column: 7, scope: !2459)
!2515 = !DILocation(line: 253, column: 26, scope: !2459)
!2516 = !DILocation(line: 254, column: 14, scope: !2459)
!2517 = !DILocation(line: 255, column: 33, scope: !2459)
!2518 = !DILocation(line: 255, column: 27, scope: !2459)
!2519 = !DILocation(line: 255, column: 25, scope: !2459)
!2520 = !DILocation(line: 255, column: 22, scope: !2459)
!2521 = !DILocation(line: 0, scope: !2460)
!2522 = distinct !{!2522, !2498, !2523}
!2523 = !DILocation(line: 256, column: 5, scope: !2461)
!2524 = !DILocation(line: 258, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 258, column: 7)
!2526 = !DILocation(line: 258, column: 23, scope: !2525)
!2527 = !DILocation(line: 258, column: 20, scope: !2525)
!2528 = !DILocation(line: 0, scope: !2525)
!2529 = !DILocation(line: 259, column: 19, scope: !2525)
!2530 = !DILocation(line: 259, column: 5, scope: !2525)
!2531 = !DILocation(line: 261, column: 19, scope: !2525)
!2532 = !DILocation(line: 262, column: 33, scope: !2436)
!2533 = !DILocation(line: 262, column: 47, scope: !2436)
!2534 = !DILocation(line: 262, column: 53, scope: !2436)
!2535 = !DILocation(line: 263, column: 29, scope: !2436)
!2536 = !DILocation(line: 263, column: 27, scope: !2436)
!2537 = !DILocation(line: 263, column: 66, scope: !2436)
!2538 = !DILocation(line: 263, column: 72, scope: !2436)
!2539 = !DILocation(line: 0, scope: !2471)
!2540 = !DILocation(line: 0, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 333, column: 11)
!2542 = !DILocation(line: 265, column: 3, scope: !2436)
!2543 = !DILocation(line: 225, column: 33, scope: !2436)
!2544 = !DILocation(line: 224, column: 19, scope: !2436)
!2545 = !DILocation(line: 265, column: 23, scope: !2436)
!2546 = !DILocation(line: 265, column: 52, scope: !2436)
!2547 = !DILocation(line: 265, column: 37, scope: !2436)
!2548 = !DILocation(line: 266, column: 14, scope: !2436)
!2549 = !DILocation(line: 266, column: 13, scope: !2436)
!2550 = !DILocation(line: 268, column: 38, scope: !2463)
!2551 = !DILocation(line: 268, column: 24, scope: !2463)
!2552 = !DILocation(line: 0, scope: !2463)
!2553 = !DILocation(line: 271, column: 12, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 271, column: 11)
!2555 = !DILocation(line: 271, column: 11, scope: !2463)
!2556 = !DILocation(line: 274, column: 18, scope: !2463)
!2557 = !DILocation(line: 274, column: 7, scope: !2463)
!2558 = !DILocation(line: 274, column: 25, scope: !2463)
!2559 = !DILocation(line: 276, column: 11, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 276, column: 11)
!2561 = !DILocation(line: 276, column: 11, scope: !2463)
!2562 = distinct !{!2562, !2542, !2563}
!2563 = !DILocation(line: 336, column: 5, scope: !2436)
!2564 = !DILocation(line: 278, column: 7, scope: !2463)
!2565 = !DILocation(line: 280, column: 11, scope: !2463)
!2566 = !DILocation(line: 282, column: 12, scope: !2463)
!2567 = !DILocation(line: 283, column: 27, scope: !2463)
!2568 = !DILocation(line: 283, column: 51, scope: !2463)
!2569 = !DILocation(line: 283, column: 39, scope: !2463)
!2570 = !DILocation(line: 283, column: 37, scope: !2463)
!2571 = !DILocation(line: 283, column: 23, scope: !2463)
!2572 = !DILocation(line: 283, column: 20, scope: !2463)
!2573 = !DILocation(line: 284, column: 11, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 284, column: 11)
!2575 = !DILocation(line: 284, column: 11, scope: !2463)
!2576 = !DILocation(line: 286, column: 4, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 285, column: 2)
!2578 = !DILocation(line: 287, column: 15, scope: !2577)
!2579 = !DILocation(line: 287, column: 4, scope: !2577)
!2580 = !DILocation(line: 287, column: 22, scope: !2577)
!2581 = !DILocation(line: 288, column: 2, scope: !2577)
!2582 = !DILocation(line: 290, column: 12, scope: !2469)
!2583 = !DILocation(line: 290, column: 25, scope: !2468)
!2584 = !DILocation(line: 290, column: 7, scope: !2469)
!2585 = !DILocation(line: 292, column: 22, scope: !2467)
!2586 = !DILocation(line: 0, scope: !2467)
!2587 = !DILocation(line: 294, column: 20, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 294, column: 8)
!2589 = !DILocation(line: 294, column: 8, scope: !2588)
!2590 = !DILocation(line: 294, column: 8, scope: !2467)
!2591 = !DILocation(line: 296, column: 8, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 295, column: 6)
!2593 = !DILocation(line: 297, column: 20, scope: !2592)
!2594 = !DILocation(line: 297, column: 8, scope: !2592)
!2595 = !DILocation(line: 297, column: 27, scope: !2592)
!2596 = !DILocation(line: 299, column: 50, scope: !2467)
!2597 = !DILocation(line: 299, column: 37, scope: !2467)
!2598 = !DILocation(line: 298, column: 6, scope: !2592)
!2599 = !DILocation(line: 299, column: 25, scope: !2467)
!2600 = !DILocation(line: 299, column: 35, scope: !2467)
!2601 = !DILocation(line: 299, column: 20, scope: !2467)
!2602 = !DILocation(line: 299, column: 17, scope: !2467)
!2603 = !DILocation(line: 300, column: 8, scope: !2472)
!2604 = !DILocation(line: 300, column: 32, scope: !2472)
!2605 = !DILocation(line: 301, column: 8, scope: !2472)
!2606 = !DILocation(line: 301, column: 11, scope: !2472)
!2607 = !DILocation(line: 300, column: 8, scope: !2467)
!2608 = !DILocation(line: 304, column: 8, scope: !2471)
!2609 = !DILocation(line: 306, column: 36, scope: !2471)
!2610 = !DILocation(line: 306, column: 23, scope: !2471)
!2611 = !DILocation(line: 306, column: 20, scope: !2471)
!2612 = !DILocation(line: 308, column: 12, scope: !2471)
!2613 = !DILocation(line: 310, column: 15, scope: !2471)
!2614 = !DILocation(line: 310, column: 13, scope: !2471)
!2615 = !DILocation(line: 311, column: 8, scope: !2471)
!2616 = !DILocation(line: 313, column: 8, scope: !2471)
!2617 = !DILocation(line: 319, column: 31, scope: !2471)
!2618 = !DILocation(line: 319, column: 25, scope: !2471)
!2619 = !DILocation(line: 319, column: 42, scope: !2471)
!2620 = !DILocation(line: 319, column: 3, scope: !2471)
!2621 = !DILocation(line: 318, column: 20, scope: !2471)
!2622 = !DILocation(line: 318, column: 8, scope: !2471)
!2623 = !DILocation(line: 318, column: 27, scope: !2471)
!2624 = !DILocation(line: 321, column: 12, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 321, column: 12)
!2626 = !DILocation(line: 321, column: 12, scope: !2471)
!2627 = !DILocation(line: 323, column: 10, scope: !2625)
!2628 = !DILocation(line: 323, column: 17, scope: !2625)
!2629 = !DILocation(line: 323, column: 23, scope: !2625)
!2630 = !DILocation(line: 323, column: 36, scope: !2625)
!2631 = !DILocation(line: 322, column: 3, scope: !2625)
!2632 = !DILocation(line: 325, column: 14, scope: !2471)
!2633 = !DILocation(line: 326, column: 6, scope: !2472)
!2634 = !DILocation(line: 326, column: 6, scope: !2471)
!2635 = !DILocation(line: 327, column: 4, scope: !2467)
!2636 = !DILocation(line: 330, column: 8, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 330, column: 8)
!2638 = !DILocation(line: 290, column: 33, scope: !2468)
!2639 = !DILocation(line: 290, column: 7, scope: !2468)
!2640 = distinct !{!2640, !2584, !2641}
!2641 = !DILocation(line: 332, column: 2, scope: !2469)
!2642 = !DILocation(line: 333, column: 11, scope: !2541)
!2643 = !DILocation(line: 333, column: 11, scope: !2463)
!2644 = !DILocation(line: 335, column: 4, scope: !2541)
!2645 = !DILocation(line: 335, column: 17, scope: !2541)
!2646 = !DILocation(line: 335, column: 25, scope: !2541)
!2647 = !DILocation(line: 334, column: 2, scope: !2541)
!2648 = !DILocation(line: 337, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 337, column: 7)
!2650 = !DILocation(line: 337, column: 7, scope: !2436)
!2651 = !DILocation(line: 339, column: 19, scope: !2649)
!2652 = !DILocation(line: 339, column: 25, scope: !2649)
!2653 = !DILocation(line: 338, column: 5, scope: !2649)
!2654 = !DILocation(line: 341, column: 3, scope: !2436)
!2655 = !DILocation(line: 342, column: 3, scope: !2436)
!2656 = !DILocation(line: 343, column: 3, scope: !2436)
!2657 = !DILocation(line: 344, column: 3, scope: !2436)
!2658 = !DILocation(line: 345, column: 3, scope: !2436)
!2659 = !DILocation(line: 346, column: 3, scope: !2436)
!2660 = !DILocation(line: 347, column: 1, scope: !2436)
!2661 = distinct !DISubprogram(name: "count_insns", scope: !3, file: !3, line: 103, type: !2662, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2664)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!563, !587}
!2664 = !{!2665, !2666, !2673, !2674}
!2665 = !DILocalVariable(name: "bb", arg: 1, scope: !2661, file: !3, line: 103, type: !587)
!2666 = !DILocalVariable(name: "gsi", scope: !2661, file: !3, line: 105, type: !2667)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !618, line: 265, baseType: !2668)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !618, line: 254, size: 192, elements: !2669)
!2669 = !{!2670, !2671, !2672}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2668, file: !618, line: 257, baseType: !621, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2668, file: !618, line: 263, baseType: !615, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2668, file: !618, line: 264, baseType: !587, size: 64, offset: 128)
!2673 = !DILocalVariable(name: "stmt", scope: !2661, file: !3, line: 106, type: !626)
!2674 = !DILocalVariable(name: "n", scope: !2661, file: !3, line: 107, type: !563)
!2675 = !DILocation(line: 0, scope: !2661)
!2676 = !DILocation(line: 105, column: 3, scope: !2661)
!2677 = !DILocation(line: 109, column: 14, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 109, column: 3)
!2679 = !DILocation(line: 109, column: 8, scope: !2678)
!2680 = !DILocation(line: 109, column: 34, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 109, column: 3)
!2682 = !DILocation(line: 109, column: 33, scope: !2681)
!2683 = !DILocation(line: 109, column: 3, scope: !2678)
!2684 = !DILocation(line: 111, column: 14, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 110, column: 5)
!2686 = !DILocation(line: 112, column: 12, scope: !2685)
!2687 = !DILocation(line: 112, column: 9, scope: !2685)
!2688 = !DILocation(line: 109, column: 51, scope: !2681)
!2689 = !DILocation(line: 109, column: 3, scope: !2681)
!2690 = distinct !{!2690, !2683, !2691}
!2691 = !DILocation(line: 113, column: 5, scope: !2678)
!2692 = !DILocation(line: 115, column: 1, scope: !2661)
!2693 = !DILocation(line: 114, column: 3, scope: !2661)
!2694 = distinct !DISubprogram(name: "ignore_bb_p", scope: !3, file: !3, line: 91, type: !2695, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2700)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!562, !2697}
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !588, line: 112, baseType: !2698)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!2700 = !{!2701}
!2701 = !DILocalVariable(name: "bb", arg: 1, scope: !2694, file: !3, line: 91, type: !2697)
!2702 = !DILocation(line: 0, scope: !2694)
!2703 = !DILocation(line: 93, column: 11, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 93, column: 7)
!2705 = !DILocation(line: 93, column: 17, scope: !2704)
!2706 = !DILocation(line: 93, column: 7, scope: !2694)
!2707 = !DILocation(line: 95, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 95, column: 7)
!2709 = !DILocation(line: 98, column: 1, scope: !2694)
!2710 = distinct !DISubprogram(name: "bb_seen_p", scope: !3, file: !3, line: 84, type: !2711, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!562, !587}
!2713 = !{!2714}
!2714 = !DILocalVariable(name: "bb", arg: 1, scope: !2710, file: !3, line: 84, type: !587)
!2715 = !DILocation(line: 0, scope: !2710)
!2716 = !DILocation(line: 86, column: 10, scope: !2710)
!2717 = !DILocation(line: 86, column: 3, scope: !2710)
!2718 = distinct !DISubprogram(name: "find_trace", scope: !3, file: !3, line: 177, type: !2719, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!563, !587, !586}
!2721 = !{!2722, !2723, !2724, !2725, !2726}
!2722 = !DILocalVariable(name: "bb", arg: 1, scope: !2718, file: !3, line: 177, type: !587)
!2723 = !DILocalVariable(name: "trace", arg: 2, scope: !2718, file: !3, line: 177, type: !586)
!2724 = !DILocalVariable(name: "i", scope: !2718, file: !3, line: 179, type: !563)
!2725 = !DILocalVariable(name: "e", scope: !2718, file: !3, line: 180, type: !605)
!2726 = !DILocalVariable(name: "bb2", scope: !2727, file: !3, line: 187, type: !587)
!2727 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 186, column: 5)
!2728 = !DILocation(line: 0, scope: !2718)
!2729 = !DILocation(line: 182, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 182, column: 7)
!2731 = !DILocation(line: 182, column: 7, scope: !2718)
!2732 = !DILocation(line: 183, column: 51, scope: !2730)
!2733 = !DILocation(line: 183, column: 62, scope: !2730)
!2734 = !DILocation(line: 183, column: 5, scope: !2730)
!2735 = !DILocation(line: 185, column: 3, scope: !2718)
!2736 = !DILocation(line: 185, column: 15, scope: !2718)
!2737 = !DILocation(line: 185, column: 43, scope: !2718)
!2738 = !DILocation(line: 187, column: 28, scope: !2727)
!2739 = !DILocation(line: 0, scope: !2727)
!2740 = !DILocation(line: 188, column: 11, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 188, column: 11)
!2742 = !DILocation(line: 188, column: 27, scope: !2741)
!2743 = !DILocation(line: 188, column: 34, scope: !2741)
!2744 = !DILocation(line: 188, column: 40, scope: !2741)
!2745 = !DILocation(line: 189, column: 4, scope: !2741)
!2746 = !DILocation(line: 189, column: 7, scope: !2741)
!2747 = !DILocation(line: 189, column: 33, scope: !2741)
!2748 = !DILocation(line: 188, column: 11, scope: !2727)
!2749 = !DILocation(line: 191, column: 11, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 191, column: 11)
!2751 = !DILocation(line: 191, column: 11, scope: !2727)
!2752 = !DILocation(line: 192, column: 38, scope: !2750)
!2753 = !DILocation(line: 192, column: 49, scope: !2750)
!2754 = !DILocation(line: 192, column: 2, scope: !2750)
!2755 = distinct !{!2755, !2735, !2756}
!2756 = !DILocation(line: 194, column: 5, scope: !2718)
!2757 = !DILocation(line: 195, column: 7, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 195, column: 7)
!2759 = !DILocation(line: 195, column: 7, scope: !2718)
!2760 = !DILocation(line: 196, column: 49, scope: !2758)
!2761 = !DILocation(line: 196, column: 60, scope: !2758)
!2762 = !DILocation(line: 196, column: 5, scope: !2758)
!2763 = !DILocation(line: 197, column: 14, scope: !2718)
!2764 = !DILocation(line: 200, column: 3, scope: !2718)
!2765 = !DILocation(line: 200, column: 15, scope: !2718)
!2766 = !DILocation(line: 200, column: 41, scope: !2718)
!2767 = !DILocation(line: 202, column: 15, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 201, column: 5)
!2769 = !DILocation(line: 203, column: 11, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 203, column: 11)
!2771 = !DILocation(line: 203, column: 26, scope: !2770)
!2772 = !DILocation(line: 203, column: 33, scope: !2770)
!2773 = !DILocation(line: 203, column: 39, scope: !2770)
!2774 = !DILocation(line: 204, column: 4, scope: !2770)
!2775 = !DILocation(line: 204, column: 7, scope: !2770)
!2776 = !DILocation(line: 204, column: 34, scope: !2770)
!2777 = !DILocation(line: 203, column: 11, scope: !2768)
!2778 = !DILocation(line: 206, column: 11, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 206, column: 11)
!2780 = !DILocation(line: 206, column: 11, scope: !2768)
!2781 = !DILocation(line: 207, column: 38, scope: !2779)
!2782 = !DILocation(line: 207, column: 49, scope: !2779)
!2783 = !DILocation(line: 207, column: 2, scope: !2779)
!2784 = !DILocation(line: 208, column: 14, scope: !2768)
!2785 = !DILocation(line: 208, column: 7, scope: !2768)
!2786 = !DILocation(line: 208, column: 18, scope: !2768)
!2787 = distinct !{!2787, !2764, !2788}
!2788 = !DILocation(line: 209, column: 5, scope: !2718)
!2789 = !DILocation(line: 210, column: 7, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 210, column: 7)
!2791 = !DILocation(line: 210, column: 7, scope: !2718)
!2792 = !DILocation(line: 211, column: 5, scope: !2790)
!2793 = !DILocation(line: 212, column: 3, scope: !2718)
!2794 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !318, file: !318, line: 150, type: !2795, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2799)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!7, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!2799 = !{!2800}
!2800 = !DILocalVariable(name: "vec_", arg: 1, scope: !2794, file: !318, line: 150, type: !2797)
!2801 = !DILocation(line: 0, scope: !2794)
!2802 = !DILocation(line: 150, column: 1, scope: !2794)
!2803 = distinct !DISubprogram(name: "mark_bb_seen", scope: !3, file: !3, line: 73, type: !2804, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !587}
!2806 = !{!2807, !2808}
!2807 = !DILocalVariable(name: "bb", arg: 1, scope: !2803, file: !3, line: 73, type: !587)
!2808 = !DILocalVariable(name: "size", scope: !2803, file: !3, line: 75, type: !7)
!2809 = !DILocation(line: 0, scope: !2803)
!2810 = !DILocation(line: 75, column: 23, scope: !2803)
!2811 = !DILocation(line: 75, column: 52, scope: !2803)
!2812 = !DILocation(line: 77, column: 25, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 77, column: 7)
!2814 = !DILocation(line: 77, column: 31, scope: !2813)
!2815 = !DILocation(line: 77, column: 7, scope: !2803)
!2816 = !DILocation(line: 78, column: 45, scope: !2813)
!2817 = !DILocation(line: 78, column: 15, scope: !2813)
!2818 = !DILocation(line: 78, column: 13, scope: !2813)
!2819 = !DILocation(line: 80, column: 25, scope: !2803)
!2820 = !DILocation(line: 78, column: 5, scope: !2813)
!2821 = !DILocation(line: 80, column: 12, scope: !2803)
!2822 = !DILocation(line: 80, column: 3, scope: !2803)
!2823 = !DILocation(line: 81, column: 1, scope: !2803)
!2824 = distinct !DISubprogram(name: "gsi_start_bb", scope: !618, file: !618, line: 4418, type: !2825, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!2667, !587}
!2827 = !{!2828, !2829, !2830}
!2828 = !DILocalVariable(name: "bb", arg: 1, scope: !2824, file: !618, line: 4418, type: !587)
!2829 = !DILocalVariable(name: "i", scope: !2824, file: !618, line: 4420, type: !2667)
!2830 = !DILocalVariable(name: "seq", scope: !2824, file: !618, line: 4421, type: !615)
!2831 = !DILocation(line: 0, scope: !2824)
!2832 = !DILocation(line: 4420, column: 24, scope: !2824)
!2833 = !DILocation(line: 4423, column: 9, scope: !2824)
!2834 = !DILocation(line: 4424, column: 11, scope: !2824)
!2835 = !DILocation(line: 4424, column: 5, scope: !2824)
!2836 = !DILocation(line: 4424, column: 9, scope: !2824)
!2837 = !DILocation(line: 4425, column: 5, scope: !2824)
!2838 = !DILocation(line: 4425, column: 9, scope: !2824)
!2839 = !DILocation(line: 4426, column: 5, scope: !2824)
!2840 = !DILocation(line: 4426, column: 8, scope: !2824)
!2841 = !DILocation(line: 4429, column: 1, scope: !2824)
!2842 = distinct !DISubprogram(name: "gsi_end_p", scope: !618, file: !618, line: 4467, type: !2843, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!562, !2667}
!2845 = !{!2846}
!2846 = !DILocalVariable(name: "i", arg: 1, scope: !2842, file: !618, line: 4467, type: !2667)
!2847 = !DILocation(line: 4467, column: 33, scope: !2842)
!2848 = !DILocation(line: 4469, column: 12, scope: !2842)
!2849 = !DILocation(line: 4469, column: 16, scope: !2842)
!2850 = !DILocation(line: 4469, column: 10, scope: !2842)
!2851 = !DILocation(line: 4469, column: 3, scope: !2842)
!2852 = distinct !DISubprogram(name: "gsi_stmt", scope: !618, file: !618, line: 4501, type: !2853, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!626, !2667}
!2855 = !{!2856}
!2856 = !DILocalVariable(name: "i", arg: 1, scope: !2852, file: !618, line: 4501, type: !2667)
!2857 = !DILocation(line: 4501, column: 32, scope: !2852)
!2858 = !DILocation(line: 4503, column: 12, scope: !2852)
!2859 = !DILocation(line: 4503, column: 17, scope: !2852)
!2860 = !DILocation(line: 4503, column: 3, scope: !2852)
!2861 = distinct !DISubprogram(name: "gsi_next", scope: !618, file: !618, line: 4485, type: !2862, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2865)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{null, !2864}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2865 = !{!2866}
!2866 = !DILocalVariable(name: "i", arg: 1, scope: !2861, file: !618, line: 4485, type: !2864)
!2867 = !DILocation(line: 0, scope: !2861)
!2868 = !DILocation(line: 4487, column: 15, scope: !2861)
!2869 = !DILocation(line: 4487, column: 20, scope: !2861)
!2870 = !DILocation(line: 4487, column: 10, scope: !2861)
!2871 = !DILocation(line: 4488, column: 1, scope: !2861)
!2872 = distinct !DISubprogram(name: "bb_seq", scope: !618, file: !618, line: 237, type: !2873, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!615, !2697}
!2875 = !{!2876}
!2876 = !DILocalVariable(name: "bb", arg: 1, scope: !2872, file: !618, line: 237, type: !2697)
!2877 = !DILocation(line: 0, scope: !2872)
!2878 = !DILocation(line: 239, column: 17, scope: !2872)
!2879 = !DILocation(line: 239, column: 23, scope: !2872)
!2880 = !DILocation(line: 239, column: 33, scope: !2872)
!2881 = !DILocation(line: 239, column: 43, scope: !2872)
!2882 = !DILocation(line: 239, column: 36, scope: !2872)
!2883 = !DILocation(line: 239, column: 10, scope: !2872)
!2884 = !DILocation(line: 239, column: 68, scope: !2872)
!2885 = !DILocation(line: 239, column: 3, scope: !2872)
!2886 = distinct !DISubprogram(name: "gimple_seq_first", scope: !618, file: !618, line: 159, type: !2887, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2892)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!621, !2889}
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !588, line: 67, baseType: !2890)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!2892 = !{!2893}
!2893 = !DILocalVariable(name: "s", arg: 1, scope: !2886, file: !618, line: 159, type: !2889)
!2894 = !DILocation(line: 0, scope: !2886)
!2895 = !DILocation(line: 161, column: 10, scope: !2886)
!2896 = !DILocation(line: 161, column: 17, scope: !2886)
!2897 = !DILocation(line: 161, column: 3, scope: !2886)
!2898 = distinct !DISubprogram(name: "find_best_predecessor", scope: !3, file: !3, line: 156, type: !2899, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!605, !587}
!2901 = !{!2902, !2903, !2904, !2905}
!2902 = !DILocalVariable(name: "bb", arg: 1, scope: !2898, file: !3, line: 156, type: !587)
!2903 = !DILocalVariable(name: "e", scope: !2898, file: !3, line: 158, type: !605)
!2904 = !DILocalVariable(name: "best", scope: !2898, file: !3, line: 159, type: !605)
!2905 = !DILocalVariable(name: "ei", scope: !2898, file: !3, line: 160, type: !2906)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !318, line: 682, baseType: !2907)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !318, line: 679, size: 128, elements: !2908)
!2908 = !{!2909, !2910}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2907, file: !318, line: 680, baseType: !7, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2907, file: !318, line: 681, baseType: !2911, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!2912 = !DILocation(line: 0, scope: !2898)
!2913 = !DILocation(line: 158, column: 3, scope: !2898)
!2914 = !DILocation(line: 160, column: 3, scope: !2898)
!2915 = !DILocation(line: 162, column: 3, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 162, column: 3)
!2917 = !DILocation(line: 0, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 162, column: 3)
!2919 = !DILocation(line: 162, column: 3, scope: !2918)
!2920 = !DILocation(line: 163, column: 15, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 163, column: 9)
!2922 = !DILocation(line: 163, column: 28, scope: !2921)
!2923 = !DILocation(line: 163, column: 18, scope: !2921)
!2924 = !DILocation(line: 163, column: 9, scope: !2918)
!2925 = !DILocation(line: 164, column: 14, scope: !2921)
!2926 = !DILocation(line: 164, column: 7, scope: !2921)
!2927 = distinct !{!2927, !2915, !2928}
!2928 = !DILocation(line: 164, column: 14, scope: !2916)
!2929 = !DILocation(line: 165, column: 13, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 165, column: 7)
!2931 = !DILocation(line: 165, column: 35, scope: !2930)
!2932 = !DILocation(line: 165, column: 16, scope: !2930)
!2933 = !DILocation(line: 165, column: 7, scope: !2898)
!2934 = !DILocation(line: 167, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 167, column: 7)
!2936 = !DILocation(line: 167, column: 29, scope: !2935)
!2937 = !DILocation(line: 168, column: 13, scope: !2935)
!2938 = !DILocation(line: 168, column: 25, scope: !2935)
!2939 = !DILocation(line: 168, column: 23, scope: !2935)
!2940 = !DILocation(line: 168, column: 7, scope: !2935)
!2941 = !DILocation(line: 171, column: 1, scope: !2898)
!2942 = distinct !DISubprogram(name: "find_best_successor", scope: !3, file: !3, line: 137, type: !2899, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2943)
!2943 = !{!2944, !2945, !2946, !2947}
!2944 = !DILocalVariable(name: "bb", arg: 1, scope: !2942, file: !3, line: 137, type: !587)
!2945 = !DILocalVariable(name: "e", scope: !2942, file: !3, line: 139, type: !605)
!2946 = !DILocalVariable(name: "best", scope: !2942, file: !3, line: 140, type: !605)
!2947 = !DILocalVariable(name: "ei", scope: !2942, file: !3, line: 141, type: !2906)
!2948 = !DILocation(line: 0, scope: !2942)
!2949 = !DILocation(line: 139, column: 3, scope: !2942)
!2950 = !DILocation(line: 141, column: 3, scope: !2942)
!2951 = !DILocation(line: 143, column: 3, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 143, column: 3)
!2953 = !DILocation(line: 0, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 143, column: 3)
!2955 = !DILocation(line: 143, column: 3, scope: !2954)
!2956 = !DILocation(line: 144, column: 15, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 144, column: 9)
!2958 = !DILocation(line: 144, column: 28, scope: !2957)
!2959 = !DILocation(line: 144, column: 18, scope: !2957)
!2960 = !DILocation(line: 144, column: 9, scope: !2954)
!2961 = !DILocation(line: 145, column: 14, scope: !2957)
!2962 = !DILocation(line: 145, column: 7, scope: !2957)
!2963 = distinct !{!2963, !2951, !2964}
!2964 = !DILocation(line: 145, column: 14, scope: !2952)
!2965 = !DILocation(line: 146, column: 13, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 146, column: 7)
!2967 = !DILocation(line: 146, column: 35, scope: !2966)
!2968 = !DILocation(line: 146, column: 16, scope: !2966)
!2969 = !DILocation(line: 146, column: 7, scope: !2942)
!2970 = !DILocation(line: 148, column: 13, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 148, column: 7)
!2972 = !DILocation(line: 148, column: 28, scope: !2971)
!2973 = !DILocation(line: 148, column: 25, scope: !2971)
!2974 = !DILocation(line: 151, column: 1, scope: !2942)
!2975 = distinct !DISubprogram(name: "ei_start_1", scope: !318, file: !318, line: 696, type: !2976, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!2906, !2911}
!2978 = !{!2979, !2980}
!2979 = !DILocalVariable(name: "ev", arg: 1, scope: !2975, file: !318, line: 696, type: !2911)
!2980 = !DILocalVariable(name: "i", scope: !2975, file: !318, line: 698, type: !2906)
!2981 = !DILocation(line: 0, scope: !2975)
!2982 = !DILocation(line: 700, column: 5, scope: !2975)
!2983 = !DILocation(line: 700, column: 11, scope: !2975)
!2984 = !DILocation(line: 701, column: 5, scope: !2975)
!2985 = !DILocation(line: 701, column: 15, scope: !2975)
!2986 = !DILocation(line: 703, column: 3, scope: !2975)
!2987 = distinct !DISubprogram(name: "ei_cond", scope: !318, file: !318, line: 771, type: !2988, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2991)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!562, !2906, !2990}
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!2991 = !{!2992, !2993}
!2992 = !DILocalVariable(name: "ei", arg: 1, scope: !2987, file: !318, line: 771, type: !2906)
!2993 = !DILocalVariable(name: "p", arg: 2, scope: !2987, file: !318, line: 771, type: !2990)
!2994 = !DILocation(line: 0, scope: !2987)
!2995 = !DILocation(line: 773, column: 8, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2987, file: !318, line: 773, column: 7)
!2997 = !DILocation(line: 773, column: 7, scope: !2987)
!2998 = !DILocation(line: 775, column: 12, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2996, file: !318, line: 774, column: 5)
!3000 = !DILocation(line: 776, column: 7, scope: !2999)
!3001 = !DILocation(line: 781, column: 7, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2996, file: !318, line: 779, column: 5)
!3003 = !DILocation(line: 0, scope: !2996)
!3004 = !DILocation(line: 783, column: 1, scope: !2987)
!3005 = distinct !DISubprogram(name: "better_p", scope: !3, file: !3, line: 119, type: !3006, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3011)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!562, !3008, !3008}
!3008 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_edge", file: !588, line: 109, baseType: !3009)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!3011 = !{!3012, !3013}
!3012 = !DILocalVariable(name: "e1", arg: 1, scope: !3005, file: !3, line: 119, type: !3008)
!3013 = !DILocalVariable(name: "e2", arg: 2, scope: !3005, file: !3, line: 119, type: !3008)
!3014 = !DILocation(line: 0, scope: !3005)
!3015 = !DILocation(line: 121, column: 11, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 121, column: 7)
!3017 = !DILocation(line: 121, column: 24, scope: !3016)
!3018 = !DILocation(line: 121, column: 17, scope: !3016)
!3019 = !DILocation(line: 121, column: 7, scope: !3005)
!3020 = !DILocation(line: 122, column: 22, scope: !3016)
!3021 = !DILocation(line: 122, column: 5, scope: !3016)
!3022 = !DILocation(line: 123, column: 11, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 123, column: 7)
!3024 = !DILocation(line: 123, column: 16, scope: !3023)
!3025 = !DILocation(line: 123, column: 32, scope: !3023)
!3026 = !DILocation(line: 123, column: 26, scope: !3023)
!3027 = !DILocation(line: 124, column: 11, scope: !3023)
!3028 = !DILocation(line: 124, column: 16, scope: !3023)
!3029 = !DILocation(line: 124, column: 32, scope: !3023)
!3030 = !DILocation(line: 124, column: 26, scope: !3023)
!3031 = !DILocation(line: 123, column: 44, scope: !3023)
!3032 = !DILocation(line: 123, column: 7, scope: !3005)
!3033 = !DILocation(line: 126, column: 6, scope: !3023)
!3034 = !DILocation(line: 125, column: 5, scope: !3023)
!3035 = !DILocation(line: 129, column: 15, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 129, column: 7)
!3037 = !DILocation(line: 129, column: 7, scope: !3005)
!3038 = !DILocation(line: 130, column: 21, scope: !3036)
!3039 = !DILocation(line: 130, column: 38, scope: !3036)
!3040 = !DILocation(line: 130, column: 27, scope: !3036)
!3041 = !DILocation(line: 130, column: 5, scope: !3036)
!3042 = !DILocation(line: 131, column: 14, scope: !3005)
!3043 = !DILocation(line: 131, column: 20, scope: !3005)
!3044 = !DILocation(line: 131, column: 32, scope: !3005)
!3045 = !DILocation(line: 131, column: 38, scope: !3005)
!3046 = !DILocation(line: 131, column: 26, scope: !3005)
!3047 = !DILocation(line: 131, column: 3, scope: !3005)
!3048 = !DILocation(line: 132, column: 1, scope: !3005)
!3049 = distinct !DISubprogram(name: "ei_next", scope: !318, file: !318, line: 736, type: !3050, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3053)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !3052}
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!3053 = !{!3054}
!3054 = !DILocalVariable(name: "i", arg: 1, scope: !3049, file: !318, line: 736, type: !3052)
!3055 = !DILocation(line: 0, scope: !3049)
!3056 = !DILocation(line: 738, column: 3, scope: !3049)
!3057 = !DILocation(line: 739, column: 11, scope: !3049)
!3058 = !DILocation(line: 740, column: 1, scope: !3049)
!3059 = distinct !DISubprogram(name: "ei_end_p", scope: !318, file: !318, line: 721, type: !3060, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!562, !2906}
!3062 = !{!3063}
!3063 = !DILocalVariable(name: "i", arg: 1, scope: !3059, file: !318, line: 721, type: !2906)
!3064 = !DILocation(line: 723, column: 22, scope: !3059)
!3065 = !DILocation(line: 723, column: 19, scope: !3059)
!3066 = !DILocation(line: 723, column: 10, scope: !3059)
!3067 = !DILocation(line: 723, column: 3, scope: !3059)
!3068 = distinct !DISubprogram(name: "ei_edge", scope: !318, file: !318, line: 752, type: !3069, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!605, !2906}
!3071 = !{!3072}
!3072 = !DILocalVariable(name: "i", arg: 1, scope: !3068, file: !318, line: 752, type: !2906)
!3073 = !DILocation(line: 754, column: 10, scope: !3068)
!3074 = !DILocation(line: 754, column: 3, scope: !3068)
!3075 = distinct !DISubprogram(name: "ei_container", scope: !318, file: !318, line: 685, type: !3076, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!593, !2906}
!3078 = !{!3079}
!3079 = !DILocalVariable(name: "i", arg: 1, scope: !3075, file: !318, line: 685, type: !2906)
!3080 = !DILocation(line: 687, column: 3, scope: !3075)
!3081 = !DILocation(line: 688, column: 10, scope: !3075)
!3082 = !DILocation(line: 688, column: 3, scope: !3075)
!3083 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !318, file: !318, line: 150, type: !3084, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!605, !2797, !7}
!3086 = !{!3087, !3088}
!3087 = !DILocalVariable(name: "vec_", arg: 1, scope: !3083, file: !318, line: 150, type: !2797)
!3088 = !DILocalVariable(name: "ix_", arg: 2, scope: !3083, file: !318, line: 150, type: !7)
!3089 = !DILocation(line: 0, scope: !3083)
!3090 = !DILocation(line: 150, column: 1, scope: !3083)
!3091 = distinct !DISubprogram(name: "SET_BIT", scope: !1919, file: !1919, line: 63, type: !3092, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{null, !1918, !7}
!3094 = !{!3095, !3096, !3097}
!3095 = !DILocalVariable(name: "map", arg: 1, scope: !3091, file: !1919, line: 63, type: !1918)
!3096 = !DILocalVariable(name: "bitno", arg: 2, scope: !3091, file: !1919, line: 63, type: !7)
!3097 = !DILocalVariable(name: "oldbit", scope: !3098, file: !1919, line: 67, type: !562)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !1919, line: 66, column: 5)
!3099 = distinct !DILexicalBlock(scope: !3091, file: !1919, line: 65, column: 7)
!3100 = !DILocation(line: 0, scope: !3091)
!3101 = !DILocation(line: 65, column: 12, scope: !3099)
!3102 = !DILocation(line: 65, column: 7, scope: !3099)
!3103 = !DILocation(line: 65, column: 7, scope: !3091)
!3104 = !DILocation(line: 73, column: 40, scope: !3091)
!3105 = !DILocation(line: 73, column: 29, scope: !3091)
!3106 = !DILocation(line: 72, column: 19, scope: !3091)
!3107 = !DILocation(line: 72, column: 3, scope: !3091)
!3108 = !DILocation(line: 68, column: 16, scope: !3098)
!3109 = !DILocation(line: 69, column: 12, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3098, file: !1919, line: 69, column: 11)
!3111 = !DILocation(line: 69, column: 11, scope: !3098)
!3112 = !DILocation(line: 70, column: 2, scope: !3110)
!3113 = !DILocation(line: 70, column: 41, scope: !3110)
!3114 = !DILocation(line: 73, column: 5, scope: !3091)
!3115 = !DILocation(line: 74, column: 1, scope: !3091)
