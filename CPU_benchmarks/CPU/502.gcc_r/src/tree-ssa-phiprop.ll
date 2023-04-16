; ModuleID = 'tree-ssa-phiprop.bc'
source_filename = "tree-ssa-phiprop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.VEC_basic_block_heap = type { %struct.VEC_basic_block_base }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.phiprop_d = type { %union.tree_node*, %union.tree_node* }
%struct.immediate_use_iterator_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"phiprop\00", align 1
@pass_phiprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_phiprop, i32 ()* @tree_ssa_phiprop, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 75, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8, !dbg !0
@flag_tree_phiprop = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"tree-ssa-phiprop.c\00", align 1
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Inserting PHI for result of load \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"  for edge defining \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c" reusing PHI result \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c" inserting load \00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1983 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1996, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1997, metadata !DIExpression()), !dbg !1998
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1999
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2000
  ret i32 %call, !dbg !2001
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2002 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2006
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2007
  ret i32 %call, !dbg !2008
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2009 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2064, metadata !DIExpression()), !dbg !2065
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2066
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2066
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2066
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2066
  %cmp = icmp uge i8* %0, %1, !dbg !2066
  %conv1 = zext i1 %cmp to i64, !dbg !2066
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2066
  %tobool = icmp eq i64 %expval, 0, !dbg !2066
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2066

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2066
  br label %cond.end, !dbg !2066

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2066
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2066
  %2 = load i8, i8* %0, align 1, !dbg !2066
  %conv3 = zext i8 %2 to i32, !dbg !2066
  br label %cond.end, !dbg !2066

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2066
  ret i32 %cond, !dbg !2067
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2068 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2070, metadata !DIExpression()), !dbg !2071
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2072
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2072
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2072
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2072
  %cmp = icmp uge i8* %0, %1, !dbg !2072
  %conv1 = zext i1 %cmp to i64, !dbg !2072
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2072
  %tobool = icmp eq i64 %expval, 0, !dbg !2072
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2072

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2072
  br label %cond.end, !dbg !2072

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2072
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2072
  %2 = load i8, i8* %0, align 1, !dbg !2072
  %conv3 = zext i8 %2 to i32, !dbg !2072
  br label %cond.end, !dbg !2072

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2072
  ret i32 %cond, !dbg !2073
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2074 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2075
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2075
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2075
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2075
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2075
  %cmp = icmp uge i8* %1, %2, !dbg !2075
  %conv1 = zext i1 %cmp to i64, !dbg !2075
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2075
  %tobool = icmp eq i64 %expval, 0, !dbg !2075
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2075

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2075
  br label %cond.end, !dbg !2075

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2075
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2075
  %3 = load i8, i8* %1, align 1, !dbg !2075
  %conv3 = zext i8 %3 to i32, !dbg !2075
  br label %cond.end, !dbg !2075

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2075
  ret i32 %cond, !dbg !2076
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2077 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2081, metadata !DIExpression()), !dbg !2082
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2083
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2084
  ret i32 %call, !dbg !2085
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2086 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2090, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2091, metadata !DIExpression()), !dbg !2092
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2093
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2093
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2093
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2093
  %cmp = icmp uge i8* %0, %1, !dbg !2093
  %conv1 = zext i1 %cmp to i64, !dbg !2093
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2093
  %tobool = icmp eq i64 %expval, 0, !dbg !2093
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2093

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2093
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2093
  br label %cond.end, !dbg !2093

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2093
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2093
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2093
  store i8 %conv2, i8* %0, align 1, !dbg !2093
  %conv6 = and i32 %__c, 255, !dbg !2093
  br label %cond.end, !dbg !2093

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2093
  ret i32 %cond, !dbg !2094
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2095 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2097, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2098, metadata !DIExpression()), !dbg !2099
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2100
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2100
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2100
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2100
  %cmp = icmp uge i8* %0, %1, !dbg !2100
  %conv1 = zext i1 %cmp to i64, !dbg !2100
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2100
  %tobool = icmp eq i64 %expval, 0, !dbg !2100
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2100

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2100
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2100
  br label %cond.end, !dbg !2100

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2100
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2100
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2100
  store i8 %conv2, i8* %0, align 1, !dbg !2100
  %conv6 = and i32 %__c, 255, !dbg !2100
  br label %cond.end, !dbg !2100

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2100
  ret i32 %cond, !dbg !2101
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2102 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2104, metadata !DIExpression()), !dbg !2105
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2106
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2106
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2106
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2106
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2106
  %cmp = icmp uge i8* %1, %2, !dbg !2106
  %conv1 = zext i1 %cmp to i64, !dbg !2106
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2106
  %tobool = icmp eq i64 %expval, 0, !dbg !2106
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2106

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2106
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2106
  br label %cond.end, !dbg !2106

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2106
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2106
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2106
  store i8 %conv4, i8* %1, align 1, !dbg !2106
  %conv6 = and i32 %__c, 255, !dbg !2106
  br label %cond.end, !dbg !2106

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2106
  ret i32 %cond, !dbg !2107
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2108 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2114, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2115, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2116, metadata !DIExpression()), !dbg !2117
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2118
  ret i64 %call, !dbg !2119
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2120 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2122, metadata !DIExpression()), !dbg !2123
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2124
  %0 = load i32, i32* %_flags, align 8, !dbg !2124
  %and = lshr i32 %0, 4, !dbg !2124
  %and.lobit = and i32 %and, 1, !dbg !2124
  ret i32 %and.lobit, !dbg !2125
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2126 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2128, metadata !DIExpression()), !dbg !2129
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2130
  %0 = load i32, i32* %_flags, align 8, !dbg !2130
  %and = lshr i32 %0, 5, !dbg !2130
  %and.lobit = and i32 %and, 1, !dbg !2130
  ret i32 %and.lobit, !dbg !2131
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2135, metadata !DIExpression()), !dbg !2136
  %__c.off = add i32 %__c, 128, !dbg !2137
  %0 = icmp ult i32 %__c.off, 384, !dbg !2137
  br i1 %0, label %cond.true, label %cond.end, !dbg !2137

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2138
  %1 = load i32*, i32** %call, align 8, !dbg !2139
  %idxprom = sext i32 %__c to i64, !dbg !2140
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2140
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2140
  br label %cond.end, !dbg !2141

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2141
  ret i32 %cond, !dbg !2142
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2143 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2145, metadata !DIExpression()), !dbg !2146
  %__c.off = add i32 %__c, 128, !dbg !2147
  %0 = icmp ult i32 %__c.off, 384, !dbg !2147
  br i1 %0, label %cond.true, label %cond.end, !dbg !2147

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2148
  %1 = load i32*, i32** %call, align 8, !dbg !2149
  %idxprom = sext i32 %__c to i64, !dbg !2150
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2150
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2150
  br label %cond.end, !dbg !2151

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2151
  ret i32 %cond, !dbg !2152
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2153 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2158, metadata !DIExpression()), !dbg !2159
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2160
  %conv = trunc i64 %call to i32, !dbg !2161
  ret i32 %conv, !dbg !2162
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2163 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2167, metadata !DIExpression()), !dbg !2168
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2169
  ret i64 %call, !dbg !2170
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2171 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2176, metadata !DIExpression()), !dbg !2177
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2178
  ret i64 %call, !dbg !2179
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2180 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2186, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2187, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2188, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2189, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2190, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 0, metadata !2191, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2192, metadata !DIExpression()), !dbg !2196
  br label %while.cond, !dbg !2197

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2198
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2196
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2192, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2191, metadata !DIExpression()), !dbg !2196
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2199
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2197

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2200
  %div = lshr i64 %add, 1, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %div, metadata !2193, metadata !DIExpression()), !dbg !2196
  %mul = mul i64 %div, %__size, !dbg !2203
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2204
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2194, metadata !DIExpression()), !dbg !2196
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2205
  call void @llvm.dbg.value(metadata i32 %call, metadata !2195, metadata !DIExpression()), !dbg !2196
  %cmp1 = icmp slt i32 %call, 0, !dbg !2206
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2208

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2209
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2211

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2191, metadata !DIExpression()), !dbg !2196
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2196
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2196
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2192, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2191, metadata !DIExpression()), !dbg !2196
  br label %while.cond, !dbg !2197, !llvm.loop !2213

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2196
  ret i8* %retval.0, !dbg !2215
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2216 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2222, metadata !DIExpression()), !dbg !2223
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2224
  ret double %call, !dbg !2225
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2226 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2235, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2236, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i32 %base, metadata !2237, metadata !DIExpression()), !dbg !2238
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2239
  ret i64 %call, !dbg !2240
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2241 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2247, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2248, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32 %base, metadata !2249, metadata !DIExpression()), !dbg !2250
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2251
  ret i64 %call, !dbg !2252
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2253 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2264, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2265, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %base, metadata !2266, metadata !DIExpression()), !dbg !2267
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2268
  ret i64 %call, !dbg !2269
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2270 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2275, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i32 %base, metadata !2276, metadata !DIExpression()), !dbg !2277
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2278
  ret i64 %call, !dbg !2279
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2280 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2320, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2321, metadata !DIExpression()), !dbg !2322
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2323
  ret i32 %call, !dbg !2324
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2325 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2327, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2328, metadata !DIExpression()), !dbg !2329
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2330
  ret i32 %call, !dbg !2331
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2332 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2336, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2337, metadata !DIExpression()), !dbg !2338
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2339
  ret i32 %call, !dbg !2340
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2341 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2345, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2346, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2348, metadata !DIExpression()), !dbg !2349
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2350
  ret i32 %call, !dbg !2351
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2352 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2356, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2357, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2358, metadata !DIExpression()), !dbg !2359
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2358, metadata !DIExpression(DW_OP_deref)), !dbg !2359
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2360
  ret i32 %call, !dbg !2361
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2362 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2366, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2367, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2369, metadata !DIExpression()), !dbg !2370
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2369, metadata !DIExpression(DW_OP_deref)), !dbg !2370
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2371
  ret i32 %call, !dbg !2372
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2373 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2397, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2398, metadata !DIExpression()), !dbg !2399
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2400
  ret i32 %call, !dbg !2401
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2402 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2404, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2405, metadata !DIExpression()), !dbg !2406
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2407
  ret i32 %call, !dbg !2408
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2409 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2413, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2414, metadata !DIExpression()), !dbg !2415
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2416
  ret i32 %call, !dbg !2417
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2418 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2422, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2423, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2424, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2425, metadata !DIExpression()), !dbg !2426
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2427
  ret i32 %call, !dbg !2428
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_phiprop() #5 !dbg !2429 {
entry:
  %0 = load i32, i32* @flag_tree_phiprop, align 4, !dbg !2430
  %conv = trunc i32 %0 to i8, !dbg !2430
  ret i8 %conv, !dbg !2431
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_phiprop() #5 !dbg !2432 {
entry:
  %bbs = alloca %struct.VEC_basic_block_heap*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %0 = bitcast %struct.VEC_basic_block_heap** %bbs to i8*, !dbg !2452
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2441, metadata !DIExpression()), !dbg !2453
  %1 = bitcast %struct.basic_block_def** %bb to i8*, !dbg !2454
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2454
  %2 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2455
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2455
  tail call void @calculate_dominance_info(i32 1) #6, !dbg !2456
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2457
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 3, !dbg !2457
  %4 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2457
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %4, i64 0, i32 2, !dbg !2457
  %5 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2457
  %tobool = icmp eq %struct.VEC_tree_gc* %5, null, !dbg !2457
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2457

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %5, i64 0, i32 0, !dbg !2457
  br label %cond.end, !dbg !2457

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2457
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #8, !dbg !2457
  %conv = zext i32 %call to i64, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2451, metadata !DIExpression()), !dbg !2453
  %call4 = tail call i8* @xcalloc(i64 %conv, i64 16) #6, !dbg !2458
  %6 = bitcast i8* %call4 to %struct.phiprop_d*, !dbg !2458
  call void @llvm.dbg.value(metadata %struct.phiprop_d* %6, metadata !2440, metadata !DIExpression()), !dbg !2453
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2459
  %cfg = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !2459
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2459
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 0, !dbg !2459
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2459
  %call6 = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %9) #8, !dbg !2460
  %call7 = tail call %struct.VEC_basic_block_heap* @get_all_dominated_blocks(i32 1, %struct.basic_block_def* %call6) #6, !dbg !2461
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %call7, metadata !2434, metadata !DIExpression()), !dbg !2453
  store %struct.VEC_basic_block_heap* %call7, %struct.VEC_basic_block_heap** %bbs, align 8, !dbg !2462
  call void @llvm.dbg.value(metadata i32 0, metadata !2450, metadata !DIExpression()), !dbg !2453
  %10 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2463
  br label %for.cond, !dbg !2467

for.cond:                                         ; preds = %for.inc25, %cond.end
  %11 = phi %struct.VEC_basic_block_heap* [ %call7, %cond.end ], [ %.pre, %for.inc25 ], !dbg !2468
  %did_something.0 = phi i8 [ 0, %cond.end ], [ %did_something.1.lcssa, %for.inc25 ], !dbg !2469
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.inc25 ], !dbg !2470
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2450, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 %did_something.0, metadata !2441, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %11, metadata !2434, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %11, metadata !2434, metadata !DIExpression()), !dbg !2453
  %base10 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %11, i64 0, i32 0, !dbg !2468
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %bb, metadata !2442, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  %call14 = call fastcc i32 @VEC_basic_block_base_iterate(%struct.VEC_basic_block_base* %base10, i32 %i.0, %struct.basic_block_def** nonnull %bb) #8, !dbg !2468
  %tobool15 = icmp eq i32 %call14, 0, !dbg !2471
  br i1 %tobool15, label %for.end26, label %for.body, !dbg !2471

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #7, !dbg !2472
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2473
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %12, metadata !2442, metadata !DIExpression()), !dbg !2453
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %12) #6, !dbg !2472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %10, i64 24, i1 false), !dbg !2472
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #7, !dbg !2472
  br label %for.cond16, !dbg !2474

for.cond16:                                       ; preds = %for.body19, %for.body
  %did_something.1 = phi i8 [ %did_something.0, %for.body ], [ %or1, %for.body19 ], !dbg !2453
  call void @llvm.dbg.value(metadata i8 %did_something.1, metadata !2441, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2443, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  %call17 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2475
  %tobool18 = icmp eq i8 %call17, 0, !dbg !2477
  br i1 %tobool18, label %for.body19, label %for.inc25, !dbg !2478

for.body19:                                       ; preds = %for.cond16
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2479
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %13, metadata !2442, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2443, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  %call20 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2480
  %call21 = call fastcc zeroext i8 @propagate_with_phi(%struct.basic_block_def* %13, %union.gimple_statement_d* %call20, %struct.phiprop_d* %6, i64 %conv) #8, !dbg !2481
  %or1 = or i8 %did_something.1, %call21, !dbg !2482
  call void @llvm.dbg.value(metadata i8 %or1, metadata !2441, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2443, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2483
  br label %for.cond16, !dbg !2484, !llvm.loop !2485

for.inc25:                                        ; preds = %for.cond16
  %did_something.1.lcssa = phi i8 [ %did_something.1, %for.cond16 ], !dbg !2453
  call void @llvm.dbg.value(metadata i8 %did_something.1.lcssa, metadata !2441, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 %did_something.1.lcssa, metadata !2441, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 %did_something.1.lcssa, metadata !2441, metadata !DIExpression()), !dbg !2453
  %inc = add i32 %i.0, 1, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2450, metadata !DIExpression()), !dbg !2453
  %.pre = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %bbs, align 8, !dbg !2468
  br label %for.cond, !dbg !2488, !llvm.loop !2489

for.end26:                                        ; preds = %for.cond
  %did_something.0.lcssa = phi i8 [ %did_something.0, %for.cond ], !dbg !2469
  call void @llvm.dbg.value(metadata i8 %did_something.0.lcssa, metadata !2441, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 %did_something.0.lcssa, metadata !2441, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 %did_something.0.lcssa, metadata !2441, metadata !DIExpression()), !dbg !2453
  %tobool27 = icmp eq i8 %did_something.0.lcssa, 0, !dbg !2491
  br i1 %tobool27, label %if.end, label %if.then, !dbg !2493

if.then:                                          ; preds = %for.end26
  call void @gsi_commit_edge_inserts() #6, !dbg !2494
  br label %if.end, !dbg !2494

if.end:                                           ; preds = %for.end26, %if.then
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %bbs, metadata !2434, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  call fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** nonnull %bbs) #8, !dbg !2495
  call void @free(i8* %call4) #6, !dbg !2496
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2497
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2497
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2497
  ret i32 0, !dbg !2498
}

declare dso_local void @calculate_dominance_info(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !2499 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2505, metadata !DIExpression()), !dbg !2506
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2507
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2507

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2507
  %0 = load i32, i32* %num, align 8, !dbg !2507
  br label %cond.end, !dbg !2507

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2507
  ret i32 %cond, !dbg !2507
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local %struct.VEC_basic_block_heap* @get_all_dominated_blocks(i32, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2508 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2515, metadata !DIExpression()), !dbg !2516
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #8, !dbg !2517
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !2518
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2518
  ret %struct.basic_block_def* %0, !dbg !2519
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_base_iterate(%struct.VEC_basic_block_base* %vec_, i32 %ix_, %struct.basic_block_def** %ptr) unnamed_addr #0 !dbg !2520 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !2527, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2528, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %ptr, metadata !2529, metadata !DIExpression()), !dbg !2530
  %tobool = icmp eq %struct.VEC_basic_block_base* %vec_, null, !dbg !2531
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2531

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !2531
  %0 = load i32, i32* %num, align 8, !dbg !2531
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2531
  br i1 %cmp, label %if.then, label %if.else, !dbg !2533

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2534
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2534
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2534
  br label %return, !dbg !2534

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2536

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.basic_block_def* [ null, %if.else ], [ %1, %if.then ], !dbg !2538
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2538
  store %struct.basic_block_def* %storemerge, %struct.basic_block_def** %ptr, align 8, !dbg !2538
  ret i32 %retval.0, !dbg !2533
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2539 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2543, metadata !DIExpression()), !dbg !2544
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2545
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2545
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2546
  %conv1 = zext i1 %cmp to i8, !dbg !2547
  ret i8 %conv1, !dbg !2548
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @propagate_with_phi(%struct.basic_block_def* %bb, %union.gimple_statement_d* %phi, %struct.phiprop_d* %phivn, i64 %n) unnamed_addr #5 !dbg !2549 {
entry:
  %use_stmt = alloca %union.gimple_statement_d*, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %ui = alloca %struct.immediate_use_iterator_d, align 8
  %use = alloca %struct.ssa_use_operand_d*, align 8
  %i = alloca %struct.ssa_operand_iterator_d, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2553, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !2554, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %struct.phiprop_d* %phivn, metadata !2555, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 %n, metadata !2556, metadata !DIExpression()), !dbg !2597
  %call = tail call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %phi) #8, !dbg !2598
  %call1 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call) #8, !dbg !2598
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2557, metadata !DIExpression()), !dbg !2597
  %0 = bitcast %union.gimple_statement_d** %use_stmt to i8*, !dbg !2599
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2599
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2559, metadata !DIExpression()), !dbg !2597
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2600
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2600
  %2 = bitcast %struct.immediate_use_iterator_d* %ui to i8*, !dbg !2601
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %2) #7, !dbg !2601
  %3 = bitcast %struct.ssa_use_operand_d** %use to i8*, !dbg !2602
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !2602
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %i, i64 0, i32 0, !dbg !2603
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7, !dbg !2603
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2604
  %5 = bitcast %union.tree_node** %type to i64**, !dbg !2604
  %6 = load i64*, i64** %5, align 8, !dbg !2604
  %bf.load = load i64, i64* %6, align 8, !dbg !2604
  %bf.cast3 = and i64 %bf.load, 65535, !dbg !2604
  %cmp = icmp eq i64 %bf.cast3, 10, !dbg !2604
  br i1 %cmp, label %lor.lhs.false9, label %lor.lhs.false, !dbg !2604

lor.lhs.false:                                    ; preds = %entry
  %cmp8 = icmp eq i64 %bf.cast3, 12, !dbg !2604
  br i1 %cmp8, label %lor.lhs.false9, label %cleanup171, !dbg !2606

lor.lhs.false9:                                   ; preds = %lor.lhs.false, %entry
  %type13 = getelementptr inbounds i64, i64* %6, i64 2, !dbg !2607
  %7 = bitcast i64* %type13 to %union.tree_node**, !dbg !2607
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8, !dbg !2607
  %call14 = tail call zeroext i8 @is_gimple_reg_type(%union.tree_node* %8) #6, !dbg !2608
  %tobool = icmp eq i8 %call14, 0, !dbg !2608
  br i1 %tobool, label %cleanup171, label %if.end, !dbg !2609

if.end:                                           ; preds = %lor.lhs.false9
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %i, metadata !2571, metadata !DIExpression(DW_OP_deref)), !dbg !2597
  %call15 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* nonnull %i, %union.gimple_statement_d* %phi, i32 1) #8, !dbg !2610
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call15, metadata !2569, metadata !DIExpression()), !dbg !2597
  br label %for.cond, !dbg !2610

for.cond:                                         ; preds = %for.inc, %if.end
  %arg_p.0 = phi %struct.ssa_use_operand_d* [ %call15, %if.end ], [ %call84, %for.inc ], !dbg !2611
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %arg_p.0, metadata !2569, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %i, metadata !2571, metadata !DIExpression(DW_OP_deref)), !dbg !2597
  %call16 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %i) #8, !dbg !2612
  %tobool17 = icmp eq i8 %call16, 0, !dbg !2612
  br i1 %tobool17, label %for.body, label %while.cond85.preheader, !dbg !2610

while.cond85.preheader:                           ; preds = %for.cond
  br label %while.cond85, !dbg !2613

for.body:                                         ; preds = %for.cond
  %call18 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %arg_p.0) #8, !dbg !2614
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !2585, metadata !DIExpression()), !dbg !2615
  br label %while.cond, !dbg !2616

while.cond:                                       ; preds = %cleanup, %for.body
  %arg.0 = phi %union.tree_node* [ %call18, %for.body ], [ %arg.1, %cleanup ], !dbg !2615
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0, metadata !2585, metadata !DIExpression()), !dbg !2615
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2617
  %bf.load20 = load i64, i64* %9, align 8, !dbg !2617
  %bf.cast227 = and i64 %bf.load20, 65535, !dbg !2618
  %cmp23 = icmp eq i64 %bf.cast227, 141, !dbg !2618
  br i1 %cmp23, label %land.lhs.true, label %while.end, !dbg !2619

land.lhs.true:                                    ; preds = %while.cond
  %bf.cast2710 = and i64 %bf.load20, 4294967296, !dbg !2620
  %tobool28 = icmp eq i64 %bf.cast2710, 0, !dbg !2620
  br i1 %tobool28, label %land.rhs, label %while.end, !dbg !2621

land.rhs:                                         ; preds = %land.lhs.true
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2622
  %10 = bitcast %union.tree_node** %version to i32*, !dbg !2622
  %11 = load i32, i32* %10, align 8, !dbg !2622
  %conv = zext i32 %11 to i64, !dbg !2622
  %cmp29 = icmp ult i64 %conv, %n, !dbg !2623
  br i1 %cmp29, label %lor.rhs, label %while.body, !dbg !2624

lor.rhs:                                          ; preds = %land.rhs
  %value = getelementptr inbounds %struct.phiprop_d, %struct.phiprop_d* %phivn, i64 %conv, i32 0, !dbg !2625
  %12 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !2625
  %cmp33 = icmp eq %union.tree_node* %12, null, !dbg !2626
  br i1 %cmp33, label %while.body, label %while.end, !dbg !2616

while.body:                                       ; preds = %land.rhs, %lor.rhs
  %def_stmt36 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2627
  %13 = bitcast %union.tree_node** %def_stmt36 to %union.gimple_statement_d**, !dbg !2627
  %14 = load %union.gimple_statement_d*, %union.gimple_statement_d** %13, align 8, !dbg !2627
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %14, metadata !2589, metadata !DIExpression()), !dbg !2628
  %call37 = call zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d* %14) #6, !dbg !2629
  %tobool38 = icmp eq i8 %call37, 0, !dbg !2629
  br i1 %tobool38, label %cleanup, label %if.end40, !dbg !2631

if.end40:                                         ; preds = %while.body
  %call41 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %14) #8, !dbg !2632
  call void @llvm.dbg.value(metadata %union.tree_node* %call41, metadata !2585, metadata !DIExpression()), !dbg !2615
  br label %cleanup, !dbg !2633

cleanup:                                          ; preds = %while.body, %if.end40
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end40 ], [ 1, %while.body ]
  %arg.1 = phi %union.tree_node* [ %call41, %if.end40 ], [ %arg.0, %while.body ], !dbg !2615
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.1, metadata !2585, metadata !DIExpression()), !dbg !2615
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %while.cond, label %cleanup81.loopexit, !llvm.loop !2634

while.end:                                        ; preds = %land.lhs.true, %while.cond, %lor.rhs
  %arg.0.lcssa = phi %union.tree_node* [ %arg.0, %land.lhs.true ], [ %arg.0, %while.cond ], [ %arg.0, %lor.rhs ], !dbg !2615
  %.lcssa = phi i64* [ %9, %land.lhs.true ], [ %9, %while.cond ], [ %9, %lor.rhs ], !dbg !2617
  %bf.load20.lcssa = phi i64 [ %bf.load20, %land.lhs.true ], [ %bf.load20, %while.cond ], [ %bf.load20, %lor.rhs ], !dbg !2617
  %bf.cast227.lcssa = phi i64 [ %bf.cast227, %land.lhs.true ], [ %bf.cast227, %while.cond ], [ %bf.cast227, %lor.rhs ], !dbg !2618
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0.lcssa, metadata !2585, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0.lcssa, metadata !2585, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0.lcssa, metadata !2585, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0.lcssa, metadata !2585, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0.lcssa, metadata !2585, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0.lcssa, metadata !2585, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0.lcssa, metadata !2585, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0.lcssa, metadata !2585, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0.lcssa, metadata !2585, metadata !DIExpression()), !dbg !2615
  %cmp46 = icmp eq i64 %bf.cast227.lcssa, 121, !dbg !2635
  br i1 %cmp46, label %lor.lhs.false48, label %land.lhs.true54, !dbg !2637

lor.lhs.false48:                                  ; preds = %while.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2638
  %15 = bitcast %union.tree_node** %operands to %struct.tree_common**, !dbg !2638
  %16 = load %struct.tree_common*, %struct.tree_common** %15, align 8, !dbg !2638
  %type51 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %16, i64 0, i32 2, !dbg !2638
  %17 = load %union.tree_node*, %union.tree_node** %type51, align 8, !dbg !2638
  %call52 = call zeroext i8 @is_gimple_reg_type(%union.tree_node* %17) #6, !dbg !2639
  %tobool53 = icmp eq i8 %call52, 0, !dbg !2639
  br i1 %tobool53, label %lor.lhs.false48.land.lhs.true54_crit_edge, label %if.end80, !dbg !2640

lor.lhs.false48.land.lhs.true54_crit_edge:        ; preds = %lor.lhs.false48
  %bf.load56.pre = load i64, i64* %.lcssa, align 8, !dbg !2641
  br label %land.lhs.true54, !dbg !2640

land.lhs.true54:                                  ; preds = %lor.lhs.false48.land.lhs.true54_crit_edge, %while.end
  %bf.load56 = phi i64 [ %bf.load56.pre, %lor.lhs.false48.land.lhs.true54_crit_edge ], [ %bf.load20.lcssa, %while.end ], !dbg !2641
  %bf.cast589 = and i64 %bf.load56, 65535, !dbg !2642
  %cmp59 = icmp eq i64 %bf.cast589, 141, !dbg !2642
  br i1 %cmp59, label %land.lhs.true61, label %cleanup81, !dbg !2643

land.lhs.true61:                                  ; preds = %land.lhs.true54
  %version63 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2644
  %18 = bitcast %union.tree_node** %version63 to i32*, !dbg !2644
  %19 = load i32, i32* %18, align 8, !dbg !2644
  %conv64 = zext i32 %19 to i64, !dbg !2644
  %cmp65 = icmp ult i64 %conv64, %n, !dbg !2645
  br i1 %cmp65, label %land.lhs.true67, label %cleanup81, !dbg !2646

land.lhs.true67:                                  ; preds = %land.lhs.true61
  %value72 = getelementptr inbounds %struct.phiprop_d, %struct.phiprop_d* %phivn, i64 %conv64, i32 0, !dbg !2647
  %20 = load %union.tree_node*, %union.tree_node** %value72, align 8, !dbg !2647
  %cmp73 = icmp eq %union.tree_node* %20, null, !dbg !2648
  br i1 %cmp73, label %cleanup81, label %land.lhs.true75, !dbg !2649

land.lhs.true75:                                  ; preds = %land.lhs.true67
  %call76 = call fastcc zeroext i8 @phivn_valid_p(%struct.phiprop_d* %phivn, %union.tree_node* %arg.0.lcssa, %struct.basic_block_def* %bb) #8, !dbg !2650
  %tobool78 = icmp eq i8 %call76, 0, !dbg !2650
  br i1 %tobool78, label %cleanup81, label %if.end80, !dbg !2651

if.end80:                                         ; preds = %land.lhs.true75, %lor.lhs.false48
  br label %cleanup81, !dbg !2652

cleanup81.loopexit:                               ; preds = %cleanup
  %cleanup.dest.slot.0.lcssa = phi i32 [ %cleanup.dest.slot.0, %cleanup ]
  br label %cleanup81

cleanup81:                                        ; preds = %cleanup81.loopexit, %land.lhs.true75, %land.lhs.true67, %land.lhs.true54, %land.lhs.true61, %if.end80
  %cleanup.dest.slot.1 = phi i32 [ 0, %if.end80 ], [ 1, %land.lhs.true75 ], [ 1, %land.lhs.true67 ], [ 1, %land.lhs.true61 ], [ 1, %land.lhs.true54 ], [ %cleanup.dest.slot.0.lcssa, %cleanup81.loopexit ]
  %cond = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond, label %for.inc, label %cleanup171.loopexit11

for.inc:                                          ; preds = %cleanup81
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %i, metadata !2571, metadata !DIExpression(DW_OP_deref)), !dbg !2597
  %call84 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %i) #8, !dbg !2612
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call84, metadata !2569, metadata !DIExpression()), !dbg !2597
  br label %for.cond, !dbg !2612, !llvm.loop !2653

while.cond85:                                     ; preds = %while.cond85.preheader, %while.body94
  %ptr.0 = phi %union.tree_node* [ %call95, %while.body94 ], [ %call1, %while.cond85.preheader ], !dbg !2597
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr.0, metadata !2557, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %use_stmt, metadata !2558, metadata !DIExpression(DW_OP_deref)), !dbg !2597
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d** %use, metadata !2570, metadata !DIExpression(DW_OP_deref)), !dbg !2597
  %call86 = call fastcc zeroext i8 @single_imm_use(%union.tree_node* %ptr.0, %struct.ssa_use_operand_d** nonnull %use, %union.gimple_statement_d** nonnull %use_stmt) #8, !dbg !2655
  %tobool88 = icmp eq i8 %call86, 0, !dbg !2655
  br i1 %tobool88, label %while.end96, label %land.rhs89, !dbg !2656

land.rhs89:                                       ; preds = %while.cond85
  %21 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2657
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %21, metadata !2558, metadata !DIExpression()), !dbg !2597
  %call90 = call zeroext i8 @gimple_assign_ssa_name_copy_p(%union.gimple_statement_d* %21) #6, !dbg !2658
  %tobool92 = icmp eq i8 %call90, 0, !dbg !2656
  br i1 %tobool92, label %while.end96, label %while.body94, !dbg !2613

while.body94:                                     ; preds = %land.rhs89
  %22 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2659
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %22, metadata !2558, metadata !DIExpression()), !dbg !2597
  %call95 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %22) #8, !dbg !2660
  call void @llvm.dbg.value(metadata %union.tree_node* %call95, metadata !2557, metadata !DIExpression()), !dbg !2597
  br label %while.cond85, !dbg !2613, !llvm.loop !2661

while.end96:                                      ; preds = %land.rhs89, %while.cond85
  %ptr.0.lcssa = phi %union.tree_node* [ %ptr.0, %land.rhs89 ], [ %ptr.0, %while.cond85 ], !dbg !2597
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr.0.lcssa, metadata !2557, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr.0.lcssa, metadata !2557, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr.0.lcssa, metadata !2557, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr.0.lcssa, metadata !2557, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr.0.lcssa, metadata !2557, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr.0.lcssa, metadata !2557, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8 0, metadata !2584, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !2561, metadata !DIExpression(DW_OP_deref)), !dbg !2597
  %call97 = call fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %ui, %union.tree_node* %ptr.0.lcssa) #8, !dbg !2663
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call97, metadata !2558, metadata !DIExpression()), !dbg !2597
  %version154 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2664
  %23 = bitcast %union.tree_node** %version154 to i32*, !dbg !2664
  %24 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2664
  br label %for.cond98, !dbg !2663

for.cond98:                                       ; preds = %cleanup164, %while.end96
  %storemerge = phi %union.gimple_statement_d* [ %call97, %while.end96 ], [ %call169, %cleanup164 ], !dbg !2667
  %res.0 = phi %union.tree_node* [ null, %while.end96 ], [ %res.3, %cleanup164 ], !dbg !2668
  %phi_inserted.0 = phi i8 [ 0, %while.end96 ], [ %phi_inserted.3, %cleanup164 ], !dbg !2669
  store %union.gimple_statement_d* %storemerge, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2667
  call void @llvm.dbg.value(metadata i8 %phi_inserted.0, metadata !2584, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %union.tree_node* %res.0, metadata !2559, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !2561, metadata !DIExpression(DW_OP_deref)), !dbg !2597
  %call99 = call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* nonnull %ui) #8, !dbg !2670
  %tobool100 = icmp eq i8 %call99, 0, !dbg !2670
  br i1 %tobool100, label %for.body102, label %cleanup171.loopexit, !dbg !2663

for.body102:                                      ; preds = %for.cond98
  %25 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2671
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %25, metadata !2558, metadata !DIExpression()), !dbg !2597
  %call104 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %25) #8, !dbg !2673
  %tobool106 = icmp eq i8 %call104, 0, !dbg !2673
  br i1 %tobool106, label %cleanup164, label %land.lhs.true107, !dbg !2674

land.lhs.true107:                                 ; preds = %for.body102
  %26 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2675
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %26, metadata !2558, metadata !DIExpression()), !dbg !2597
  %call108 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %26) #8, !dbg !2675
  %27 = getelementptr inbounds %union.tree_node, %union.tree_node* %call108, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2675
  %bf.load110 = load i64, i64* %27, align 8, !dbg !2675
  %bf.cast1125 = and i64 %bf.load110, 65535, !dbg !2676
  %cmp113 = icmp eq i64 %bf.cast1125, 141, !dbg !2676
  br i1 %cmp113, label %land.lhs.true115, label %cleanup164, !dbg !2677

land.lhs.true115:                                 ; preds = %land.lhs.true107
  %28 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2678
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %28, metadata !2558, metadata !DIExpression()), !dbg !2597
  %call116 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %28) #8, !dbg !2679
  %cmp117 = icmp eq i32 %call116, 47, !dbg !2680
  br i1 %cmp117, label %land.lhs.true119, label %cleanup164, !dbg !2681

land.lhs.true119:                                 ; preds = %land.lhs.true115
  %29 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2682
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %29, metadata !2558, metadata !DIExpression()), !dbg !2597
  %call120 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %29) #8, !dbg !2682
  %operands122 = getelementptr inbounds %union.tree_node, %union.tree_node* %call120, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2682
  %30 = load %union.tree_node*, %union.tree_node** %operands122, align 8, !dbg !2682
  %cmp124 = icmp eq %union.tree_node* %30, %ptr.0.lcssa, !dbg !2683
  br i1 %cmp124, label %land.lhs.true126, label %cleanup164, !dbg !2684

