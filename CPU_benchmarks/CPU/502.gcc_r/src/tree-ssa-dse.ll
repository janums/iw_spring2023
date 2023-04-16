; ModuleID = 'tree-ssa-dse.bc'
source_filename = "tree-ssa-dse.c"
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
%struct.dom_walk_data = type { i8, void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)*, void (%struct.dom_walk_data*, %struct.basic_block_def*)*, void (%struct.dom_walk_data*, %struct.basic_block_def*)*, i8*, %struct.VEC_void_p_heap*, i64, %struct.VEC_void_p_heap* }
%struct.VEC_void_p_heap = type { %struct.VEC_void_p_base }
%struct.VEC_void_p_base = type { i32, i32, [1 x i8*] }
%struct.dse_global_data = type { %struct.bitmap_head_def* }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.dse_block_local_data = type { %struct.bitmap_head_def* }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.immediate_use_iterator_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"dse\00", align 1
@pass_dse = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_dse, i32 ()* @tree_ssa_dse, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 79, i32 40, i32 0, i32 0, i32 0, i32 7 } }, align 8, !dbg !0
@flag_tree_dse = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"  Deleted dead store '\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1986 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1999, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2000, metadata !DIExpression()), !dbg !2001
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2002
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2003
  ret i32 %call, !dbg !2004
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2005 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2009
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2010
  ret i32 %call, !dbg !2011
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2012 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2067, metadata !DIExpression()), !dbg !2068
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2069
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2069
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2069
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2069
  %cmp = icmp uge i8* %0, %1, !dbg !2069
  %conv1 = zext i1 %cmp to i64, !dbg !2069
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2069
  %tobool = icmp eq i64 %expval, 0, !dbg !2069
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2069

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2069
  br label %cond.end, !dbg !2069

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2069
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2069
  %2 = load i8, i8* %0, align 1, !dbg !2069
  %conv3 = zext i8 %2 to i32, !dbg !2069
  br label %cond.end, !dbg !2069

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2069
  ret i32 %cond, !dbg !2070
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2071 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2073, metadata !DIExpression()), !dbg !2074
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2075
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2075
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2075
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2075
  %cmp = icmp uge i8* %0, %1, !dbg !2075
  %conv1 = zext i1 %cmp to i64, !dbg !2075
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2075
  %tobool = icmp eq i64 %expval, 0, !dbg !2075
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2075

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2075
  br label %cond.end, !dbg !2075

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2075
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2075
  %2 = load i8, i8* %0, align 1, !dbg !2075
  %conv3 = zext i8 %2 to i32, !dbg !2075
  br label %cond.end, !dbg !2075

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2075
  ret i32 %cond, !dbg !2076
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2077 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2078
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2078
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2078
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2078
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2078
  %cmp = icmp uge i8* %1, %2, !dbg !2078
  %conv1 = zext i1 %cmp to i64, !dbg !2078
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2078
  %tobool = icmp eq i64 %expval, 0, !dbg !2078
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2078

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2078
  br label %cond.end, !dbg !2078

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2078
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2078
  %3 = load i8, i8* %1, align 1, !dbg !2078
  %conv3 = zext i8 %3 to i32, !dbg !2078
  br label %cond.end, !dbg !2078

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2078
  ret i32 %cond, !dbg !2079
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2080 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2084, metadata !DIExpression()), !dbg !2085
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2086
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2087
  ret i32 %call, !dbg !2088
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2089 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2093, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2094, metadata !DIExpression()), !dbg !2095
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2096
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2096
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2096
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2096
  %cmp = icmp uge i8* %0, %1, !dbg !2096
  %conv1 = zext i1 %cmp to i64, !dbg !2096
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2096
  %tobool = icmp eq i64 %expval, 0, !dbg !2096
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2096

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2096
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2096
  br label %cond.end, !dbg !2096

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2096
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2096
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2096
  store i8 %conv2, i8* %0, align 1, !dbg !2096
  %conv6 = and i32 %__c, 255, !dbg !2096
  br label %cond.end, !dbg !2096

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2096
  ret i32 %cond, !dbg !2097
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2098 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2100, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2101, metadata !DIExpression()), !dbg !2102
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2103
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2103
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2103
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2103
  %cmp = icmp uge i8* %0, %1, !dbg !2103
  %conv1 = zext i1 %cmp to i64, !dbg !2103
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2103
  %tobool = icmp eq i64 %expval, 0, !dbg !2103
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2103

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2103
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2103
  br label %cond.end, !dbg !2103

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2103
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2103
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2103
  store i8 %conv2, i8* %0, align 1, !dbg !2103
  %conv6 = and i32 %__c, 255, !dbg !2103
  br label %cond.end, !dbg !2103

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2103
  ret i32 %cond, !dbg !2104
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2105 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2107, metadata !DIExpression()), !dbg !2108
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2109
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2109
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2109
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2109
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2109
  %cmp = icmp uge i8* %1, %2, !dbg !2109
  %conv1 = zext i1 %cmp to i64, !dbg !2109
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2109
  %tobool = icmp eq i64 %expval, 0, !dbg !2109
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2109

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2109
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2109
  br label %cond.end, !dbg !2109

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2109
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2109
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2109
  store i8 %conv4, i8* %1, align 1, !dbg !2109
  %conv6 = and i32 %__c, 255, !dbg !2109
  br label %cond.end, !dbg !2109

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2109
  ret i32 %cond, !dbg !2110
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2111 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2117, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2118, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2119, metadata !DIExpression()), !dbg !2120
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2121
  ret i64 %call, !dbg !2122
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2123 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2125, metadata !DIExpression()), !dbg !2126
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2127
  %0 = load i32, i32* %_flags, align 8, !dbg !2127
  %and = lshr i32 %0, 4, !dbg !2127
  %and.lobit = and i32 %and, 1, !dbg !2127
  ret i32 %and.lobit, !dbg !2128
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2129 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2131, metadata !DIExpression()), !dbg !2132
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2133
  %0 = load i32, i32* %_flags, align 8, !dbg !2133
  %and = lshr i32 %0, 5, !dbg !2133
  %and.lobit = and i32 %and, 1, !dbg !2133
  ret i32 %and.lobit, !dbg !2134
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2135 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2138, metadata !DIExpression()), !dbg !2139
  %__c.off = add i32 %__c, 128, !dbg !2140
  %0 = icmp ult i32 %__c.off, 384, !dbg !2140
  br i1 %0, label %cond.true, label %cond.end, !dbg !2140

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2141
  %1 = load i32*, i32** %call, align 8, !dbg !2142
  %idxprom = sext i32 %__c to i64, !dbg !2143
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2143
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2143
  br label %cond.end, !dbg !2144

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2144
  ret i32 %cond, !dbg !2145
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2146 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2148, metadata !DIExpression()), !dbg !2149
  %__c.off = add i32 %__c, 128, !dbg !2150
  %0 = icmp ult i32 %__c.off, 384, !dbg !2150
  br i1 %0, label %cond.true, label %cond.end, !dbg !2150

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2151
  %1 = load i32*, i32** %call, align 8, !dbg !2152
  %idxprom = sext i32 %__c to i64, !dbg !2153
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2153
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2153
  br label %cond.end, !dbg !2154

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2154
  ret i32 %cond, !dbg !2155
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2156 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2161, metadata !DIExpression()), !dbg !2162
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2163
  %conv = trunc i64 %call to i32, !dbg !2164
  ret i32 %conv, !dbg !2165
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2166 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2170, metadata !DIExpression()), !dbg !2171
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2172
  ret i64 %call, !dbg !2173
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2174 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2179, metadata !DIExpression()), !dbg !2180
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2181
  ret i64 %call, !dbg !2182
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2183 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2189, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2190, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2191, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2192, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2193, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 0, metadata !2194, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2195, metadata !DIExpression()), !dbg !2199
  br label %while.cond, !dbg !2200

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2201
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2199
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2195, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2194, metadata !DIExpression()), !dbg !2199
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2202
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2200

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2203
  %div = lshr i64 %add, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %div, metadata !2196, metadata !DIExpression()), !dbg !2199
  %mul = mul i64 %div, %__size, !dbg !2206
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2207
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2197, metadata !DIExpression()), !dbg !2199
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2208
  call void @llvm.dbg.value(metadata i32 %call, metadata !2198, metadata !DIExpression()), !dbg !2199
  %cmp1 = icmp slt i32 %call, 0, !dbg !2209
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2211

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2212
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2214

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2194, metadata !DIExpression()), !dbg !2199
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2199
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2199
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2195, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2194, metadata !DIExpression()), !dbg !2199
  br label %while.cond, !dbg !2200, !llvm.loop !2216

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2199
  ret i8* %retval.0, !dbg !2218
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2219 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2225, metadata !DIExpression()), !dbg !2226
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2227
  ret double %call, !dbg !2228
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2229 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2238, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2239, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i32 %base, metadata !2240, metadata !DIExpression()), !dbg !2241
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2242
  ret i64 %call, !dbg !2243
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2244 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2250, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2251, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i32 %base, metadata !2252, metadata !DIExpression()), !dbg !2253
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2254
  ret i64 %call, !dbg !2255
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2256 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2267, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2268, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i32 %base, metadata !2269, metadata !DIExpression()), !dbg !2270
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2271
  ret i64 %call, !dbg !2272
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2273 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2277, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2278, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 %base, metadata !2279, metadata !DIExpression()), !dbg !2280
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2281
  ret i64 %call, !dbg !2282
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2283 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2323, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2324, metadata !DIExpression()), !dbg !2325
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2326
  ret i32 %call, !dbg !2327
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2328 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2330, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2331, metadata !DIExpression()), !dbg !2332
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2333
  ret i32 %call, !dbg !2334
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2335 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2340, metadata !DIExpression()), !dbg !2341
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2342
  ret i32 %call, !dbg !2343
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2344 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2348, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2349, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2350, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2351, metadata !DIExpression()), !dbg !2352
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2353
  ret i32 %call, !dbg !2354
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2355 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2359, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2360, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2361, metadata !DIExpression()), !dbg !2362
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2361, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2363
  ret i32 %call, !dbg !2364
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2365 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2369, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2370, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2371, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2372, metadata !DIExpression()), !dbg !2373
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2372, metadata !DIExpression(DW_OP_deref)), !dbg !2373
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2374
  ret i32 %call, !dbg !2375
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2376 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2400, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2401, metadata !DIExpression()), !dbg !2402
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2403
  ret i32 %call, !dbg !2404
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2405 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2407, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2408, metadata !DIExpression()), !dbg !2409
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2410
  ret i32 %call, !dbg !2411
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2412 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2416, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2417, metadata !DIExpression()), !dbg !2418
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2419
  ret i32 %call, !dbg !2420
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2421 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2425, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2426, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2428, metadata !DIExpression()), !dbg !2429
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2430
  ret i32 %call, !dbg !2431
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_dse() #5 !dbg !2432 {
entry:
  %0 = load i32, i32* @flag_tree_dse, align 4, !dbg !2433
  %cmp = icmp ne i32 %0, 0, !dbg !2434
  %conv1 = zext i1 %cmp to i8, !dbg !2433
  ret i8 %conv1, !dbg !2435
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_dse() #5 !dbg !2436 {
entry:
  %walk_data = alloca %struct.dom_walk_data, align 8
  %dse_gd = alloca %struct.dse_global_data, align 8
  %0 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 0, !dbg !2471
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7, !dbg !2471
  %1 = bitcast %struct.dse_global_data* %dse_gd to i8*, !dbg !2472
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2472
  tail call void @renumber_gimple_stmt_uids() #6, !dbg !2473
  tail call void @calculate_dominance_info(i32 2) #6, !dbg !2474
  tail call void @calculate_dominance_info(i32 1) #6, !dbg !2475
  store i8 2, i8* %0, align 8, !dbg !2476
  %initialize_block_local_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 1, !dbg !2477
  store void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)* @dse_initialize_block_local_data, void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)** %initialize_block_local_data, align 8, !dbg !2478
  %before_dom_children = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 2, !dbg !2479
  store void (%struct.dom_walk_data*, %struct.basic_block_def*)* @dse_enter_block, void (%struct.dom_walk_data*, %struct.basic_block_def*)** %before_dom_children, align 8, !dbg !2480
  %after_dom_children = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 3, !dbg !2481
  store void (%struct.dom_walk_data*, %struct.basic_block_def*)* @dse_leave_block, void (%struct.dom_walk_data*, %struct.basic_block_def*)** %after_dom_children, align 8, !dbg !2482
  %block_local_data_size = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 6, !dbg !2483
  store i64 8, i64* %block_local_data_size, align 8, !dbg !2484
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2485
  %stores = getelementptr inbounds %struct.dse_global_data, %struct.dse_global_data* %dse_gd, i64 0, i32 0, !dbg !2486
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** %stores, align 8, !dbg !2487
  %global_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 4, !dbg !2488
  %2 = bitcast i8** %global_data to %struct.dse_global_data**, !dbg !2489
  store %struct.dse_global_data* %dse_gd, %struct.dse_global_data** %2, align 8, !dbg !2489
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2438, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  call void @init_walk_dominator_tree(%struct.dom_walk_data* nonnull %walk_data) #6, !dbg !2491
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2492
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !2492
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2492
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !2492
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2492
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2438, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  call void @walk_dominator_tree(%struct.dom_walk_data* nonnull %walk_data, %struct.basic_block_def* %5) #6, !dbg !2493
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2438, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  call void @fini_walk_dominator_tree(%struct.dom_walk_data* nonnull %walk_data) #6, !dbg !2494
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %stores, align 8, !dbg !2495
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %6) #6, !dbg !2495
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %stores, align 8, !dbg !2495
  call void @free_dominance_info(i32 2) #6, !dbg !2496
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2497
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7, !dbg !2497
  ret i32 0, !dbg !2498
}

declare dso_local void @renumber_gimple_stmt_uids() local_unnamed_addr #2

declare dso_local void @calculate_dominance_info(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @dse_initialize_block_local_data(%struct.dom_walk_data* %walk_data, %struct.basic_block_def* %bb, i8 zeroext %recycled) #5 !dbg !2499 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2501, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2502, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 %recycled, metadata !2503, metadata !DIExpression()), !dbg !2505
  %block_data_stack = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 5, !dbg !2506
  %0 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** %block_data_stack, align 8, !dbg !2506
  %tobool = icmp eq %struct.VEC_void_p_heap* %0, null, !dbg !2506
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2506

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %0, i64 0, i32 0, !dbg !2506
  br label %cond.end, !dbg !2506

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_void_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2506
  %call = tail call fastcc i8* @VEC_void_p_base_last(%struct.VEC_void_p_base* %cond) #8, !dbg !2506
  call void @llvm.dbg.value(metadata i8* %call, metadata !2504, metadata !DIExpression()), !dbg !2505
  %tobool2 = icmp eq i8 %recycled, 0, !dbg !2507
  br i1 %tobool2, label %if.end6, label %if.then, !dbg !2509

if.then:                                          ; preds = %cond.end
  %stores = bitcast i8* %call to %struct.bitmap_head_def**, !dbg !2510
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %stores, align 8, !dbg !2510
  %tobool3 = icmp eq %struct.bitmap_head_def* %1, null, !dbg !2513
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !2514

if.then4:                                         ; preds = %if.then
  tail call void @bitmap_clear(%struct.bitmap_head_def* nonnull %1) #6, !dbg !2515
  br label %if.end6, !dbg !2515

if.end6:                                          ; preds = %if.then, %cond.end, %if.then4
  ret void, !dbg !2516
}

; Function Attrs: nounwind uwtable
define internal void @dse_enter_block(%struct.dom_walk_data* %walk_data, %struct.basic_block_def* %bb) #5 !dbg !2517 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2519, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2520, metadata !DIExpression()), !dbg !2530
  %block_data_stack = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 5, !dbg !2531
  %0 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** %block_data_stack, align 8, !dbg !2531
  %tobool = icmp eq %struct.VEC_void_p_heap* %0, null, !dbg !2531
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2531

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %0, i64 0, i32 0, !dbg !2531
  br label %cond.end, !dbg !2531

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_void_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2531
  %call = tail call fastcc i8* @VEC_void_p_base_last(%struct.VEC_void_p_base* %cond) #8, !dbg !2531
  %1 = bitcast i8* %call to %struct.dse_block_local_data*, !dbg !2532
  call void @llvm.dbg.value(metadata %struct.dse_block_local_data* %1, metadata !2521, metadata !DIExpression()), !dbg !2530
  %global_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 4, !dbg !2533
  %2 = bitcast i8** %global_data to %struct.dse_global_data**, !dbg !2533
  %3 = load %struct.dse_global_data*, %struct.dse_global_data** %2, align 8, !dbg !2533
  call void @llvm.dbg.value(metadata %struct.dse_global_data* %3, metadata !2522, metadata !DIExpression()), !dbg !2530
  %4 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2534
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2534
  %5 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2535
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !2535
  %call2 = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !2537
  call fastcc void @gsi_last(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.gimple_seq_d* %call2) #8, !dbg !2535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !2535
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !2535
  br label %for.cond, !dbg !2538

for.cond:                                         ; preds = %for.body, %cond.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2523, metadata !DIExpression(DW_OP_deref)), !dbg !2530
  %call3 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2539
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2541
  br i1 %tobool4, label %for.body, label %for.end, !dbg !2542

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2523, metadata !DIExpression(DW_OP_deref)), !dbg !2530
  call fastcc void @dse_optimize_stmt(%struct.dse_global_data* %3, %struct.dse_block_local_data* %1, %struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2543
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2523, metadata !DIExpression(DW_OP_deref)), !dbg !2530
  call fastcc void @gsi_prev(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2544
  br label %for.cond, !dbg !2545, !llvm.loop !2546

for.end:                                          ; preds = %for.cond
  %6 = bitcast %struct.gimple_stmt_iterator* %tmp5 to i8*, !dbg !2548
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7, !dbg !2548
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp5, %struct.basic_block_def* %bb) #6, !dbg !2548
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !2548
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7, !dbg !2548
  br label %for.cond6, !dbg !2550

for.cond6:                                        ; preds = %for.body10, %for.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2523, metadata !DIExpression(DW_OP_deref)), !dbg !2530
  %call7 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2551
  %tobool8 = icmp eq i8 %call7, 0, !dbg !2553
  br i1 %tobool8, label %for.body10, label %for.end13, !dbg !2554

for.body10:                                       ; preds = %for.cond6
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2523, metadata !DIExpression(DW_OP_deref)), !dbg !2530
  %call11 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2555
  call fastcc void @dse_record_phi(%struct.dse_global_data* %3, %struct.dse_block_local_data* %1, %union.gimple_statement_d* %call11) #8, !dbg !2556
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2523, metadata !DIExpression(DW_OP_deref)), !dbg !2530
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2557
  br label %for.cond6, !dbg !2558, !llvm.loop !2559

for.end13:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2561
  ret void, !dbg !2561
}

; Function Attrs: nounwind uwtable
define internal void @dse_leave_block(%struct.dom_walk_data* %walk_data, %struct.basic_block_def* %bb) #5 !dbg !2562 {
entry:
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2564, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2565, metadata !DIExpression()), !dbg !2578
  %block_data_stack = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 5, !dbg !2579
  %0 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** %block_data_stack, align 8, !dbg !2579
  %tobool = icmp eq %struct.VEC_void_p_heap* %0, null, !dbg !2579
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2579

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %0, i64 0, i32 0, !dbg !2579
  br label %cond.end, !dbg !2579

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_void_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2579
  %call = tail call fastcc i8* @VEC_void_p_base_last(%struct.VEC_void_p_base* %cond) #8, !dbg !2579
  call void @llvm.dbg.value(metadata i8* %call, metadata !2566, metadata !DIExpression()), !dbg !2578
  %global_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 4, !dbg !2580
  %1 = bitcast i8** %global_data to %struct.dse_global_data**, !dbg !2580
  %2 = load %struct.dse_global_data*, %struct.dse_global_data** %1, align 8, !dbg !2580
  call void @llvm.dbg.value(metadata %struct.dse_global_data* %2, metadata !2567, metadata !DIExpression()), !dbg !2578
  %stores2 = getelementptr inbounds %struct.dse_global_data, %struct.dse_global_data* %2, i64 0, i32 0, !dbg !2581
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %stores2, align 8, !dbg !2581
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %3, metadata !2568, metadata !DIExpression()), !dbg !2578
  %4 = bitcast i32* %i to i8*, !dbg !2582
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !2582
  %5 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2583
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7, !dbg !2583
  %stores3 = bitcast i8* %call to %struct.bitmap_head_def**, !dbg !2584
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %stores3, align 8, !dbg !2584
  %tobool4 = icmp eq %struct.bitmap_head_def* %6, null, !dbg !2586
  br i1 %tobool4, label %if.end, label %if.then, !dbg !2587

if.then:                                          ; preds = %cond.end
  call void @llvm.dbg.value(metadata i8* %call, metadata !2566, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i32* %i, metadata !2569, metadata !DIExpression(DW_OP_deref)), !dbg !2578
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2570, metadata !DIExpression(DW_OP_deref)), !dbg !2578
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %6, i32 0, i32* nonnull %i) #8, !dbg !2588
  br label %for.cond, !dbg !2588

for.cond:                                         ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata i32* %i, metadata !2569, metadata !DIExpression(DW_OP_deref)), !dbg !2578
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2570, metadata !DIExpression(DW_OP_deref)), !dbg !2578
  %call6 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !2590
  %tobool7 = icmp eq i8 %call6, 0, !dbg !2588
  br i1 %tobool7, label %if.end.loopexit, label %for.body, !dbg !2588

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !2592
  call void @llvm.dbg.value(metadata i32 %7, metadata !2569, metadata !DIExpression()), !dbg !2578
  %call8 = call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %3, i32 %7) #6, !dbg !2594
  call void @llvm.dbg.value(metadata i32* %i, metadata !2569, metadata !DIExpression(DW_OP_deref)), !dbg !2578
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2570, metadata !DIExpression(DW_OP_deref)), !dbg !2578
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !2590
  br label %for.cond, !dbg !2590, !llvm.loop !2595

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !2597

if.end:                                           ; preds = %if.end.loopexit, %cond.end
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7, !dbg !2597
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !2597
  ret void, !dbg !2597
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local void @init_walk_dominator_tree(%struct.dom_walk_data*) local_unnamed_addr #2

declare dso_local void @walk_dominator_tree(%struct.dom_walk_data*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @fini_walk_dominator_tree(%struct.dom_walk_data*) local_unnamed_addr #2

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @VEC_void_p_base_last(%struct.VEC_void_p_base* %vec_) unnamed_addr #0 !dbg !2598 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_base* %vec_, metadata !2604, metadata !DIExpression()), !dbg !2605
  br label %land.end, !dbg !2606

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %num2 = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 0, !dbg !2606
  %0 = load i32, i32* %num2, align 8, !dbg !2606
  %sub = add i32 %0, -1, !dbg !2606
  %idxprom = zext i32 %sub to i64, !dbg !2606
  %arrayidx = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2606
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !2606
  ret i8* %1, !dbg !2606
}

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !2607 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !2611, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2612, metadata !DIExpression()), !dbg !2614
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %seq) #8, !dbg !2615
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2616
  store %struct.gimple_seq_node_d* %call, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2617
  %seq1 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2618
  store %struct.gimple_seq_d* %seq, %struct.gimple_seq_d** %seq1, align 8, !dbg !2619
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !2620
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !2621

land.lhs.true:                                    ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !2622
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2622
  %tobool4 = icmp eq %union.gimple_statement_d* %0, null, !dbg !2623
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !2624

cond.true:                                        ; preds = %land.lhs.true
  %call7 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* nonnull %0) #8, !dbg !2625
  br label %cond.end, !dbg !2624

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.basic_block_def* [ %call7, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !2624
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2626
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %bb, align 8, !dbg !2627
  ret void, !dbg !2628
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2629 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2636, metadata !DIExpression()), !dbg !2637
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2638
  %0 = load i32, i32* %flags, align 8, !dbg !2638
  %and = and i32 %0, 512, !dbg !2639
  %tobool = icmp eq i32 %and, 0, !dbg !2639
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !2640

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !2641
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !2641
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !2642
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !2643

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !2644
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !2644
  br label %cond.end, !dbg !2643

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !2643
  ret %struct.gimple_seq_d* %cond, !dbg !2645
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2646 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2650, metadata !DIExpression()), !dbg !2651
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2652
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2652
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2653
  %conv1 = zext i1 %cmp to i8, !dbg !2654
  ret i8 %conv1, !dbg !2655
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dse_optimize_stmt(%struct.dse_global_data* %dse_gd, %struct.dse_block_local_data* %bd, %struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) unnamed_addr #5 !dbg !2656 {
entry:
  %use_stmt = alloca %union.gimple_statement_d*, align 8
  call void @llvm.dbg.value(metadata %struct.dse_global_data* %dse_gd, metadata !2660, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata %struct.dse_block_local_data* %bd, metadata !2661, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2662, metadata !DIExpression()), !dbg !2668
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2669
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2663, metadata !DIExpression()), !dbg !2667
  %call1 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %call) #8, !dbg !2670
  %tobool = icmp eq %union.tree_node* %call1, null, !dbg !2670
  br i1 %tobool, label %cleanup.cont64, label %if.end, !dbg !2672

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call) #8, !dbg !2673
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2673
  br i1 %tobool3, label %if.end7, label %land.lhs.true, !dbg !2675

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call) #8, !dbg !2676
  %tobool5 = icmp eq %union.tree_node* %call4, null, !dbg !2676
  br i1 %tobool5, label %if.end7, label %cleanup.cont64, !dbg !2677

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %call8 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %call) #8, !dbg !2678
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2678
  br i1 %tobool9, label %if.end11, label %cleanup.cont64, !dbg !2680

if.end11:                                         ; preds = %if.end7
  %call12 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call) #8, !dbg !2681
  %tobool13 = icmp eq i8 %call12, 0, !dbg !2681
  br i1 %tobool13, label %cleanup.cont64, label %if.then14, !dbg !2682

if.then14:                                        ; preds = %if.end11
  %0 = bitcast %union.gimple_statement_d** %use_stmt to i8*, !dbg !2683
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2683
  %stores = getelementptr inbounds %struct.dse_global_data, %struct.dse_global_data* %dse_gd, i64 0, i32 0, !dbg !2684
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %stores, align 8, !dbg !2684
  %stores15 = getelementptr inbounds %struct.dse_block_local_data, %struct.dse_block_local_data* %bd, i64 0, i32 0, !dbg !2685
  %call16 = tail call fastcc i32 @gimple_uid(%union.gimple_statement_d* %call) #8, !dbg !2686
  tail call fastcc void @record_voperand_set(%struct.bitmap_head_def* %1, %struct.bitmap_head_def** %stores15, i32 %call16) #8, !dbg !2687
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %use_stmt, metadata !2664, metadata !DIExpression(DW_OP_deref)), !dbg !2688
  %call17 = call fastcc zeroext i8 @dse_possible_dead_store_p(%union.gimple_statement_d* %call, %union.gimple_statement_d** nonnull %use_stmt) #8, !dbg !2689
  %tobool18 = icmp eq i8 %call17, 0, !dbg !2689
  br i1 %tobool18, label %cleanup, label %if.end20, !dbg !2691

if.end20:                                         ; preds = %if.then14
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %stores, align 8, !dbg !2692
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2694
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %3, metadata !2664, metadata !DIExpression()), !dbg !2688
  %call22 = call fastcc i32 @get_stmt_uid(%union.gimple_statement_d* %3) #8, !dbg !2695
  %call23 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %2, i32 %call22) #6, !dbg !2696
  %tobool24 = icmp eq i32 %call23, 0, !dbg !2696
  br i1 %tobool24, label %cleanup, label %land.lhs.true25, !dbg !2697

land.lhs.true25:                                  ; preds = %if.end20
  %call26 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call) #8, !dbg !2698
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2699
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %4, metadata !2664, metadata !DIExpression()), !dbg !2688
  %call27 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %4) #8, !dbg !2700
  %call28 = call i32 @operand_equal_p(%union.tree_node* %call26, %union.tree_node* %call27, i32 0) #6, !dbg !2701
  %tobool29 = icmp eq i32 %call28, 0, !dbg !2701
  br i1 %tobool29, label %cleanup, label %if.then30, !dbg !2702

if.then30:                                        ; preds = %land.lhs.true25
  %5 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2703
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %5, metadata !2664, metadata !DIExpression()), !dbg !2688
  %cmp = icmp eq %union.gimple_statement_d* %call, %5, !dbg !2706
  br i1 %cmp, label %if.end51, label %land.lhs.true32, !dbg !2707

land.lhs.true32:                                  ; preds = %if.then30
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %5, metadata !2664, metadata !DIExpression()), !dbg !2688
  %call33 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %5) #8, !dbg !2708
  %call34 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call33) #6, !dbg !2709
  %tobool35 = icmp eq i8 %call34, 0, !dbg !2709
  br i1 %tobool35, label %land.lhs.true36, label %if.end51, !dbg !2710

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2711
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %6, metadata !2664, metadata !DIExpression()), !dbg !2688
  %call37 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %6) #8, !dbg !2712
  %call38 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call37) #6, !dbg !2713
  %tobool39 = icmp eq i8 %call38, 0, !dbg !2713
  br i1 %tobool39, label %land.lhs.true40, label %if.end51, !dbg !2714

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %7 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2715
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %7, metadata !2664, metadata !DIExpression()), !dbg !2688
  %call41 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %7) #8, !dbg !2716
  %cmp42 = icmp eq i32 %call41, 51, !dbg !2717
  br i1 %cmp42, label %if.end51, label %land.lhs.true44, !dbg !2718

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %8 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2719
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %8, metadata !2664, metadata !DIExpression()), !dbg !2688
  %call45 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %8) #8, !dbg !2720
  %9 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2721
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %9, metadata !2664, metadata !DIExpression()), !dbg !2688
  %call46 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %9) #8, !dbg !2722
  %call47 = call zeroext i8 @refs_may_alias_p(%union.tree_node* %call45, %union.tree_node* %call46) #6, !dbg !2723
  %tobool49 = icmp eq i8 %call47, 0, !dbg !2723
  br i1 %tobool49, label %if.end51, label %cleanup, !dbg !2724

if.end51:                                         ; preds = %land.lhs.true44, %land.lhs.true40, %land.lhs.true36, %land.lhs.true32, %if.then30
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2725
  %tobool52 = icmp eq %struct._IO_FILE* %10, null, !dbg !2725
  br i1 %tobool52, label %if.end59, label %land.lhs.true53, !dbg !2727

land.lhs.true53:                                  ; preds = %if.end51
  %11 = load i32, i32* @dump_flags, align 4, !dbg !2728
  %and = and i32 %11, 8, !dbg !2729
  %tobool54 = icmp eq i32 %and, 0, !dbg !2729
  br i1 %tobool54, label %if.end59, label %if.then55, !dbg !2730

if.then55:                                        ; preds = %land.lhs.true53
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2731
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2733
  %call57 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2734
  %13 = load i32, i32* @dump_flags, align 4, !dbg !2735
  call void @print_gimple_stmt(%struct._IO_FILE* %12, %union.gimple_statement_d* %call57, i32 %13, i32 0) #6, !dbg !2736
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2737
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2738
  br label %if.end59, !dbg !2739

if.end59:                                         ; preds = %land.lhs.true53, %if.end51, %if.then55
  call void @unlink_stmt_vdef(%union.gimple_statement_d* %call) #6, !dbg !2740
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !2741
  call void @release_defs(%union.gimple_statement_d* %call) #6, !dbg !2742
  br label %cleanup, !dbg !2743

cleanup:                                          ; preds = %land.lhs.true44, %land.lhs.true25, %if.end20, %if.then14, %if.end59
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2744
  ret void

cleanup.cont64:                                   ; preds = %land.lhs.true, %if.end11, %if.end7, %entry
  ret void, !dbg !2745
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_prev(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2746 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2751, metadata !DIExpression()), !dbg !2752
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2753
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2753
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 1, !dbg !2754
  %1 = bitcast %struct.gimple_seq_node_d** %prev to i64*, !dbg !2754
  %2 = load i64, i64* %1, align 8, !dbg !2754
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2755
  store i64 %2, i64* %3, align 8, !dbg !2755
  ret void, !dbg !2756
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @dse_record_phi(%struct.dse_global_data* %dse_gd, %struct.dse_block_local_data* %bd, %union.gimple_statement_d* %phi) unnamed_addr #5 !dbg !2757 {
entry:
  call void @llvm.dbg.value(metadata %struct.dse_global_data* %dse_gd, metadata !2761, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata %struct.dse_block_local_data* %bd, metadata !2762, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !2763, metadata !DIExpression()), !dbg !2764
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #8, !dbg !2765
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !2767
  %tobool = icmp eq i8 %call1, 0, !dbg !2767
  br i1 %tobool, label %if.then, label %if.end, !dbg !2768

if.then:                                          ; preds = %entry
  %stores = getelementptr inbounds %struct.dse_global_data, %struct.dse_global_data* %dse_gd, i64 0, i32 0, !dbg !2769
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %stores, align 8, !dbg !2769
  %stores2 = getelementptr inbounds %struct.dse_block_local_data, %struct.dse_block_local_data* %bd, i64 0, i32 0, !dbg !2770
  %call3 = tail call fastcc i32 @get_stmt_uid(%union.gimple_statement_d* %phi) #8, !dbg !2771
  tail call fastcc void @record_voperand_set(%struct.bitmap_head_def* %0, %struct.bitmap_head_def** %stores2, i32 %call3) #8, !dbg !2772
  br label %if.end, !dbg !2772

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2773
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2774 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2778, metadata !DIExpression()), !dbg !2779
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2780
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2780
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2781
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2781
  ret %union.gimple_statement_d* %1, !dbg !2782
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2783 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2785, metadata !DIExpression()), !dbg !2786
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2787
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2787
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2788
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2788
  %2 = load i64, i64* %1, align 8, !dbg !2788
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2789
  store i64 %2, i64* %3, align 8, !dbg !2789
  ret void, !dbg !2790
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !2791 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !2798, metadata !DIExpression()), !dbg !2799
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !2800
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2800

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !2801
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !2801
  br label %cond.end, !dbg !2800

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !2800
  ret %struct.gimple_seq_node_d* %cond, !dbg !2802
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2803 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2808, metadata !DIExpression()), !dbg !2809
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !2810
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2810
  ret %struct.basic_block_def* %0, !dbg !2811
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2812 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2816, metadata !DIExpression()), !dbg !2817
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !2818
  %tobool = icmp eq i8 %call, 0, !dbg !2818
  br i1 %tobool, label %return, label %if.end, !dbg !2820

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !2821
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !2821
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2821
  br label %return, !dbg !2822

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !2817
  ret %union.tree_node* %retval.0, !dbg !2823
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2824 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2828, metadata !DIExpression()), !dbg !2829
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !2830
  %cmp = icmp eq i32 %call, 8, !dbg !2831
  %conv1 = zext i1 %cmp to i8, !dbg !2830
  ret i8 %conv1, !dbg !2832
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2833 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2835, metadata !DIExpression()), !dbg !2837
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #8, !dbg !2838
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2836, metadata !DIExpression()), !dbg !2837
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2839
  %bf.load = load i64, i64* %0, align 8, !dbg !2839
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2841
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !2841
  br i1 %cmp, label %if.then, label %cleanup, !dbg !2842

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2843
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2843
  br label %cleanup, !dbg !2844

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !2837
  ret %union.tree_node* %retval.0, !dbg !2845
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2846 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2848, metadata !DIExpression()), !dbg !2849
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %stmt) #8, !dbg !2850
  %tobool = icmp eq i8 %call, 0, !dbg !2850
  br i1 %tobool, label %return, label %if.then, !dbg !2852

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !2853
  %bf.load = load i32, i32* %0, align 8, !dbg !2853
  %bf.lshr = lshr i32 %bf.load, 14, !dbg !2853
  %1 = trunc i32 %bf.lshr to i8, !dbg !2854
  %conv = and i8 %1, 1, !dbg !2854
  br label %return, !dbg !2855

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8 [ %conv, %if.then ], [ 0, %entry ], !dbg !2856
  ret i8 %retval.0, !dbg !2857
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2858 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2860, metadata !DIExpression()), !dbg !2861
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !2862
  %cmp = icmp eq i32 %call, 6, !dbg !2863
  %conv1 = zext i1 %cmp to i8, !dbg !2862
  ret i8 %conv1, !dbg !2864
}

; Function Attrs: nounwind uwtable
define internal fastcc void @record_voperand_set(%struct.bitmap_head_def* %global, %struct.bitmap_head_def** %local, i32 %uid) unnamed_addr #5 !dbg !2865 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %global, metadata !2870, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %local, metadata !2871, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i32 %uid, metadata !2872, metadata !DIExpression()), !dbg !2873
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local, align 8, !dbg !2874
  %cmp = icmp eq %struct.bitmap_head_def* %0, null, !dbg !2876
  br i1 %cmp, label %if.then, label %if.end, !dbg !2877

if.then:                                          ; preds = %entry
  %call = tail call %struct.bitmap_head_def* @bitmap_gc_alloc_stat() #6, !dbg !2878
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** %local, align 8, !dbg !2879
  br label %if.end, !dbg !2880

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.bitmap_head_def* [ %call, %if.then ], [ %0, %entry ], !dbg !2881
  %call1 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %1, i32 %uid) #6, !dbg !2882
  %call2 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %global, i32 %uid) #6, !dbg !2883
  ret void, !dbg !2884
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_uid(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2885 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2889, metadata !DIExpression()), !dbg !2890
  %uid = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 1, !dbg !2891
  %0 = load i32, i32* %uid, align 4, !dbg !2891
  ret i32 %0, !dbg !2892
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @dse_possible_dead_store_p(%union.gimple_statement_d* %stmt, %union.gimple_statement_d** %use_stmt) unnamed_addr #5 !dbg !2893 {
entry:
  %ui = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2898, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %use_stmt, metadata !2899, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 0, metadata !2901, metadata !DIExpression()), !dbg !2914
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2915
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2900, metadata !DIExpression()), !dbg !2914
  %0 = bitcast %struct.immediate_use_iterator_d* %ui to i8*, !dbg !2916
  br label %do.body, !dbg !2917

do.body:                                          ; preds = %do.cond, %entry
  %cnt.0 = phi i32 [ 0, %entry ], [ %cnt.3, %do.cond ], !dbg !2914
  %temp.0 = phi %union.gimple_statement_d* [ %stmt, %entry ], [ %temp.4, %do.cond ], !dbg !2918
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.0, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 %cnt.0, metadata !2901, metadata !DIExpression()), !dbg !2914
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #7, !dbg !2919
  call void @llvm.dbg.value(metadata i8 0, metadata !2912, metadata !DIExpression()), !dbg !2916
  %inc = add i32 %cnt.0, 1, !dbg !2920
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2901, metadata !DIExpression()), !dbg !2914
  %cmp = icmp ugt i32 %inc, 256, !dbg !2922
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2923

if.end:                                           ; preds = %do.body
  %call = call fastcc i32 @gimple_code(%union.gimple_statement_d* %temp.0) #8, !dbg !2924
  %cmp2 = icmp eq i32 %call, 16, !dbg !2926
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !2927

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %temp.0) #8, !dbg !2928
  %call5 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call4) #8, !dbg !2928
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !2913, metadata !DIExpression()), !dbg !2916
  br label %if.end7, !dbg !2929

if.else:                                          ; preds = %if.end
  %call6 = call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %temp.0) #8, !dbg !2930
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !2913, metadata !DIExpression()), !dbg !2916
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %defvar.0 = phi %union.tree_node* [ %call5, %if.then3 ], [ %call6, %if.else ], !dbg !2931
  call void @llvm.dbg.value(metadata %union.tree_node* %defvar.0, metadata !2913, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !2904, metadata !DIExpression(DW_OP_deref)), !dbg !2916
  %call8 = call fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %ui, %union.tree_node* %defvar.0) #8, !dbg !2932
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call8, metadata !2902, metadata !DIExpression()), !dbg !2916
  br label %for.cond, !dbg !2932

for.cond:                                         ; preds = %for.inc, %if.end7
  %use_stmt1.0 = phi %union.gimple_statement_d* [ %call8, %if.end7 ], [ %call49, %for.inc ], !dbg !2934
  %cnt.1 = phi i32 [ %inc, %if.end7 ], [ %inc10, %for.inc ], !dbg !2916
  %temp.1 = phi %union.gimple_statement_d* [ null, %if.end7 ], [ %temp.3, %for.inc ], !dbg !2916
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 %cnt.1, metadata !2901, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %use_stmt1.0, metadata !2902, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !2904, metadata !DIExpression(DW_OP_deref)), !dbg !2916
  %call9 = call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* nonnull %ui) #8, !dbg !2935
  %tobool = icmp eq i8 %call9, 0, !dbg !2935
  br i1 %tobool, label %for.body, label %for.end.loopexit, !dbg !2932

for.body:                                         ; preds = %for.cond
  %inc10 = add i32 %cnt.1, 1, !dbg !2937
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !2901, metadata !DIExpression()), !dbg !2914
  %cmp11 = icmp eq %union.gimple_statement_d* %use_stmt1.0, %stmt, !dbg !2939
  br i1 %cmp11, label %if.then12, label %if.else13, !dbg !2941

if.then12:                                        ; preds = %for.body
  %inc10.lcssa = phi i32 [ %inc10, %for.body ], !dbg !2937
  %temp.1.lcssa28 = phi %union.gimple_statement_d* [ %temp.1, %for.body ], !dbg !2916
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa28, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa28, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa28, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 1, metadata !2912, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !2904, metadata !DIExpression(DW_OP_deref)), !dbg !2916
  call fastcc void @end_imm_use_stmt_traverse(%struct.immediate_use_iterator_d* nonnull %ui) #8, !dbg !2942
  br label %for.end, !dbg !2942

if.else13:                                        ; preds = %for.body
  %call14 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %use_stmt1.0) #8, !dbg !2945
  %cmp15 = icmp eq i32 %call14, 16, !dbg !2947
  br i1 %cmp15, label %if.then16, label %if.else33, !dbg !2948

if.then16:                                        ; preds = %if.else13
  %tobool17 = icmp eq %union.gimple_statement_d* %temp.1, null, !dbg !2949
  br i1 %tobool17, label %lor.lhs.false, label %if.then31, !dbg !2952

lor.lhs.false:                                    ; preds = %if.then16
  %call18 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #8, !dbg !2953
  %call19 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %use_stmt1.0) #8, !dbg !2954
  %cmp20 = icmp eq %struct.basic_block_def* %call18, %call19, !dbg !2955
  br i1 %cmp20, label %if.then31, label %lor.lhs.false21, !dbg !2956

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %call22 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #8, !dbg !2957
  %call23 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %use_stmt1.0) #8, !dbg !2958
  %call24 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %call22, %struct.basic_block_def* %call23) #6, !dbg !2959
  %tobool25 = icmp eq i8 %call24, 0, !dbg !2959
  br i1 %tobool25, label %lor.lhs.false26, label %if.then31, !dbg !2960

lor.lhs.false26:                                  ; preds = %lor.lhs.false21
  %call27 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #8, !dbg !2961
  %call28 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %use_stmt1.0) #8, !dbg !2962
  %call29 = call zeroext i8 @dominated_by_p(i32 2, %struct.basic_block_def* %call27, %struct.basic_block_def* %call28) #6, !dbg !2963
  %tobool30 = icmp eq i8 %call29, 0, !dbg !2963
  br i1 %tobool30, label %if.then31, label %for.inc, !dbg !2964

if.then31:                                        ; preds = %lor.lhs.false26, %lor.lhs.false21, %if.then16, %lor.lhs.false
  %inc10.lcssa39 = phi i32 [ %inc10, %lor.lhs.false26 ], [ %inc10, %lor.lhs.false21 ], [ %inc10, %if.then16 ], [ %inc10, %lor.lhs.false ], !dbg !2937
  %temp.1.lcssa31 = phi %union.gimple_statement_d* [ %temp.1, %lor.lhs.false26 ], [ %temp.1, %lor.lhs.false21 ], [ %temp.1, %if.then16 ], [ %temp.1, %lor.lhs.false ], !dbg !2916
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa31, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa31, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa31, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa31, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa31, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa31, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa31, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa31, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa31, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa31, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa31, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa31, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 1, metadata !2912, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !2904, metadata !DIExpression(DW_OP_deref)), !dbg !2916
  call fastcc void @end_imm_use_stmt_traverse(%struct.immediate_use_iterator_d* nonnull %ui) #8, !dbg !2965
  br label %for.end, !dbg !2965

if.else33:                                        ; preds = %if.else13
  %call34 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !2968
  %call35 = call zeroext i8 @ref_maybe_used_by_stmt_p(%union.gimple_statement_d* %use_stmt1.0, %union.tree_node* %call34) #6, !dbg !2970
  %tobool36 = icmp eq i8 %call35, 0, !dbg !2970
  br i1 %tobool36, label %if.else38, label %if.then37, !dbg !2971

if.then37:                                        ; preds = %if.else33
  %inc10.lcssa37 = phi i32 [ %inc10, %if.else33 ], !dbg !2937
  %temp.1.lcssa29 = phi %union.gimple_statement_d* [ %temp.1, %if.else33 ], !dbg !2916
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa29, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa29, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa29, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 1, metadata !2912, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !2904, metadata !DIExpression(DW_OP_deref)), !dbg !2916
  call fastcc void @end_imm_use_stmt_traverse(%struct.immediate_use_iterator_d* nonnull %ui) #8, !dbg !2972
  br label %for.end, !dbg !2972

if.else38:                                        ; preds = %if.else33
  %call39 = call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %use_stmt1.0) #8, !dbg !2975
  %tobool40 = icmp eq %union.tree_node* %call39, null, !dbg !2975
  br i1 %tobool40, label %for.inc, label %if.then41, !dbg !2977

if.then41:                                        ; preds = %if.else38
  %tobool42 = icmp eq %union.gimple_statement_d* %temp.1, null, !dbg !2978
  br i1 %tobool42, label %for.inc, label %if.then43, !dbg !2981

if.then43:                                        ; preds = %if.then41
  %inc10.lcssa38 = phi i32 [ %inc10, %if.then41 ], !dbg !2937
  %temp.1.lcssa30 = phi %union.gimple_statement_d* [ %temp.1, %if.then41 ], !dbg !2916
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa30, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa30, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa30, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 1, metadata !2912, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !2904, metadata !DIExpression(DW_OP_deref)), !dbg !2916
  call fastcc void @end_imm_use_stmt_traverse(%struct.immediate_use_iterator_d* nonnull %ui) #8, !dbg !2982
  br label %for.end, !dbg !2982

for.inc:                                          ; preds = %lor.lhs.false26, %if.then41, %if.else38
  %temp.3 = phi %union.gimple_statement_d* [ %use_stmt1.0, %lor.lhs.false26 ], [ %temp.1, %if.else38 ], [ %use_stmt1.0, %if.then41 ], !dbg !2985
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.3, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !2904, metadata !DIExpression(DW_OP_deref)), !dbg !2916
  %call49 = call fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %ui) #8, !dbg !2935
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call49, metadata !2902, metadata !DIExpression()), !dbg !2916
  br label %for.cond, !dbg !2935, !llvm.loop !2986

for.end.loopexit:                                 ; preds = %for.cond
  %cnt.1.lcssa = phi i32 [ %cnt.1, %for.cond ], !dbg !2916
  %temp.1.lcssa = phi %union.gimple_statement_d* [ %temp.1, %for.cond ], !dbg !2916
  call void @llvm.dbg.value(metadata i32 %cnt.1.lcssa, metadata !2901, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 %cnt.1.lcssa, metadata !2901, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 %cnt.1.lcssa, metadata !2901, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.1.lcssa, metadata !2900, metadata !DIExpression()), !dbg !2914
  br label %for.end, !dbg !2988

for.end:                                          ; preds = %for.end.loopexit, %if.then43, %if.then37, %if.then31, %if.then12
  %temp.132 = phi %union.gimple_statement_d* [ %temp.1.lcssa28, %if.then12 ], [ %temp.1.lcssa31, %if.then31 ], [ %temp.1.lcssa29, %if.then37 ], [ %temp.1.lcssa30, %if.then43 ], [ %temp.1.lcssa, %for.end.loopexit ]
  %fail.0 = phi i1 [ true, %if.then12 ], [ true, %if.then31 ], [ true, %if.then37 ], [ true, %if.then43 ], [ false, %for.end.loopexit ]
  %cnt.2 = phi i32 [ %inc10.lcssa, %if.then12 ], [ %inc10.lcssa39, %if.then31 ], [ %inc10.lcssa37, %if.then37 ], [ %inc10.lcssa38, %if.then43 ], [ %cnt.1.lcssa, %for.end.loopexit ], !dbg !2916
  call void @llvm.dbg.value(metadata i32 %cnt.2, metadata !2901, metadata !DIExpression()), !dbg !2914
  br i1 %fail.0, label %cleanup, label %if.end52, !dbg !2988

if.end52:                                         ; preds = %for.end
  %tobool53 = icmp eq %union.gimple_statement_d* %temp.132, null, !dbg !2989
  br i1 %tobool53, label %if.then54, label %cleanup, !dbg !2991

if.then54:                                        ; preds = %if.end52
  %call55 = call zeroext i8 @is_hidden_global_store(%union.gimple_statement_d* %stmt) #6, !dbg !2992
  %tobool56 = icmp ne i8 %call55, 0, !dbg !2992
  %temp.1.stmt = select i1 %tobool56, %union.gimple_statement_d* null, %union.gimple_statement_d* %stmt, !dbg !2995
  %. = select i1 %tobool56, i32 1, i32 2, !dbg !2995
  br label %cleanup, !dbg !2995

cleanup:                                          ; preds = %if.end52, %if.then54, %for.end, %do.body
  %cnt.3 = phi i32 [ %inc, %do.body ], [ %cnt.2, %for.end ], [ %cnt.2, %if.then54 ], [ %cnt.2, %if.end52 ], !dbg !2916
  %temp.4 = phi %union.gimple_statement_d* [ %temp.0, %do.body ], [ %temp.132, %for.end ], [ %temp.1.stmt, %if.then54 ], [ %temp.132, %if.end52 ], !dbg !2914
  %cleanup.dest.slot.0 = phi i32 [ 1, %do.body ], [ 1, %for.end ], [ %., %if.then54 ], [ 0, %if.end52 ]
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.4, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 %cnt.3, metadata !2901, metadata !DIExpression()), !dbg !2914
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #7, !dbg !2996
  switch i32 %cleanup.dest.slot.0, label %cleanup71.loopexit [
    i32 0, label %do.cond
    i32 2, label %do.end
  ]

do.cond:                                          ; preds = %cleanup
  %call63 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !2997
  %call64 = call zeroext i8 @stmt_may_clobber_ref_p(%union.gimple_statement_d* %temp.4, %union.tree_node* %call63) #6, !dbg !2998
  %tobool65 = icmp eq i8 %call64, 0, !dbg !2999
  br i1 %tobool65, label %do.body, label %do.end, !dbg !3000, !llvm.loop !3001

do.end:                                           ; preds = %do.cond, %cleanup
  %temp.4.lcssa40 = phi %union.gimple_statement_d* [ %temp.4, %do.cond ], [ %temp.4, %cleanup ], !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.4.lcssa40, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.4.lcssa40, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.4.lcssa40, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.4.lcssa40, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.4.lcssa40, metadata !2900, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %temp.4.lcssa40, metadata !2900, metadata !DIExpression()), !dbg !2914
  %call67 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %temp.4.lcssa40) #8, !dbg !3003
  %tobool68 = icmp eq i8 %call67, 0, !dbg !3003
  br i1 %tobool68, label %cleanup71, label %if.end70, !dbg !3005

if.end70:                                         ; preds = %do.end
  store %union.gimple_statement_d* %temp.4.lcssa40, %union.gimple_statement_d** %use_stmt, align 8, !dbg !3006
  br label %cleanup71, !dbg !3007

cleanup71.loopexit:                               ; preds = %cleanup
  br label %cleanup71, !dbg !3008

cleanup71:                                        ; preds = %cleanup71.loopexit, %do.end, %if.end70
  %retval.2 = phi i8 [ 1, %if.end70 ], [ 0, %do.end ], [ 0, %cleanup71.loopexit ], !dbg !2914
  ret i8 %retval.2, !dbg !3008
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_stmt_uid(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !3009 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3013, metadata !DIExpression()), !dbg !3014
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3015
  %cmp = icmp eq i32 %call, 16, !dbg !3017
  br i1 %cmp, label %if.then, label %if.end, !dbg !3018

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %stmt) #8, !dbg !3019
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3019
  %0 = bitcast %union.tree_node** %version to i32*, !dbg !3019
  %1 = load i32, i32* %0, align 8, !dbg !3019
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3020
  %call2 = tail call fastcc i32 @gimple_stmt_max_uid(%struct.function* %2) #8, !dbg !3021
  %add = add i32 %1, %call2, !dbg !3022
  br label %return, !dbg !3023

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @gimple_uid(%union.gimple_statement_d* %stmt) #8, !dbg !3024
  br label %return, !dbg !3025

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %add, %if.then ], [ %call3, %if.end ], !dbg !3014
  ret i32 %retval.0, !dbg !3026
}

declare dso_local i32 @operand_equal_p(%union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3027 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3029, metadata !DIExpression()), !dbg !3030
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3031
  ret %union.tree_node* %call, !dbg !3032
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3033 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3035, metadata !DIExpression()), !dbg !3036
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !3037
  ret %union.tree_node* %call, !dbg !3038
}

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3039 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3043, metadata !DIExpression()), !dbg !3045
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #8, !dbg !3046
  call void @llvm.dbg.value(metadata i32 %call, metadata !3044, metadata !DIExpression()), !dbg !3045
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #8, !dbg !3047
  %cmp = icmp eq i32 %call1, 3, !dbg !3049
  br i1 %cmp, label %if.then, label %if.end, !dbg !3050

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #8, !dbg !3051
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3051
  %bf.load = load i64, i64* %0, align 8, !dbg !3051
  %1 = trunc i64 %bf.load to i32, !dbg !3051
  %bf.cast = and i32 %1, 65535, !dbg !3051
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3044, metadata !DIExpression()), !dbg !3045
  br label %if.end, !dbg !3052

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3045
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3044, metadata !DIExpression()), !dbg !3045
  ret i32 %code.0, !dbg !3053
}

declare dso_local zeroext i8 @refs_may_alias_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

declare dso_local void @unlink_stmt_vdef(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @release_defs(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3054 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3056, metadata !DIExpression()), !dbg !3057
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3058
  %cmp = icmp ugt i32 %call, 5, !dbg !3059
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3060

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3061
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3062
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3063
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3064 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3068, metadata !DIExpression()), !dbg !3069
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3070
  %bf.load = load i32, i32* %0, align 8, !dbg !3070
  %bf.clear = and i32 %bf.load, 255, !dbg !3070
  ret i32 %bf.clear, !dbg !3071
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3072 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3074, metadata !DIExpression()), !dbg !3075
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !3076
  ret %union.tree_node* %call, !dbg !3077
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3078 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3082, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i32 %i, metadata !3083, metadata !DIExpression()), !dbg !3084
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3085
  %tobool = icmp eq i8 %call, 0, !dbg !3085
  br i1 %tobool, label %return, label %if.then, !dbg !3087

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3088
  %idxprom = zext i32 %i to i64, !dbg !3088
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3088
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3088
  br label %return, !dbg !3090

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3091
  ret %union.tree_node* %retval.0, !dbg !3092
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3093 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3095, metadata !DIExpression()), !dbg !3096
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3097
  %cmp = icmp eq i32 %call, 0, !dbg !3098
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3099

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3100
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3101
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3102
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3103 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3107, metadata !DIExpression()), !dbg !3109
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !3110
  %idxprom = zext i32 %call to i64, !dbg !3111
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3111
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3111
  call void @llvm.dbg.value(metadata i64 %0, metadata !3108, metadata !DIExpression()), !dbg !3109
  %cmp = icmp eq i64 %0, 0, !dbg !3112
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3112

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3112
  br label %cond.end, !dbg !3112

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3113
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3114
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3115
  ret %union.tree_node** %2, !dbg !3116
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3117 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3121, metadata !DIExpression()), !dbg !3122
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3123
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !3124
  ret i32 %call1, !dbg !3125
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3126 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3130, metadata !DIExpression()), !dbg !3131
  %idxprom = zext i32 %code to i64, !dbg !3132
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3132
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3132
  ret i32 %0, !dbg !3133
}

declare dso_local %struct.bitmap_head_def* @bitmap_gc_alloc_stat() local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3134 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3140, metadata !DIExpression()), !dbg !3141
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3142
  ret %union.tree_node* %0, !dbg !3143
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3144 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3146, metadata !DIExpression()), !dbg !3147
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3148
  ret %union.tree_node** %result, !dbg !3149
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !3150 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3155, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3156, metadata !DIExpression()), !dbg !3157
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3158
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3159
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !3160
  store i40* %imm_uses, i40** %0, align 8, !dbg !3160
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !3161
  %1 = bitcast i40* %next to i64*, !dbg !3161
  %2 = load i64, i64* %1, align 8, !dbg !3161
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3162
  store i64 %2, i64* %3, align 8, !dbg !3162
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !3163
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next_imm_name, align 8, !dbg !3164
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !3165
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3166
  %next3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !3167
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next3, align 8, !dbg !3168
  %stmt = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 2, i32 0, !dbg !3169
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %stmt, align 8, !dbg !3170
  %use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 3, !dbg !3171
  store %union.tree_node** null, %union.tree_node*** %use, align 8, !dbg !3172
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #8, !dbg !3173
  %tobool = icmp eq i8 %call, 0, !dbg !3173
  br i1 %tobool, label %if.end, label %return, !dbg !3175

if.end:                                           ; preds = %entry
  %imm_use6 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3176
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !3176
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #8, !dbg !3177
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !3178
  %stmt9 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !3178
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt9, align 8, !dbg !3178
  br label %return, !dbg !3179

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end ], [ null, %entry ], !dbg !3157
  ret %union.gimple_statement_d* %retval.0, !dbg !3180
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3181 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3187, metadata !DIExpression()), !dbg !3188
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3189
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3189
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3190
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !3190
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !3191
  %conv1 = zext i1 %cmp to i8, !dbg !3192
  ret i8 %conv1, !dbg !3193
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @end_imm_use_stmt_traverse(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3194 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3198, metadata !DIExpression()), !dbg !3199
  %iter_node = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !3200
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node) #8, !dbg !3201
  ret void, !dbg !3202
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @ref_maybe_used_by_stmt_p(%union.gimple_statement_d*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3203 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3207, metadata !DIExpression()), !dbg !3208
  %next = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !3209
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3209
  %1 = load i64, i64* %0, align 8, !dbg !3209
  %2 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3210
  store i64 %1, i64* %2, align 8, !dbg !3210
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #8, !dbg !3211
  %tobool = icmp eq i8 %call, 0, !dbg !3211
  br i1 %tobool, label %if.end4, label %if.then, !dbg !3213

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !3214
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3214
  %cmp = icmp eq %struct.ssa_use_operand_d* %3, null, !dbg !3217
  br i1 %cmp, label %return, label %if.then2, !dbg !3218

if.then2:                                         ; preds = %if.then
  %iter_node3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !3219
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node3) #8, !dbg !3220
  br label %return, !dbg !3220

if.end4:                                          ; preds = %entry
  %imm_use5 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3221
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !3221
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #8, !dbg !3222
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !3223
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !3223
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3223
  br label %return, !dbg !3224

return:                                           ; preds = %if.then, %if.then2, %if.end4
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end4 ], [ null, %if.then2 ], [ null, %if.then ], !dbg !3208
  ret %union.gimple_statement_d* %retval.0, !dbg !3225
}

declare dso_local zeroext i8 @is_hidden_global_store(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local zeroext i8 @stmt_may_clobber_ref_p(%union.gimple_statement_d*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %head, %struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3226 {
entry:
  %op_iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !3230, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3231, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !3233, metadata !DIExpression()), !dbg !3250
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %head, i64 0, i32 2, i32 0, !dbg !3251
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3251
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !3234, metadata !DIExpression()), !dbg !3250
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %head) #8, !dbg !3252
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3235, metadata !DIExpression()), !dbg !3250
  %1 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %op_iter, i64 0, i32 0, !dbg !3253
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #7, !dbg !3253
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !3254
  %tobool = icmp eq i8 %call1, 0, !dbg !3254
  %cond = select i1 %tobool, i32 4, i32 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3249, metadata !DIExpression()), !dbg !3250
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %0) #8, !dbg !3255
  %cmp = icmp eq i32 %call2, 16, !dbg !3257
  br i1 %cmp, label %if.then, label %if.else, !dbg !3258

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3236, metadata !DIExpression(DW_OP_deref)), !dbg !3250
  %call4 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #8, !dbg !3259
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call4, metadata !3232, metadata !DIExpression()), !dbg !3250
  br label %for.cond, !dbg !3259

for.cond:                                         ; preds = %for.inc, %if.then
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call4, %if.then ], [ %call12, %for.inc ], !dbg !3262
  %last_p.0 = phi %struct.ssa_use_operand_d* [ %head, %if.then ], [ %last_p.1, %for.inc ], !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0, metadata !3233, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !3232, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3236, metadata !DIExpression(DW_OP_deref)), !dbg !3250
  %call5 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !3263
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3263
  br i1 %tobool6, label %for.body, label %if.end44.loopexit, !dbg !3259

for.body:                                         ; preds = %for.cond
  %call7 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #8, !dbg !3265
  %cmp8 = icmp eq %union.tree_node* %call7, %call, !dbg !3267
  br i1 %cmp8, label %if.then10, label %for.inc, !dbg !3268

if.then10:                                        ; preds = %for.body
  %call11 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.0, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.0) #8, !dbg !3269
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call11, metadata !3233, metadata !DIExpression()), !dbg !3250
  br label %for.inc, !dbg !3270

for.inc:                                          ; preds = %for.body, %if.then10
  %last_p.1 = phi %struct.ssa_use_operand_d* [ %call11, %if.then10 ], [ %last_p.0, %for.body ], !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.1, metadata !3233, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3236, metadata !DIExpression(DW_OP_deref)), !dbg !3250
  %call12 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !3263
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call12, metadata !3232, metadata !DIExpression()), !dbg !3250
  br label %for.cond, !dbg !3263, !llvm.loop !3271

if.else:                                          ; preds = %entry
  br i1 %tobool, label %if.else31, label %if.then15, !dbg !3273

if.then15:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3236, metadata !DIExpression(DW_OP_deref)), !dbg !3250
  %call16 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #8, !dbg !3275
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call16, metadata !3232, metadata !DIExpression()), !dbg !3250
  br label %for.cond17, !dbg !3275

for.cond17:                                       ; preds = %for.inc28, %if.then15
  %use_p.1 = phi %struct.ssa_use_operand_d* [ %call16, %if.then15 ], [ %call29, %for.inc28 ], !dbg !3279
  %last_p.2 = phi %struct.ssa_use_operand_d* [ %head, %if.then15 ], [ %last_p.3, %for.inc28 ], !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2, metadata !3233, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.1, metadata !3232, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3236, metadata !DIExpression(DW_OP_deref)), !dbg !3250
  %call18 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !3280
  %tobool19 = icmp eq i8 %call18, 0, !dbg !3280
  br i1 %tobool19, label %for.body21, label %if.end44.loopexit1, !dbg !3275

for.body21:                                       ; preds = %for.cond17
  %call22 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.1) #8, !dbg !3282
  %cmp23 = icmp eq %union.tree_node* %call22, %call, !dbg !3284
  br i1 %cmp23, label %if.then25, label %for.inc28, !dbg !3285

if.then25:                                        ; preds = %for.body21
  %call26 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.1, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.2) #8, !dbg !3286
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call26, metadata !3233, metadata !DIExpression()), !dbg !3250
  br label %for.inc28, !dbg !3287

for.inc28:                                        ; preds = %for.body21, %if.then25
  %last_p.3 = phi %struct.ssa_use_operand_d* [ %call26, %if.then25 ], [ %last_p.2, %for.body21 ], !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.3, metadata !3233, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3236, metadata !DIExpression(DW_OP_deref)), !dbg !3250
  %call29 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !3280
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call29, metadata !3232, metadata !DIExpression()), !dbg !3250
  br label %for.cond17, !dbg !3280, !llvm.loop !3288

if.else31:                                        ; preds = %if.else
  %call32 = tail call fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %0) #8, !dbg !3290
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call32, metadata !3232, metadata !DIExpression()), !dbg !3250
  %cmp33 = icmp eq %struct.ssa_use_operand_d* %call32, null, !dbg !3292
  br i1 %cmp33, label %if.end44, label %if.then35, !dbg !3293

if.then35:                                        ; preds = %if.else31
  %call36 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %call32) #8, !dbg !3294
  %cmp37 = icmp eq %union.tree_node* %call36, %call, !dbg !3297
  br i1 %cmp37, label %if.then39, label %if.end44, !dbg !3298

if.then39:                                        ; preds = %if.then35
  %call40 = tail call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* nonnull %call32, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %head) #8, !dbg !3299
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call40, metadata !3233, metadata !DIExpression()), !dbg !3250
  br label %if.end44, !dbg !3300

if.end44.loopexit:                                ; preds = %for.cond
  %last_p.0.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.0, %for.cond ], !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !3233, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !3233, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !3233, metadata !DIExpression()), !dbg !3250
  br label %if.end44, !dbg !3301

if.end44.loopexit1:                               ; preds = %for.cond17
  %last_p.2.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.2, %for.cond17 ], !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !3233, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !3233, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !3233, metadata !DIExpression()), !dbg !3250
  br label %if.end44, !dbg !3301