land.lhs.true126:                                 ; preds = %land.lhs.true119
  %31 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2685
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %31, metadata !2558, metadata !DIExpression()), !dbg !2597
  %call127 = call zeroext i8 @stmt_can_throw_internal(%union.gimple_statement_d* %31) #6, !dbg !2686
  %tobool128 = icmp eq i8 %call127, 0, !dbg !2686
  br i1 %tobool128, label %if.end130, label %cleanup164, !dbg !2687

if.end130:                                        ; preds = %land.lhs.true126
  %32 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2688
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %32, metadata !2558, metadata !DIExpression()), !dbg !2597
  %call131 = call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %32) #8, !dbg !2689
  call void @llvm.dbg.value(metadata %union.tree_node* %call131, metadata !2595, metadata !DIExpression()), !dbg !2690
  %def_stmt133 = getelementptr inbounds %union.tree_node, %union.tree_node* %call131, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2691
  %33 = bitcast %union.tree_node** %def_stmt133 to %union.gimple_statement_d**, !dbg !2691
  %34 = load %union.gimple_statement_d*, %union.gimple_statement_d** %33, align 8, !dbg !2691
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %34, metadata !2591, metadata !DIExpression()), !dbg !2690
  %35 = getelementptr inbounds %union.tree_node, %union.tree_node* %call131, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2692
  %bf.load135 = load i64, i64* %35, align 8, !dbg !2692
  %bf.cast1386 = and i64 %bf.load135, 4294967296, !dbg !2692
  %tobool139 = icmp eq i64 %bf.cast1386, 0, !dbg !2692
  br i1 %tobool139, label %land.lhs.true140, label %if.end149, !dbg !2694

land.lhs.true140:                                 ; preds = %if.end130
  %call141 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %34) #8, !dbg !2695
  %cmp142 = icmp eq %struct.basic_block_def* %call141, %bb, !dbg !2696
  br i1 %cmp142, label %cleanup164, label %lor.lhs.false144, !dbg !2697

lor.lhs.false144:                                 ; preds = %land.lhs.true140
  %call145 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %34) #8, !dbg !2698
  %call146 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %bb, %struct.basic_block_def* %call145) #6, !dbg !2699
  %tobool147 = icmp eq i8 %call146, 0, !dbg !2699
  br i1 %tobool147, label %cleanup164, label %if.end149, !dbg !2700

if.end149:                                        ; preds = %lor.lhs.false144, %if.end130
  %tobool150 = icmp eq i8 %phi_inserted.0, 0, !dbg !2701
  %36 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2702
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %36, metadata !2558, metadata !DIExpression()), !dbg !2597
  br i1 %tobool150, label %if.then151, label %if.else, !dbg !2703

if.then151:                                       ; preds = %if.end149
  %call152 = call fastcc %union.tree_node* @phiprop_insert_phi(%struct.basic_block_def* %bb, %union.gimple_statement_d* %phi, %union.gimple_statement_d* %36, %struct.phiprop_d* %phivn, i64 %n) #8, !dbg !2704
  call void @llvm.dbg.value(metadata %union.tree_node* %call152, metadata !2559, metadata !DIExpression()), !dbg !2597
  %37 = load i32, i32* %23, align 8, !dbg !2705
  %idxprom155 = zext i32 %37 to i64, !dbg !2706
  %value157 = getelementptr inbounds %struct.phiprop_d, %struct.phiprop_d* %phivn, i64 %idxprom155, i32 0, !dbg !2707
  store %union.tree_node* %call152, %union.tree_node** %value157, align 8, !dbg !2708
  %38 = load i32, i32* %23, align 8, !dbg !2709
  %idxprom160 = zext i32 %38 to i64, !dbg !2710
  %vuse162 = getelementptr inbounds %struct.phiprop_d, %struct.phiprop_d* %phivn, i64 %idxprom160, i32 1, !dbg !2711
  store %union.tree_node* %call131, %union.tree_node** %vuse162, align 8, !dbg !2712
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %24) #7, !dbg !2713
  %39 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2714
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %39, metadata !2558, metadata !DIExpression()), !dbg !2597
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* %39) #6, !dbg !2713
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %24, i64 24, i1 false), !dbg !2713
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %24) #7, !dbg !2713
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2560, metadata !DIExpression(DW_OP_deref)), !dbg !2597
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 0) #6, !dbg !2715
  call void @llvm.dbg.value(metadata i8 1, metadata !2584, metadata !DIExpression()), !dbg !2597
  br label %cleanup164, !dbg !2716

if.else:                                          ; preds = %if.end149
  call fastcc void @gimple_assign_set_rhs1(%union.gimple_statement_d* %36, %union.tree_node* %res.0) #8, !dbg !2717
  %40 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2719
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %40, metadata !2558, metadata !DIExpression()), !dbg !2597
  call fastcc void @update_stmt(%union.gimple_statement_d* %40) #8, !dbg !2720
  br label %cleanup164

cleanup164:                                       ; preds = %lor.lhs.false144, %land.lhs.true126, %for.body102, %land.lhs.true140, %if.else, %if.then151, %land.lhs.true107, %land.lhs.true115, %land.lhs.true119
  %res.3 = phi %union.tree_node* [ %res.0, %land.lhs.true126 ], [ %res.0, %land.lhs.true119 ], [ %res.0, %land.lhs.true115 ], [ %res.0, %land.lhs.true107 ], [ %res.0, %for.body102 ], [ %res.0, %lor.lhs.false144 ], [ %res.0, %land.lhs.true140 ], [ %res.0, %if.else ], [ %call152, %if.then151 ], !dbg !2668
  %phi_inserted.3 = phi i8 [ %phi_inserted.0, %land.lhs.true126 ], [ %phi_inserted.0, %land.lhs.true119 ], [ %phi_inserted.0, %land.lhs.true115 ], [ %phi_inserted.0, %land.lhs.true107 ], [ %phi_inserted.0, %for.body102 ], [ %phi_inserted.0, %lor.lhs.false144 ], [ %phi_inserted.0, %land.lhs.true140 ], [ %phi_inserted.0, %if.else ], [ 1, %if.then151 ], !dbg !2669
  call void @llvm.dbg.value(metadata i8 %phi_inserted.3, metadata !2584, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %union.tree_node* %res.3, metadata !2559, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !2561, metadata !DIExpression(DW_OP_deref)), !dbg !2597
  %call169 = call fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %ui) #8, !dbg !2670
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call169, metadata !2558, metadata !DIExpression()), !dbg !2597
  br label %for.cond98, !dbg !2670, !llvm.loop !2721

cleanup171.loopexit:                              ; preds = %for.cond98
  %phi_inserted.0.lcssa = phi i8 [ %phi_inserted.0, %for.cond98 ], !dbg !2669
  call void @llvm.dbg.value(metadata i8 %phi_inserted.0.lcssa, metadata !2584, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8 %phi_inserted.0.lcssa, metadata !2584, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8 %phi_inserted.0.lcssa, metadata !2584, metadata !DIExpression()), !dbg !2597
  br label %cleanup171, !dbg !2723

cleanup171.loopexit11:                            ; preds = %cleanup81
  br label %cleanup171, !dbg !2723

cleanup171:                                       ; preds = %cleanup171.loopexit11, %cleanup171.loopexit, %lor.lhs.false9, %lor.lhs.false
  %retval.4 = phi i8 [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false ], [ %phi_inserted.0.lcssa, %cleanup171.loopexit ], [ 0, %cleanup171.loopexit11 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7, !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %2) #7, !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2723
  ret i8 %retval.4, !dbg !2723
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2724 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2728, metadata !DIExpression()), !dbg !2729
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2730
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2730
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2731
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2731
  ret %union.gimple_statement_d* %1, !dbg !2732
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2733 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2738, metadata !DIExpression()), !dbg !2739
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2740
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2740
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2741
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2741
  %2 = load i64, i64* %1, align 8, !dbg !2741
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2742
  store i64 %2, i64* %3, align 8, !dbg !2742
  ret void, !dbg !2743
}

declare dso_local void @gsi_commit_edge_inserts() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** %vec_) unnamed_addr #0 !dbg !2744 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !2749, metadata !DIExpression()), !dbg !2750
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !2751
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !2751
  br i1 %tobool, label %if.end, label %if.then, !dbg !2753

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_basic_block_heap* %0 to i8*, !dbg !2753
  tail call void @free(i8* nonnull %1) #6, !dbg !2751
  br label %if.end, !dbg !2751

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !2753
  ret void, !dbg !2753
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2754 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2758, metadata !DIExpression()), !dbg !2759
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #8, !dbg !2760
  %tobool = icmp eq i8 %call, 0, !dbg !2760
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2760

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2760
  br label %cond.end, !dbg !2760

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2761
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2761
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2761
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2761

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2761
  br label %cond.end5, !dbg !2761

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2761
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !2761
  ret %struct.edge_def* %call7, !dbg !2762
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2763 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2767, metadata !DIExpression()), !dbg !2768
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2769
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2769
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2769
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2769

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2769
  br label %cond.end, !dbg !2769

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2769
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2769
  %cmp = icmp eq i32 %call, 1, !dbg !2770
  %conv2 = zext i1 %cmp to i8, !dbg !2769
  ret i8 %conv2, !dbg !2771
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2772 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2778, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2779, metadata !DIExpression()), !dbg !2780
  br label %land.end, !dbg !2781

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2781
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2781
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2781
  ret %struct.edge_def* %0, !dbg !2781
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2782 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2786, metadata !DIExpression()), !dbg !2787
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2788
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2788

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2788
  %0 = load i32, i32* %num, align 8, !dbg !2788
  br label %cond.end, !dbg !2788

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2788
  ret i32 %cond, !dbg !2788
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !2789 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !2795, metadata !DIExpression()), !dbg !2796
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !2797
  ret %union.tree_node* %0, !dbg !2798
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2799 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2803, metadata !DIExpression()), !dbg !2804
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !2805
  ret %union.tree_node** %result, !dbg !2806
}

declare dso_local zeroext i8 @is_gimple_reg_type(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %phi, i32 %flags) unnamed_addr #0 !dbg !2807 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2812, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !2813, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2814, metadata !DIExpression()), !dbg !2817
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #8, !dbg !2818
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2815, metadata !DIExpression()), !dbg !2817
  tail call fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !2819
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2820
  store i8 0, i8* %done, align 8, !dbg !2821
  %and = and i32 %flags, 5, !dbg !2822
  %cmp = icmp eq i32 %and, 0, !dbg !2822
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2822

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 918, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2822
  br label %cond.end, !dbg !2822

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !2823
  %tobool = icmp eq i8 %call1, 0, !dbg !2823
  %cond2 = select i1 %tobool, i32 4, i32 1, !dbg !2823
  call void @llvm.dbg.value(metadata i32 %cond2, metadata !2816, metadata !DIExpression()), !dbg !2817
  %and3 = and i32 %cond2, %flags, !dbg !2824
  %cmp4 = icmp eq i32 %and3, 0, !dbg !2826
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2827

if.then:                                          ; preds = %cond.end
  store i8 1, i8* %done, align 8, !dbg !2828
  br label %cleanup, !dbg !2830

if.end:                                           ; preds = %cond.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !2831
  store %union.gimple_statement_d* %phi, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !2832
  %call7 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #8, !dbg !2833
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !2834
  store i32 %call7, i32* %num_phi, align 4, !dbg !2835
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !2836
  store i32 2, i32* %iter_type, align 4, !dbg !2837
  %call8 = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !2838
  br label %cleanup, !dbg !2839

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ null, %if.then ], [ %call8, %if.end ], !dbg !2817
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !2840
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2841 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2847, metadata !DIExpression()), !dbg !2848
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2849
  %0 = load i8, i8* %done, align 8, !dbg !2849
  ret i8 %0, !dbg !2850
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !2851 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !2855, metadata !DIExpression()), !dbg !2856
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !2857
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2857
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2858
  ret %union.tree_node* %1, !dbg !2859
}

declare dso_local zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2860 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2865, metadata !DIExpression()), !dbg !2866
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !2867
  ret %union.tree_node* %call, !dbg !2868
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @phivn_valid_p(%struct.phiprop_d* %phivn, %union.tree_node* %name, %struct.basic_block_def* %bb) unnamed_addr #5 !dbg !2869 {
entry:
  %ui2 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.phiprop_d* %phivn, metadata !2873, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !2874, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2875, metadata !DIExpression()), !dbg !2880
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2881
  %0 = bitcast %union.tree_node** %version to i32*, !dbg !2881
  %1 = load i32, i32* %0, align 8, !dbg !2881
  %idxprom = zext i32 %1 to i64, !dbg !2882
  %vuse1 = getelementptr inbounds %struct.phiprop_d, %struct.phiprop_d* %phivn, i64 %idxprom, i32 1, !dbg !2883
  %2 = load %union.tree_node*, %union.tree_node** %vuse1, align 8, !dbg !2883
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2876, metadata !DIExpression()), !dbg !2880
  %3 = bitcast %struct.immediate_use_iterator_d* %ui2 to i8*, !dbg !2884
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #7, !dbg !2884
  call void @llvm.dbg.value(metadata i8 1, metadata !2879, metadata !DIExpression()), !dbg !2880
  %cmp = icmp eq %union.tree_node* %2, null, !dbg !2885
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2885

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2885
  br label %cond.end, !dbg !2885

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui2, metadata !2878, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  %call = call fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %ui2, %union.tree_node* %2) #8, !dbg !2886
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2877, metadata !DIExpression()), !dbg !2880
  br label %for.cond, !dbg !2886

for.cond:                                         ; preds = %for.inc, %cond.end
  %use_stmt.0 = phi %union.gimple_statement_d* [ %call, %cond.end ], [ %call10, %for.inc ], !dbg !2888
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %use_stmt.0, metadata !2877, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui2, metadata !2878, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  %call2 = call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* nonnull %ui2) #8, !dbg !2889
  %tobool = icmp eq i8 %call2, 0, !dbg !2889
  br i1 %tobool, label %for.body, label %for.end.loopexit, !dbg !2886

for.body:                                         ; preds = %for.cond
  %call3 = call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %use_stmt.0) #8, !dbg !2891
  %cmp4 = icmp eq %union.tree_node* %call3, null, !dbg !2894
  br i1 %cmp4, label %lor.lhs.false, label %land.lhs.true, !dbg !2895

lor.lhs.false:                                    ; preds = %for.body
  %call5 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %use_stmt.0) #8, !dbg !2896
  %cmp6 = icmp eq i32 %call5, 16, !dbg !2897
  br i1 %cmp6, label %land.lhs.true, label %for.inc, !dbg !2898

land.lhs.true:                                    ; preds = %for.body, %lor.lhs.false
  %call7 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %use_stmt.0) #8, !dbg !2899
  %call8 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %call7, %struct.basic_block_def* %bb) #6, !dbg !2900
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2900
  br i1 %tobool9, label %if.then, label %for.inc, !dbg !2901

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i8 0, metadata !2879, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui2, metadata !2878, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  call fastcc void @end_imm_use_stmt_traverse(%struct.immediate_use_iterator_d* nonnull %ui2) #8, !dbg !2902
  br label %for.end, !dbg !2902

for.inc:                                          ; preds = %land.lhs.true, %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui2, metadata !2878, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  %call10 = call fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %ui2) #8, !dbg !2889
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call10, metadata !2877, metadata !DIExpression()), !dbg !2880
  br label %for.cond, !dbg !2889, !llvm.loop !2905

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !2907

for.end:                                          ; preds = %for.end.loopexit, %if.then
  %ok.0 = phi i8 [ 0, %if.then ], [ 1, %for.end.loopexit ], !dbg !2880
  call void @llvm.dbg.value(metadata i8 %ok.0, metadata !2879, metadata !DIExpression()), !dbg !2880
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #7, !dbg !2907
  ret i8 %ok.0, !dbg !2908
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2909 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2913, metadata !DIExpression()), !dbg !2915
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !2916
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !2916
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !2918
  br i1 %tobool, label %if.end, label %if.then, !dbg !2919

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !2920
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !2914, metadata !DIExpression()), !dbg !2915
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !2922
  %2 = load i64, i64* %1, align 8, !dbg !2922
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !2923
  store i64 %2, i64* %3, align 8, !dbg !2923
  br label %cleanup, !dbg !2924

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !2925
  %4 = load i32, i32* %phi_i, align 8, !dbg !2925
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !2927
  %5 = load i32, i32* %num_phi, align 4, !dbg !2927
  %cmp = icmp slt i32 %4, %5, !dbg !2928
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !2929

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !2930
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !2930
  %inc = add nsw i32 %4, 1, !dbg !2930
  store i32 %inc, i32* %phi_i, align 8, !dbg !2930
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #8, !dbg !2930
  br label %cleanup, !dbg !2932

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2933
  store i8 1, i8* %done, align 8, !dbg !2934
  br label %cleanup, !dbg !2935

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !2915
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !2936
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_imm_use(%union.tree_node* %var, %struct.ssa_use_operand_d** %use_p, %union.gimple_statement_d** %stmt) unnamed_addr #0 !dbg !2937 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2946, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d** %use_p, metadata !2947, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %stmt, metadata !2948, metadata !DIExpression()), !dbg !2956
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2957
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !2957
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !2949, metadata !DIExpression()), !dbg !2956
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !2958
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !2958
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !2958
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !2959
  br i1 %cmp, label %return_false, label %if.end, !dbg !2960

return_false:                                     ; preds = %if.then4, %if.end12, %entry
  call void @llvm.dbg.label(metadata !2953), !dbg !2961
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %use_p, align 8, !dbg !2962
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %stmt, align 8, !dbg !2963
  br label %cleanup, !dbg !2964

if.end:                                           ; preds = %entry
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 1, !dbg !2965
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next2, align 8, !dbg !2965
  %cmp3 = icmp eq %struct.ssa_use_operand_d* %3, %0, !dbg !2967
  br i1 %cmp3, label %if.then4, label %if.end12, !dbg !2968

if.then4:                                         ; preds = %if.end
  %stmt6 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 2, i32 0, !dbg !2969
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt6, align 8, !dbg !2969
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %4) #8, !dbg !2972
  %tobool = icmp eq i8 %call, 0, !dbg !2972
  br i1 %tobool, label %if.then7, label %return_false, !dbg !2973

if.then7:                                         ; preds = %if.then4
  %5 = bitcast i40* %next to i64*, !dbg !2974
  %6 = load i64, i64* %5, align 8, !dbg !2974
  %7 = bitcast %struct.ssa_use_operand_d** %use_p to i64*, !dbg !2976
  store i64 %6, i64* %7, align 8, !dbg !2976
  %8 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !2977
  %stmt11 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %8, i64 0, i32 2, i32 0, !dbg !2978
  %9 = bitcast %union.gimple_statement_d** %stmt11 to i64*, !dbg !2978
  %10 = load i64, i64* %9, align 8, !dbg !2978
  %11 = bitcast %union.gimple_statement_d** %stmt to i64*, !dbg !2979
  store i64 %10, i64* %11, align 8, !dbg !2979
  br label %cleanup, !dbg !2980

if.end12:                                         ; preds = %if.end
  %12 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !2981
  %tobool13 = icmp eq i32 %12, 0, !dbg !2981
  br i1 %tobool13, label %return_false, label %if.end15, !dbg !2983

if.end15:                                         ; preds = %if.end12
  %call16 = tail call zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d* nonnull %0, %struct.ssa_use_operand_d** %use_p, %union.gimple_statement_d** %stmt) #6, !dbg !2984
  br label %cleanup, !dbg !2985

cleanup:                                          ; preds = %if.end15, %if.then7, %return_false
  %retval.0 = phi i8 [ 0, %return_false ], [ 1, %if.then7 ], [ %call16, %if.end15 ], !dbg !2956
  ret i8 %retval.0, !dbg !2986
}

declare dso_local zeroext i8 @gimple_assign_ssa_name_copy_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2987 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2989, metadata !DIExpression()), !dbg !2990
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !2991
  ret %union.tree_node* %call, !dbg !2992
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !2993 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2998, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2999, metadata !DIExpression()), !dbg !3000
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3001
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3002
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !3003
  store i40* %imm_uses, i40** %0, align 8, !dbg !3003
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !3004
  %1 = bitcast i40* %next to i64*, !dbg !3004
  %2 = load i64, i64* %1, align 8, !dbg !3004
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3005
  store i64 %2, i64* %3, align 8, !dbg !3005
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !3006
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next_imm_name, align 8, !dbg !3007
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !3008
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3009
  %next3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !3010
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next3, align 8, !dbg !3011
  %stmt = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 2, i32 0, !dbg !3012
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %stmt, align 8, !dbg !3013
  %use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 3, !dbg !3014
  store %union.tree_node** null, %union.tree_node*** %use, align 8, !dbg !3015
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #8, !dbg !3016
  %tobool = icmp eq i8 %call, 0, !dbg !3016
  br i1 %tobool, label %if.end, label %return, !dbg !3018

if.end:                                           ; preds = %entry
  %imm_use6 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3019
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !3019
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #8, !dbg !3020
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !3021
  %stmt9 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !3021
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt9, align 8, !dbg !3021
  br label %return, !dbg !3022

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end ], [ null, %entry ], !dbg !3000
  ret %union.gimple_statement_d* %retval.0, !dbg !3023
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3024 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3030, metadata !DIExpression()), !dbg !3031
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3032
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3032
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3033
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !3033
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !3034
  %conv1 = zext i1 %cmp to i8, !dbg !3035
  ret i8 %conv1, !dbg !3036
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3037 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3041, metadata !DIExpression()), !dbg !3042
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3043
  %cmp = icmp eq i32 %call, 6, !dbg !3044
  %conv1 = zext i1 %cmp to i8, !dbg !3043
  ret i8 %conv1, !dbg !3045
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3046 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3050, metadata !DIExpression()), !dbg !3052
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #8, !dbg !3053
  call void @llvm.dbg.value(metadata i32 %call, metadata !3051, metadata !DIExpression()), !dbg !3052
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #8, !dbg !3054
  %cmp = icmp eq i32 %call1, 3, !dbg !3056
  br i1 %cmp, label %if.then, label %if.end, !dbg !3057

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #8, !dbg !3058
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3058
  %bf.load = load i64, i64* %0, align 8, !dbg !3058
  %1 = trunc i64 %bf.load to i32, !dbg !3058
  %bf.cast = and i32 %1, 65535, !dbg !3058
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3051, metadata !DIExpression()), !dbg !3052
  br label %if.end, !dbg !3059

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3052
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3051, metadata !DIExpression()), !dbg !3052
  ret i32 %code.0, !dbg !3060
}

declare dso_local zeroext i8 @stmt_can_throw_internal(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3061 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3063, metadata !DIExpression()), !dbg !3064
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !3065
  %tobool = icmp eq i8 %call, 0, !dbg !3065
  br i1 %tobool, label %return, label %if.end, !dbg !3067

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !3068
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !3068
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3068
  br label %return, !dbg !3069

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3064
  ret %union.tree_node* %retval.0, !dbg !3070
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3071 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3075, metadata !DIExpression()), !dbg !3076
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3077
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3077
  ret %struct.basic_block_def* %0, !dbg !3078
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @phiprop_insert_phi(%struct.basic_block_def* %bb, %union.gimple_statement_d* %phi, %union.gimple_statement_d* %use_stmt, %struct.phiprop_d* %phivn, i64 %n) unnamed_addr #5 !dbg !3079 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3083, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3084, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %use_stmt, metadata !3085, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.phiprop_d* %phivn, metadata !3086, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i64 %n, metadata !3087, metadata !DIExpression()), !dbg !3107
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3108
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3108
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !3109
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3109
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %use_stmt) #8, !dbg !3110
  %tobool = icmp eq i8 %call, 0, !dbg !3110
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !3110

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %use_stmt) #8, !dbg !3110
  %cmp = icmp eq i32 %call1, 47, !dbg !3110
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3110

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3110
  br label %cond.end, !dbg !3110

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %use_stmt) #8, !dbg !3111
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3088, metadata !DIExpression()), !dbg !3107
  %call4 = tail call %union.gimple_statement_d* @create_phi_node(%union.tree_node* %call3, %struct.basic_block_def* %bb) #6, !dbg !3112
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call4, metadata !3089, metadata !DIExpression()), !dbg !3107
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3113
  %2 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3113
  store %union.gimple_statement_d* %call4, %union.gimple_statement_d** %2, align 8, !dbg !3114
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3115
  %tobool5 = icmp eq %struct._IO_FILE* %3, null, !dbg !3115
  br i1 %tobool5, label %if.end, label %land.lhs.true6, !dbg !3117

land.lhs.true6:                                   ; preds = %cond.end
  %4 = load i32, i32* @dump_flags, align 4, !dbg !3118
  %and = and i32 %4, 8, !dbg !3119
  %tobool7 = icmp eq i32 %and, 0, !dbg !3119
  br i1 %tobool7, label %if.end, label %if.then, !dbg !3120

if.then:                                          ; preds = %land.lhs.true6
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3121
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3123
  tail call void @print_gimple_stmt(%struct._IO_FILE* %5, %union.gimple_statement_d* %use_stmt, i32 0, i32 0) #6, !dbg !3124
  br label %if.end, !dbg !3125

if.end:                                           ; preds = %land.lhs.true6, %cond.end, %if.then
  %6 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3126
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3126
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3126
  %call9 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3126
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3126
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call9, 0, !dbg !3126
  store i32 %8, i32* %7, align 8, !dbg !3126
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3126
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call9, 1, !dbg !3126
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %9, align 8, !dbg !3126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !3126
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3126
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3127
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3127
  br label %for.cond, !dbg !3126

for.cond:                                         ; preds = %if.end113, %if.end
  %13 = load i32, i32* %11, align 8, !dbg !3128
  %14 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !3128
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3097, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  %call10 = call fastcc zeroext i8 @ei_cond(i32 %13, %struct.VEC_edge_gc** %14, %struct.edge_def** nonnull %e) #8, !dbg !3128
  %tobool11 = icmp eq i8 %call10, 0, !dbg !3126
  br i1 %tobool11, label %for.end, label %for.body, !dbg !3126

for.body:                                         ; preds = %for.cond
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3129
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !3097, metadata !DIExpression()), !dbg !3107
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 6, !dbg !3129
  %16 = load i32, i32* %dest_idx, align 4, !dbg !3129
  %call13 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 %16) #8, !dbg !3129
  %call14 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call13) #8, !dbg !3129
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !3098, metadata !DIExpression()), !dbg !3130
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3131
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !3097, metadata !DIExpression()), !dbg !3107
  %call15 = call fastcc i32 @gimple_phi_arg_location_from_edge(%union.gimple_statement_d* %phi, %struct.edge_def* %17) #8, !dbg !3132
  call void @llvm.dbg.value(metadata i32 %call15, metadata !3104, metadata !DIExpression()), !dbg !3130
  br label %while.cond, !dbg !3133

while.cond:                                       ; preds = %while.body, %for.body
  %old_arg.0 = phi %union.tree_node* [ %call14, %for.body ], [ %call29, %while.body ], !dbg !3130
  %locus.0 = phi i32 [ %call15, %for.body ], [ %call30, %while.body ], !dbg !3130
  call void @llvm.dbg.value(metadata i32 %locus.0, metadata !3104, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata %union.tree_node* %old_arg.0, metadata !3098, metadata !DIExpression()), !dbg !3130
  %18 = getelementptr inbounds %union.tree_node, %union.tree_node* %old_arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3134
  %bf.load = load i64, i64* %18, align 8, !dbg !3134
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3135
  %cmp16 = icmp eq i64 %bf.cast1, 141, !dbg !3135
  br i1 %cmp16, label %land.rhs, label %while.end, !dbg !3136

land.rhs:                                         ; preds = %while.cond
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %old_arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3137
  %19 = bitcast %union.tree_node** %version to i32*, !dbg !3137
  %20 = load i32, i32* %19, align 8, !dbg !3137
  %conv19 = zext i32 %20 to i64, !dbg !3137
  %cmp20 = icmp ult i64 %conv19, %n, !dbg !3138
  br i1 %cmp20, label %lor.rhs, label %while.body, !dbg !3139

lor.rhs:                                          ; preds = %land.rhs
  %value = getelementptr inbounds %struct.phiprop_d, %struct.phiprop_d* %phivn, i64 %conv19, i32 0, !dbg !3140
  %21 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !3140
  %cmp24 = icmp eq %union.tree_node* %21, null, !dbg !3141
  br i1 %cmp24, label %while.body, label %while.end, !dbg !3133

while.body:                                       ; preds = %land.rhs, %lor.rhs
  %def_stmt28 = getelementptr inbounds %union.tree_node, %union.tree_node* %old_arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3142
  %22 = bitcast %union.tree_node** %def_stmt28 to %union.gimple_statement_d**, !dbg !3142
  %23 = load %union.gimple_statement_d*, %union.gimple_statement_d** %22, align 8, !dbg !3142
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %23, metadata !3105, metadata !DIExpression()), !dbg !3143
  %call29 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %23) #8, !dbg !3144
  call void @llvm.dbg.value(metadata %union.tree_node* %call29, metadata !3098, metadata !DIExpression()), !dbg !3130
  %call30 = call fastcc i32 @gimple_location(%union.gimple_statement_d* %23) #8, !dbg !3145
  call void @llvm.dbg.value(metadata i32 %call30, metadata !3104, metadata !DIExpression()), !dbg !3130
  br label %while.cond, !dbg !3133, !llvm.loop !3146

while.end:                                        ; preds = %while.cond, %lor.rhs
  %old_arg.0.lcssa = phi %union.tree_node* [ %old_arg.0, %while.cond ], [ %old_arg.0, %lor.rhs ], !dbg !3130
  %locus.0.lcssa = phi i32 [ %locus.0, %while.cond ], [ %locus.0, %lor.rhs ], !dbg !3130
  %bf.cast1.lcssa = phi i64 [ %bf.cast1, %while.cond ], [ %bf.cast1, %lor.rhs ], !dbg !3135
  %cmp16.lcssa = phi i1 [ %cmp16, %while.cond ], [ %cmp16, %lor.rhs ], !dbg !3135
  call void @llvm.dbg.value(metadata %union.tree_node* %old_arg.0.lcssa, metadata !3098, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata %union.tree_node* %old_arg.0.lcssa, metadata !3098, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 %locus.0.lcssa, metadata !3104, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 %locus.0.lcssa, metadata !3104, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata %union.tree_node* %old_arg.0.lcssa, metadata !3098, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata %union.tree_node* %old_arg.0.lcssa, metadata !3098, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 %locus.0.lcssa, metadata !3104, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 %locus.0.lcssa, metadata !3104, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata %union.tree_node* %old_arg.0.lcssa, metadata !3098, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata %union.tree_node* %old_arg.0.lcssa, metadata !3098, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 %locus.0.lcssa, metadata !3104, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 %locus.0.lcssa, metadata !3104, metadata !DIExpression()), !dbg !3130
  br i1 %cmp16.lcssa, label %if.then37, label %if.else, !dbg !3148

if.then37:                                        ; preds = %while.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3149
  %tobool38 = icmp eq %struct._IO_FILE* %24, null, !dbg !3149
  br i1 %tobool38, label %if.end54, label %land.lhs.true39, !dbg !3153

land.lhs.true39:                                  ; preds = %if.then37
  %25 = load i32, i32* @dump_flags, align 4, !dbg !3154
  %and40 = and i32 %25, 8, !dbg !3155
  %tobool41 = icmp eq i32 %and40, 0, !dbg !3155
  br i1 %tobool41, label %if.end54, label %if.then42, !dbg !3156

if.then42:                                        ; preds = %land.lhs.true39
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3157
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3159
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3160
  call void @llvm.dbg.value(metadata %struct.edge_def* %27, metadata !3097, metadata !DIExpression()), !dbg !3107
  %dest_idx44 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %27, i64 0, i32 6, !dbg !3160
  %28 = load i32, i32* %dest_idx44, align 4, !dbg !3160
  %call45 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 %28) #8, !dbg !3160
  %call46 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call45) #8, !dbg !3160
  call void @print_generic_expr(%struct._IO_FILE* %26, %union.tree_node* %call46, i32 0) #6, !dbg !3161
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3162
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3163
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3164
  %version49 = getelementptr inbounds %union.tree_node, %union.tree_node* %old_arg.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3165
  %31 = bitcast %union.tree_node** %version49 to i32*, !dbg !3165
  %32 = load i32, i32* %31, align 8, !dbg !3165
  %idxprom50 = zext i32 %32 to i64, !dbg !3166
  %value52 = getelementptr inbounds %struct.phiprop_d, %struct.phiprop_d* %phivn, i64 %idxprom50, i32 0, !dbg !3167
  %33 = load %union.tree_node*, %union.tree_node** %value52, align 8, !dbg !3167
  call void @print_generic_expr(%struct._IO_FILE* %30, %union.tree_node* %33, i32 0) #6, !dbg !3168
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3169
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3170
  br label %if.end54, !dbg !3171

if.end54:                                         ; preds = %land.lhs.true39, %if.then37, %if.then42
  %version56 = getelementptr inbounds %union.tree_node, %union.tree_node* %old_arg.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3172
  %35 = bitcast %union.tree_node** %version56 to i32*, !dbg !3172
  %36 = load i32, i32* %35, align 8, !dbg !3172
  %idxprom57 = zext i32 %36 to i64, !dbg !3173
  %value59 = getelementptr inbounds %struct.phiprop_d, %struct.phiprop_d* %phivn, i64 %idxprom57, i32 0, !dbg !3174
  %37 = load %union.tree_node*, %union.tree_node** %value59, align 8, !dbg !3174
  call void @llvm.dbg.value(metadata %union.tree_node* %37, metadata !3102, metadata !DIExpression()), !dbg !3130
  br label %if.end113, !dbg !3175

if.else:                                          ; preds = %while.end
  %cmp64 = icmp eq i64 %bf.cast1.lcssa, 121, !dbg !3176
  br i1 %cmp64, label %cond.end68, label %cond.true66, !dbg !3176

cond.true66:                                      ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3176
  br label %cond.end68, !dbg !3176

cond.end68:                                       ; preds = %if.else, %cond.true66
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %old_arg.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3178
  %38 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3178
  call void @llvm.dbg.value(metadata %union.tree_node* %38, metadata !3098, metadata !DIExpression()), !dbg !3130
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %38, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3179
  %39 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3179
  %call71 = call %union.tree_node* @create_tmp_var(%union.tree_node* %39, i8* null) #6, !dbg !3180
  call void @llvm.dbg.value(metadata %union.tree_node* %call71, metadata !3102, metadata !DIExpression()), !dbg !3130
  %call72 = call %union.tree_node* @unshare_expr(%union.tree_node* %38) #6, !dbg !3181
  %call73 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call71, %union.tree_node* %call72) #6, !dbg !3181
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call73, metadata !3103, metadata !DIExpression()), !dbg !3130
  %40 = bitcast %union.tree_node** %type to i64**, !dbg !3182
  %41 = load i64*, i64** %40, align 8, !dbg !3182
  %bf.load77 = load i64, i64* %41, align 8, !dbg !3182
  %bf.cast794 = and i64 %bf.load77, 65535, !dbg !3184
  %cmp80 = icmp eq i64 %bf.cast794, 13, !dbg !3184
  br i1 %cmp80, label %if.then90, label %lor.lhs.false, !dbg !3185