if.end44:                                         ; preds = %if.end44.loopexit1, %if.end44.loopexit, %if.else31, %if.then35, %if.then39
  %last_p.7 = phi %struct.ssa_use_operand_d* [ %head, %if.else31 ], [ %call40, %if.then39 ], [ %head, %if.then35 ], [ %last_p.0.lcssa, %if.end44.loopexit ], [ %last_p.2.lcssa, %if.end44.loopexit1 ], !dbg !3303
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.7, metadata !3233, metadata !DIExpression()), !dbg !3250
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !3301
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3301
  %cmp45 = icmp eq %struct.ssa_use_operand_d* %2, null, !dbg !3304
  br i1 %cmp45, label %if.end49, label %if.then47, !dbg !3305

if.then47:                                        ; preds = %if.end44
  %iter_node48 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !3306
  call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node48) #8, !dbg !3307
  br label %if.end49, !dbg !3307

if.end49:                                         ; preds = %if.end44, %if.then47
  %iter_node50 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !3308
  call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* nonnull %iter_node50, %struct.ssa_use_operand_d* %last_p.7) #8, !dbg !3309
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #7, !dbg !3310
  ret void, !dbg !3310
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3311 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3315, metadata !DIExpression()), !dbg !3316
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3317
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3317
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3318
  ret %union.tree_node* %1, !dbg !3319
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %phi, i32 %flags) unnamed_addr #0 !dbg !3320 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3325, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3326, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3327, metadata !DIExpression()), !dbg !3330
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #8, !dbg !3331
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3328, metadata !DIExpression()), !dbg !3330
  tail call fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !3332
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3333
  store i8 0, i8* %done, align 8, !dbg !3334
  %and = and i32 %flags, 5, !dbg !3335
  %cmp = icmp eq i32 %and, 0, !dbg !3335
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3335

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 918, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3335
  br label %cond.end, !dbg !3335

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !3336
  %tobool = icmp eq i8 %call1, 0, !dbg !3336
  %cond2 = select i1 %tobool, i32 4, i32 1, !dbg !3336
  call void @llvm.dbg.value(metadata i32 %cond2, metadata !3329, metadata !DIExpression()), !dbg !3330
  %and3 = and i32 %cond2, %flags, !dbg !3337
  %cmp4 = icmp eq i32 %and3, 0, !dbg !3339
  br i1 %cmp4, label %if.then, label %if.end, !dbg !3340

if.then:                                          ; preds = %cond.end
  store i8 1, i8* %done, align 8, !dbg !3341
  br label %cleanup, !dbg !3343

if.end:                                           ; preds = %cond.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3344
  store %union.gimple_statement_d* %phi, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3345
  %call7 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #8, !dbg !3346
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3347
  store i32 %call7, i32* %num_phi, align 4, !dbg !3348
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3349
  store i32 2, i32* %iter_type, align 4, !dbg !3350
  %call8 = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !3351
  br label %cleanup, !dbg !3352

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ null, %if.then ], [ %call8, %if.end ], !dbg !3330
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3353
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3354 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3360, metadata !DIExpression()), !dbg !3361
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3362
  %0 = load i8, i8* %done, align 8, !dbg !3362
  ret i8 %0, !dbg !3363
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p) unnamed_addr #0 !dbg !3364 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !3368, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !3369, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p, metadata !3370, metadata !DIExpression()), !dbg !3371
  %cmp = icmp eq %struct.ssa_use_operand_d* %use_p, %head, !dbg !3372
  br i1 %cmp, label %if.end3, label %if.then, !dbg !3374

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %last_p, i64 0, i32 1, !dbg !3375
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !3375
  %cmp1 = icmp eq %struct.ssa_use_operand_d* %0, %use_p, !dbg !3378
  br i1 %cmp1, label %if.end3, label %if.else, !dbg !3379

if.else:                                          ; preds = %if.then
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use_p) #8, !dbg !3380
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %last_p) #8, !dbg !3382
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !3370, metadata !DIExpression()), !dbg !3371
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.else, %if.then
  %last_p.addr.1 = phi %struct.ssa_use_operand_d* [ %last_p, %entry ], [ %use_p, %if.then ], [ %use_p, %if.else ]
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.addr.1, metadata !3370, metadata !DIExpression()), !dbg !3371
  ret %struct.ssa_use_operand_d* %last_p.addr.1, !dbg !3383
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3384 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3388, metadata !DIExpression()), !dbg !3390
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3391
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !3391
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !3393
  br i1 %tobool, label %if.end, label %if.then, !dbg !3394

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !3395
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !3389, metadata !DIExpression()), !dbg !3390
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !3397
  %2 = load i64, i64* %1, align 8, !dbg !3397
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3398
  store i64 %2, i64* %3, align 8, !dbg !3398
  br label %cleanup, !dbg !3399

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3400
  %4 = load i32, i32* %phi_i, align 8, !dbg !3400
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3402
  %5 = load i32, i32* %num_phi, align 4, !dbg !3402
  %cmp = icmp slt i32 %4, %5, !dbg !3403
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !3404

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3405
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3405
  %inc = add nsw i32 %4, 1, !dbg !3405
  store i32 %inc, i32* %phi_i, align 8, !dbg !3405
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #8, !dbg !3405
  br label %cleanup, !dbg !3407

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3408
  store i8 1, i8* %done, align 8, !dbg !3409
  br label %cleanup, !dbg !3410

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !3390
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3411
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3412 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3414, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3415, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3416, metadata !DIExpression()), !dbg !3417
  %0 = and i32 %flags, 11, !dbg !3418
  %1 = icmp eq i32 %0, 1, !dbg !3418
  br i1 %1, label %cond.end, label %cond.true, !dbg !3418

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 771, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3418
  br label %cond.end, !dbg !3418

cond.end:                                         ; preds = %entry, %cond.true
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) #8, !dbg !3419
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3420
  store i32 2, i32* %iter_type, align 4, !dbg !3421
  %call = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !3422
  ret %struct.ssa_use_operand_d* %call, !dbg !3423
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3424 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3428, metadata !DIExpression()), !dbg !3430
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !3431
  %tobool = icmp eq i8 %call, 0, !dbg !3431
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3433

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !3434
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !3434
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !3434
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %1, metadata !3429, metadata !DIExpression()), !dbg !3430
  %tobool1 = icmp eq %struct.use_optype_d* %1, null, !dbg !3435
  br i1 %tobool1, label %cleanup, label %land.lhs.true, !dbg !3437

land.lhs.true:                                    ; preds = %if.end
  %use = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, i32 3, !dbg !3438
  %2 = load %union.tree_node**, %union.tree_node*** %use, align 8, !dbg !3438
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !3439
  %3 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !3439
  %cmp = icmp eq %union.tree_node** %2, %3, !dbg !3440
  %use_ptr3 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, !dbg !3441
  %spec.select = select i1 %cmp, %struct.ssa_use_operand_d* %use_ptr3, %struct.ssa_use_operand_d* null, !dbg !3442
  ret %struct.ssa_use_operand_d* %spec.select, !dbg !3442

cleanup:                                          ; preds = %if.end, %entry
  ret %struct.ssa_use_operand_d* null, !dbg !3443
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !3444 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3448, metadata !DIExpression()), !dbg !3449
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3450
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3450
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !3452
  br i1 %cmp, label %return, label %if.end, !dbg !3453

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !3454
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3454
  %2 = load i64, i64* %1, align 8, !dbg !3454
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !3455
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !3456
  store i64 %2, i64* %3, align 8, !dbg !3456
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !3457
  %5 = load i64, i64* %4, align 8, !dbg !3457
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !3458
  %7 = load i64*, i64** %6, align 8, !dbg !3458
  store i64 %5, i64* %7, align 8, !dbg !3459
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3460
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !3461
  br label %return, !dbg !3462

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !3462
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !3463 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3467, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !3468, metadata !DIExpression()), !dbg !3469
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3470
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3471
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !3472
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3472
  %1 = load i64, i64* %0, align 8, !dbg !3472
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !3473
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !3474
  store i64 %1, i64* %2, align 8, !dbg !3474
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !3475
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !3476
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !3477
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !3478
  ret void, !dbg !3479
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3480 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3482, metadata !DIExpression()), !dbg !3483
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3484
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !3484
  ret %union.tree_node* %0, !dbg !3485
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3486 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3490, metadata !DIExpression()), !dbg !3491
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3492
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !3493
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3494
  store %struct.use_optype_d* null, %struct.use_optype_d** %uses, align 8, !dbg !3495
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3496
  store i32 0, i32* %iter_type, align 4, !dbg !3497
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3498
  store i32 0, i32* %phi_i, align 8, !dbg !3499
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3500
  store i32 0, i32* %num_phi, align 4, !dbg !3501
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3502
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3503
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3504
  store i8 1, i8* %done, align 8, !dbg !3505
  ret void, !dbg !3506
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3507 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3509, metadata !DIExpression()), !dbg !3510
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !3511
  %0 = load i32, i32* %nargs, align 4, !dbg !3511
  ret i32 %0, !dbg !3512
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3513 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3517, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32 %i, metadata !3518, metadata !DIExpression()), !dbg !3519
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #8, !dbg !3520
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3521
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3522
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3523 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3528, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i32 %index, metadata !3529, metadata !DIExpression()), !dbg !3530
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3531
  %0 = load i32, i32* %capacity, align 8, !dbg !3531
  %cmp = icmp ult i32 %0, %index, !dbg !3531
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3531

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3531
  br label %cond.end, !dbg !3531

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3532
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3532
  ret %struct.phi_arg_d* %arrayidx, !dbg !3533
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3534 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3538, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3539, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3540, metadata !DIExpression()), !dbg !3541
  %0 = and i32 %flags, 10, !dbg !3542
  %1 = icmp eq i32 %0, 8, !dbg !3542
  br i1 %1, label %cond.true, label %land.lhs.true, !dbg !3542

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %flags, 5, !dbg !3542
  %3 = icmp eq i32 %2, 4, !dbg !3542
  br i1 %3, label %cond.true, label %cond.end, !dbg !3542

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3542
  br label %cond.end, !dbg !3542

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %tobool9 = icmp eq i32 %0, 0, !dbg !3543
  br i1 %tobool9, label %cond.end12, label %cond.true10, !dbg !3544

cond.true10:                                      ; preds = %cond.end
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #8, !dbg !3545
  br label %cond.end12, !dbg !3544

cond.end12:                                       ; preds = %cond.end, %cond.true10
  %4 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ null, %cond.end ], !dbg !3544
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3546
  store %struct.def_optype_d* %4, %struct.def_optype_d** %defs, align 8, !dbg !3547
  %and14 = and i32 %flags, 8, !dbg !3548
  %tobool15 = icmp eq i32 %and14, 0, !dbg !3548
  br i1 %tobool15, label %land.lhs.true16, label %if.end, !dbg !3550

land.lhs.true16:                                  ; preds = %cond.end12
  %tobool18 = icmp eq %struct.def_optype_d* %4, null, !dbg !3551
  br i1 %tobool18, label %if.end, label %land.lhs.true19, !dbg !3552

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #8, !dbg !3553
  %cmp = icmp eq %union.tree_node* %call20, null, !dbg !3554
  br i1 %cmp, label %if.end, label %if.then, !dbg !3555

if.then:                                          ; preds = %land.lhs.true19
  %5 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !3556
  %6 = load i64*, i64** %5, align 8, !dbg !3556
  %7 = load i64, i64* %6, align 8, !dbg !3557
  %8 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3558
  store i64 %7, i64* %8, align 8, !dbg !3558
  br label %if.end, !dbg !3559

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true16, %cond.end12, %if.then
  %and23 = and i32 %flags, 5, !dbg !3560
  %tobool24 = icmp eq i32 %and23, 0, !dbg !3560
  br i1 %tobool24, label %cond.end28, label %cond.true25, !dbg !3561

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #8, !dbg !3562
  br label %cond.end28, !dbg !3561

cond.end28:                                       ; preds = %if.end, %cond.true25
  %9 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ null, %if.end ], !dbg !3561
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3563
  store %struct.use_optype_d* %9, %struct.use_optype_d** %uses, align 8, !dbg !3564
  %and30 = and i32 %flags, 4, !dbg !3565
  %tobool31 = icmp eq i32 %and30, 0, !dbg !3565
  br i1 %tobool31, label %land.lhs.true32, label %if.end42, !dbg !3567

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %9, null, !dbg !3568
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !3569

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #8, !dbg !3570
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !3571
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !3572