lor.lhs.false:                                    ; preds = %cond.end68
  %cmp88 = icmp eq i64 %bf.cast794, 14, !dbg !3186
  br i1 %cmp88, label %if.then90, label %if.end93, !dbg !3187

if.then90:                                        ; preds = %lor.lhs.false, %cond.end68
  %gimple_reg_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call71, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3188
  %42 = bitcast i40* %gimple_reg_flag to i64*, !dbg !3188
  %bf.load91 = load i64, i64* %42, align 8, !dbg !3189
  %bf.set = or i64 %bf.load91, 134217728, !dbg !3189
  store i64 %bf.set, i64* %42, align 8, !dbg !3189
  br label %if.end93, !dbg !3188

if.end93:                                         ; preds = %if.then90, %lor.lhs.false
  %call94 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call71) #6, !dbg !3190
  %tobool95 = icmp eq i8 %call94, 0, !dbg !3190
  br i1 %tobool95, label %cond.true96, label %cond.end98, !dbg !3190

cond.true96:                                      ; preds = %if.end93
  call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3190
  br label %cond.end98, !dbg !3190

cond.end98:                                       ; preds = %if.end93, %cond.true96
  %call100 = call zeroext i8 @add_referenced_var(%union.tree_node* %call71) #6, !dbg !3191
  %call101 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call71, %union.gimple_statement_d* %call73) #8, !dbg !3192
  call void @llvm.dbg.value(metadata %union.tree_node* %call101, metadata !3102, metadata !DIExpression()), !dbg !3130
  call fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %call73, %union.tree_node* %call101) #8, !dbg !3193
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call73, i32 %locus.0.lcssa) #8, !dbg !3194
  %43 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3195
  call void @llvm.dbg.value(metadata %struct.edge_def* %43, metadata !3097, metadata !DIExpression()), !dbg !3107
  call void @gsi_insert_on_edge(%struct.edge_def* %43, %union.gimple_statement_d* %call73) #6, !dbg !3196
  call fastcc void @update_stmt(%union.gimple_statement_d* %call73) #8, !dbg !3197
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3198
  %tobool102 = icmp eq %struct._IO_FILE* %44, null, !dbg !3198
  br i1 %tobool102, label %if.end113, label %land.lhs.true103, !dbg !3200

land.lhs.true103:                                 ; preds = %cond.end98
  %45 = load i32, i32* @dump_flags, align 4, !dbg !3201
  %and104 = and i32 %45, 8, !dbg !3202
  %tobool105 = icmp eq i32 %and104, 0, !dbg !3202
  br i1 %tobool105, label %if.end113, label %if.then106, !dbg !3203

if.then106:                                       ; preds = %land.lhs.true103
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3204
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3206
  %47 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3207
  call void @llvm.dbg.value(metadata %struct.edge_def* %47, metadata !3097, metadata !DIExpression()), !dbg !3107
  %dest_idx108 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %47, i64 0, i32 6, !dbg !3207
  %48 = load i32, i32* %dest_idx108, align 4, !dbg !3207
  %call109 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 %48) #8, !dbg !3207
  %call110 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call109) #8, !dbg !3207
  call void @print_generic_expr(%struct._IO_FILE* %46, %union.tree_node* %call110, i32 0) #6, !dbg !3208
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3209
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3210
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3211
  call void @print_gimple_stmt(%struct._IO_FILE* %50, %union.gimple_statement_d* %call73, i32 0, i32 0) #6, !dbg !3212
  br label %if.end113, !dbg !3213

if.end113:                                        ; preds = %land.lhs.true103, %cond.end98, %if.then106, %if.end54
  %new_var.0 = phi %union.tree_node* [ %37, %if.end54 ], [ %call101, %if.then106 ], [ %call101, %land.lhs.true103 ], [ %call101, %cond.end98 ], !dbg !3214
  call void @llvm.dbg.value(metadata %union.tree_node* %new_var.0, metadata !3102, metadata !DIExpression()), !dbg !3130
  %51 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3215
  call void @llvm.dbg.value(metadata %struct.edge_def* %51, metadata !3097, metadata !DIExpression()), !dbg !3107
  call void @add_phi_arg(%union.gimple_statement_d* %call4, %union.tree_node* %new_var.0, %struct.edge_def* %51, i32 %locus.0.lcssa) #6, !dbg !3216
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3090, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3128
  br label %for.cond, !dbg !3128, !llvm.loop !3217

for.end:                                          ; preds = %for.cond
  call fastcc void @update_stmt(%union.gimple_statement_d* %call4) #8, !dbg !3219
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3220
  %tobool114 = icmp eq %struct._IO_FILE* %52, null, !dbg !3220
  br i1 %tobool114, label %if.end119, label %land.lhs.true115, !dbg !3222

land.lhs.true115:                                 ; preds = %for.end
  %53 = load i32, i32* @dump_flags, align 4, !dbg !3223
  %and116 = and i32 %53, 8, !dbg !3224
  %tobool117 = icmp eq i32 %and116, 0, !dbg !3224
  br i1 %tobool117, label %if.end119, label %if.then118, !dbg !3225

if.then118:                                       ; preds = %land.lhs.true115
  call void @print_gimple_stmt(%struct._IO_FILE* nonnull %52, %union.gimple_statement_d* %call4, i32 0, i32 0) #6, !dbg !3226
  br label %if.end119, !dbg !3226

if.end119:                                        ; preds = %land.lhs.true115, %for.end, %if.then118
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3227
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3227
  ret %union.tree_node* %call3, !dbg !3228
}

declare dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* sret, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_assign_set_rhs1(%union.gimple_statement_d* %gs, %union.tree_node* %rhs) unnamed_addr #0 !dbg !3229 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3233, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !3234, metadata !DIExpression()), !dbg !3235
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 1, %union.tree_node* %rhs) #8, !dbg !3236
  ret void, !dbg !3237
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3238 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3242, metadata !DIExpression()), !dbg !3243
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #8, !dbg !3244
  %tobool = icmp eq i8 %call, 0, !dbg !3244
  br i1 %tobool, label %if.end, label %if.then, !dbg !3246

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !3247
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !3249
  br label %if.end, !dbg !3250

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3251
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3252 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3256, metadata !DIExpression()), !dbg !3257
  %next = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !3258
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3258
  %1 = load i64, i64* %0, align 8, !dbg !3258
  %2 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3259
  store i64 %1, i64* %2, align 8, !dbg !3259
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #8, !dbg !3260
  %tobool = icmp eq i8 %call, 0, !dbg !3260
  br i1 %tobool, label %if.end4, label %if.then, !dbg !3262

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !3263
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3263
  %cmp = icmp eq %struct.ssa_use_operand_d* %3, null, !dbg !3266
  br i1 %cmp, label %return, label %if.then2, !dbg !3267

if.then2:                                         ; preds = %if.then
  %iter_node3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !3268
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node3) #8, !dbg !3269
  br label %return, !dbg !3269

if.end4:                                          ; preds = %entry
  %imm_use5 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3270
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !3270
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #8, !dbg !3271
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !3272
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !3272
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3272
  br label %return, !dbg !3273

return:                                           ; preds = %if.then, %if.then2, %if.end4
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end4 ], [ null, %if.then2 ], [ null, %if.then ], !dbg !3257
  ret %union.gimple_statement_d* %retval.0, !dbg !3274
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3275 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3277, metadata !DIExpression()), !dbg !3278
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3279
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !3279
  ret %union.tree_node* %0, !dbg !3280
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3281 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3285, metadata !DIExpression()), !dbg !3286
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3287
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !3288
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3289
  store %struct.use_optype_d* null, %struct.use_optype_d** %uses, align 8, !dbg !3290
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3291
  store i32 0, i32* %iter_type, align 4, !dbg !3292
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3293
  store i32 0, i32* %phi_i, align 8, !dbg !3294
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3295
  store i32 0, i32* %num_phi, align 4, !dbg !3296
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3297
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3298
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3299
  store i8 1, i8* %done, align 8, !dbg !3300
  ret void, !dbg !3301
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3302 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3306, metadata !DIExpression()), !dbg !3307
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !3308
  %0 = load i32, i32* %nargs, align 4, !dbg !3308
  ret i32 %0, !dbg !3309
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3310 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3314, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 %i, metadata !3315, metadata !DIExpression()), !dbg !3316
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3317
  %tobool = icmp eq i8 %call, 0, !dbg !3317
  br i1 %tobool, label %return, label %if.then, !dbg !3319

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3320
  %idxprom = zext i32 %i to i64, !dbg !3320
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3320
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3320
  br label %return, !dbg !3322

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3323
  ret %union.tree_node* %retval.0, !dbg !3324
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3325 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3327, metadata !DIExpression()), !dbg !3328
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3329
  %cmp = icmp eq i32 %call, 0, !dbg !3330
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3331

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3332
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3333
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3334
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3335 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3337, metadata !DIExpression()), !dbg !3339
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !3340
  %idxprom = zext i32 %call to i64, !dbg !3341
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3341
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3341
  call void @llvm.dbg.value(metadata i64 %0, metadata !3338, metadata !DIExpression()), !dbg !3339
  %cmp = icmp eq i64 %0, 0, !dbg !3342
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3342

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3342
  br label %cond.end, !dbg !3342

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3343
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3344
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3345
  ret %union.tree_node** %2, !dbg !3346
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3347 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3351, metadata !DIExpression()), !dbg !3352
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3353
  %bf.load = load i32, i32* %0, align 8, !dbg !3353
  %bf.clear = and i32 %bf.load, 255, !dbg !3353
  ret i32 %bf.clear, !dbg !3354
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3355 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3359, metadata !DIExpression()), !dbg !3360
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3361
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !3362
  ret i32 %call1, !dbg !3363
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3364 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3368, metadata !DIExpression()), !dbg !3369
  %idxprom = zext i32 %code to i64, !dbg !3370
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3370
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3370
  ret i32 %0, !dbg !3371
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3372 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3374, metadata !DIExpression()), !dbg !3375
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !3376
  %tobool = icmp eq i8 %call, 0, !dbg !3376
  br i1 %tobool, label %return, label %if.end, !dbg !3378

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !3379
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !3379
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3379
  br label %return, !dbg !3380

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3375
  ret %union.tree_node* %retval.0, !dbg !3381
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @end_imm_use_stmt_traverse(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3382 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3386, metadata !DIExpression()), !dbg !3387
  %iter_node = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !3388
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node) #8, !dbg !3389
  ret void, !dbg !3390
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3391 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3393, metadata !DIExpression()), !dbg !3394
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3395
  %cmp = icmp ugt i32 %call, 5, !dbg !3396
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3397

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3398
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3399
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3400
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !3401 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3405, metadata !DIExpression()), !dbg !3406
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3407
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3407
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !3409
  br i1 %cmp, label %return, label %if.end, !dbg !3410

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !3411
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3411
  %2 = load i64, i64* %1, align 8, !dbg !3411
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !3412
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !3413
  store i64 %2, i64* %3, align 8, !dbg !3413
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !3414
  %5 = load i64, i64* %4, align 8, !dbg !3414
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !3415
  %7 = load i64*, i64** %6, align 8, !dbg !3415
  store i64 %5, i64* %7, align 8, !dbg !3416
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3417
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !3418
  br label %return, !dbg !3419

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !3419
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3420 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3424, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i32 %i, metadata !3425, metadata !DIExpression()), !dbg !3426
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #8, !dbg !3427
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3428
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3429
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3430 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3435, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 %index, metadata !3436, metadata !DIExpression()), !dbg !3437
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3438
  %0 = load i32, i32* %capacity, align 8, !dbg !3438
  %cmp = icmp ult i32 %0, %index, !dbg !3438
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3438

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3438
  br label %cond.end, !dbg !3438

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3439
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3439
  ret %struct.phi_arg_d* %arrayidx, !dbg !3440
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3441 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3443, metadata !DIExpression()), !dbg !3444
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3445
  %cmp = icmp eq i32 %call, 2, !dbg !3446
  %conv1 = zext i1 %cmp to i8, !dbg !3445
  ret i8 %conv1, !dbg !3447
}

declare dso_local zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d*, %struct.ssa_use_operand_d**, %union.gimple_statement_d**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %head, %struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3448 {
entry:
  %op_iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !3452, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3453, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !3455, metadata !DIExpression()), !dbg !3460
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %head, i64 0, i32 2, i32 0, !dbg !3461
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3461
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !3456, metadata !DIExpression()), !dbg !3460
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %head) #8, !dbg !3462
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3457, metadata !DIExpression()), !dbg !3460
  %1 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %op_iter, i64 0, i32 0, !dbg !3463
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #7, !dbg !3463
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !3464
  %tobool = icmp eq i8 %call1, 0, !dbg !3464
  %cond = select i1 %tobool, i32 4, i32 1, !dbg !3464
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3459, metadata !DIExpression()), !dbg !3460
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %0) #8, !dbg !3465
  %cmp = icmp eq i32 %call2, 16, !dbg !3467
  br i1 %cmp, label %if.then, label %if.else, !dbg !3468

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3458, metadata !DIExpression(DW_OP_deref)), !dbg !3460
  %call4 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #8, !dbg !3469
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call4, metadata !3454, metadata !DIExpression()), !dbg !3460
  br label %for.cond, !dbg !3469

for.cond:                                         ; preds = %for.inc, %if.then
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call4, %if.then ], [ %call12, %for.inc ], !dbg !3472
  %last_p.0 = phi %struct.ssa_use_operand_d* [ %head, %if.then ], [ %last_p.1, %for.inc ], !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0, metadata !3455, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !3454, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3458, metadata !DIExpression(DW_OP_deref)), !dbg !3460
  %call5 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !3473
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3473
  br i1 %tobool6, label %for.body, label %if.end44.loopexit, !dbg !3469

for.body:                                         ; preds = %for.cond
  %call7 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #8, !dbg !3475
  %cmp8 = icmp eq %union.tree_node* %call7, %call, !dbg !3477
  br i1 %cmp8, label %if.then10, label %for.inc, !dbg !3478

if.then10:                                        ; preds = %for.body
  %call11 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.0, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.0) #8, !dbg !3479
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call11, metadata !3455, metadata !DIExpression()), !dbg !3460
  br label %for.inc, !dbg !3480

for.inc:                                          ; preds = %for.body, %if.then10
  %last_p.1 = phi %struct.ssa_use_operand_d* [ %call11, %if.then10 ], [ %last_p.0, %for.body ], !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.1, metadata !3455, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3458, metadata !DIExpression(DW_OP_deref)), !dbg !3460
  %call12 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !3473
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call12, metadata !3454, metadata !DIExpression()), !dbg !3460
  br label %for.cond, !dbg !3473, !llvm.loop !3481

if.else:                                          ; preds = %entry
  br i1 %tobool, label %if.else31, label %if.then15, !dbg !3483

if.then15:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3458, metadata !DIExpression(DW_OP_deref)), !dbg !3460
  %call16 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #8, !dbg !3485
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call16, metadata !3454, metadata !DIExpression()), !dbg !3460
  br label %for.cond17, !dbg !3485

for.cond17:                                       ; preds = %for.inc28, %if.then15
  %use_p.1 = phi %struct.ssa_use_operand_d* [ %call16, %if.then15 ], [ %call29, %for.inc28 ], !dbg !3489
  %last_p.2 = phi %struct.ssa_use_operand_d* [ %head, %if.then15 ], [ %last_p.3, %for.inc28 ], !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2, metadata !3455, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.1, metadata !3454, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3458, metadata !DIExpression(DW_OP_deref)), !dbg !3460
  %call18 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !3490
  %tobool19 = icmp eq i8 %call18, 0, !dbg !3490
  br i1 %tobool19, label %for.body21, label %if.end44.loopexit1, !dbg !3485

for.body21:                                       ; preds = %for.cond17
  %call22 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.1) #8, !dbg !3492
  %cmp23 = icmp eq %union.tree_node* %call22, %call, !dbg !3494
  br i1 %cmp23, label %if.then25, label %for.inc28, !dbg !3495

if.then25:                                        ; preds = %for.body21
  %call26 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.1, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.2) #8, !dbg !3496
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call26, metadata !3455, metadata !DIExpression()), !dbg !3460
  br label %for.inc28, !dbg !3497

for.inc28:                                        ; preds = %for.body21, %if.then25
  %last_p.3 = phi %struct.ssa_use_operand_d* [ %call26, %if.then25 ], [ %last_p.2, %for.body21 ], !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.3, metadata !3455, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3458, metadata !DIExpression(DW_OP_deref)), !dbg !3460
  %call29 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !3490
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call29, metadata !3454, metadata !DIExpression()), !dbg !3460
  br label %for.cond17, !dbg !3490, !llvm.loop !3498

if.else31:                                        ; preds = %if.else
  %call32 = tail call fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %0) #8, !dbg !3500
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call32, metadata !3454, metadata !DIExpression()), !dbg !3460
  %cmp33 = icmp eq %struct.ssa_use_operand_d* %call32, null, !dbg !3502
  br i1 %cmp33, label %if.end44, label %if.then35, !dbg !3503

if.then35:                                        ; preds = %if.else31
  %call36 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %call32) #8, !dbg !3504
  %cmp37 = icmp eq %union.tree_node* %call36, %call, !dbg !3507
  br i1 %cmp37, label %if.then39, label %if.end44, !dbg !3508

if.then39:                                        ; preds = %if.then35
  %call40 = tail call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* nonnull %call32, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %head) #8, !dbg !3509
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call40, metadata !3455, metadata !DIExpression()), !dbg !3460
  br label %if.end44, !dbg !3510

if.end44.loopexit:                                ; preds = %for.cond
  %last_p.0.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.0, %for.cond ], !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !3455, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !3455, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !3455, metadata !DIExpression()), !dbg !3460
  br label %if.end44, !dbg !3511

if.end44.loopexit1:                               ; preds = %for.cond17
  %last_p.2.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.2, %for.cond17 ], !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !3455, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !3455, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !3455, metadata !DIExpression()), !dbg !3460
  br label %if.end44, !dbg !3511

if.end44:                                         ; preds = %if.end44.loopexit1, %if.end44.loopexit, %if.else31, %if.then35, %if.then39
  %last_p.7 = phi %struct.ssa_use_operand_d* [ %head, %if.else31 ], [ %call40, %if.then39 ], [ %head, %if.then35 ], [ %last_p.0.lcssa, %if.end44.loopexit ], [ %last_p.2.lcssa, %if.end44.loopexit1 ], !dbg !3513
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.7, metadata !3455, metadata !DIExpression()), !dbg !3460
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !3511
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3511
  %cmp45 = icmp eq %struct.ssa_use_operand_d* %2, null, !dbg !3514
  br i1 %cmp45, label %if.end49, label %if.then47, !dbg !3515

if.then47:                                        ; preds = %if.end44
  %iter_node48 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !3516
  call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node48) #8, !dbg !3517
  br label %if.end49, !dbg !3517

if.end49:                                         ; preds = %if.end44, %if.then47
  %iter_node50 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !3518
  call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* nonnull %iter_node50, %struct.ssa_use_operand_d* %last_p.7) #8, !dbg !3519
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #7, !dbg !3520
  ret void, !dbg !3520
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p) unnamed_addr #0 !dbg !3521 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !3525, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !3526, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p, metadata !3527, metadata !DIExpression()), !dbg !3528
  %cmp = icmp eq %struct.ssa_use_operand_d* %use_p, %head, !dbg !3529
  br i1 %cmp, label %if.end3, label %if.then, !dbg !3531

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %last_p, i64 0, i32 1, !dbg !3532
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !3532
  %cmp1 = icmp eq %struct.ssa_use_operand_d* %0, %use_p, !dbg !3535
  br i1 %cmp1, label %if.end3, label %if.else, !dbg !3536

if.else:                                          ; preds = %if.then
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use_p) #8, !dbg !3537
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %last_p) #8, !dbg !3539
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !3527, metadata !DIExpression()), !dbg !3528
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.else, %if.then
  %last_p.addr.1 = phi %struct.ssa_use_operand_d* [ %last_p, %entry ], [ %use_p, %if.then ], [ %use_p, %if.else ]
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.addr.1, metadata !3527, metadata !DIExpression()), !dbg !3528
  ret %struct.ssa_use_operand_d* %last_p.addr.1, !dbg !3540
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3541 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3543, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3544, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3545, metadata !DIExpression()), !dbg !3546
  %0 = and i32 %flags, 11, !dbg !3547
  %1 = icmp eq i32 %0, 1, !dbg !3547
  br i1 %1, label %cond.end, label %cond.true, !dbg !3547

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 771, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3547
  br label %cond.end, !dbg !3547

cond.end:                                         ; preds = %entry, %cond.true
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) #8, !dbg !3548
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3549
  store i32 2, i32* %iter_type, align 4, !dbg !3550
  %call = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !3551
  ret %struct.ssa_use_operand_d* %call, !dbg !3552
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3553 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3557, metadata !DIExpression()), !dbg !3559
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !3560
  %tobool = icmp eq i8 %call, 0, !dbg !3560
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3562

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !3563
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !3563
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !3563
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %1, metadata !3558, metadata !DIExpression()), !dbg !3559
  %tobool1 = icmp eq %struct.use_optype_d* %1, null, !dbg !3564
  br i1 %tobool1, label %cleanup, label %land.lhs.true, !dbg !3566

land.lhs.true:                                    ; preds = %if.end
  %use = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, i32 3, !dbg !3567
  %2 = load %union.tree_node**, %union.tree_node*** %use, align 8, !dbg !3567
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !3568
  %3 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !3568
  %cmp = icmp eq %union.tree_node** %2, %3, !dbg !3569
  %use_ptr3 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, !dbg !3570
  %spec.select = select i1 %cmp, %struct.ssa_use_operand_d* %use_ptr3, %struct.ssa_use_operand_d* null, !dbg !3571
  ret %struct.ssa_use_operand_d* %spec.select, !dbg !3571

cleanup:                                          ; preds = %if.end, %entry
  ret %struct.ssa_use_operand_d* null, !dbg !3572
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !3573 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3577, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !3578, metadata !DIExpression()), !dbg !3579
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3580
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3581
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !3582
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3582
  %1 = load i64, i64* %0, align 8, !dbg !3582
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !3583
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !3584
  store i64 %1, i64* %2, align 8, !dbg !3584
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !3585
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !3586
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !3587
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !3588
  ret void, !dbg !3589
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3590 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3595, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3596, metadata !DIExpression()), !dbg !3597
  %0 = and i32 %flags, 10, !dbg !3598
  %1 = icmp eq i32 %0, 8, !dbg !3598
  br i1 %1, label %cond.true, label %land.lhs.true, !dbg !3598

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %flags, 5, !dbg !3598
  %3 = icmp eq i32 %2, 4, !dbg !3598
  br i1 %3, label %cond.true, label %cond.end, !dbg !3598

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3598
  br label %cond.end, !dbg !3598

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %tobool9 = icmp eq i32 %0, 0, !dbg !3599
  br i1 %tobool9, label %cond.end12, label %cond.true10, !dbg !3600

cond.true10:                                      ; preds = %cond.end
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #8, !dbg !3601
  br label %cond.end12, !dbg !3600

cond.end12:                                       ; preds = %cond.end, %cond.true10
  %4 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ null, %cond.end ], !dbg !3600
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3602
  store %struct.def_optype_d* %4, %struct.def_optype_d** %defs, align 8, !dbg !3603
  %and14 = and i32 %flags, 8, !dbg !3604
  %tobool15 = icmp eq i32 %and14, 0, !dbg !3604
  br i1 %tobool15, label %land.lhs.true16, label %if.end, !dbg !3606

land.lhs.true16:                                  ; preds = %cond.end12
  %tobool18 = icmp eq %struct.def_optype_d* %4, null, !dbg !3607
  br i1 %tobool18, label %if.end, label %land.lhs.true19, !dbg !3608

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #8, !dbg !3609
  %cmp = icmp eq %union.tree_node* %call20, null, !dbg !3610
  br i1 %cmp, label %if.end, label %if.then, !dbg !3611

if.then:                                          ; preds = %land.lhs.true19
  %5 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !3612
  %6 = load i64*, i64** %5, align 8, !dbg !3612
  %7 = load i64, i64* %6, align 8, !dbg !3613
  %8 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3614
  store i64 %7, i64* %8, align 8, !dbg !3614
  br label %if.end, !dbg !3615

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true16, %cond.end12, %if.then
  %and23 = and i32 %flags, 5, !dbg !3616
  %tobool24 = icmp eq i32 %and23, 0, !dbg !3616
  br i1 %tobool24, label %cond.end28, label %cond.true25, !dbg !3617

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #8, !dbg !3618
  br label %cond.end28, !dbg !3617

cond.end28:                                       ; preds = %if.end, %cond.true25
  %9 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ null, %if.end ], !dbg !3617
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3619
  store %struct.use_optype_d* %9, %struct.use_optype_d** %uses, align 8, !dbg !3620
  %and30 = and i32 %flags, 4, !dbg !3621
  %tobool31 = icmp eq i32 %and30, 0, !dbg !3621
  br i1 %tobool31, label %land.lhs.true32, label %if.end42, !dbg !3623

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %9, null, !dbg !3624
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !3625

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #8, !dbg !3626
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !3627
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !3628

if.then38:                                        ; preds = %land.lhs.true35
  %10 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !3629
  %11 = load i64*, i64** %10, align 8, !dbg !3629
  %12 = load i64, i64* %11, align 8, !dbg !3630
  %13 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3631
  store i64 %12, i64* %13, align 8, !dbg !3631
  br label %if.end42, !dbg !3632

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32, %cond.end28, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3633
  store i8 0, i8* %done, align 8, !dbg !3634
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3635
  store i32 0, i32* %phi_i, align 8, !dbg !3636
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3637
  store i32 0, i32* %num_phi, align 4, !dbg !3638
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3639
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3640
  ret void, !dbg !3641
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3642 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3646, metadata !DIExpression()), !dbg !3647
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #8, !dbg !3648
  %tobool = icmp eq i8 %call, 0, !dbg !3648
  br i1 %tobool, label %return, label %if.end, !dbg !3650

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !3651
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !3651
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !3651
  br label %return, !dbg !3652

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3647
  ret %struct.def_optype_d* %retval.0, !dbg !3653
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3654 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3658, metadata !DIExpression()), !dbg !3659
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #8, !dbg !3660
  %tobool = icmp eq i8 %call, 0, !dbg !3660
  br i1 %tobool, label %return, label %if.end, !dbg !3662

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !3663
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !3663
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !3663
  br label %return, !dbg !3664

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3659
  ret %struct.use_optype_d* %retval.0, !dbg !3665
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3666 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3668, metadata !DIExpression()), !dbg !3670
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3671
  call void @llvm.dbg.value(metadata i32 %call, metadata !3669, metadata !DIExpression()), !dbg !3670
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3672

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3674
  %bf.load = load i32, i32* %0, align 8, !dbg !3674
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3674
  br label %cleanup, !dbg !3675

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3676
  br label %cleanup, !dbg !3678

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3670
  ret i32 %retval.0, !dbg !3679
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3680 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3684, metadata !DIExpression()), !dbg !3685
  %idxprom = sext i32 %code to i64, !dbg !3686
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3686
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3686
  %conv = zext i8 %0 to i32, !dbg !3687
  ret i32 %conv, !dbg !3688
}

declare dso_local %union.gimple_statement_d* @create_phi_node(%union.tree_node*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3689 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3693, metadata !DIExpression()), !dbg !3695
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3696
  store i32 0, i32* %index, align 8, !dbg !3697
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3698
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3699
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3700
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3700
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3700
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3701 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3707, metadata !DIExpression()), !dbg !3708
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3709
  %tobool = icmp eq i8 %call, 0, !dbg !3709
  br i1 %tobool, label %if.then, label %if.else, !dbg !3711

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3712
  br label %return, !dbg !3714

if.else:                                          ; preds = %entry
  br label %return, !dbg !3715

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3717
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3717
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3717
  ret i8 %retval.0, !dbg !3718
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(%union.gimple_statement_d* %gs, %struct.edge_def* %e) unnamed_addr #0 !dbg !3719 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3723, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3724, metadata !DIExpression()), !dbg !3725
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 6, !dbg !3726
  %0 = load i32, i32* %dest_idx, align 4, !dbg !3726
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %0) #8, !dbg !3727
  %locus = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 2, !dbg !3728
  %1 = load i32, i32* %locus, align 8, !dbg !3728
  ret i32 %1, !dbg !3729
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3730 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3734, metadata !DIExpression()), !dbg !3735
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !3736
  %0 = load i32, i32* %location, align 8, !dbg !3736
  ret i32 %0, !dbg !3737
}

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @unshare_expr(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @add_referenced_var(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3738 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3742, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3743, metadata !DIExpression()), !dbg !3744
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3745
  %call = tail call %union.tree_node* @make_ssa_name_fn(%struct.function* %0, %union.tree_node* %var, %union.gimple_statement_d* %stmt) #6, !dbg !3746
  ret %union.tree_node* %call, !dbg !3747
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !3748 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3750, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !3751, metadata !DIExpression()), !dbg !3752
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #8, !dbg !3753
  %tobool = icmp eq %union.tree_node* %lhs, null, !dbg !3754
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3756

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3757
  %bf.load = load i64, i64* %0, align 8, !dbg !3757
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3758
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3758
  br i1 %cmp, label %if.then, label %if.end, !dbg !3759

if.then:                                          ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3760
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3760
  store %union.gimple_statement_d* %gs, %union.gimple_statement_d** %1, align 8, !dbg !3761
  br label %if.end, !dbg !3760

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !3762
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_location(%union.gimple_statement_d* %g, i32 %location) unnamed_addr #0 !dbg !3763 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3767, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 %location, metadata !3768, metadata !DIExpression()), !dbg !3769
  %location1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !3770
  store i32 %location, i32* %location1, align 8, !dbg !3771
  ret void, !dbg !3772
}

declare dso_local void @gsi_insert_on_edge(%struct.edge_def*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @add_phi_arg(%union.gimple_statement_d*, %union.tree_node*, %struct.edge_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3773 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3778, metadata !DIExpression()), !dbg !3779
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3780
  %0 = load i32, i32* %index, align 8, !dbg !3780
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3780
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3780
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !3780
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3780
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3780

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3780
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3780
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !3780
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3780
  br label %cond.end, !dbg !3780

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3780
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3780
  %cmp = icmp ult i32 %0, %call2, !dbg !3780
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3780

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3780
  br label %cond.end5, !dbg !3780

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3781
  %inc = add i32 %5, 1, !dbg !3781
  store i32 %inc, i32* %index, align 8, !dbg !3781
  ret void, !dbg !3782
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3783 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3788
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3788
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3788

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3788
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3788
  br label %cond.end, !dbg !3788

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3788
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3788
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3789
  %conv3 = zext i1 %cmp to i8, !dbg !3790
  ret i8 %conv3, !dbg !3791
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3792 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3797
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3797
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3797

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3797
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3797
  br label %cond.end, !dbg !3797

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3797
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !3797
  ret %struct.edge_def* %call2, !dbg !3798
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3799 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3804
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3804

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3804
  br label %cond.end, !dbg !3804

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3805
  ret %struct.VEC_edge_gc* %0, !dbg !3806
}

declare dso_local %union.tree_node* @make_ssa_name_fn(%struct.function*, %union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !3807 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3811, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i32 %i, metadata !3812, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !3813, metadata !DIExpression()), !dbg !3814
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3815
  %tobool = icmp eq i8 %call, 0, !dbg !3815
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !3815

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !3815
  %cmp = icmp ugt i32 %call1, %i, !dbg !3815
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3815

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3815
  br label %cond.end, !dbg !3815

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3816
  %idxprom = zext i32 %i to i64, !dbg !3816
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call3, i64 %idxprom, !dbg !3816
  store %union.tree_node* %op, %union.tree_node** %arrayidx, align 8, !dbg !3817
  ret void, !dbg !3818
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3819 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3821, metadata !DIExpression()), !dbg !3822
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3823
  %0 = load i32, i32* %num_ops, align 4, !dbg !3823
  ret i32 %0, !dbg !3824
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1979, !1980, !1981}
!llvm.ident = !{!1982}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_phiprop", scope: !2, file: !3, line: 391, type: !1953, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !638, globals: !1952, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-phiprop.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !567, !606, !632}
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
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !561, line: 119, baseType: !7, size: 32, elements: !562)
!561 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !{!563, !564, !565, !566}
!563 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!564 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!565 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!566 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !568, line: 51, baseType: !7, size: 32, elements: !569)
!568 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!570 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!571 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!572 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!573 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!574 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!575 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!576 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!577 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!578 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!579 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!580 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!581 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!582 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!583 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!584 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!585 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!586 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!587 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!588 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!589 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!590 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!591 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!592 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!593 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!594 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!595 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!596 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!598 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!599 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!600 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!601 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!602 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!605 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!606 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !568, line: 727, baseType: !7, size: 32, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!608 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!609 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!610 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!611 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!612 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!613 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!614 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!615 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!616 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!617 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!618 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!619 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!620 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!621 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!622 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!623 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!624 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!625 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!626 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!627 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!628 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!629 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!630 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!631 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!632 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !568, line: 80, baseType: !7, size: 32, elements: !633)
!633 = !{!634, !635, !636, !637}
!634 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!635 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!636 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!637 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!638 = !{!639, !640, !641, !642, !645, !646, !648, !1375, !652, !366, !1947, !977, !1950, !1010, !643, !632}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!641 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phiprop_d", file: !3, line: 95, size: 128, elements: !650)
!650 = !{!651, !1946}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !649, file: !3, line: 97, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !653, line: 56, baseType: !654)
!653 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !656)
!656 = !{!657, !690, !696, !709, !728, !739, !744, !753, !759, !772, !784, !822, !1279, !1307, !1324, !1325, !1330, !1339, !1345, !1350, !1354, !1358, !1597, !1644, !1650, !1656, !1663, !1676, !1690, !1707, !1719, !1741, !1756, !1928}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !655, file: !334, line: 3372, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !658, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !658, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !658, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !658, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !658, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !658, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !658, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !658, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !658, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !658, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !658, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !658, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !658, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !658, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !658, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !658, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !658, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !658, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !658, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !658, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !658, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !658, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !658, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !658, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !658, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !658, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !658, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !658, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !658, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !658, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !655, file: !334, line: 3373, baseType: !691, size: 192)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !692)
!692 = !{!693, !694, !695}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !691, file: !334, line: 403, baseType: !658, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !691, file: !334, line: 404, baseType: !652, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !334, line: 405, baseType: !652, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !655, file: !334, line: 3374, baseType: !697, size: 320)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !697, file: !334, line: 1385, baseType: !691, size: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !697, file: !334, line: 1386, baseType: !701, size: 128, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !702, line: 58, baseType: !703)
!702 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !702, line: 54, size: 128, elements: !704)
!704 = !{!705, !707}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !703, file: !702, line: 56, baseType: !706, size: 64)
!706 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !703, file: !702, line: 57, baseType: !708, size: 64, offset: 64)
!708 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !655, file: !334, line: 3375, baseType: !710, size: 256)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !710, file: !334, line: 1398, baseType: !691, size: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !710, file: !334, line: 1399, baseType: !714, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !716, line: 52, size: 256, elements: !717)
!716 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!717 = !{!718, !719, !720, !721, !722, !723, !724}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !715, file: !716, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !715, file: !716, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !715, file: !716, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !715, file: !716, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !715, file: !716, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !715, file: !716, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !715, file: !716, line: 62, baseType: !725, size: 192, offset: 64)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 192, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 3)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !655, file: !334, line: 3376, baseType: !729, size: 256)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !729, file: !334, line: 1409, baseType: !691, size: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !729, file: !334, line: 1410, baseType: !733, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !735, line: 27, size: 192, elements: !736)
!735 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !734, file: !735, line: 29, baseType: !701, size: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !734, file: !735, line: 30, baseType: !189, size: 32, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !655, file: !334, line: 3377, baseType: !740, size: 256)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !740, file: !334, line: 1438, baseType: !691, size: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !740, file: !334, line: 1439, baseType: !652, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !655, file: !334, line: 3378, baseType: !745, size: 256)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !746)
!746 = !{!747, !748, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !745, file: !334, line: 1419, baseType: !691, size: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !745, file: !334, line: 1420, baseType: !641, size: 32, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !745, file: !334, line: 1421, baseType: !750, size: 8, offset: 224)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 8, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 1)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !655, file: !334, line: 3379, baseType: !754, size: 320)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !755)
!755 = !{!756, !757, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !754, file: !334, line: 1429, baseType: !691, size: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !754, file: !334, line: 1430, baseType: !652, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !754, file: !334, line: 1431, baseType: !652, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !655, file: !334, line: 3380, baseType: !760, size: 320)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !760, file: !334, line: 1461, baseType: !691, size: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !760, file: !334, line: 1462, baseType: !764, size: 128, offset: 192)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !765, line: 31, size: 128, elements: !766)
!765 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!766 = !{!767, !770, !771}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !764, file: !765, line: 32, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !764, file: !765, line: 33, baseType: !7, size: 32, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !764, file: !765, line: 34, baseType: !7, size: 32, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !655, file: !334, line: 3381, baseType: !773, size: 384)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !774)
!774 = !{!775, !776, !781, !782, !783}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !773, file: !334, line: 2508, baseType: !691, size: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !773, file: !334, line: 2509, baseType: !777, size: 32, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !778, line: 58, baseType: !779)
!778 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !780, line: 44, baseType: !7)
!780 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!781 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !773, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !773, file: !334, line: 2511, baseType: !652, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !773, file: !334, line: 2512, baseType: !652, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !655, file: !334, line: 3382, baseType: !785, size: 896)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !785, file: !334, line: 2653, baseType: !773, size: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !785, file: !334, line: 2654, baseType: !652, size: 64, offset: 384)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !785, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !785, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !785, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !785, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !785, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !785, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !785, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !785, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !785, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !785, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !785, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !785, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !785, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !785, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !785, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !785, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !785, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !785, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !785, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !785, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !785, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !785, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !785, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !785, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !785, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !785, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !785, file: !334, line: 2705, baseType: !652, size: 64, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !785, file: !334, line: 2706, baseType: !652, size: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !785, file: !334, line: 2707, baseType: !652, size: 64, offset: 704)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !785, file: !334, line: 2708, baseType: !652, size: 64, offset: 768)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !785, file: !334, line: 2711, baseType: !820, size: 64, offset: 832)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !655, file: !334, line: 3383, baseType: !823, size: 960)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !823, file: !334, line: 2757, baseType: !785, size: 896)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !823, file: !334, line: 2758, baseType: !827, size: 64, offset: 896)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !653, line: 50, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !830, line: 240, size: 384, elements: !831)
!830 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!831 = !{!832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !829, file: !830, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !829, file: !830, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !829, file: !830, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !829, file: !830, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !829, file: !830, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !829, file: !830, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !829, file: !830, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !829, file: !830, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !829, file: !830, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !829, file: !830, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !829, file: !830, line: 321, baseType: !843, size: 320, offset: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !830, line: 315, size: 320, elements: !844)
!844 = !{!845, !1246, !1248, !1277, !1278}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !843, file: !830, line: 316, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !847, size: 64, elements: !751)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !830, line: 183, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !830, line: 166, size: 64, elements: !849)
!849 = !{!850, !851, !852, !853, !854, !862, !863, !875, !878, !938, !939, !1223, !1236, !1243}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !848, file: !830, line: 168, baseType: !641, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !848, file: !830, line: 169, baseType: !7, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !848, file: !830, line: 170, baseType: !646, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !848, file: !830, line: 171, baseType: !827, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !848, file: !830, line: 172, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !653, line: 53, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !830, line: 359, size: 128, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !857, file: !830, line: 360, baseType: !641, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !857, file: !830, line: 361, baseType: !861, size: 64, offset: 64)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 64, elements: !751)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !848, file: !830, line: 173, baseType: !189, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !848, file: !830, line: 174, baseType: !864, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !830, line: 133, baseType: !865)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !830, line: 115, size: 32, elements: !866)
!866 = !{!867, !868, !869, !870, !871, !872, !873, !874}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !865, file: !830, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !865, file: !830, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !865, file: !830, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !865, file: !830, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !865, file: !830, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !865, file: !830, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !865, file: !830, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !865, file: !830, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !848, file: !830, line: 175, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !830, line: 175, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !848, file: !830, line: 176, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !881, line: 75, size: 256, elements: !882)
!881 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!882 = !{!883, !897, !898, !899}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !880, file: !881, line: 76, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !881, line: 68, baseType: !886)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !881, line: 63, size: 320, elements: !887)
!887 = !{!888, !890, !891, !892}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !886, file: !881, line: 64, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !886, file: !881, line: 65, baseType: !889, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !886, file: !881, line: 66, baseType: !7, size: 32, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !886, file: !881, line: 67, baseType: !893, size: 128, offset: 192)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 128, elements: !895)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !881, line: 29, baseType: !706)
!895 = !{!896}
!896 = !DISubrange(count: 2)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !880, file: !881, line: 77, baseType: !884, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !880, file: !881, line: 78, baseType: !7, size: 32, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !880, file: !881, line: 79, baseType: !900, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !881, line: 49, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !881, line: 45, size: 832, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !902, file: !881, line: 46, baseType: !889, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !902, file: !881, line: 47, baseType: !879, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !902, file: !881, line: 48, baseType: !907, size: 704, offset: 128)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !908, line: 164, size: 704, elements: !909)
!908 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!909 = !{!910, !911, !921, !922, !923, !924, !925, !926, !930, !934, !935, !936, !937}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !907, file: !908, line: 166, baseType: !708, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !907, file: !908, line: 167, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !908, line: 157, size: 192, elements: !914)
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !913, file: !908, line: 159, baseType: !643, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !913, file: !908, line: 160, baseType: !912, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !913, file: !908, line: 161, baseType: !918, size: 32, offset: 128)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 32, elements: !919)
!919 = !{!920}
!920 = !DISubrange(count: 4)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !907, file: !908, line: 168, baseType: !643, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !907, file: !908, line: 169, baseType: !643, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !907, file: !908, line: 170, baseType: !643, size: 64, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !907, file: !908, line: 171, baseType: !708, size: 64, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !907, file: !908, line: 172, baseType: !641, size: 32, offset: 384)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !907, file: !908, line: 176, baseType: !927, size: 64, offset: 448)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!912, !645, !708}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !907, file: !908, line: 177, baseType: !931, size: 64, offset: 512)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !645, !912}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !907, file: !908, line: 178, baseType: !645, size: 64, offset: 576)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !907, file: !908, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !907, file: !908, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !907, file: !908, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !848, file: !830, line: 177, baseType: !652, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !848, file: !830, line: 178, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !942)
!942 = !{!943, !1188, !1189, !1190, !1193, !1197, !1198, !1199, !1217, !1218, !1219, !1220, !1221, !1222}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !941, file: !318, line: 219, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !947)
!947 = !{!948}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !946, file: !318, line: 151, baseType: !949, size: 128)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !951)
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !950, file: !318, line: 150, baseType: !7, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !950, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !950, file: !318, line: 150, baseType: !955, size: 64, offset: 64)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !956, size: 64, elements: !751)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !653, line: 108, baseType: !957)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !959)
!959 = !{!960, !961, !962, !1180, !1181, !1182, !1183, !1184, !1185, !1186}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !958, file: !318, line: 124, baseType: !940, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !958, file: !318, line: 125, baseType: !940, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !958, file: !318, line: 131, baseType: !963, size: 64, offset: 128)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !964)
!964 = !{!965, !1179}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !963, file: !318, line: 129, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !653, line: 66, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !568, line: 143, size: 192, elements: !969)
!969 = !{!970, !1177, !1178}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !968, file: !568, line: 145, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !653, line: 69, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !568, line: 136, size: 192, elements: !974)
!974 = !{!975, !1175, !1176}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !973, file: !568, line: 137, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !653, line: 58, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !568, line: 737, size: 768, elements: !979)
!979 = !{!980, !997, !1030, !1036, !1041, !1046, !1053, !1059, !1065, !1070, !1084, !1089, !1095, !1100, !1110, !1115, !1133, !1140, !1147, !1153, !1158, !1164, !1170}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !978, file: !568, line: 738, baseType: !981, size: 256)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !568, line: 271, size: 256, elements: !982)
!982 = !{!983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !981, file: !568, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !981, file: !568, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !981, file: !568, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !981, file: !568, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !981, file: !568, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !981, file: !568, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !981, file: !568, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !981, file: !568, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !981, file: !568, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !981, file: !568, line: 312, baseType: !7, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !981, file: !568, line: 316, baseType: !777, size: 32, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !981, file: !568, line: 319, baseType: !7, size: 32, offset: 96)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !981, file: !568, line: 323, baseType: !940, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !981, file: !568, line: 327, baseType: !652, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !978, file: !568, line: 739, baseType: !998, size: 448)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !568, line: 350, size: 448, elements: !999)
!999 = !{!1000, !1028}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !998, file: !568, line: 353, baseType: !1001, size: 384)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !568, line: 333, size: 384, elements: !1002)
!1002 = !{!1003, !1004, !1011}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1001, file: !568, line: 336, baseType: !981, size: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1001, file: !568, line: 343, baseType: !1005, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !561, line: 37, size: 128, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1006, file: !561, line: 39, baseType: !1005, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1006, file: !561, line: 40, baseType: !1010, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1001, file: !568, line: 344, baseType: !1012, size: 64, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !561, line: 45, size: 320, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1013, file: !561, line: 47, baseType: !1012, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1013, file: !561, line: 48, baseType: !1017, size: 256, offset: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !1018)
!1018 = !{!1019, !1021, !1022, !1027}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1017, file: !334, line: 1884, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1017, file: !334, line: 1885, baseType: !1020, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1017, file: !334, line: 1891, baseType: !1023, size: 64, offset: 128)
!1023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !334, line: 1891, size: 64, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1023, file: !334, line: 1891, baseType: !976, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1023, file: !334, line: 1891, baseType: !652, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1017, file: !334, line: 1892, baseType: !1010, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !998, file: !568, line: 359, baseType: !1029, size: 64, offset: 384)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 64, elements: !751)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !978, file: !568, line: 740, baseType: !1031, size: 512)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !568, line: 365, size: 512, elements: !1032)
!1032 = !{!1033, !1034, !1035}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1031, file: !568, line: 368, baseType: !1001, size: 384)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1031, file: !568, line: 373, baseType: !652, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1031, file: !568, line: 374, baseType: !652, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !978, file: !568, line: 741, baseType: !1037, size: 576)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !568, line: 380, size: 576, elements: !1038)
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1037, file: !568, line: 383, baseType: !1031, size: 512)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1037, file: !568, line: 389, baseType: !1029, size: 64, offset: 512)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !978, file: !568, line: 742, baseType: !1042, size: 320)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !568, line: 395, size: 320, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1042, file: !568, line: 397, baseType: !981, size: 256)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1042, file: !568, line: 400, baseType: !966, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !978, file: !568, line: 743, baseType: !1047, size: 448)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !568, line: 406, size: 448, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1052}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1047, file: !568, line: 408, baseType: !981, size: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1047, file: !568, line: 412, baseType: !652, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1047, file: !568, line: 420, baseType: !652, size: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1047, file: !568, line: 423, baseType: !966, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !978, file: !568, line: 744, baseType: !1054, size: 384)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !568, line: 429, size: 384, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1054, file: !568, line: 431, baseType: !981, size: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1054, file: !568, line: 434, baseType: !652, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1054, file: !568, line: 437, baseType: !966, size: 64, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !978, file: !568, line: 745, baseType: !1060, size: 384)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !568, line: 443, size: 384, elements: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1060, file: !568, line: 445, baseType: !981, size: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1060, file: !568, line: 449, baseType: !652, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1060, file: !568, line: 453, baseType: !966, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !978, file: !568, line: 746, baseType: !1066, size: 320)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !568, line: 459, size: 320, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1066, file: !568, line: 461, baseType: !981, size: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1066, file: !568, line: 464, baseType: !652, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !978, file: !568, line: 747, baseType: !1071, size: 768)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !568, line: 469, size: 768, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1071, file: !568, line: 471, baseType: !981, size: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1071, file: !568, line: 474, baseType: !7, size: 32, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1071, file: !568, line: 475, baseType: !7, size: 32, offset: 288)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1071, file: !568, line: 478, baseType: !652, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1071, file: !568, line: 481, baseType: !1078, size: 384, offset: 384)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 384, elements: !751)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !334, line: 1917, size: 384, elements: !1080)
!1080 = !{!1081, !1082, !1083}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1079, file: !334, line: 1920, baseType: !1017, size: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1079, file: !334, line: 1921, baseType: !652, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1079, file: !334, line: 1922, baseType: !777, size: 32, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !978, file: !568, line: 748, baseType: !1085, size: 320)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !568, line: 487, size: 320, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1085, file: !568, line: 490, baseType: !981, size: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1085, file: !568, line: 494, baseType: !641, size: 32, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !978, file: !568, line: 749, baseType: !1090, size: 384)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !568, line: 500, size: 384, elements: !1091)
!1091 = !{!1092, !1093, !1094}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1090, file: !568, line: 502, baseType: !981, size: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1090, file: !568, line: 506, baseType: !966, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1090, file: !568, line: 510, baseType: !966, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !978, file: !568, line: 750, baseType: !1096, size: 320)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !568, line: 529, size: 320, elements: !1097)
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1096, file: !568, line: 531, baseType: !981, size: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1096, file: !568, line: 540, baseType: !966, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !978, file: !568, line: 751, baseType: !1101, size: 704)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !568, line: 546, size: 704, elements: !1102)
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108, !1109}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1101, file: !568, line: 549, baseType: !1031, size: 512)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1101, file: !568, line: 553, baseType: !646, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1101, file: !568, line: 557, baseType: !640, size: 8, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1101, file: !568, line: 558, baseType: !640, size: 8, offset: 584)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1101, file: !568, line: 559, baseType: !640, size: 8, offset: 592)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1101, file: !568, line: 560, baseType: !640, size: 8, offset: 600)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1101, file: !568, line: 566, baseType: !1029, size: 64, offset: 640)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !978, file: !568, line: 752, baseType: !1111, size: 384)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !568, line: 571, size: 384, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1111, file: !568, line: 573, baseType: !1042, size: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1111, file: !568, line: 577, baseType: !652, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !978, file: !568, line: 753, baseType: !1116, size: 576)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !568, line: 600, size: 576, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1123, !1132}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1116, file: !568, line: 602, baseType: !1042, size: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1116, file: !568, line: 605, baseType: !652, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1116, file: !568, line: 609, baseType: !1121, size: 64, offset: 384)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1122, line: 46, baseType: !706)
!1122 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1116, file: !568, line: 612, baseType: !1124, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !568, line: 581, size: 320, elements: !1126)
!1126 = !{!1127, !1128, !1129, !1130, !1131}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1125, file: !568, line: 583, baseType: !366, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1125, file: !568, line: 586, baseType: !652, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1125, file: !568, line: 589, baseType: !652, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1125, file: !568, line: 592, baseType: !652, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1125, file: !568, line: 595, baseType: !652, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1116, file: !568, line: 616, baseType: !966, size: 64, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !978, file: !568, line: 754, baseType: !1134, size: 512)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !568, line: 622, size: 512, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1134, file: !568, line: 624, baseType: !1042, size: 320)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1134, file: !568, line: 628, baseType: !652, size: 64, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1134, file: !568, line: 632, baseType: !652, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1134, file: !568, line: 636, baseType: !652, size: 64, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !978, file: !568, line: 755, baseType: !1141, size: 704)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !568, line: 642, size: 704, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1146}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1141, file: !568, line: 644, baseType: !1134, size: 512)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1141, file: !568, line: 648, baseType: !652, size: 64, offset: 512)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1141, file: !568, line: 652, baseType: !652, size: 64, offset: 576)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1141, file: !568, line: 653, baseType: !652, size: 64, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !978, file: !568, line: 756, baseType: !1148, size: 448)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !568, line: 663, size: 448, elements: !1149)
!1149 = !{!1150, !1151, !1152}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1148, file: !568, line: 665, baseType: !1042, size: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1148, file: !568, line: 668, baseType: !652, size: 64, offset: 320)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1148, file: !568, line: 673, baseType: !652, size: 64, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !978, file: !568, line: 757, baseType: !1154, size: 384)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !568, line: 694, size: 384, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1154, file: !568, line: 696, baseType: !1042, size: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1154, file: !568, line: 699, baseType: !652, size: 64, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !978, file: !568, line: 758, baseType: !1159, size: 384)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !568, line: 681, size: 384, elements: !1160)
!1160 = !{!1161, !1162, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1159, file: !568, line: 683, baseType: !981, size: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1159, file: !568, line: 686, baseType: !652, size: 64, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1159, file: !568, line: 689, baseType: !652, size: 64, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !978, file: !568, line: 759, baseType: !1165, size: 384)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !568, line: 707, size: 384, elements: !1166)
!1166 = !{!1167, !1168, !1169}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1165, file: !568, line: 709, baseType: !981, size: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1165, file: !568, line: 712, baseType: !652, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1165, file: !568, line: 712, baseType: !652, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !978, file: !568, line: 760, baseType: !1171, size: 320)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !568, line: 718, size: 320, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1171, file: !568, line: 720, baseType: !981, size: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1171, file: !568, line: 723, baseType: !652, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !973, file: !568, line: 138, baseType: !972, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !973, file: !568, line: 139, baseType: !972, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !968, file: !568, line: 146, baseType: !971, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !968, file: !568, line: 152, baseType: !966, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !963, file: !318, line: 130, baseType: !827, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !958, file: !318, line: 134, baseType: !645, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !958, file: !318, line: 137, baseType: !652, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !958, file: !318, line: 138, baseType: !777, size: 32, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !958, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !958, file: !318, line: 144, baseType: !641, size: 32, offset: 384)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !958, file: !318, line: 145, baseType: !641, size: 32, offset: 416)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !958, file: !318, line: 146, baseType: !1187, size: 64, offset: 448)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !708)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !941, file: !318, line: 220, baseType: !944, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !941, file: !318, line: 223, baseType: !645, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !941, file: !318, line: 226, baseType: !1191, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !318, line: 185, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !941, file: !318, line: 229, baseType: !1194, size: 128, offset: 256)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1195, size: 128, elements: !895)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !941, file: !318, line: 232, baseType: !940, size: 64, offset: 384)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !941, file: !318, line: 233, baseType: !940, size: 64, offset: 448)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !941, file: !318, line: 238, baseType: !1200, size: 64, offset: 512)
!1200 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !1201)
!1201 = !{!1202, !1208}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1200, file: !318, line: 236, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1204, file: !318, line: 275, baseType: !966, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1204, file: !318, line: 278, baseType: !966, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1200, file: !318, line: 237, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !1211)
!1211 = !{!1212, !1213, !1214, !1215, !1216}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1210, file: !318, line: 261, baseType: !827, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1210, file: !318, line: 262, baseType: !827, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1210, file: !318, line: 266, baseType: !827, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1210, file: !318, line: 267, baseType: !827, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1210, file: !318, line: 270, baseType: !641, size: 32, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !941, file: !318, line: 241, baseType: !1187, size: 64, offset: 576)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !941, file: !318, line: 244, baseType: !641, size: 32, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !941, file: !318, line: 247, baseType: !641, size: 32, offset: 672)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !941, file: !318, line: 250, baseType: !641, size: 32, offset: 704)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !941, file: !318, line: 253, baseType: !641, size: 32, offset: 736)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !941, file: !318, line: 256, baseType: !641, size: 32, offset: 768)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !848, file: !830, line: 179, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !830, line: 150, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !830, line: 142, size: 320, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1234, !1235}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1226, file: !830, line: 144, baseType: !652, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1226, file: !830, line: 145, baseType: !827, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1226, file: !830, line: 146, baseType: !827, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1226, file: !830, line: 147, baseType: !1232, size: 32, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1233, line: 31, baseType: !641)
!1233 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1226, file: !830, line: 148, baseType: !7, size: 32, offset: 224)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1226, file: !830, line: 149, baseType: !640, size: 8, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !848, file: !830, line: 180, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !830, line: 162, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !830, line: 159, size: 128, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1239, file: !830, line: 160, baseType: !652, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1239, file: !830, line: 161, baseType: !708, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !848, file: !830, line: 181, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !830, line: 181, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !843, file: !830, line: 317, baseType: !1247, size: 64)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 64, elements: !751)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !843, file: !830, line: 318, baseType: !1249, size: 320)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !830, line: 188, size: 320, elements: !1250)
!1250 = !{!1251, !1253, !1276}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1249, file: !830, line: 190, baseType: !1252, size: 192)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !847, size: 192, elements: !726)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1249, file: !830, line: 193, baseType: !1254, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !830, line: 206, size: 320, elements: !1256)
!1256 = !{!1257, !1261, !1262, !1263, !1275}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1255, file: !830, line: 208, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !653, line: 62, baseType: !1260)
!1260 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !653, line: 61, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1255, file: !830, line: 211, baseType: !7, size: 32, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1255, file: !830, line: 214, baseType: !708, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1255, file: !830, line: 224, baseType: !1264, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !830, line: 202, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !830, line: 202, size: 128, elements: !1267)
!1267 = !{!1268}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1266, file: !830, line: 202, baseType: !1269, size: 128)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !830, line: 200, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !830, line: 200, size: 128, elements: !1271)
!1271 = !{!1272, !1273, !1274}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1270, file: !830, line: 200, baseType: !7, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1270, file: !830, line: 200, baseType: !7, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1270, file: !830, line: 200, baseType: !861, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1255, file: !830, line: 234, baseType: !1264, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1249, file: !830, line: 197, baseType: !708, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !843, file: !830, line: 319, baseType: !715, size: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !843, file: !830, line: 320, baseType: !734, size: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !655, file: !334, line: 3384, baseType: !1280, size: 1472)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1281)
!1281 = !{!1282, !1303, !1304, !1305, !1306}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1280, file: !334, line: 3115, baseType: !1283, size: 1216)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1283, file: !334, line: 2985, baseType: !823, size: 960)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1283, file: !334, line: 2986, baseType: !652, size: 64, offset: 960)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1283, file: !334, line: 2987, baseType: !652, size: 64, offset: 1024)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1283, file: !334, line: 2988, baseType: !652, size: 64, offset: 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1283, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1283, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1283, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1283, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1283, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1283, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1283, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1283, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1283, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1283, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1283, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1283, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1283, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1283, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1280, file: !334, line: 3117, baseType: !652, size: 64, offset: 1216)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1280, file: !334, line: 3119, baseType: !652, size: 64, offset: 1280)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1280, file: !334, line: 3121, baseType: !652, size: 64, offset: 1344)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1280, file: !334, line: 3123, baseType: !652, size: 64, offset: 1408)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !655, file: !334, line: 3385, baseType: !1308, size: 1088)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1309)
!1309 = !{!1310, !1311, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1308, file: !334, line: 2875, baseType: !823, size: 960)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1308, file: !334, line: 2876, baseType: !827, size: 64, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1308, file: !334, line: 2877, baseType: !1313, size: 64, offset: 1024)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1315, line: 172, size: 128, elements: !1316)
!1315 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1314, file: !1315, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1314, file: !1315, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1314, file: !1315, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1314, file: !1315, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1314, file: !1315, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1314, file: !1315, line: 195, baseType: !7, size: 32, offset: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1314, file: !1315, line: 199, baseType: !652, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !655, file: !334, line: 3386, baseType: !1283, size: 1216)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !655, file: !334, line: 3387, baseType: !1326, size: 1280)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1326, file: !334, line: 3094, baseType: !1283, size: 1216)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1326, file: !334, line: 3095, baseType: !1313, size: 64, offset: 1216)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !655, file: !334, line: 3388, baseType: !1331, size: 1216)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1331, file: !334, line: 2825, baseType: !785, size: 896)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1331, file: !334, line: 2827, baseType: !652, size: 64, offset: 896)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1331, file: !334, line: 2828, baseType: !652, size: 64, offset: 960)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1331, file: !334, line: 2829, baseType: !652, size: 64, offset: 1024)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1331, file: !334, line: 2830, baseType: !652, size: 64, offset: 1088)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1331, file: !334, line: 2831, baseType: !652, size: 64, offset: 1152)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !655, file: !334, line: 3389, baseType: !1340, size: 1024)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1341)
!1341 = !{!1342, !1343, !1344}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1340, file: !334, line: 2851, baseType: !823, size: 960)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1340, file: !334, line: 2852, baseType: !641, size: 32, offset: 960)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1340, file: !334, line: 2853, baseType: !641, size: 32, offset: 992)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !655, file: !334, line: 3390, baseType: !1346, size: 1024)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1346, file: !334, line: 2858, baseType: !823, size: 960)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1346, file: !334, line: 2859, baseType: !1313, size: 64, offset: 960)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !655, file: !334, line: 3391, baseType: !1351, size: 960)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1351, file: !334, line: 2863, baseType: !823, size: 960)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !655, file: !334, line: 3392, baseType: !1355, size: 1472)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1356)
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1355, file: !334, line: 3305, baseType: !1280, size: 1472)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !655, file: !334, line: 3393, baseType: !1359, size: 1792)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1360)
!1360 = !{!1361, !1362, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1359, file: !334, line: 3249, baseType: !1280, size: 1472)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1359, file: !334, line: 3251, baseType: !1363, size: 64, offset: 1472)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1365, line: 463, size: 1152, elements: !1366)
!1365 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1366 = !{!1367, !1370, !1401, !1402, !1517, !1520, !1521, !1522, !1523, !1524, !1525, !1549, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1364, file: !1365, line: 464, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1365, line: 464, flags: DIFlagFwdDecl)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1364, file: !1365, line: 467, baseType: !1371, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1373)
!1373 = !{!1374, !1376, !1377, !1390, !1391, !1392, !1393, !1394, !1395, !1397, !1399, !1400}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1372, file: !318, line: 377, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !653, line: 111, baseType: !940)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1372, file: !318, line: 378, baseType: !1375, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1372, file: !318, line: 381, baseType: !1378, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1381)
!1381 = !{!1382}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1380, file: !318, line: 282, baseType: !1383, size: 128)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1385)
!1385 = !{!1386, !1387, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1384, file: !318, line: 281, baseType: !7, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1384, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1384, file: !318, line: 281, baseType: !1389, size: 64, offset: 64)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1375, size: 64, elements: !751)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1372, file: !318, line: 384, baseType: !641, size: 32, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1372, file: !318, line: 387, baseType: !641, size: 32, offset: 224)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1372, file: !318, line: 390, baseType: !641, size: 32, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1372, file: !318, line: 394, baseType: !1378, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1372, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1372, file: !318, line: 399, baseType: !1396, size: 64, offset: 416)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !895)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1372, file: !318, line: 402, baseType: !1398, size: 64, offset: 480)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !895)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1372, file: !318, line: 406, baseType: !641, size: 32, offset: 544)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1372, file: !318, line: 409, baseType: !641, size: 32, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1364, file: !1365, line: 470, baseType: !967, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1364, file: !1365, line: 473, baseType: !1403, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1315, line: 39, size: 1152, elements: !1405)
!1405 = !{!1406, !1456, !1469, !1481, !1482, !1494, !1495, !1499, !1500, !1501, !1502, !1503}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1404, file: !1315, line: 41, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1408, line: 144, baseType: !1409)
!1408 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1408, line: 100, size: 896, elements: !1411)
!1411 = !{!1412, !1420, !1425, !1430, !1432, !1433, !1434, !1435, !1436, !1437, !1442, !1444, !1445, !1450, !1455}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1410, file: !1408, line: 102, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1408, line: 52, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1408, line: 47, baseType: !7)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1410, file: !1408, line: 105, baseType: !1421, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1408, line: 59, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!641, !1418, !1418}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1410, file: !1408, line: 108, baseType: !1426, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1408, line: 63, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !645}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1410, file: !1408, line: 111, baseType: !1431, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1410, file: !1408, line: 114, baseType: !1121, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1410, file: !1408, line: 117, baseType: !1121, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1410, file: !1408, line: 120, baseType: !1121, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1410, file: !1408, line: 124, baseType: !7, size: 32, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1410, file: !1408, line: 128, baseType: !7, size: 32, offset: 480)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1410, file: !1408, line: 131, baseType: !1438, size: 64, offset: 512)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1408, line: 75, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!645, !1121, !1121}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1410, file: !1408, line: 132, baseType: !1443, size: 64, offset: 576)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1408, line: 78, baseType: !1427)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1410, file: !1408, line: 135, baseType: !645, size: 64, offset: 640)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1410, file: !1408, line: 136, baseType: !1446, size: 64, offset: 704)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1408, line: 82, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!645, !645, !1121, !1121}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1410, file: !1408, line: 137, baseType: !1451, size: 64, offset: 768)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1408, line: 83, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !645, !645}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1410, file: !1408, line: 141, baseType: !7, size: 32, offset: 832)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1404, file: !1315, line: 48, baseType: !1457, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !568, line: 35, baseType: !1459)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !568, line: 35, size: 128, elements: !1460)
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1459, file: !568, line: 35, baseType: !1462, size: 128)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !568, line: 33, baseType: !1463)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !568, line: 33, size: 128, elements: !1464)
!1464 = !{!1465, !1466, !1467}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1463, file: !568, line: 33, baseType: !7, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1463, file: !568, line: 33, baseType: !7, size: 32, offset: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1463, file: !568, line: 33, baseType: !1468, size: 64, offset: 64)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 64, elements: !751)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1404, file: !1315, line: 51, baseType: !1470, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1472, file: !334, line: 183, baseType: !1475, size: 128)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1476)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1477)
!1477 = !{!1478, !1479, !1480}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1476, file: !334, line: 182, baseType: !7, size: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1476, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1476, file: !334, line: 182, baseType: !1029, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1404, file: !1315, line: 54, baseType: !652, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1404, file: !1315, line: 57, baseType: !1483, size: 128, offset: 256)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1484, line: 31, size: 128, elements: !1485)
!1484 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1492}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1483, file: !1484, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1483, file: !1484, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1483, file: !1484, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1483, file: !1484, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1483, file: !1484, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1483, file: !1484, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1483, file: !1484, line: 56, baseType: !1493, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !653, line: 47, baseType: !879)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1404, file: !1315, line: 60, baseType: !1483, size: 128, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1404, file: !1315, line: 64, baseType: !1496, size: 64, offset: 512)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1498, line: 33, flags: DIFlagFwdDecl)
!1498 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1404, file: !1315, line: 67, baseType: !652, size: 64, offset: 576)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1404, file: !1315, line: 73, baseType: !1407, size: 64, offset: 640)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1404, file: !1315, line: 77, baseType: !1493, size: 64, offset: 704)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1404, file: !1315, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1404, file: !1315, line: 82, baseType: !1504, size: 320, offset: 832)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !561, line: 62, size: 320, elements: !1505)
!1505 = !{!1506, !1512, !1513, !1514, !1515, !1516}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1504, file: !561, line: 63, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !561, line: 56, size: 128, elements: !1509)
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1508, file: !561, line: 57, baseType: !1507, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1508, file: !561, line: 58, baseType: !750, size: 8, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1504, file: !561, line: 64, baseType: !7, size: 32, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1504, file: !561, line: 66, baseType: !7, size: 32, offset: 96)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1504, file: !561, line: 68, baseType: !640, size: 8, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1504, file: !561, line: 70, baseType: !1005, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1504, file: !561, line: 71, baseType: !1012, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1364, file: !1365, line: 476, baseType: !1518, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1365, line: 476, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1364, file: !1365, line: 479, baseType: !1407, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1364, file: !1365, line: 484, baseType: !652, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1364, file: !1365, line: 488, baseType: !652, size: 64, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1364, file: !1365, line: 493, baseType: !652, size: 64, offset: 512)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1364, file: !1365, line: 496, baseType: !652, size: 64, offset: 576)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1364, file: !1365, line: 501, baseType: !1526, size: 64, offset: 640)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !1528)
!1528 = !{!1529, !1532, !1533, !1534, !1535, !1537, !1538, !1543, !1544, !1545, !1546, !1547, !1548}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1527, file: !329, line: 2356, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1527, file: !329, line: 2357, baseType: !646, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1527, file: !329, line: 2358, baseType: !641, size: 32, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1527, file: !329, line: 2359, baseType: !641, size: 32, offset: 160)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1527, file: !329, line: 2360, baseType: !1536, size: 128, offset: 192)
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 128, elements: !919)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1527, file: !329, line: 2364, baseType: !641, size: 32, offset: 320)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1527, file: !329, line: 2367, baseType: !1539, size: 128, offset: 384)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1539, file: !329, line: 2351, baseType: !827, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1539, file: !329, line: 2352, baseType: !708, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1527, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1527, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1527, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1527, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1527, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1527, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1364, file: !1365, line: 504, baseType: !1550, size: 64, offset: 704)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1365, line: 504, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1364, file: !1365, line: 507, baseType: !1407, size: 64, offset: 768)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1364, file: !1365, line: 510, baseType: !641, size: 32, offset: 832)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1364, file: !1365, line: 513, baseType: !641, size: 32, offset: 864)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1364, file: !1365, line: 516, baseType: !777, size: 32, offset: 896)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1364, file: !1365, line: 519, baseType: !777, size: 32, offset: 928)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1364, file: !1365, line: 522, baseType: !7, size: 32, offset: 960)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1364, file: !1365, line: 523, baseType: !7, size: 32, offset: 992)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1364, file: !1365, line: 528, baseType: !646, size: 64, offset: 1024)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1364, file: !1365, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1364, file: !1365, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1364, file: !1365, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1364, file: !1365, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1364, file: !1365, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1364, file: !1365, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1364, file: !1365, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1364, file: !1365, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1364, file: !1365, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1364, file: !1365, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1364, file: !1365, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1364, file: !1365, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1364, file: !1365, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1364, file: !1365, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1364, file: !1365, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1364, file: !1365, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1359, file: !334, line: 3254, baseType: !652, size: 64, offset: 1536)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1359, file: !334, line: 3257, baseType: !652, size: 64, offset: 1600)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1359, file: !334, line: 3258, baseType: !652, size: 64, offset: 1664)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1359, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1359, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1359, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1359, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1359, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1359, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1359, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1359, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1359, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1359, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1359, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1359, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1359, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1359, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1359, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1359, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1359, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1359, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !655, file: !334, line: 3394, baseType: !1598, size: 1344)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1598, file: !334, line: 2280, baseType: !691, size: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1598, file: !334, line: 2281, baseType: !652, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1598, file: !334, line: 2282, baseType: !652, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1598, file: !334, line: 2283, baseType: !652, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1598, file: !334, line: 2284, baseType: !652, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1598, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1598, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1598, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1598, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1598, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1598, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1598, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1598, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1598, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1598, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1598, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1598, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1598, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1598, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1598, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1598, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1598, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1598, file: !334, line: 2306, baseType: !1232, size: 32, offset: 544)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1598, file: !334, line: 2307, baseType: !652, size: 64, offset: 576)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1598, file: !334, line: 2308, baseType: !652, size: 64, offset: 640)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1598, file: !334, line: 2314, baseType: !1626, size: 64, offset: 704)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !1627)
!1627 = !{!1628, !1629, !1630}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1626, file: !334, line: 2310, baseType: !641, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1626, file: !334, line: 2311, baseType: !646, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1626, file: !334, line: 2312, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1598, file: !334, line: 2315, baseType: !652, size: 64, offset: 768)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1598, file: !334, line: 2316, baseType: !652, size: 64, offset: 832)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1598, file: !334, line: 2317, baseType: !652, size: 64, offset: 896)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1598, file: !334, line: 2318, baseType: !652, size: 64, offset: 960)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1598, file: !334, line: 2319, baseType: !652, size: 64, offset: 1024)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1598, file: !334, line: 2320, baseType: !652, size: 64, offset: 1088)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1598, file: !334, line: 2321, baseType: !652, size: 64, offset: 1152)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1598, file: !334, line: 2322, baseType: !652, size: 64, offset: 1216)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1598, file: !334, line: 2324, baseType: !1642, size: 64, offset: 1280)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !655, file: !334, line: 3395, baseType: !1645, size: 320)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !1646)
!1646 = !{!1647, !1648, !1649}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1645, file: !334, line: 1470, baseType: !691, size: 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1645, file: !334, line: 1471, baseType: !652, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1645, file: !334, line: 1472, baseType: !652, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !655, file: !334, line: 3396, baseType: !1651, size: 320)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !1652)
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1651, file: !334, line: 1483, baseType: !691, size: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1651, file: !334, line: 1484, baseType: !641, size: 32, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1651, file: !334, line: 1485, baseType: !1029, size: 64, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !655, file: !334, line: 3397, baseType: !1657, size: 384)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !1658)
!1658 = !{!1659, !1660, !1661, !1662}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1657, file: !334, line: 1830, baseType: !691, size: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1657, file: !334, line: 1831, baseType: !777, size: 32, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1657, file: !334, line: 1832, baseType: !652, size: 64, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1657, file: !334, line: 1835, baseType: !1029, size: 64, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !655, file: !334, line: 3398, baseType: !1664, size: 704)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !1665)
!1665 = !{!1666, !1667, !1668, !1669, !1670, !1675}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1664, file: !334, line: 1899, baseType: !691, size: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1664, file: !334, line: 1902, baseType: !652, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1664, file: !334, line: 1905, baseType: !976, size: 64, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1664, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1664, file: !334, line: 1911, baseType: !1671, size: 64, offset: 384)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1315, line: 117, size: 128, elements: !1673)
!1673 = !{!1674}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1672, file: !1315, line: 120, baseType: !1483, size: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1664, file: !334, line: 1914, baseType: !1017, size: 256, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !655, file: !334, line: 3399, baseType: !1677, size: 704)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1677, file: !334, line: 2009, baseType: !691, size: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1677, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1677, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1677, file: !334, line: 2014, baseType: !777, size: 32, offset: 224)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1677, file: !334, line: 2016, baseType: !652, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1677, file: !334, line: 2017, baseType: !1470, size: 64, offset: 320)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1677, file: !334, line: 2019, baseType: !652, size: 64, offset: 384)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1677, file: !334, line: 2020, baseType: !652, size: 64, offset: 448)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1677, file: !334, line: 2021, baseType: !652, size: 64, offset: 512)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1677, file: !334, line: 2022, baseType: !652, size: 64, offset: 576)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1677, file: !334, line: 2023, baseType: !652, size: 64, offset: 640)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !655, file: !334, line: 3400, baseType: !1691, size: 832)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1691, file: !334, line: 2431, baseType: !691, size: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1691, file: !334, line: 2433, baseType: !652, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1691, file: !334, line: 2434, baseType: !652, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1691, file: !334, line: 2435, baseType: !652, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1691, file: !334, line: 2436, baseType: !652, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1691, file: !334, line: 2437, baseType: !1470, size: 64, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1691, file: !334, line: 2438, baseType: !652, size: 64, offset: 512)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1691, file: !334, line: 2440, baseType: !652, size: 64, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1691, file: !334, line: 2441, baseType: !652, size: 64, offset: 640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1691, file: !334, line: 2443, baseType: !1703, size: 128, offset: 704)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !1705)
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1704, file: !334, line: 182, baseType: !1475, size: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !655, file: !334, line: 3401, baseType: !1708, size: 320)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !1709)
!1709 = !{!1710, !1711, !1718}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1708, file: !334, line: 3329, baseType: !691, size: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1708, file: !334, line: 3330, baseType: !1712, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !1714)
!1714 = !{!1715, !1716, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1713, file: !334, line: 3322, baseType: !1712, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1713, file: !334, line: 3323, baseType: !1712, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1713, file: !334, line: 3324, baseType: !652, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1708, file: !334, line: 3331, baseType: !1712, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !655, file: !334, line: 3402, baseType: !1720, size: 256)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1720, file: !334, line: 1541, baseType: !691, size: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1720, file: !334, line: 1542, baseType: !1724, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !1726)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !1727)
!1727 = !{!1728}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1726, file: !334, line: 1538, baseType: !1729, size: 192)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !1731)
!1731 = !{!1732, !1733, !1734}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1730, file: !334, line: 1537, baseType: !7, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1730, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1730, file: !334, line: 1537, baseType: !1735, size: 128, offset: 64)
!1735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1736, size: 128, elements: !751)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !1737)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1737, file: !334, line: 1533, baseType: !652, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1737, file: !334, line: 1534, baseType: !652, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !655, file: !334, line: 3403, baseType: !1742, size: 512)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747, !1753, !1754, !1755}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1742, file: !334, line: 1939, baseType: !691, size: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1742, file: !334, line: 1940, baseType: !777, size: 32, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1742, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1742, file: !334, line: 1946, baseType: !1748, size: 32, offset: 256)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !1749)
!1749 = !{!1750, !1751, !1752}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1748, file: !334, line: 1943, baseType: !352, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1748, file: !334, line: 1944, baseType: !359, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1748, file: !334, line: 1945, baseType: !366, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1742, file: !334, line: 1950, baseType: !966, size: 64, offset: 320)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1742, file: !334, line: 1951, baseType: !966, size: 64, offset: 384)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1742, file: !334, line: 1953, baseType: !1029, size: 64, offset: 448)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !655, file: !334, line: 3404, baseType: !1757, size: 1664)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1757, file: !334, line: 3338, baseType: !691, size: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1757, file: !334, line: 3341, baseType: !1761, size: 1472, offset: 192)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1762, line: 410, size: 1472, elements: !1763)
!1762 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1761, file: !1762, line: 412, baseType: !641, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1761, file: !1762, line: 413, baseType: !641, size: 32, offset: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1761, file: !1762, line: 414, baseType: !641, size: 32, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1761, file: !1762, line: 415, baseType: !641, size: 32, offset: 96)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1761, file: !1762, line: 416, baseType: !641, size: 32, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1761, file: !1762, line: 417, baseType: !641, size: 32, offset: 160)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1761, file: !1762, line: 418, baseType: !640, size: 8, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1761, file: !1762, line: 419, baseType: !640, size: 8, offset: 200)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1761, file: !1762, line: 420, baseType: !1773, size: 8, offset: 208)
!1773 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1761, file: !1762, line: 421, baseType: !1773, size: 8, offset: 216)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1761, file: !1762, line: 422, baseType: !1773, size: 8, offset: 224)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1761, file: !1762, line: 423, baseType: !1773, size: 8, offset: 232)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1761, file: !1762, line: 424, baseType: !1773, size: 8, offset: 240)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1761, file: !1762, line: 425, baseType: !1773, size: 8, offset: 248)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1761, file: !1762, line: 426, baseType: !1773, size: 8, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1761, file: !1762, line: 427, baseType: !1773, size: 8, offset: 264)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1761, file: !1762, line: 428, baseType: !1773, size: 8, offset: 272)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1761, file: !1762, line: 429, baseType: !1773, size: 8, offset: 280)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1761, file: !1762, line: 430, baseType: !1773, size: 8, offset: 288)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1761, file: !1762, line: 431, baseType: !1773, size: 8, offset: 296)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1761, file: !1762, line: 432, baseType: !1773, size: 8, offset: 304)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1761, file: !1762, line: 433, baseType: !1773, size: 8, offset: 312)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1761, file: !1762, line: 434, baseType: !1773, size: 8, offset: 320)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1761, file: !1762, line: 435, baseType: !1773, size: 8, offset: 328)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1761, file: !1762, line: 436, baseType: !1773, size: 8, offset: 336)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1761, file: !1762, line: 437, baseType: !1773, size: 8, offset: 344)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1761, file: !1762, line: 438, baseType: !1773, size: 8, offset: 352)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1761, file: !1762, line: 439, baseType: !1773, size: 8, offset: 360)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1761, file: !1762, line: 440, baseType: !1773, size: 8, offset: 368)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1761, file: !1762, line: 441, baseType: !1773, size: 8, offset: 376)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1761, file: !1762, line: 442, baseType: !1773, size: 8, offset: 384)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1761, file: !1762, line: 443, baseType: !1773, size: 8, offset: 392)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1761, file: !1762, line: 444, baseType: !1773, size: 8, offset: 400)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1761, file: !1762, line: 445, baseType: !1773, size: 8, offset: 408)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1761, file: !1762, line: 446, baseType: !1773, size: 8, offset: 416)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1761, file: !1762, line: 447, baseType: !1773, size: 8, offset: 424)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1761, file: !1762, line: 448, baseType: !1773, size: 8, offset: 432)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1761, file: !1762, line: 449, baseType: !1773, size: 8, offset: 440)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1761, file: !1762, line: 450, baseType: !1773, size: 8, offset: 448)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1761, file: !1762, line: 451, baseType: !1773, size: 8, offset: 456)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1761, file: !1762, line: 452, baseType: !1773, size: 8, offset: 464)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1761, file: !1762, line: 453, baseType: !1773, size: 8, offset: 472)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1761, file: !1762, line: 454, baseType: !1773, size: 8, offset: 480)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1761, file: !1762, line: 455, baseType: !1773, size: 8, offset: 488)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1761, file: !1762, line: 456, baseType: !1773, size: 8, offset: 496)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1761, file: !1762, line: 457, baseType: !1773, size: 8, offset: 504)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1761, file: !1762, line: 458, baseType: !1773, size: 8, offset: 512)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1761, file: !1762, line: 459, baseType: !1773, size: 8, offset: 520)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1761, file: !1762, line: 460, baseType: !1773, size: 8, offset: 528)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1761, file: !1762, line: 461, baseType: !1773, size: 8, offset: 536)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1761, file: !1762, line: 462, baseType: !1773, size: 8, offset: 544)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1761, file: !1762, line: 463, baseType: !1773, size: 8, offset: 552)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1761, file: !1762, line: 464, baseType: !1773, size: 8, offset: 560)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1761, file: !1762, line: 465, baseType: !1773, size: 8, offset: 568)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1761, file: !1762, line: 466, baseType: !1773, size: 8, offset: 576)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1761, file: !1762, line: 467, baseType: !1773, size: 8, offset: 584)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1761, file: !1762, line: 468, baseType: !1773, size: 8, offset: 592)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1761, file: !1762, line: 469, baseType: !1773, size: 8, offset: 600)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1761, file: !1762, line: 470, baseType: !1773, size: 8, offset: 608)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1761, file: !1762, line: 471, baseType: !1773, size: 8, offset: 616)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1761, file: !1762, line: 472, baseType: !1773, size: 8, offset: 624)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1761, file: !1762, line: 473, baseType: !1773, size: 8, offset: 632)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1761, file: !1762, line: 474, baseType: !1773, size: 8, offset: 640)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1761, file: !1762, line: 475, baseType: !1773, size: 8, offset: 648)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1761, file: !1762, line: 476, baseType: !1773, size: 8, offset: 656)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1761, file: !1762, line: 477, baseType: !1773, size: 8, offset: 664)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1761, file: !1762, line: 478, baseType: !1773, size: 8, offset: 672)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1761, file: !1762, line: 479, baseType: !1773, size: 8, offset: 680)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1761, file: !1762, line: 480, baseType: !1773, size: 8, offset: 688)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1761, file: !1762, line: 481, baseType: !1773, size: 8, offset: 696)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1761, file: !1762, line: 482, baseType: !1773, size: 8, offset: 704)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1761, file: !1762, line: 483, baseType: !1773, size: 8, offset: 712)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1761, file: !1762, line: 484, baseType: !1773, size: 8, offset: 720)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1761, file: !1762, line: 485, baseType: !1773, size: 8, offset: 728)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1761, file: !1762, line: 486, baseType: !1773, size: 8, offset: 736)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1761, file: !1762, line: 487, baseType: !1773, size: 8, offset: 744)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1761, file: !1762, line: 488, baseType: !1773, size: 8, offset: 752)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1761, file: !1762, line: 489, baseType: !1773, size: 8, offset: 760)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1761, file: !1762, line: 490, baseType: !1773, size: 8, offset: 768)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1761, file: !1762, line: 491, baseType: !1773, size: 8, offset: 776)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1761, file: !1762, line: 492, baseType: !1773, size: 8, offset: 784)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1761, file: !1762, line: 493, baseType: !1773, size: 8, offset: 792)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1761, file: !1762, line: 494, baseType: !1773, size: 8, offset: 800)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1761, file: !1762, line: 495, baseType: !1773, size: 8, offset: 808)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1761, file: !1762, line: 496, baseType: !1773, size: 8, offset: 816)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1761, file: !1762, line: 497, baseType: !1773, size: 8, offset: 824)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1761, file: !1762, line: 498, baseType: !1773, size: 8, offset: 832)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1761, file: !1762, line: 499, baseType: !1773, size: 8, offset: 840)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1761, file: !1762, line: 500, baseType: !1773, size: 8, offset: 848)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1761, file: !1762, line: 501, baseType: !1773, size: 8, offset: 856)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1761, file: !1762, line: 502, baseType: !1773, size: 8, offset: 864)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1761, file: !1762, line: 503, baseType: !1773, size: 8, offset: 872)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1761, file: !1762, line: 504, baseType: !1773, size: 8, offset: 880)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1761, file: !1762, line: 505, baseType: !1773, size: 8, offset: 888)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1761, file: !1762, line: 506, baseType: !1773, size: 8, offset: 896)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1761, file: !1762, line: 507, baseType: !1773, size: 8, offset: 904)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1761, file: !1762, line: 508, baseType: !1773, size: 8, offset: 912)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1761, file: !1762, line: 509, baseType: !1773, size: 8, offset: 920)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1761, file: !1762, line: 510, baseType: !1773, size: 8, offset: 928)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1761, file: !1762, line: 511, baseType: !1773, size: 8, offset: 936)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1761, file: !1762, line: 512, baseType: !1773, size: 8, offset: 944)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1761, file: !1762, line: 513, baseType: !1773, size: 8, offset: 952)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1761, file: !1762, line: 514, baseType: !1773, size: 8, offset: 960)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1761, file: !1762, line: 515, baseType: !1773, size: 8, offset: 968)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1761, file: !1762, line: 516, baseType: !1773, size: 8, offset: 976)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1761, file: !1762, line: 517, baseType: !1773, size: 8, offset: 984)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1761, file: !1762, line: 518, baseType: !1773, size: 8, offset: 992)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1761, file: !1762, line: 519, baseType: !1773, size: 8, offset: 1000)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1761, file: !1762, line: 520, baseType: !1773, size: 8, offset: 1008)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1761, file: !1762, line: 521, baseType: !1773, size: 8, offset: 1016)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1761, file: !1762, line: 522, baseType: !1773, size: 8, offset: 1024)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1761, file: !1762, line: 523, baseType: !1773, size: 8, offset: 1032)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1761, file: !1762, line: 524, baseType: !1773, size: 8, offset: 1040)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1761, file: !1762, line: 525, baseType: !1773, size: 8, offset: 1048)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1761, file: !1762, line: 526, baseType: !1773, size: 8, offset: 1056)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1761, file: !1762, line: 527, baseType: !1773, size: 8, offset: 1064)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1761, file: !1762, line: 528, baseType: !1773, size: 8, offset: 1072)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1761, file: !1762, line: 529, baseType: !1773, size: 8, offset: 1080)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1761, file: !1762, line: 530, baseType: !1773, size: 8, offset: 1088)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1761, file: !1762, line: 531, baseType: !1773, size: 8, offset: 1096)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1761, file: !1762, line: 532, baseType: !1773, size: 8, offset: 1104)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1761, file: !1762, line: 533, baseType: !1773, size: 8, offset: 1112)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1761, file: !1762, line: 534, baseType: !1773, size: 8, offset: 1120)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1761, file: !1762, line: 535, baseType: !1773, size: 8, offset: 1128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1761, file: !1762, line: 536, baseType: !1773, size: 8, offset: 1136)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1761, file: !1762, line: 537, baseType: !1773, size: 8, offset: 1144)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1761, file: !1762, line: 538, baseType: !1773, size: 8, offset: 1152)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1761, file: !1762, line: 539, baseType: !1773, size: 8, offset: 1160)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1761, file: !1762, line: 540, baseType: !1773, size: 8, offset: 1168)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1761, file: !1762, line: 541, baseType: !1773, size: 8, offset: 1176)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1761, file: !1762, line: 542, baseType: !1773, size: 8, offset: 1184)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1761, file: !1762, line: 543, baseType: !1773, size: 8, offset: 1192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1761, file: !1762, line: 544, baseType: !1773, size: 8, offset: 1200)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1761, file: !1762, line: 545, baseType: !1773, size: 8, offset: 1208)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1761, file: !1762, line: 546, baseType: !1773, size: 8, offset: 1216)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1761, file: !1762, line: 547, baseType: !1773, size: 8, offset: 1224)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1761, file: !1762, line: 548, baseType: !1773, size: 8, offset: 1232)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1761, file: !1762, line: 549, baseType: !1773, size: 8, offset: 1240)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1761, file: !1762, line: 550, baseType: !1773, size: 8, offset: 1248)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1761, file: !1762, line: 551, baseType: !1773, size: 8, offset: 1256)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1761, file: !1762, line: 552, baseType: !1773, size: 8, offset: 1264)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1761, file: !1762, line: 553, baseType: !1773, size: 8, offset: 1272)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1761, file: !1762, line: 554, baseType: !1773, size: 8, offset: 1280)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1761, file: !1762, line: 555, baseType: !1773, size: 8, offset: 1288)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1761, file: !1762, line: 556, baseType: !1773, size: 8, offset: 1296)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1761, file: !1762, line: 557, baseType: !1773, size: 8, offset: 1304)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1761, file: !1762, line: 558, baseType: !1773, size: 8, offset: 1312)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1761, file: !1762, line: 559, baseType: !1773, size: 8, offset: 1320)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1761, file: !1762, line: 560, baseType: !1773, size: 8, offset: 1328)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1761, file: !1762, line: 561, baseType: !1773, size: 8, offset: 1336)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1761, file: !1762, line: 562, baseType: !1773, size: 8, offset: 1344)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1761, file: !1762, line: 563, baseType: !1773, size: 8, offset: 1352)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1761, file: !1762, line: 564, baseType: !1773, size: 8, offset: 1360)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1761, file: !1762, line: 565, baseType: !1773, size: 8, offset: 1368)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1761, file: !1762, line: 566, baseType: !1773, size: 8, offset: 1376)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1761, file: !1762, line: 567, baseType: !1773, size: 8, offset: 1384)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1761, file: !1762, line: 568, baseType: !1773, size: 8, offset: 1392)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1761, file: !1762, line: 569, baseType: !1773, size: 8, offset: 1400)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1761, file: !1762, line: 570, baseType: !1773, size: 8, offset: 1408)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1761, file: !1762, line: 571, baseType: !1773, size: 8, offset: 1416)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1761, file: !1762, line: 572, baseType: !1773, size: 8, offset: 1424)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1761, file: !1762, line: 573, baseType: !1773, size: 8, offset: 1432)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1761, file: !1762, line: 574, baseType: !1773, size: 8, offset: 1440)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !655, file: !334, line: 3405, baseType: !1929, size: 384)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1929, file: !334, line: 3353, baseType: !691, size: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1929, file: !334, line: 3356, baseType: !1933, size: 192, offset: 192)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1762, line: 578, size: 192, elements: !1934)
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1933, file: !1762, line: 580, baseType: !641, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1933, file: !1762, line: 581, baseType: !641, size: 32, offset: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1933, file: !1762, line: 582, baseType: !641, size: 32, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1933, file: !1762, line: 583, baseType: !641, size: 32, offset: 96)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1933, file: !1762, line: 584, baseType: !640, size: 8, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1933, file: !1762, line: 585, baseType: !640, size: 8, offset: 136)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1933, file: !1762, line: 586, baseType: !640, size: 8, offset: 144)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1933, file: !1762, line: 587, baseType: !640, size: 8, offset: 152)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1933, file: !1762, line: 588, baseType: !640, size: 8, offset: 160)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1933, file: !1762, line: 589, baseType: !640, size: 8, offset: 168)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1933, file: !1762, line: 590, baseType: !640, size: 8, offset: 176)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !649, file: !3, line: 98, baseType: !652, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !561, line: 30, baseType: !1948)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !334, line: 1893, baseType: !1017)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !978)
!1952 = !{!0}
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !1954)
!1954 = !{!1955}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1953, file: !6, line: 158, baseType: !1956, size: 640)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1957)
!1957 = !{!1958, !1959, !1960, !1964, !1968, !1970, !1971, !1972, !1974, !1975, !1976, !1977, !1978}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1956, file: !6, line: 117, baseType: !5, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1956, file: !6, line: 121, baseType: !646, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1956, file: !6, line: 125, baseType: !1961, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!640}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1956, file: !6, line: 130, baseType: !1965, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!7}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1956, file: !6, line: 133, baseType: !1969, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1956, file: !6, line: 136, baseType: !1969, size: 64, offset: 320)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1956, file: !6, line: 139, baseType: !641, size: 32, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1956, file: !6, line: 143, baseType: !1973, size: 32, offset: 416)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1956, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1956, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1956, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1956, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1956, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1979 = !{i32 2, !"Dwarf Version", i32 4}
!1980 = !{i32 2, !"Debug Info Version", i32 3}
!1981 = !{i32 1, !"wchar_size", i32 4}
!1982 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1983 = distinct !DISubprogram(name: "vprintf", scope: !1984, file: !1984, line: 39, type: !1985, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1995)
!1984 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!641, !1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !646)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1990)
!1990 = !{!1991, !1992, !1993, !1994}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1989, file: !3, baseType: !7, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1989, file: !3, baseType: !7, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1989, file: !3, baseType: !645, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1989, file: !3, baseType: !645, size: 64, offset: 128)
!1995 = !{!1996, !1997}
!1996 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1983, file: !1984, line: 39, type: !1987)
!1997 = !DILocalVariable(name: "__arg", arg: 2, scope: !1983, file: !1984, line: 39, type: !1988)
!1998 = !DILocation(line: 0, scope: !1983)
!1999 = !DILocation(line: 41, column: 20, scope: !1983)
!2000 = !DILocation(line: 41, column: 10, scope: !1983)
!2001 = !DILocation(line: 41, column: 3, scope: !1983)
!2002 = distinct !DISubprogram(name: "getchar", scope: !1984, file: !1984, line: 47, type: !2003, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!641}
!2005 = !{}
!2006 = !DILocation(line: 49, column: 16, scope: !2002)
!2007 = !DILocation(line: 49, column: 10, scope: !2002)
!2008 = !DILocation(line: 49, column: 3, scope: !2002)
!2009 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1984, file: !1984, line: 56, type: !2010, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2063)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!641, !2012}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2014, line: 7, baseType: !2015)
!2014 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2016, line: 49, size: 1728, elements: !2017)
!2016 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2017 = !{!2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2033, !2035, !2036, !2037, !2040, !2042, !2043, !2044, !2047, !2049, !2052, !2055, !2056, !2057, !2058, !2059}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2015, file: !2016, line: 51, baseType: !641, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2015, file: !2016, line: 54, baseType: !643, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2015, file: !2016, line: 55, baseType: !643, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2015, file: !2016, line: 56, baseType: !643, size: 64, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2015, file: !2016, line: 57, baseType: !643, size: 64, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2015, file: !2016, line: 58, baseType: !643, size: 64, offset: 320)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2015, file: !2016, line: 59, baseType: !643, size: 64, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2015, file: !2016, line: 60, baseType: !643, size: 64, offset: 448)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2015, file: !2016, line: 61, baseType: !643, size: 64, offset: 512)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2015, file: !2016, line: 64, baseType: !643, size: 64, offset: 576)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2015, file: !2016, line: 65, baseType: !643, size: 64, offset: 640)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2015, file: !2016, line: 66, baseType: !643, size: 64, offset: 704)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2015, file: !2016, line: 68, baseType: !2031, size: 64, offset: 768)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2016, line: 36, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2015, file: !2016, line: 70, baseType: !2034, size: 64, offset: 832)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2015, file: !2016, line: 72, baseType: !641, size: 32, offset: 896)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2015, file: !2016, line: 73, baseType: !641, size: 32, offset: 928)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2015, file: !2016, line: 74, baseType: !2038, size: 64, offset: 960)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2039, line: 152, baseType: !708)
!2039 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2015, file: !2016, line: 77, baseType: !2041, size: 16, offset: 1024)
!2041 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2015, file: !2016, line: 78, baseType: !1773, size: 8, offset: 1040)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2015, file: !2016, line: 79, baseType: !750, size: 8, offset: 1048)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2015, file: !2016, line: 81, baseType: !2045, size: 64, offset: 1088)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2016, line: 43, baseType: null)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2015, file: !2016, line: 89, baseType: !2048, size: 64, offset: 1152)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2039, line: 153, baseType: !708)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2015, file: !2016, line: 91, baseType: !2050, size: 64, offset: 1216)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2016, line: 37, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2015, file: !2016, line: 92, baseType: !2053, size: 64, offset: 1280)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2016, line: 38, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2015, file: !2016, line: 93, baseType: !2034, size: 64, offset: 1344)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2015, file: !2016, line: 94, baseType: !645, size: 64, offset: 1408)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2015, file: !2016, line: 95, baseType: !1121, size: 64, offset: 1472)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2015, file: !2016, line: 96, baseType: !641, size: 32, offset: 1536)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2015, file: !2016, line: 98, baseType: !2060, size: 160, offset: 1568)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 160, elements: !2061)
!2061 = !{!2062}
!2062 = !DISubrange(count: 20)
!2063 = !{!2064}
!2064 = !DILocalVariable(name: "__fp", arg: 1, scope: !2009, file: !1984, line: 56, type: !2012)
!2065 = !DILocation(line: 0, scope: !2009)
!2066 = !DILocation(line: 58, column: 10, scope: !2009)
!2067 = !DILocation(line: 58, column: 3, scope: !2009)
!2068 = distinct !DISubprogram(name: "getc_unlocked", scope: !1984, file: !1984, line: 66, type: !2010, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2069)
!2069 = !{!2070}
!2070 = !DILocalVariable(name: "__fp", arg: 1, scope: !2068, file: !1984, line: 66, type: !2012)
!2071 = !DILocation(line: 0, scope: !2068)
!2072 = !DILocation(line: 68, column: 10, scope: !2068)
!2073 = !DILocation(line: 68, column: 3, scope: !2068)
!2074 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1984, file: !1984, line: 73, type: !2003, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2005)
!2075 = !DILocation(line: 75, column: 10, scope: !2074)
!2076 = !DILocation(line: 75, column: 3, scope: !2074)
!2077 = distinct !DISubprogram(name: "putchar", scope: !1984, file: !1984, line: 82, type: !2078, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!641, !641}
!2080 = !{!2081}
!2081 = !DILocalVariable(name: "__c", arg: 1, scope: !2077, file: !1984, line: 82, type: !641)
!2082 = !DILocation(line: 0, scope: !2077)
!2083 = !DILocation(line: 84, column: 21, scope: !2077)
!2084 = !DILocation(line: 84, column: 10, scope: !2077)
!2085 = !DILocation(line: 84, column: 3, scope: !2077)
!2086 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1984, file: !1984, line: 91, type: !2087, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!641, !641, !2012}
!2089 = !{!2090, !2091}
!2090 = !DILocalVariable(name: "__c", arg: 1, scope: !2086, file: !1984, line: 91, type: !641)
!2091 = !DILocalVariable(name: "__stream", arg: 2, scope: !2086, file: !1984, line: 91, type: !2012)
!2092 = !DILocation(line: 0, scope: !2086)
!2093 = !DILocation(line: 93, column: 10, scope: !2086)
!2094 = !DILocation(line: 93, column: 3, scope: !2086)
!2095 = distinct !DISubprogram(name: "putc_unlocked", scope: !1984, file: !1984, line: 101, type: !2087, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2096 = !{!2097, !2098}
!2097 = !DILocalVariable(name: "__c", arg: 1, scope: !2095, file: !1984, line: 101, type: !641)
!2098 = !DILocalVariable(name: "__stream", arg: 2, scope: !2095, file: !1984, line: 101, type: !2012)
!2099 = !DILocation(line: 0, scope: !2095)
!2100 = !DILocation(line: 103, column: 10, scope: !2095)
!2101 = !DILocation(line: 103, column: 3, scope: !2095)
!2102 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1984, file: !1984, line: 108, type: !2078, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2103)
!2103 = !{!2104}
!2104 = !DILocalVariable(name: "__c", arg: 1, scope: !2102, file: !1984, line: 108, type: !641)
!2105 = !DILocation(line: 0, scope: !2102)
!2106 = !DILocation(line: 110, column: 10, scope: !2102)
!2107 = !DILocation(line: 110, column: 3, scope: !2102)
!2108 = distinct !DISubprogram(name: "getline", scope: !1984, file: !1984, line: 118, type: !2109, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2113)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!2111, !642, !2112, !2012}
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2039, line: 193, baseType: !708)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!2113 = !{!2114, !2115, !2116}
!2114 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2108, file: !1984, line: 118, type: !642)
!2115 = !DILocalVariable(name: "__n", arg: 2, scope: !2108, file: !1984, line: 118, type: !2112)
!2116 = !DILocalVariable(name: "__stream", arg: 3, scope: !2108, file: !1984, line: 118, type: !2012)
!2117 = !DILocation(line: 0, scope: !2108)
!2118 = !DILocation(line: 120, column: 10, scope: !2108)
!2119 = !DILocation(line: 120, column: 3, scope: !2108)
!2120 = distinct !DISubprogram(name: "feof_unlocked", scope: !1984, file: !1984, line: 128, type: !2010, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2121)
!2121 = !{!2122}
!2122 = !DILocalVariable(name: "__stream", arg: 1, scope: !2120, file: !1984, line: 128, type: !2012)
!2123 = !DILocation(line: 0, scope: !2120)
!2124 = !DILocation(line: 130, column: 10, scope: !2120)
!2125 = !DILocation(line: 130, column: 3, scope: !2120)
!2126 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1984, file: !1984, line: 135, type: !2010, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2127)
!2127 = !{!2128}
!2128 = !DILocalVariable(name: "__stream", arg: 1, scope: !2126, file: !1984, line: 135, type: !2012)
!2129 = !DILocation(line: 0, scope: !2126)
!2130 = !DILocation(line: 137, column: 10, scope: !2126)
!2131 = !DILocation(line: 137, column: 3, scope: !2126)
!2132 = distinct !DISubprogram(name: "tolower", scope: !2133, file: !2133, line: 207, type: !2078, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2134)
!2133 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2134 = !{!2135}
!2135 = !DILocalVariable(name: "__c", arg: 1, scope: !2132, file: !2133, line: 207, type: !641)
!2136 = !DILocation(line: 0, scope: !2132)
!2137 = !DILocation(line: 209, column: 22, scope: !2132)
!2138 = !DILocation(line: 209, column: 39, scope: !2132)
!2139 = !DILocation(line: 209, column: 38, scope: !2132)
!2140 = !DILocation(line: 209, column: 37, scope: !2132)
!2141 = !DILocation(line: 209, column: 10, scope: !2132)
!2142 = !DILocation(line: 209, column: 3, scope: !2132)
!2143 = distinct !DISubprogram(name: "toupper", scope: !2133, file: !2133, line: 213, type: !2078, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2144 = !{!2145}
!2145 = !DILocalVariable(name: "__c", arg: 1, scope: !2143, file: !2133, line: 213, type: !641)
!2146 = !DILocation(line: 0, scope: !2143)
!2147 = !DILocation(line: 215, column: 22, scope: !2143)
!2148 = !DILocation(line: 215, column: 39, scope: !2143)
!2149 = !DILocation(line: 215, column: 38, scope: !2143)
!2150 = !DILocation(line: 215, column: 37, scope: !2143)
!2151 = !DILocation(line: 215, column: 10, scope: !2143)
!2152 = !DILocation(line: 215, column: 3, scope: !2143)
!2153 = distinct !DISubprogram(name: "atoi", scope: !2154, file: !2154, line: 361, type: !2155, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2157)
!2154 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!641, !646}
!2157 = !{!2158}
!2158 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2153, file: !2154, line: 361, type: !646)
!2159 = !DILocation(line: 0, scope: !2153)
!2160 = !DILocation(line: 363, column: 16, scope: !2153)
!2161 = !DILocation(line: 363, column: 10, scope: !2153)
!2162 = !DILocation(line: 363, column: 3, scope: !2153)
!2163 = distinct !DISubprogram(name: "atol", scope: !2154, file: !2154, line: 366, type: !2164, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!708, !646}
!2166 = !{!2167}
!2167 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2163, file: !2154, line: 366, type: !646)
!2168 = !DILocation(line: 0, scope: !2163)
!2169 = !DILocation(line: 368, column: 10, scope: !2163)
!2170 = !DILocation(line: 368, column: 3, scope: !2163)
!2171 = distinct !DISubprogram(name: "atoll", scope: !2154, file: !2154, line: 373, type: !2172, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2175)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!2174, !646}
!2174 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2175 = !{!2176}
!2176 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2171, file: !2154, line: 373, type: !646)
!2177 = !DILocation(line: 0, scope: !2171)
!2178 = !DILocation(line: 375, column: 10, scope: !2171)
!2179 = !DILocation(line: 375, column: 3, scope: !2171)
!2180 = distinct !DISubprogram(name: "bsearch", scope: !2181, file: !2181, line: 20, type: !2182, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2185)
!2181 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!645, !1418, !1418, !1121, !1121, !2184}
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2154, line: 808, baseType: !1422)
!2185 = !{!2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195}
!2186 = !DILocalVariable(name: "__key", arg: 1, scope: !2180, file: !2181, line: 20, type: !1418)
!2187 = !DILocalVariable(name: "__base", arg: 2, scope: !2180, file: !2181, line: 20, type: !1418)
!2188 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2180, file: !2181, line: 20, type: !1121)
!2189 = !DILocalVariable(name: "__size", arg: 4, scope: !2180, file: !2181, line: 20, type: !1121)
!2190 = !DILocalVariable(name: "__compar", arg: 5, scope: !2180, file: !2181, line: 21, type: !2184)
!2191 = !DILocalVariable(name: "__l", scope: !2180, file: !2181, line: 23, type: !1121)
!2192 = !DILocalVariable(name: "__u", scope: !2180, file: !2181, line: 23, type: !1121)
!2193 = !DILocalVariable(name: "__idx", scope: !2180, file: !2181, line: 23, type: !1121)
!2194 = !DILocalVariable(name: "__p", scope: !2180, file: !2181, line: 24, type: !1418)
!2195 = !DILocalVariable(name: "__comparison", scope: !2180, file: !2181, line: 25, type: !641)
!2196 = !DILocation(line: 0, scope: !2180)
!2197 = !DILocation(line: 29, column: 3, scope: !2180)
!2198 = !DILocation(line: 27, column: 7, scope: !2180)
!2199 = !DILocation(line: 29, column: 14, scope: !2180)
!2200 = !DILocation(line: 31, column: 20, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2180, file: !2181, line: 30, column: 5)
!2202 = !DILocation(line: 31, column: 27, scope: !2201)
!2203 = !DILocation(line: 32, column: 56, scope: !2201)
!2204 = !DILocation(line: 32, column: 47, scope: !2201)
!2205 = !DILocation(line: 33, column: 22, scope: !2201)
!2206 = !DILocation(line: 34, column: 24, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2201, file: !2181, line: 34, column: 11)
!2208 = !DILocation(line: 34, column: 11, scope: !2201)
!2209 = !DILocation(line: 36, column: 29, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !2181, line: 36, column: 16)
!2211 = !DILocation(line: 36, column: 16, scope: !2207)
!2212 = !DILocation(line: 37, column: 14, scope: !2210)
!2213 = distinct !{!2213, !2197, !2214}
!2214 = !DILocation(line: 40, column: 5, scope: !2180)
!2215 = !DILocation(line: 43, column: 1, scope: !2180)
!2216 = distinct !DISubprogram(name: "atof", scope: !2217, file: !2217, line: 25, type: !2218, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2221)
!2217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!2220, !646}
!2220 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2221 = !{!2222}
!2222 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2216, file: !2217, line: 25, type: !646)
!2223 = !DILocation(line: 0, scope: !2216)
!2224 = !DILocation(line: 27, column: 10, scope: !2216)
!2225 = !DILocation(line: 27, column: 3, scope: !2216)
!2226 = distinct !DISubprogram(name: "strtoimax", scope: !2227, file: !2227, line: 324, type: !2228, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2234)
!2227 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!2230, !1987, !2233, !641}
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2231, line: 101, baseType: !2232)
!2231 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2039, line: 72, baseType: !708)
!2233 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !642)
!2234 = !{!2235, !2236, !2237}
!2235 = !DILocalVariable(name: "nptr", arg: 1, scope: !2226, file: !2227, line: 324, type: !1987)
!2236 = !DILocalVariable(name: "endptr", arg: 2, scope: !2226, file: !2227, line: 324, type: !2233)
!2237 = !DILocalVariable(name: "base", arg: 3, scope: !2226, file: !2227, line: 324, type: !641)
!2238 = !DILocation(line: 0, scope: !2226)
!2239 = !DILocation(line: 327, column: 10, scope: !2226)
!2240 = !DILocation(line: 327, column: 3, scope: !2226)
!2241 = distinct !DISubprogram(name: "strtoumax", scope: !2227, file: !2227, line: 336, type: !2242, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2246)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!2244, !1987, !2233, !641}
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2231, line: 102, baseType: !2245)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2039, line: 73, baseType: !706)
!2246 = !{!2247, !2248, !2249}
!2247 = !DILocalVariable(name: "nptr", arg: 1, scope: !2241, file: !2227, line: 336, type: !1987)
!2248 = !DILocalVariable(name: "endptr", arg: 2, scope: !2241, file: !2227, line: 336, type: !2233)
!2249 = !DILocalVariable(name: "base", arg: 3, scope: !2241, file: !2227, line: 336, type: !641)
!2250 = !DILocation(line: 0, scope: !2241)
!2251 = !DILocation(line: 339, column: 10, scope: !2241)
!2252 = !DILocation(line: 339, column: 3, scope: !2241)
!2253 = distinct !DISubprogram(name: "wcstoimax", scope: !2227, file: !2227, line: 348, type: !2254, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2263)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!2230, !2256, !2260, !641}
!2256 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2257)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2259)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2227, line: 34, baseType: !641)
!2260 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2261)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2263 = !{!2264, !2265, !2266}
!2264 = !DILocalVariable(name: "nptr", arg: 1, scope: !2253, file: !2227, line: 348, type: !2256)
!2265 = !DILocalVariable(name: "endptr", arg: 2, scope: !2253, file: !2227, line: 348, type: !2260)
!2266 = !DILocalVariable(name: "base", arg: 3, scope: !2253, file: !2227, line: 348, type: !641)
!2267 = !DILocation(line: 0, scope: !2253)
!2268 = !DILocation(line: 351, column: 10, scope: !2253)
!2269 = !DILocation(line: 351, column: 3, scope: !2253)
!2270 = distinct !DISubprogram(name: "wcstoumax", scope: !2227, file: !2227, line: 362, type: !2271, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!2244, !2256, !2260, !641}
!2273 = !{!2274, !2275, !2276}
!2274 = !DILocalVariable(name: "nptr", arg: 1, scope: !2270, file: !2227, line: 362, type: !2256)
!2275 = !DILocalVariable(name: "endptr", arg: 2, scope: !2270, file: !2227, line: 362, type: !2260)
!2276 = !DILocalVariable(name: "base", arg: 3, scope: !2270, file: !2227, line: 362, type: !641)
!2277 = !DILocation(line: 0, scope: !2270)
!2278 = !DILocation(line: 365, column: 10, scope: !2270)
!2279 = !DILocation(line: 365, column: 3, scope: !2270)
!2280 = distinct !DISubprogram(name: "stat", scope: !2281, file: !2281, line: 453, type: !2282, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2319)
!2281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!641, !646, !2284}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2286, line: 46, size: 1152, elements: !2287)
!2286 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2287 = !{!2288, !2290, !2292, !2294, !2296, !2298, !2300, !2301, !2302, !2303, !2305, !2307, !2315, !2316, !2317}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2285, file: !2286, line: 48, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2039, line: 145, baseType: !706)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2285, file: !2286, line: 53, baseType: !2291, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2039, line: 148, baseType: !706)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2285, file: !2286, line: 61, baseType: !2293, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2039, line: 151, baseType: !706)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2285, file: !2286, line: 62, baseType: !2295, size: 32, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2039, line: 150, baseType: !7)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2285, file: !2286, line: 64, baseType: !2297, size: 32, offset: 224)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2039, line: 146, baseType: !7)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2285, file: !2286, line: 65, baseType: !2299, size: 32, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2039, line: 147, baseType: !7)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2285, file: !2286, line: 67, baseType: !641, size: 32, offset: 288)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2285, file: !2286, line: 69, baseType: !2289, size: 64, offset: 320)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2285, file: !2286, line: 74, baseType: !2038, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2285, file: !2286, line: 78, baseType: !2304, size: 64, offset: 448)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2039, line: 174, baseType: !708)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2285, file: !2286, line: 80, baseType: !2306, size: 64, offset: 512)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2039, line: 179, baseType: !708)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2285, file: !2286, line: 91, baseType: !2308, size: 128, offset: 576)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2309, line: 10, size: 128, elements: !2310)
!2309 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2310 = !{!2311, !2313}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2308, file: !2309, line: 12, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2039, line: 160, baseType: !708)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2308, file: !2309, line: 16, baseType: !2314, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2039, line: 196, baseType: !708)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2285, file: !2286, line: 92, baseType: !2308, size: 128, offset: 704)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2285, file: !2286, line: 93, baseType: !2308, size: 128, offset: 832)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2285, file: !2286, line: 106, baseType: !2318, size: 192, offset: 960)
!2318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2314, size: 192, elements: !726)
!2319 = !{!2320, !2321}
!2320 = !DILocalVariable(name: "__path", arg: 1, scope: !2280, file: !2281, line: 453, type: !646)
!2321 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2280, file: !2281, line: 453, type: !2284)
!2322 = !DILocation(line: 0, scope: !2280)
!2323 = !DILocation(line: 455, column: 10, scope: !2280)
!2324 = !DILocation(line: 455, column: 3, scope: !2280)
!2325 = distinct !DISubprogram(name: "lstat", scope: !2281, file: !2281, line: 460, type: !2282, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2326)
!2326 = !{!2327, !2328}
!2327 = !DILocalVariable(name: "__path", arg: 1, scope: !2325, file: !2281, line: 460, type: !646)
!2328 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2325, file: !2281, line: 460, type: !2284)
!2329 = !DILocation(line: 0, scope: !2325)
!2330 = !DILocation(line: 462, column: 10, scope: !2325)
!2331 = !DILocation(line: 462, column: 3, scope: !2325)
!2332 = distinct !DISubprogram(name: "fstat", scope: !2281, file: !2281, line: 467, type: !2333, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!641, !641, !2284}
!2335 = !{!2336, !2337}
!2336 = !DILocalVariable(name: "__fd", arg: 1, scope: !2332, file: !2281, line: 467, type: !641)
!2337 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2332, file: !2281, line: 467, type: !2284)
!2338 = !DILocation(line: 0, scope: !2332)
!2339 = !DILocation(line: 469, column: 10, scope: !2332)
!2340 = !DILocation(line: 469, column: 3, scope: !2332)
!2341 = distinct !DISubprogram(name: "fstatat", scope: !2281, file: !2281, line: 474, type: !2342, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2344)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!641, !641, !646, !2284, !641}
!2344 = !{!2345, !2346, !2347, !2348}
!2345 = !DILocalVariable(name: "__fd", arg: 1, scope: !2341, file: !2281, line: 474, type: !641)
!2346 = !DILocalVariable(name: "__filename", arg: 2, scope: !2341, file: !2281, line: 474, type: !646)
!2347 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2341, file: !2281, line: 474, type: !2284)
!2348 = !DILocalVariable(name: "__flag", arg: 4, scope: !2341, file: !2281, line: 474, type: !641)
!2349 = !DILocation(line: 0, scope: !2341)
!2350 = !DILocation(line: 477, column: 10, scope: !2341)
!2351 = !DILocation(line: 477, column: 3, scope: !2341)
!2352 = distinct !DISubprogram(name: "mknod", scope: !2281, file: !2281, line: 483, type: !2353, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!641, !646, !2295, !2289}
!2355 = !{!2356, !2357, !2358}
!2356 = !DILocalVariable(name: "__path", arg: 1, scope: !2352, file: !2281, line: 483, type: !646)
!2357 = !DILocalVariable(name: "__mode", arg: 2, scope: !2352, file: !2281, line: 483, type: !2295)
!2358 = !DILocalVariable(name: "__dev", arg: 3, scope: !2352, file: !2281, line: 483, type: !2289)
!2359 = !DILocation(line: 0, scope: !2352)
!2360 = !DILocation(line: 485, column: 10, scope: !2352)
!2361 = !DILocation(line: 485, column: 3, scope: !2352)
!2362 = distinct !DISubprogram(name: "mknodat", scope: !2281, file: !2281, line: 491, type: !2363, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!641, !641, !646, !2295, !2289}
!2365 = !{!2366, !2367, !2368, !2369}
!2366 = !DILocalVariable(name: "__fd", arg: 1, scope: !2362, file: !2281, line: 491, type: !641)
!2367 = !DILocalVariable(name: "__path", arg: 2, scope: !2362, file: !2281, line: 491, type: !646)
!2368 = !DILocalVariable(name: "__mode", arg: 3, scope: !2362, file: !2281, line: 491, type: !2295)
!2369 = !DILocalVariable(name: "__dev", arg: 4, scope: !2362, file: !2281, line: 491, type: !2289)
!2370 = !DILocation(line: 0, scope: !2362)
!2371 = !DILocation(line: 494, column: 10, scope: !2362)
!2372 = !DILocation(line: 494, column: 3, scope: !2362)
!2373 = distinct !DISubprogram(name: "stat64", scope: !2281, file: !2281, line: 502, type: !2374, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2396)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!641, !646, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2286, line: 119, size: 1152, elements: !2378)
!2378 = !{!2379, !2380, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2392, !2393, !2394, !2395}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2377, file: !2286, line: 121, baseType: !2289, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2377, file: !2286, line: 123, baseType: !2381, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2039, line: 149, baseType: !706)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2377, file: !2286, line: 124, baseType: !2293, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2377, file: !2286, line: 125, baseType: !2295, size: 32, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2377, file: !2286, line: 132, baseType: !2297, size: 32, offset: 224)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2377, file: !2286, line: 133, baseType: !2299, size: 32, offset: 256)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2377, file: !2286, line: 135, baseType: !641, size: 32, offset: 288)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2377, file: !2286, line: 136, baseType: !2289, size: 64, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2377, file: !2286, line: 137, baseType: !2038, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2377, file: !2286, line: 143, baseType: !2304, size: 64, offset: 448)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2377, file: !2286, line: 144, baseType: !2391, size: 64, offset: 512)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2039, line: 180, baseType: !708)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2377, file: !2286, line: 152, baseType: !2308, size: 128, offset: 576)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2377, file: !2286, line: 153, baseType: !2308, size: 128, offset: 704)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2377, file: !2286, line: 154, baseType: !2308, size: 128, offset: 832)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2377, file: !2286, line: 164, baseType: !2318, size: 192, offset: 960)
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "__path", arg: 1, scope: !2373, file: !2281, line: 502, type: !646)
!2398 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2373, file: !2281, line: 502, type: !2376)
!2399 = !DILocation(line: 0, scope: !2373)
!2400 = !DILocation(line: 504, column: 10, scope: !2373)
!2401 = !DILocation(line: 504, column: 3, scope: !2373)
!2402 = distinct !DISubprogram(name: "lstat64", scope: !2281, file: !2281, line: 509, type: !2374, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2403)
!2403 = !{!2404, !2405}
!2404 = !DILocalVariable(name: "__path", arg: 1, scope: !2402, file: !2281, line: 509, type: !646)
!2405 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2402, file: !2281, line: 509, type: !2376)
!2406 = !DILocation(line: 0, scope: !2402)
!2407 = !DILocation(line: 511, column: 10, scope: !2402)
!2408 = !DILocation(line: 511, column: 3, scope: !2402)
!2409 = distinct !DISubprogram(name: "fstat64", scope: !2281, file: !2281, line: 516, type: !2410, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2412)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!641, !641, !2376}
!2412 = !{!2413, !2414}
!2413 = !DILocalVariable(name: "__fd", arg: 1, scope: !2409, file: !2281, line: 516, type: !641)
!2414 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2409, file: !2281, line: 516, type: !2376)
!2415 = !DILocation(line: 0, scope: !2409)
!2416 = !DILocation(line: 518, column: 10, scope: !2409)
!2417 = !DILocation(line: 518, column: 3, scope: !2409)
!2418 = distinct !DISubprogram(name: "fstatat64", scope: !2281, file: !2281, line: 523, type: !2419, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!641, !641, !646, !2376, !641}
!2421 = !{!2422, !2423, !2424, !2425}
!2422 = !DILocalVariable(name: "__fd", arg: 1, scope: !2418, file: !2281, line: 523, type: !641)
!2423 = !DILocalVariable(name: "__filename", arg: 2, scope: !2418, file: !2281, line: 523, type: !646)
!2424 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2418, file: !2281, line: 523, type: !2376)
!2425 = !DILocalVariable(name: "__flag", arg: 4, scope: !2418, file: !2281, line: 523, type: !641)
!2426 = !DILocation(line: 0, scope: !2418)
!2427 = !DILocation(line: 526, column: 10, scope: !2418)
!2428 = !DILocation(line: 526, column: 3, scope: !2418)
!2429 = distinct !DISubprogram(name: "gate_phiprop", scope: !3, file: !3, line: 386, type: !1962, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2005)
!2430 = !DILocation(line: 388, column: 10, scope: !2429)
!2431 = !DILocation(line: 388, column: 3, scope: !2429)
!2432 = distinct !DISubprogram(name: "tree_ssa_phiprop", scope: !3, file: !3, line: 354, type: !1966, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2433)
!2433 = !{!2434, !2440, !2441, !2442, !2443, !2450, !2451}
!2434 = !DILocalVariable(name: "bbs", scope: !2432, file: !3, line: 356, type: !2435)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_heap", file: !318, line: 283, baseType: !2437)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_heap", file: !318, line: 283, size: 128, elements: !2438)
!2438 = !{!2439}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2437, file: !318, line: 283, baseType: !1383, size: 128)
!2440 = !DILocalVariable(name: "phivn", scope: !2432, file: !3, line: 357, type: !648)
!2441 = !DILocalVariable(name: "did_something", scope: !2432, file: !3, line: 358, type: !640)
!2442 = !DILocalVariable(name: "bb", scope: !2432, file: !3, line: 359, type: !1375)
!2443 = !DILocalVariable(name: "gsi", scope: !2432, file: !3, line: 360, type: !2444)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !568, line: 265, baseType: !2445)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 254, size: 192, elements: !2446)
!2446 = !{!2447, !2448, !2449}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2445, file: !568, line: 257, baseType: !971, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2445, file: !568, line: 263, baseType: !966, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2445, file: !568, line: 264, baseType: !1375, size: 64, offset: 128)
!2450 = !DILocalVariable(name: "i", scope: !2432, file: !3, line: 361, type: !7)
!2451 = !DILocalVariable(name: "n", scope: !2432, file: !3, line: 362, type: !1121)
!2452 = !DILocation(line: 356, column: 3, scope: !2432)
!2453 = !DILocation(line: 0, scope: !2432)
!2454 = !DILocation(line: 359, column: 3, scope: !2432)
!2455 = !DILocation(line: 360, column: 3, scope: !2432)
!2456 = !DILocation(line: 364, column: 3, scope: !2432)
!2457 = !DILocation(line: 366, column: 7, scope: !2432)
!2458 = !DILocation(line: 367, column: 11, scope: !2432)
!2459 = !DILocation(line: 371, column: 20, scope: !2432)
!2460 = !DILocation(line: 371, column: 7, scope: !2432)
!2461 = !DILocation(line: 370, column: 9, scope: !2432)
!2462 = !DILocation(line: 370, column: 7, scope: !2432)
!2463 = !DILocation(line: 0, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 373, column: 5)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 372, column: 3)
!2466 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 372, column: 3)
!2467 = !DILocation(line: 372, column: 8, scope: !2466)
!2468 = !DILocation(line: 372, column: 15, scope: !2465)
!2469 = !DILocation(line: 358, column: 8, scope: !2432)
!2470 = !DILocation(line: 0, scope: !2466)
!2471 = !DILocation(line: 372, column: 3, scope: !2466)
!2472 = !DILocation(line: 373, column: 16, scope: !2464)
!2473 = !DILocation(line: 373, column: 32, scope: !2464)
!2474 = !DILocation(line: 373, column: 10, scope: !2464)
!2475 = !DILocation(line: 373, column: 38, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 373, column: 5)
!2477 = !DILocation(line: 373, column: 37, scope: !2476)
!2478 = !DILocation(line: 373, column: 5, scope: !2464)
!2479 = !DILocation(line: 374, column: 44, scope: !2476)
!2480 = !DILocation(line: 374, column: 48, scope: !2476)
!2481 = !DILocation(line: 374, column: 24, scope: !2476)
!2482 = !DILocation(line: 374, column: 21, scope: !2476)
!2483 = !DILocation(line: 373, column: 55, scope: !2476)
!2484 = !DILocation(line: 373, column: 5, scope: !2476)
!2485 = distinct !{!2485, !2478, !2486}
!2486 = !DILocation(line: 374, column: 72, scope: !2464)
!2487 = !DILocation(line: 372, column: 54, scope: !2465)
!2488 = !DILocation(line: 372, column: 3, scope: !2465)
!2489 = distinct !{!2489, !2471, !2490}
!2490 = !DILocation(line: 374, column: 72, scope: !2466)
!2491 = !DILocation(line: 376, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 376, column: 7)
!2493 = !DILocation(line: 376, column: 7, scope: !2432)
!2494 = !DILocation(line: 377, column: 5, scope: !2492)
!2495 = !DILocation(line: 379, column: 3, scope: !2432)
!2496 = !DILocation(line: 380, column: 3, scope: !2432)
!2497 = !DILocation(line: 383, column: 1, scope: !2432)
!2498 = !DILocation(line: 382, column: 3, scope: !2432)
!2499 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !334, file: !334, line: 182, type: !2500, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2504)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!7, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!2504 = !{!2505}
!2505 = !DILocalVariable(name: "vec_", arg: 1, scope: !2499, file: !334, line: 182, type: !2502)
!2506 = !DILocation(line: 0, scope: !2499)
!2507 = !DILocation(line: 182, column: 1, scope: !2499)
!2508 = distinct !DISubprogram(name: "single_succ", scope: !318, file: !318, line: 663, type: !2509, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2514)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!1375, !2511}
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !653, line: 112, baseType: !2512)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!2514 = !{!2515}
!2515 = !DILocalVariable(name: "bb", arg: 1, scope: !2508, file: !318, line: 663, type: !2511)
!2516 = !DILocation(line: 0, scope: !2508)
!2517 = !DILocation(line: 665, column: 10, scope: !2508)
!2518 = !DILocation(line: 665, column: 33, scope: !2508)
!2519 = !DILocation(line: 665, column: 3, scope: !2508)
!2520 = distinct !DISubprogram(name: "VEC_basic_block_base_iterate", scope: !318, file: !318, line: 281, type: !2521, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2526)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!641, !2523, !7, !2525}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1383)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!2526 = !{!2527, !2528, !2529}
!2527 = !DILocalVariable(name: "vec_", arg: 1, scope: !2520, file: !318, line: 281, type: !2523)
!2528 = !DILocalVariable(name: "ix_", arg: 2, scope: !2520, file: !318, line: 281, type: !7)
!2529 = !DILocalVariable(name: "ptr", arg: 3, scope: !2520, file: !318, line: 281, type: !2525)
!2530 = !DILocation(line: 0, scope: !2520)
!2531 = !DILocation(line: 281, column: 1, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2520, file: !318, line: 281, column: 1)
!2533 = !DILocation(line: 281, column: 1, scope: !2520)
!2534 = !DILocation(line: 281, column: 1, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2532, file: !318, line: 281, column: 1)
!2536 = !DILocation(line: 281, column: 1, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2532, file: !318, line: 281, column: 1)
!2538 = !DILocation(line: 0, scope: !2532)
!2539 = distinct !DISubprogram(name: "gsi_end_p", scope: !568, file: !568, line: 4467, type: !2540, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!640, !2444}
!2542 = !{!2543}
!2543 = !DILocalVariable(name: "i", arg: 1, scope: !2539, file: !568, line: 4467, type: !2444)
!2544 = !DILocation(line: 4467, column: 33, scope: !2539)
!2545 = !DILocation(line: 4469, column: 12, scope: !2539)
!2546 = !DILocation(line: 4469, column: 16, scope: !2539)
!2547 = !DILocation(line: 4469, column: 10, scope: !2539)
!2548 = !DILocation(line: 4469, column: 3, scope: !2539)
!2549 = distinct !DISubprogram(name: "propagate_with_phi", scope: !3, file: !3, line: 242, type: !2550, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!640, !1375, !976, !648, !1121}
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2569, !2570, !2571, !2584, !2585, !2589, !2591, !2595, !2596}
!2553 = !DILocalVariable(name: "bb", arg: 1, scope: !2549, file: !3, line: 242, type: !1375)
!2554 = !DILocalVariable(name: "phi", arg: 2, scope: !2549, file: !3, line: 242, type: !976)
!2555 = !DILocalVariable(name: "phivn", arg: 3, scope: !2549, file: !3, line: 242, type: !648)
!2556 = !DILocalVariable(name: "n", arg: 4, scope: !2549, file: !3, line: 243, type: !1121)
!2557 = !DILocalVariable(name: "ptr", scope: !2549, file: !3, line: 245, type: !652)
!2558 = !DILocalVariable(name: "use_stmt", scope: !2549, file: !3, line: 246, type: !976)
!2559 = !DILocalVariable(name: "res", scope: !2549, file: !3, line: 247, type: !652)
!2560 = !DILocalVariable(name: "gsi", scope: !2549, file: !3, line: 248, type: !2444)
!2561 = !DILocalVariable(name: "ui", scope: !2549, file: !3, line: 249, type: !2562)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "imm_use_iterator", file: !1315, line: 249, baseType: !2563)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "immediate_use_iterator_d", file: !1315, line: 238, size: 448, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !2563, file: !1315, line: 241, baseType: !1948, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "end_p", scope: !2563, file: !1315, line: 243, baseType: !1948, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "iter_node", scope: !2563, file: !1315, line: 245, baseType: !1949, size: 256, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "next_imm_name", scope: !2563, file: !1315, line: 248, baseType: !1948, size: 64, offset: 384)
!2569 = !DILocalVariable(name: "arg_p", scope: !2549, file: !3, line: 250, type: !1947)
!2570 = !DILocalVariable(name: "use", scope: !2549, file: !3, line: 250, type: !1947)
!2571 = !DILocalVariable(name: "i", scope: !2549, file: !3, line: 251, type: !2572)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !561, line: 140, baseType: !2573)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !561, line: 131, size: 320, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2579, !2581, !2582, !2583}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2573, file: !561, line: 133, baseType: !640, size: 8)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2573, file: !561, line: 134, baseType: !560, size: 32, offset: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2573, file: !561, line: 135, baseType: !2578, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !561, line: 42, baseType: !1005)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2573, file: !561, line: 136, baseType: !2580, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !561, line: 50, baseType: !1012)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2573, file: !561, line: 137, baseType: !641, size: 32, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2573, file: !561, line: 138, baseType: !641, size: 32, offset: 224)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2573, file: !561, line: 139, baseType: !976, size: 64, offset: 256)
!2584 = !DILocalVariable(name: "phi_inserted", scope: !2549, file: !3, line: 252, type: !640)
!2585 = !DILocalVariable(name: "arg", scope: !2586, file: !3, line: 261, type: !652)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 260, column: 5)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 259, column: 3)
!2588 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 259, column: 3)
!2589 = !DILocalVariable(name: "def_stmt", scope: !2590, file: !3, line: 270, type: !976)
!2590 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 269, column: 2)
!2591 = !DILocalVariable(name: "def_stmt", scope: !2592, file: !3, line: 296, type: !976)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 295, column: 5)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 294, column: 3)
!2594 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 294, column: 3)
!2595 = !DILocalVariable(name: "vuse", scope: !2592, file: !3, line: 297, type: !652)
!2596 = !DILabel(scope: !2592, name: "next", file: !3, line: 344)
!2597 = !DILocation(line: 0, scope: !2549)
!2598 = !DILocation(line: 245, column: 14, scope: !2549)
!2599 = !DILocation(line: 246, column: 3, scope: !2549)
!2600 = !DILocation(line: 248, column: 3, scope: !2549)
!2601 = !DILocation(line: 249, column: 3, scope: !2549)
!2602 = !DILocation(line: 250, column: 3, scope: !2549)
!2603 = !DILocation(line: 251, column: 3, scope: !2549)
!2604 = !DILocation(line: 254, column: 8, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 254, column: 7)
!2606 = !DILocation(line: 255, column: 7, scope: !2605)
!2607 = !DILocation(line: 255, column: 31, scope: !2605)
!2608 = !DILocation(line: 255, column: 11, scope: !2605)
!2609 = !DILocation(line: 254, column: 7, scope: !2549)
!2610 = !DILocation(line: 259, column: 3, scope: !2588)
!2611 = !DILocation(line: 0, scope: !2588)
!2612 = !DILocation(line: 259, column: 3, scope: !2587)
!2613 = !DILocation(line: 287, column: 3, scope: !2549)
!2614 = !DILocation(line: 261, column: 18, scope: !2586)
!2615 = !DILocation(line: 0, scope: !2586)
!2616 = !DILocation(line: 265, column: 7, scope: !2586)
!2617 = !DILocation(line: 265, column: 14, scope: !2586)
!2618 = !DILocation(line: 265, column: 30, scope: !2586)
!2619 = !DILocation(line: 266, column: 7, scope: !2586)
!2620 = !DILocation(line: 266, column: 11, scope: !2586)
!2621 = !DILocation(line: 267, column: 7, scope: !2586)
!2622 = !DILocation(line: 267, column: 11, scope: !2586)
!2623 = !DILocation(line: 267, column: 34, scope: !2586)
!2624 = !DILocation(line: 268, column: 11, scope: !2586)
!2625 = !DILocation(line: 268, column: 44, scope: !2586)
!2626 = !DILocation(line: 268, column: 50, scope: !2586)
!2627 = !DILocation(line: 270, column: 22, scope: !2590)
!2628 = !DILocation(line: 0, scope: !2590)
!2629 = !DILocation(line: 271, column: 9, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 271, column: 8)
!2631 = !DILocation(line: 271, column: 8, scope: !2590)
!2632 = !DILocation(line: 273, column: 10, scope: !2590)
!2633 = !DILocation(line: 274, column: 2, scope: !2586)
!2634 = distinct !{!2634, !2616, !2633}
!2635 = !DILocation(line: 275, column: 28, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 275, column: 11)
!2637 = !DILocation(line: 277, column: 5, scope: !2636)
!2638 = !DILocation(line: 277, column: 29, scope: !2636)
!2639 = !DILocation(line: 277, column: 9, scope: !2636)
!2640 = !DILocation(line: 278, column: 4, scope: !2636)
!2641 = !DILocation(line: 278, column: 9, scope: !2636)
!2642 = !DILocation(line: 278, column: 25, scope: !2636)
!2643 = !DILocation(line: 279, column: 9, scope: !2636)
!2644 = !DILocation(line: 279, column: 12, scope: !2636)
!2645 = !DILocation(line: 279, column: 35, scope: !2636)
!2646 = !DILocation(line: 280, column: 9, scope: !2636)
!2647 = !DILocation(line: 280, column: 42, scope: !2636)
!2648 = !DILocation(line: 280, column: 48, scope: !2636)
!2649 = !DILocation(line: 281, column: 9, scope: !2636)
!2650 = !DILocation(line: 281, column: 12, scope: !2636)
!2651 = !DILocation(line: 275, column: 11, scope: !2586)
!2652 = !DILocation(line: 283, column: 5, scope: !2587)
!2653 = distinct !{!2653, !2610, !2654}
!2654 = !DILocation(line: 283, column: 5, scope: !2588)
!2655 = !DILocation(line: 287, column: 10, scope: !2549)
!2656 = !DILocation(line: 288, column: 3, scope: !2549)
!2657 = !DILocation(line: 288, column: 37, scope: !2549)
!2658 = !DILocation(line: 288, column: 6, scope: !2549)
!2659 = !DILocation(line: 289, column: 30, scope: !2549)
!2660 = !DILocation(line: 289, column: 11, scope: !2549)
!2661 = distinct !{!2661, !2613, !2662}
!2662 = !DILocation(line: 289, column: 38, scope: !2549)
!2663 = !DILocation(line: 294, column: 3, scope: !2594)
!2664 = !DILocation(line: 0, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 321, column: 2)
!2666 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 320, column: 11)
!2667 = !DILocation(line: 0, scope: !2594)
!2668 = !DILocation(line: 247, column: 8, scope: !2549)
!2669 = !DILocation(line: 293, column: 16, scope: !2549)
!2670 = !DILocation(line: 294, column: 3, scope: !2593)
!2671 = !DILocation(line: 300, column: 31, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 300, column: 11)
!2673 = !DILocation(line: 300, column: 13, scope: !2672)
!2674 = !DILocation(line: 301, column: 6, scope: !2672)
!2675 = !DILocation(line: 301, column: 9, scope: !2672)
!2676 = !DILocation(line: 301, column: 50, scope: !2672)
!2677 = !DILocation(line: 302, column: 6, scope: !2672)
!2678 = !DILocation(line: 302, column: 33, scope: !2672)
!2679 = !DILocation(line: 302, column: 9, scope: !2672)
!2680 = !DILocation(line: 302, column: 43, scope: !2672)
!2681 = !DILocation(line: 303, column: 6, scope: !2672)
!2682 = !DILocation(line: 303, column: 9, scope: !2672)
!2683 = !DILocation(line: 303, column: 57, scope: !2672)
!2684 = !DILocation(line: 305, column: 6, scope: !2672)
!2685 = !DILocation(line: 305, column: 35, scope: !2672)
!2686 = !DILocation(line: 305, column: 10, scope: !2672)
!2687 = !DILocation(line: 300, column: 11, scope: !2592)
!2688 = !DILocation(line: 310, column: 27, scope: !2592)
!2689 = !DILocation(line: 310, column: 14, scope: !2592)
!2690 = !DILocation(line: 0, scope: !2592)
!2691 = !DILocation(line: 311, column: 18, scope: !2592)
!2692 = !DILocation(line: 312, column: 12, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 312, column: 11)
!2694 = !DILocation(line: 313, column: 4, scope: !2693)
!2695 = !DILocation(line: 313, column: 8, scope: !2693)
!2696 = !DILocation(line: 313, column: 29, scope: !2693)
!2697 = !DILocation(line: 314, column: 8, scope: !2693)
!2698 = !DILocation(line: 315, column: 11, scope: !2693)
!2699 = !DILocation(line: 314, column: 12, scope: !2693)
!2700 = !DILocation(line: 312, column: 11, scope: !2592)
!2701 = !DILocation(line: 320, column: 12, scope: !2666)
!2702 = !DILocation(line: 0, scope: !2666)
!2703 = !DILocation(line: 320, column: 11, scope: !2592)
!2704 = !DILocation(line: 322, column: 10, scope: !2665)
!2705 = !DILocation(line: 325, column: 10, scope: !2665)
!2706 = !DILocation(line: 325, column: 4, scope: !2665)
!2707 = !DILocation(line: 325, column: 34, scope: !2665)
!2708 = !DILocation(line: 325, column: 40, scope: !2665)
!2709 = !DILocation(line: 326, column: 10, scope: !2665)
!2710 = !DILocation(line: 326, column: 4, scope: !2665)
!2711 = !DILocation(line: 326, column: 34, scope: !2665)
!2712 = !DILocation(line: 326, column: 39, scope: !2665)
!2713 = !DILocation(line: 331, column: 10, scope: !2665)
!2714 = !DILocation(line: 331, column: 24, scope: !2665)
!2715 = !DILocation(line: 332, column: 4, scope: !2665)
!2716 = !DILocation(line: 335, column: 2, scope: !2665)
!2717 = !DILocation(line: 340, column: 4, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 337, column: 2)
!2719 = !DILocation(line: 341, column: 17, scope: !2718)
!2720 = !DILocation(line: 341, column: 4, scope: !2718)
!2721 = distinct !{!2721, !2663, !2722}
!2722 = !DILocation(line: 346, column: 5, scope: !2594)
!2723 = !DILocation(line: 349, column: 1, scope: !2549)
!2724 = distinct !DISubprogram(name: "gsi_stmt", scope: !568, file: !568, line: 4501, type: !2725, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!976, !2444}
!2727 = !{!2728}
!2728 = !DILocalVariable(name: "i", arg: 1, scope: !2724, file: !568, line: 4501, type: !2444)
!2729 = !DILocation(line: 4501, column: 32, scope: !2724)
!2730 = !DILocation(line: 4503, column: 12, scope: !2724)
!2731 = !DILocation(line: 4503, column: 17, scope: !2724)
!2732 = !DILocation(line: 4503, column: 3, scope: !2724)
!2733 = distinct !DISubprogram(name: "gsi_next", scope: !568, file: !568, line: 4485, type: !2734, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2737)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{null, !2736}
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2737 = !{!2738}
!2738 = !DILocalVariable(name: "i", arg: 1, scope: !2733, file: !568, line: 4485, type: !2736)
!2739 = !DILocation(line: 0, scope: !2733)
!2740 = !DILocation(line: 4487, column: 15, scope: !2733)
!2741 = !DILocation(line: 4487, column: 20, scope: !2733)
!2742 = !DILocation(line: 4487, column: 10, scope: !2733)
!2743 = !DILocation(line: 4488, column: 1, scope: !2733)
!2744 = distinct !DISubprogram(name: "VEC_basic_block_heap_free", scope: !318, file: !318, line: 283, type: !2745, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2748)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{null, !2747}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2748 = !{!2749}
!2749 = !DILocalVariable(name: "vec_", arg: 1, scope: !2744, file: !318, line: 283, type: !2747)
!2750 = !DILocation(line: 0, scope: !2744)
!2751 = !DILocation(line: 283, column: 1, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2744, file: !318, line: 283, column: 1)
!2753 = !DILocation(line: 283, column: 1, scope: !2744)
!2754 = distinct !DISubprogram(name: "single_succ_edge", scope: !318, file: !318, line: 643, type: !2755, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!956, !2511}
!2757 = !{!2758}
!2758 = !DILocalVariable(name: "bb", arg: 1, scope: !2754, file: !318, line: 643, type: !2511)
!2759 = !DILocation(line: 0, scope: !2754)
!2760 = !DILocation(line: 645, column: 3, scope: !2754)
!2761 = !DILocation(line: 646, column: 10, scope: !2754)
!2762 = !DILocation(line: 646, column: 3, scope: !2754)
!2763 = distinct !DISubprogram(name: "single_succ_p", scope: !318, file: !318, line: 626, type: !2764, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!640, !2511}
!2766 = !{!2767}
!2767 = !DILocalVariable(name: "bb", arg: 1, scope: !2763, file: !318, line: 626, type: !2511)
!2768 = !DILocation(line: 0, scope: !2763)
!2769 = !DILocation(line: 628, column: 10, scope: !2763)
!2770 = !DILocation(line: 628, column: 33, scope: !2763)
!2771 = !DILocation(line: 628, column: 3, scope: !2763)
!2772 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !318, file: !318, line: 150, type: !2773, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2777)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!956, !2775, !7}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!2777 = !{!2778, !2779}
!2778 = !DILocalVariable(name: "vec_", arg: 1, scope: !2772, file: !318, line: 150, type: !2775)
!2779 = !DILocalVariable(name: "ix_", arg: 2, scope: !2772, file: !318, line: 150, type: !7)
!2780 = !DILocation(line: 0, scope: !2772)
!2781 = !DILocation(line: 150, column: 1, scope: !2772)
!2782 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !318, file: !318, line: 150, type: !2783, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!7, !2775}
!2785 = !{!2786}
!2786 = !DILocalVariable(name: "vec_", arg: 1, scope: !2782, file: !318, line: 150, type: !2775)
!2787 = !DILocation(line: 0, scope: !2782)
!2788 = !DILocation(line: 150, column: 1, scope: !2782)
!2789 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2790, file: !2790, line: 434, type: !2791, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2794)
!2790 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!652, !2793}
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !561, line: 27, baseType: !1010)
!2794 = !{!2795}
!2795 = !DILocalVariable(name: "def", arg: 1, scope: !2789, file: !2790, line: 434, type: !2793)
!2796 = !DILocation(line: 0, scope: !2789)
!2797 = !DILocation(line: 436, column: 10, scope: !2789)
!2798 = !DILocation(line: 436, column: 3, scope: !2789)
!2799 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !568, file: !568, line: 3080, type: !2800, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!1010, !976}
!2802 = !{!2803}
!2803 = !DILocalVariable(name: "gs", arg: 1, scope: !2799, file: !568, line: 3080, type: !976)
!2804 = !DILocation(line: 0, scope: !2799)
!2805 = !DILocation(line: 3083, column: 26, scope: !2799)
!2806 = !DILocation(line: 3083, column: 3, scope: !2799)
!2807 = distinct !DISubprogram(name: "op_iter_init_phiuse", scope: !2790, file: !2790, line: 910, type: !2808, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2811)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!1947, !2810, !976, !641}
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2811 = !{!2812, !2813, !2814, !2815, !2816}
!2812 = !DILocalVariable(name: "ptr", arg: 1, scope: !2807, file: !2790, line: 910, type: !2810)
!2813 = !DILocalVariable(name: "phi", arg: 2, scope: !2807, file: !2790, line: 910, type: !976)
!2814 = !DILocalVariable(name: "flags", arg: 3, scope: !2807, file: !2790, line: 910, type: !641)
!2815 = !DILocalVariable(name: "phi_def", scope: !2807, file: !2790, line: 912, type: !652)
!2816 = !DILocalVariable(name: "comp", scope: !2807, file: !2790, line: 913, type: !641)
!2817 = !DILocation(line: 0, scope: !2807)
!2818 = !DILocation(line: 912, column: 18, scope: !2807)
!2819 = !DILocation(line: 915, column: 3, scope: !2807)
!2820 = !DILocation(line: 916, column: 8, scope: !2807)
!2821 = !DILocation(line: 916, column: 13, scope: !2807)
!2822 = !DILocation(line: 918, column: 3, scope: !2807)
!2823 = !DILocation(line: 920, column: 11, scope: !2807)
!2824 = !DILocation(line: 923, column: 14, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2807, file: !2790, line: 923, column: 7)
!2826 = !DILocation(line: 923, column: 22, scope: !2825)
!2827 = !DILocation(line: 923, column: 7, scope: !2807)
!2828 = !DILocation(line: 925, column: 17, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !2790, line: 924, column: 5)
!2830 = !DILocation(line: 926, column: 7, scope: !2829)
!2831 = !DILocation(line: 929, column: 8, scope: !2807)
!2832 = !DILocation(line: 929, column: 17, scope: !2807)
!2833 = !DILocation(line: 930, column: 18, scope: !2807)
!2834 = !DILocation(line: 930, column: 8, scope: !2807)
!2835 = !DILocation(line: 930, column: 16, scope: !2807)
!2836 = !DILocation(line: 931, column: 8, scope: !2807)
!2837 = !DILocation(line: 931, column: 18, scope: !2807)
!2838 = !DILocation(line: 932, column: 10, scope: !2807)
!2839 = !DILocation(line: 932, column: 3, scope: !2807)
!2840 = !DILocation(line: 933, column: 1, scope: !2807)
!2841 = distinct !DISubprogram(name: "op_iter_done", scope: !2790, file: !2790, line: 652, type: !2842, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2846)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!640, !2844}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2572)
!2846 = !{!2847}
!2847 = !DILocalVariable(name: "ptr", arg: 1, scope: !2841, file: !2790, line: 652, type: !2844)
!2848 = !DILocation(line: 0, scope: !2841)
!2849 = !DILocation(line: 654, column: 15, scope: !2841)
!2850 = !DILocation(line: 654, column: 3, scope: !2841)
!2851 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2790, file: !2790, line: 427, type: !2852, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2854)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!652, !1947}
!2854 = !{!2855}
!2855 = !DILocalVariable(name: "use", arg: 1, scope: !2851, file: !2790, line: 427, type: !1947)
!2856 = !DILocation(line: 0, scope: !2851)
!2857 = !DILocation(line: 429, column: 17, scope: !2851)
!2858 = !DILocation(line: 429, column: 10, scope: !2851)
!2859 = !DILocation(line: 429, column: 3, scope: !2851)
!2860 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !568, file: !568, line: 1727, type: !2861, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2864)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!652, !2863}
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !653, line: 60, baseType: !1950)
!2864 = !{!2865}
!2865 = !DILocalVariable(name: "gs", arg: 1, scope: !2860, file: !568, line: 1727, type: !2863)
!2866 = !DILocation(line: 0, scope: !2860)
!2867 = !DILocation(line: 1730, column: 10, scope: !2860)
!2868 = !DILocation(line: 1730, column: 3, scope: !2860)
!2869 = distinct !DISubprogram(name: "phivn_valid_p", scope: !3, file: !3, line: 105, type: !2870, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!640, !648, !652, !1375}
!2872 = !{!2873, !2874, !2875, !2876, !2877, !2878, !2879}
!2873 = !DILocalVariable(name: "phivn", arg: 1, scope: !2869, file: !3, line: 105, type: !648)
!2874 = !DILocalVariable(name: "name", arg: 2, scope: !2869, file: !3, line: 105, type: !652)
!2875 = !DILocalVariable(name: "bb", arg: 3, scope: !2869, file: !3, line: 105, type: !1375)
!2876 = !DILocalVariable(name: "vuse", scope: !2869, file: !3, line: 107, type: !652)
!2877 = !DILocalVariable(name: "use_stmt", scope: !2869, file: !3, line: 108, type: !976)
!2878 = !DILocalVariable(name: "ui2", scope: !2869, file: !3, line: 109, type: !2562)
!2879 = !DILocalVariable(name: "ok", scope: !2869, file: !3, line: 110, type: !640)
!2880 = !DILocation(line: 0, scope: !2869)
!2881 = !DILocation(line: 107, column: 21, scope: !2869)
!2882 = !DILocation(line: 107, column: 15, scope: !2869)
!2883 = !DILocation(line: 107, column: 46, scope: !2869)
!2884 = !DILocation(line: 109, column: 3, scope: !2869)
!2885 = !DILocation(line: 113, column: 3, scope: !2869)
!2886 = !DILocation(line: 115, column: 3, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 115, column: 3)
!2888 = !DILocation(line: 0, scope: !2887)
!2889 = !DILocation(line: 115, column: 3, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 115, column: 3)
!2891 = !DILocation(line: 118, column: 12, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 118, column: 11)
!2893 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 116, column: 5)
!2894 = !DILocation(line: 118, column: 35, scope: !2892)
!2895 = !DILocation(line: 119, column: 5, scope: !2892)
!2896 = !DILocation(line: 119, column: 8, scope: !2892)
!2897 = !DILocation(line: 119, column: 31, scope: !2892)
!2898 = !DILocation(line: 120, column: 4, scope: !2892)
!2899 = !DILocation(line: 120, column: 40, scope: !2892)
!2900 = !DILocation(line: 120, column: 8, scope: !2892)
!2901 = !DILocation(line: 118, column: 11, scope: !2893)
!2902 = !DILocation(line: 123, column: 4, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 123, column: 4)
!2904 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 121, column: 2)
!2905 = distinct !{!2905, !2886, !2906}
!2906 = !DILocation(line: 125, column: 5, scope: !2887)
!2907 = !DILocation(line: 128, column: 1, scope: !2869)
!2908 = !DILocation(line: 127, column: 3, scope: !2869)
!2909 = distinct !DISubprogram(name: "op_iter_next_use", scope: !2790, file: !2790, line: 659, type: !2910, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!1947, !2810}
!2912 = !{!2913, !2914}
!2913 = !DILocalVariable(name: "ptr", arg: 1, scope: !2909, file: !2790, line: 659, type: !2810)
!2914 = !DILocalVariable(name: "use_p", scope: !2909, file: !2790, line: 661, type: !1947)
!2915 = !DILocation(line: 0, scope: !2909)
!2916 = !DILocation(line: 665, column: 12, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2909, file: !2790, line: 665, column: 7)
!2918 = !DILocation(line: 665, column: 7, scope: !2917)
!2919 = !DILocation(line: 665, column: 7, scope: !2909)
!2920 = !DILocation(line: 667, column: 15, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !2790, line: 666, column: 5)
!2922 = !DILocation(line: 668, column: 30, scope: !2921)
!2923 = !DILocation(line: 668, column: 17, scope: !2921)
!2924 = !DILocation(line: 669, column: 7, scope: !2921)
!2925 = !DILocation(line: 671, column: 12, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2909, file: !2790, line: 671, column: 7)
!2927 = !DILocation(line: 671, column: 25, scope: !2926)
!2928 = !DILocation(line: 671, column: 18, scope: !2926)
!2929 = !DILocation(line: 671, column: 7, scope: !2909)
!2930 = !DILocation(line: 673, column: 14, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2926, file: !2790, line: 672, column: 5)
!2932 = !DILocation(line: 673, column: 7, scope: !2931)
!2933 = !DILocation(line: 675, column: 8, scope: !2909)
!2934 = !DILocation(line: 675, column: 13, scope: !2909)
!2935 = !DILocation(line: 676, column: 3, scope: !2909)
!2936 = !DILocation(line: 677, column: 1, scope: !2909)
!2937 = distinct !DISubprogram(name: "single_imm_use", scope: !2790, file: !2790, line: 373, type: !2938, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2945)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!640, !2940, !2943, !2944}
!2940 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !653, line: 59, baseType: !2941)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!2945 = !{!2946, !2947, !2948, !2949, !2953}
!2946 = !DILocalVariable(name: "var", arg: 1, scope: !2937, file: !2790, line: 373, type: !2940)
!2947 = !DILocalVariable(name: "use_p", arg: 2, scope: !2937, file: !2790, line: 373, type: !2943)
!2948 = !DILocalVariable(name: "stmt", arg: 3, scope: !2937, file: !2790, line: 373, type: !2944)
!2949 = !DILocalVariable(name: "ptr", scope: !2937, file: !2790, line: 375, type: !2950)
!2950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2951)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1949)
!2953 = !DILabel(scope: !2954, name: "return_false", file: !2790, line: 380)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !2790, line: 379, column: 5)
!2955 = distinct !DILexicalBlock(scope: !2937, file: !2790, line: 378, column: 7)
!2956 = !DILocation(line: 0, scope: !2937)
!2957 = !DILocation(line: 375, column: 42, scope: !2937)
!2958 = !DILocation(line: 378, column: 19, scope: !2955)
!2959 = !DILocation(line: 378, column: 11, scope: !2955)
!2960 = !DILocation(line: 378, column: 7, scope: !2937)
!2961 = !DILocation(line: 380, column: 5, scope: !2954)
!2962 = !DILocation(line: 381, column: 14, scope: !2954)
!2963 = !DILocation(line: 382, column: 13, scope: !2954)
!2964 = !DILocation(line: 383, column: 7, scope: !2954)
!2965 = !DILocation(line: 387, column: 25, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2937, file: !2790, line: 387, column: 7)
!2967 = !DILocation(line: 387, column: 11, scope: !2966)
!2968 = !DILocation(line: 387, column: 7, scope: !2937)
!2969 = !DILocation(line: 389, column: 29, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !2790, line: 389, column: 11)
!2971 = distinct !DILexicalBlock(scope: !2966, file: !2790, line: 388, column: 5)
!2972 = !DILocation(line: 389, column: 12, scope: !2970)
!2973 = !DILocation(line: 389, column: 11, scope: !2971)
!2974 = !DILocation(line: 391, column: 18, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2970, file: !2790, line: 390, column: 2)
!2976 = !DILocation(line: 391, column: 11, scope: !2975)
!2977 = !DILocation(line: 392, column: 17, scope: !2975)
!2978 = !DILocation(line: 392, column: 27, scope: !2975)
!2979 = !DILocation(line: 392, column: 10, scope: !2975)
!2980 = !DILocation(line: 393, column: 4, scope: !2975)
!2981 = !DILocation(line: 400, column: 8, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2937, file: !2790, line: 400, column: 7)
!2983 = !DILocation(line: 400, column: 7, scope: !2937)
!2984 = !DILocation(line: 403, column: 10, scope: !2937)
!2985 = !DILocation(line: 403, column: 3, scope: !2937)
!2986 = !DILocation(line: 404, column: 1, scope: !2937)
!2987 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !568, file: !568, line: 1694, type: !2861, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2988)
!2988 = !{!2989}
!2989 = !DILocalVariable(name: "gs", arg: 1, scope: !2987, file: !568, line: 1694, type: !2863)
!2990 = !DILocation(line: 0, scope: !2987)
!2991 = !DILocation(line: 1697, column: 10, scope: !2987)
!2992 = !DILocation(line: 1697, column: 3, scope: !2987)
!2993 = distinct !DISubprogram(name: "first_imm_use_stmt", scope: !2790, file: !2790, line: 1058, type: !2994, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2997)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!976, !2996, !652}
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2997 = !{!2998, !2999}
!2998 = !DILocalVariable(name: "imm", arg: 1, scope: !2993, file: !2790, line: 1058, type: !2996)
!2999 = !DILocalVariable(name: "var", arg: 2, scope: !2993, file: !2790, line: 1058, type: !652)
!3000 = !DILocation(line: 0, scope: !2993)
!3001 = !DILocation(line: 1060, column: 18, scope: !2993)
!3002 = !DILocation(line: 1060, column: 8, scope: !2993)
!3003 = !DILocation(line: 1060, column: 14, scope: !2993)
!3004 = !DILocation(line: 1061, column: 30, scope: !2993)
!3005 = !DILocation(line: 1061, column: 16, scope: !2993)
!3006 = !DILocation(line: 1062, column: 8, scope: !2993)
!3007 = !DILocation(line: 1062, column: 22, scope: !2993)
!3008 = !DILocation(line: 1067, column: 18, scope: !2993)
!3009 = !DILocation(line: 1067, column: 23, scope: !2993)
!3010 = !DILocation(line: 1068, column: 18, scope: !2993)
!3011 = !DILocation(line: 1068, column: 23, scope: !2993)
!3012 = !DILocation(line: 1069, column: 22, scope: !2993)
!3013 = !DILocation(line: 1069, column: 27, scope: !2993)
!3014 = !DILocation(line: 1070, column: 18, scope: !2993)
!3015 = !DILocation(line: 1070, column: 22, scope: !2993)
!3016 = !DILocation(line: 1072, column: 7, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2993, file: !2790, line: 1072, column: 7)
!3018 = !DILocation(line: 1072, column: 7, scope: !2993)
!3019 = !DILocation(line: 1075, column: 30, scope: !2993)
!3020 = !DILocation(line: 1075, column: 3, scope: !2993)
!3021 = !DILocation(line: 1077, column: 10, scope: !2993)
!3022 = !DILocation(line: 1077, column: 3, scope: !2993)
!3023 = !DILocation(line: 1078, column: 1, scope: !2993)
!3024 = distinct !DISubprogram(name: "end_imm_use_stmt_p", scope: !2790, file: !2790, line: 969, type: !3025, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3029)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!640, !3027}
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2562)
!3029 = !{!3030}
!3030 = !DILocalVariable(name: "imm", arg: 1, scope: !3024, file: !2790, line: 969, type: !3027)
!3031 = !DILocation(line: 0, scope: !3024)
!3032 = !DILocation(line: 971, column: 16, scope: !3024)
!3033 = !DILocation(line: 971, column: 32, scope: !3024)
!3034 = !DILocation(line: 971, column: 24, scope: !3024)
!3035 = !DILocation(line: 971, column: 10, scope: !3024)
!3036 = !DILocation(line: 971, column: 3, scope: !3024)
!3037 = distinct !DISubprogram(name: "is_gimple_assign", scope: !568, file: !568, line: 1677, type: !3038, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3040)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!640, !2863}
!3040 = !{!3041}
!3041 = !DILocalVariable(name: "gs", arg: 1, scope: !3037, file: !568, line: 1677, type: !2863)
!3042 = !DILocation(line: 0, scope: !3037)
!3043 = !DILocation(line: 1679, column: 10, scope: !3037)
!3044 = !DILocation(line: 1679, column: 27, scope: !3037)
!3045 = !DILocation(line: 1679, column: 3, scope: !3037)
!3046 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !568, file: !568, line: 1815, type: !3047, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!366, !2863}
!3049 = !{!3050, !3051}
!3050 = !DILocalVariable(name: "gs", arg: 1, scope: !3046, file: !568, line: 1815, type: !2863)
!3051 = !DILocalVariable(name: "code", scope: !3046, file: !568, line: 1817, type: !366)
!3052 = !DILocation(line: 0, scope: !3046)
!3053 = !DILocation(line: 1820, column: 10, scope: !3046)
!3054 = !DILocation(line: 1821, column: 7, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3046, file: !568, line: 1821, column: 7)
!3056 = !DILocation(line: 1821, column: 35, scope: !3055)
!3057 = !DILocation(line: 1821, column: 7, scope: !3046)
!3058 = !DILocation(line: 1822, column: 12, scope: !3055)
!3059 = !DILocation(line: 1822, column: 5, scope: !3055)
!3060 = !DILocation(line: 1824, column: 3, scope: !3046)
!3061 = distinct !DISubprogram(name: "gimple_vuse", scope: !568, file: !568, line: 1365, type: !2861, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3062)
!3062 = !{!3063}
!3063 = !DILocalVariable(name: "g", arg: 1, scope: !3061, file: !568, line: 1365, type: !2863)
!3064 = !DILocation(line: 0, scope: !3061)
!3065 = !DILocation(line: 1367, column: 8, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3061, file: !568, line: 1367, column: 7)
!3067 = !DILocation(line: 1367, column: 7, scope: !3061)
!3068 = !DILocation(line: 1369, column: 23, scope: !3061)
!3069 = !DILocation(line: 1369, column: 3, scope: !3061)
!3070 = !DILocation(line: 1370, column: 1, scope: !3061)
!3071 = distinct !DISubprogram(name: "gimple_bb", scope: !568, file: !568, line: 1112, type: !3072, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!940, !2863}
!3074 = !{!3075}
!3075 = !DILocalVariable(name: "g", arg: 1, scope: !3071, file: !568, line: 1112, type: !2863)
!3076 = !DILocation(line: 0, scope: !3071)
!3077 = !DILocation(line: 1114, column: 20, scope: !3071)
!3078 = !DILocation(line: 1114, column: 3, scope: !3071)
!3079 = distinct !DISubprogram(name: "phiprop_insert_phi", scope: !3, file: !3, line: 134, type: !3080, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!652, !1375, !976, !976, !648, !1121}
!3082 = !{!3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3097, !3098, !3102, !3103, !3104, !3105}
!3083 = !DILocalVariable(name: "bb", arg: 1, scope: !3079, file: !3, line: 134, type: !1375)
!3084 = !DILocalVariable(name: "phi", arg: 2, scope: !3079, file: !3, line: 134, type: !976)
!3085 = !DILocalVariable(name: "use_stmt", arg: 3, scope: !3079, file: !3, line: 134, type: !976)
!3086 = !DILocalVariable(name: "phivn", arg: 4, scope: !3079, file: !3, line: 135, type: !648)
!3087 = !DILocalVariable(name: "n", arg: 5, scope: !3079, file: !3, line: 135, type: !1121)
!3088 = !DILocalVariable(name: "res", scope: !3079, file: !3, line: 137, type: !652)
!3089 = !DILocalVariable(name: "new_phi", scope: !3079, file: !3, line: 138, type: !976)
!3090 = !DILocalVariable(name: "ei", scope: !3079, file: !3, line: 139, type: !3091)
!3091 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !318, line: 682, baseType: !3092)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !318, line: 679, size: 128, elements: !3093)
!3093 = !{!3094, !3095}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3092, file: !318, line: 680, baseType: !7, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !3092, file: !318, line: 681, baseType: !3096, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!3097 = !DILocalVariable(name: "e", scope: !3079, file: !3, line: 140, type: !956)
!3098 = !DILocalVariable(name: "old_arg", scope: !3099, file: !3, line: 160, type: !652)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 159, column: 5)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 158, column: 3)
!3101 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 158, column: 3)
!3102 = !DILocalVariable(name: "new_var", scope: !3099, file: !3, line: 160, type: !652)
!3103 = !DILocalVariable(name: "tmp", scope: !3099, file: !3, line: 161, type: !976)
!3104 = !DILocalVariable(name: "locus", scope: !3099, file: !3, line: 162, type: !779)
!3105 = !DILocalVariable(name: "def_stmt", scope: !3106, file: !3, line: 170, type: !976)
!3106 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 169, column: 2)
!3107 = !DILocation(line: 0, scope: !3079)
!3108 = !DILocation(line: 139, column: 3, scope: !3079)
!3109 = !DILocation(line: 140, column: 3, scope: !3079)
!3110 = !DILocation(line: 142, column: 3, scope: !3079)
!3111 = !DILocation(line: 147, column: 9, scope: !3079)
!3112 = !DILocation(line: 148, column: 39, scope: !3079)
!3113 = !DILocation(line: 148, column: 3, scope: !3079)
!3114 = !DILocation(line: 148, column: 27, scope: !3079)
!3115 = !DILocation(line: 150, column: 7, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 150, column: 7)
!3117 = !DILocation(line: 150, column: 17, scope: !3116)
!3118 = !DILocation(line: 150, column: 21, scope: !3116)
!3119 = !DILocation(line: 150, column: 32, scope: !3116)
!3120 = !DILocation(line: 150, column: 7, scope: !3079)
!3121 = !DILocation(line: 152, column: 7, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 151, column: 5)
!3123 = !DILocation(line: 153, column: 26, scope: !3122)
!3124 = !DILocation(line: 153, column: 7, scope: !3122)
!3125 = !DILocation(line: 154, column: 5, scope: !3122)
!3126 = !DILocation(line: 158, column: 3, scope: !3101)
!3127 = !DILocation(line: 0, scope: !3100)
!3128 = !DILocation(line: 158, column: 3, scope: !3100)
!3129 = !DILocation(line: 164, column: 17, scope: !3099)
!3130 = !DILocation(line: 0, scope: !3099)
!3131 = !DILocation(line: 165, column: 55, scope: !3099)
!3132 = !DILocation(line: 165, column: 15, scope: !3099)
!3133 = !DILocation(line: 166, column: 7, scope: !3099)
!3134 = !DILocation(line: 166, column: 14, scope: !3099)
!3135 = !DILocation(line: 166, column: 34, scope: !3099)
!3136 = !DILocation(line: 167, column: 7, scope: !3099)
!3137 = !DILocation(line: 167, column: 11, scope: !3099)
!3138 = !DILocation(line: 167, column: 38, scope: !3099)
!3139 = !DILocation(line: 168, column: 11, scope: !3099)
!3140 = !DILocation(line: 168, column: 48, scope: !3099)
!3141 = !DILocation(line: 168, column: 54, scope: !3099)
!3142 = !DILocation(line: 170, column: 22, scope: !3106)
!3143 = !DILocation(line: 0, scope: !3106)
!3144 = !DILocation(line: 171, column: 14, scope: !3106)
!3145 = !DILocation(line: 172, column: 12, scope: !3106)
!3146 = distinct !{!3146, !3133, !3147}
!3147 = !DILocation(line: 173, column: 2, scope: !3099)
!3148 = !DILocation(line: 175, column: 11, scope: !3099)
!3149 = !DILocation(line: 177, column: 8, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 177, column: 8)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 176, column: 2)
!3152 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 175, column: 11)
!3153 = !DILocation(line: 177, column: 18, scope: !3150)
!3154 = !DILocation(line: 177, column: 22, scope: !3150)
!3155 = !DILocation(line: 177, column: 33, scope: !3150)
!3156 = !DILocation(line: 177, column: 8, scope: !3151)
!3157 = !DILocation(line: 179, column: 8, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 178, column: 6)
!3159 = !DILocation(line: 180, column: 28, scope: !3158)
!3160 = !DILocation(line: 180, column: 39, scope: !3158)
!3161 = !DILocation(line: 180, column: 8, scope: !3158)
!3162 = !DILocation(line: 181, column: 17, scope: !3158)
!3163 = !DILocation(line: 181, column: 8, scope: !3158)
!3164 = !DILocation(line: 182, column: 28, scope: !3158)
!3165 = !DILocation(line: 183, column: 13, scope: !3158)
!3166 = !DILocation(line: 183, column: 7, scope: !3158)
!3167 = !DILocation(line: 183, column: 41, scope: !3158)
!3168 = !DILocation(line: 182, column: 8, scope: !3158)
!3169 = !DILocation(line: 184, column: 17, scope: !3158)
!3170 = !DILocation(line: 184, column: 8, scope: !3158)
!3171 = !DILocation(line: 185, column: 6, scope: !3158)
!3172 = !DILocation(line: 187, column: 20, scope: !3151)
!3173 = !DILocation(line: 187, column: 14, scope: !3151)
!3174 = !DILocation(line: 187, column: 48, scope: !3151)
!3175 = !DILocation(line: 188, column: 2, scope: !3151)
!3176 = !DILocation(line: 191, column: 4, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 190, column: 2)
!3178 = !DILocation(line: 192, column: 14, scope: !3177)
!3179 = !DILocation(line: 193, column: 30, scope: !3177)
!3180 = !DILocation(line: 193, column: 14, scope: !3177)
!3181 = !DILocation(line: 194, column: 10, scope: !3177)
!3182 = !DILocation(line: 195, column: 8, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 195, column: 8)
!3184 = !DILocation(line: 195, column: 40, scope: !3183)
!3185 = !DILocation(line: 196, column: 8, scope: !3183)
!3186 = !DILocation(line: 196, column: 43, scope: !3183)
!3187 = !DILocation(line: 195, column: 8, scope: !3177)
!3188 = !DILocation(line: 197, column: 6, scope: !3183)
!3189 = !DILocation(line: 197, column: 34, scope: !3183)
!3190 = !DILocation(line: 198, column: 4, scope: !3177)
!3191 = !DILocation(line: 199, column: 4, scope: !3177)
!3192 = !DILocation(line: 200, column: 14, scope: !3177)
!3193 = !DILocation(line: 201, column: 4, scope: !3177)
!3194 = !DILocation(line: 202, column: 4, scope: !3177)
!3195 = !DILocation(line: 204, column: 24, scope: !3177)
!3196 = !DILocation(line: 204, column: 4, scope: !3177)
!3197 = !DILocation(line: 205, column: 4, scope: !3177)
!3198 = !DILocation(line: 207, column: 8, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 207, column: 8)
!3200 = !DILocation(line: 207, column: 18, scope: !3199)
!3201 = !DILocation(line: 207, column: 22, scope: !3199)
!3202 = !DILocation(line: 207, column: 33, scope: !3199)
!3203 = !DILocation(line: 207, column: 8, scope: !3177)
!3204 = !DILocation(line: 209, column: 8, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 208, column: 6)
!3206 = !DILocation(line: 210, column: 28, scope: !3205)
!3207 = !DILocation(line: 210, column: 39, scope: !3205)
!3208 = !DILocation(line: 210, column: 8, scope: !3205)
!3209 = !DILocation(line: 211, column: 17, scope: !3205)
!3210 = !DILocation(line: 211, column: 8, scope: !3205)
!3211 = !DILocation(line: 212, column: 27, scope: !3205)
!3212 = !DILocation(line: 212, column: 8, scope: !3205)
!3213 = !DILocation(line: 213, column: 6, scope: !3205)
!3214 = !DILocation(line: 0, scope: !3152)
!3215 = !DILocation(line: 216, column: 38, scope: !3099)
!3216 = !DILocation(line: 216, column: 7, scope: !3099)
!3217 = distinct !{!3217, !3126, !3218}
!3218 = !DILocation(line: 217, column: 5, scope: !3101)
!3219 = !DILocation(line: 219, column: 3, scope: !3079)
!3220 = !DILocation(line: 221, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 221, column: 7)
!3222 = !DILocation(line: 221, column: 17, scope: !3221)
!3223 = !DILocation(line: 221, column: 21, scope: !3221)
!3224 = !DILocation(line: 221, column: 32, scope: !3221)
!3225 = !DILocation(line: 221, column: 7, scope: !3079)
!3226 = !DILocation(line: 222, column: 5, scope: !3221)
!3227 = !DILocation(line: 225, column: 1, scope: !3079)
!3228 = !DILocation(line: 224, column: 3, scope: !3079)
!3229 = distinct !DISubprogram(name: "gimple_assign_set_rhs1", scope: !568, file: !568, line: 1747, type: !3230, scopeLine: 1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3232)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{null, !976, !652}
!3232 = !{!3233, !3234}
!3233 = !DILocalVariable(name: "gs", arg: 1, scope: !3229, file: !568, line: 1747, type: !976)
!3234 = !DILocalVariable(name: "rhs", arg: 2, scope: !3229, file: !568, line: 1747, type: !652)
!3235 = !DILocation(line: 0, scope: !3229)
!3236 = !DILocation(line: 1751, column: 3, scope: !3229)
!3237 = !DILocation(line: 1752, column: 1, scope: !3229)
!3238 = distinct !DISubprogram(name: "update_stmt", scope: !568, file: !568, line: 1456, type: !3239, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{null, !976}
!3241 = !{!3242}
!3242 = !DILocalVariable(name: "s", arg: 1, scope: !3238, file: !568, line: 1456, type: !976)
!3243 = !DILocation(line: 0, scope: !3238)
!3244 = !DILocation(line: 1458, column: 7, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3238, file: !568, line: 1458, column: 7)
!3246 = !DILocation(line: 1458, column: 7, scope: !3238)
!3247 = !DILocation(line: 1460, column: 7, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3245, file: !568, line: 1459, column: 5)
!3249 = !DILocation(line: 1461, column: 7, scope: !3248)
!3250 = !DILocation(line: 1462, column: 5, scope: !3248)
!3251 = !DILocation(line: 1463, column: 1, scope: !3238)
!3252 = distinct !DISubprogram(name: "next_imm_use_stmt", scope: !2790, file: !2790, line: 1083, type: !3253, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!976, !2996}
!3255 = !{!3256}
!3256 = !DILocalVariable(name: "imm", arg: 1, scope: !3252, file: !2790, line: 1083, type: !2996)
!3257 = !DILocation(line: 0, scope: !3252)
!3258 = !DILocation(line: 1085, column: 33, scope: !3252)
!3259 = !DILocation(line: 1085, column: 16, scope: !3252)
!3260 = !DILocation(line: 1086, column: 7, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3252, file: !2790, line: 1086, column: 7)
!3262 = !DILocation(line: 1086, column: 7, scope: !3252)
!3263 = !DILocation(line: 1088, column: 26, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !2790, line: 1088, column: 11)
!3265 = distinct !DILexicalBlock(scope: !3261, file: !2790, line: 1087, column: 5)
!3266 = !DILocation(line: 1088, column: 31, scope: !3264)
!3267 = !DILocation(line: 1088, column: 11, scope: !3265)
!3268 = !DILocation(line: 1089, column: 24, scope: !3264)
!3269 = !DILocation(line: 1089, column: 2, scope: !3264)
!3270 = !DILocation(line: 1093, column: 30, scope: !3252)
!3271 = !DILocation(line: 1093, column: 3, scope: !3252)
!3272 = !DILocation(line: 1094, column: 10, scope: !3252)
!3273 = !DILocation(line: 1094, column: 3, scope: !3252)
!3274 = !DILocation(line: 1095, column: 1, scope: !3252)
!3275 = distinct !DISubprogram(name: "gimple_phi_result", scope: !568, file: !568, line: 3071, type: !2861, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3276)
!3276 = !{!3277}
!3277 = !DILocalVariable(name: "gs", arg: 1, scope: !3275, file: !568, line: 3071, type: !2863)
!3278 = !DILocation(line: 0, scope: !3275)
!3279 = !DILocation(line: 3074, column: 25, scope: !3275)
!3280 = !DILocation(line: 3074, column: 3, scope: !3275)
!3281 = distinct !DISubprogram(name: "clear_and_done_ssa_iter", scope: !2790, file: !2790, line: 729, type: !3282, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{null, !2810}
!3284 = !{!3285}
!3285 = !DILocalVariable(name: "ptr", arg: 1, scope: !3281, file: !2790, line: 729, type: !2810)
!3286 = !DILocation(line: 0, scope: !3281)
!3287 = !DILocation(line: 731, column: 8, scope: !3281)
!3288 = !DILocation(line: 731, column: 13, scope: !3281)
!3289 = !DILocation(line: 732, column: 8, scope: !3281)
!3290 = !DILocation(line: 732, column: 13, scope: !3281)
!3291 = !DILocation(line: 733, column: 8, scope: !3281)
!3292 = !DILocation(line: 733, column: 18, scope: !3281)
!3293 = !DILocation(line: 734, column: 8, scope: !3281)
!3294 = !DILocation(line: 734, column: 14, scope: !3281)
!3295 = !DILocation(line: 735, column: 8, scope: !3281)
!3296 = !DILocation(line: 735, column: 16, scope: !3281)
!3297 = !DILocation(line: 736, column: 8, scope: !3281)
!3298 = !DILocation(line: 736, column: 17, scope: !3281)
!3299 = !DILocation(line: 737, column: 8, scope: !3281)
!3300 = !DILocation(line: 737, column: 13, scope: !3281)
!3301 = !DILocation(line: 738, column: 1, scope: !3281)
!3302 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !568, file: !568, line: 3061, type: !3303, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!7, !2863}
!3305 = !{!3306}
!3306 = !DILocalVariable(name: "gs", arg: 1, scope: !3302, file: !568, line: 3061, type: !2863)
!3307 = !DILocation(line: 0, scope: !3302)
!3308 = !DILocation(line: 3064, column: 25, scope: !3302)
!3309 = !DILocation(line: 3064, column: 3, scope: !3302)
!3310 = distinct !DISubprogram(name: "gimple_op", scope: !568, file: !568, line: 1631, type: !3311, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!652, !2863, !7}
!3313 = !{!3314, !3315}
!3314 = !DILocalVariable(name: "gs", arg: 1, scope: !3310, file: !568, line: 1631, type: !2863)
!3315 = !DILocalVariable(name: "i", arg: 2, scope: !3310, file: !568, line: 1631, type: !7)
!3316 = !DILocation(line: 0, scope: !3310)
!3317 = !DILocation(line: 1633, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3310, file: !568, line: 1633, column: 7)
!3319 = !DILocation(line: 1633, column: 7, scope: !3310)
!3320 = !DILocation(line: 1638, column: 14, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3318, file: !568, line: 1634, column: 5)
!3322 = !DILocation(line: 1638, column: 7, scope: !3321)
!3323 = !DILocation(line: 0, scope: !3318)
!3324 = !DILocation(line: 1642, column: 1, scope: !3310)
!3325 = distinct !DISubprogram(name: "gimple_has_ops", scope: !568, file: !568, line: 1274, type: !3038, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3326)
!3326 = !{!3327}
!3327 = !DILocalVariable(name: "g", arg: 1, scope: !3325, file: !568, line: 1274, type: !2863)
!3328 = !DILocation(line: 0, scope: !3325)
!3329 = !DILocation(line: 1276, column: 10, scope: !3325)
!3330 = !DILocation(line: 1276, column: 26, scope: !3325)
!3331 = !DILocation(line: 1276, column: 41, scope: !3325)
!3332 = !DILocation(line: 1276, column: 44, scope: !3325)
!3333 = !DILocation(line: 1276, column: 60, scope: !3325)
!3334 = !DILocation(line: 1276, column: 3, scope: !3325)
!3335 = distinct !DISubprogram(name: "gimple_ops", scope: !568, file: !568, line: 1614, type: !2800, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3336)
!3336 = !{!3337, !3338}
!3337 = !DILocalVariable(name: "gs", arg: 1, scope: !3335, file: !568, line: 1614, type: !976)
!3338 = !DILocalVariable(name: "off", scope: !3335, file: !568, line: 1616, type: !1121)
!3339 = !DILocation(line: 0, scope: !3335)
!3340 = !DILocation(line: 1621, column: 28, scope: !3335)
!3341 = !DILocation(line: 1621, column: 9, scope: !3335)
!3342 = !DILocation(line: 1622, column: 3, scope: !3335)
!3343 = !DILocation(line: 1624, column: 20, scope: !3335)
!3344 = !DILocation(line: 1624, column: 32, scope: !3335)
!3345 = !DILocation(line: 1624, column: 10, scope: !3335)
!3346 = !DILocation(line: 1624, column: 3, scope: !3335)
!3347 = distinct !DISubprogram(name: "gimple_code", scope: !568, file: !568, line: 1052, type: !3348, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!567, !2863}
!3350 = !{!3351}
!3351 = !DILocalVariable(name: "g", arg: 1, scope: !3347, file: !568, line: 1052, type: !2863)
!3352 = !DILocation(line: 0, scope: !3347)
!3353 = !DILocation(line: 1054, column: 20, scope: !3347)
!3354 = !DILocation(line: 1054, column: 3, scope: !3347)
!3355 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !568, file: !568, line: 1073, type: !3356, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3358)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!606, !976}
!3358 = !{!3359}
!3359 = !DILocalVariable(name: "gs", arg: 1, scope: !3355, file: !568, line: 1073, type: !976)
!3360 = !DILocation(line: 0, scope: !3355)
!3361 = !DILocation(line: 1075, column: 24, scope: !3355)
!3362 = !DILocation(line: 1075, column: 10, scope: !3355)
!3363 = !DILocation(line: 1075, column: 3, scope: !3355)
!3364 = distinct !DISubprogram(name: "gss_for_code", scope: !568, file: !568, line: 1061, type: !3365, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!606, !567}
!3367 = !{!3368}
!3368 = !DILocalVariable(name: "code", arg: 1, scope: !3364, file: !568, line: 1061, type: !567)
!3369 = !DILocation(line: 0, scope: !3364)
!3370 = !DILocation(line: 1066, column: 10, scope: !3364)
!3371 = !DILocation(line: 1066, column: 3, scope: !3364)
!3372 = distinct !DISubprogram(name: "gimple_vdef", scope: !568, file: !568, line: 1375, type: !2861, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3373)
!3373 = !{!3374}
!3374 = !DILocalVariable(name: "g", arg: 1, scope: !3372, file: !568, line: 1375, type: !2863)
!3375 = !DILocation(line: 0, scope: !3372)
!3376 = !DILocation(line: 1377, column: 8, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3372, file: !568, line: 1377, column: 7)
!3378 = !DILocation(line: 1377, column: 7, scope: !3372)
!3379 = !DILocation(line: 1379, column: 23, scope: !3372)
!3380 = !DILocation(line: 1379, column: 3, scope: !3372)
!3381 = !DILocation(line: 1380, column: 1, scope: !3372)
!3382 = distinct !DISubprogram(name: "end_imm_use_stmt_traverse", scope: !2790, file: !2790, line: 978, type: !3383, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{null, !2996}
!3385 = !{!3386}
!3386 = !DILocalVariable(name: "imm", arg: 1, scope: !3382, file: !2790, line: 978, type: !2996)
!3387 = !DILocation(line: 0, scope: !3382)
!3388 = !DILocation(line: 980, column: 26, scope: !3382)
!3389 = !DILocation(line: 980, column: 3, scope: !3382)
!3390 = !DILocation(line: 981, column: 1, scope: !3382)
!3391 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !568, file: !568, line: 1283, type: !3038, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3392)
!3392 = !{!3393}
!3393 = !DILocalVariable(name: "g", arg: 1, scope: !3391, file: !568, line: 1283, type: !2863)
!3394 = !DILocation(line: 0, scope: !3391)
!3395 = !DILocation(line: 1285, column: 10, scope: !3391)
!3396 = !DILocation(line: 1285, column: 26, scope: !3391)
!3397 = !DILocation(line: 1285, column: 43, scope: !3391)
!3398 = !DILocation(line: 1285, column: 46, scope: !3391)
!3399 = !DILocation(line: 1285, column: 62, scope: !3391)
!3400 = !DILocation(line: 1285, column: 3, scope: !3391)
!3401 = distinct !DISubprogram(name: "delink_imm_use", scope: !2790, file: !2790, line: 188, type: !3402, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3404)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !1948}
!3404 = !{!3405}
!3405 = !DILocalVariable(name: "linknode", arg: 1, scope: !3401, file: !2790, line: 188, type: !1948)
!3406 = !DILocation(line: 0, scope: !3401)
!3407 = !DILocation(line: 191, column: 17, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3401, file: !2790, line: 191, column: 7)
!3409 = !DILocation(line: 191, column: 22, scope: !3408)
!3410 = !DILocation(line: 191, column: 7, scope: !3401)
!3411 = !DILocation(line: 194, column: 36, scope: !3401)
!3412 = !DILocation(line: 194, column: 19, scope: !3401)
!3413 = !DILocation(line: 194, column: 24, scope: !3401)
!3414 = !DILocation(line: 195, column: 36, scope: !3401)
!3415 = !DILocation(line: 195, column: 13, scope: !3401)
!3416 = !DILocation(line: 195, column: 24, scope: !3401)
!3417 = !DILocation(line: 196, column: 18, scope: !3401)
!3418 = !DILocation(line: 197, column: 18, scope: !3401)
!3419 = !DILocation(line: 198, column: 1, scope: !3401)
!3420 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2790, file: !2790, line: 442, type: !3421, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3423)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!1947, !976, !641}
!3423 = !{!3424, !3425}
!3424 = !DILocalVariable(name: "gs", arg: 1, scope: !3420, file: !2790, line: 442, type: !976)
!3425 = !DILocalVariable(name: "i", arg: 2, scope: !3420, file: !2790, line: 442, type: !641)
!3426 = !DILocation(line: 0, scope: !3420)
!3427 = !DILocation(line: 444, column: 11, scope: !3420)
!3428 = !DILocation(line: 444, column: 35, scope: !3420)
!3429 = !DILocation(line: 444, column: 3, scope: !3420)
!3430 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !568, file: !568, line: 3100, type: !3431, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3434)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!3433, !976, !7}
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!3434 = !{!3435, !3436}
!3435 = !DILocalVariable(name: "gs", arg: 1, scope: !3430, file: !568, line: 3100, type: !976)
!3436 = !DILocalVariable(name: "index", arg: 2, scope: !3430, file: !568, line: 3100, type: !7)
!3437 = !DILocation(line: 0, scope: !3430)
!3438 = !DILocation(line: 3103, column: 3, scope: !3430)
!3439 = !DILocation(line: 3104, column: 12, scope: !3430)
!3440 = !DILocation(line: 3104, column: 3, scope: !3430)
!3441 = distinct !DISubprogram(name: "is_gimple_debug", scope: !568, file: !568, line: 3249, type: !3038, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3442)
!3442 = !{!3443}
!3443 = !DILocalVariable(name: "gs", arg: 1, scope: !3441, file: !568, line: 3249, type: !2863)
!3444 = !DILocation(line: 0, scope: !3441)
!3445 = !DILocation(line: 3251, column: 10, scope: !3441)
!3446 = !DILocation(line: 3251, column: 27, scope: !3441)
!3447 = !DILocation(line: 3251, column: 3, scope: !3441)
!3448 = distinct !DISubprogram(name: "link_use_stmts_after", scope: !2790, file: !2790, line: 1018, type: !3449, scopeLine: 1019, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{null, !1947, !2996}
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459}
!3452 = !DILocalVariable(name: "head", arg: 1, scope: !3448, file: !2790, line: 1018, type: !1947)
!3453 = !DILocalVariable(name: "imm", arg: 2, scope: !3448, file: !2790, line: 1018, type: !2996)
!3454 = !DILocalVariable(name: "use_p", scope: !3448, file: !2790, line: 1020, type: !1947)
!3455 = !DILocalVariable(name: "last_p", scope: !3448, file: !2790, line: 1021, type: !1947)
!3456 = !DILocalVariable(name: "head_stmt", scope: !3448, file: !2790, line: 1022, type: !976)
!3457 = !DILocalVariable(name: "use", scope: !3448, file: !2790, line: 1023, type: !652)
!3458 = !DILocalVariable(name: "op_iter", scope: !3448, file: !2790, line: 1024, type: !2572)
!3459 = !DILocalVariable(name: "flag", scope: !3448, file: !2790, line: 1025, type: !641)
!3460 = !DILocation(line: 0, scope: !3448)
!3461 = !DILocation(line: 1022, column: 22, scope: !3448)
!3462 = !DILocation(line: 1023, column: 14, scope: !3448)
!3463 = !DILocation(line: 1024, column: 3, scope: !3448)
!3464 = !DILocation(line: 1028, column: 11, scope: !3448)
!3465 = !DILocation(line: 1030, column: 7, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3448, file: !2790, line: 1030, column: 7)
!3467 = !DILocation(line: 1030, column: 31, scope: !3466)
!3468 = !DILocation(line: 1030, column: 7, scope: !3448)
!3469 = !DILocation(line: 1032, column: 7, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !2790, line: 1032, column: 7)
!3471 = distinct !DILexicalBlock(scope: !3466, file: !2790, line: 1031, column: 5)
!3472 = !DILocation(line: 0, scope: !3470)
!3473 = !DILocation(line: 1032, column: 7, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3470, file: !2790, line: 1032, column: 7)
!3475 = !DILocation(line: 1033, column: 6, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3474, file: !2790, line: 1033, column: 6)
!3477 = !DILocation(line: 1033, column: 27, scope: !3476)
!3478 = !DILocation(line: 1033, column: 6, scope: !3474)
!3479 = !DILocation(line: 1034, column: 13, scope: !3476)
!3480 = !DILocation(line: 1034, column: 4, scope: !3476)
!3481 = distinct !{!3481, !3469, !3482}
!3482 = !DILocation(line: 1034, column: 53, scope: !3470)
!3483 = !DILocation(line: 1038, column: 11, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3466, file: !2790, line: 1037, column: 5)
!3485 = !DILocation(line: 1040, column: 4, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !2790, line: 1040, column: 4)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !2790, line: 1039, column: 2)
!3488 = distinct !DILexicalBlock(scope: !3484, file: !2790, line: 1038, column: 11)
!3489 = !DILocation(line: 0, scope: !3486)
!3490 = !DILocation(line: 1040, column: 4, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3486, file: !2790, line: 1040, column: 4)
!3492 = !DILocation(line: 1041, column: 10, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3491, file: !2790, line: 1041, column: 10)
!3494 = !DILocation(line: 1041, column: 31, scope: !3493)
!3495 = !DILocation(line: 1041, column: 10, scope: !3491)
!3496 = !DILocation(line: 1042, column: 17, scope: !3493)
!3497 = !DILocation(line: 1042, column: 8, scope: !3493)
!3498 = distinct !{!3498, !3485, !3499}
!3499 = !DILocation(line: 1042, column: 57, scope: !3486)
!3500 = !DILocation(line: 1044, column: 25, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3488, file: !2790, line: 1044, column: 16)
!3502 = !DILocation(line: 1044, column: 53, scope: !3501)
!3503 = !DILocation(line: 1044, column: 16, scope: !3488)
!3504 = !DILocation(line: 1046, column: 8, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !2790, line: 1046, column: 8)
!3506 = distinct !DILexicalBlock(scope: !3501, file: !2790, line: 1045, column: 2)
!3507 = !DILocation(line: 1046, column: 29, scope: !3505)
!3508 = !DILocation(line: 1046, column: 8, scope: !3506)
!3509 = !DILocation(line: 1047, column: 15, scope: !3505)
!3510 = !DILocation(line: 1047, column: 6, scope: !3505)
!3511 = !DILocation(line: 1051, column: 22, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3448, file: !2790, line: 1051, column: 7)
!3513 = !DILocation(line: 1021, column: 17, scope: !3448)
!3514 = !DILocation(line: 1051, column: 27, scope: !3512)
!3515 = !DILocation(line: 1051, column: 7, scope: !3448)
!3516 = !DILocation(line: 1052, column: 27, scope: !3512)
!3517 = !DILocation(line: 1052, column: 5, scope: !3512)
!3518 = !DILocation(line: 1053, column: 32, scope: !3448)
!3519 = !DILocation(line: 1053, column: 3, scope: !3448)
!3520 = !DILocation(line: 1054, column: 1, scope: !3448)
!3521 = distinct !DISubprogram(name: "move_use_after_head", scope: !2790, file: !2790, line: 990, type: !3522, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3524)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!1947, !1947, !1947, !1947}
!3524 = !{!3525, !3526, !3527}
!3525 = !DILocalVariable(name: "use_p", arg: 1, scope: !3521, file: !2790, line: 990, type: !1947)
!3526 = !DILocalVariable(name: "head", arg: 2, scope: !3521, file: !2790, line: 990, type: !1947)
!3527 = !DILocalVariable(name: "last_p", arg: 3, scope: !3521, file: !2790, line: 991, type: !1947)
!3528 = !DILocation(line: 0, scope: !3521)
!3529 = !DILocation(line: 997, column: 13, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3521, file: !2790, line: 997, column: 7)
!3531 = !DILocation(line: 997, column: 7, scope: !3521)
!3532 = !DILocation(line: 1000, column: 19, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !2790, line: 1000, column: 11)
!3534 = distinct !DILexicalBlock(scope: !3530, file: !2790, line: 998, column: 5)
!3535 = !DILocation(line: 1000, column: 24, scope: !3533)
!3536 = !DILocation(line: 1000, column: 11, scope: !3534)
!3537 = !DILocation(line: 1005, column: 4, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3533, file: !2790, line: 1003, column: 2)
!3539 = !DILocation(line: 1006, column: 4, scope: !3538)
!3540 = !DILocation(line: 1010, column: 3, scope: !3521)
!3541 = distinct !DISubprogram(name: "op_iter_init_use", scope: !2790, file: !2790, line: 768, type: !2808, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3542)
!3542 = !{!3543, !3544, !3545}
!3543 = !DILocalVariable(name: "ptr", arg: 1, scope: !3541, file: !2790, line: 768, type: !2810)
!3544 = !DILocalVariable(name: "stmt", arg: 2, scope: !3541, file: !2790, line: 768, type: !976)
!3545 = !DILocalVariable(name: "flags", arg: 3, scope: !3541, file: !2790, line: 768, type: !641)
!3546 = !DILocation(line: 0, scope: !3541)
!3547 = !DILocation(line: 770, column: 3, scope: !3541)
!3548 = !DILocation(line: 772, column: 3, scope: !3541)
!3549 = !DILocation(line: 773, column: 8, scope: !3541)
!3550 = !DILocation(line: 773, column: 18, scope: !3541)
!3551 = !DILocation(line: 774, column: 10, scope: !3541)
!3552 = !DILocation(line: 774, column: 3, scope: !3541)
!3553 = distinct !DISubprogram(name: "gimple_vuse_op", scope: !568, file: !568, line: 1334, type: !3554, scopeLine: 1335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!1947, !2863}
!3556 = !{!3557, !3558}
!3557 = !DILocalVariable(name: "g", arg: 1, scope: !3553, file: !568, line: 1334, type: !2863)
!3558 = !DILocalVariable(name: "ops", scope: !3553, file: !568, line: 1336, type: !1012)
!3559 = !DILocation(line: 0, scope: !3553)
!3560 = !DILocation(line: 1337, column: 8, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3553, file: !568, line: 1337, column: 7)
!3562 = !DILocation(line: 1337, column: 7, scope: !3553)
!3563 = !DILocation(line: 1339, column: 25, scope: !3553)
!3564 = !DILocation(line: 1340, column: 7, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3553, file: !568, line: 1340, column: 7)
!3566 = !DILocation(line: 1341, column: 7, scope: !3565)
!3567 = !DILocation(line: 1341, column: 28, scope: !3565)
!3568 = !DILocation(line: 1341, column: 49, scope: !3565)
!3569 = !DILocation(line: 1341, column: 32, scope: !3565)
!3570 = !DILocation(line: 1342, column: 12, scope: !3565)
!3571 = !DILocation(line: 1340, column: 7, scope: !3553)
!3572 = !DILocation(line: 1344, column: 1, scope: !3553)
!3573 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !2790, file: !2790, line: 202, type: !3574, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3576)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{null, !1948, !1948}
!3576 = !{!3577, !3578}
!3577 = !DILocalVariable(name: "linknode", arg: 1, scope: !3573, file: !2790, line: 202, type: !1948)
!3578 = !DILocalVariable(name: "list", arg: 2, scope: !3573, file: !2790, line: 202, type: !1948)
!3579 = !DILocation(line: 0, scope: !3573)
!3580 = !DILocation(line: 206, column: 13, scope: !3573)
!3581 = !DILocation(line: 206, column: 18, scope: !3573)
!3582 = !DILocation(line: 207, column: 26, scope: !3573)
!3583 = !DILocation(line: 207, column: 13, scope: !3573)
!3584 = !DILocation(line: 207, column: 18, scope: !3573)
!3585 = !DILocation(line: 208, column: 9, scope: !3573)
!3586 = !DILocation(line: 208, column: 15, scope: !3573)
!3587 = !DILocation(line: 208, column: 20, scope: !3573)
!3588 = !DILocation(line: 209, column: 14, scope: !3573)
!3589 = !DILocation(line: 210, column: 1, scope: !3573)
!3590 = distinct !DISubprogram(name: "op_iter_init", scope: !2790, file: !2790, line: 742, type: !3591, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3593)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{null, !2810, !976, !641}
!3593 = !{!3594, !3595, !3596}
!3594 = !DILocalVariable(name: "ptr", arg: 1, scope: !3590, file: !2790, line: 742, type: !2810)
!3595 = !DILocalVariable(name: "stmt", arg: 2, scope: !3590, file: !2790, line: 742, type: !976)
!3596 = !DILocalVariable(name: "flags", arg: 3, scope: !3590, file: !2790, line: 742, type: !641)
!3597 = !DILocation(line: 0, scope: !3590)
!3598 = !DILocation(line: 746, column: 3, scope: !3590)
!3599 = !DILocation(line: 748, column: 22, scope: !3590)
!3600 = !DILocation(line: 748, column: 15, scope: !3590)
!3601 = !DILocation(line: 748, column: 52, scope: !3590)
!3602 = !DILocation(line: 748, column: 8, scope: !3590)
!3603 = !DILocation(line: 748, column: 13, scope: !3590)
!3604 = !DILocation(line: 749, column: 15, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3590, file: !2790, line: 749, column: 7)
!3606 = !DILocation(line: 750, column: 7, scope: !3605)
!3607 = !DILocation(line: 750, column: 10, scope: !3605)
!3608 = !DILocation(line: 751, column: 7, scope: !3605)
!3609 = !DILocation(line: 751, column: 10, scope: !3605)
!3610 = !DILocation(line: 751, column: 29, scope: !3605)
!3611 = !DILocation(line: 749, column: 7, scope: !3590)
!3612 = !DILocation(line: 752, column: 22, scope: !3605)
!3613 = !DILocation(line: 752, column: 28, scope: !3605)
!3614 = !DILocation(line: 752, column: 15, scope: !3605)
!3615 = !DILocation(line: 752, column: 5, scope: !3605)
!3616 = !DILocation(line: 753, column: 22, scope: !3590)
!3617 = !DILocation(line: 753, column: 15, scope: !3590)
!3618 = !DILocation(line: 753, column: 52, scope: !3590)
!3619 = !DILocation(line: 753, column: 8, scope: !3590)
!3620 = !DILocation(line: 753, column: 13, scope: !3590)
!3621 = !DILocation(line: 754, column: 15, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3590, file: !2790, line: 754, column: 7)
!3623 = !DILocation(line: 755, column: 7, scope: !3622)
!3624 = !DILocation(line: 755, column: 10, scope: !3622)
!3625 = !DILocation(line: 756, column: 7, scope: !3622)
!3626 = !DILocation(line: 756, column: 10, scope: !3622)
!3627 = !DILocation(line: 756, column: 29, scope: !3622)
!3628 = !DILocation(line: 754, column: 7, scope: !3590)
!3629 = !DILocation(line: 757, column: 22, scope: !3622)
!3630 = !DILocation(line: 757, column: 28, scope: !3622)
!3631 = !DILocation(line: 757, column: 15, scope: !3622)
!3632 = !DILocation(line: 757, column: 5, scope: !3622)
!3633 = !DILocation(line: 758, column: 8, scope: !3590)
!3634 = !DILocation(line: 758, column: 13, scope: !3590)
!3635 = !DILocation(line: 760, column: 8, scope: !3590)
!3636 = !DILocation(line: 760, column: 14, scope: !3590)
!3637 = !DILocation(line: 761, column: 8, scope: !3590)
!3638 = !DILocation(line: 761, column: 16, scope: !3590)
!3639 = !DILocation(line: 762, column: 8, scope: !3590)
!3640 = !DILocation(line: 762, column: 17, scope: !3590)
!3641 = !DILocation(line: 763, column: 1, scope: !3590)
!3642 = distinct !DISubprogram(name: "gimple_def_ops", scope: !568, file: !568, line: 1292, type: !3643, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!1005, !2863}
!3645 = !{!3646}
!3646 = !DILocalVariable(name: "g", arg: 1, scope: !3642, file: !568, line: 1292, type: !2863)
!3647 = !DILocation(line: 0, scope: !3642)
!3648 = !DILocation(line: 1294, column: 8, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3642, file: !568, line: 1294, column: 7)
!3650 = !DILocation(line: 1294, column: 7, scope: !3642)
!3651 = !DILocation(line: 1296, column: 26, scope: !3642)
!3652 = !DILocation(line: 1296, column: 3, scope: !3642)
!3653 = !DILocation(line: 1297, column: 1, scope: !3642)
!3654 = distinct !DISubprogram(name: "gimple_use_ops", scope: !568, file: !568, line: 1313, type: !3655, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!1012, !2863}
!3657 = !{!3658}
!3658 = !DILocalVariable(name: "g", arg: 1, scope: !3654, file: !568, line: 1313, type: !2863)
!3659 = !DILocation(line: 0, scope: !3654)
!3660 = !DILocation(line: 1315, column: 8, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3654, file: !568, line: 1315, column: 7)
!3662 = !DILocation(line: 1315, column: 7, scope: !3654)
!3663 = !DILocation(line: 1317, column: 26, scope: !3654)
!3664 = !DILocation(line: 1317, column: 3, scope: !3654)
!3665 = !DILocation(line: 1318, column: 1, scope: !3654)
!3666 = distinct !DISubprogram(name: "gimple_expr_code", scope: !568, file: !568, line: 1438, type: !3047, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3667)
!3667 = !{!3668, !3669}
!3668 = !DILocalVariable(name: "stmt", arg: 1, scope: !3666, file: !568, line: 1438, type: !2863)
!3669 = !DILocalVariable(name: "code", scope: !3666, file: !568, line: 1440, type: !567)
!3670 = !DILocation(line: 0, scope: !3666)
!3671 = !DILocation(line: 1440, column: 27, scope: !3666)
!3672 = !DILocation(line: 1441, column: 29, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3666, file: !568, line: 1441, column: 7)
!3674 = !DILocation(line: 1442, column: 42, scope: !3673)
!3675 = !DILocation(line: 1442, column: 5, scope: !3673)
!3676 = !DILocation(line: 1446, column: 5, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3673, file: !568, line: 1443, column: 12)
!3678 = !DILocation(line: 1448, column: 5, scope: !3666)
!3679 = !DILocation(line: 1450, column: 1, scope: !3666)
!3680 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !568, file: !568, line: 1686, type: !3681, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3683)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!632, !366}
!3683 = !{!3684}
!3684 = !DILocalVariable(name: "code", arg: 1, scope: !3680, file: !568, line: 1686, type: !366)
!3685 = !DILocation(line: 0, scope: !3680)
!3686 = !DILocation(line: 1688, column: 34, scope: !3680)
!3687 = !DILocation(line: 1688, column: 10, scope: !3680)
!3688 = !DILocation(line: 1688, column: 3, scope: !3680)
!3689 = distinct !DISubprogram(name: "ei_start_1", scope: !318, file: !318, line: 696, type: !3690, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3692)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!3091, !3096}
!3692 = !{!3693, !3694}
!3693 = !DILocalVariable(name: "ev", arg: 1, scope: !3689, file: !318, line: 696, type: !3096)
!3694 = !DILocalVariable(name: "i", scope: !3689, file: !318, line: 698, type: !3091)
!3695 = !DILocation(line: 0, scope: !3689)
!3696 = !DILocation(line: 700, column: 5, scope: !3689)
!3697 = !DILocation(line: 700, column: 11, scope: !3689)
!3698 = !DILocation(line: 701, column: 5, scope: !3689)
!3699 = !DILocation(line: 701, column: 15, scope: !3689)
!3700 = !DILocation(line: 703, column: 3, scope: !3689)
!3701 = distinct !DISubprogram(name: "ei_cond", scope: !318, file: !318, line: 771, type: !3702, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3705)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!640, !3091, !3704}
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!3705 = !{!3706, !3707}
!3706 = !DILocalVariable(name: "ei", arg: 1, scope: !3701, file: !318, line: 771, type: !3091)
!3707 = !DILocalVariable(name: "p", arg: 2, scope: !3701, file: !318, line: 771, type: !3704)
!3708 = !DILocation(line: 0, scope: !3701)
!3709 = !DILocation(line: 773, column: 8, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3701, file: !318, line: 773, column: 7)
!3711 = !DILocation(line: 773, column: 7, scope: !3701)
!3712 = !DILocation(line: 775, column: 12, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3710, file: !318, line: 774, column: 5)
!3714 = !DILocation(line: 776, column: 7, scope: !3713)
!3715 = !DILocation(line: 781, column: 7, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3710, file: !318, line: 779, column: 5)
!3717 = !DILocation(line: 0, scope: !3710)
!3718 = !DILocation(line: 783, column: 1, scope: !3701)
!3719 = distinct !DISubprogram(name: "gimple_phi_arg_location_from_edge", scope: !2790, file: !2790, line: 483, type: !3720, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3722)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!779, !976, !956}
!3722 = !{!3723, !3724}
!3723 = !DILocalVariable(name: "gs", arg: 1, scope: !3719, file: !2790, line: 483, type: !976)
!3724 = !DILocalVariable(name: "e", arg: 2, scope: !3719, file: !2790, line: 483, type: !956)
!3725 = !DILocation(line: 0, scope: !3719)
!3726 = !DILocation(line: 485, column: 33, scope: !3719)
!3727 = !DILocation(line: 485, column: 10, scope: !3719)
!3728 = !DILocation(line: 485, column: 44, scope: !3719)
!3729 = !DILocation(line: 485, column: 3, scope: !3719)
!3730 = distinct !DISubprogram(name: "gimple_location", scope: !568, file: !568, line: 1139, type: !3731, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3733)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!777, !2863}
!3733 = !{!3734}
!3734 = !DILocalVariable(name: "g", arg: 1, scope: !3730, file: !568, line: 1139, type: !2863)
!3735 = !DILocation(line: 0, scope: !3730)
!3736 = !DILocation(line: 1141, column: 20, scope: !3730)
!3737 = !DILocation(line: 1141, column: 3, scope: !3730)
!3738 = distinct !DISubprogram(name: "make_ssa_name", scope: !2790, file: !2790, line: 1245, type: !3739, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3741)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!652, !652, !976}
!3741 = !{!3742, !3743}
!3742 = !DILocalVariable(name: "var", arg: 1, scope: !3738, file: !2790, line: 1245, type: !652)
!3743 = !DILocalVariable(name: "stmt", arg: 2, scope: !3738, file: !2790, line: 1245, type: !976)
!3744 = !DILocation(line: 0, scope: !3738)
!3745 = !DILocation(line: 1247, column: 28, scope: !3738)
!3746 = !DILocation(line: 1247, column: 10, scope: !3738)
!3747 = !DILocation(line: 1247, column: 3, scope: !3738)
!3748 = distinct !DISubprogram(name: "gimple_assign_set_lhs", scope: !568, file: !568, line: 1714, type: !3230, scopeLine: 1715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3749)
!3749 = !{!3750, !3751}
!3750 = !DILocalVariable(name: "gs", arg: 1, scope: !3748, file: !568, line: 1714, type: !976)
!3751 = !DILocalVariable(name: "lhs", arg: 2, scope: !3748, file: !568, line: 1714, type: !652)
!3752 = !DILocation(line: 0, scope: !3748)
!3753 = !DILocation(line: 1717, column: 3, scope: !3748)
!3754 = !DILocation(line: 1719, column: 7, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3748, file: !568, line: 1719, column: 7)
!3756 = !DILocation(line: 1719, column: 11, scope: !3755)
!3757 = !DILocation(line: 1719, column: 14, scope: !3755)
!3758 = !DILocation(line: 1719, column: 30, scope: !3755)
!3759 = !DILocation(line: 1719, column: 7, scope: !3748)
!3760 = !DILocation(line: 1720, column: 5, scope: !3755)
!3761 = !DILocation(line: 1720, column: 29, scope: !3755)
!3762 = !DILocation(line: 1721, column: 1, scope: !3748)
!3763 = distinct !DISubprogram(name: "gimple_set_location", scope: !568, file: !568, line: 1156, type: !3764, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{null, !976, !777}
!3766 = !{!3767, !3768}
!3767 = !DILocalVariable(name: "g", arg: 1, scope: !3763, file: !568, line: 1156, type: !976)
!3768 = !DILocalVariable(name: "location", arg: 2, scope: !3763, file: !568, line: 1156, type: !777)
!3769 = !DILocation(line: 0, scope: !3763)
!3770 = !DILocation(line: 1158, column: 13, scope: !3763)
!3771 = !DILocation(line: 1158, column: 22, scope: !3763)
!3772 = !DILocation(line: 1159, column: 1, scope: !3763)
!3773 = distinct !DISubprogram(name: "ei_next", scope: !318, file: !318, line: 736, type: !3774, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3777)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{null, !3776}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3777 = !{!3778}
!3778 = !DILocalVariable(name: "i", arg: 1, scope: !3773, file: !318, line: 736, type: !3776)
!3779 = !DILocation(line: 0, scope: !3773)
!3780 = !DILocation(line: 738, column: 3, scope: !3773)
!3781 = !DILocation(line: 739, column: 11, scope: !3773)
!3782 = !DILocation(line: 740, column: 1, scope: !3773)
!3783 = distinct !DISubprogram(name: "ei_end_p", scope: !318, file: !318, line: 721, type: !3784, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3786)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!640, !3091}
!3786 = !{!3787}
!3787 = !DILocalVariable(name: "i", arg: 1, scope: !3783, file: !318, line: 721, type: !3091)
!3788 = !DILocation(line: 723, column: 22, scope: !3783)
!3789 = !DILocation(line: 723, column: 19, scope: !3783)
!3790 = !DILocation(line: 723, column: 10, scope: !3783)
!3791 = !DILocation(line: 723, column: 3, scope: !3783)
!3792 = distinct !DISubprogram(name: "ei_edge", scope: !318, file: !318, line: 752, type: !3793, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3795)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!956, !3091}
!3795 = !{!3796}
!3796 = !DILocalVariable(name: "i", arg: 1, scope: !3792, file: !318, line: 752, type: !3091)
!3797 = !DILocation(line: 754, column: 10, scope: !3792)
!3798 = !DILocation(line: 754, column: 3, scope: !3792)
!3799 = distinct !DISubprogram(name: "ei_container", scope: !318, file: !318, line: 685, type: !3800, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3802)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!944, !3091}
!3802 = !{!3803}
!3803 = !DILocalVariable(name: "i", arg: 1, scope: !3799, file: !318, line: 685, type: !3091)
!3804 = !DILocation(line: 687, column: 3, scope: !3799)
!3805 = !DILocation(line: 688, column: 10, scope: !3799)
!3806 = !DILocation(line: 688, column: 3, scope: !3799)
!3807 = distinct !DISubprogram(name: "gimple_set_op", scope: !568, file: !568, line: 1663, type: !3808, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3810)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{null, !976, !7, !652}
!3810 = !{!3811, !3812, !3813}
!3811 = !DILocalVariable(name: "gs", arg: 1, scope: !3807, file: !568, line: 1663, type: !976)
!3812 = !DILocalVariable(name: "i", arg: 2, scope: !3807, file: !568, line: 1663, type: !7)
!3813 = !DILocalVariable(name: "op", arg: 3, scope: !3807, file: !568, line: 1663, type: !652)
!3814 = !DILocation(line: 0, scope: !3807)
!3815 = !DILocation(line: 1665, column: 3, scope: !3807)
!3816 = !DILocation(line: 1671, column: 3, scope: !3807)
!3817 = !DILocation(line: 1671, column: 22, scope: !3807)
!3818 = !DILocation(line: 1672, column: 1, scope: !3807)
!3819 = distinct !DISubprogram(name: "gimple_num_ops", scope: !568, file: !568, line: 1596, type: !3303, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3820)
!3820 = !{!3821}
!3821 = !DILocalVariable(name: "gs", arg: 1, scope: !3819, file: !568, line: 1596, type: !2863)
!3822 = !DILocation(line: 0, scope: !3819)
!3823 = !DILocation(line: 1598, column: 21, scope: !3819)
!3824 = !DILocation(line: 1598, column: 3, scope: !3819)