if.then38:                                        ; preds = %land.lhs.true35
  %10 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !3573
  %11 = load i64*, i64** %10, align 8, !dbg !3573
  %12 = load i64, i64* %11, align 8, !dbg !3574
  %13 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3575
  store i64 %12, i64* %13, align 8, !dbg !3575
  br label %if.end42, !dbg !3576

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32, %cond.end28, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3577
  store i8 0, i8* %done, align 8, !dbg !3578
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3579
  store i32 0, i32* %phi_i, align 8, !dbg !3580
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3581
  store i32 0, i32* %num_phi, align 4, !dbg !3582
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3583
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3584
  ret void, !dbg !3585
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3586 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3590, metadata !DIExpression()), !dbg !3591
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #8, !dbg !3592
  %tobool = icmp eq i8 %call, 0, !dbg !3592
  br i1 %tobool, label %return, label %if.end, !dbg !3594

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !3595
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !3595
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !3595
  br label %return, !dbg !3596

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3591
  ret %struct.def_optype_d* %retval.0, !dbg !3597
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3598 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3602, metadata !DIExpression()), !dbg !3603
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #8, !dbg !3604
  %tobool = icmp eq i8 %call, 0, !dbg !3604
  br i1 %tobool, label %return, label %if.end, !dbg !3606

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !3607
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !3607
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !3607
  br label %return, !dbg !3608

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3603
  ret %struct.use_optype_d* %retval.0, !dbg !3609
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3610 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3612, metadata !DIExpression()), !dbg !3613
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !3614
  %tobool = icmp eq i8 %call, 0, !dbg !3614
  br i1 %tobool, label %return, label %if.end, !dbg !3616

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !3617
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !3617
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3617
  br label %return, !dbg !3618

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3613
  ret %union.tree_node* %retval.0, !dbg !3619
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_stmt_max_uid(%struct.function* %fn) unnamed_addr #0 !dbg !3620 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fn, metadata !3624, metadata !DIExpression()), !dbg !3625
  %last_stmt_uid = getelementptr inbounds %struct.function, %struct.function* %fn, i64 0, i32 13, !dbg !3626
  %0 = load i32, i32* %last_stmt_uid, align 8, !dbg !3626
  ret i32 %0, !dbg !3627
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3628 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3630, metadata !DIExpression()), !dbg !3632
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3633
  call void @llvm.dbg.value(metadata i32 %call, metadata !3631, metadata !DIExpression()), !dbg !3632
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3634

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3636
  %bf.load = load i32, i32* %0, align 8, !dbg !3636
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3636
  br label %cleanup, !dbg !3637

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3638
  br label %cleanup, !dbg !3640

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3632
  ret i32 %retval.0, !dbg !3641
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3642 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3646, metadata !DIExpression()), !dbg !3647
  %idxprom = sext i32 %code to i64, !dbg !3648
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3648
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3648
  %conv = zext i8 %0 to i32, !dbg !3649
  ret i32 %conv, !dbg !3650
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !3651 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3660, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !3661, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32 0, metadata !3662, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3663, metadata !DIExpression()), !dbg !3664
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !3665
  %1 = load i64, i64* %0, align 8, !dbg !3665
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3666
  store i64 %1, i64* %2, align 8, !dbg !3666
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !3667
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !3668
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3669
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !3672
  br label %while.body, !dbg !3672

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !3673
  br i1 %tobool, label %if.then, label %if.end, !dbg !3674

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !3675
  br label %while.end, !dbg !3677

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !3678

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !3672, !llvm.loop !3679

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !3681

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !3681
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !3683
  %7 = load i32, i32* %indx9, align 8, !dbg !3683
  %cmp11 = icmp eq i32 %7, 0, !dbg !3684
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !3685

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !3686
  %8 = load i32, i32* %indx14, align 8, !dbg !3686
  %mul = shl i32 %8, 7, !dbg !3687
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3662, metadata !DIExpression()), !dbg !3664
  br label %if.end15, !dbg !3688

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !3662, metadata !DIExpression()), !dbg !3664
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3689
  store i32 0, i32* %word_no, align 8, !dbg !3690
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !3691
  %9 = load i64, i64* %arrayidx, align 8, !dbg !3691
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3692
  store i64 %9, i64* %bits21, align 8, !dbg !3693
  %tobool23 = icmp eq i64 %9, 0, !dbg !3694
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !3694
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !3695
  call void @llvm.dbg.value(metadata i32 %add, metadata !3662, metadata !DIExpression()), !dbg !3664
  store i32 %add, i32* %bit_no, align 4, !dbg !3696
  ret void, !dbg !3697
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3698 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3702, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3703, metadata !DIExpression()), !dbg !3707
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3708
  %0 = load i64, i64* %bits, align 8, !dbg !3708
  %tobool = icmp eq i64 %0, 0, !dbg !3709
  br i1 %tobool, label %if.end, label %next_bit, !dbg !3710

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !3711
  br label %next_bit, !dbg !3714

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !3704), !dbg !3715
  br label %while.cond, !dbg !3714

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !3716
  %and = and i64 %2, 1, !dbg !3717
  %tobool2 = icmp eq i64 %and, 0, !dbg !3718
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !3714

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !3719
  store i64 %shr, i64* %bits, align 8, !dbg !3719
  %3 = load i32, i32* %bit_no, align 4, !dbg !3721
  %add = add i32 %3, 1, !dbg !3721
  store i32 %add, i32* %bit_no, align 4, !dbg !3721
  %.pre = load i64, i64* %bits, align 8, !dbg !3716
  br label %while.cond, !dbg !3714, !llvm.loop !3722

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !3724
  %sub = add i32 %4, 63, !dbg !3725
  %div = and i32 %sub, -64, !dbg !3726
  store i32 %div, i32* %bit_no, align 4, !dbg !3727
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3728
  %5 = load i32, i32* %word_no, align 8, !dbg !3729
  %inc = add i32 %5, 1, !dbg !3729
  store i32 %inc, i32* %word_no, align 8, !dbg !3729
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3730
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3730
  br label %while.body6, !dbg !3731

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !3732

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !3733
  %cmp = icmp eq i32 %8, 2, !dbg !3734
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !3730
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !3732

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !3711
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !3711
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3711
  store i64 %10, i64* %bits, align 8, !dbg !3735
  %tobool14 = icmp eq i64 %10, 0, !dbg !3736
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !3738

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !3739
  %add17 = add i32 %11, 64, !dbg !3739
  store i32 %add17, i32* %bit_no, align 4, !dbg !3739
  %12 = load i32, i32* %word_no, align 8, !dbg !3740
  %inc19 = add i32 %12, 1, !dbg !3740
  store i32 %inc19, i32* %word_no, align 8, !dbg !3740
  br label %while.cond7, !dbg !3732, !llvm.loop !3741

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !3730
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !3743
  %14 = load i64, i64* %13, align 8, !dbg !3743
  store i64 %14, i64* %6, align 8, !dbg !3744
  %tobool24 = icmp eq i64 %14, 0, !dbg !3745
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !3747

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !3747
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3748
  %16 = load i32, i32* %indx, align 8, !dbg !3748
  %mul28 = shl i32 %16, 7, !dbg !3749
  store i32 %mul28, i32* %bit_no, align 4, !dbg !3750
  store i32 0, i32* %word_no, align 8, !dbg !3751
  br label %while.body6, !dbg !3731, !llvm.loop !3752

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !3754

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !3754

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !3707
  ret i8 %retval.0, !dbg !3754
}

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3755 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3759, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3760, metadata !DIExpression()), !dbg !3761
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3762
  %0 = load i64, i64* %bits, align 8, !dbg !3763
  %shr = lshr i64 %0, 1, !dbg !3763
  store i64 %shr, i64* %bits, align 8, !dbg !3763
  %1 = load i32, i32* %bit_no, align 4, !dbg !3764
  %add = add i32 %1, 1, !dbg !3764
  store i32 %add, i32* %bit_no, align 4, !dbg !3764
  ret void, !dbg !3765
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

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
!llvm.module.flags = !{!1982, !1983, !1984}
!llvm.ident = !{!1985}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_dse", scope: !2, file: !3, line: 449, type: !1956, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !638, globals: !1955, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-dse.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !599, !625, !632}
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
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !561, line: 51, baseType: !7, size: 32, elements: !562)
!561 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!563 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!564 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!565 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!566 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!567 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!568 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!569 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!570 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!571 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!572 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!573 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!574 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!575 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!576 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!577 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!578 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!579 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!580 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!581 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!582 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!583 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!584 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!585 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!586 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!587 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!588 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!589 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!590 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!591 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!592 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!593 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!594 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!595 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!596 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!598 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!599 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !561, line: 727, baseType: !7, size: 32, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!601 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!602 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!603 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!604 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!605 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!606 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!607 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!608 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!609 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!610 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!611 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!612 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!613 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!614 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!615 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!616 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!617 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!618 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!619 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!620 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!621 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!622 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!623 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!624 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !626, line: 119, baseType: !7, size: 32, elements: !627)
!626 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!627 = !{!628, !629, !630, !631}
!628 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!629 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!630 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!631 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!632 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !561, line: 80, baseType: !7, size: 32, elements: !633)
!633 = !{!634, !635, !636, !637}
!634 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!635 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!636 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!637 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!638 = !{!639, !640, !641, !642, !645, !646, !648, !711, !715, !719, !366, !982, !1950, !1015, !643, !1952, !632}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!641 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !649, line: 47, baseType: !650)
!649 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !652, line: 75, size: 256, elements: !653)
!652 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!653 = !{!654, !669, !670, !671}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !651, file: !652, line: 76, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !652, line: 68, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !652, line: 63, size: 320, elements: !658)
!658 = !{!659, !661, !662, !663}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !657, file: !652, line: 64, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !657, file: !652, line: 65, baseType: !660, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !657, file: !652, line: 66, baseType: !7, size: 32, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !657, file: !652, line: 67, baseType: !664, size: 128, offset: 192)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 128, elements: !667)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !652, line: 29, baseType: !666)
!666 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!667 = !{!668}
!668 = !DISubrange(count: 2)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !651, file: !652, line: 77, baseType: !655, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !651, file: !652, line: 78, baseType: !7, size: 32, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !651, file: !652, line: 79, baseType: !672, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !652, line: 49, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !652, line: 45, size: 832, elements: !675)
!675 = !{!676, !677, !678}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !674, file: !652, line: 46, baseType: !660, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !674, file: !652, line: 47, baseType: !650, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !674, file: !652, line: 48, baseType: !679, size: 704, offset: 128)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !680, line: 164, size: 704, elements: !681)
!680 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!681 = !{!682, !684, !694, !695, !696, !697, !698, !699, !703, !707, !708, !709, !710}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !679, file: !680, line: 166, baseType: !683, size: 64)
!683 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !679, file: !680, line: 167, baseType: !685, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !680, line: 157, size: 192, elements: !687)
!687 = !{!688, !689, !690}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !686, file: !680, line: 159, baseType: !643, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !686, file: !680, line: 160, baseType: !685, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !686, file: !680, line: 161, baseType: !691, size: 32, offset: 128)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 32, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 4)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !679, file: !680, line: 168, baseType: !643, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !679, file: !680, line: 169, baseType: !643, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !679, file: !680, line: 170, baseType: !643, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !679, file: !680, line: 171, baseType: !683, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !679, file: !680, line: 172, baseType: !641, size: 32, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !679, file: !680, line: 176, baseType: !700, size: 64, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!685, !645, !683}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !679, file: !680, line: 177, baseType: !704, size: 64, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !645, !685}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !679, file: !680, line: 178, baseType: !645, size: 64, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !679, file: !680, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !679, file: !680, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !679, file: !680, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dse_block_local_data", file: !3, line: 82, size: 64, elements: !713)
!713 = !{!714}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "stores", scope: !712, file: !3, line: 84, baseType: !648, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dse_global_data", file: !3, line: 69, size: 64, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "stores", scope: !716, file: !3, line: 76, baseType: !648, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !649, line: 56, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !722)
!722 = !{!723, !756, !762, !773, !792, !803, !808, !817, !823, !836, !848, !886, !1284, !1312, !1329, !1330, !1335, !1344, !1350, !1355, !1359, !1363, !1601, !1648, !1654, !1660, !1667, !1680, !1694, !1711, !1723, !1745, !1760, !1932}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !721, file: !334, line: 3372, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !724, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !724, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !724, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !724, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !724, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !724, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !724, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !724, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !724, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !724, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !724, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !724, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !724, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !724, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !724, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !724, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !724, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !724, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !724, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !724, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !724, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !724, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !724, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !724, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !724, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !724, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !724, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !724, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !724, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !724, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !721, file: !334, line: 3373, baseType: !757, size: 192)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !757, file: !334, line: 403, baseType: !724, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !757, file: !334, line: 404, baseType: !719, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !757, file: !334, line: 405, baseType: !719, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !721, file: !334, line: 3374, baseType: !763, size: 320)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !763, file: !334, line: 1385, baseType: !757, size: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !763, file: !334, line: 1386, baseType: !767, size: 128, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !768, line: 58, baseType: !769)
!768 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !768, line: 54, size: 128, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !769, file: !768, line: 56, baseType: !666, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !769, file: !768, line: 57, baseType: !683, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !721, file: !334, line: 3375, baseType: !774, size: 256)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !774, file: !334, line: 1398, baseType: !757, size: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !774, file: !334, line: 1399, baseType: !778, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !780, line: 52, size: 256, elements: !781)
!780 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!781 = !{!782, !783, !784, !785, !786, !787, !788}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !779, file: !780, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !779, file: !780, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !779, file: !780, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !779, file: !780, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !779, file: !780, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !779, file: !780, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !779, file: !780, line: 62, baseType: !789, size: 192, offset: 64)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 192, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 3)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !721, file: !334, line: 3376, baseType: !793, size: 256)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !793, file: !334, line: 1409, baseType: !757, size: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !793, file: !334, line: 1410, baseType: !797, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !799, line: 27, size: 192, elements: !800)
!799 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !798, file: !799, line: 29, baseType: !767, size: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !798, file: !799, line: 30, baseType: !189, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !721, file: !334, line: 3377, baseType: !804, size: 256)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !804, file: !334, line: 1438, baseType: !757, size: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !804, file: !334, line: 1439, baseType: !719, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !721, file: !334, line: 3378, baseType: !809, size: 256)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !810)
!810 = !{!811, !812, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !809, file: !334, line: 1419, baseType: !757, size: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !809, file: !334, line: 1420, baseType: !641, size: 32, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !809, file: !334, line: 1421, baseType: !814, size: 8, offset: 224)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 8, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 1)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !721, file: !334, line: 3379, baseType: !818, size: 320)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !819)
!819 = !{!820, !821, !822}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !818, file: !334, line: 1429, baseType: !757, size: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !818, file: !334, line: 1430, baseType: !719, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !818, file: !334, line: 1431, baseType: !719, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !721, file: !334, line: 3380, baseType: !824, size: 320)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !824, file: !334, line: 1461, baseType: !757, size: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !824, file: !334, line: 1462, baseType: !828, size: 128, offset: 192)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !829, line: 31, size: 128, elements: !830)
!829 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!830 = !{!831, !834, !835}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !828, file: !829, line: 32, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !828, file: !829, line: 33, baseType: !7, size: 32, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !828, file: !829, line: 34, baseType: !7, size: 32, offset: 96)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !721, file: !334, line: 3381, baseType: !837, size: 384)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !838)
!838 = !{!839, !840, !845, !846, !847}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !837, file: !334, line: 2508, baseType: !757, size: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !837, file: !334, line: 2509, baseType: !841, size: 32, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !842, line: 58, baseType: !843)
!842 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !844, line: 44, baseType: !7)
!844 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!845 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !837, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !837, file: !334, line: 2511, baseType: !719, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !837, file: !334, line: 2512, baseType: !719, size: 64, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !721, file: !334, line: 3382, baseType: !849, size: 896)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !849, file: !334, line: 2653, baseType: !837, size: 384)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !849, file: !334, line: 2654, baseType: !719, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !849, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !849, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !849, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !849, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !849, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !849, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !849, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !849, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !849, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !849, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !849, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !849, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !849, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !849, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !849, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !849, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !849, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !849, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !849, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !849, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !849, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !849, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !849, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !849, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !849, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !849, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !849, file: !334, line: 2705, baseType: !719, size: 64, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !849, file: !334, line: 2706, baseType: !719, size: 64, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !849, file: !334, line: 2707, baseType: !719, size: 64, offset: 704)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !849, file: !334, line: 2708, baseType: !719, size: 64, offset: 768)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !849, file: !334, line: 2711, baseType: !884, size: 64, offset: 832)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !721, file: !334, line: 3383, baseType: !887, size: 960)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !887, file: !334, line: 2757, baseType: !849, size: 896)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !887, file: !334, line: 2758, baseType: !891, size: 64, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !649, line: 50, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !894, line: 240, size: 384, elements: !895)
!894 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!895 = !{!896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !893, file: !894, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !893, file: !894, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !893, file: !894, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !893, file: !894, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !893, file: !894, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !893, file: !894, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !893, file: !894, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !893, file: !894, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !893, file: !894, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !893, file: !894, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !893, file: !894, line: 321, baseType: !907, size: 320, offset: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !894, line: 315, size: 320, elements: !908)
!908 = !{!909, !1251, !1253, !1282, !1283}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !907, file: !894, line: 316, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !911, size: 64, elements: !815)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !894, line: 183, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !894, line: 166, size: 64, elements: !913)
!913 = !{!914, !915, !916, !917, !918, !926, !927, !939, !942, !943, !944, !1228, !1241, !1248}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !912, file: !894, line: 168, baseType: !641, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !912, file: !894, line: 169, baseType: !7, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !912, file: !894, line: 170, baseType: !646, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !912, file: !894, line: 171, baseType: !891, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !912, file: !894, line: 172, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !649, line: 53, baseType: !920)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !894, line: 359, size: 128, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !921, file: !894, line: 360, baseType: !641, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !921, file: !894, line: 361, baseType: !925, size: 64, offset: 64)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 64, elements: !815)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !912, file: !894, line: 173, baseType: !189, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !912, file: !894, line: 174, baseType: !928, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !894, line: 133, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !894, line: 115, size: 32, elements: !930)
!930 = !{!931, !932, !933, !934, !935, !936, !937, !938}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !929, file: !894, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !929, file: !894, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !929, file: !894, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !929, file: !894, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !929, file: !894, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !929, file: !894, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !929, file: !894, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !929, file: !894, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !912, file: !894, line: 175, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !894, line: 175, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !912, file: !894, line: 176, baseType: !650, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !912, file: !894, line: 177, baseType: !719, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !912, file: !894, line: 178, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !947)
!947 = !{!948, !1193, !1194, !1195, !1198, !1202, !1203, !1204, !1222, !1223, !1224, !1225, !1226, !1227}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !946, file: !318, line: 219, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !951, file: !318, line: 151, baseType: !954, size: 128)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !955)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !955, file: !318, line: 150, baseType: !7, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !955, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !955, file: !318, line: 150, baseType: !960, size: 64, offset: 64)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !961, size: 64, elements: !815)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !649, line: 108, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !964)
!964 = !{!965, !966, !967, !1185, !1186, !1187, !1188, !1189, !1190, !1191}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !963, file: !318, line: 124, baseType: !945, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !963, file: !318, line: 125, baseType: !945, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !963, file: !318, line: 131, baseType: !968, size: 64, offset: 128)
!968 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !969)
!969 = !{!970, !1184}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !968, file: !318, line: 129, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !649, line: 66, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !561, line: 143, size: 192, elements: !974)
!974 = !{!975, !1182, !1183}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !973, file: !561, line: 145, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !649, line: 69, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !561, line: 136, size: 192, elements: !979)
!979 = !{!980, !1180, !1181}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !978, file: !561, line: 137, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !649, line: 58, baseType: !982)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !561, line: 737, size: 768, elements: !984)
!984 = !{!985, !1002, !1035, !1041, !1046, !1051, !1058, !1064, !1070, !1075, !1089, !1094, !1100, !1105, !1115, !1120, !1138, !1145, !1152, !1158, !1163, !1169, !1175}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !983, file: !561, line: 738, baseType: !986, size: 256)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !561, line: 271, size: 256, elements: !987)
!987 = !{!988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !986, file: !561, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !986, file: !561, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !986, file: !561, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !986, file: !561, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !986, file: !561, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !986, file: !561, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !986, file: !561, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !986, file: !561, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !986, file: !561, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !986, file: !561, line: 312, baseType: !7, size: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !986, file: !561, line: 316, baseType: !841, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !986, file: !561, line: 319, baseType: !7, size: 32, offset: 96)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !986, file: !561, line: 323, baseType: !945, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !986, file: !561, line: 327, baseType: !719, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !983, file: !561, line: 739, baseType: !1003, size: 448)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !561, line: 350, size: 448, elements: !1004)
!1004 = !{!1005, !1033}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1003, file: !561, line: 353, baseType: !1006, size: 384)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !561, line: 333, size: 384, elements: !1007)
!1007 = !{!1008, !1009, !1016}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1006, file: !561, line: 336, baseType: !986, size: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1006, file: !561, line: 343, baseType: !1010, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !626, line: 37, size: 128, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1011, file: !626, line: 39, baseType: !1010, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1011, file: !626, line: 40, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1006, file: !561, line: 344, baseType: !1017, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !626, line: 45, size: 320, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1018, file: !626, line: 47, baseType: !1017, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1018, file: !626, line: 48, baseType: !1022, size: 256, offset: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !1023)
!1023 = !{!1024, !1026, !1027, !1032}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1022, file: !334, line: 1884, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1022, file: !334, line: 1885, baseType: !1025, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1022, file: !334, line: 1891, baseType: !1028, size: 64, offset: 128)
!1028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !334, line: 1891, size: 64, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1028, file: !334, line: 1891, baseType: !981, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1028, file: !334, line: 1891, baseType: !719, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1022, file: !334, line: 1892, baseType: !1015, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1003, file: !561, line: 359, baseType: !1034, size: 64, offset: 384)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 64, elements: !815)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !983, file: !561, line: 740, baseType: !1036, size: 512)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !561, line: 365, size: 512, elements: !1037)
!1037 = !{!1038, !1039, !1040}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1036, file: !561, line: 368, baseType: !1006, size: 384)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1036, file: !561, line: 373, baseType: !719, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1036, file: !561, line: 374, baseType: !719, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !983, file: !561, line: 741, baseType: !1042, size: 576)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !561, line: 380, size: 576, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1042, file: !561, line: 383, baseType: !1036, size: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1042, file: !561, line: 389, baseType: !1034, size: 64, offset: 512)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !983, file: !561, line: 742, baseType: !1047, size: 320)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !561, line: 395, size: 320, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1047, file: !561, line: 397, baseType: !986, size: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1047, file: !561, line: 400, baseType: !971, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !983, file: !561, line: 743, baseType: !1052, size: 448)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !561, line: 406, size: 448, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1052, file: !561, line: 408, baseType: !986, size: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1052, file: !561, line: 412, baseType: !719, size: 64, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1052, file: !561, line: 420, baseType: !719, size: 64, offset: 320)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1052, file: !561, line: 423, baseType: !971, size: 64, offset: 384)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !983, file: !561, line: 744, baseType: !1059, size: 384)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !561, line: 429, size: 384, elements: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1059, file: !561, line: 431, baseType: !986, size: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1059, file: !561, line: 434, baseType: !719, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1059, file: !561, line: 437, baseType: !971, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !983, file: !561, line: 745, baseType: !1065, size: 384)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !561, line: 443, size: 384, elements: !1066)
!1066 = !{!1067, !1068, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1065, file: !561, line: 445, baseType: !986, size: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1065, file: !561, line: 449, baseType: !719, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1065, file: !561, line: 453, baseType: !971, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !983, file: !561, line: 746, baseType: !1071, size: 320)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !561, line: 459, size: 320, elements: !1072)
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1071, file: !561, line: 461, baseType: !986, size: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1071, file: !561, line: 464, baseType: !719, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !983, file: !561, line: 747, baseType: !1076, size: 768)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !561, line: 469, size: 768, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1082}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1076, file: !561, line: 471, baseType: !986, size: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1076, file: !561, line: 474, baseType: !7, size: 32, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1076, file: !561, line: 475, baseType: !7, size: 32, offset: 288)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1076, file: !561, line: 478, baseType: !719, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1076, file: !561, line: 481, baseType: !1083, size: 384, offset: 384)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1084, size: 384, elements: !815)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !334, line: 1917, size: 384, elements: !1085)
!1085 = !{!1086, !1087, !1088}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1084, file: !334, line: 1920, baseType: !1022, size: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1084, file: !334, line: 1921, baseType: !719, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1084, file: !334, line: 1922, baseType: !841, size: 32, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !983, file: !561, line: 748, baseType: !1090, size: 320)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !561, line: 487, size: 320, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1090, file: !561, line: 490, baseType: !986, size: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1090, file: !561, line: 494, baseType: !641, size: 32, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !983, file: !561, line: 749, baseType: !1095, size: 384)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !561, line: 500, size: 384, elements: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1095, file: !561, line: 502, baseType: !986, size: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1095, file: !561, line: 506, baseType: !971, size: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1095, file: !561, line: 510, baseType: !971, size: 64, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !983, file: !561, line: 750, baseType: !1101, size: 320)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !561, line: 529, size: 320, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1101, file: !561, line: 531, baseType: !986, size: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1101, file: !561, line: 540, baseType: !971, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !983, file: !561, line: 751, baseType: !1106, size: 704)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !561, line: 546, size: 704, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1113, !1114}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1106, file: !561, line: 549, baseType: !1036, size: 512)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1106, file: !561, line: 553, baseType: !646, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1106, file: !561, line: 557, baseType: !640, size: 8, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1106, file: !561, line: 558, baseType: !640, size: 8, offset: 584)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1106, file: !561, line: 559, baseType: !640, size: 8, offset: 592)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1106, file: !561, line: 560, baseType: !640, size: 8, offset: 600)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1106, file: !561, line: 566, baseType: !1034, size: 64, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !983, file: !561, line: 752, baseType: !1116, size: 384)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !561, line: 571, size: 384, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1116, file: !561, line: 573, baseType: !1047, size: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1116, file: !561, line: 577, baseType: !719, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !983, file: !561, line: 753, baseType: !1121, size: 576)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !561, line: 600, size: 576, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1128, !1137}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1121, file: !561, line: 602, baseType: !1047, size: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1121, file: !561, line: 605, baseType: !719, size: 64, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1121, file: !561, line: 609, baseType: !1126, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1127, line: 46, baseType: !666)
!1127 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1121, file: !561, line: 612, baseType: !1129, size: 64, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !561, line: 581, size: 320, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1136}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1130, file: !561, line: 583, baseType: !366, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1130, file: !561, line: 586, baseType: !719, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1130, file: !561, line: 589, baseType: !719, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1130, file: !561, line: 592, baseType: !719, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1130, file: !561, line: 595, baseType: !719, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1121, file: !561, line: 616, baseType: !971, size: 64, offset: 512)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !983, file: !561, line: 754, baseType: !1139, size: 512)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !561, line: 622, size: 512, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1139, file: !561, line: 624, baseType: !1047, size: 320)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1139, file: !561, line: 628, baseType: !719, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1139, file: !561, line: 632, baseType: !719, size: 64, offset: 384)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1139, file: !561, line: 636, baseType: !719, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !983, file: !561, line: 755, baseType: !1146, size: 704)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !561, line: 642, size: 704, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1151}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1146, file: !561, line: 644, baseType: !1139, size: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1146, file: !561, line: 648, baseType: !719, size: 64, offset: 512)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1146, file: !561, line: 652, baseType: !719, size: 64, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1146, file: !561, line: 653, baseType: !719, size: 64, offset: 640)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !983, file: !561, line: 756, baseType: !1153, size: 448)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !561, line: 663, size: 448, elements: !1154)
!1154 = !{!1155, !1156, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1153, file: !561, line: 665, baseType: !1047, size: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1153, file: !561, line: 668, baseType: !719, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1153, file: !561, line: 673, baseType: !719, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !983, file: !561, line: 757, baseType: !1159, size: 384)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !561, line: 694, size: 384, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1159, file: !561, line: 696, baseType: !1047, size: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1159, file: !561, line: 699, baseType: !719, size: 64, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !983, file: !561, line: 758, baseType: !1164, size: 384)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !561, line: 681, size: 384, elements: !1165)
!1165 = !{!1166, !1167, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1164, file: !561, line: 683, baseType: !986, size: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1164, file: !561, line: 686, baseType: !719, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1164, file: !561, line: 689, baseType: !719, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !983, file: !561, line: 759, baseType: !1170, size: 384)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !561, line: 707, size: 384, elements: !1171)
!1171 = !{!1172, !1173, !1174}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1170, file: !561, line: 709, baseType: !986, size: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1170, file: !561, line: 712, baseType: !719, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1170, file: !561, line: 712, baseType: !719, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !983, file: !561, line: 760, baseType: !1176, size: 320)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !561, line: 718, size: 320, elements: !1177)
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1176, file: !561, line: 720, baseType: !986, size: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1176, file: !561, line: 723, baseType: !719, size: 64, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !978, file: !561, line: 138, baseType: !977, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !978, file: !561, line: 139, baseType: !977, size: 64, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !973, file: !561, line: 146, baseType: !976, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !973, file: !561, line: 152, baseType: !971, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !968, file: !318, line: 130, baseType: !891, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !963, file: !318, line: 134, baseType: !645, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !963, file: !318, line: 137, baseType: !719, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !963, file: !318, line: 138, baseType: !841, size: 32, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !963, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !963, file: !318, line: 144, baseType: !641, size: 32, offset: 384)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !963, file: !318, line: 145, baseType: !641, size: 32, offset: 416)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !963, file: !318, line: 146, baseType: !1192, size: 64, offset: 448)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !683)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !946, file: !318, line: 220, baseType: !949, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !946, file: !318, line: 223, baseType: !645, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !946, file: !318, line: 226, baseType: !1196, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !318, line: 185, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !946, file: !318, line: 229, baseType: !1199, size: 128, offset: 256)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 128, elements: !667)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !946, file: !318, line: 232, baseType: !945, size: 64, offset: 384)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !946, file: !318, line: 233, baseType: !945, size: 64, offset: 448)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !946, file: !318, line: 238, baseType: !1205, size: 64, offset: 512)
!1205 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !1206)
!1206 = !{!1207, !1213}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1205, file: !318, line: 236, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1209, file: !318, line: 275, baseType: !971, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1209, file: !318, line: 278, baseType: !971, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1205, file: !318, line: 237, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1221}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1215, file: !318, line: 261, baseType: !891, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1215, file: !318, line: 262, baseType: !891, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1215, file: !318, line: 266, baseType: !891, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1215, file: !318, line: 267, baseType: !891, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1215, file: !318, line: 270, baseType: !641, size: 32, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !946, file: !318, line: 241, baseType: !1192, size: 64, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !946, file: !318, line: 244, baseType: !641, size: 32, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !946, file: !318, line: 247, baseType: !641, size: 32, offset: 672)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !946, file: !318, line: 250, baseType: !641, size: 32, offset: 704)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !946, file: !318, line: 253, baseType: !641, size: 32, offset: 736)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !946, file: !318, line: 256, baseType: !641, size: 32, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !912, file: !894, line: 179, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !894, line: 150, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !894, line: 142, size: 320, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1239, !1240}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1231, file: !894, line: 144, baseType: !719, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1231, file: !894, line: 145, baseType: !891, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1231, file: !894, line: 146, baseType: !891, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1231, file: !894, line: 147, baseType: !1237, size: 32, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1238, line: 31, baseType: !641)
!1238 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1231, file: !894, line: 148, baseType: !7, size: 32, offset: 224)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1231, file: !894, line: 149, baseType: !640, size: 8, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !912, file: !894, line: 180, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !894, line: 162, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !894, line: 159, size: 128, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1244, file: !894, line: 160, baseType: !719, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1244, file: !894, line: 161, baseType: !683, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !912, file: !894, line: 181, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !894, line: 181, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !907, file: !894, line: 317, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 64, elements: !815)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !907, file: !894, line: 318, baseType: !1254, size: 320)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !894, line: 188, size: 320, elements: !1255)
!1255 = !{!1256, !1258, !1281}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1254, file: !894, line: 190, baseType: !1257, size: 192)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !911, size: 192, elements: !790)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1254, file: !894, line: 193, baseType: !1259, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !894, line: 206, size: 320, elements: !1261)
!1261 = !{!1262, !1266, !1267, !1268, !1280}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1260, file: !894, line: 208, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !649, line: 62, baseType: !1265)
!1265 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !649, line: 61, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1260, file: !894, line: 211, baseType: !7, size: 32, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1260, file: !894, line: 214, baseType: !683, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1260, file: !894, line: 224, baseType: !1269, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !894, line: 202, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !894, line: 202, size: 128, elements: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1271, file: !894, line: 202, baseType: !1274, size: 128)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !894, line: 200, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !894, line: 200, size: 128, elements: !1276)
!1276 = !{!1277, !1278, !1279}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1275, file: !894, line: 200, baseType: !7, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1275, file: !894, line: 200, baseType: !7, size: 32, offset: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1275, file: !894, line: 200, baseType: !925, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1260, file: !894, line: 234, baseType: !1269, size: 64, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1254, file: !894, line: 197, baseType: !683, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !907, file: !894, line: 319, baseType: !779, size: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !907, file: !894, line: 320, baseType: !798, size: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !721, file: !334, line: 3384, baseType: !1285, size: 1472)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1286)
!1286 = !{!1287, !1308, !1309, !1310, !1311}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1285, file: !334, line: 3115, baseType: !1288, size: 1216)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1288, file: !334, line: 2985, baseType: !887, size: 960)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1288, file: !334, line: 2986, baseType: !719, size: 64, offset: 960)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1288, file: !334, line: 2987, baseType: !719, size: 64, offset: 1024)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1288, file: !334, line: 2988, baseType: !719, size: 64, offset: 1088)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1288, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1288, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1288, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1288, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1288, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1288, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1288, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1288, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1288, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1288, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1288, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1288, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1288, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1288, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1285, file: !334, line: 3117, baseType: !719, size: 64, offset: 1216)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1285, file: !334, line: 3119, baseType: !719, size: 64, offset: 1280)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1285, file: !334, line: 3121, baseType: !719, size: 64, offset: 1344)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1285, file: !334, line: 3123, baseType: !719, size: 64, offset: 1408)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !721, file: !334, line: 3385, baseType: !1313, size: 1088)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1314)
!1314 = !{!1315, !1316, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1313, file: !334, line: 2875, baseType: !887, size: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1313, file: !334, line: 2876, baseType: !891, size: 64, offset: 960)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1313, file: !334, line: 2877, baseType: !1318, size: 64, offset: 1024)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1320, line: 172, size: 128, elements: !1321)
!1320 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1319, file: !1320, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1319, file: !1320, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1319, file: !1320, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1319, file: !1320, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1319, file: !1320, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1319, file: !1320, line: 195, baseType: !7, size: 32, offset: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1319, file: !1320, line: 199, baseType: !719, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !721, file: !334, line: 3386, baseType: !1288, size: 1216)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !721, file: !334, line: 3387, baseType: !1331, size: 1280)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1332)
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1331, file: !334, line: 3094, baseType: !1288, size: 1216)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1331, file: !334, line: 3095, baseType: !1318, size: 64, offset: 1216)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !721, file: !334, line: 3388, baseType: !1336, size: 1216)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1337)
!1337 = !{!1338, !1339, !1340, !1341, !1342, !1343}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1336, file: !334, line: 2825, baseType: !849, size: 896)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1336, file: !334, line: 2827, baseType: !719, size: 64, offset: 896)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1336, file: !334, line: 2828, baseType: !719, size: 64, offset: 960)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1336, file: !334, line: 2829, baseType: !719, size: 64, offset: 1024)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1336, file: !334, line: 2830, baseType: !719, size: 64, offset: 1088)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1336, file: !334, line: 2831, baseType: !719, size: 64, offset: 1152)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !721, file: !334, line: 3389, baseType: !1345, size: 1024)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1346)
!1346 = !{!1347, !1348, !1349}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1345, file: !334, line: 2851, baseType: !887, size: 960)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1345, file: !334, line: 2852, baseType: !641, size: 32, offset: 960)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1345, file: !334, line: 2853, baseType: !641, size: 32, offset: 992)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !721, file: !334, line: 3390, baseType: !1351, size: 1024)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1352)
!1352 = !{!1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1351, file: !334, line: 2858, baseType: !887, size: 960)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1351, file: !334, line: 2859, baseType: !1318, size: 64, offset: 960)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !721, file: !334, line: 3391, baseType: !1356, size: 960)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1356, file: !334, line: 2863, baseType: !887, size: 960)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !721, file: !334, line: 3392, baseType: !1360, size: 1472)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1361)
!1361 = !{!1362}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1360, file: !334, line: 3305, baseType: !1285, size: 1472)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !721, file: !334, line: 3393, baseType: !1364, size: 1792)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1365)
!1365 = !{!1366, !1367, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1364, file: !334, line: 3249, baseType: !1285, size: 1472)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1364, file: !334, line: 3251, baseType: !1368, size: 64, offset: 1472)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1370, line: 463, size: 1152, elements: !1371)
!1370 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1371 = !{!1372, !1375, !1406, !1407, !1521, !1524, !1525, !1526, !1527, !1528, !1529, !1553, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1369, file: !1370, line: 464, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1370, line: 464, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1369, file: !1370, line: 467, baseType: !1376, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1378)
!1378 = !{!1379, !1381, !1382, !1395, !1396, !1397, !1398, !1399, !1400, !1402, !1404, !1405}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1377, file: !318, line: 377, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !649, line: 111, baseType: !945)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1377, file: !318, line: 378, baseType: !1380, size: 64, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1377, file: !318, line: 381, baseType: !1383, size: 64, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1386)
!1386 = !{!1387}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1385, file: !318, line: 282, baseType: !1388, size: 128)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1389)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1390)
!1390 = !{!1391, !1392, !1393}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1389, file: !318, line: 281, baseType: !7, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1389, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1389, file: !318, line: 281, baseType: !1394, size: 64, offset: 64)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, size: 64, elements: !815)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1377, file: !318, line: 384, baseType: !641, size: 32, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1377, file: !318, line: 387, baseType: !641, size: 32, offset: 224)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1377, file: !318, line: 390, baseType: !641, size: 32, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1377, file: !318, line: 394, baseType: !1383, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1377, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1377, file: !318, line: 399, baseType: !1401, size: 64, offset: 416)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !667)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1377, file: !318, line: 402, baseType: !1403, size: 64, offset: 480)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !667)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1377, file: !318, line: 406, baseType: !641, size: 32, offset: 544)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1377, file: !318, line: 409, baseType: !641, size: 32, offset: 576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1369, file: !1370, line: 470, baseType: !972, size: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1369, file: !1370, line: 473, baseType: !1408, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1320, line: 39, size: 1152, elements: !1410)
!1410 = !{!1411, !1461, !1474, !1486, !1487, !1498, !1499, !1503, !1504, !1505, !1506, !1507}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1409, file: !1320, line: 41, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1413, line: 144, baseType: !1414)
!1413 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1413, line: 100, size: 896, elements: !1416)
!1416 = !{!1417, !1425, !1430, !1435, !1437, !1438, !1439, !1440, !1441, !1442, !1447, !1449, !1450, !1455, !1460}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1415, file: !1413, line: 102, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1413, line: 52, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1413, line: 47, baseType: !7)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1415, file: !1413, line: 105, baseType: !1426, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1413, line: 59, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!641, !1423, !1423}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1415, file: !1413, line: 108, baseType: !1431, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1413, line: 63, baseType: !1432)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{null, !645}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1415, file: !1413, line: 111, baseType: !1436, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1415, file: !1413, line: 114, baseType: !1126, size: 64, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1415, file: !1413, line: 117, baseType: !1126, size: 64, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1415, file: !1413, line: 120, baseType: !1126, size: 64, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1415, file: !1413, line: 124, baseType: !7, size: 32, offset: 448)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1415, file: !1413, line: 128, baseType: !7, size: 32, offset: 480)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1415, file: !1413, line: 131, baseType: !1443, size: 64, offset: 512)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1413, line: 75, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!645, !1126, !1126}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1415, file: !1413, line: 132, baseType: !1448, size: 64, offset: 576)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1413, line: 78, baseType: !1432)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1415, file: !1413, line: 135, baseType: !645, size: 64, offset: 640)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1415, file: !1413, line: 136, baseType: !1451, size: 64, offset: 704)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1413, line: 82, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!645, !645, !1126, !1126}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1415, file: !1413, line: 137, baseType: !1456, size: 64, offset: 768)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1413, line: 83, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !645, !645}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1415, file: !1413, line: 141, baseType: !7, size: 32, offset: 832)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1409, file: !1320, line: 48, baseType: !1462, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !561, line: 35, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !561, line: 35, size: 128, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1464, file: !561, line: 35, baseType: !1467, size: 128)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !561, line: 33, baseType: !1468)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !561, line: 33, size: 128, elements: !1469)
!1469 = !{!1470, !1471, !1472}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1468, file: !561, line: 33, baseType: !7, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1468, file: !561, line: 33, baseType: !7, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1468, file: !561, line: 33, baseType: !1473, size: 64, offset: 64)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !981, size: 64, elements: !815)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1409, file: !1320, line: 51, baseType: !1475, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1478)
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1477, file: !334, line: 183, baseType: !1480, size: 128)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1482)
!1482 = !{!1483, !1484, !1485}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1481, file: !334, line: 182, baseType: !7, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1481, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1481, file: !334, line: 182, baseType: !1034, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1409, file: !1320, line: 54, baseType: !719, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1409, file: !1320, line: 57, baseType: !1488, size: 128, offset: 256)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1489, line: 31, size: 128, elements: !1490)
!1489 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1496, !1497}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1488, file: !1489, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1488, file: !1489, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1488, file: !1489, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1488, file: !1489, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1488, file: !1489, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1488, file: !1489, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1488, file: !1489, line: 56, baseType: !648, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1409, file: !1320, line: 60, baseType: !1488, size: 128, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1409, file: !1320, line: 64, baseType: !1500, size: 64, offset: 512)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1502, line: 33, flags: DIFlagFwdDecl)
!1502 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1409, file: !1320, line: 67, baseType: !719, size: 64, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1409, file: !1320, line: 73, baseType: !1412, size: 64, offset: 640)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1409, file: !1320, line: 77, baseType: !648, size: 64, offset: 704)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1409, file: !1320, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1409, file: !1320, line: 82, baseType: !1508, size: 320, offset: 832)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !626, line: 62, size: 320, elements: !1509)
!1509 = !{!1510, !1516, !1517, !1518, !1519, !1520}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1508, file: !626, line: 63, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !626, line: 56, size: 128, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1512, file: !626, line: 57, baseType: !1511, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1512, file: !626, line: 58, baseType: !814, size: 8, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1508, file: !626, line: 64, baseType: !7, size: 32, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1508, file: !626, line: 66, baseType: !7, size: 32, offset: 96)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1508, file: !626, line: 68, baseType: !640, size: 8, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1508, file: !626, line: 70, baseType: !1010, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1508, file: !626, line: 71, baseType: !1017, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1369, file: !1370, line: 476, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1370, line: 476, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1369, file: !1370, line: 479, baseType: !1412, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1369, file: !1370, line: 484, baseType: !719, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1369, file: !1370, line: 488, baseType: !719, size: 64, offset: 448)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1369, file: !1370, line: 493, baseType: !719, size: 64, offset: 512)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1369, file: !1370, line: 496, baseType: !719, size: 64, offset: 576)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1369, file: !1370, line: 501, baseType: !1530, size: 64, offset: 640)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !1532)
!1532 = !{!1533, !1536, !1537, !1538, !1539, !1541, !1542, !1547, !1548, !1549, !1550, !1551, !1552}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1531, file: !329, line: 2356, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1531, file: !329, line: 2357, baseType: !646, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1531, file: !329, line: 2358, baseType: !641, size: 32, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1531, file: !329, line: 2359, baseType: !641, size: 32, offset: 160)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1531, file: !329, line: 2360, baseType: !1540, size: 128, offset: 192)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 128, elements: !692)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1531, file: !329, line: 2364, baseType: !641, size: 32, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1531, file: !329, line: 2367, baseType: !1543, size: 128, offset: 384)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !1544)
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1543, file: !329, line: 2351, baseType: !891, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1543, file: !329, line: 2352, baseType: !683, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1531, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1531, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1531, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1531, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1531, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1531, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1369, file: !1370, line: 504, baseType: !1554, size: 64, offset: 704)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1370, line: 504, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1369, file: !1370, line: 507, baseType: !1412, size: 64, offset: 768)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1369, file: !1370, line: 510, baseType: !641, size: 32, offset: 832)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1369, file: !1370, line: 513, baseType: !641, size: 32, offset: 864)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1369, file: !1370, line: 516, baseType: !841, size: 32, offset: 896)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1369, file: !1370, line: 519, baseType: !841, size: 32, offset: 928)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1369, file: !1370, line: 522, baseType: !7, size: 32, offset: 960)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1369, file: !1370, line: 523, baseType: !7, size: 32, offset: 992)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1369, file: !1370, line: 528, baseType: !646, size: 64, offset: 1024)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1369, file: !1370, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1369, file: !1370, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1369, file: !1370, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1369, file: !1370, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1369, file: !1370, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1369, file: !1370, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1369, file: !1370, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1369, file: !1370, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1369, file: !1370, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1369, file: !1370, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1369, file: !1370, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1369, file: !1370, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1369, file: !1370, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1369, file: !1370, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1369, file: !1370, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1369, file: !1370, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1364, file: !334, line: 3254, baseType: !719, size: 64, offset: 1536)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1364, file: !334, line: 3257, baseType: !719, size: 64, offset: 1600)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1364, file: !334, line: 3258, baseType: !719, size: 64, offset: 1664)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1364, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1364, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1364, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1364, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1364, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1364, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1364, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1364, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1364, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1364, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1364, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1364, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1364, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1364, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1364, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1364, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1364, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1364, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !721, file: !334, line: 3394, baseType: !1602, size: 1344)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1602, file: !334, line: 2280, baseType: !757, size: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1602, file: !334, line: 2281, baseType: !719, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1602, file: !334, line: 2282, baseType: !719, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1602, file: !334, line: 2283, baseType: !719, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1602, file: !334, line: 2284, baseType: !719, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1602, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1602, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1602, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1602, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1602, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1602, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1602, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1602, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1602, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1602, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1602, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1602, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1602, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1602, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1602, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1602, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1602, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1602, file: !334, line: 2306, baseType: !1237, size: 32, offset: 544)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1602, file: !334, line: 2307, baseType: !719, size: 64, offset: 576)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1602, file: !334, line: 2308, baseType: !719, size: 64, offset: 640)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1602, file: !334, line: 2314, baseType: !1630, size: 64, offset: 704)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !1631)
!1631 = !{!1632, !1633, !1634}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1630, file: !334, line: 2310, baseType: !641, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1630, file: !334, line: 2311, baseType: !646, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1630, file: !334, line: 2312, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1602, file: !334, line: 2315, baseType: !719, size: 64, offset: 768)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1602, file: !334, line: 2316, baseType: !719, size: 64, offset: 832)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1602, file: !334, line: 2317, baseType: !719, size: 64, offset: 896)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1602, file: !334, line: 2318, baseType: !719, size: 64, offset: 960)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1602, file: !334, line: 2319, baseType: !719, size: 64, offset: 1024)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1602, file: !334, line: 2320, baseType: !719, size: 64, offset: 1088)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1602, file: !334, line: 2321, baseType: !719, size: 64, offset: 1152)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1602, file: !334, line: 2322, baseType: !719, size: 64, offset: 1216)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1602, file: !334, line: 2324, baseType: !1646, size: 64, offset: 1280)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !721, file: !334, line: 3395, baseType: !1649, size: 320)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !1650)
!1650 = !{!1651, !1652, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1649, file: !334, line: 1470, baseType: !757, size: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1649, file: !334, line: 1471, baseType: !719, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1649, file: !334, line: 1472, baseType: !719, size: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !721, file: !334, line: 3396, baseType: !1655, size: 320)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !1656)
!1656 = !{!1657, !1658, !1659}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1655, file: !334, line: 1483, baseType: !757, size: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1655, file: !334, line: 1484, baseType: !641, size: 32, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1655, file: !334, line: 1485, baseType: !1034, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !721, file: !334, line: 3397, baseType: !1661, size: 384)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1661, file: !334, line: 1830, baseType: !757, size: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1661, file: !334, line: 1831, baseType: !841, size: 32, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1661, file: !334, line: 1832, baseType: !719, size: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1661, file: !334, line: 1835, baseType: !1034, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !721, file: !334, line: 3398, baseType: !1668, size: 704)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1674, !1679}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1668, file: !334, line: 1899, baseType: !757, size: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1668, file: !334, line: 1902, baseType: !719, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1668, file: !334, line: 1905, baseType: !981, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1668, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1668, file: !334, line: 1911, baseType: !1675, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1320, line: 117, size: 128, elements: !1677)
!1677 = !{!1678}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1676, file: !1320, line: 120, baseType: !1488, size: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1668, file: !334, line: 1914, baseType: !1022, size: 256, offset: 448)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !721, file: !334, line: 3399, baseType: !1681, size: 704)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1681, file: !334, line: 2009, baseType: !757, size: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1681, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1681, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1681, file: !334, line: 2014, baseType: !841, size: 32, offset: 224)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1681, file: !334, line: 2016, baseType: !719, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1681, file: !334, line: 2017, baseType: !1475, size: 64, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1681, file: !334, line: 2019, baseType: !719, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1681, file: !334, line: 2020, baseType: !719, size: 64, offset: 448)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1681, file: !334, line: 2021, baseType: !719, size: 64, offset: 512)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1681, file: !334, line: 2022, baseType: !719, size: 64, offset: 576)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1681, file: !334, line: 2023, baseType: !719, size: 64, offset: 640)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !721, file: !334, line: 3400, baseType: !1695, size: 832)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !1696)
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1695, file: !334, line: 2431, baseType: !757, size: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1695, file: !334, line: 2433, baseType: !719, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1695, file: !334, line: 2434, baseType: !719, size: 64, offset: 256)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1695, file: !334, line: 2435, baseType: !719, size: 64, offset: 320)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1695, file: !334, line: 2436, baseType: !719, size: 64, offset: 384)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1695, file: !334, line: 2437, baseType: !1475, size: 64, offset: 448)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1695, file: !334, line: 2438, baseType: !719, size: 64, offset: 512)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1695, file: !334, line: 2440, baseType: !719, size: 64, offset: 576)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1695, file: !334, line: 2441, baseType: !719, size: 64, offset: 640)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1695, file: !334, line: 2443, baseType: !1707, size: 128, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !1709)
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1708, file: !334, line: 182, baseType: !1480, size: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !721, file: !334, line: 3401, baseType: !1712, size: 320)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !1713)
!1713 = !{!1714, !1715, !1722}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1712, file: !334, line: 3329, baseType: !757, size: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1712, file: !334, line: 3330, baseType: !1716, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !1718)
!1718 = !{!1719, !1720, !1721}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1717, file: !334, line: 3322, baseType: !1716, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1717, file: !334, line: 3323, baseType: !1716, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1717, file: !334, line: 3324, baseType: !719, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1712, file: !334, line: 3331, baseType: !1716, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !721, file: !334, line: 3402, baseType: !1724, size: 256)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1724, file: !334, line: 1541, baseType: !757, size: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1724, file: !334, line: 1542, baseType: !1728, size: 64, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !1731)
!1731 = !{!1732}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1730, file: !334, line: 1538, baseType: !1733, size: 192)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !1735)
!1735 = !{!1736, !1737, !1738}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1734, file: !334, line: 1537, baseType: !7, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1734, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1734, file: !334, line: 1537, baseType: !1739, size: 128, offset: 64)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1740, size: 128, elements: !815)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !1741)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1741, file: !334, line: 1533, baseType: !719, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1741, file: !334, line: 1534, baseType: !719, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !721, file: !334, line: 3403, baseType: !1746, size: 512)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751, !1757, !1758, !1759}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1746, file: !334, line: 1939, baseType: !757, size: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1746, file: !334, line: 1940, baseType: !841, size: 32, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1746, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1746, file: !334, line: 1946, baseType: !1752, size: 32, offset: 256)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !1753)
!1753 = !{!1754, !1755, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1752, file: !334, line: 1943, baseType: !352, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1752, file: !334, line: 1944, baseType: !359, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1752, file: !334, line: 1945, baseType: !366, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1746, file: !334, line: 1950, baseType: !971, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1746, file: !334, line: 1951, baseType: !971, size: 64, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1746, file: !334, line: 1953, baseType: !1034, size: 64, offset: 448)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !721, file: !334, line: 3404, baseType: !1761, size: 1664)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !1762)
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1761, file: !334, line: 3338, baseType: !757, size: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1761, file: !334, line: 3341, baseType: !1765, size: 1472, offset: 192)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1766, line: 410, size: 1472, elements: !1767)
!1766 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1765, file: !1766, line: 412, baseType: !641, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1765, file: !1766, line: 413, baseType: !641, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1765, file: !1766, line: 414, baseType: !641, size: 32, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1765, file: !1766, line: 415, baseType: !641, size: 32, offset: 96)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1765, file: !1766, line: 416, baseType: !641, size: 32, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1765, file: !1766, line: 417, baseType: !641, size: 32, offset: 160)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1765, file: !1766, line: 418, baseType: !640, size: 8, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1765, file: !1766, line: 419, baseType: !640, size: 8, offset: 200)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1765, file: !1766, line: 420, baseType: !1777, size: 8, offset: 208)
!1777 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1765, file: !1766, line: 421, baseType: !1777, size: 8, offset: 216)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1765, file: !1766, line: 422, baseType: !1777, size: 8, offset: 224)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1765, file: !1766, line: 423, baseType: !1777, size: 8, offset: 232)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1765, file: !1766, line: 424, baseType: !1777, size: 8, offset: 240)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1765, file: !1766, line: 425, baseType: !1777, size: 8, offset: 248)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1765, file: !1766, line: 426, baseType: !1777, size: 8, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1765, file: !1766, line: 427, baseType: !1777, size: 8, offset: 264)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1765, file: !1766, line: 428, baseType: !1777, size: 8, offset: 272)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1765, file: !1766, line: 429, baseType: !1777, size: 8, offset: 280)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1765, file: !1766, line: 430, baseType: !1777, size: 8, offset: 288)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1765, file: !1766, line: 431, baseType: !1777, size: 8, offset: 296)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1765, file: !1766, line: 432, baseType: !1777, size: 8, offset: 304)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1765, file: !1766, line: 433, baseType: !1777, size: 8, offset: 312)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1765, file: !1766, line: 434, baseType: !1777, size: 8, offset: 320)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1765, file: !1766, line: 435, baseType: !1777, size: 8, offset: 328)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1765, file: !1766, line: 436, baseType: !1777, size: 8, offset: 336)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1765, file: !1766, line: 437, baseType: !1777, size: 8, offset: 344)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1765, file: !1766, line: 438, baseType: !1777, size: 8, offset: 352)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1765, file: !1766, line: 439, baseType: !1777, size: 8, offset: 360)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1765, file: !1766, line: 440, baseType: !1777, size: 8, offset: 368)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1765, file: !1766, line: 441, baseType: !1777, size: 8, offset: 376)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1765, file: !1766, line: 442, baseType: !1777, size: 8, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1765, file: !1766, line: 443, baseType: !1777, size: 8, offset: 392)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1765, file: !1766, line: 444, baseType: !1777, size: 8, offset: 400)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1765, file: !1766, line: 445, baseType: !1777, size: 8, offset: 408)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1765, file: !1766, line: 446, baseType: !1777, size: 8, offset: 416)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1765, file: !1766, line: 447, baseType: !1777, size: 8, offset: 424)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1765, file: !1766, line: 448, baseType: !1777, size: 8, offset: 432)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1765, file: !1766, line: 449, baseType: !1777, size: 8, offset: 440)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1765, file: !1766, line: 450, baseType: !1777, size: 8, offset: 448)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1765, file: !1766, line: 451, baseType: !1777, size: 8, offset: 456)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1765, file: !1766, line: 452, baseType: !1777, size: 8, offset: 464)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1765, file: !1766, line: 453, baseType: !1777, size: 8, offset: 472)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1765, file: !1766, line: 454, baseType: !1777, size: 8, offset: 480)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1765, file: !1766, line: 455, baseType: !1777, size: 8, offset: 488)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1765, file: !1766, line: 456, baseType: !1777, size: 8, offset: 496)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1765, file: !1766, line: 457, baseType: !1777, size: 8, offset: 504)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1765, file: !1766, line: 458, baseType: !1777, size: 8, offset: 512)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1765, file: !1766, line: 459, baseType: !1777, size: 8, offset: 520)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1765, file: !1766, line: 460, baseType: !1777, size: 8, offset: 528)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1765, file: !1766, line: 461, baseType: !1777, size: 8, offset: 536)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1765, file: !1766, line: 462, baseType: !1777, size: 8, offset: 544)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1765, file: !1766, line: 463, baseType: !1777, size: 8, offset: 552)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1765, file: !1766, line: 464, baseType: !1777, size: 8, offset: 560)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1765, file: !1766, line: 465, baseType: !1777, size: 8, offset: 568)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1765, file: !1766, line: 466, baseType: !1777, size: 8, offset: 576)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1765, file: !1766, line: 467, baseType: !1777, size: 8, offset: 584)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1765, file: !1766, line: 468, baseType: !1777, size: 8, offset: 592)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1765, file: !1766, line: 469, baseType: !1777, size: 8, offset: 600)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1765, file: !1766, line: 470, baseType: !1777, size: 8, offset: 608)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1765, file: !1766, line: 471, baseType: !1777, size: 8, offset: 616)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1765, file: !1766, line: 472, baseType: !1777, size: 8, offset: 624)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1765, file: !1766, line: 473, baseType: !1777, size: 8, offset: 632)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1765, file: !1766, line: 474, baseType: !1777, size: 8, offset: 640)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1765, file: !1766, line: 475, baseType: !1777, size: 8, offset: 648)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1765, file: !1766, line: 476, baseType: !1777, size: 8, offset: 656)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1765, file: !1766, line: 477, baseType: !1777, size: 8, offset: 664)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1765, file: !1766, line: 478, baseType: !1777, size: 8, offset: 672)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1765, file: !1766, line: 479, baseType: !1777, size: 8, offset: 680)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1765, file: !1766, line: 480, baseType: !1777, size: 8, offset: 688)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1765, file: !1766, line: 481, baseType: !1777, size: 8, offset: 696)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1765, file: !1766, line: 482, baseType: !1777, size: 8, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1765, file: !1766, line: 483, baseType: !1777, size: 8, offset: 712)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1765, file: !1766, line: 484, baseType: !1777, size: 8, offset: 720)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1765, file: !1766, line: 485, baseType: !1777, size: 8, offset: 728)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1765, file: !1766, line: 486, baseType: !1777, size: 8, offset: 736)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1765, file: !1766, line: 487, baseType: !1777, size: 8, offset: 744)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1765, file: !1766, line: 488, baseType: !1777, size: 8, offset: 752)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1765, file: !1766, line: 489, baseType: !1777, size: 8, offset: 760)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1765, file: !1766, line: 490, baseType: !1777, size: 8, offset: 768)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1765, file: !1766, line: 491, baseType: !1777, size: 8, offset: 776)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1765, file: !1766, line: 492, baseType: !1777, size: 8, offset: 784)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1765, file: !1766, line: 493, baseType: !1777, size: 8, offset: 792)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1765, file: !1766, line: 494, baseType: !1777, size: 8, offset: 800)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1765, file: !1766, line: 495, baseType: !1777, size: 8, offset: 808)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1765, file: !1766, line: 496, baseType: !1777, size: 8, offset: 816)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1765, file: !1766, line: 497, baseType: !1777, size: 8, offset: 824)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1765, file: !1766, line: 498, baseType: !1777, size: 8, offset: 832)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1765, file: !1766, line: 499, baseType: !1777, size: 8, offset: 840)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1765, file: !1766, line: 500, baseType: !1777, size: 8, offset: 848)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1765, file: !1766, line: 501, baseType: !1777, size: 8, offset: 856)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1765, file: !1766, line: 502, baseType: !1777, size: 8, offset: 864)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1765, file: !1766, line: 503, baseType: !1777, size: 8, offset: 872)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1765, file: !1766, line: 504, baseType: !1777, size: 8, offset: 880)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1765, file: !1766, line: 505, baseType: !1777, size: 8, offset: 888)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1765, file: !1766, line: 506, baseType: !1777, size: 8, offset: 896)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1765, file: !1766, line: 507, baseType: !1777, size: 8, offset: 904)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1765, file: !1766, line: 508, baseType: !1777, size: 8, offset: 912)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1765, file: !1766, line: 509, baseType: !1777, size: 8, offset: 920)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1765, file: !1766, line: 510, baseType: !1777, size: 8, offset: 928)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1765, file: !1766, line: 511, baseType: !1777, size: 8, offset: 936)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1765, file: !1766, line: 512, baseType: !1777, size: 8, offset: 944)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1765, file: !1766, line: 513, baseType: !1777, size: 8, offset: 952)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1765, file: !1766, line: 514, baseType: !1777, size: 8, offset: 960)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1765, file: !1766, line: 515, baseType: !1777, size: 8, offset: 968)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1765, file: !1766, line: 516, baseType: !1777, size: 8, offset: 976)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1765, file: !1766, line: 517, baseType: !1777, size: 8, offset: 984)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1765, file: !1766, line: 518, baseType: !1777, size: 8, offset: 992)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1765, file: !1766, line: 519, baseType: !1777, size: 8, offset: 1000)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1765, file: !1766, line: 520, baseType: !1777, size: 8, offset: 1008)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1765, file: !1766, line: 521, baseType: !1777, size: 8, offset: 1016)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1765, file: !1766, line: 522, baseType: !1777, size: 8, offset: 1024)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1765, file: !1766, line: 523, baseType: !1777, size: 8, offset: 1032)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1765, file: !1766, line: 524, baseType: !1777, size: 8, offset: 1040)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1765, file: !1766, line: 525, baseType: !1777, size: 8, offset: 1048)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1765, file: !1766, line: 526, baseType: !1777, size: 8, offset: 1056)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1765, file: !1766, line: 527, baseType: !1777, size: 8, offset: 1064)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1765, file: !1766, line: 528, baseType: !1777, size: 8, offset: 1072)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1765, file: !1766, line: 529, baseType: !1777, size: 8, offset: 1080)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1765, file: !1766, line: 530, baseType: !1777, size: 8, offset: 1088)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1765, file: !1766, line: 531, baseType: !1777, size: 8, offset: 1096)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1765, file: !1766, line: 532, baseType: !1777, size: 8, offset: 1104)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1765, file: !1766, line: 533, baseType: !1777, size: 8, offset: 1112)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1765, file: !1766, line: 534, baseType: !1777, size: 8, offset: 1120)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1765, file: !1766, line: 535, baseType: !1777, size: 8, offset: 1128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1765, file: !1766, line: 536, baseType: !1777, size: 8, offset: 1136)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1765, file: !1766, line: 537, baseType: !1777, size: 8, offset: 1144)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1765, file: !1766, line: 538, baseType: !1777, size: 8, offset: 1152)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1765, file: !1766, line: 539, baseType: !1777, size: 8, offset: 1160)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1765, file: !1766, line: 540, baseType: !1777, size: 8, offset: 1168)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1765, file: !1766, line: 541, baseType: !1777, size: 8, offset: 1176)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1765, file: !1766, line: 542, baseType: !1777, size: 8, offset: 1184)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1765, file: !1766, line: 543, baseType: !1777, size: 8, offset: 1192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1765, file: !1766, line: 544, baseType: !1777, size: 8, offset: 1200)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1765, file: !1766, line: 545, baseType: !1777, size: 8, offset: 1208)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1765, file: !1766, line: 546, baseType: !1777, size: 8, offset: 1216)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1765, file: !1766, line: 547, baseType: !1777, size: 8, offset: 1224)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1765, file: !1766, line: 548, baseType: !1777, size: 8, offset: 1232)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1765, file: !1766, line: 549, baseType: !1777, size: 8, offset: 1240)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1765, file: !1766, line: 550, baseType: !1777, size: 8, offset: 1248)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1765, file: !1766, line: 551, baseType: !1777, size: 8, offset: 1256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1765, file: !1766, line: 552, baseType: !1777, size: 8, offset: 1264)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1765, file: !1766, line: 553, baseType: !1777, size: 8, offset: 1272)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1765, file: !1766, line: 554, baseType: !1777, size: 8, offset: 1280)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1765, file: !1766, line: 555, baseType: !1777, size: 8, offset: 1288)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1765, file: !1766, line: 556, baseType: !1777, size: 8, offset: 1296)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1765, file: !1766, line: 557, baseType: !1777, size: 8, offset: 1304)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1765, file: !1766, line: 558, baseType: !1777, size: 8, offset: 1312)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1765, file: !1766, line: 559, baseType: !1777, size: 8, offset: 1320)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1765, file: !1766, line: 560, baseType: !1777, size: 8, offset: 1328)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1765, file: !1766, line: 561, baseType: !1777, size: 8, offset: 1336)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1765, file: !1766, line: 562, baseType: !1777, size: 8, offset: 1344)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1765, file: !1766, line: 563, baseType: !1777, size: 8, offset: 1352)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1765, file: !1766, line: 564, baseType: !1777, size: 8, offset: 1360)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1765, file: !1766, line: 565, baseType: !1777, size: 8, offset: 1368)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1765, file: !1766, line: 566, baseType: !1777, size: 8, offset: 1376)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1765, file: !1766, line: 567, baseType: !1777, size: 8, offset: 1384)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1765, file: !1766, line: 568, baseType: !1777, size: 8, offset: 1392)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1765, file: !1766, line: 569, baseType: !1777, size: 8, offset: 1400)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1765, file: !1766, line: 570, baseType: !1777, size: 8, offset: 1408)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1765, file: !1766, line: 571, baseType: !1777, size: 8, offset: 1416)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1765, file: !1766, line: 572, baseType: !1777, size: 8, offset: 1424)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1765, file: !1766, line: 573, baseType: !1777, size: 8, offset: 1432)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1765, file: !1766, line: 574, baseType: !1777, size: 8, offset: 1440)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !721, file: !334, line: 3405, baseType: !1933, size: 384)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1933, file: !334, line: 3353, baseType: !757, size: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1933, file: !334, line: 3356, baseType: !1937, size: 192, offset: 192)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1766, line: 578, size: 192, elements: !1938)
!1938 = !{!1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1937, file: !1766, line: 580, baseType: !641, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1937, file: !1766, line: 581, baseType: !641, size: 32, offset: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1937, file: !1766, line: 582, baseType: !641, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1937, file: !1766, line: 583, baseType: !641, size: 32, offset: 96)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1937, file: !1766, line: 584, baseType: !640, size: 8, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1937, file: !1766, line: 585, baseType: !640, size: 8, offset: 136)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1937, file: !1766, line: 586, baseType: !640, size: 8, offset: 144)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1937, file: !1766, line: 587, baseType: !640, size: 8, offset: 152)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1937, file: !1766, line: 588, baseType: !640, size: 8, offset: 160)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1937, file: !1766, line: 589, baseType: !640, size: 8, offset: 168)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1937, file: !1766, line: 590, baseType: !640, size: 8, offset: 176)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !983)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !626, line: 30, baseType: !1953)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !334, line: 1893, baseType: !1022)
!1955 = !{!0}
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !1957)
!1957 = !{!1958}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1956, file: !6, line: 158, baseType: !1959, size: 640)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1967, !1971, !1973, !1974, !1975, !1977, !1978, !1979, !1980, !1981}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1959, file: !6, line: 117, baseType: !5, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1959, file: !6, line: 121, baseType: !646, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1959, file: !6, line: 125, baseType: !1964, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!640}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1959, file: !6, line: 130, baseType: !1968, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!7}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1959, file: !6, line: 133, baseType: !1972, size: 64, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1959, file: !6, line: 136, baseType: !1972, size: 64, offset: 320)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1959, file: !6, line: 139, baseType: !641, size: 32, offset: 384)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1959, file: !6, line: 143, baseType: !1976, size: 32, offset: 416)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1959, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1959, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1959, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1959, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1959, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1982 = !{i32 2, !"Dwarf Version", i32 4}
!1983 = !{i32 2, !"Debug Info Version", i32 3}
!1984 = !{i32 1, !"wchar_size", i32 4}
!1985 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1986 = distinct !DISubprogram(name: "vprintf", scope: !1987, file: !1987, line: 39, type: !1988, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1998)
!1987 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!641, !1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !646)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1993)
!1993 = !{!1994, !1995, !1996, !1997}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1992, file: !3, baseType: !7, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1992, file: !3, baseType: !7, size: 32, offset: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1992, file: !3, baseType: !645, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1992, file: !3, baseType: !645, size: 64, offset: 128)
!1998 = !{!1999, !2000}
!1999 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1986, file: !1987, line: 39, type: !1990)
!2000 = !DILocalVariable(name: "__arg", arg: 2, scope: !1986, file: !1987, line: 39, type: !1991)
!2001 = !DILocation(line: 0, scope: !1986)
!2002 = !DILocation(line: 41, column: 20, scope: !1986)
!2003 = !DILocation(line: 41, column: 10, scope: !1986)
!2004 = !DILocation(line: 41, column: 3, scope: !1986)
!2005 = distinct !DISubprogram(name: "getchar", scope: !1987, file: !1987, line: 47, type: !2006, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2008)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!641}
!2008 = !{}
!2009 = !DILocation(line: 49, column: 16, scope: !2005)
!2010 = !DILocation(line: 49, column: 10, scope: !2005)
!2011 = !DILocation(line: 49, column: 3, scope: !2005)
!2012 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1987, file: !1987, line: 56, type: !2013, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!641, !2015}
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2017, line: 7, baseType: !2018)
!2017 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2019, line: 49, size: 1728, elements: !2020)
!2019 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2036, !2038, !2039, !2040, !2043, !2045, !2046, !2047, !2050, !2052, !2055, !2058, !2059, !2060, !2061, !2062}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2018, file: !2019, line: 51, baseType: !641, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2018, file: !2019, line: 54, baseType: !643, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2018, file: !2019, line: 55, baseType: !643, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2018, file: !2019, line: 56, baseType: !643, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2018, file: !2019, line: 57, baseType: !643, size: 64, offset: 256)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2018, file: !2019, line: 58, baseType: !643, size: 64, offset: 320)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2018, file: !2019, line: 59, baseType: !643, size: 64, offset: 384)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2018, file: !2019, line: 60, baseType: !643, size: 64, offset: 448)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2018, file: !2019, line: 61, baseType: !643, size: 64, offset: 512)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2018, file: !2019, line: 64, baseType: !643, size: 64, offset: 576)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2018, file: !2019, line: 65, baseType: !643, size: 64, offset: 640)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2018, file: !2019, line: 66, baseType: !643, size: 64, offset: 704)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2018, file: !2019, line: 68, baseType: !2034, size: 64, offset: 768)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2019, line: 36, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2018, file: !2019, line: 70, baseType: !2037, size: 64, offset: 832)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2018, file: !2019, line: 72, baseType: !641, size: 32, offset: 896)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2018, file: !2019, line: 73, baseType: !641, size: 32, offset: 928)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2018, file: !2019, line: 74, baseType: !2041, size: 64, offset: 960)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2042, line: 152, baseType: !683)
!2042 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2018, file: !2019, line: 77, baseType: !2044, size: 16, offset: 1024)
!2044 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2018, file: !2019, line: 78, baseType: !1777, size: 8, offset: 1040)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2018, file: !2019, line: 79, baseType: !814, size: 8, offset: 1048)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2018, file: !2019, line: 81, baseType: !2048, size: 64, offset: 1088)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2019, line: 43, baseType: null)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2018, file: !2019, line: 89, baseType: !2051, size: 64, offset: 1152)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2042, line: 153, baseType: !683)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2018, file: !2019, line: 91, baseType: !2053, size: 64, offset: 1216)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2019, line: 37, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2018, file: !2019, line: 92, baseType: !2056, size: 64, offset: 1280)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2019, line: 38, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2018, file: !2019, line: 93, baseType: !2037, size: 64, offset: 1344)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2018, file: !2019, line: 94, baseType: !645, size: 64, offset: 1408)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2018, file: !2019, line: 95, baseType: !1126, size: 64, offset: 1472)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2018, file: !2019, line: 96, baseType: !641, size: 32, offset: 1536)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2018, file: !2019, line: 98, baseType: !2063, size: 160, offset: 1568)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 160, elements: !2064)
!2064 = !{!2065}
!2065 = !DISubrange(count: 20)
!2066 = !{!2067}
!2067 = !DILocalVariable(name: "__fp", arg: 1, scope: !2012, file: !1987, line: 56, type: !2015)
!2068 = !DILocation(line: 0, scope: !2012)
!2069 = !DILocation(line: 58, column: 10, scope: !2012)
!2070 = !DILocation(line: 58, column: 3, scope: !2012)
!2071 = distinct !DISubprogram(name: "getc_unlocked", scope: !1987, file: !1987, line: 66, type: !2013, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2072 = !{!2073}
!2073 = !DILocalVariable(name: "__fp", arg: 1, scope: !2071, file: !1987, line: 66, type: !2015)
!2074 = !DILocation(line: 0, scope: !2071)
!2075 = !DILocation(line: 68, column: 10, scope: !2071)
!2076 = !DILocation(line: 68, column: 3, scope: !2071)
!2077 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1987, file: !1987, line: 73, type: !2006, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2008)
!2078 = !DILocation(line: 75, column: 10, scope: !2077)
!2079 = !DILocation(line: 75, column: 3, scope: !2077)
!2080 = distinct !DISubprogram(name: "putchar", scope: !1987, file: !1987, line: 82, type: !2081, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!641, !641}
!2083 = !{!2084}
!2084 = !DILocalVariable(name: "__c", arg: 1, scope: !2080, file: !1987, line: 82, type: !641)
!2085 = !DILocation(line: 0, scope: !2080)
!2086 = !DILocation(line: 84, column: 21, scope: !2080)
!2087 = !DILocation(line: 84, column: 10, scope: !2080)
!2088 = !DILocation(line: 84, column: 3, scope: !2080)
!2089 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1987, file: !1987, line: 91, type: !2090, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!641, !641, !2015}
!2092 = !{!2093, !2094}
!2093 = !DILocalVariable(name: "__c", arg: 1, scope: !2089, file: !1987, line: 91, type: !641)
!2094 = !DILocalVariable(name: "__stream", arg: 2, scope: !2089, file: !1987, line: 91, type: !2015)
!2095 = !DILocation(line: 0, scope: !2089)
!2096 = !DILocation(line: 93, column: 10, scope: !2089)
!2097 = !DILocation(line: 93, column: 3, scope: !2089)
!2098 = distinct !DISubprogram(name: "putc_unlocked", scope: !1987, file: !1987, line: 101, type: !2090, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2099 = !{!2100, !2101}
!2100 = !DILocalVariable(name: "__c", arg: 1, scope: !2098, file: !1987, line: 101, type: !641)
!2101 = !DILocalVariable(name: "__stream", arg: 2, scope: !2098, file: !1987, line: 101, type: !2015)
!2102 = !DILocation(line: 0, scope: !2098)
!2103 = !DILocation(line: 103, column: 10, scope: !2098)
!2104 = !DILocation(line: 103, column: 3, scope: !2098)
!2105 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1987, file: !1987, line: 108, type: !2081, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2106)
!2106 = !{!2107}
!2107 = !DILocalVariable(name: "__c", arg: 1, scope: !2105, file: !1987, line: 108, type: !641)
!2108 = !DILocation(line: 0, scope: !2105)
!2109 = !DILocation(line: 110, column: 10, scope: !2105)
!2110 = !DILocation(line: 110, column: 3, scope: !2105)
!2111 = distinct !DISubprogram(name: "getline", scope: !1987, file: !1987, line: 118, type: !2112, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!2114, !642, !2115, !2015}
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2042, line: 193, baseType: !683)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!2116 = !{!2117, !2118, !2119}
!2117 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2111, file: !1987, line: 118, type: !642)
!2118 = !DILocalVariable(name: "__n", arg: 2, scope: !2111, file: !1987, line: 118, type: !2115)
!2119 = !DILocalVariable(name: "__stream", arg: 3, scope: !2111, file: !1987, line: 118, type: !2015)
!2120 = !DILocation(line: 0, scope: !2111)
!2121 = !DILocation(line: 120, column: 10, scope: !2111)
!2122 = !DILocation(line: 120, column: 3, scope: !2111)
!2123 = distinct !DISubprogram(name: "feof_unlocked", scope: !1987, file: !1987, line: 128, type: !2013, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2124)
!2124 = !{!2125}
!2125 = !DILocalVariable(name: "__stream", arg: 1, scope: !2123, file: !1987, line: 128, type: !2015)
!2126 = !DILocation(line: 0, scope: !2123)
!2127 = !DILocation(line: 130, column: 10, scope: !2123)
!2128 = !DILocation(line: 130, column: 3, scope: !2123)
!2129 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1987, file: !1987, line: 135, type: !2013, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2130)
!2130 = !{!2131}
!2131 = !DILocalVariable(name: "__stream", arg: 1, scope: !2129, file: !1987, line: 135, type: !2015)
!2132 = !DILocation(line: 0, scope: !2129)
!2133 = !DILocation(line: 137, column: 10, scope: !2129)
!2134 = !DILocation(line: 137, column: 3, scope: !2129)
!2135 = distinct !DISubprogram(name: "tolower", scope: !2136, file: !2136, line: 207, type: !2081, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!2136 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2137 = !{!2138}
!2138 = !DILocalVariable(name: "__c", arg: 1, scope: !2135, file: !2136, line: 207, type: !641)
!2139 = !DILocation(line: 0, scope: !2135)
!2140 = !DILocation(line: 209, column: 22, scope: !2135)
!2141 = !DILocation(line: 209, column: 39, scope: !2135)
!2142 = !DILocation(line: 209, column: 38, scope: !2135)
!2143 = !DILocation(line: 209, column: 37, scope: !2135)
!2144 = !DILocation(line: 209, column: 10, scope: !2135)
!2145 = !DILocation(line: 209, column: 3, scope: !2135)
!2146 = distinct !DISubprogram(name: "toupper", scope: !2136, file: !2136, line: 213, type: !2081, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2147)
!2147 = !{!2148}
!2148 = !DILocalVariable(name: "__c", arg: 1, scope: !2146, file: !2136, line: 213, type: !641)
!2149 = !DILocation(line: 0, scope: !2146)
!2150 = !DILocation(line: 215, column: 22, scope: !2146)
!2151 = !DILocation(line: 215, column: 39, scope: !2146)
!2152 = !DILocation(line: 215, column: 38, scope: !2146)
!2153 = !DILocation(line: 215, column: 37, scope: !2146)
!2154 = !DILocation(line: 215, column: 10, scope: !2146)
!2155 = !DILocation(line: 215, column: 3, scope: !2146)
!2156 = distinct !DISubprogram(name: "atoi", scope: !2157, file: !2157, line: 361, type: !2158, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2160)
!2157 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!641, !646}
!2160 = !{!2161}
!2161 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2156, file: !2157, line: 361, type: !646)
!2162 = !DILocation(line: 0, scope: !2156)
!2163 = !DILocation(line: 363, column: 16, scope: !2156)
!2164 = !DILocation(line: 363, column: 10, scope: !2156)
!2165 = !DILocation(line: 363, column: 3, scope: !2156)
!2166 = distinct !DISubprogram(name: "atol", scope: !2157, file: !2157, line: 366, type: !2167, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!683, !646}
!2169 = !{!2170}
!2170 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2166, file: !2157, line: 366, type: !646)
!2171 = !DILocation(line: 0, scope: !2166)
!2172 = !DILocation(line: 368, column: 10, scope: !2166)
!2173 = !DILocation(line: 368, column: 3, scope: !2166)
!2174 = distinct !DISubprogram(name: "atoll", scope: !2157, file: !2157, line: 373, type: !2175, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2178)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!2177, !646}
!2177 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2178 = !{!2179}
!2179 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2174, file: !2157, line: 373, type: !646)
!2180 = !DILocation(line: 0, scope: !2174)
!2181 = !DILocation(line: 375, column: 10, scope: !2174)
!2182 = !DILocation(line: 375, column: 3, scope: !2174)
!2183 = distinct !DISubprogram(name: "bsearch", scope: !2184, file: !2184, line: 20, type: !2185, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2188)
!2184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!645, !1423, !1423, !1126, !1126, !2187}
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2157, line: 808, baseType: !1427)
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198}
!2189 = !DILocalVariable(name: "__key", arg: 1, scope: !2183, file: !2184, line: 20, type: !1423)
!2190 = !DILocalVariable(name: "__base", arg: 2, scope: !2183, file: !2184, line: 20, type: !1423)
!2191 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2183, file: !2184, line: 20, type: !1126)
!2192 = !DILocalVariable(name: "__size", arg: 4, scope: !2183, file: !2184, line: 20, type: !1126)
!2193 = !DILocalVariable(name: "__compar", arg: 5, scope: !2183, file: !2184, line: 21, type: !2187)
!2194 = !DILocalVariable(name: "__l", scope: !2183, file: !2184, line: 23, type: !1126)
!2195 = !DILocalVariable(name: "__u", scope: !2183, file: !2184, line: 23, type: !1126)
!2196 = !DILocalVariable(name: "__idx", scope: !2183, file: !2184, line: 23, type: !1126)
!2197 = !DILocalVariable(name: "__p", scope: !2183, file: !2184, line: 24, type: !1423)
!2198 = !DILocalVariable(name: "__comparison", scope: !2183, file: !2184, line: 25, type: !641)
!2199 = !DILocation(line: 0, scope: !2183)
!2200 = !DILocation(line: 29, column: 3, scope: !2183)
!2201 = !DILocation(line: 27, column: 7, scope: !2183)
!2202 = !DILocation(line: 29, column: 14, scope: !2183)
!2203 = !DILocation(line: 31, column: 20, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2183, file: !2184, line: 30, column: 5)
!2205 = !DILocation(line: 31, column: 27, scope: !2204)
!2206 = !DILocation(line: 32, column: 56, scope: !2204)
!2207 = !DILocation(line: 32, column: 47, scope: !2204)
!2208 = !DILocation(line: 33, column: 22, scope: !2204)
!2209 = !DILocation(line: 34, column: 24, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2204, file: !2184, line: 34, column: 11)
!2211 = !DILocation(line: 34, column: 11, scope: !2204)
!2212 = !DILocation(line: 36, column: 29, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2210, file: !2184, line: 36, column: 16)
!2214 = !DILocation(line: 36, column: 16, scope: !2210)
!2215 = !DILocation(line: 37, column: 14, scope: !2213)
!2216 = distinct !{!2216, !2200, !2217}
!2217 = !DILocation(line: 40, column: 5, scope: !2183)
!2218 = !DILocation(line: 43, column: 1, scope: !2183)
!2219 = distinct !DISubprogram(name: "atof", scope: !2220, file: !2220, line: 25, type: !2221, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2224)
!2220 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!2223, !646}
!2223 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2224 = !{!2225}
!2225 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2219, file: !2220, line: 25, type: !646)
!2226 = !DILocation(line: 0, scope: !2219)
!2227 = !DILocation(line: 27, column: 10, scope: !2219)
!2228 = !DILocation(line: 27, column: 3, scope: !2219)
!2229 = distinct !DISubprogram(name: "strtoimax", scope: !2230, file: !2230, line: 324, type: !2231, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2237)
!2230 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!2233, !1990, !2236, !641}
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2234, line: 101, baseType: !2235)
!2234 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2042, line: 72, baseType: !683)
!2236 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !642)
!2237 = !{!2238, !2239, !2240}
!2238 = !DILocalVariable(name: "nptr", arg: 1, scope: !2229, file: !2230, line: 324, type: !1990)
!2239 = !DILocalVariable(name: "endptr", arg: 2, scope: !2229, file: !2230, line: 324, type: !2236)
!2240 = !DILocalVariable(name: "base", arg: 3, scope: !2229, file: !2230, line: 324, type: !641)
!2241 = !DILocation(line: 0, scope: !2229)
!2242 = !DILocation(line: 327, column: 10, scope: !2229)
!2243 = !DILocation(line: 327, column: 3, scope: !2229)
!2244 = distinct !DISubprogram(name: "strtoumax", scope: !2230, file: !2230, line: 336, type: !2245, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2249)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!2247, !1990, !2236, !641}
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2234, line: 102, baseType: !2248)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2042, line: 73, baseType: !666)
!2249 = !{!2250, !2251, !2252}
!2250 = !DILocalVariable(name: "nptr", arg: 1, scope: !2244, file: !2230, line: 336, type: !1990)
!2251 = !DILocalVariable(name: "endptr", arg: 2, scope: !2244, file: !2230, line: 336, type: !2236)
!2252 = !DILocalVariable(name: "base", arg: 3, scope: !2244, file: !2230, line: 336, type: !641)
!2253 = !DILocation(line: 0, scope: !2244)
!2254 = !DILocation(line: 339, column: 10, scope: !2244)
!2255 = !DILocation(line: 339, column: 3, scope: !2244)
!2256 = distinct !DISubprogram(name: "wcstoimax", scope: !2230, file: !2230, line: 348, type: !2257, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2266)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!2233, !2259, !2263, !641}
!2259 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2260)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2262)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2230, line: 34, baseType: !641)
!2263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2264)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2266 = !{!2267, !2268, !2269}
!2267 = !DILocalVariable(name: "nptr", arg: 1, scope: !2256, file: !2230, line: 348, type: !2259)
!2268 = !DILocalVariable(name: "endptr", arg: 2, scope: !2256, file: !2230, line: 348, type: !2263)
!2269 = !DILocalVariable(name: "base", arg: 3, scope: !2256, file: !2230, line: 348, type: !641)
!2270 = !DILocation(line: 0, scope: !2256)
!2271 = !DILocation(line: 351, column: 10, scope: !2256)
!2272 = !DILocation(line: 351, column: 3, scope: !2256)
!2273 = distinct !DISubprogram(name: "wcstoumax", scope: !2230, file: !2230, line: 362, type: !2274, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!2247, !2259, !2263, !641}
!2276 = !{!2277, !2278, !2279}
!2277 = !DILocalVariable(name: "nptr", arg: 1, scope: !2273, file: !2230, line: 362, type: !2259)
!2278 = !DILocalVariable(name: "endptr", arg: 2, scope: !2273, file: !2230, line: 362, type: !2263)
!2279 = !DILocalVariable(name: "base", arg: 3, scope: !2273, file: !2230, line: 362, type: !641)
!2280 = !DILocation(line: 0, scope: !2273)
!2281 = !DILocation(line: 365, column: 10, scope: !2273)
!2282 = !DILocation(line: 365, column: 3, scope: !2273)
!2283 = distinct !DISubprogram(name: "stat", scope: !2284, file: !2284, line: 453, type: !2285, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2322)
!2284 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!641, !646, !2287}
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2289, line: 46, size: 1152, elements: !2290)
!2289 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2290 = !{!2291, !2293, !2295, !2297, !2299, !2301, !2303, !2304, !2305, !2306, !2308, !2310, !2318, !2319, !2320}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2288, file: !2289, line: 48, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2042, line: 145, baseType: !666)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2288, file: !2289, line: 53, baseType: !2294, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2042, line: 148, baseType: !666)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2288, file: !2289, line: 61, baseType: !2296, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2042, line: 151, baseType: !666)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2288, file: !2289, line: 62, baseType: !2298, size: 32, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2042, line: 150, baseType: !7)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2288, file: !2289, line: 64, baseType: !2300, size: 32, offset: 224)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2042, line: 146, baseType: !7)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2288, file: !2289, line: 65, baseType: !2302, size: 32, offset: 256)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2042, line: 147, baseType: !7)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2288, file: !2289, line: 67, baseType: !641, size: 32, offset: 288)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2288, file: !2289, line: 69, baseType: !2292, size: 64, offset: 320)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2288, file: !2289, line: 74, baseType: !2041, size: 64, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2288, file: !2289, line: 78, baseType: !2307, size: 64, offset: 448)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2042, line: 174, baseType: !683)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2288, file: !2289, line: 80, baseType: !2309, size: 64, offset: 512)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2042, line: 179, baseType: !683)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2288, file: !2289, line: 91, baseType: !2311, size: 128, offset: 576)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2312, line: 10, size: 128, elements: !2313)
!2312 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2313 = !{!2314, !2316}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2311, file: !2312, line: 12, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2042, line: 160, baseType: !683)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2311, file: !2312, line: 16, baseType: !2317, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2042, line: 196, baseType: !683)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2288, file: !2289, line: 92, baseType: !2311, size: 128, offset: 704)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2288, file: !2289, line: 93, baseType: !2311, size: 128, offset: 832)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2288, file: !2289, line: 106, baseType: !2321, size: 192, offset: 960)
!2321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2317, size: 192, elements: !790)
!2322 = !{!2323, !2324}
!2323 = !DILocalVariable(name: "__path", arg: 1, scope: !2283, file: !2284, line: 453, type: !646)
!2324 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2283, file: !2284, line: 453, type: !2287)
!2325 = !DILocation(line: 0, scope: !2283)
!2326 = !DILocation(line: 455, column: 10, scope: !2283)
!2327 = !DILocation(line: 455, column: 3, scope: !2283)
!2328 = distinct !DISubprogram(name: "lstat", scope: !2284, file: !2284, line: 460, type: !2285, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2329)
!2329 = !{!2330, !2331}
!2330 = !DILocalVariable(name: "__path", arg: 1, scope: !2328, file: !2284, line: 460, type: !646)
!2331 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2328, file: !2284, line: 460, type: !2287)
!2332 = !DILocation(line: 0, scope: !2328)
!2333 = !DILocation(line: 462, column: 10, scope: !2328)
!2334 = !DILocation(line: 462, column: 3, scope: !2328)
!2335 = distinct !DISubprogram(name: "fstat", scope: !2284, file: !2284, line: 467, type: !2336, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!641, !641, !2287}
!2338 = !{!2339, !2340}
!2339 = !DILocalVariable(name: "__fd", arg: 1, scope: !2335, file: !2284, line: 467, type: !641)
!2340 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2335, file: !2284, line: 467, type: !2287)
!2341 = !DILocation(line: 0, scope: !2335)
!2342 = !DILocation(line: 469, column: 10, scope: !2335)
!2343 = !DILocation(line: 469, column: 3, scope: !2335)
!2344 = distinct !DISubprogram(name: "fstatat", scope: !2284, file: !2284, line: 474, type: !2345, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!641, !641, !646, !2287, !641}
!2347 = !{!2348, !2349, !2350, !2351}
!2348 = !DILocalVariable(name: "__fd", arg: 1, scope: !2344, file: !2284, line: 474, type: !641)
!2349 = !DILocalVariable(name: "__filename", arg: 2, scope: !2344, file: !2284, line: 474, type: !646)
!2350 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2344, file: !2284, line: 474, type: !2287)
!2351 = !DILocalVariable(name: "__flag", arg: 4, scope: !2344, file: !2284, line: 474, type: !641)
!2352 = !DILocation(line: 0, scope: !2344)
!2353 = !DILocation(line: 477, column: 10, scope: !2344)
!2354 = !DILocation(line: 477, column: 3, scope: !2344)
!2355 = distinct !DISubprogram(name: "mknod", scope: !2284, file: !2284, line: 483, type: !2356, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!641, !646, !2298, !2292}
!2358 = !{!2359, !2360, !2361}
!2359 = !DILocalVariable(name: "__path", arg: 1, scope: !2355, file: !2284, line: 483, type: !646)
!2360 = !DILocalVariable(name: "__mode", arg: 2, scope: !2355, file: !2284, line: 483, type: !2298)
!2361 = !DILocalVariable(name: "__dev", arg: 3, scope: !2355, file: !2284, line: 483, type: !2292)
!2362 = !DILocation(line: 0, scope: !2355)
!2363 = !DILocation(line: 485, column: 10, scope: !2355)
!2364 = !DILocation(line: 485, column: 3, scope: !2355)
!2365 = distinct !DISubprogram(name: "mknodat", scope: !2284, file: !2284, line: 491, type: !2366, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!641, !641, !646, !2298, !2292}
!2368 = !{!2369, !2370, !2371, !2372}
!2369 = !DILocalVariable(name: "__fd", arg: 1, scope: !2365, file: !2284, line: 491, type: !641)
!2370 = !DILocalVariable(name: "__path", arg: 2, scope: !2365, file: !2284, line: 491, type: !646)
!2371 = !DILocalVariable(name: "__mode", arg: 3, scope: !2365, file: !2284, line: 491, type: !2298)
!2372 = !DILocalVariable(name: "__dev", arg: 4, scope: !2365, file: !2284, line: 491, type: !2292)
!2373 = !DILocation(line: 0, scope: !2365)
!2374 = !DILocation(line: 494, column: 10, scope: !2365)
!2375 = !DILocation(line: 494, column: 3, scope: !2365)
!2376 = distinct !DISubprogram(name: "stat64", scope: !2284, file: !2284, line: 502, type: !2377, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2399)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!641, !646, !2379}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2289, line: 119, size: 1152, elements: !2381)
!2381 = !{!2382, !2383, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2395, !2396, !2397, !2398}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2380, file: !2289, line: 121, baseType: !2292, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2380, file: !2289, line: 123, baseType: !2384, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2042, line: 149, baseType: !666)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2380, file: !2289, line: 124, baseType: !2296, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2380, file: !2289, line: 125, baseType: !2298, size: 32, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2380, file: !2289, line: 132, baseType: !2300, size: 32, offset: 224)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2380, file: !2289, line: 133, baseType: !2302, size: 32, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2380, file: !2289, line: 135, baseType: !641, size: 32, offset: 288)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2380, file: !2289, line: 136, baseType: !2292, size: 64, offset: 320)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2380, file: !2289, line: 137, baseType: !2041, size: 64, offset: 384)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2380, file: !2289, line: 143, baseType: !2307, size: 64, offset: 448)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2380, file: !2289, line: 144, baseType: !2394, size: 64, offset: 512)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2042, line: 180, baseType: !683)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2380, file: !2289, line: 152, baseType: !2311, size: 128, offset: 576)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2380, file: !2289, line: 153, baseType: !2311, size: 128, offset: 704)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2380, file: !2289, line: 154, baseType: !2311, size: 128, offset: 832)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2380, file: !2289, line: 164, baseType: !2321, size: 192, offset: 960)
!2399 = !{!2400, !2401}
!2400 = !DILocalVariable(name: "__path", arg: 1, scope: !2376, file: !2284, line: 502, type: !646)
!2401 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2376, file: !2284, line: 502, type: !2379)
!2402 = !DILocation(line: 0, scope: !2376)
!2403 = !DILocation(line: 504, column: 10, scope: !2376)
!2404 = !DILocation(line: 504, column: 3, scope: !2376)
!2405 = distinct !DISubprogram(name: "lstat64", scope: !2284, file: !2284, line: 509, type: !2377, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2406)
!2406 = !{!2407, !2408}
!2407 = !DILocalVariable(name: "__path", arg: 1, scope: !2405, file: !2284, line: 509, type: !646)
!2408 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2405, file: !2284, line: 509, type: !2379)
!2409 = !DILocation(line: 0, scope: !2405)
!2410 = !DILocation(line: 511, column: 10, scope: !2405)
!2411 = !DILocation(line: 511, column: 3, scope: !2405)
!2412 = distinct !DISubprogram(name: "fstat64", scope: !2284, file: !2284, line: 516, type: !2413, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2415)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!641, !641, !2379}
!2415 = !{!2416, !2417}
!2416 = !DILocalVariable(name: "__fd", arg: 1, scope: !2412, file: !2284, line: 516, type: !641)
!2417 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2412, file: !2284, line: 516, type: !2379)
!2418 = !DILocation(line: 0, scope: !2412)
!2419 = !DILocation(line: 518, column: 10, scope: !2412)
!2420 = !DILocation(line: 518, column: 3, scope: !2412)
!2421 = distinct !DISubprogram(name: "fstatat64", scope: !2284, file: !2284, line: 523, type: !2422, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!641, !641, !646, !2379, !641}
!2424 = !{!2425, !2426, !2427, !2428}
!2425 = !DILocalVariable(name: "__fd", arg: 1, scope: !2421, file: !2284, line: 523, type: !641)
!2426 = !DILocalVariable(name: "__filename", arg: 2, scope: !2421, file: !2284, line: 523, type: !646)
!2427 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2421, file: !2284, line: 523, type: !2379)
!2428 = !DILocalVariable(name: "__flag", arg: 4, scope: !2421, file: !2284, line: 523, type: !641)
!2429 = !DILocation(line: 0, scope: !2421)
!2430 = !DILocation(line: 526, column: 10, scope: !2421)
!2431 = !DILocation(line: 526, column: 3, scope: !2421)
!2432 = distinct !DISubprogram(name: "gate_dse", scope: !3, file: !3, line: 444, type: !1965, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2008)
!2433 = !DILocation(line: 446, column: 10, scope: !2432)
!2434 = !DILocation(line: 446, column: 24, scope: !2432)
!2435 = !DILocation(line: 446, column: 3, scope: !2432)
!2436 = distinct !DISubprogram(name: "tree_ssa_dse", scope: !3, file: !3, line: 399, type: !1969, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2437)
!2437 = !{!2438, !2470}
!2438 = !DILocalVariable(name: "walk_data", scope: !2436, file: !3, line: 401, type: !2439)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dom_walk_data", file: !2440, line: 29, size: 512, elements: !2441)
!2440 = !DIFile(filename: "./domwalk.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2441 = !{!2442, !2443, !2448, !2452, !2453, !2454, !2468, !2469}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dom_direction", scope: !2439, file: !2440, line: 35, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "initialize_block_local_data", scope: !2439, file: !2440, line: 46, baseType: !2444, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{null, !2447, !1380, !640}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "before_dom_children", scope: !2439, file: !2440, line: 50, baseType: !2449, size: 64, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !2447, !1380}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "after_dom_children", scope: !2439, file: !2440, line: 53, baseType: !2449, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "global_data", scope: !2439, file: !2440, line: 56, baseType: !645, size: 64, offset: 256)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "block_data_stack", scope: !2439, file: !2440, line: 61, baseType: !2455, size: 64, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_void_p_heap", file: !2440, line: 23, baseType: !2457)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_void_p_heap", file: !2440, line: 23, size: 128, elements: !2458)
!2458 = !{!2459}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2457, file: !2440, line: 23, baseType: !2460, size: 128)
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_void_p_base", file: !2440, line: 22, baseType: !2461)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_void_p_base", file: !2440, line: 22, size: 128, elements: !2462)
!2462 = !{!2463, !2464, !2465}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2461, file: !2440, line: 22, baseType: !7, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2461, file: !2440, line: 22, baseType: !7, size: 32, offset: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2461, file: !2440, line: 22, baseType: !2466, size: 64, offset: 64)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2467, size: 64, elements: !815)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "void_p", file: !2440, line: 21, baseType: !645)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "block_local_data_size", scope: !2439, file: !2440, line: 65, baseType: !1126, size: 64, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "free_block_data", scope: !2439, file: !2440, line: 71, baseType: !2455, size: 64, offset: 448)
!2470 = !DILocalVariable(name: "dse_gd", scope: !2436, file: !3, line: 402, type: !716)
!2471 = !DILocation(line: 401, column: 3, scope: !2436)
!2472 = !DILocation(line: 402, column: 3, scope: !2436)
!2473 = !DILocation(line: 404, column: 3, scope: !2436)
!2474 = !DILocation(line: 410, column: 3, scope: !2436)
!2475 = !DILocation(line: 411, column: 3, scope: !2436)
!2476 = !DILocation(line: 415, column: 27, scope: !2436)
!2477 = !DILocation(line: 416, column: 13, scope: !2436)
!2478 = !DILocation(line: 416, column: 41, scope: !2436)
!2479 = !DILocation(line: 417, column: 13, scope: !2436)
!2480 = !DILocation(line: 417, column: 33, scope: !2436)
!2481 = !DILocation(line: 418, column: 13, scope: !2436)
!2482 = !DILocation(line: 418, column: 32, scope: !2436)
!2483 = !DILocation(line: 420, column: 13, scope: !2436)
!2484 = !DILocation(line: 420, column: 35, scope: !2436)
!2485 = !DILocation(line: 423, column: 19, scope: !2436)
!2486 = !DILocation(line: 423, column: 10, scope: !2436)
!2487 = !DILocation(line: 423, column: 17, scope: !2436)
!2488 = !DILocation(line: 424, column: 13, scope: !2436)
!2489 = !DILocation(line: 424, column: 25, scope: !2436)
!2490 = !DILocation(line: 0, scope: !2436)
!2491 = !DILocation(line: 427, column: 3, scope: !2436)
!2492 = !DILocation(line: 430, column: 36, scope: !2436)
!2493 = !DILocation(line: 430, column: 3, scope: !2436)
!2494 = !DILocation(line: 433, column: 3, scope: !2436)
!2495 = !DILocation(line: 436, column: 3, scope: !2436)
!2496 = !DILocation(line: 439, column: 3, scope: !2436)
!2497 = !DILocation(line: 441, column: 1, scope: !2436)
!2498 = !DILocation(line: 440, column: 3, scope: !2436)
!2499 = distinct !DISubprogram(name: "dse_initialize_block_local_data", scope: !3, file: !3, line: 127, type: !2445, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2500)
!2500 = !{!2501, !2502, !2503, !2504}
!2501 = !DILocalVariable(name: "walk_data", arg: 1, scope: !2499, file: !3, line: 127, type: !2447)
!2502 = !DILocalVariable(name: "bb", arg: 2, scope: !2499, file: !3, line: 128, type: !1380)
!2503 = !DILocalVariable(name: "recycled", arg: 3, scope: !2499, file: !3, line: 129, type: !640)
!2504 = !DILocalVariable(name: "bd", scope: !2499, file: !3, line: 131, type: !711)
!2505 = !DILocation(line: 0, scope: !2499)
!2506 = !DILocation(line: 133, column: 2, scope: !2499)
!2507 = !DILocation(line: 137, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 137, column: 7)
!2509 = !DILocation(line: 137, column: 7, scope: !2499)
!2510 = !DILocation(line: 139, column: 15, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 139, column: 11)
!2512 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 138, column: 5)
!2513 = !DILocation(line: 139, column: 11, scope: !2511)
!2514 = !DILocation(line: 139, column: 11, scope: !2512)
!2515 = !DILocation(line: 140, column: 2, scope: !2511)
!2516 = !DILocation(line: 142, column: 1, scope: !2499)
!2517 = distinct !DISubprogram(name: "dse_enter_block", scope: !3, file: !3, line: 360, type: !2450, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2518)
!2518 = !{!2519, !2520, !2521, !2522, !2523}
!2519 = !DILocalVariable(name: "walk_data", arg: 1, scope: !2517, file: !3, line: 360, type: !2447)
!2520 = !DILocalVariable(name: "bb", arg: 2, scope: !2517, file: !3, line: 360, type: !1380)
!2521 = !DILocalVariable(name: "bd", scope: !2517, file: !3, line: 362, type: !711)
!2522 = !DILocalVariable(name: "dse_gd", scope: !2517, file: !3, line: 365, type: !715)
!2523 = !DILocalVariable(name: "gsi", scope: !2517, file: !3, line: 367, type: !2524)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !561, line: 265, baseType: !2525)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 254, size: 192, elements: !2526)
!2526 = !{!2527, !2528, !2529}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2525, file: !561, line: 257, baseType: !976, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2525, file: !561, line: 263, baseType: !971, size: 64, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2525, file: !561, line: 264, baseType: !1380, size: 64, offset: 128)
!2530 = !DILocation(line: 0, scope: !2517)
!2531 = !DILocation(line: 364, column: 2, scope: !2517)
!2532 = !DILocation(line: 363, column: 7, scope: !2517)
!2533 = !DILocation(line: 366, column: 45, scope: !2517)
!2534 = !DILocation(line: 367, column: 3, scope: !2517)
!2535 = !DILocation(line: 369, column: 14, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 369, column: 3)
!2537 = !DILocation(line: 369, column: 24, scope: !2536)
!2538 = !DILocation(line: 369, column: 8, scope: !2536)
!2539 = !DILocation(line: 369, column: 39, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 369, column: 3)
!2541 = !DILocation(line: 369, column: 38, scope: !2540)
!2542 = !DILocation(line: 369, column: 3, scope: !2536)
!2543 = !DILocation(line: 370, column: 5, scope: !2540)
!2544 = !DILocation(line: 369, column: 56, scope: !2540)
!2545 = !DILocation(line: 369, column: 3, scope: !2540)
!2546 = distinct !{!2546, !2542, !2547}
!2547 = !DILocation(line: 370, column: 39, scope: !2536)
!2548 = !DILocation(line: 371, column: 14, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 371, column: 3)
!2550 = !DILocation(line: 371, column: 8, scope: !2549)
!2551 = !DILocation(line: 371, column: 36, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 371, column: 3)
!2553 = !DILocation(line: 371, column: 35, scope: !2552)
!2554 = !DILocation(line: 371, column: 3, scope: !2549)
!2555 = !DILocation(line: 372, column: 33, scope: !2552)
!2556 = !DILocation(line: 372, column: 5, scope: !2552)
!2557 = !DILocation(line: 371, column: 53, scope: !2552)
!2558 = !DILocation(line: 371, column: 3, scope: !2552)
!2559 = distinct !{!2559, !2554, !2560}
!2560 = !DILocation(line: 372, column: 47, scope: !2549)
!2561 = !DILocation(line: 373, column: 1, scope: !2517)
!2562 = distinct !DISubprogram(name: "dse_leave_block", scope: !3, file: !3, line: 376, type: !2450, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2563)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570}
!2564 = !DILocalVariable(name: "walk_data", arg: 1, scope: !2562, file: !3, line: 376, type: !2447)
!2565 = !DILocalVariable(name: "bb", arg: 2, scope: !2562, file: !3, line: 377, type: !1380)
!2566 = !DILocalVariable(name: "bd", scope: !2562, file: !3, line: 379, type: !711)
!2567 = !DILocalVariable(name: "dse_gd", scope: !2562, file: !3, line: 382, type: !715)
!2568 = !DILocalVariable(name: "stores", scope: !2562, file: !3, line: 384, type: !648)
!2569 = !DILocalVariable(name: "i", scope: !2562, file: !3, line: 385, type: !7)
!2570 = !DILocalVariable(name: "bi", scope: !2562, file: !3, line: 386, type: !2571)
!2571 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !652, line: 218, baseType: !2572)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !652, line: 203, size: 256, elements: !2573)
!2573 = !{!2574, !2575, !2576, !2577}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2572, file: !652, line: 206, baseType: !655, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2572, file: !652, line: 209, baseType: !655, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2572, file: !652, line: 212, baseType: !7, size: 32, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2572, file: !652, line: 217, baseType: !665, size: 64, offset: 192)
!2578 = !DILocation(line: 0, scope: !2562)
!2579 = !DILocation(line: 381, column: 2, scope: !2562)
!2580 = !DILocation(line: 383, column: 45, scope: !2562)
!2581 = !DILocation(line: 384, column: 27, scope: !2562)
!2582 = !DILocation(line: 385, column: 3, scope: !2562)
!2583 = !DILocation(line: 386, column: 3, scope: !2562)
!2584 = !DILocation(line: 389, column: 11, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 389, column: 7)
!2586 = !DILocation(line: 389, column: 7, scope: !2585)
!2587 = !DILocation(line: 389, column: 7, scope: !2562)
!2588 = !DILocation(line: 390, column: 5, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 390, column: 5)
!2590 = !DILocation(line: 390, column: 5, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 390, column: 5)
!2592 = !DILocation(line: 392, column: 28, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 391, column: 7)
!2594 = !DILocation(line: 392, column: 2, scope: !2593)
!2595 = distinct !{!2595, !2588, !2596}
!2596 = !DILocation(line: 393, column: 7, scope: !2589)
!2597 = !DILocation(line: 394, column: 1, scope: !2562)
!2598 = distinct !DISubprogram(name: "VEC_void_p_base_last", scope: !2440, file: !2440, line: 22, type: !2599, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2603)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!2467, !2601}
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2460)
!2603 = !{!2604}
!2604 = !DILocalVariable(name: "vec_", arg: 1, scope: !2598, file: !2440, line: 22, type: !2601)
!2605 = !DILocation(line: 0, scope: !2598)
!2606 = !DILocation(line: 22, column: 1, scope: !2598)
!2607 = distinct !DISubprogram(name: "gsi_last", scope: !561, file: !561, line: 4435, type: !2608, scopeLine: 4436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2610)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!2524, !971}
!2610 = !{!2611, !2612}
!2611 = !DILocalVariable(name: "seq", arg: 1, scope: !2607, file: !561, line: 4435, type: !971)
!2612 = !DILocalVariable(name: "i", scope: !2607, file: !561, line: 4437, type: !2524)
!2613 = !DILocation(line: 0, scope: !2607)
!2614 = !DILocation(line: 4437, column: 24, scope: !2607)
!2615 = !DILocation(line: 4439, column: 11, scope: !2607)
!2616 = !DILocation(line: 4439, column: 5, scope: !2607)
!2617 = !DILocation(line: 4439, column: 9, scope: !2607)
!2618 = !DILocation(line: 4440, column: 5, scope: !2607)
!2619 = !DILocation(line: 4440, column: 9, scope: !2607)
!2620 = !DILocation(line: 4441, column: 11, scope: !2607)
!2621 = !DILocation(line: 4441, column: 17, scope: !2607)
!2622 = !DILocation(line: 4441, column: 27, scope: !2607)
!2623 = !DILocation(line: 4441, column: 20, scope: !2607)
!2624 = !DILocation(line: 4441, column: 10, scope: !2607)
!2625 = !DILocation(line: 4441, column: 35, scope: !2607)
!2626 = !DILocation(line: 4441, column: 5, scope: !2607)
!2627 = !DILocation(line: 4441, column: 8, scope: !2607)
!2628 = !DILocation(line: 4443, column: 3, scope: !2607)
!2629 = distinct !DISubprogram(name: "bb_seq", scope: !561, file: !561, line: 237, type: !2630, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2635)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!971, !2632}
!2632 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !649, line: 112, baseType: !2633)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!2635 = !{!2636}
!2636 = !DILocalVariable(name: "bb", arg: 1, scope: !2629, file: !561, line: 237, type: !2632)
!2637 = !DILocation(line: 0, scope: !2629)
!2638 = !DILocation(line: 239, column: 17, scope: !2629)
!2639 = !DILocation(line: 239, column: 23, scope: !2629)
!2640 = !DILocation(line: 239, column: 33, scope: !2629)
!2641 = !DILocation(line: 239, column: 43, scope: !2629)
!2642 = !DILocation(line: 239, column: 36, scope: !2629)
!2643 = !DILocation(line: 239, column: 10, scope: !2629)
!2644 = !DILocation(line: 239, column: 68, scope: !2629)
!2645 = !DILocation(line: 239, column: 3, scope: !2629)
!2646 = distinct !DISubprogram(name: "gsi_end_p", scope: !561, file: !561, line: 4467, type: !2647, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!640, !2524}
!2649 = !{!2650}
!2650 = !DILocalVariable(name: "i", arg: 1, scope: !2646, file: !561, line: 4467, type: !2524)
!2651 = !DILocation(line: 4467, column: 33, scope: !2646)
!2652 = !DILocation(line: 4469, column: 12, scope: !2646)
!2653 = !DILocation(line: 4469, column: 16, scope: !2646)
!2654 = !DILocation(line: 4469, column: 10, scope: !2646)
!2655 = !DILocation(line: 4469, column: 3, scope: !2646)
!2656 = distinct !DISubprogram(name: "dse_optimize_stmt", scope: !3, file: !3, line: 272, type: !2657, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{null, !715, !711, !2524}
!2659 = !{!2660, !2661, !2662, !2663, !2664}
!2660 = !DILocalVariable(name: "dse_gd", arg: 1, scope: !2656, file: !3, line: 272, type: !715)
!2661 = !DILocalVariable(name: "bd", arg: 2, scope: !2656, file: !3, line: 273, type: !711)
!2662 = !DILocalVariable(name: "gsi", arg: 3, scope: !2656, file: !3, line: 274, type: !2524)
!2663 = !DILocalVariable(name: "stmt", scope: !2656, file: !3, line: 276, type: !981)
!2664 = !DILocalVariable(name: "use_stmt", scope: !2665, file: !3, line: 293, type: !981)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 292, column: 5)
!2666 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 291, column: 7)
!2667 = !DILocation(line: 0, scope: !2656)
!2668 = !DILocation(line: 274, column: 27, scope: !2656)
!2669 = !DILocation(line: 276, column: 17, scope: !2656)
!2670 = !DILocation(line: 280, column: 8, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 280, column: 7)
!2672 = !DILocation(line: 280, column: 7, scope: !2656)
!2673 = !DILocation(line: 285, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 285, column: 7)
!2675 = !DILocation(line: 285, column: 29, scope: !2674)
!2676 = !DILocation(line: 285, column: 32, scope: !2674)
!2677 = !DILocation(line: 285, column: 7, scope: !2656)
!2678 = !DILocation(line: 288, column: 7, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 288, column: 7)
!2680 = !DILocation(line: 288, column: 7, scope: !2656)
!2681 = !DILocation(line: 291, column: 7, scope: !2666)
!2682 = !DILocation(line: 291, column: 7, scope: !2656)
!2683 = !DILocation(line: 293, column: 7, scope: !2665)
!2684 = !DILocation(line: 295, column: 36, scope: !2665)
!2685 = !DILocation(line: 295, column: 49, scope: !2665)
!2686 = !DILocation(line: 295, column: 57, scope: !2665)
!2687 = !DILocation(line: 295, column: 7, scope: !2665)
!2688 = !DILocation(line: 0, scope: !2665)
!2689 = !DILocation(line: 297, column: 12, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 297, column: 11)
!2691 = !DILocation(line: 297, column: 11, scope: !2665)
!2692 = !DILocation(line: 304, column: 33, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 304, column: 11)
!2694 = !DILocation(line: 304, column: 55, scope: !2693)
!2695 = !DILocation(line: 304, column: 41, scope: !2693)
!2696 = !DILocation(line: 304, column: 11, scope: !2693)
!2697 = !DILocation(line: 305, column: 4, scope: !2693)
!2698 = !DILocation(line: 305, column: 24, scope: !2693)
!2699 = !DILocation(line: 306, column: 29, scope: !2693)
!2700 = !DILocation(line: 306, column: 10, scope: !2693)
!2701 = !DILocation(line: 305, column: 7, scope: !2693)
!2702 = !DILocation(line: 304, column: 11, scope: !2665)
!2703 = !DILocation(line: 319, column: 16, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 319, column: 8)
!2705 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 307, column: 2)
!2706 = !DILocation(line: 319, column: 13, scope: !2704)
!2707 = !DILocation(line: 320, column: 8, scope: !2704)
!2708 = !DILocation(line: 320, column: 27, scope: !2704)
!2709 = !DILocation(line: 320, column: 12, scope: !2704)
!2710 = !DILocation(line: 321, column: 8, scope: !2704)
!2711 = !DILocation(line: 321, column: 57, scope: !2704)
!2712 = !DILocation(line: 321, column: 37, scope: !2704)
!2713 = !DILocation(line: 321, column: 12, scope: !2704)
!2714 = !DILocation(line: 323, column: 8, scope: !2704)
!2715 = !DILocation(line: 323, column: 35, scope: !2704)
!2716 = !DILocation(line: 323, column: 11, scope: !2704)
!2717 = !DILocation(line: 323, column: 45, scope: !2704)
!2718 = !DILocation(line: 324, column: 8, scope: !2704)
!2719 = !DILocation(line: 324, column: 48, scope: !2704)
!2720 = !DILocation(line: 324, column: 29, scope: !2704)
!2721 = !DILocation(line: 325, column: 28, scope: !2704)
!2722 = !DILocation(line: 325, column: 8, scope: !2704)
!2723 = !DILocation(line: 324, column: 11, scope: !2704)
!2724 = !DILocation(line: 319, column: 8, scope: !2705)
!2725 = !DILocation(line: 328, column: 8, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 328, column: 8)
!2727 = !DILocation(line: 328, column: 18, scope: !2726)
!2728 = !DILocation(line: 328, column: 22, scope: !2726)
!2729 = !DILocation(line: 328, column: 33, scope: !2726)
!2730 = !DILocation(line: 328, column: 8, scope: !2705)
!2731 = !DILocation(line: 330, column: 15, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 329, column: 13)
!2733 = !DILocation(line: 331, column: 34, scope: !2732)
!2734 = !DILocation(line: 331, column: 45, scope: !2732)
!2735 = !DILocation(line: 331, column: 61, scope: !2732)
!2736 = !DILocation(line: 331, column: 15, scope: !2732)
!2737 = !DILocation(line: 332, column: 24, scope: !2732)
!2738 = !DILocation(line: 332, column: 15, scope: !2732)
!2739 = !DILocation(line: 333, column: 13, scope: !2732)
!2740 = !DILocation(line: 336, column: 4, scope: !2705)
!2741 = !DILocation(line: 339, column: 4, scope: !2705)
!2742 = !DILocation(line: 343, column: 4, scope: !2705)
!2743 = !DILocation(line: 344, column: 2, scope: !2705)
!2744 = !DILocation(line: 345, column: 5, scope: !2666)
!2745 = !DILocation(line: 346, column: 1, scope: !2656)
!2746 = distinct !DISubprogram(name: "gsi_prev", scope: !561, file: !561, line: 4493, type: !2747, scopeLine: 4494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2750)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{null, !2749}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2750 = !{!2751}
!2751 = !DILocalVariable(name: "i", arg: 1, scope: !2746, file: !561, line: 4493, type: !2749)
!2752 = !DILocation(line: 0, scope: !2746)
!2753 = !DILocation(line: 4495, column: 15, scope: !2746)
!2754 = !DILocation(line: 4495, column: 20, scope: !2746)
!2755 = !DILocation(line: 4495, column: 10, scope: !2746)
!2756 = !DILocation(line: 4496, column: 1, scope: !2746)
!2757 = distinct !DISubprogram(name: "dse_record_phi", scope: !3, file: !3, line: 351, type: !2758, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !715, !711, !981}
!2760 = !{!2761, !2762, !2763}
!2761 = !DILocalVariable(name: "dse_gd", arg: 1, scope: !2757, file: !3, line: 351, type: !715)
!2762 = !DILocalVariable(name: "bd", arg: 2, scope: !2757, file: !3, line: 352, type: !711)
!2763 = !DILocalVariable(name: "phi", arg: 3, scope: !2757, file: !3, line: 353, type: !981)
!2764 = !DILocation(line: 0, scope: !2757)
!2765 = !DILocation(line: 355, column: 23, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 355, column: 7)
!2767 = !DILocation(line: 355, column: 8, scope: !2766)
!2768 = !DILocation(line: 355, column: 7, scope: !2757)
!2769 = !DILocation(line: 356, column: 34, scope: !2766)
!2770 = !DILocation(line: 356, column: 47, scope: !2766)
!2771 = !DILocation(line: 356, column: 55, scope: !2766)
!2772 = !DILocation(line: 356, column: 5, scope: !2766)
!2773 = !DILocation(line: 357, column: 1, scope: !2757)
!2774 = distinct !DISubprogram(name: "gsi_stmt", scope: !561, file: !561, line: 4501, type: !2775, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!981, !2524}
!2777 = !{!2778}
!2778 = !DILocalVariable(name: "i", arg: 1, scope: !2774, file: !561, line: 4501, type: !2524)
!2779 = !DILocation(line: 4501, column: 32, scope: !2774)
!2780 = !DILocation(line: 4503, column: 12, scope: !2774)
!2781 = !DILocation(line: 4503, column: 17, scope: !2774)
!2782 = !DILocation(line: 4503, column: 3, scope: !2774)
!2783 = distinct !DISubprogram(name: "gsi_next", scope: !561, file: !561, line: 4485, type: !2747, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2784)
!2784 = !{!2785}
!2785 = !DILocalVariable(name: "i", arg: 1, scope: !2783, file: !561, line: 4485, type: !2749)
!2786 = !DILocation(line: 0, scope: !2783)
!2787 = !DILocation(line: 4487, column: 15, scope: !2783)
!2788 = !DILocation(line: 4487, column: 20, scope: !2783)
!2789 = !DILocation(line: 4487, column: 10, scope: !2783)
!2790 = !DILocation(line: 4488, column: 1, scope: !2783)
!2791 = distinct !DISubprogram(name: "gimple_seq_last", scope: !561, file: !561, line: 178, type: !2792, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2797)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!976, !2794}
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !649, line: 67, baseType: !2795)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!2797 = !{!2798}
!2798 = !DILocalVariable(name: "s", arg: 1, scope: !2791, file: !561, line: 178, type: !2794)
!2799 = !DILocation(line: 0, scope: !2791)
!2800 = !DILocation(line: 180, column: 10, scope: !2791)
!2801 = !DILocation(line: 180, column: 17, scope: !2791)
!2802 = !DILocation(line: 180, column: 3, scope: !2791)
!2803 = distinct !DISubprogram(name: "gimple_bb", scope: !561, file: !561, line: 1112, type: !2804, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2807)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!945, !2806}
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !649, line: 60, baseType: !1950)
!2807 = !{!2808}
!2808 = !DILocalVariable(name: "g", arg: 1, scope: !2803, file: !561, line: 1112, type: !2806)
!2809 = !DILocation(line: 0, scope: !2803)
!2810 = !DILocation(line: 1114, column: 20, scope: !2803)
!2811 = !DILocation(line: 1114, column: 3, scope: !2803)
!2812 = distinct !DISubprogram(name: "gimple_vdef", scope: !561, file: !561, line: 1375, type: !2813, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!719, !2806}
!2815 = !{!2816}
!2816 = !DILocalVariable(name: "g", arg: 1, scope: !2812, file: !561, line: 1375, type: !2806)
!2817 = !DILocation(line: 0, scope: !2812)
!2818 = !DILocation(line: 1377, column: 8, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2812, file: !561, line: 1377, column: 7)
!2820 = !DILocation(line: 1377, column: 7, scope: !2812)
!2821 = !DILocation(line: 1379, column: 23, scope: !2812)
!2822 = !DILocation(line: 1379, column: 3, scope: !2812)
!2823 = !DILocation(line: 1380, column: 1, scope: !2812)
!2824 = distinct !DISubprogram(name: "is_gimple_call", scope: !561, file: !561, line: 1870, type: !2825, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!640, !2806}
!2827 = !{!2828}
!2828 = !DILocalVariable(name: "gs", arg: 1, scope: !2824, file: !561, line: 1870, type: !2806)
!2829 = !DILocation(line: 0, scope: !2824)
!2830 = !DILocation(line: 1872, column: 10, scope: !2824)
!2831 = !DILocation(line: 1872, column: 27, scope: !2824)
!2832 = !DILocation(line: 1872, column: 3, scope: !2824)
!2833 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !561, file: !561, line: 1954, type: !2813, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2834)
!2834 = !{!2835, !2836}
!2835 = !DILocalVariable(name: "gs", arg: 1, scope: !2833, file: !561, line: 1954, type: !2806)
!2836 = !DILocalVariable(name: "addr", scope: !2833, file: !561, line: 1956, type: !719)
!2837 = !DILocation(line: 0, scope: !2833)
!2838 = !DILocation(line: 1956, column: 15, scope: !2833)
!2839 = !DILocation(line: 1957, column: 7, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2833, file: !561, line: 1957, column: 7)
!2841 = !DILocation(line: 1957, column: 24, scope: !2840)
!2842 = !DILocation(line: 1957, column: 7, scope: !2833)
!2843 = !DILocation(line: 1958, column: 12, scope: !2840)
!2844 = !DILocation(line: 1958, column: 5, scope: !2840)
!2845 = !DILocation(line: 1960, column: 1, scope: !2833)
!2846 = distinct !DISubprogram(name: "gimple_has_volatile_ops", scope: !561, file: !561, line: 1477, type: !2825, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2847)
!2847 = !{!2848}
!2848 = !DILocalVariable(name: "stmt", arg: 1, scope: !2846, file: !561, line: 1477, type: !2806)
!2849 = !DILocation(line: 0, scope: !2846)
!2850 = !DILocation(line: 1479, column: 7, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2846, file: !561, line: 1479, column: 7)
!2852 = !DILocation(line: 1479, column: 7, scope: !2846)
!2853 = !DILocation(line: 1480, column: 25, scope: !2851)
!2854 = !DILocation(line: 1480, column: 12, scope: !2851)
!2855 = !DILocation(line: 1480, column: 5, scope: !2851)
!2856 = !DILocation(line: 0, scope: !2851)
!2857 = !DILocation(line: 1483, column: 1, scope: !2846)
!2858 = distinct !DISubprogram(name: "is_gimple_assign", scope: !561, file: !561, line: 1677, type: !2825, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2859)
!2859 = !{!2860}
!2860 = !DILocalVariable(name: "gs", arg: 1, scope: !2858, file: !561, line: 1677, type: !2806)
!2861 = !DILocation(line: 0, scope: !2858)
!2862 = !DILocation(line: 1679, column: 10, scope: !2858)
!2863 = !DILocation(line: 1679, column: 27, scope: !2858)
!2864 = !DILocation(line: 1679, column: 3, scope: !2858)
!2865 = distinct !DISubprogram(name: "record_voperand_set", scope: !3, file: !3, line: 111, type: !2866, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2869)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !648, !2868, !7}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!2869 = !{!2870, !2871, !2872}
!2870 = !DILocalVariable(name: "global", arg: 1, scope: !2865, file: !3, line: 111, type: !648)
!2871 = !DILocalVariable(name: "local", arg: 2, scope: !2865, file: !3, line: 111, type: !2868)
!2872 = !DILocalVariable(name: "uid", arg: 3, scope: !2865, file: !3, line: 111, type: !7)
!2873 = !DILocation(line: 0, scope: !2865)
!2874 = !DILocation(line: 116, column: 7, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 116, column: 7)
!2876 = !DILocation(line: 116, column: 14, scope: !2875)
!2877 = !DILocation(line: 116, column: 7, scope: !2865)
!2878 = !DILocation(line: 117, column: 14, scope: !2875)
!2879 = !DILocation(line: 117, column: 12, scope: !2875)
!2880 = !DILocation(line: 117, column: 5, scope: !2875)
!2881 = !DILocation(line: 120, column: 19, scope: !2865)
!2882 = !DILocation(line: 120, column: 3, scope: !2865)
!2883 = !DILocation(line: 121, column: 3, scope: !2865)
!2884 = !DILocation(line: 122, column: 1, scope: !2865)
!2885 = distinct !DISubprogram(name: "gimple_uid", scope: !561, file: !561, line: 1265, type: !2886, scopeLine: 1266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!7, !2806}
!2888 = !{!2889}
!2889 = !DILocalVariable(name: "g", arg: 1, scope: !2885, file: !561, line: 1265, type: !2806)
!2890 = !DILocation(line: 0, scope: !2885)
!2891 = !DILocation(line: 1267, column: 20, scope: !2885)
!2892 = !DILocation(line: 1267, column: 3, scope: !2885)
!2893 = distinct !DISubprogram(name: "dse_possible_dead_store_p", scope: !3, file: !3, line: 150, type: !2894, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2897)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!640, !981, !2896}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2904, !2912, !2913}
!2898 = !DILocalVariable(name: "stmt", arg: 1, scope: !2893, file: !3, line: 150, type: !981)
!2899 = !DILocalVariable(name: "use_stmt", arg: 2, scope: !2893, file: !3, line: 150, type: !2896)
!2900 = !DILocalVariable(name: "temp", scope: !2893, file: !3, line: 152, type: !981)
!2901 = !DILocalVariable(name: "cnt", scope: !2893, file: !3, line: 153, type: !7)
!2902 = !DILocalVariable(name: "use_stmt", scope: !2903, file: !3, line: 164, type: !981)
!2903 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 163, column: 5)
!2904 = !DILocalVariable(name: "ui", scope: !2903, file: !3, line: 165, type: !2905)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "imm_use_iterator", file: !1320, line: 249, baseType: !2906)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "immediate_use_iterator_d", file: !1320, line: 238, size: 448, elements: !2907)
!2907 = !{!2908, !2909, !2910, !2911}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !2906, file: !1320, line: 241, baseType: !1953, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "end_p", scope: !2906, file: !1320, line: 243, baseType: !1953, size: 64, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "iter_node", scope: !2906, file: !1320, line: 245, baseType: !1954, size: 256, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "next_imm_name", scope: !2906, file: !1320, line: 248, baseType: !1953, size: 64, offset: 384)
!2912 = !DILocalVariable(name: "fail", scope: !2903, file: !3, line: 166, type: !640)
!2913 = !DILocalVariable(name: "defvar", scope: !2903, file: !3, line: 167, type: !719)
!2914 = !DILocation(line: 0, scope: !2893)
!2915 = !DILocation(line: 155, column: 13, scope: !2893)
!2916 = !DILocation(line: 0, scope: !2903)
!2917 = !DILocation(line: 162, column: 3, scope: !2893)
!2918 = !DILocation(line: 161, column: 8, scope: !2893)
!2919 = !DILocation(line: 165, column: 7, scope: !2903)
!2920 = !DILocation(line: 171, column: 11, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 171, column: 11)
!2922 = !DILocation(line: 171, column: 17, scope: !2921)
!2923 = !DILocation(line: 171, column: 11, scope: !2903)
!2924 = !DILocation(line: 174, column: 11, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 174, column: 11)
!2926 = !DILocation(line: 174, column: 30, scope: !2925)
!2927 = !DILocation(line: 174, column: 11, scope: !2903)
!2928 = !DILocation(line: 175, column: 11, scope: !2925)
!2929 = !DILocation(line: 175, column: 2, scope: !2925)
!2930 = !DILocation(line: 177, column: 11, scope: !2925)
!2931 = !DILocation(line: 0, scope: !2925)
!2932 = !DILocation(line: 179, column: 7, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 179, column: 7)
!2934 = !DILocation(line: 0, scope: !2933)
!2935 = !DILocation(line: 179, column: 7, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 179, column: 7)
!2937 = !DILocation(line: 181, column: 7, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 180, column: 2)
!2939 = !DILocation(line: 185, column: 17, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 185, column: 8)
!2941 = !DILocation(line: 185, column: 8, scope: !2938)
!2942 = !DILocation(line: 188, column: 8, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 188, column: 8)
!2944 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 186, column: 6)
!2945 = !DILocation(line: 194, column: 13, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 194, column: 13)
!2947 = !DILocation(line: 194, column: 36, scope: !2946)
!2948 = !DILocation(line: 194, column: 13, scope: !2940)
!2949 = !DILocation(line: 196, column: 12, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 196, column: 12)
!2951 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 195, column: 6)
!2952 = !DILocation(line: 198, column: 5, scope: !2950)
!2953 = !DILocation(line: 198, column: 8, scope: !2950)
!2954 = !DILocation(line: 198, column: 28, scope: !2950)
!2955 = !DILocation(line: 198, column: 25, scope: !2950)
!2956 = !DILocation(line: 199, column: 5, scope: !2950)
!2957 = !DILocation(line: 200, column: 10, scope: !2950)
!2958 = !DILocation(line: 200, column: 28, scope: !2950)
!2959 = !DILocation(line: 199, column: 8, scope: !2950)
!2960 = !DILocation(line: 203, column: 5, scope: !2950)
!2961 = !DILocation(line: 204, column: 11, scope: !2950)
!2962 = !DILocation(line: 204, column: 29, scope: !2950)
!2963 = !DILocation(line: 203, column: 9, scope: !2950)
!2964 = !DILocation(line: 196, column: 12, scope: !2951)
!2965 = !DILocation(line: 207, column: 5, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 207, column: 5)
!2967 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 205, column: 3)
!2968 = !DILocation(line: 213, column: 11, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 212, column: 13)
!2970 = !DILocation(line: 212, column: 13, scope: !2969)
!2971 = !DILocation(line: 212, column: 13, scope: !2946)
!2972 = !DILocation(line: 216, column: 8, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 216, column: 8)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 214, column: 6)
!2975 = !DILocation(line: 220, column: 13, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 220, column: 13)
!2977 = !DILocation(line: 220, column: 13, scope: !2969)
!2978 = !DILocation(line: 222, column: 12, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 222, column: 12)
!2980 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 221, column: 6)
!2981 = !DILocation(line: 222, column: 12, scope: !2980)
!2982 = !DILocation(line: 225, column: 5, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 225, column: 5)
!2984 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 223, column: 3)
!2985 = !DILocation(line: 0, scope: !2946)
!2986 = distinct !{!2986, !2932, !2987}
!2987 = !DILocation(line: 229, column: 2, scope: !2933)
!2988 = !DILocation(line: 231, column: 11, scope: !2903)
!2989 = !DILocation(line: 237, column: 12, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 237, column: 11)
!2991 = !DILocation(line: 237, column: 11, scope: !2903)
!2992 = !DILocation(line: 239, column: 8, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 239, column: 8)
!2994 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 238, column: 2)
!2995 = !DILocation(line: 0, scope: !2994)
!2996 = !DILocation(line: 245, column: 5, scope: !2893)
!2997 = !DILocation(line: 249, column: 41, scope: !2893)
!2998 = !DILocation(line: 249, column: 11, scope: !2893)
!2999 = !DILocation(line: 249, column: 10, scope: !2893)
!3000 = !DILocation(line: 245, column: 5, scope: !2903)
!3001 = distinct !{!3001, !2917, !3002}
!3002 = !DILocation(line: 249, column: 66, scope: !2893)
!3003 = !DILocation(line: 251, column: 8, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 251, column: 7)
!3005 = !DILocation(line: 251, column: 7, scope: !2893)
!3006 = !DILocation(line: 254, column: 13, scope: !2893)
!3007 = !DILocation(line: 256, column: 3, scope: !2893)
!3008 = !DILocation(line: 257, column: 1, scope: !2893)
!3009 = distinct !DISubprogram(name: "get_stmt_uid", scope: !3, file: !3, line: 99, type: !3010, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!7, !981}
!3012 = !{!3013}
!3013 = !DILocalVariable(name: "stmt", arg: 1, scope: !3009, file: !3, line: 99, type: !981)
!3014 = !DILocation(line: 0, scope: !3009)
!3015 = !DILocation(line: 101, column: 7, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 101, column: 7)
!3017 = !DILocation(line: 101, column: 26, scope: !3016)
!3018 = !DILocation(line: 101, column: 7, scope: !3009)
!3019 = !DILocation(line: 102, column: 12, scope: !3016)
!3020 = !DILocation(line: 103, column: 35, scope: !3016)
!3021 = !DILocation(line: 103, column: 14, scope: !3016)
!3022 = !DILocation(line: 103, column: 12, scope: !3016)
!3023 = !DILocation(line: 102, column: 5, scope: !3016)
!3024 = !DILocation(line: 105, column: 10, scope: !3009)
!3025 = !DILocation(line: 105, column: 3, scope: !3009)
!3026 = !DILocation(line: 106, column: 1, scope: !3009)
!3027 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !561, file: !561, line: 1694, type: !2813, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3028)
!3028 = !{!3029}
!3029 = !DILocalVariable(name: "gs", arg: 1, scope: !3027, file: !561, line: 1694, type: !2806)
!3030 = !DILocation(line: 0, scope: !3027)
!3031 = !DILocation(line: 1697, column: 10, scope: !3027)
!3032 = !DILocation(line: 1697, column: 3, scope: !3027)
!3033 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !561, file: !561, line: 1727, type: !2813, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3034)
!3034 = !{!3035}
!3035 = !DILocalVariable(name: "gs", arg: 1, scope: !3033, file: !561, line: 1727, type: !2806)
!3036 = !DILocation(line: 0, scope: !3033)
!3037 = !DILocation(line: 1730, column: 10, scope: !3033)
!3038 = !DILocation(line: 1730, column: 3, scope: !3033)
!3039 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !561, file: !561, line: 1815, type: !3040, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!366, !2806}
!3042 = !{!3043, !3044}
!3043 = !DILocalVariable(name: "gs", arg: 1, scope: !3039, file: !561, line: 1815, type: !2806)
!3044 = !DILocalVariable(name: "code", scope: !3039, file: !561, line: 1817, type: !366)
!3045 = !DILocation(line: 0, scope: !3039)
!3046 = !DILocation(line: 1820, column: 10, scope: !3039)
!3047 = !DILocation(line: 1821, column: 7, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3039, file: !561, line: 1821, column: 7)
!3049 = !DILocation(line: 1821, column: 35, scope: !3048)
!3050 = !DILocation(line: 1821, column: 7, scope: !3039)
!3051 = !DILocation(line: 1822, column: 12, scope: !3048)
!3052 = !DILocation(line: 1822, column: 5, scope: !3048)
!3053 = !DILocation(line: 1824, column: 3, scope: !3039)
!3054 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !561, file: !561, line: 1283, type: !2825, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3055)
!3055 = !{!3056}
!3056 = !DILocalVariable(name: "g", arg: 1, scope: !3054, file: !561, line: 1283, type: !2806)
!3057 = !DILocation(line: 0, scope: !3054)
!3058 = !DILocation(line: 1285, column: 10, scope: !3054)
!3059 = !DILocation(line: 1285, column: 26, scope: !3054)
!3060 = !DILocation(line: 1285, column: 43, scope: !3054)
!3061 = !DILocation(line: 1285, column: 46, scope: !3054)
!3062 = !DILocation(line: 1285, column: 62, scope: !3054)
!3063 = !DILocation(line: 1285, column: 3, scope: !3054)
!3064 = distinct !DISubprogram(name: "gimple_code", scope: !561, file: !561, line: 1052, type: !3065, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!560, !2806}
!3067 = !{!3068}
!3068 = !DILocalVariable(name: "g", arg: 1, scope: !3064, file: !561, line: 1052, type: !2806)
!3069 = !DILocation(line: 0, scope: !3064)
!3070 = !DILocation(line: 1054, column: 20, scope: !3064)
!3071 = !DILocation(line: 1054, column: 3, scope: !3064)
!3072 = distinct !DISubprogram(name: "gimple_call_fn", scope: !561, file: !561, line: 1911, type: !2813, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3073)
!3073 = !{!3074}
!3074 = !DILocalVariable(name: "gs", arg: 1, scope: !3072, file: !561, line: 1911, type: !2806)
!3075 = !DILocation(line: 0, scope: !3072)
!3076 = !DILocation(line: 1914, column: 10, scope: !3072)
!3077 = !DILocation(line: 1914, column: 3, scope: !3072)
!3078 = distinct !DISubprogram(name: "gimple_op", scope: !561, file: !561, line: 1631, type: !3079, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3081)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!719, !2806, !7}
!3081 = !{!3082, !3083}
!3082 = !DILocalVariable(name: "gs", arg: 1, scope: !3078, file: !561, line: 1631, type: !2806)
!3083 = !DILocalVariable(name: "i", arg: 2, scope: !3078, file: !561, line: 1631, type: !7)
!3084 = !DILocation(line: 0, scope: !3078)
!3085 = !DILocation(line: 1633, column: 7, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3078, file: !561, line: 1633, column: 7)
!3087 = !DILocation(line: 1633, column: 7, scope: !3078)
!3088 = !DILocation(line: 1638, column: 14, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3086, file: !561, line: 1634, column: 5)
!3090 = !DILocation(line: 1638, column: 7, scope: !3089)
!3091 = !DILocation(line: 0, scope: !3086)
!3092 = !DILocation(line: 1642, column: 1, scope: !3078)
!3093 = distinct !DISubprogram(name: "gimple_has_ops", scope: !561, file: !561, line: 1274, type: !2825, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "g", arg: 1, scope: !3093, file: !561, line: 1274, type: !2806)
!3096 = !DILocation(line: 0, scope: !3093)
!3097 = !DILocation(line: 1276, column: 10, scope: !3093)
!3098 = !DILocation(line: 1276, column: 26, scope: !3093)
!3099 = !DILocation(line: 1276, column: 41, scope: !3093)
!3100 = !DILocation(line: 1276, column: 44, scope: !3093)
!3101 = !DILocation(line: 1276, column: 60, scope: !3093)
!3102 = !DILocation(line: 1276, column: 3, scope: !3093)
!3103 = distinct !DISubprogram(name: "gimple_ops", scope: !561, file: !561, line: 1614, type: !3104, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!1015, !981}
!3106 = !{!3107, !3108}
!3107 = !DILocalVariable(name: "gs", arg: 1, scope: !3103, file: !561, line: 1614, type: !981)
!3108 = !DILocalVariable(name: "off", scope: !3103, file: !561, line: 1616, type: !1126)
!3109 = !DILocation(line: 0, scope: !3103)
!3110 = !DILocation(line: 1621, column: 28, scope: !3103)
!3111 = !DILocation(line: 1621, column: 9, scope: !3103)
!3112 = !DILocation(line: 1622, column: 3, scope: !3103)
!3113 = !DILocation(line: 1624, column: 20, scope: !3103)
!3114 = !DILocation(line: 1624, column: 32, scope: !3103)
!3115 = !DILocation(line: 1624, column: 10, scope: !3103)
!3116 = !DILocation(line: 1624, column: 3, scope: !3103)
!3117 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !561, file: !561, line: 1073, type: !3118, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!599, !981}
!3120 = !{!3121}
!3121 = !DILocalVariable(name: "gs", arg: 1, scope: !3117, file: !561, line: 1073, type: !981)
!3122 = !DILocation(line: 0, scope: !3117)
!3123 = !DILocation(line: 1075, column: 24, scope: !3117)
!3124 = !DILocation(line: 1075, column: 10, scope: !3117)
!3125 = !DILocation(line: 1075, column: 3, scope: !3117)
!3126 = distinct !DISubprogram(name: "gss_for_code", scope: !561, file: !561, line: 1061, type: !3127, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!599, !560}
!3129 = !{!3130}
!3130 = !DILocalVariable(name: "code", arg: 1, scope: !3126, file: !561, line: 1061, type: !560)
!3131 = !DILocation(line: 0, scope: !3126)
!3132 = !DILocation(line: 1066, column: 10, scope: !3126)
!3133 = !DILocation(line: 1066, column: 3, scope: !3126)
!3134 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !3135, file: !3135, line: 434, type: !3136, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3139)
!3135 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!719, !3138}
!3138 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !626, line: 27, baseType: !1015)
!3139 = !{!3140}
!3140 = !DILocalVariable(name: "def", arg: 1, scope: !3134, file: !3135, line: 434, type: !3138)
!3141 = !DILocation(line: 0, scope: !3134)
!3142 = !DILocation(line: 436, column: 10, scope: !3134)
!3143 = !DILocation(line: 436, column: 3, scope: !3134)
!3144 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !561, file: !561, line: 3080, type: !3104, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3145)
!3145 = !{!3146}
!3146 = !DILocalVariable(name: "gs", arg: 1, scope: !3144, file: !561, line: 3080, type: !981)
!3147 = !DILocation(line: 0, scope: !3144)
!3148 = !DILocation(line: 3083, column: 26, scope: !3144)
!3149 = !DILocation(line: 3083, column: 3, scope: !3144)
!3150 = distinct !DISubprogram(name: "first_imm_use_stmt", scope: !3135, file: !3135, line: 1058, type: !3151, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3154)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!981, !3153, !719}
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!3154 = !{!3155, !3156}
!3155 = !DILocalVariable(name: "imm", arg: 1, scope: !3150, file: !3135, line: 1058, type: !3153)
!3156 = !DILocalVariable(name: "var", arg: 2, scope: !3150, file: !3135, line: 1058, type: !719)
!3157 = !DILocation(line: 0, scope: !3150)
!3158 = !DILocation(line: 1060, column: 18, scope: !3150)
!3159 = !DILocation(line: 1060, column: 8, scope: !3150)
!3160 = !DILocation(line: 1060, column: 14, scope: !3150)
!3161 = !DILocation(line: 1061, column: 30, scope: !3150)
!3162 = !DILocation(line: 1061, column: 16, scope: !3150)
!3163 = !DILocation(line: 1062, column: 8, scope: !3150)
!3164 = !DILocation(line: 1062, column: 22, scope: !3150)
!3165 = !DILocation(line: 1067, column: 18, scope: !3150)
!3166 = !DILocation(line: 1067, column: 23, scope: !3150)
!3167 = !DILocation(line: 1068, column: 18, scope: !3150)
!3168 = !DILocation(line: 1068, column: 23, scope: !3150)
!3169 = !DILocation(line: 1069, column: 22, scope: !3150)
!3170 = !DILocation(line: 1069, column: 27, scope: !3150)
!3171 = !DILocation(line: 1070, column: 18, scope: !3150)
!3172 = !DILocation(line: 1070, column: 22, scope: !3150)
!3173 = !DILocation(line: 1072, column: 7, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3150, file: !3135, line: 1072, column: 7)
!3175 = !DILocation(line: 1072, column: 7, scope: !3150)
!3176 = !DILocation(line: 1075, column: 30, scope: !3150)
!3177 = !DILocation(line: 1075, column: 3, scope: !3150)
!3178 = !DILocation(line: 1077, column: 10, scope: !3150)
!3179 = !DILocation(line: 1077, column: 3, scope: !3150)
!3180 = !DILocation(line: 1078, column: 1, scope: !3150)
!3181 = distinct !DISubprogram(name: "end_imm_use_stmt_p", scope: !3135, file: !3135, line: 969, type: !3182, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3186)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!640, !3184}
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2905)
!3186 = !{!3187}
!3187 = !DILocalVariable(name: "imm", arg: 1, scope: !3181, file: !3135, line: 969, type: !3184)
!3188 = !DILocation(line: 0, scope: !3181)
!3189 = !DILocation(line: 971, column: 16, scope: !3181)
!3190 = !DILocation(line: 971, column: 32, scope: !3181)
!3191 = !DILocation(line: 971, column: 24, scope: !3181)
!3192 = !DILocation(line: 971, column: 10, scope: !3181)
!3193 = !DILocation(line: 971, column: 3, scope: !3181)
!3194 = distinct !DISubprogram(name: "end_imm_use_stmt_traverse", scope: !3135, file: !3135, line: 978, type: !3195, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !3153}
!3197 = !{!3198}
!3198 = !DILocalVariable(name: "imm", arg: 1, scope: !3194, file: !3135, line: 978, type: !3153)
!3199 = !DILocation(line: 0, scope: !3194)
!3200 = !DILocation(line: 980, column: 26, scope: !3194)
!3201 = !DILocation(line: 980, column: 3, scope: !3194)
!3202 = !DILocation(line: 981, column: 1, scope: !3194)
!3203 = distinct !DISubprogram(name: "next_imm_use_stmt", scope: !3135, file: !3135, line: 1083, type: !3204, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3206)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!981, !3153}
!3206 = !{!3207}
!3207 = !DILocalVariable(name: "imm", arg: 1, scope: !3203, file: !3135, line: 1083, type: !3153)
!3208 = !DILocation(line: 0, scope: !3203)
!3209 = !DILocation(line: 1085, column: 33, scope: !3203)
!3210 = !DILocation(line: 1085, column: 16, scope: !3203)
!3211 = !DILocation(line: 1086, column: 7, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3203, file: !3135, line: 1086, column: 7)
!3213 = !DILocation(line: 1086, column: 7, scope: !3203)
!3214 = !DILocation(line: 1088, column: 26, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !3135, line: 1088, column: 11)
!3216 = distinct !DILexicalBlock(scope: !3212, file: !3135, line: 1087, column: 5)
!3217 = !DILocation(line: 1088, column: 31, scope: !3215)
!3218 = !DILocation(line: 1088, column: 11, scope: !3216)
!3219 = !DILocation(line: 1089, column: 24, scope: !3215)
!3220 = !DILocation(line: 1089, column: 2, scope: !3215)
!3221 = !DILocation(line: 1093, column: 30, scope: !3203)
!3222 = !DILocation(line: 1093, column: 3, scope: !3203)
!3223 = !DILocation(line: 1094, column: 10, scope: !3203)
!3224 = !DILocation(line: 1094, column: 3, scope: !3203)
!3225 = !DILocation(line: 1095, column: 1, scope: !3203)
!3226 = distinct !DISubprogram(name: "link_use_stmts_after", scope: !3135, file: !3135, line: 1018, type: !3227, scopeLine: 1019, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{null, !1952, !3153}
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235, !3236, !3249}
!3230 = !DILocalVariable(name: "head", arg: 1, scope: !3226, file: !3135, line: 1018, type: !1952)
!3231 = !DILocalVariable(name: "imm", arg: 2, scope: !3226, file: !3135, line: 1018, type: !3153)
!3232 = !DILocalVariable(name: "use_p", scope: !3226, file: !3135, line: 1020, type: !1952)
!3233 = !DILocalVariable(name: "last_p", scope: !3226, file: !3135, line: 1021, type: !1952)
!3234 = !DILocalVariable(name: "head_stmt", scope: !3226, file: !3135, line: 1022, type: !981)
!3235 = !DILocalVariable(name: "use", scope: !3226, file: !3135, line: 1023, type: !719)
!3236 = !DILocalVariable(name: "op_iter", scope: !3226, file: !3135, line: 1024, type: !3237)
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !626, line: 140, baseType: !3238)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !626, line: 131, size: 320, elements: !3239)
!3239 = !{!3240, !3241, !3242, !3244, !3246, !3247, !3248}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3238, file: !626, line: 133, baseType: !640, size: 8)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !3238, file: !626, line: 134, baseType: !625, size: 32, offset: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !3238, file: !626, line: 135, baseType: !3243, size: 64, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !626, line: 42, baseType: !1010)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !3238, file: !626, line: 136, baseType: !3245, size: 64, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !626, line: 50, baseType: !1017)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !3238, file: !626, line: 137, baseType: !641, size: 32, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !3238, file: !626, line: 138, baseType: !641, size: 32, offset: 224)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !3238, file: !626, line: 139, baseType: !981, size: 64, offset: 256)
!3249 = !DILocalVariable(name: "flag", scope: !3226, file: !3135, line: 1025, type: !641)
!3250 = !DILocation(line: 0, scope: !3226)
!3251 = !DILocation(line: 1022, column: 22, scope: !3226)
!3252 = !DILocation(line: 1023, column: 14, scope: !3226)
!3253 = !DILocation(line: 1024, column: 3, scope: !3226)
!3254 = !DILocation(line: 1028, column: 11, scope: !3226)
!3255 = !DILocation(line: 1030, column: 7, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3226, file: !3135, line: 1030, column: 7)
!3257 = !DILocation(line: 1030, column: 31, scope: !3256)
!3258 = !DILocation(line: 1030, column: 7, scope: !3226)
!3259 = !DILocation(line: 1032, column: 7, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !3135, line: 1032, column: 7)
!3261 = distinct !DILexicalBlock(scope: !3256, file: !3135, line: 1031, column: 5)
!3262 = !DILocation(line: 0, scope: !3260)
!3263 = !DILocation(line: 1032, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3260, file: !3135, line: 1032, column: 7)
!3265 = !DILocation(line: 1033, column: 6, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3264, file: !3135, line: 1033, column: 6)
!3267 = !DILocation(line: 1033, column: 27, scope: !3266)
!3268 = !DILocation(line: 1033, column: 6, scope: !3264)
!3269 = !DILocation(line: 1034, column: 13, scope: !3266)
!3270 = !DILocation(line: 1034, column: 4, scope: !3266)
!3271 = distinct !{!3271, !3259, !3272}
!3272 = !DILocation(line: 1034, column: 53, scope: !3260)
!3273 = !DILocation(line: 1038, column: 11, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3256, file: !3135, line: 1037, column: 5)
!3275 = !DILocation(line: 1040, column: 4, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !3135, line: 1040, column: 4)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !3135, line: 1039, column: 2)
!3278 = distinct !DILexicalBlock(scope: !3274, file: !3135, line: 1038, column: 11)
!3279 = !DILocation(line: 0, scope: !3276)
!3280 = !DILocation(line: 1040, column: 4, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3276, file: !3135, line: 1040, column: 4)
!3282 = !DILocation(line: 1041, column: 10, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3281, file: !3135, line: 1041, column: 10)
!3284 = !DILocation(line: 1041, column: 31, scope: !3283)
!3285 = !DILocation(line: 1041, column: 10, scope: !3281)
!3286 = !DILocation(line: 1042, column: 17, scope: !3283)
!3287 = !DILocation(line: 1042, column: 8, scope: !3283)
!3288 = distinct !{!3288, !3275, !3289}
!3289 = !DILocation(line: 1042, column: 57, scope: !3276)
!3290 = !DILocation(line: 1044, column: 25, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3278, file: !3135, line: 1044, column: 16)
!3292 = !DILocation(line: 1044, column: 53, scope: !3291)
!3293 = !DILocation(line: 1044, column: 16, scope: !3278)
!3294 = !DILocation(line: 1046, column: 8, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !3135, line: 1046, column: 8)
!3296 = distinct !DILexicalBlock(scope: !3291, file: !3135, line: 1045, column: 2)
!3297 = !DILocation(line: 1046, column: 29, scope: !3295)
!3298 = !DILocation(line: 1046, column: 8, scope: !3296)
!3299 = !DILocation(line: 1047, column: 15, scope: !3295)
!3300 = !DILocation(line: 1047, column: 6, scope: !3295)
!3301 = !DILocation(line: 1051, column: 22, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3226, file: !3135, line: 1051, column: 7)
!3303 = !DILocation(line: 1021, column: 17, scope: !3226)
!3304 = !DILocation(line: 1051, column: 27, scope: !3302)
!3305 = !DILocation(line: 1051, column: 7, scope: !3226)
!3306 = !DILocation(line: 1052, column: 27, scope: !3302)
!3307 = !DILocation(line: 1052, column: 5, scope: !3302)
!3308 = !DILocation(line: 1053, column: 32, scope: !3226)
!3309 = !DILocation(line: 1053, column: 3, scope: !3226)
!3310 = !DILocation(line: 1054, column: 1, scope: !3226)
!3311 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !3135, file: !3135, line: 427, type: !3312, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!719, !1952}
!3314 = !{!3315}
!3315 = !DILocalVariable(name: "use", arg: 1, scope: !3311, file: !3135, line: 427, type: !1952)
!3316 = !DILocation(line: 0, scope: !3311)
!3317 = !DILocation(line: 429, column: 17, scope: !3311)
!3318 = !DILocation(line: 429, column: 10, scope: !3311)
!3319 = !DILocation(line: 429, column: 3, scope: !3311)
!3320 = distinct !DISubprogram(name: "op_iter_init_phiuse", scope: !3135, file: !3135, line: 910, type: !3321, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3324)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!1952, !3323, !981, !641}
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3324 = !{!3325, !3326, !3327, !3328, !3329}
!3325 = !DILocalVariable(name: "ptr", arg: 1, scope: !3320, file: !3135, line: 910, type: !3323)
!3326 = !DILocalVariable(name: "phi", arg: 2, scope: !3320, file: !3135, line: 910, type: !981)
!3327 = !DILocalVariable(name: "flags", arg: 3, scope: !3320, file: !3135, line: 910, type: !641)
!3328 = !DILocalVariable(name: "phi_def", scope: !3320, file: !3135, line: 912, type: !719)
!3329 = !DILocalVariable(name: "comp", scope: !3320, file: !3135, line: 913, type: !641)
!3330 = !DILocation(line: 0, scope: !3320)
!3331 = !DILocation(line: 912, column: 18, scope: !3320)
!3332 = !DILocation(line: 915, column: 3, scope: !3320)
!3333 = !DILocation(line: 916, column: 8, scope: !3320)
!3334 = !DILocation(line: 916, column: 13, scope: !3320)
!3335 = !DILocation(line: 918, column: 3, scope: !3320)
!3336 = !DILocation(line: 920, column: 11, scope: !3320)
!3337 = !DILocation(line: 923, column: 14, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3320, file: !3135, line: 923, column: 7)
!3339 = !DILocation(line: 923, column: 22, scope: !3338)
!3340 = !DILocation(line: 923, column: 7, scope: !3320)
!3341 = !DILocation(line: 925, column: 17, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3338, file: !3135, line: 924, column: 5)
!3343 = !DILocation(line: 926, column: 7, scope: !3342)
!3344 = !DILocation(line: 929, column: 8, scope: !3320)
!3345 = !DILocation(line: 929, column: 17, scope: !3320)
!3346 = !DILocation(line: 930, column: 18, scope: !3320)
!3347 = !DILocation(line: 930, column: 8, scope: !3320)
!3348 = !DILocation(line: 930, column: 16, scope: !3320)
!3349 = !DILocation(line: 931, column: 8, scope: !3320)
!3350 = !DILocation(line: 931, column: 18, scope: !3320)
!3351 = !DILocation(line: 932, column: 10, scope: !3320)
!3352 = !DILocation(line: 932, column: 3, scope: !3320)
!3353 = !DILocation(line: 933, column: 1, scope: !3320)
!3354 = distinct !DISubprogram(name: "op_iter_done", scope: !3135, file: !3135, line: 652, type: !3355, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3359)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!640, !3357}
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3237)
!3359 = !{!3360}
!3360 = !DILocalVariable(name: "ptr", arg: 1, scope: !3354, file: !3135, line: 652, type: !3357)
!3361 = !DILocation(line: 0, scope: !3354)
!3362 = !DILocation(line: 654, column: 15, scope: !3354)
!3363 = !DILocation(line: 654, column: 3, scope: !3354)
!3364 = distinct !DISubprogram(name: "move_use_after_head", scope: !3135, file: !3135, line: 990, type: !3365, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!1952, !1952, !1952, !1952}
!3367 = !{!3368, !3369, !3370}
!3368 = !DILocalVariable(name: "use_p", arg: 1, scope: !3364, file: !3135, line: 990, type: !1952)
!3369 = !DILocalVariable(name: "head", arg: 2, scope: !3364, file: !3135, line: 990, type: !1952)
!3370 = !DILocalVariable(name: "last_p", arg: 3, scope: !3364, file: !3135, line: 991, type: !1952)
!3371 = !DILocation(line: 0, scope: !3364)
!3372 = !DILocation(line: 997, column: 13, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3364, file: !3135, line: 997, column: 7)
!3374 = !DILocation(line: 997, column: 7, scope: !3364)
!3375 = !DILocation(line: 1000, column: 19, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !3135, line: 1000, column: 11)
!3377 = distinct !DILexicalBlock(scope: !3373, file: !3135, line: 998, column: 5)
!3378 = !DILocation(line: 1000, column: 24, scope: !3376)
!3379 = !DILocation(line: 1000, column: 11, scope: !3377)
!3380 = !DILocation(line: 1005, column: 4, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3376, file: !3135, line: 1003, column: 2)
!3382 = !DILocation(line: 1006, column: 4, scope: !3381)
!3383 = !DILocation(line: 1010, column: 3, scope: !3364)
!3384 = distinct !DISubprogram(name: "op_iter_next_use", scope: !3135, file: !3135, line: 659, type: !3385, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!1952, !3323}
!3387 = !{!3388, !3389}
!3388 = !DILocalVariable(name: "ptr", arg: 1, scope: !3384, file: !3135, line: 659, type: !3323)
!3389 = !DILocalVariable(name: "use_p", scope: !3384, file: !3135, line: 661, type: !1952)
!3390 = !DILocation(line: 0, scope: !3384)
!3391 = !DILocation(line: 665, column: 12, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3384, file: !3135, line: 665, column: 7)
!3393 = !DILocation(line: 665, column: 7, scope: !3392)
!3394 = !DILocation(line: 665, column: 7, scope: !3384)
!3395 = !DILocation(line: 667, column: 15, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3392, file: !3135, line: 666, column: 5)
!3397 = !DILocation(line: 668, column: 30, scope: !3396)
!3398 = !DILocation(line: 668, column: 17, scope: !3396)
!3399 = !DILocation(line: 669, column: 7, scope: !3396)
!3400 = !DILocation(line: 671, column: 12, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3384, file: !3135, line: 671, column: 7)
!3402 = !DILocation(line: 671, column: 25, scope: !3401)
!3403 = !DILocation(line: 671, column: 18, scope: !3401)
!3404 = !DILocation(line: 671, column: 7, scope: !3384)
!3405 = !DILocation(line: 673, column: 14, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3401, file: !3135, line: 672, column: 5)
!3407 = !DILocation(line: 673, column: 7, scope: !3406)
!3408 = !DILocation(line: 675, column: 8, scope: !3384)
!3409 = !DILocation(line: 675, column: 13, scope: !3384)
!3410 = !DILocation(line: 676, column: 3, scope: !3384)
!3411 = !DILocation(line: 677, column: 1, scope: !3384)
!3412 = distinct !DISubprogram(name: "op_iter_init_use", scope: !3135, file: !3135, line: 768, type: !3321, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3413)
!3413 = !{!3414, !3415, !3416}
!3414 = !DILocalVariable(name: "ptr", arg: 1, scope: !3412, file: !3135, line: 768, type: !3323)
!3415 = !DILocalVariable(name: "stmt", arg: 2, scope: !3412, file: !3135, line: 768, type: !981)
!3416 = !DILocalVariable(name: "flags", arg: 3, scope: !3412, file: !3135, line: 768, type: !641)
!3417 = !DILocation(line: 0, scope: !3412)
!3418 = !DILocation(line: 770, column: 3, scope: !3412)
!3419 = !DILocation(line: 772, column: 3, scope: !3412)
!3420 = !DILocation(line: 773, column: 8, scope: !3412)
!3421 = !DILocation(line: 773, column: 18, scope: !3412)
!3422 = !DILocation(line: 774, column: 10, scope: !3412)
!3423 = !DILocation(line: 774, column: 3, scope: !3412)
!3424 = distinct !DISubprogram(name: "gimple_vuse_op", scope: !561, file: !561, line: 1334, type: !3425, scopeLine: 1335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3427)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!1952, !2806}
!3427 = !{!3428, !3429}
!3428 = !DILocalVariable(name: "g", arg: 1, scope: !3424, file: !561, line: 1334, type: !2806)
!3429 = !DILocalVariable(name: "ops", scope: !3424, file: !561, line: 1336, type: !1017)
!3430 = !DILocation(line: 0, scope: !3424)
!3431 = !DILocation(line: 1337, column: 8, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3424, file: !561, line: 1337, column: 7)
!3433 = !DILocation(line: 1337, column: 7, scope: !3424)
!3434 = !DILocation(line: 1339, column: 25, scope: !3424)
!3435 = !DILocation(line: 1340, column: 7, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3424, file: !561, line: 1340, column: 7)
!3437 = !DILocation(line: 1341, column: 7, scope: !3436)
!3438 = !DILocation(line: 1341, column: 28, scope: !3436)
!3439 = !DILocation(line: 1341, column: 49, scope: !3436)
!3440 = !DILocation(line: 1341, column: 32, scope: !3436)
!3441 = !DILocation(line: 1342, column: 12, scope: !3436)
!3442 = !DILocation(line: 1340, column: 7, scope: !3424)
!3443 = !DILocation(line: 1344, column: 1, scope: !3424)
!3444 = distinct !DISubprogram(name: "delink_imm_use", scope: !3135, file: !3135, line: 188, type: !3445, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3447)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{null, !1953}
!3447 = !{!3448}
!3448 = !DILocalVariable(name: "linknode", arg: 1, scope: !3444, file: !3135, line: 188, type: !1953)
!3449 = !DILocation(line: 0, scope: !3444)
!3450 = !DILocation(line: 191, column: 17, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3444, file: !3135, line: 191, column: 7)
!3452 = !DILocation(line: 191, column: 22, scope: !3451)
!3453 = !DILocation(line: 191, column: 7, scope: !3444)
!3454 = !DILocation(line: 194, column: 36, scope: !3444)
!3455 = !DILocation(line: 194, column: 19, scope: !3444)
!3456 = !DILocation(line: 194, column: 24, scope: !3444)
!3457 = !DILocation(line: 195, column: 36, scope: !3444)
!3458 = !DILocation(line: 195, column: 13, scope: !3444)
!3459 = !DILocation(line: 195, column: 24, scope: !3444)
!3460 = !DILocation(line: 196, column: 18, scope: !3444)
!3461 = !DILocation(line: 197, column: 18, scope: !3444)
!3462 = !DILocation(line: 198, column: 1, scope: !3444)
!3463 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !3135, file: !3135, line: 202, type: !3464, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3466)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{null, !1953, !1953}
!3466 = !{!3467, !3468}
!3467 = !DILocalVariable(name: "linknode", arg: 1, scope: !3463, file: !3135, line: 202, type: !1953)
!3468 = !DILocalVariable(name: "list", arg: 2, scope: !3463, file: !3135, line: 202, type: !1953)
!3469 = !DILocation(line: 0, scope: !3463)
!3470 = !DILocation(line: 206, column: 13, scope: !3463)
!3471 = !DILocation(line: 206, column: 18, scope: !3463)
!3472 = !DILocation(line: 207, column: 26, scope: !3463)
!3473 = !DILocation(line: 207, column: 13, scope: !3463)
!3474 = !DILocation(line: 207, column: 18, scope: !3463)
!3475 = !DILocation(line: 208, column: 9, scope: !3463)
!3476 = !DILocation(line: 208, column: 15, scope: !3463)
!3477 = !DILocation(line: 208, column: 20, scope: !3463)
!3478 = !DILocation(line: 209, column: 14, scope: !3463)
!3479 = !DILocation(line: 210, column: 1, scope: !3463)
!3480 = distinct !DISubprogram(name: "gimple_phi_result", scope: !561, file: !561, line: 3071, type: !2813, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3481)
!3481 = !{!3482}
!3482 = !DILocalVariable(name: "gs", arg: 1, scope: !3480, file: !561, line: 3071, type: !2806)
!3483 = !DILocation(line: 0, scope: !3480)
!3484 = !DILocation(line: 3074, column: 25, scope: !3480)
!3485 = !DILocation(line: 3074, column: 3, scope: !3480)
!3486 = distinct !DISubprogram(name: "clear_and_done_ssa_iter", scope: !3135, file: !3135, line: 729, type: !3487, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{null, !3323}
!3489 = !{!3490}
!3490 = !DILocalVariable(name: "ptr", arg: 1, scope: !3486, file: !3135, line: 729, type: !3323)
!3491 = !DILocation(line: 0, scope: !3486)
!3492 = !DILocation(line: 731, column: 8, scope: !3486)
!3493 = !DILocation(line: 731, column: 13, scope: !3486)
!3494 = !DILocation(line: 732, column: 8, scope: !3486)
!3495 = !DILocation(line: 732, column: 13, scope: !3486)
!3496 = !DILocation(line: 733, column: 8, scope: !3486)
!3497 = !DILocation(line: 733, column: 18, scope: !3486)
!3498 = !DILocation(line: 734, column: 8, scope: !3486)
!3499 = !DILocation(line: 734, column: 14, scope: !3486)
!3500 = !DILocation(line: 735, column: 8, scope: !3486)
!3501 = !DILocation(line: 735, column: 16, scope: !3486)
!3502 = !DILocation(line: 736, column: 8, scope: !3486)
!3503 = !DILocation(line: 736, column: 17, scope: !3486)
!3504 = !DILocation(line: 737, column: 8, scope: !3486)
!3505 = !DILocation(line: 737, column: 13, scope: !3486)
!3506 = !DILocation(line: 738, column: 1, scope: !3486)
!3507 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !561, file: !561, line: 3061, type: !2886, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3508)
!3508 = !{!3509}
!3509 = !DILocalVariable(name: "gs", arg: 1, scope: !3507, file: !561, line: 3061, type: !2806)
!3510 = !DILocation(line: 0, scope: !3507)
!3511 = !DILocation(line: 3064, column: 25, scope: !3507)
!3512 = !DILocation(line: 3064, column: 3, scope: !3507)
!3513 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !3135, file: !3135, line: 442, type: !3514, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3516)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!1952, !981, !641}
!3516 = !{!3517, !3518}
!3517 = !DILocalVariable(name: "gs", arg: 1, scope: !3513, file: !3135, line: 442, type: !981)
!3518 = !DILocalVariable(name: "i", arg: 2, scope: !3513, file: !3135, line: 442, type: !641)
!3519 = !DILocation(line: 0, scope: !3513)
!3520 = !DILocation(line: 444, column: 11, scope: !3513)
!3521 = !DILocation(line: 444, column: 35, scope: !3513)
!3522 = !DILocation(line: 444, column: 3, scope: !3513)
!3523 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !561, file: !561, line: 3100, type: !3524, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3527)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!3526, !981, !7}
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!3527 = !{!3528, !3529}
!3528 = !DILocalVariable(name: "gs", arg: 1, scope: !3523, file: !561, line: 3100, type: !981)
!3529 = !DILocalVariable(name: "index", arg: 2, scope: !3523, file: !561, line: 3100, type: !7)
!3530 = !DILocation(line: 0, scope: !3523)
!3531 = !DILocation(line: 3103, column: 3, scope: !3523)
!3532 = !DILocation(line: 3104, column: 12, scope: !3523)
!3533 = !DILocation(line: 3104, column: 3, scope: !3523)
!3534 = distinct !DISubprogram(name: "op_iter_init", scope: !3135, file: !3135, line: 742, type: !3535, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3537)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{null, !3323, !981, !641}
!3537 = !{!3538, !3539, !3540}
!3538 = !DILocalVariable(name: "ptr", arg: 1, scope: !3534, file: !3135, line: 742, type: !3323)
!3539 = !DILocalVariable(name: "stmt", arg: 2, scope: !3534, file: !3135, line: 742, type: !981)
!3540 = !DILocalVariable(name: "flags", arg: 3, scope: !3534, file: !3135, line: 742, type: !641)
!3541 = !DILocation(line: 0, scope: !3534)
!3542 = !DILocation(line: 746, column: 3, scope: !3534)
!3543 = !DILocation(line: 748, column: 22, scope: !3534)
!3544 = !DILocation(line: 748, column: 15, scope: !3534)
!3545 = !DILocation(line: 748, column: 52, scope: !3534)
!3546 = !DILocation(line: 748, column: 8, scope: !3534)
!3547 = !DILocation(line: 748, column: 13, scope: !3534)
!3548 = !DILocation(line: 749, column: 15, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3534, file: !3135, line: 749, column: 7)
!3550 = !DILocation(line: 750, column: 7, scope: !3549)
!3551 = !DILocation(line: 750, column: 10, scope: !3549)
!3552 = !DILocation(line: 751, column: 7, scope: !3549)
!3553 = !DILocation(line: 751, column: 10, scope: !3549)
!3554 = !DILocation(line: 751, column: 29, scope: !3549)
!3555 = !DILocation(line: 749, column: 7, scope: !3534)
!3556 = !DILocation(line: 752, column: 22, scope: !3549)
!3557 = !DILocation(line: 752, column: 28, scope: !3549)
!3558 = !DILocation(line: 752, column: 15, scope: !3549)
!3559 = !DILocation(line: 752, column: 5, scope: !3549)
!3560 = !DILocation(line: 753, column: 22, scope: !3534)
!3561 = !DILocation(line: 753, column: 15, scope: !3534)
!3562 = !DILocation(line: 753, column: 52, scope: !3534)
!3563 = !DILocation(line: 753, column: 8, scope: !3534)
!3564 = !DILocation(line: 753, column: 13, scope: !3534)
!3565 = !DILocation(line: 754, column: 15, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3534, file: !3135, line: 754, column: 7)
!3567 = !DILocation(line: 755, column: 7, scope: !3566)
!3568 = !DILocation(line: 755, column: 10, scope: !3566)
!3569 = !DILocation(line: 756, column: 7, scope: !3566)
!3570 = !DILocation(line: 756, column: 10, scope: !3566)
!3571 = !DILocation(line: 756, column: 29, scope: !3566)
!3572 = !DILocation(line: 754, column: 7, scope: !3534)
!3573 = !DILocation(line: 757, column: 22, scope: !3566)
!3574 = !DILocation(line: 757, column: 28, scope: !3566)
!3575 = !DILocation(line: 757, column: 15, scope: !3566)
!3576 = !DILocation(line: 757, column: 5, scope: !3566)
!3577 = !DILocation(line: 758, column: 8, scope: !3534)
!3578 = !DILocation(line: 758, column: 13, scope: !3534)
!3579 = !DILocation(line: 760, column: 8, scope: !3534)
!3580 = !DILocation(line: 760, column: 14, scope: !3534)
!3581 = !DILocation(line: 761, column: 8, scope: !3534)
!3582 = !DILocation(line: 761, column: 16, scope: !3534)
!3583 = !DILocation(line: 762, column: 8, scope: !3534)
!3584 = !DILocation(line: 762, column: 17, scope: !3534)
!3585 = !DILocation(line: 763, column: 1, scope: !3534)
!3586 = distinct !DISubprogram(name: "gimple_def_ops", scope: !561, file: !561, line: 1292, type: !3587, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3589)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!1010, !2806}
!3589 = !{!3590}
!3590 = !DILocalVariable(name: "g", arg: 1, scope: !3586, file: !561, line: 1292, type: !2806)
!3591 = !DILocation(line: 0, scope: !3586)
!3592 = !DILocation(line: 1294, column: 8, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3586, file: !561, line: 1294, column: 7)
!3594 = !DILocation(line: 1294, column: 7, scope: !3586)
!3595 = !DILocation(line: 1296, column: 26, scope: !3586)
!3596 = !DILocation(line: 1296, column: 3, scope: !3586)
!3597 = !DILocation(line: 1297, column: 1, scope: !3586)
!3598 = distinct !DISubprogram(name: "gimple_use_ops", scope: !561, file: !561, line: 1313, type: !3599, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3601)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!1017, !2806}
!3601 = !{!3602}
!3602 = !DILocalVariable(name: "g", arg: 1, scope: !3598, file: !561, line: 1313, type: !2806)
!3603 = !DILocation(line: 0, scope: !3598)
!3604 = !DILocation(line: 1315, column: 8, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3598, file: !561, line: 1315, column: 7)
!3606 = !DILocation(line: 1315, column: 7, scope: !3598)
!3607 = !DILocation(line: 1317, column: 26, scope: !3598)
!3608 = !DILocation(line: 1317, column: 3, scope: !3598)
!3609 = !DILocation(line: 1318, column: 1, scope: !3598)
!3610 = distinct !DISubprogram(name: "gimple_vuse", scope: !561, file: !561, line: 1365, type: !2813, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3611)
!3611 = !{!3612}
!3612 = !DILocalVariable(name: "g", arg: 1, scope: !3610, file: !561, line: 1365, type: !2806)
!3613 = !DILocation(line: 0, scope: !3610)
!3614 = !DILocation(line: 1367, column: 8, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3610, file: !561, line: 1367, column: 7)
!3616 = !DILocation(line: 1367, column: 7, scope: !3610)
!3617 = !DILocation(line: 1369, column: 23, scope: !3610)
!3618 = !DILocation(line: 1369, column: 3, scope: !3610)
!3619 = !DILocation(line: 1370, column: 1, scope: !3610)
!3620 = distinct !DISubprogram(name: "gimple_stmt_max_uid", scope: !3135, file: !3135, line: 150, type: !3621, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3623)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!7, !1368}
!3623 = !{!3624}
!3624 = !DILocalVariable(name: "fn", arg: 1, scope: !3620, file: !3135, line: 150, type: !1368)
!3625 = !DILocation(line: 0, scope: !3620)
!3626 = !DILocation(line: 152, column: 14, scope: !3620)
!3627 = !DILocation(line: 152, column: 3, scope: !3620)
!3628 = distinct !DISubprogram(name: "gimple_expr_code", scope: !561, file: !561, line: 1438, type: !3040, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3629)
!3629 = !{!3630, !3631}
!3630 = !DILocalVariable(name: "stmt", arg: 1, scope: !3628, file: !561, line: 1438, type: !2806)
!3631 = !DILocalVariable(name: "code", scope: !3628, file: !561, line: 1440, type: !560)
!3632 = !DILocation(line: 0, scope: !3628)
!3633 = !DILocation(line: 1440, column: 27, scope: !3628)
!3634 = !DILocation(line: 1441, column: 29, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3628, file: !561, line: 1441, column: 7)
!3636 = !DILocation(line: 1442, column: 42, scope: !3635)
!3637 = !DILocation(line: 1442, column: 5, scope: !3635)
!3638 = !DILocation(line: 1446, column: 5, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3635, file: !561, line: 1443, column: 12)
!3640 = !DILocation(line: 1448, column: 5, scope: !3628)
!3641 = !DILocation(line: 1450, column: 1, scope: !3628)
!3642 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !561, file: !561, line: 1686, type: !3643, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!632, !366}
!3645 = !{!3646}
!3646 = !DILocalVariable(name: "code", arg: 1, scope: !3642, file: !561, line: 1686, type: !366)
!3647 = !DILocation(line: 0, scope: !3642)
!3648 = !DILocation(line: 1688, column: 34, scope: !3642)
!3649 = !DILocation(line: 1688, column: 10, scope: !3642)
!3650 = !DILocation(line: 1688, column: 3, scope: !3642)
!3651 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !652, file: !652, line: 224, type: !3652, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3659)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !3654, !3655, !7, !3658}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !649, line: 48, baseType: !3656)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3659 = !{!3660, !3661, !3662, !3663}
!3660 = !DILocalVariable(name: "bi", arg: 1, scope: !3651, file: !652, line: 224, type: !3654)
!3661 = !DILocalVariable(name: "map", arg: 2, scope: !3651, file: !652, line: 224, type: !3655)
!3662 = !DILocalVariable(name: "start_bit", arg: 3, scope: !3651, file: !652, line: 225, type: !7)
!3663 = !DILocalVariable(name: "bit_no", arg: 4, scope: !3651, file: !652, line: 225, type: !3658)
!3664 = !DILocation(line: 0, scope: !3651)
!3665 = !DILocation(line: 227, column: 19, scope: !3651)
!3666 = !DILocation(line: 227, column: 12, scope: !3651)
!3667 = !DILocation(line: 228, column: 7, scope: !3651)
!3668 = !DILocation(line: 228, column: 12, scope: !3651)
!3669 = !DILocation(line: 0, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !652, line: 233, column: 11)
!3671 = distinct !DILexicalBlock(scope: !3651, file: !652, line: 232, column: 5)
!3672 = !DILocation(line: 231, column: 3, scope: !3651)
!3673 = !DILocation(line: 233, column: 12, scope: !3670)
!3674 = !DILocation(line: 233, column: 11, scope: !3671)
!3675 = !DILocation(line: 235, column: 13, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3670, file: !652, line: 234, column: 2)
!3677 = !DILocation(line: 236, column: 4, scope: !3676)
!3678 = !DILocation(line: 239, column: 11, scope: !3671)
!3679 = distinct !{!3679, !3672, !3680}
!3680 = !DILocation(line: 242, column: 5, scope: !3651)
!3681 = !DILocation(line: 245, column: 11, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3651, file: !652, line: 245, column: 7)
!3683 = !DILocation(line: 245, column: 17, scope: !3682)
!3684 = !DILocation(line: 245, column: 22, scope: !3682)
!3685 = !DILocation(line: 245, column: 7, scope: !3651)
!3686 = !DILocation(line: 246, column: 27, scope: !3682)
!3687 = !DILocation(line: 246, column: 32, scope: !3682)
!3688 = !DILocation(line: 246, column: 5, scope: !3682)
!3689 = !DILocation(line: 249, column: 7, scope: !3651)
!3690 = !DILocation(line: 249, column: 15, scope: !3651)
!3691 = !DILocation(line: 250, column: 14, scope: !3651)
!3692 = !DILocation(line: 251, column: 7, scope: !3651)
!3693 = !DILocation(line: 251, column: 12, scope: !3651)
!3694 = !DILocation(line: 257, column: 16, scope: !3651)
!3695 = !DILocation(line: 257, column: 13, scope: !3651)
!3696 = !DILocation(line: 259, column: 11, scope: !3651)
!3697 = !DILocation(line: 260, column: 1, scope: !3651)
!3698 = distinct !DISubprogram(name: "bmp_iter_set", scope: !652, file: !652, line: 393, type: !3699, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3701)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!640, !3654, !3658}
!3701 = !{!3702, !3703, !3704}
!3702 = !DILocalVariable(name: "bi", arg: 1, scope: !3698, file: !652, line: 393, type: !3654)
!3703 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3698, file: !652, line: 393, type: !3658)
!3704 = !DILabel(scope: !3705, name: "next_bit", file: !652, line: 398)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !652, line: 397, column: 5)
!3706 = distinct !DILexicalBlock(scope: !3698, file: !652, line: 396, column: 7)
!3707 = !DILocation(line: 0, scope: !3698)
!3708 = !DILocation(line: 396, column: 11, scope: !3706)
!3709 = !DILocation(line: 396, column: 7, scope: !3706)
!3710 = !DILocation(line: 396, column: 7, scope: !3698)
!3711 = !DILocation(line: 419, column: 15, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !652, line: 418, column: 2)
!3713 = distinct !DILexicalBlock(scope: !3698, file: !652, line: 415, column: 5)
!3714 = !DILocation(line: 399, column: 7, scope: !3705)
!3715 = !DILocation(line: 398, column: 5, scope: !3705)
!3716 = !DILocation(line: 399, column: 20, scope: !3705)
!3717 = !DILocation(line: 399, column: 25, scope: !3705)
!3718 = !DILocation(line: 399, column: 14, scope: !3705)
!3719 = !DILocation(line: 401, column: 13, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3705, file: !652, line: 400, column: 2)
!3721 = !DILocation(line: 402, column: 12, scope: !3720)
!3722 = distinct !{!3722, !3714, !3723}
!3723 = !DILocation(line: 403, column: 2, scope: !3705)
!3724 = !DILocation(line: 410, column: 15, scope: !3698)
!3725 = !DILocation(line: 410, column: 42, scope: !3698)
!3726 = !DILocation(line: 411, column: 26, scope: !3698)
!3727 = !DILocation(line: 410, column: 11, scope: !3698)
!3728 = !DILocation(line: 412, column: 7, scope: !3698)
!3729 = !DILocation(line: 412, column: 14, scope: !3698)
!3730 = !DILocation(line: 0, scope: !3713)
!3731 = !DILocation(line: 414, column: 3, scope: !3698)
!3732 = !DILocation(line: 417, column: 7, scope: !3713)
!3733 = !DILocation(line: 417, column: 18, scope: !3713)
!3734 = !DILocation(line: 417, column: 26, scope: !3713)
!3735 = !DILocation(line: 419, column: 13, scope: !3712)
!3736 = !DILocation(line: 420, column: 8, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3712, file: !652, line: 420, column: 8)
!3738 = !DILocation(line: 420, column: 8, scope: !3712)
!3739 = !DILocation(line: 422, column: 12, scope: !3712)
!3740 = !DILocation(line: 423, column: 15, scope: !3712)
!3741 = distinct !{!3741, !3732, !3742}
!3742 = !DILocation(line: 424, column: 2, scope: !3713)
!3743 = !DILocation(line: 427, column: 28, scope: !3713)
!3744 = !DILocation(line: 427, column: 16, scope: !3713)
!3745 = !DILocation(line: 428, column: 12, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3713, file: !652, line: 428, column: 11)
!3747 = !DILocation(line: 428, column: 11, scope: !3713)
!3748 = !DILocation(line: 430, column: 27, scope: !3713)
!3749 = !DILocation(line: 430, column: 32, scope: !3713)
!3750 = !DILocation(line: 430, column: 15, scope: !3713)
!3751 = !DILocation(line: 431, column: 19, scope: !3713)
!3752 = distinct !{!3752, !3731, !3753}
!3753 = !DILocation(line: 432, column: 5, scope: !3698)
!3754 = !DILocation(line: 433, column: 1, scope: !3698)
!3755 = distinct !DISubprogram(name: "bmp_iter_next", scope: !652, file: !652, line: 382, type: !3756, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{null, !3654, !3658}
!3758 = !{!3759, !3760}
!3759 = !DILocalVariable(name: "bi", arg: 1, scope: !3755, file: !652, line: 382, type: !3654)
!3760 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3755, file: !652, line: 382, type: !3658)
!3761 = !DILocation(line: 0, scope: !3755)
!3762 = !DILocation(line: 384, column: 7, scope: !3755)
!3763 = !DILocation(line: 384, column: 12, scope: !3755)
!3764 = !DILocation(line: 385, column: 11, scope: !3755)
!3765 = !DILocation(line: 386, column: 1, scope: !3755)
