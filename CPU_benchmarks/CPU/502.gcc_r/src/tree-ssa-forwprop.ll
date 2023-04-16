; ModuleID = 'tree-ssa-forwprop.bc'
source_filename = "tree-ssa-forwprop.c"
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
%struct.real_format = type { void (%struct.real_format*, i64*, %struct.real_value*)*, void (%struct.real_format*, %struct.real_value*, i64*)*, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.immediate_use_iterator_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.tree_exp = type { %struct.tree_common, i32, %union.tree_node*, [1 x %union.tree_node*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"forwprop\00", align 1
@pass_forwprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_forwprop, i32 ()* @tree_ssa_forward_propagate_single_use_vars, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 74, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8, !dbg !0
@flag_tree_forwprop = external dso_local local_unnamed_addr global i32, align 4
@cfg_changed = internal unnamed_addr global i1 false, align 1, !dbg !2000
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"tree-ssa-forwprop.c\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"  Replaced '\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"' with '\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external dso_local local_unnamed_addr global [7 x %struct.real_format*], align 16
@mode_inner = external dso_local local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external dso_local local_unnamed_addr global i32, align 4
@dump_flags = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2005 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2018, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2019, metadata !DIExpression()), !dbg !2020
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2021
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2022
  ret i32 %call, !dbg !2023
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2024 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2028
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2029
  ret i32 %call, !dbg !2030
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2031 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2086, metadata !DIExpression()), !dbg !2087
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2088
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2088
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2088
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2088
  %cmp = icmp uge i8* %0, %1, !dbg !2088
  %conv1 = zext i1 %cmp to i64, !dbg !2088
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2088
  %tobool = icmp eq i64 %expval, 0, !dbg !2088
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2088

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2088
  br label %cond.end, !dbg !2088

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2088
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2088
  %2 = load i8, i8* %0, align 1, !dbg !2088
  %conv3 = zext i8 %2 to i32, !dbg !2088
  br label %cond.end, !dbg !2088

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2088
  ret i32 %cond, !dbg !2089
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2090 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2092, metadata !DIExpression()), !dbg !2093
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2094
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2094
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2094
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2094
  %cmp = icmp uge i8* %0, %1, !dbg !2094
  %conv1 = zext i1 %cmp to i64, !dbg !2094
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2094
  %tobool = icmp eq i64 %expval, 0, !dbg !2094
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2094

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2094
  br label %cond.end, !dbg !2094

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2094
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2094
  %2 = load i8, i8* %0, align 1, !dbg !2094
  %conv3 = zext i8 %2 to i32, !dbg !2094
  br label %cond.end, !dbg !2094

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2094
  ret i32 %cond, !dbg !2095
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2096 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2097
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2097
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2097
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2097
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2097
  %cmp = icmp uge i8* %1, %2, !dbg !2097
  %conv1 = zext i1 %cmp to i64, !dbg !2097
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2097
  %tobool = icmp eq i64 %expval, 0, !dbg !2097
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2097

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2097
  br label %cond.end, !dbg !2097

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2097
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2097
  %3 = load i8, i8* %1, align 1, !dbg !2097
  %conv3 = zext i8 %3 to i32, !dbg !2097
  br label %cond.end, !dbg !2097

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2097
  ret i32 %cond, !dbg !2098
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2099 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2103, metadata !DIExpression()), !dbg !2104
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2105
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2106
  ret i32 %call, !dbg !2107
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2108 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2112, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2113, metadata !DIExpression()), !dbg !2114
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2115
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2115
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2115
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2115
  %cmp = icmp uge i8* %0, %1, !dbg !2115
  %conv1 = zext i1 %cmp to i64, !dbg !2115
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2115
  %tobool = icmp eq i64 %expval, 0, !dbg !2115
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2115

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2115
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2115
  br label %cond.end, !dbg !2115

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2115
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2115
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2115
  store i8 %conv2, i8* %0, align 1, !dbg !2115
  %conv6 = and i32 %__c, 255, !dbg !2115
  br label %cond.end, !dbg !2115

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2115
  ret i32 %cond, !dbg !2116
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2117 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2119, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2120, metadata !DIExpression()), !dbg !2121
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2122
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2122
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2122
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2122
  %cmp = icmp uge i8* %0, %1, !dbg !2122
  %conv1 = zext i1 %cmp to i64, !dbg !2122
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2122
  %tobool = icmp eq i64 %expval, 0, !dbg !2122
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2122

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2122
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2122
  br label %cond.end, !dbg !2122

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2122
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2122
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2122
  store i8 %conv2, i8* %0, align 1, !dbg !2122
  %conv6 = and i32 %__c, 255, !dbg !2122
  br label %cond.end, !dbg !2122

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2122
  ret i32 %cond, !dbg !2123
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2124 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2126, metadata !DIExpression()), !dbg !2127
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2128
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2128
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2128
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2128
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2128
  %cmp = icmp uge i8* %1, %2, !dbg !2128
  %conv1 = zext i1 %cmp to i64, !dbg !2128
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2128
  %tobool = icmp eq i64 %expval, 0, !dbg !2128
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2128

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2128
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2128
  br label %cond.end, !dbg !2128

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2128
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2128
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2128
  store i8 %conv4, i8* %1, align 1, !dbg !2128
  %conv6 = and i32 %__c, 255, !dbg !2128
  br label %cond.end, !dbg !2128

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2128
  ret i32 %cond, !dbg !2129
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2130 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2138, metadata !DIExpression()), !dbg !2139
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2140
  ret i64 %call, !dbg !2141
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2142 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2144, metadata !DIExpression()), !dbg !2145
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2146
  %0 = load i32, i32* %_flags, align 8, !dbg !2146
  %and = lshr i32 %0, 4, !dbg !2146
  %and.lobit = and i32 %and, 1, !dbg !2146
  ret i32 %and.lobit, !dbg !2147
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2148 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2150, metadata !DIExpression()), !dbg !2151
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2152
  %0 = load i32, i32* %_flags, align 8, !dbg !2152
  %and = lshr i32 %0, 5, !dbg !2152
  %and.lobit = and i32 %and, 1, !dbg !2152
  ret i32 %and.lobit, !dbg !2153
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2154 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2157, metadata !DIExpression()), !dbg !2158
  %__c.off = add i32 %__c, 128, !dbg !2159
  %0 = icmp ult i32 %__c.off, 384, !dbg !2159
  br i1 %0, label %cond.true, label %cond.end, !dbg !2159

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2160
  %1 = load i32*, i32** %call, align 8, !dbg !2161
  %idxprom = sext i32 %__c to i64, !dbg !2162
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2162
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2162
  br label %cond.end, !dbg !2163

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2163
  ret i32 %cond, !dbg !2164
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2165 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2167, metadata !DIExpression()), !dbg !2168
  %__c.off = add i32 %__c, 128, !dbg !2169
  %0 = icmp ult i32 %__c.off, 384, !dbg !2169
  br i1 %0, label %cond.true, label %cond.end, !dbg !2169

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2170
  %1 = load i32*, i32** %call, align 8, !dbg !2171
  %idxprom = sext i32 %__c to i64, !dbg !2172
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2172
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2172
  br label %cond.end, !dbg !2173

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2173
  ret i32 %cond, !dbg !2174
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2175 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2180, metadata !DIExpression()), !dbg !2181
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2182
  %conv = trunc i64 %call to i32, !dbg !2183
  ret i32 %conv, !dbg !2184
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2185 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2189, metadata !DIExpression()), !dbg !2190
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2191
  ret i64 %call, !dbg !2192
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2193 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2198, metadata !DIExpression()), !dbg !2199
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2200
  ret i64 %call, !dbg !2201
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2202 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2208, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2209, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2210, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2211, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2212, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 0, metadata !2213, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2214, metadata !DIExpression()), !dbg !2218
  br label %while.cond, !dbg !2219

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2220
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2214, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2213, metadata !DIExpression()), !dbg !2218
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2221
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2219

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2222
  %div = lshr i64 %add, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %div, metadata !2215, metadata !DIExpression()), !dbg !2218
  %mul = mul i64 %div, %__size, !dbg !2225
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2226
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2216, metadata !DIExpression()), !dbg !2218
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2227
  call void @llvm.dbg.value(metadata i32 %call, metadata !2217, metadata !DIExpression()), !dbg !2218
  %cmp1 = icmp slt i32 %call, 0, !dbg !2228
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2230

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2231
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2233

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2213, metadata !DIExpression()), !dbg !2218
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2218
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2214, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2213, metadata !DIExpression()), !dbg !2218
  br label %while.cond, !dbg !2219, !llvm.loop !2235

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2218
  ret i8* %retval.0, !dbg !2237
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2238 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2244, metadata !DIExpression()), !dbg !2245
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2246
  ret double %call, !dbg !2247
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2248 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2257, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2258, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i32 %base, metadata !2259, metadata !DIExpression()), !dbg !2260
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2261
  ret i64 %call, !dbg !2262
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2263 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2269, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2270, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 %base, metadata !2271, metadata !DIExpression()), !dbg !2272
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2273
  ret i64 %call, !dbg !2274
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2275 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2286, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2287, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 %base, metadata !2288, metadata !DIExpression()), !dbg !2289
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2290
  ret i64 %call, !dbg !2291
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2292 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2296, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2297, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i32 %base, metadata !2298, metadata !DIExpression()), !dbg !2299
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2300
  ret i64 %call, !dbg !2301
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2302 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2342, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2343, metadata !DIExpression()), !dbg !2344
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2345
  ret i32 %call, !dbg !2346
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2347 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2350, metadata !DIExpression()), !dbg !2351
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2352
  ret i32 %call, !dbg !2353
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2354 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2358, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2359, metadata !DIExpression()), !dbg !2360
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2361
  ret i32 %call, !dbg !2362
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2363 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2367, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2368, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2369, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2370, metadata !DIExpression()), !dbg !2371
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2372
  ret i32 %call, !dbg !2373
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2374 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2380, metadata !DIExpression()), !dbg !2381
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2380, metadata !DIExpression(DW_OP_deref)), !dbg !2381
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2382
  ret i32 %call, !dbg !2383
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2384 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2388, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2389, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2390, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2391, metadata !DIExpression()), !dbg !2392
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2391, metadata !DIExpression(DW_OP_deref)), !dbg !2392
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2393
  ret i32 %call, !dbg !2394
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2395 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2419, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2420, metadata !DIExpression()), !dbg !2421
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2422
  ret i32 %call, !dbg !2423
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2424 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2427, metadata !DIExpression()), !dbg !2428
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2429
  ret i32 %call, !dbg !2430
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2431 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2435, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2436, metadata !DIExpression()), !dbg !2437
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2438
  ret i32 %call, !dbg !2439
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2440 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2444, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2445, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2446, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2447, metadata !DIExpression()), !dbg !2448
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2449
  ret i32 %call, !dbg !2450
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_forwprop() #5 !dbg !2451 {
entry:
  %0 = load i32, i32* @flag_tree_forwprop, align 4, !dbg !2452
  %conv = trunc i32 %0 to i8, !dbg !2452
  ret i8 %conv, !dbg !2453
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_forward_propagate_single_use_vars() #5 !dbg !2454 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !2457, metadata !DIExpression()), !dbg !2486
  store i1 false, i1* @cfg_changed, align 1, !dbg !2487
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2488
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2488
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2488
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2488
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2488
  %3 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2489
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2490
  br label %for.cond, !dbg !2488

for.cond:                                         ; preds = %for.end, %entry
  %5 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre8, %for.end ], !dbg !2491
  %todoflags.0 = phi i32 [ 0, %entry ], [ %todoflags.1.lcssa, %for.end ], !dbg !2492
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.end ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2493
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2493
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2456, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 %todoflags.0, metadata !2457, metadata !DIExpression()), !dbg !2486
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !2491
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2491
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !2491
  br i1 %cmp, label %for.end145, label %for.body, !dbg !2488

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2494
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2495
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #8, !dbg !2495
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !2495
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2495
  br label %for.cond3, !dbg !2496

for.cond3:                                        ; preds = %cleanup141, %for.body
  %todoflags.1 = phi i32 [ %todoflags.0, %for.body ], [ %todoflags.11, %cleanup141 ], !dbg !2492
  call void @llvm.dbg.value(metadata i32 %todoflags.1, metadata !2457, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2497
  %tobool = icmp eq i8 %call, 0, !dbg !2498
  br i1 %tobool, label %for.body4, label %for.end, !dbg !2499

for.body4:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2500
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !2468, metadata !DIExpression()), !dbg !2501
  %call6 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call5) #8, !dbg !2502
  %tobool7 = icmp eq i8 %call6, 0, !dbg !2502
  br i1 %tobool7, label %if.else120, label %if.then, !dbg !2503

if.then:                                          ; preds = %for.body4
  %call8 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call5) #8, !dbg !2504
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !2472, metadata !DIExpression()), !dbg !2505
  %call9 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call5) #8, !dbg !2506
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !2475, metadata !DIExpression()), !dbg !2505
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2507
  %bf.load = load i64, i64* %7, align 8, !dbg !2507
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !2509
  %cmp10 = icmp eq i64 %bf.cast2, 141, !dbg !2509
  br i1 %cmp10, label %if.end, label %if.then11, !dbg !2510

if.then11:                                        ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2511
  br label %cleanup141, !dbg !2513, !llvm.loop !2514

if.end:                                           ; preds = %if.then
  %call12 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call5) #8, !dbg !2516
  %cmp13 = icmp eq i32 %call12, 121, !dbg !2517
  br i1 %cmp13, label %if.then38, label %lor.lhs.false, !dbg !2518

lor.lhs.false:                                    ; preds = %if.end
  %call14 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call5) #8, !dbg !2519
  %cmp15 = icmp eq i32 %call14, 116, !dbg !2519
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false16, !dbg !2519

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %call17 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call5) #8, !dbg !2519
  %cmp18 = icmp eq i32 %call17, 113, !dbg !2519
  br i1 %cmp18, label %land.lhs.true, label %if.else47, !dbg !2520

land.lhs.true:                                    ; preds = %lor.lhs.false16, %lor.lhs.false
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2521
  %bf.load20 = load i64, i64* %8, align 8, !dbg !2521
  %bf.cast225 = and i64 %bf.load20, 65535, !dbg !2522
  %cmp23 = icmp eq i64 %bf.cast225, 121, !dbg !2522
  br i1 %cmp23, label %land.lhs.true24, label %if.else47, !dbg !2523

land.lhs.true24:                                  ; preds = %land.lhs.true
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2524
  %9 = bitcast %union.tree_node** %type to i64**, !dbg !2524
  %10 = load i64*, i64** %9, align 8, !dbg !2524
  %bf.load26 = load i64, i64* %10, align 8, !dbg !2524
  %bf.cast286 = and i64 %bf.load26, 65535, !dbg !2524
  %cmp29 = icmp eq i64 %bf.cast286, 10, !dbg !2524
  br i1 %cmp29, label %if.then38, label %lor.lhs.false30, !dbg !2524

lor.lhs.false30:                                  ; preds = %land.lhs.true24
  %cmp37 = icmp eq i64 %bf.cast286, 12, !dbg !2524
  br i1 %cmp37, label %if.then38, label %if.else47, !dbg !2525

if.then38:                                        ; preds = %lor.lhs.false30, %land.lhs.true24, %if.end
  %call39 = call %union.tree_node* @tree_strip_nop_conversions(%union.tree_node* %call9) #6, !dbg !2526
  call void @llvm.dbg.value(metadata %union.tree_node* %call39, metadata !2475, metadata !DIExpression()), !dbg !2505
  %call40 = call zeroext i8 @stmt_references_abnormal_ssa_name(%union.gimple_statement_d* %call5) #6, !dbg !2528
  %tobool41 = icmp eq i8 %call40, 0, !dbg !2528
  br i1 %tobool41, label %land.lhs.true42, label %if.else, !dbg !2530

land.lhs.true42:                                  ; preds = %if.then38
  %call43 = call fastcc zeroext i8 @forward_propagate_addr_expr(%union.tree_node* %call8, %union.tree_node* %call39) #8, !dbg !2531
  %tobool44 = icmp eq i8 %call43, 0, !dbg !2531
  br i1 %tobool44, label %if.else, label %if.then45, !dbg !2532

if.then45:                                        ; preds = %land.lhs.true42
  call void @release_defs(%union.gimple_statement_d* %call5) #6, !dbg !2533
  %or = or i32 %todoflags.1, 32768, !dbg !2535
  call void @llvm.dbg.value(metadata i32 %or, metadata !2457, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !2536
  br label %cleanup141, !dbg !2537

if.else:                                          ; preds = %land.lhs.true42, %if.then38
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2538
  br label %cleanup141

if.else47:                                        ; preds = %lor.lhs.false30, %land.lhs.true, %lor.lhs.false16
  %call48 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call5) #8, !dbg !2539
  %cmp49 = icmp eq i32 %call48, 66, !dbg !2540
  br i1 %cmp49, label %land.lhs.true51, label %if.else62, !dbg !2541

land.lhs.true51:                                  ; preds = %if.else47
  %call52 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call9) #6, !dbg !2542
  %tobool54 = icmp eq i8 %call52, 0, !dbg !2542
  br i1 %tobool54, label %if.else62, label %if.then55, !dbg !2543

if.then55:                                        ; preds = %land.lhs.true51
  %call56 = call zeroext i8 @fold_stmt_inplace(%union.gimple_statement_d* %call5) #6, !dbg !2544
  call fastcc void @update_stmt(%union.gimple_statement_d* %call5) #8, !dbg !2546
  %call57 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call5) #8, !dbg !2547
  %cmp58 = icmp eq i32 %call57, 66, !dbg !2549
  br i1 %cmp58, label %if.then60, label %cleanup141, !dbg !2550

if.then60:                                        ; preds = %if.then55
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2551
  br label %cleanup141, !dbg !2551

if.else62:                                        ; preds = %land.lhs.true51, %if.else47
  %call63 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call5) #8, !dbg !2552
  %cmp64 = icmp eq i32 %call63, 90, !dbg !2553
  br i1 %cmp64, label %land.lhs.true70, label %lor.lhs.false66, !dbg !2554

lor.lhs.false66:                                  ; preds = %if.else62
  %call67 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call5) #8, !dbg !2555
  %cmp68 = icmp eq i32 %call67, 79, !dbg !2556
  br i1 %cmp68, label %land.lhs.true70, label %if.else78, !dbg !2557

land.lhs.true70:                                  ; preds = %lor.lhs.false66, %if.else62
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %call9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2558
  %bf.load72 = load i64, i64* %11, align 8, !dbg !2558
  %bf.cast744 = and i64 %bf.load72, 65535, !dbg !2559
  %cmp75 = icmp eq i64 %bf.cast744, 141, !dbg !2559
  br i1 %cmp75, label %if.then77, label %if.else78, !dbg !2560

if.then77:                                        ; preds = %land.lhs.true70
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call fastcc void @simplify_not_neg_expr(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2561
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2563
  br label %cleanup141, !dbg !2564

if.else78:                                        ; preds = %land.lhs.true70, %lor.lhs.false66
  %call79 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call5) #8, !dbg !2565
  %cmp80 = icmp eq i32 %call79, 56, !dbg !2566
  br i1 %cmp80, label %if.then82, label %if.else96, !dbg !2567

if.then82:                                        ; preds = %if.else78
  call void @fold_defer_overflow_warnings() #6, !dbg !2568
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  %call83 = call fastcc i32 @forward_propagate_into_cond(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2569
  call void @llvm.dbg.value(metadata i32 %call83, metadata !2476, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  %call84 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2571
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call84, metadata !2468, metadata !DIExpression()), !dbg !2501
  %cmp85 = icmp eq i32 %call83, 2, !dbg !2572
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !2574

if.then87:                                        ; preds = %if.then82
  store i1 true, i1* @cfg_changed, align 1, !dbg !2575
  br label %if.end88, !dbg !2576

if.end88:                                         ; preds = %if.then87, %if.then82
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %call9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2577
  %bf.load90 = load i64, i64* %12, align 8, !dbg !2577
  %bf.cast923 = and i64 %bf.load90, 8388608, !dbg !2577
  %tobool93 = icmp eq i64 %bf.cast923, 0, !dbg !2577
  %tobool94 = icmp ne i32 %call83, 0, !dbg !2578
  %spec.select = and i1 %tobool93, %tobool94, !dbg !2578
  %conv95 = zext i1 %spec.select to i8, !dbg !2579
  call void @fold_undefer_overflow_warnings(i8 zeroext %conv95, %union.gimple_statement_d* %call84, i32 2) #6, !dbg !2580
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2581
  br label %cleanup141, !dbg !2582

if.else96:                                        ; preds = %if.else78
  %call97 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call5) #8, !dbg !2583
  %idxprom = sext i32 %call97 to i64, !dbg !2583
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom, !dbg !2583
  %13 = load i32, i32* %arrayidx, align 4, !dbg !2583
  %cmp98 = icmp eq i32 %13, 5, !dbg !2585
  br i1 %cmp98, label %if.then100, label %if.else107, !dbg !2586

if.then100:                                       ; preds = %if.else96
  %call101 = call fastcc zeroext i8 @forward_propagate_comparison(%union.gimple_statement_d* %call5) #8, !dbg !2587
  %tobool102 = icmp eq i8 %call101, 0, !dbg !2587
  br i1 %tobool102, label %if.else105, label %if.then103, !dbg !2590

if.then103:                                       ; preds = %if.then100
  call void @release_defs(%union.gimple_statement_d* %call5) #6, !dbg !2591
  %or104 = or i32 %todoflags.1, 32768, !dbg !2593
  call void @llvm.dbg.value(metadata i32 %or104, metadata !2457, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !2594
  br label %cleanup141, !dbg !2595

if.else105:                                       ; preds = %if.then100
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2596
  br label %cleanup141

if.else107:                                       ; preds = %if.else96
  %call108 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call5) #8, !dbg !2597
  %cmp109 = icmp eq i32 %call108, 89, !dbg !2599
  br i1 %cmp109, label %if.then111, label %if.else112, !dbg !2600

if.then111:                                       ; preds = %if.else107
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call fastcc void @simplify_bitwise_and(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call5) #8, !dbg !2601
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2603
  br label %cleanup141, !dbg !2604

if.else112:                                       ; preds = %if.else107
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2605
  br label %cleanup141

if.else120:                                       ; preds = %for.body4
  %call121 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call5) #8, !dbg !2606
  %cmp122 = icmp eq i32 %call121, 5, !dbg !2607
  br i1 %cmp122, label %if.then124, label %if.else125, !dbg !2608

if.then124:                                       ; preds = %if.else120
  call fastcc void @simplify_gimple_switch(%union.gimple_statement_d* %call5) #8, !dbg !2609
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2611
  br label %cleanup141, !dbg !2612

if.else125:                                       ; preds = %if.else120
  %call126 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call5) #8, !dbg !2613
  %cmp127 = icmp eq i32 %call126, 1, !dbg !2614
  br i1 %cmp127, label %if.then129, label %if.else137, !dbg !2615

if.then129:                                       ; preds = %if.else125
  call void @fold_defer_overflow_warnings() #6, !dbg !2616
  %call131 = call fastcc i32 @forward_propagate_into_gimple_cond(%union.gimple_statement_d* %call5) #8, !dbg !2617
  call void @llvm.dbg.value(metadata i32 %call131, metadata !2482, metadata !DIExpression()), !dbg !2618
  %cmp132 = icmp eq i32 %call131, 2, !dbg !2619
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !2621

if.then134:                                       ; preds = %if.then129
  store i1 true, i1* @cfg_changed, align 1, !dbg !2622
  br label %if.end135, !dbg !2623

if.end135:                                        ; preds = %if.then134, %if.then129
  %conv136 = trunc i32 %call131 to i8, !dbg !2624
  call void @fold_undefer_overflow_warnings(i8 zeroext %conv136, %union.gimple_statement_d* %call5, i32 2) #6, !dbg !2625
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2626
  br label %cleanup141, !dbg !2627

if.else137:                                       ; preds = %if.else125
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2628
  br label %cleanup141

cleanup141:                                       ; preds = %if.then11, %if.then60, %if.then55, %if.end88, %if.then111, %if.else112, %if.then103, %if.else105, %if.then77, %if.then45, %if.else, %if.end135, %if.else137, %if.then124
  %todoflags.11 = phi i32 [ %todoflags.1, %if.end135 ], [ %todoflags.1, %if.else137 ], [ %todoflags.1, %if.then124 ], [ %todoflags.1, %if.then11 ], [ %todoflags.1, %if.else ], [ %or, %if.then45 ], [ %todoflags.1, %if.then60 ], [ %todoflags.1, %if.then55 ], [ %todoflags.1, %if.then77 ], [ %todoflags.1, %if.end88 ], [ %or104, %if.then103 ], [ %todoflags.1, %if.else105 ], [ %todoflags.1, %if.else112 ], [ %todoflags.1, %if.then111 ], !dbg !2492
  call void @llvm.dbg.value(metadata i32 %todoflags.11, metadata !2457, metadata !DIExpression()), !dbg !2486
  br label %for.cond3

for.end:                                          ; preds = %for.cond3
  %todoflags.1.lcssa = phi i32 [ %todoflags.1, %for.cond3 ], !dbg !2492
  call void @llvm.dbg.value(metadata i32 %todoflags.1.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 %todoflags.1.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 %todoflags.1.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2486
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2629
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2491
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2630
  %.pre8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2491
  br label %for.cond, !dbg !2491, !llvm.loop !2631

for.end145:                                       ; preds = %for.cond
  %todoflags.0.lcssa = phi i32 [ %todoflags.0, %for.cond ], !dbg !2492
  call void @llvm.dbg.value(metadata i32 %todoflags.0.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 %todoflags.0.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 %todoflags.0.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2486
  %.b = load i1, i1* @cfg_changed, align 1, !dbg !2633
  %or148 = or i32 %todoflags.0.lcssa, 32, !dbg !2635
  %spec.select1 = select i1 %.b, i32 %or148, i32 %todoflags.0.lcssa, !dbg !2636
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !2457, metadata !DIExpression()), !dbg !2486
  ret i32 %spec.select1, !dbg !2637
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2638 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2642, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2643, metadata !DIExpression()), !dbg !2646
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !2647
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2644, metadata !DIExpression()), !dbg !2645
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !2648
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2649
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2650
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2651
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2652
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2653
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2654
  ret void, !dbg !2655
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2656 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2660, metadata !DIExpression()), !dbg !2661
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2662
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2662
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2663
  %conv1 = zext i1 %cmp to i8, !dbg !2664
  ret i8 %conv1, !dbg !2665
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2666 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2670, metadata !DIExpression()), !dbg !2671
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2672
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2672
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2673
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2673
  ret %union.gimple_statement_d* %1, !dbg !2674
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2675 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2680, metadata !DIExpression()), !dbg !2681
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !2682
  %cmp = icmp eq i32 %call, 6, !dbg !2683
  %conv1 = zext i1 %cmp to i8, !dbg !2682
  ret i8 %conv1, !dbg !2684
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2685 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2689, metadata !DIExpression()), !dbg !2690
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !2691
  ret %union.tree_node* %call, !dbg !2692
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2693 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2695, metadata !DIExpression()), !dbg !2696
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !2697
  ret %union.tree_node* %call, !dbg !2698
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2699 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2704, metadata !DIExpression()), !dbg !2705
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2706
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2706
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2707
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2707
  %2 = load i64, i64* %1, align 8, !dbg !2707
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2708
  store i64 %2, i64* %3, align 8, !dbg !2708
  ret void, !dbg !2709
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2710 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2714, metadata !DIExpression()), !dbg !2716
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #8, !dbg !2717
  call void @llvm.dbg.value(metadata i32 %call, metadata !2715, metadata !DIExpression()), !dbg !2716
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #8, !dbg !2718
  %cmp = icmp eq i32 %call1, 3, !dbg !2720
  br i1 %cmp, label %if.then, label %if.end, !dbg !2721

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #8, !dbg !2722
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2722
  %bf.load = load i64, i64* %0, align 8, !dbg !2722
  %1 = trunc i64 %bf.load to i32, !dbg !2722
  %bf.cast = and i32 %1, 65535, !dbg !2722
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !2715, metadata !DIExpression()), !dbg !2716
  br label %if.end, !dbg !2723

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !2716
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !2715, metadata !DIExpression()), !dbg !2716
  ret i32 %code.0, !dbg !2724
}

declare dso_local %union.tree_node* @tree_strip_nop_conversions(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @stmt_references_abnormal_ssa_name(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @forward_propagate_addr_expr(%union.tree_node* %name, %union.tree_node* %rhs) unnamed_addr #5 !dbg !2725 {
entry:
  %iter = alloca %struct.immediate_use_iterator_d, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %gsi41 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !2729, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !2730, metadata !DIExpression()), !dbg !2753
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2754
  %0 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2754
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %0, align 8, !dbg !2754
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %1) #8, !dbg !2755
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 10, !dbg !2756
  %2 = load i32, i32* %loop_depth, align 4, !dbg !2756
  call void @llvm.dbg.value(metadata i32 %2, metadata !2731, metadata !DIExpression()), !dbg !2753
  %3 = bitcast %struct.immediate_use_iterator_d* %iter to i8*, !dbg !2757
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #7, !dbg !2757
  call void @llvm.dbg.value(metadata i8 1, metadata !2741, metadata !DIExpression()), !dbg !2753
  %call1 = tail call fastcc zeroext i8 @has_single_use(%union.tree_node* %name) #8, !dbg !2758
  call void @llvm.dbg.value(metadata i8 %call1, metadata !2742, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2732, metadata !DIExpression(DW_OP_deref)), !dbg !2753
  %call2 = call fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %iter, %union.tree_node* %name) #8, !dbg !2759
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !2740, metadata !DIExpression()), !dbg !2753
  %4 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2760
  %5 = bitcast %struct.gimple_stmt_iterator* %gsi41 to i8*, !dbg !2761
  br label %for.cond, !dbg !2759

for.cond:                                         ; preds = %cleanup, %entry
  %use_stmt.0 = phi %union.gimple_statement_d* [ %call2, %entry ], [ %call44, %cleanup ], !dbg !2762
  %all.0 = phi i8 [ 1, %entry ], [ %all.2, %cleanup ], !dbg !2763
  call void @llvm.dbg.value(metadata i8 %all.0, metadata !2741, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %use_stmt.0, metadata !2740, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2732, metadata !DIExpression(DW_OP_deref)), !dbg !2753
  %call3 = call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !2764
  %tobool = icmp eq i8 %call3, 0, !dbg !2764
  br i1 %tobool, label %for.body, label %for.end, !dbg !2759

for.body:                                         ; preds = %for.cond
  %call4 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %use_stmt.0) #8, !dbg !2765
  %cmp = icmp eq i32 %call4, 6, !dbg !2767
  br i1 %cmp, label %if.end8, label %if.then, !dbg !2768

if.then:                                          ; preds = %for.body
  %call5 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %use_stmt.0) #8, !dbg !2769
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2769
  %spec.select = select i1 %tobool6, i8 0, i8 %all.0, !dbg !2772
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !2741, metadata !DIExpression()), !dbg !2753
  br label %cleanup, !dbg !2773

if.end8:                                          ; preds = %for.body
  %call9 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %use_stmt.0) #8, !dbg !2774
  %loop_depth10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call9, i64 0, i32 10, !dbg !2776
  %6 = load i32, i32* %loop_depth10, align 4, !dbg !2776
  %cmp11 = icmp sgt i32 %6, %2, !dbg !2777
  br i1 %cmp11, label %cleanup, label %if.end13, !dbg !2778

if.end13:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2779
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2748, metadata !DIExpression(DW_OP_deref)), !dbg !2760
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %gsi, %union.gimple_statement_d* %use_stmt.0) #6, !dbg !2780
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2748, metadata !DIExpression(DW_OP_deref)), !dbg !2760
  %call14 = call fastcc zeroext i8 @forward_propagate_addr_expr_1(%union.tree_node* %name, %union.tree_node* %rhs, %struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext %call1) #8, !dbg !2781
  call void @llvm.dbg.value(metadata i8 %call14, metadata !2743, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2748, metadata !DIExpression(DW_OP_deref)), !dbg !2760
  %call15 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2783
  %cmp16 = icmp eq %union.gimple_statement_d* %use_stmt.0, %call15, !dbg !2785
  br i1 %cmp16, label %if.end19, label %if.then17, !dbg !2786

if.then17:                                        ; preds = %if.end13
  call fastcc void @update_stmt(%union.gimple_statement_d* %use_stmt.0) #8, !dbg !2787
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2748, metadata !DIExpression(DW_OP_deref)), !dbg !2760
  %call18 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2789
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call18, metadata !2740, metadata !DIExpression()), !dbg !2753
  br label %if.end19, !dbg !2790

if.end19:                                         ; preds = %if.end13, %if.then17
  %use_stmt.1 = phi %union.gimple_statement_d* [ %call18, %if.then17 ], [ %use_stmt.0, %if.end13 ], !dbg !2762
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %use_stmt.1, metadata !2740, metadata !DIExpression()), !dbg !2753
  call fastcc void @update_stmt(%union.gimple_statement_d* %use_stmt.1) #8, !dbg !2791
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2792
  %and1 = and i8 %all.0, %call14, !dbg !2793
  call void @llvm.dbg.value(metadata i8 %and1, metadata !2741, metadata !DIExpression()), !dbg !2753
  %call22 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %use_stmt.1) #8, !dbg !2794
  call void @llvm.dbg.value(metadata %union.tree_node* %call22, metadata !2747, metadata !DIExpression()), !dbg !2782
  %tobool24 = icmp eq i8 %call14, 0, !dbg !2795
  br i1 %tobool24, label %cleanup, label %land.lhs.true, !dbg !2796

land.lhs.true:                                    ; preds = %if.end19
  %call25 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %use_stmt.1) #8, !dbg !2797
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call25, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2797
  %bf.load = load i64, i64* %7, align 8, !dbg !2797
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !2798
  %cmp26 = icmp eq i64 %bf.cast2, 141, !dbg !2798
  br i1 %cmp26, label %land.lhs.true28, label %cleanup, !dbg !2799

land.lhs.true28:                                  ; preds = %land.lhs.true
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2800
  %bf.load30 = load i64, i64* %8, align 8, !dbg !2800
  %bf.cast323 = and i64 %bf.load30, 65535, !dbg !2801
  %cmp33 = icmp eq i64 %bf.cast323, 141, !dbg !2801
  br i1 %cmp33, label %land.lhs.true35, label %cleanup, !dbg !2802

land.lhs.true35:                                  ; preds = %land.lhs.true28
  %call36 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %use_stmt.1) #8, !dbg !2803
  %call37 = call fastcc zeroext i8 @has_zero_uses(%union.tree_node* %call36) #8, !dbg !2804
  %tobool39 = icmp eq i8 %call37, 0, !dbg !2804
  br i1 %tobool39, label %cleanup, label %if.then40, !dbg !2805

if.then40:                                        ; preds = %land.lhs.true35
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !2806
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi41, metadata !2750, metadata !DIExpression(DW_OP_deref)), !dbg !2761
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %gsi41, %union.gimple_statement_d* %use_stmt.1) #6, !dbg !2807
  call void @release_defs(%union.gimple_statement_d* %use_stmt.1) #6, !dbg !2808
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi41, metadata !2750, metadata !DIExpression(DW_OP_deref)), !dbg !2761
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi41, i8 zeroext 1) #6, !dbg !2809
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !2810
  br label %cleanup, !dbg !2811

cleanup:                                          ; preds = %land.lhs.true35, %if.end19, %land.lhs.true, %land.lhs.true28, %if.then40, %if.end8, %if.then
  %all.2 = phi i8 [ %spec.select, %if.then ], [ 0, %if.end8 ], [ %and1, %if.then40 ], [ %and1, %land.lhs.true35 ], [ %and1, %land.lhs.true28 ], [ %and1, %land.lhs.true ], [ %and1, %if.end19 ], !dbg !2753
  call void @llvm.dbg.value(metadata i8 %all.2, metadata !2741, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2732, metadata !DIExpression(DW_OP_deref)), !dbg !2753
  %call44 = call fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !2764
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call44, metadata !2740, metadata !DIExpression()), !dbg !2753
  br label %for.cond, !dbg !2764, !llvm.loop !2812

for.end:                                          ; preds = %for.cond
  %all.0.lcssa = phi i8 [ %all.0, %for.cond ], !dbg !2763
  call void @llvm.dbg.value(metadata i8 %all.0.lcssa, metadata !2741, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 %all.0.lcssa, metadata !2741, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 %all.0.lcssa, metadata !2741, metadata !DIExpression()), !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #7, !dbg !2814
  ret i8 %all.0.lcssa, !dbg !2815
}

declare dso_local void @release_defs(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @fold_stmt_inplace(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !2816 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !2820, metadata !DIExpression()), !dbg !2821
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #8, !dbg !2822
  %tobool = icmp eq i8 %call, 0, !dbg !2822
  br i1 %tobool, label %if.end, label %if.then, !dbg !2824

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !2825
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !2827
  br label %if.end, !dbg !2828

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2829
}

; Function Attrs: nounwind uwtable
define internal fastcc void @simplify_not_neg_expr(%struct.gimple_stmt_iterator* %gsi_p) unnamed_addr #5 !dbg !2830 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi_p, metadata !2832, metadata !DIExpression()), !dbg !2839
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi_p) #8, !dbg !2840
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2833, metadata !DIExpression()), !dbg !2839
  %call1 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call) #8, !dbg !2841
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2834, metadata !DIExpression()), !dbg !2839
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2842
  %0 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2842
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %0, align 8, !dbg !2842
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !2835, metadata !DIExpression()), !dbg !2839
  %call2 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %1) #8, !dbg !2843
  %tobool = icmp eq i8 %call2, 0, !dbg !2843
  br i1 %tobool, label %if.end17, label %land.lhs.true, !dbg !2844

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %1) #8, !dbg !2845
  %call4 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call) #8, !dbg !2846
  %cmp = icmp eq i32 %call3, %call4, !dbg !2847
  br i1 %cmp, label %if.then, label %if.end17, !dbg !2848

if.then:                                          ; preds = %land.lhs.true
  %call6 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %1) #8, !dbg !2849
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !2836, metadata !DIExpression()), !dbg !2850
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2851
  %bf.load = load i64, i64* %2, align 8, !dbg !2851
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2853
  %cmp7 = icmp eq i64 %bf.cast1, 141, !dbg !2853
  br i1 %cmp7, label %land.lhs.true9, label %if.end17, !dbg !2854

land.lhs.true9:                                   ; preds = %if.then
  %bf.cast132 = and i64 %bf.load, 4194304, !dbg !2855
  %tobool14 = icmp eq i64 %bf.cast132, 0, !dbg !2855
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !2856

if.then15:                                        ; preds = %land.lhs.true9
  tail call void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator* %gsi_p, %union.tree_node* %call6) #6, !dbg !2857
  %call16 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi_p) #8, !dbg !2859
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call16, metadata !2833, metadata !DIExpression()), !dbg !2839
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %call16) #8, !dbg !2860
  br label %if.end17, !dbg !2861

if.end17:                                         ; preds = %land.lhs.true9, %entry, %if.then, %if.then15, %land.lhs.true
  ret void, !dbg !2862
}

declare dso_local void @fold_defer_overflow_warnings() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @forward_propagate_into_cond(%struct.gimple_stmt_iterator* %gsi_p) unnamed_addr #5 !dbg !2863 {
entry:
  %single_use0_p = alloca i8, align 1
  %single_use1_p = alloca i8, align 1
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi_p, metadata !2867, metadata !DIExpression()), !dbg !2888
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi_p) #8, !dbg !2889
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2868, metadata !DIExpression()), !dbg !2888
  %call1 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %call) #8, !dbg !2890
  call void @llvm.dbg.value(metadata i32 %call1, metadata !2869, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 0, metadata !2870, metadata !DIExpression()), !dbg !2888
  br label %do.body, !dbg !2891

do.body:                                          ; preds = %cleanup135, %entry
  %name.0 = phi %union.tree_node* [ undef, %entry ], [ %name.4, %cleanup135 ]
  %did_something.0 = phi i32 [ 0, %entry ], [ %did_something.3, %cleanup135 ], !dbg !2892
  %stmt.0 = phi %union.gimple_statement_d* [ %call, %entry ], [ %stmt.1, %cleanup135 ], !dbg !2893
  %retval.0 = phi i32 [ undef, %entry ], [ %retval.4, %cleanup135 ]
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt.0, metadata !2868, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %did_something.0, metadata !2870, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata %union.tree_node* %name.0, metadata !2874, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2871, metadata !DIExpression()), !dbg !2894
  %call2 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt.0) #8, !dbg !2895
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2873, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2875, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2876, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* %single_use0_p, metadata !2878, metadata !DIExpression(DW_OP_deref)), !dbg !2894
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %single_use0_p) #7, !dbg !2896
  call void @llvm.dbg.value(metadata i8 0, metadata !2878, metadata !DIExpression()), !dbg !2894
  store i8 0, i8* %single_use0_p, align 1, !dbg !2897
  call void @llvm.dbg.value(metadata i8* %single_use1_p, metadata !2879, metadata !DIExpression(DW_OP_deref)), !dbg !2894
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %single_use1_p) #7, !dbg !2896
  call void @llvm.dbg.value(metadata i8 0, metadata !2879, metadata !DIExpression()), !dbg !2894
  store i8 0, i8* %single_use1_p, align 1, !dbg !2898
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2899
  %bf.load = load i64, i64* %0, align 8, !dbg !2899
  %bf.cast = and i64 %bf.load, 65535, !dbg !2899
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !2899
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2899
  %cmp = icmp eq i32 %1, 5, !dbg !2899
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2900

land.lhs.true:                                    ; preds = %do.body
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2901
  %2 = bitcast %union.tree_node** %operands to i64**, !dbg !2901
  %3 = load i64*, i64** %2, align 8, !dbg !2901
  %bf.load5 = load i64, i64* %3, align 8, !dbg !2901
  %bf.cast74 = and i64 %bf.load5, 65535, !dbg !2902
  %cmp8 = icmp eq i64 %bf.cast74, 141, !dbg !2902
  %4 = bitcast i64* %3 to %union.tree_node*, !dbg !2903
  br i1 %cmp8, label %if.then, label %if.else, !dbg !2903

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2874, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* %single_use0_p, metadata !2878, metadata !DIExpression(DW_OP_deref)), !dbg !2894
  %call12 = call fastcc %union.gimple_statement_d* @get_prop_source_stmt(%union.tree_node* %4, i8 zeroext 0, i8* nonnull %single_use0_p) #8, !dbg !2904
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12, metadata !2877, metadata !DIExpression()), !dbg !2894
  %tobool = icmp eq %union.gimple_statement_d* %call12, null, !dbg !2905
  br i1 %tobool, label %if.end, label %land.lhs.true13, !dbg !2906

land.lhs.true13:                                  ; preds = %if.then
  %call14 = call fastcc zeroext i8 @can_propagate_from(%union.gimple_statement_d* nonnull %call12) #8, !dbg !2907
  %tobool15 = icmp eq i8 %call14, 0, !dbg !2907
  br i1 %tobool15, label %if.end, label %if.then16, !dbg !2908

if.then16:                                        ; preds = %land.lhs.true13
  %arrayidx19 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2909
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8, !dbg !2909
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2880, metadata !DIExpression()), !dbg !2910
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2911
  %6 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2911
  %call20 = call fastcc %union.tree_node* @rhs_to_tree(%union.tree_node* %6, %union.gimple_statement_d* nonnull %call12) #8, !dbg !2912
  call void @llvm.dbg.value(metadata %union.tree_node* %call20, metadata !2875, metadata !DIExpression()), !dbg !2894
  %bf.load22 = load i64, i64* %0, align 8, !dbg !2913
  %7 = trunc i64 %bf.load22 to i32, !dbg !2913
  %bf.cast24 = and i32 %7, 65535, !dbg !2913
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !2914
  %9 = load i8, i8* %single_use0_p, align 1, !dbg !2915
  call void @llvm.dbg.value(metadata i8 %9, metadata !2878, metadata !DIExpression()), !dbg !2894
  %tobool25 = icmp eq i8 %9, 0, !dbg !2916
  %conv26 = zext i1 %tobool25 to i8, !dbg !2916
  %call27 = call fastcc %union.tree_node* @combine_cond_expr_cond(i32 %call1, i32 %bf.cast24, %union.tree_node* %8, %union.tree_node* %call20, %union.tree_node* %5, i8 zeroext %conv26) #8, !dbg !2917
  call void @llvm.dbg.value(metadata %union.tree_node* %call27, metadata !2871, metadata !DIExpression()), !dbg !2894
  br label %if.end, !dbg !2918

if.end:                                           ; preds = %land.lhs.true13, %if.then, %if.then16
  %rhs0.0 = phi %union.tree_node* [ %call20, %if.then16 ], [ null, %land.lhs.true13 ], [ null, %if.then ], !dbg !2894
  %tmp.0 = phi %union.tree_node* [ %call27, %if.then16 ], [ null, %land.lhs.true13 ], [ null, %if.then ], !dbg !2894
  call void @llvm.dbg.value(metadata %union.tree_node* %tmp.0, metadata !2871, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs0.0, metadata !2875, metadata !DIExpression()), !dbg !2894
  %cmp28 = icmp eq %union.tree_node* %tmp.0, null, !dbg !2919
  br i1 %cmp28, label %land.lhs.true30, label %if.end65, !dbg !2920

land.lhs.true30:                                  ; preds = %if.end
  %arrayidx33 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2921
  %10 = bitcast %union.tree_node** %arrayidx33 to i64**, !dbg !2921
  %11 = load i64*, i64** %10, align 8, !dbg !2921
  %bf.load35 = load i64, i64* %11, align 8, !dbg !2921
  %bf.cast375 = and i64 %bf.load35, 65535, !dbg !2922
  %cmp38 = icmp eq i64 %bf.cast375, 141, !dbg !2922
  %12 = bitcast i64* %11 to %union.tree_node*, !dbg !2923
  br i1 %cmp38, label %if.then40, label %if.end65, !dbg !2923

if.then40:                                        ; preds = %land.lhs.true30
  %13 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2924
  call void @llvm.dbg.value(metadata %union.tree_node* %13, metadata !2885, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata %union.tree_node* %12, metadata !2874, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* %single_use1_p, metadata !2879, metadata !DIExpression(DW_OP_deref)), !dbg !2894
  %call47 = call fastcc %union.gimple_statement_d* @get_prop_source_stmt(%union.tree_node* %12, i8 zeroext 0, i8* nonnull %single_use1_p) #8, !dbg !2926
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call47, metadata !2877, metadata !DIExpression()), !dbg !2894
  %tobool48 = icmp eq %union.gimple_statement_d* %call47, null, !dbg !2927
  br i1 %tobool48, label %cleanup, label %lor.lhs.false, !dbg !2929

lor.lhs.false:                                    ; preds = %if.then40
  %call49 = call fastcc zeroext i8 @can_propagate_from(%union.gimple_statement_d* nonnull %call47) #8, !dbg !2930
  %tobool50 = icmp eq i8 %call49, 0, !dbg !2930
  br i1 %tobool50, label %cleanup, label %if.end52, !dbg !2931

if.end52:                                         ; preds = %lor.lhs.false
  %type54 = getelementptr inbounds %union.tree_node, %union.tree_node* %13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2932
  %14 = load %union.tree_node*, %union.tree_node** %type54, align 8, !dbg !2932
  %call55 = call fastcc %union.tree_node* @rhs_to_tree(%union.tree_node* %14, %union.gimple_statement_d* nonnull %call47) #8, !dbg !2933
  call void @llvm.dbg.value(metadata %union.tree_node* %call55, metadata !2876, metadata !DIExpression()), !dbg !2894
  %bf.load57 = load i64, i64* %0, align 8, !dbg !2934
  %15 = trunc i64 %bf.load57 to i32, !dbg !2934
  %bf.cast59 = and i32 %15, 65535, !dbg !2934
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !2935
  %17 = load i8, i8* %single_use1_p, align 1, !dbg !2936
  call void @llvm.dbg.value(metadata i8 %17, metadata !2879, metadata !DIExpression()), !dbg !2894
  %tobool60 = icmp eq i8 %17, 0, !dbg !2937
  %conv63 = zext i1 %tobool60 to i8, !dbg !2937
  %call64 = call fastcc %union.tree_node* @combine_cond_expr_cond(i32 %call1, i32 %bf.cast59, %union.tree_node* %16, %union.tree_node* %13, %union.tree_node* %call55, i8 zeroext %conv63) #8, !dbg !2938
  call void @llvm.dbg.value(metadata %union.tree_node* %call64, metadata !2871, metadata !DIExpression()), !dbg !2894
  br label %cleanup, !dbg !2939

cleanup:                                          ; preds = %lor.lhs.false, %if.then40, %if.end52
  %rhs1.0 = phi %union.tree_node* [ %call55, %if.end52 ], [ null, %lor.lhs.false ], [ null, %if.then40 ], !dbg !2894
  %tmp.1 = phi %union.tree_node* [ %call64, %if.end52 ], [ null, %lor.lhs.false ], [ null, %if.then40 ], !dbg !2940
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end52 ], [ 1, %lor.lhs.false ], [ 1, %if.then40 ]
  %retval.1 = phi i32 [ %retval.0, %if.end52 ], [ %did_something.0, %lor.lhs.false ], [ %did_something.0, %if.then40 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %tmp.1, metadata !2871, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs1.0, metadata !2876, metadata !DIExpression()), !dbg !2894
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %if.end65, label %cleanup135

if.end65:                                         ; preds = %cleanup, %land.lhs.true30, %if.end
  %name.1 = phi %union.tree_node* [ %4, %land.lhs.true30 ], [ %4, %if.end ], [ %12, %cleanup ], !dbg !2940
  %rhs1.1 = phi %union.tree_node* [ null, %land.lhs.true30 ], [ null, %if.end ], [ %rhs1.0, %cleanup ], !dbg !2894
  %tmp.2 = phi %union.tree_node* [ null, %land.lhs.true30 ], [ %tmp.0, %if.end ], [ %tmp.1, %cleanup ], !dbg !2940
  %retval.2 = phi i32 [ %retval.0, %land.lhs.true30 ], [ %retval.0, %if.end ], [ %retval.1, %cleanup ]
  call void @llvm.dbg.value(metadata %union.tree_node* %tmp.2, metadata !2871, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs1.1, metadata !2876, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata %union.tree_node* %name.1, metadata !2874, metadata !DIExpression()), !dbg !2894
  %cmp66 = icmp eq %union.tree_node* %tmp.2, null, !dbg !2941
  %cmp69 = icmp ne %union.tree_node* %rhs0.0, null, !dbg !2943
  %or.cond = and i1 %cmp66, %cmp69, !dbg !2944
  %cmp72 = icmp ne %union.tree_node* %rhs1.1, null, !dbg !2945
  %or.cond1 = and i1 %or.cond, %cmp72, !dbg !2944
  br i1 %or.cond1, label %if.then74, label %if.end111, !dbg !2944

if.then74:                                        ; preds = %if.end65
  %bf.load76 = load i64, i64* %0, align 8, !dbg !2946
  %18 = trunc i64 %bf.load76 to i32, !dbg !2946
  %bf.cast78 = and i32 %18, 65535, !dbg !2946
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !2947
  %type80 = getelementptr inbounds %union.tree_node, %union.tree_node* %rhs0.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2948
  %20 = load %union.tree_node*, %union.tree_node** %type80, align 8, !dbg !2948
  %call81 = call %union.tree_node* @fold_convert_loc(i32 %call1, %union.tree_node* %20, %union.tree_node* nonnull %rhs1.1) #6, !dbg !2949
  %21 = load i8, i8* %single_use0_p, align 1, !dbg !2950
  call void @llvm.dbg.value(metadata i8 %21, metadata !2878, metadata !DIExpression()), !dbg !2894
  %tobool83 = icmp eq i8 %21, 0, !dbg !2950
  %22 = load i8, i8* %single_use1_p, align 1, !dbg !2951
  call void @llvm.dbg.value(metadata i8 %22, metadata !2879, metadata !DIExpression()), !dbg !2894
  %tobool85 = icmp eq i8 %22, 0, !dbg !2951
  %lnot86 = or i1 %tobool83, %tobool85, !dbg !2952
  %conv88 = zext i1 %lnot86 to i8, !dbg !2952
  %call89 = call fastcc %union.tree_node* @combine_cond_expr_cond(i32 %call1, i32 %bf.cast78, %union.tree_node* %19, %union.tree_node* nonnull %rhs0.0, %union.tree_node* %call81, i8 zeroext %conv88) #8, !dbg !2953
  call void @llvm.dbg.value(metadata %union.tree_node* %call89, metadata !2871, metadata !DIExpression()), !dbg !2894
  br label %if.end111, !dbg !2954

if.else:                                          ; preds = %land.lhs.true, %do.body
  %cmp95 = icmp eq i64 %bf.cast, 141, !dbg !2955
  br i1 %cmp95, label %if.then97, label %if.end111, !dbg !2957

if.then97:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2874, metadata !DIExpression()), !dbg !2894
  %call98 = call fastcc %union.gimple_statement_d* @get_prop_source_stmt(%union.tree_node* %call2, i8 zeroext 1, i8* null) #8, !dbg !2958
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call98, metadata !2877, metadata !DIExpression()), !dbg !2894
  %tobool99 = icmp eq %union.gimple_statement_d* %call98, null, !dbg !2960
  br i1 %tobool99, label %lor.lhs.false100, label %cleanup135, !dbg !2962

lor.lhs.false100:                                 ; preds = %if.then97
  %call101 = call fastcc zeroext i8 @can_propagate_from(%union.gimple_statement_d* null) #8, !dbg !2963
  %tobool102 = icmp eq i8 %call101, 0, !dbg !2963
  br i1 %tobool102, label %cleanup135, label %if.end104, !dbg !2964

if.end104:                                        ; preds = %lor.lhs.false100
  %call105 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* null) #8, !dbg !2965
  call void @llvm.dbg.value(metadata %union.tree_node* %call105, metadata !2875, metadata !DIExpression()), !dbg !2894
  %23 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !2966
  %type107 = getelementptr inbounds %union.tree_node, %union.tree_node* %call105, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2967
  %24 = load %union.tree_node*, %union.tree_node** %type107, align 8, !dbg !2967
  %call108 = call %union.tree_node* @build_int_cst(%union.tree_node* %24, i64 0) #6, !dbg !2968
  %call109 = call fastcc %union.tree_node* @combine_cond_expr_cond(i32 %call1, i32 102, %union.tree_node* %23, %union.tree_node* %call105, %union.tree_node* %call108, i8 zeroext 0) #8, !dbg !2969
  call void @llvm.dbg.value(metadata %union.tree_node* %call109, metadata !2871, metadata !DIExpression()), !dbg !2894
  br label %if.end111, !dbg !2970

if.end111:                                        ; preds = %if.else, %if.end104, %if.end65, %if.then74
  %name.3 = phi %union.tree_node* [ %name.1, %if.then74 ], [ %name.1, %if.end65 ], [ %call2, %if.end104 ], [ %name.0, %if.else ], !dbg !2971
  %tmp.5 = phi %union.tree_node* [ %call89, %if.then74 ], [ %tmp.2, %if.end65 ], [ %call109, %if.end104 ], [ null, %if.else ], !dbg !2971
  %retval.3 = phi i32 [ %retval.2, %if.then74 ], [ %retval.2, %if.end65 ], [ %retval.0, %if.end104 ], [ %retval.0, %if.else ]
  call void @llvm.dbg.value(metadata %union.tree_node* %tmp.5, metadata !2871, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata %union.tree_node* %name.3, metadata !2874, metadata !DIExpression()), !dbg !2894
  %tobool112 = icmp eq %union.tree_node* %tmp.5, null, !dbg !2972
  br i1 %tobool112, label %cleanup135, label %if.then113, !dbg !2974

if.then113:                                       ; preds = %if.end111
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2975
  %tobool114 = icmp eq %struct._IO_FILE* %25, null, !dbg !2975
  br i1 %tobool114, label %if.end121, label %if.then117, !dbg !2978

if.then117:                                       ; preds = %if.then113
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2979
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2981
  call void @print_generic_expr(%struct._IO_FILE* %26, %union.tree_node* %call2, i32 0) #6, !dbg !2982
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2983
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2984
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2985
  call void @print_generic_expr(%struct._IO_FILE* %28, %union.tree_node* nonnull %tmp.5, i32 0) #6, !dbg !2986
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2987
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2988
  br label %if.end121, !dbg !2989

if.end121:                                        ; preds = %if.then113, %if.then117
  %call122 = call %union.tree_node* @unshare_expr(%union.tree_node* nonnull %tmp.5) #6, !dbg !2990
  call void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator* %gsi_p, %union.tree_node* %call122) #6, !dbg !2991
  %call123 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi_p) #8, !dbg !2992
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call123, metadata !2868, metadata !DIExpression()), !dbg !2888
  call fastcc void @update_stmt(%union.gimple_statement_d* %call123) #8, !dbg !2993
  %call124 = call fastcc zeroext i8 @remove_prop_source_from_use(%union.tree_node* %name.3, %union.gimple_statement_d* null) #8, !dbg !2994
  %call125 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* nonnull %tmp.5) #6, !dbg !2995
  %tobool126 = icmp eq i8 %call125, 0, !dbg !2995
  %cmp129 = icmp eq i32 %did_something.0, 0, !dbg !2997
  %spec.select = select i1 %cmp129, i32 1, i32 %did_something.0, !dbg !2997
  %did_something.2 = select i1 %tobool126, i32 %spec.select, i32 2, !dbg !2997
  br label %cleanup135, !dbg !2997

cleanup135:                                       ; preds = %lor.lhs.false100, %if.then97, %if.end111, %if.end121, %cleanup
  %name.4 = phi %union.tree_node* [ %12, %cleanup ], [ %call2, %lor.lhs.false100 ], [ %call2, %if.then97 ], [ %name.3, %if.end121 ], [ %name.3, %if.end111 ], !dbg !2971
  %did_something.3 = phi i32 [ %did_something.0, %cleanup ], [ %did_something.0, %lor.lhs.false100 ], [ %did_something.0, %if.then97 ], [ %did_something.2, %if.end121 ], [ %did_something.0, %if.end111 ], !dbg !2888
  %stmt.1 = phi %union.gimple_statement_d* [ %stmt.0, %cleanup ], [ %stmt.0, %lor.lhs.false100 ], [ %stmt.0, %if.then97 ], [ %call123, %if.end121 ], [ %stmt.0, %if.end111 ], !dbg !2888
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 1, %lor.lhs.false100 ], [ 1, %if.then97 ], [ 3, %if.end121 ], [ 2, %if.end111 ]
  %retval.4 = phi i32 [ %retval.1, %cleanup ], [ %did_something.0, %lor.lhs.false100 ], [ %did_something.0, %if.then97 ], [ %retval.3, %if.end121 ], [ %retval.3, %if.end111 ]
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt.1, metadata !2868, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %did_something.3, metadata !2870, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata %union.tree_node* %name.4, metadata !2874, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* %single_use1_p, metadata !2879, metadata !DIExpression(DW_OP_deref)), !dbg !2894
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %single_use1_p) #7, !dbg !2998
  call void @llvm.dbg.value(metadata i8* %single_use0_p, metadata !2878, metadata !DIExpression(DW_OP_deref)), !dbg !2894
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %single_use0_p) #7, !dbg !2998
  switch i32 %cleanup.dest.slot.1, label %cleanup144.loopexit [
    i32 3, label %do.body
    i32 2, label %do.end
  ]

do.end:                                           ; preds = %cleanup135
  %did_something.3.lcssa11 = phi i32 [ %did_something.3, %cleanup135 ], !dbg !2888
  call void @llvm.dbg.value(metadata i32 %did_something.3.lcssa11, metadata !2870, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %did_something.3.lcssa11, metadata !2870, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %did_something.3.lcssa11, metadata !2870, metadata !DIExpression()), !dbg !2888
  br label %cleanup144, !dbg !2999

cleanup144.loopexit:                              ; preds = %cleanup135
  %retval.4.lcssa = phi i32 [ %retval.4, %cleanup135 ]
  br label %cleanup144, !dbg !3000

cleanup144:                                       ; preds = %cleanup144.loopexit, %do.end
  %retval.5 = phi i32 [ %did_something.3.lcssa11, %do.end ], [ %retval.4.lcssa, %cleanup144.loopexit ]
  ret i32 %retval.5, !dbg !3000
}

declare dso_local void @fold_undefer_overflow_warnings(i8 zeroext, %union.gimple_statement_d*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @forward_propagate_comparison(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !3001 {
entry:
  %name = alloca %union.tree_node*, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3005, metadata !DIExpression()), !dbg !3028
  %0 = bitcast %union.tree_node** %name to i8*, !dbg !3029
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3029
  %call = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !3030
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3006, metadata !DIExpression()), !dbg !3028
  store %union.tree_node* %call, %union.tree_node** %name, align 8, !dbg !3031
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3008, metadata !DIExpression()), !dbg !3028
  %call1 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !3032
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3032
  %bf.load = load i64, i64* %1, align 8, !dbg !3032
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !3034
  %cmp = icmp eq i64 %bf.cast2, 141, !dbg !3034
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3035

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !3036
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3036
  %bf.load4 = load i64, i64* %2, align 8, !dbg !3036
  %bf.cast625 = and i64 %bf.load4, 4194304, !dbg !3036
  %tobool = icmp eq i64 %bf.cast625, 0, !dbg !3036
  br i1 %tobool, label %lor.lhs.false, label %cleanup520, !dbg !3037

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %call7 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #8, !dbg !3038
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3038
  %bf.load9 = load i64, i64* %3, align 8, !dbg !3038
  %bf.cast113 = and i64 %bf.load9, 65535, !dbg !3039
  %cmp12 = icmp eq i64 %bf.cast113, 141, !dbg !3039
  br i1 %cmp12, label %land.lhs.true13, label %if.end, !dbg !3040

land.lhs.true13:                                  ; preds = %lor.lhs.false
  %call14 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #8, !dbg !3041
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3041
  %bf.load16 = load i64, i64* %4, align 8, !dbg !3041
  %bf.cast1924 = and i64 %bf.load16, 4194304, !dbg !3041
  %tobool20 = icmp eq i64 %bf.cast1924, 0, !dbg !3041
  br i1 %tobool20, label %if.end, label %cleanup520, !dbg !3042

if.end:                                           ; preds = %land.lhs.true13, %lor.lhs.false
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3006, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata %union.tree_node** %name, metadata !3006, metadata !DIExpression(DW_OP_deref)), !dbg !3028
  %call21 = call fastcc %union.gimple_statement_d* @get_prop_dest_stmt(%union.tree_node* %call, %union.tree_node** nonnull %name) #8, !dbg !3043
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call21, metadata !3007, metadata !DIExpression()), !dbg !3028
  %tobool22 = icmp eq %union.gimple_statement_d* %call21, null, !dbg !3044
  br i1 %tobool22, label %cleanup520, label %if.end24, !dbg !3046

if.end24:                                         ; preds = %if.end
  %call25 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3047
  %tobool26 = icmp eq i8 %call25, 0, !dbg !3047
  br i1 %tobool26, label %cleanup520, label %land.lhs.true27, !dbg !3048

land.lhs.true27:                                  ; preds = %if.end24
  %call28 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3049
  %cmp29 = icmp eq i32 %call28, 116, !dbg !3049
  br i1 %cmp29, label %land.lhs.true43, label %lor.lhs.false31, !dbg !3049

lor.lhs.false31:                                  ; preds = %land.lhs.true27
  %call32 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3049
  %cmp33 = icmp eq i32 %call32, 113, !dbg !3049
  br i1 %cmp33, label %land.lhs.true43, label %lor.lhs.false35, !dbg !3050

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %call36 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3051
  %idxprom = sext i32 %call36 to i64, !dbg !3051
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom, !dbg !3051
  %5 = load i32, i32* %arrayidx, align 4, !dbg !3051
  %cmp37 = icmp eq i32 %5, 5, !dbg !3052
  br i1 %cmp37, label %land.lhs.true43, label %lor.lhs.false39, !dbg !3053

lor.lhs.false39:                                  ; preds = %lor.lhs.false35
  %call40 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3054
  %cmp41 = icmp eq i32 %call40, 96, !dbg !3055
  br i1 %cmp41, label %land.lhs.true43, label %cleanup520, !dbg !3056

land.lhs.true43:                                  ; preds = %lor.lhs.false39, %lor.lhs.false35, %lor.lhs.false31, %land.lhs.true27
  %call44 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3057
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call44, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3057
  %6 = bitcast %union.tree_node** %type to i64**, !dbg !3057
  %7 = load i64*, i64** %6, align 8, !dbg !3057
  %bf.load46 = load i64, i64* %7, align 8, !dbg !3057
  %bf.cast484 = and i64 %bf.load46, 65535, !dbg !3057
  %cmp49 = icmp eq i64 %bf.cast484, 6, !dbg !3057
  br i1 %cmp49, label %if.then71, label %lor.lhs.false51, !dbg !3057

lor.lhs.false51:                                  ; preds = %land.lhs.true43
  %call52 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3057
  %type54 = getelementptr inbounds %union.tree_node, %union.tree_node* %call52, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3057
  %8 = bitcast %union.tree_node** %type54 to i64**, !dbg !3057
  %9 = load i64*, i64** %8, align 8, !dbg !3057
  %bf.load56 = load i64, i64* %9, align 8, !dbg !3057
  %bf.cast585 = and i64 %bf.load56, 65535, !dbg !3057
  %cmp59 = icmp eq i64 %bf.cast585, 7, !dbg !3057
  br i1 %cmp59, label %if.then71, label %lor.lhs.false61, !dbg !3057

lor.lhs.false61:                                  ; preds = %lor.lhs.false51
  %call62 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3057
  %type64 = getelementptr inbounds %union.tree_node, %union.tree_node* %call62, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3057
  %10 = bitcast %union.tree_node** %type64 to i64**, !dbg !3057
  %11 = load i64*, i64** %10, align 8, !dbg !3057
  %bf.load66 = load i64, i64* %11, align 8, !dbg !3057
  %bf.cast686 = and i64 %bf.load66, 65535, !dbg !3057
  %cmp69 = icmp eq i64 %bf.cast686, 8, !dbg !3057
  br i1 %cmp69, label %if.then71, label %cleanup520, !dbg !3058

if.then71:                                        ; preds = %lor.lhs.false61, %lor.lhs.false51, %land.lhs.true43
  %call72 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3059
  call void @llvm.dbg.value(metadata %union.tree_node* %call72, metadata !3009, metadata !DIExpression()), !dbg !3060
  %call73 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3061
  %cmp74 = icmp eq i32 %call73, 116, !dbg !3061
  br i1 %cmp74, label %if.then80, label %lor.lhs.false76, !dbg !3061

lor.lhs.false76:                                  ; preds = %if.then71
  %call77 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3061
  %cmp78 = icmp eq i32 %call77, 113, !dbg !3061
  br i1 %cmp78, label %if.then80, label %if.else, !dbg !3062

if.then80:                                        ; preds = %lor.lhs.false76, %if.then71
  %call81 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #8, !dbg !3063
  %type83 = getelementptr inbounds %union.tree_node, %union.tree_node* %call72, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3063
  %12 = load %union.tree_node*, %union.tree_node** %type83, align 8, !dbg !3063
  %call84 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !3063
  %call85 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #8, !dbg !3063
  %call86 = call %union.tree_node* @build2_stat(i32 %call81, %union.tree_node* %12, %union.tree_node* %call84, %union.tree_node* %call85) #6, !dbg !3063
  call void @llvm.dbg.value(metadata %union.tree_node* %call86, metadata !3008, metadata !DIExpression()), !dbg !3028
  br label %if.end502, !dbg !3065

if.else:                                          ; preds = %lor.lhs.false76
  %call87 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3066
  %idxprom88 = sext i32 %call87 to i64, !dbg !3066
  %arrayidx89 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom88, !dbg !3066
  %13 = load i32, i32* %arrayidx89, align 4, !dbg !3066
  %cmp90 = icmp eq i32 %13, 5, !dbg !3067
  br i1 %cmp90, label %land.lhs.true92, label %if.else127, !dbg !3068

land.lhs.true92:                                  ; preds = %if.else
  %call93 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3069
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %call93, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3069
  %bf.load95 = load i64, i64* %14, align 8, !dbg !3069
  %bf.cast9722 = and i64 %bf.load95, 65535, !dbg !3070
  %cmp98 = icmp eq i64 %bf.cast9722, 141, !dbg !3070
  br i1 %cmp98, label %land.lhs.true100, label %if.else127, !dbg !3071

land.lhs.true100:                                 ; preds = %land.lhs.true92
  %call101 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3072
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %call101, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3072
  %bf.load103 = load i64, i64* %15, align 8, !dbg !3072
  %bf.cast10523 = and i64 %bf.load103, 65535, !dbg !3073
  %cmp106 = icmp eq i64 %bf.cast10523, 23, !dbg !3073
  br i1 %cmp106, label %if.then108, label %if.else127, !dbg !3074

if.then108:                                       ; preds = %land.lhs.true100
  %call109 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3075
  call void @llvm.dbg.value(metadata i32 %call109, metadata !3012, metadata !DIExpression()), !dbg !3076
  %call110 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3077
  call void @llvm.dbg.value(metadata %union.tree_node* %call110, metadata !3016, metadata !DIExpression()), !dbg !3076
  %call111 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #8, !dbg !3078
  %type113 = getelementptr inbounds %union.tree_node, %union.tree_node* %call110, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3078
  %16 = load %union.tree_node*, %union.tree_node** %type113, align 8, !dbg !3078
  %call114 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !3078
  %call115 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #8, !dbg !3078
  %call116 = call %union.tree_node* @build2_stat(i32 %call111, %union.tree_node* %16, %union.tree_node* %call114, %union.tree_node* %call115) #6, !dbg !3078
  call void @llvm.dbg.value(metadata %union.tree_node* %call116, metadata !3017, metadata !DIExpression()), !dbg !3076
  %call117 = call fastcc i32 @gimple_location(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3079
  %type119 = getelementptr inbounds %union.tree_node, %union.tree_node* %call72, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3080
  %17 = load %union.tree_node*, %union.tree_node** %type119, align 8, !dbg !3080
  %call120 = call fastcc %union.tree_node* @combine_cond_expr_cond(i32 %call117, i32 %call109, %union.tree_node* %17, %union.tree_node* %call116, %union.tree_node* %call110, i8 zeroext 0) #8, !dbg !3081
  call void @llvm.dbg.value(metadata %union.tree_node* %call120, metadata !3008, metadata !DIExpression()), !dbg !3028
  %cmp121 = icmp eq %union.tree_node* %call120, null, !dbg !3082
  br i1 %cmp121, label %cleanup520, label %if.end502

if.else127:                                       ; preds = %land.lhs.true100, %land.lhs.true92, %if.else
  %call128 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* nonnull %call21) #8, !dbg !3084
  %cmp129 = icmp eq i32 %call128, 96, !dbg !3085
  br i1 %cmp129, label %if.then131, label %cleanup520, !dbg !3086

if.then131:                                       ; preds = %if.else127
  %call133 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !3087
  %type135 = getelementptr inbounds %union.tree_node, %union.tree_node* %call133, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3087
  %18 = load %union.tree_node*, %union.tree_node** %type135, align 8, !dbg !3087
  call void @llvm.dbg.value(metadata %union.tree_node* %18, metadata !3018, metadata !DIExpression()), !dbg !3088
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %18, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3089
  %bf.load137 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast1397 = and i64 %bf.load137, 65535, !dbg !3089
  %cmp140 = icmp eq i64 %bf.cast1397, 14, !dbg !3089
  br i1 %cmp140, label %cond.true, label %cond.false, !dbg !3089

cond.true:                                        ; preds = %if.then131
  %call142 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end, !dbg !3089

cond.false:                                       ; preds = %if.then131
  %type143 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type143, i64 0, i32 6, !dbg !3089
  %bf.load144 = load i32, i32* %mode, align 4, !dbg !3089
  %bf.lshr145 = lshr i32 %bf.load144, 16, !dbg !3089
  %bf.clear146 = and i32 %bf.lshr145, 255, !dbg !3089
  br label %cond.end, !dbg !3089

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond147 = phi i32 [ %call142, %cond.true ], [ %bf.clear146, %cond.false ], !dbg !3089
  %idxprom148 = zext i32 %cond147 to i64, !dbg !3089
  %arrayidx149 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom148, !dbg !3089
  %20 = load i8, i8* %arrayidx149, align 1, !dbg !3089
  %cmp151 = icmp eq i8 %20, 8, !dbg !3089
  br i1 %cmp151, label %land.lhs.true219, label %lor.lhs.false153, !dbg !3089

lor.lhs.false153:                                 ; preds = %cond.end
  %bf.load155 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast1578 = and i64 %bf.load155, 65535, !dbg !3089
  %cmp158 = icmp eq i64 %bf.cast1578, 14, !dbg !3089
  br i1 %cmp158, label %cond.true160, label %cond.false162, !dbg !3089

cond.true160:                                     ; preds = %lor.lhs.false153
  %call161 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end168, !dbg !3089

cond.false162:                                    ; preds = %lor.lhs.false153
  %type163 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode164 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type163, i64 0, i32 6, !dbg !3089
  %bf.load165 = load i32, i32* %mode164, align 4, !dbg !3089
  %bf.lshr166 = lshr i32 %bf.load165, 16, !dbg !3089
  %bf.clear167 = and i32 %bf.lshr166, 255, !dbg !3089
  br label %cond.end168, !dbg !3089

cond.end168:                                      ; preds = %cond.false162, %cond.true160
  %cond169 = phi i32 [ %call161, %cond.true160 ], [ %bf.clear167, %cond.false162 ], !dbg !3089
  %idxprom170 = zext i32 %cond169 to i64, !dbg !3089
  %arrayidx171 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom170, !dbg !3089
  %21 = load i8, i8* %arrayidx171, align 1, !dbg !3089
  %cmp173 = icmp eq i8 %21, 9, !dbg !3089
  br i1 %cmp173, label %land.lhs.true219, label %lor.lhs.false175, !dbg !3089

lor.lhs.false175:                                 ; preds = %cond.end168
  %bf.load177 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast1799 = and i64 %bf.load177, 65535, !dbg !3089
  %cmp180 = icmp eq i64 %bf.cast1799, 14, !dbg !3089
  br i1 %cmp180, label %cond.true182, label %cond.false184, !dbg !3089

cond.true182:                                     ; preds = %lor.lhs.false175
  %call183 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end190, !dbg !3089

cond.false184:                                    ; preds = %lor.lhs.false175
  %type185 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode186 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type185, i64 0, i32 6, !dbg !3089
  %bf.load187 = load i32, i32* %mode186, align 4, !dbg !3089
  %bf.lshr188 = lshr i32 %bf.load187, 16, !dbg !3089
  %bf.clear189 = and i32 %bf.lshr188, 255, !dbg !3089
  br label %cond.end190, !dbg !3089

cond.end190:                                      ; preds = %cond.false184, %cond.true182
  %cond191 = phi i32 [ %call183, %cond.true182 ], [ %bf.clear189, %cond.false184 ], !dbg !3089
  %idxprom192 = zext i32 %cond191 to i64, !dbg !3089
  %arrayidx193 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom192, !dbg !3089
  %22 = load i8, i8* %arrayidx193, align 1, !dbg !3089
  %cmp195 = icmp eq i8 %22, 11, !dbg !3089
  br i1 %cmp195, label %land.lhs.true219, label %lor.lhs.false197, !dbg !3089

lor.lhs.false197:                                 ; preds = %cond.end190
  %bf.load199 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast20110 = and i64 %bf.load199, 65535, !dbg !3089
  %cmp202 = icmp eq i64 %bf.cast20110, 14, !dbg !3089
  br i1 %cmp202, label %cond.true204, label %cond.false206, !dbg !3089

cond.true204:                                     ; preds = %lor.lhs.false197
  %call205 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end212, !dbg !3089

cond.false206:                                    ; preds = %lor.lhs.false197
  %type207 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode208 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type207, i64 0, i32 6, !dbg !3089
  %bf.load209 = load i32, i32* %mode208, align 4, !dbg !3089
  %bf.lshr210 = lshr i32 %bf.load209, 16, !dbg !3089
  %bf.clear211 = and i32 %bf.lshr210, 255, !dbg !3089
  br label %cond.end212, !dbg !3089

cond.end212:                                      ; preds = %cond.false206, %cond.true204
  %cond213 = phi i32 [ %call205, %cond.true204 ], [ %bf.clear211, %cond.false206 ], !dbg !3089
  %idxprom214 = zext i32 %cond213 to i64, !dbg !3089
  %arrayidx215 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom214, !dbg !3089
  %23 = load i8, i8* %arrayidx215, align 1, !dbg !3089
  %cmp217 = icmp eq i8 %23, 17, !dbg !3089
  br i1 %cmp217, label %land.lhs.true219, label %land.end, !dbg !3089

land.lhs.true219:                                 ; preds = %cond.end212, %cond.end190, %cond.end168, %cond.end
  %bf.load221 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast22311 = and i64 %bf.load221, 65535, !dbg !3089
  %cmp224 = icmp eq i64 %bf.cast22311, 14, !dbg !3089
  br i1 %cmp224, label %cond.true226, label %cond.false228, !dbg !3089

cond.true226:                                     ; preds = %land.lhs.true219
  %call227 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end234, !dbg !3089

cond.false228:                                    ; preds = %land.lhs.true219
  %type229 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode230 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type229, i64 0, i32 6, !dbg !3089
  %bf.load231 = load i32, i32* %mode230, align 4, !dbg !3089
  %bf.lshr232 = lshr i32 %bf.load231, 16, !dbg !3089
  %bf.clear233 = and i32 %bf.lshr232, 255, !dbg !3089
  br label %cond.end234, !dbg !3089

cond.end234:                                      ; preds = %cond.false228, %cond.true226
  %cond235 = phi i32 [ %call227, %cond.true226 ], [ %bf.clear233, %cond.false228 ], !dbg !3089
  %idxprom236 = zext i32 %cond235 to i64, !dbg !3089
  %arrayidx237 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom236, !dbg !3089
  %24 = load i8, i8* %arrayidx237, align 1, !dbg !3089
  %cmp239 = icmp eq i8 %24, 8, !dbg !3089
  br i1 %cmp239, label %cond.true263, label %lor.lhs.false241, !dbg !3089

lor.lhs.false241:                                 ; preds = %cond.end234
  %bf.load243 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast24512 = and i64 %bf.load243, 65535, !dbg !3089
  %cmp246 = icmp eq i64 %bf.cast24512, 14, !dbg !3089
  br i1 %cmp246, label %cond.true248, label %cond.false250, !dbg !3089

cond.true248:                                     ; preds = %lor.lhs.false241
  %call249 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end256, !dbg !3089

cond.false250:                                    ; preds = %lor.lhs.false241
  %type251 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode252 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type251, i64 0, i32 6, !dbg !3089
  %bf.load253 = load i32, i32* %mode252, align 4, !dbg !3089
  %bf.lshr254 = lshr i32 %bf.load253, 16, !dbg !3089
  %bf.clear255 = and i32 %bf.lshr254, 255, !dbg !3089
  br label %cond.end256, !dbg !3089

cond.end256:                                      ; preds = %cond.false250, %cond.true248
  %cond257 = phi i32 [ %call249, %cond.true248 ], [ %bf.clear255, %cond.false250 ], !dbg !3089
  %idxprom258 = zext i32 %cond257 to i64, !dbg !3089
  %arrayidx259 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom258, !dbg !3089
  %25 = load i8, i8* %arrayidx259, align 1, !dbg !3089
  %cmp261 = icmp eq i8 %25, 9, !dbg !3089
  br i1 %cmp261, label %cond.true263, label %cond.false280, !dbg !3089

cond.true263:                                     ; preds = %cond.end256, %cond.end234
  %bf.load265 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast26721 = and i64 %bf.load265, 65535, !dbg !3089
  %cmp268 = icmp eq i64 %bf.cast26721, 14, !dbg !3089
  br i1 %cmp268, label %cond.true270, label %cond.false272, !dbg !3089

cond.true270:                                     ; preds = %cond.true263
  %call271 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end300, !dbg !3089

cond.false272:                                    ; preds = %cond.true263
  %type273 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode274 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type273, i64 0, i32 6, !dbg !3089
  %bf.load275 = load i32, i32* %mode274, align 4, !dbg !3089
  %bf.lshr276 = lshr i32 %bf.load275, 16, !dbg !3089
  %bf.clear277 = and i32 %bf.lshr276, 255, !dbg !3089
  br label %cond.end300, !dbg !3089

cond.false280:                                    ; preds = %cond.end256
  %bf.load282 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast28413 = and i64 %bf.load282, 65535, !dbg !3089
  %cmp285 = icmp eq i64 %bf.cast28413, 14, !dbg !3089
  br i1 %cmp285, label %cond.true287, label %cond.false289, !dbg !3089

cond.true287:                                     ; preds = %cond.false280
  %call288 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end295, !dbg !3089

cond.false289:                                    ; preds = %cond.false280
  %type290 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode291 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type290, i64 0, i32 6, !dbg !3089
  %bf.load292 = load i32, i32* %mode291, align 4, !dbg !3089
  %bf.lshr293 = lshr i32 %bf.load292, 16, !dbg !3089
  %bf.clear294 = and i32 %bf.lshr293, 255, !dbg !3089
  br label %cond.end295, !dbg !3089

cond.end295:                                      ; preds = %cond.false289, %cond.true287
  %cond296 = phi i32 [ %call288, %cond.true287 ], [ %bf.clear294, %cond.false289 ], !dbg !3089
  %idxprom297 = zext i32 %cond296 to i64, !dbg !3089
  %arrayidx298 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom297, !dbg !3089
  %26 = load i8, i8* %arrayidx298, align 1, !dbg !3089
  %conv299 = zext i8 %26 to i32, !dbg !3089
  br label %cond.end300, !dbg !3089

cond.end300:                                      ; preds = %cond.true270, %cond.false272, %cond.end295
  %cond301 = phi i32 [ %conv299, %cond.end295 ], [ %call271, %cond.true270 ], [ %bf.clear277, %cond.false272 ], !dbg !3089
  %idxprom302 = zext i32 %cond301 to i64, !dbg !3089
  %arrayidx303 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom302, !dbg !3089
  %27 = load i8, i8* %arrayidx303, align 1, !dbg !3089
  %cmp305 = icmp eq i8 %27, 9, !dbg !3089
  %bf.load309 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast31114 = and i64 %bf.load309, 65535, !dbg !3089
  %cmp312 = icmp eq i64 %bf.cast31114, 14, !dbg !3089
  br i1 %cmp305, label %cond.true307, label %cond.false390, !dbg !3089

cond.true307:                                     ; preds = %cond.end300
  br i1 %cmp312, label %cond.true314, label %cond.false316, !dbg !3089

cond.true314:                                     ; preds = %cond.true307
  %call315 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end322, !dbg !3089

cond.false316:                                    ; preds = %cond.true307
  %type317 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode318 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type317, i64 0, i32 6, !dbg !3089
  %bf.load319 = load i32, i32* %mode318, align 4, !dbg !3089
  %bf.lshr320 = lshr i32 %bf.load319, 16, !dbg !3089
  %bf.clear321 = and i32 %bf.lshr320, 255, !dbg !3089
  br label %cond.end322, !dbg !3089

cond.end322:                                      ; preds = %cond.false316, %cond.true314
  %cond323 = phi i32 [ %call315, %cond.true314 ], [ %bf.clear321, %cond.false316 ], !dbg !3089
  %idxprom324 = zext i32 %cond323 to i64, !dbg !3089
  %arrayidx325 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom324, !dbg !3089
  %28 = load i8, i8* %arrayidx325, align 1, !dbg !3089
  %cmp327 = icmp eq i8 %28, 8, !dbg !3089
  br i1 %cmp327, label %cond.true351, label %lor.lhs.false329, !dbg !3089

lor.lhs.false329:                                 ; preds = %cond.end322
  %bf.load331 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast33318 = and i64 %bf.load331, 65535, !dbg !3089
  %cmp334 = icmp eq i64 %bf.cast33318, 14, !dbg !3089
  br i1 %cmp334, label %cond.true336, label %cond.false338, !dbg !3089

cond.true336:                                     ; preds = %lor.lhs.false329
  %call337 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end344, !dbg !3089

cond.false338:                                    ; preds = %lor.lhs.false329
  %type339 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode340 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type339, i64 0, i32 6, !dbg !3089
  %bf.load341 = load i32, i32* %mode340, align 4, !dbg !3089
  %bf.lshr342 = lshr i32 %bf.load341, 16, !dbg !3089
  %bf.clear343 = and i32 %bf.lshr342, 255, !dbg !3089
  br label %cond.end344, !dbg !3089

cond.end344:                                      ; preds = %cond.false338, %cond.true336
  %cond345 = phi i32 [ %call337, %cond.true336 ], [ %bf.clear343, %cond.false338 ], !dbg !3089
  %idxprom346 = zext i32 %cond345 to i64, !dbg !3089
  %arrayidx347 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom346, !dbg !3089
  %29 = load i8, i8* %arrayidx347, align 1, !dbg !3089
  %cmp349 = icmp eq i8 %29, 9, !dbg !3089
  br i1 %cmp349, label %cond.true351, label %cond.false368, !dbg !3089

cond.true351:                                     ; preds = %cond.end344, %cond.end322
  %bf.load353 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast35520 = and i64 %bf.load353, 65535, !dbg !3089
  %cmp356 = icmp eq i64 %bf.cast35520, 14, !dbg !3089
  br i1 %cmp356, label %cond.true358, label %cond.false360, !dbg !3089

cond.true358:                                     ; preds = %cond.true351
  %call359 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end388, !dbg !3089

cond.false360:                                    ; preds = %cond.true351
  %type361 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode362 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type361, i64 0, i32 6, !dbg !3089
  %bf.load363 = load i32, i32* %mode362, align 4, !dbg !3089
  %bf.lshr364 = lshr i32 %bf.load363, 16, !dbg !3089
  %bf.clear365 = and i32 %bf.lshr364, 255, !dbg !3089
  br label %cond.end388, !dbg !3089

cond.false368:                                    ; preds = %cond.end344
  %bf.load370 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast37219 = and i64 %bf.load370, 65535, !dbg !3089
  %cmp373 = icmp eq i64 %bf.cast37219, 14, !dbg !3089
  br i1 %cmp373, label %cond.true375, label %cond.false377, !dbg !3089

cond.true375:                                     ; preds = %cond.false368
  %call376 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end383, !dbg !3089

cond.false377:                                    ; preds = %cond.false368
  %type378 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode379 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type378, i64 0, i32 6, !dbg !3089
  %bf.load380 = load i32, i32* %mode379, align 4, !dbg !3089
  %bf.lshr381 = lshr i32 %bf.load380, 16, !dbg !3089
  %bf.clear382 = and i32 %bf.lshr381, 255, !dbg !3089
  br label %cond.end383, !dbg !3089

cond.end383:                                      ; preds = %cond.false377, %cond.true375
  %cond384 = phi i32 [ %call376, %cond.true375 ], [ %bf.clear382, %cond.false377 ], !dbg !3089
  %idxprom385 = zext i32 %cond384 to i64, !dbg !3089
  %arrayidx386 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom385, !dbg !3089
  %30 = load i8, i8* %arrayidx386, align 1, !dbg !3089
  %conv387 = zext i8 %30 to i32, !dbg !3089
  br label %cond.end388, !dbg !3089

cond.end388:                                      ; preds = %cond.true358, %cond.false360, %cond.end383
  %cond389 = phi i32 [ %conv387, %cond.end383 ], [ %call359, %cond.true358 ], [ %bf.clear365, %cond.false360 ], !dbg !3089
  br label %cond.end474, !dbg !3089

cond.false390:                                    ; preds = %cond.end300
  br i1 %cmp312, label %cond.true397, label %cond.false399, !dbg !3089

cond.true397:                                     ; preds = %cond.false390
  %call398 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end405, !dbg !3089

cond.false399:                                    ; preds = %cond.false390
  %type400 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode401 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type400, i64 0, i32 6, !dbg !3089
  %bf.load402 = load i32, i32* %mode401, align 4, !dbg !3089
  %bf.lshr403 = lshr i32 %bf.load402, 16, !dbg !3089
  %bf.clear404 = and i32 %bf.lshr403, 255, !dbg !3089
  br label %cond.end405, !dbg !3089

cond.end405:                                      ; preds = %cond.false399, %cond.true397
  %cond406 = phi i32 [ %call398, %cond.true397 ], [ %bf.clear404, %cond.false399 ], !dbg !3089
  %idxprom407 = zext i32 %cond406 to i64, !dbg !3089
  %arrayidx408 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom407, !dbg !3089
  %31 = load i8, i8* %arrayidx408, align 1, !dbg !3089
  %cmp410 = icmp eq i8 %31, 8, !dbg !3089
  br i1 %cmp410, label %cond.true434, label %lor.lhs.false412, !dbg !3089

lor.lhs.false412:                                 ; preds = %cond.end405
  %bf.load414 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast41615 = and i64 %bf.load414, 65535, !dbg !3089
  %cmp417 = icmp eq i64 %bf.cast41615, 14, !dbg !3089
  br i1 %cmp417, label %cond.true419, label %cond.false421, !dbg !3089

cond.true419:                                     ; preds = %lor.lhs.false412
  %call420 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end427, !dbg !3089

cond.false421:                                    ; preds = %lor.lhs.false412
  %type422 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode423 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type422, i64 0, i32 6, !dbg !3089
  %bf.load424 = load i32, i32* %mode423, align 4, !dbg !3089
  %bf.lshr425 = lshr i32 %bf.load424, 16, !dbg !3089
  %bf.clear426 = and i32 %bf.lshr425, 255, !dbg !3089
  br label %cond.end427, !dbg !3089

cond.end427:                                      ; preds = %cond.false421, %cond.true419
  %cond428 = phi i32 [ %call420, %cond.true419 ], [ %bf.clear426, %cond.false421 ], !dbg !3089
  %idxprom429 = zext i32 %cond428 to i64, !dbg !3089
  %arrayidx430 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom429, !dbg !3089
  %32 = load i8, i8* %arrayidx430, align 1, !dbg !3089
  %cmp432 = icmp eq i8 %32, 9, !dbg !3089
  br i1 %cmp432, label %cond.true434, label %cond.false451, !dbg !3089

cond.true434:                                     ; preds = %cond.end427, %cond.end405
  %bf.load436 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast43817 = and i64 %bf.load436, 65535, !dbg !3089
  %cmp439 = icmp eq i64 %bf.cast43817, 14, !dbg !3089
  br i1 %cmp439, label %cond.true441, label %cond.false443, !dbg !3089

cond.true441:                                     ; preds = %cond.true434
  %call442 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end471, !dbg !3089

cond.false443:                                    ; preds = %cond.true434
  %type444 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode445 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type444, i64 0, i32 6, !dbg !3089
  %bf.load446 = load i32, i32* %mode445, align 4, !dbg !3089
  %bf.lshr447 = lshr i32 %bf.load446, 16, !dbg !3089
  %bf.clear448 = and i32 %bf.lshr447, 255, !dbg !3089
  br label %cond.end471, !dbg !3089

cond.false451:                                    ; preds = %cond.end427
  %bf.load453 = load i64, i64* %19, align 8, !dbg !3089
  %bf.cast45516 = and i64 %bf.load453, 65535, !dbg !3089
  %cmp456 = icmp eq i64 %bf.cast45516, 14, !dbg !3089
  br i1 %cmp456, label %cond.true458, label %cond.false460, !dbg !3089

cond.true458:                                     ; preds = %cond.false451
  %call459 = call i32 @vector_type_mode(%union.tree_node* %18) #6, !dbg !3089
  br label %cond.end466, !dbg !3089

cond.false460:                                    ; preds = %cond.false451
  %type461 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !3089
  %mode462 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type461, i64 0, i32 6, !dbg !3089
  %bf.load463 = load i32, i32* %mode462, align 4, !dbg !3089
  %bf.lshr464 = lshr i32 %bf.load463, 16, !dbg !3089
  %bf.clear465 = and i32 %bf.lshr464, 255, !dbg !3089
  br label %cond.end466, !dbg !3089

cond.end466:                                      ; preds = %cond.false460, %cond.true458
  %cond467 = phi i32 [ %call459, %cond.true458 ], [ %bf.clear465, %cond.false460 ], !dbg !3089
  %idxprom468 = zext i32 %cond467 to i64, !dbg !3089
  %arrayidx469 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom468, !dbg !3089
  %33 = load i8, i8* %arrayidx469, align 1, !dbg !3089
  %conv470 = zext i8 %33 to i32, !dbg !3089
  br label %cond.end471, !dbg !3089

cond.end471:                                      ; preds = %cond.true441, %cond.false443, %cond.end466
  %cond472 = phi i32 [ %conv470, %cond.end466 ], [ %call442, %cond.true441 ], [ %bf.clear448, %cond.false443 ], !dbg !3089
  br label %cond.end474, !dbg !3089

cond.end474:                                      ; preds = %cond.end471, %cond.end388
  %cond475.in = phi i32 [ %cond389, %cond.end388 ], [ %cond472, %cond.end471 ]
  %cond475 = add i32 %cond475.in, -38, !dbg !3089
  %idxprom476 = zext i32 %cond475 to i64, !dbg !3089
  %arrayidx477 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom476, !dbg !3089
  %34 = load %struct.real_format*, %struct.real_format** %arrayidx477, align 8, !dbg !3089
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %34, i64 0, i32 11, !dbg !3089
  %35 = load i8, i8* %has_nans, align 2, !dbg !3089
  %tobool479 = icmp eq i8 %35, 0, !dbg !3089
  br i1 %tobool479, label %land.end, label %land.rhs, !dbg !3089

land.rhs:                                         ; preds = %cond.end474
  %36 = load i32, i32* @flag_finite_math_only, align 4, !dbg !3089
  %tobool480 = icmp eq i32 %36, 0, !dbg !3089
  %phitmp = zext i1 %tobool480 to i8
  br label %land.end

land.end:                                         ; preds = %cond.end474, %land.rhs, %cond.end212
  %37 = phi i8 [ 0, %cond.end474 ], [ 0, %cond.end212 ], [ %phitmp, %land.rhs ]
  call void @llvm.dbg.value(metadata i8 %37, metadata !3021, metadata !DIExpression()), !dbg !3088
  %call483 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #8, !dbg !3090
  %call484 = call i32 @invert_tree_comparison(i32 %call483, i8 zeroext %37) #6, !dbg !3091
  call void @llvm.dbg.value(metadata i32 %call484, metadata !3022, metadata !DIExpression()), !dbg !3088
  %cmp485 = icmp eq i32 %call484, 0, !dbg !3092
  br i1 %cmp485, label %cleanup494, label %if.end488, !dbg !3094

if.end488:                                        ; preds = %land.end
  %type490 = getelementptr inbounds %union.tree_node, %union.tree_node* %call72, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3095
  %38 = load %union.tree_node*, %union.tree_node** %type490, align 8, !dbg !3095
  %call491 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !3095
  %call492 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #8, !dbg !3095
  %call493 = call %union.tree_node* @build2_stat(i32 %call484, %union.tree_node* %38, %union.tree_node* %call491, %union.tree_node* %call492) #6, !dbg !3095
  call void @llvm.dbg.value(metadata %union.tree_node* %call493, metadata !3008, metadata !DIExpression()), !dbg !3028
  br label %cleanup494, !dbg !3096

cleanup494:                                       ; preds = %land.end, %if.end488
  %tmp.0 = phi %union.tree_node* [ %call493, %if.end488 ], [ null, %land.end ], !dbg !3028
  %cleanup.dest.slot.1 = phi i1 [ true, %if.end488 ], [ false, %land.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %tmp.0, metadata !3008, metadata !DIExpression()), !dbg !3028
  br i1 %cleanup.dest.slot.1, label %if.end502, label %cleanup520

if.end502:                                        ; preds = %if.then108, %cleanup494, %if.then80
  %tmp.2 = phi %union.tree_node* [ %call86, %if.then80 ], [ %call120, %if.then108 ], [ %tmp.0, %cleanup494 ], !dbg !3097
  call void @llvm.dbg.value(metadata %union.tree_node* %tmp.2, metadata !3008, metadata !DIExpression()), !dbg !3028
  %39 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3098
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %39) #7, !dbg !3098
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3023, metadata !DIExpression(DW_OP_deref)), !dbg !3099
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %gsi, %union.gimple_statement_d* nonnull %call21) #6, !dbg !3100
  %call503 = call %union.tree_node* @unshare_expr(%union.tree_node* %tmp.2) #6, !dbg !3101
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3023, metadata !DIExpression(DW_OP_deref)), !dbg !3099
  call void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call503) #6, !dbg !3102
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3023, metadata !DIExpression(DW_OP_deref)), !dbg !3099
  %call504 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3103
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call504, metadata !3007, metadata !DIExpression()), !dbg !3028
  call fastcc void @update_stmt(%union.gimple_statement_d* %call504) #8, !dbg !3104
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %39) #7, !dbg !3105
  %40 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !3106
  call void @llvm.dbg.value(metadata %union.tree_node* %40, metadata !3006, metadata !DIExpression()), !dbg !3028
  %call505 = call fastcc zeroext i8 @remove_prop_source_from_use(%union.tree_node* %40, %union.gimple_statement_d* %stmt) #8, !dbg !3107
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3108
  %tobool506 = icmp eq %struct._IO_FILE* %41, null, !dbg !3108
  br i1 %tobool506, label %cleanup520, label %land.lhs.true507, !dbg !3109

land.lhs.true507:                                 ; preds = %if.end502
  %42 = load i32, i32* @dump_flags, align 4, !dbg !3110
  %and = and i32 %42, 8, !dbg !3111
  %tobool508 = icmp eq i32 %and, 0, !dbg !3111
  br i1 %tobool508, label %cleanup520, label %if.then509, !dbg !3112

if.then509:                                       ; preds = %land.lhs.true507
  %call510 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !3113
  %type512 = getelementptr inbounds %union.tree_node, %union.tree_node* %call510, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3113
  %43 = load %union.tree_node*, %union.tree_node** %type512, align 8, !dbg !3113
  %call513 = call fastcc %union.tree_node* @rhs_to_tree(%union.tree_node* %43, %union.gimple_statement_d* %stmt) #8, !dbg !3114
  call void @llvm.dbg.value(metadata %union.tree_node* %call513, metadata !3025, metadata !DIExpression()), !dbg !3115
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3116
  %call514 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3117
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3118
  %46 = load i32, i32* @dump_flags, align 4, !dbg !3119
  call void @print_generic_expr(%struct._IO_FILE* %45, %union.tree_node* %call513, i32 %46) #6, !dbg !3120
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3121
  %call515 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3122
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3123
  %49 = load i32, i32* @dump_flags, align 4, !dbg !3124
  call void @print_generic_expr(%struct._IO_FILE* %48, %union.tree_node* %tmp.2, i32 %49) #6, !dbg !3125
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3126
  %call516 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3127
  br label %cleanup520, !dbg !3128

cleanup520:                                       ; preds = %land.lhs.true, %land.lhs.true13, %if.then108, %land.lhs.true507, %if.end502, %if.end24, %if.end, %lor.lhs.false39, %lor.lhs.false61, %cleanup494, %if.else127, %if.then509
  %retval.3 = phi i8 [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %if.then108 ], [ 0, %cleanup494 ], [ 0, %if.else127 ], [ 1, %if.then509 ], [ 1, %land.lhs.true507 ], [ 1, %if.end502 ], [ 0, %lor.lhs.false61 ], [ 0, %lor.lhs.false39 ], [ 0, %if.end24 ], !dbg !3028
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3129
  ret i8 %retval.3, !dbg !3129
}

; Function Attrs: nounwind uwtable
define internal fastcc void @simplify_bitwise_and(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !3130 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3134, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3135, metadata !DIExpression()), !dbg !3145
  %call = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !3146
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3137, metadata !DIExpression()), !dbg !3145
  %call1 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #8, !dbg !3147
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3138, metadata !DIExpression()), !dbg !3145
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3148
  %bf.load = load i64, i64* %0, align 8, !dbg !3148
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3150
  %cmp = icmp eq i64 %bf.cast1, 23, !dbg !3150
  br i1 %cmp, label %if.end, label %cleanup, !dbg !3151

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3152
  %bf.load3 = load i64, i64* %1, align 8, !dbg !3152
  %bf.cast52 = and i64 %bf.load3, 65535, !dbg !3153
  %cmp6 = icmp eq i64 %bf.cast52, 141, !dbg !3153
  br i1 %cmp6, label %land.lhs.true, label %if.end48, !dbg !3154

land.lhs.true:                                    ; preds = %if.end
  %bf.cast103 = and i64 %bf.load3, 4294967296, !dbg !3155
  %tobool = icmp eq i64 %bf.cast103, 0, !dbg !3155
  br i1 %tobool, label %if.then11, label %if.end48, !dbg !3156

if.then11:                                        ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3157
  %2 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3157
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %2, align 8, !dbg !3157
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %3, metadata !3139, metadata !DIExpression()), !dbg !3158
  %call12 = tail call fastcc zeroext i8 @gimple_assign_cast_p(%union.gimple_statement_d* %3) #8, !dbg !3159
  %tobool13 = icmp eq i8 %call12, 0, !dbg !3159
  br i1 %tobool13, label %if.end48, label %land.lhs.true14, !dbg !3160

land.lhs.true14:                                  ; preds = %if.then11
  %call15 = tail call fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %3) #8, !dbg !3161
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3161
  %bf.load17 = load i64, i64* %4, align 8, !dbg !3161
  %bf.cast194 = and i64 %bf.load17, 65535, !dbg !3161
  %cmp20 = icmp eq i64 %bf.cast194, 6, !dbg !3161
  br i1 %cmp20, label %if.then37, label %lor.lhs.false, !dbg !3161

lor.lhs.false:                                    ; preds = %land.lhs.true14
  %call22 = tail call fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %3) #8, !dbg !3161
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %call22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3161
  %bf.load24 = load i64, i64* %5, align 8, !dbg !3161
  %bf.cast265 = and i64 %bf.load24, 65535, !dbg !3161
  %cmp27 = icmp eq i64 %bf.cast265, 7, !dbg !3161
  br i1 %cmp27, label %if.then37, label %lor.lhs.false29, !dbg !3161

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %call30 = tail call fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %3) #8, !dbg !3161
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call30, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3161
  %bf.load32 = load i64, i64* %6, align 8, !dbg !3161
  %bf.cast346 = and i64 %bf.load32, 65535, !dbg !3161
  %cmp35 = icmp eq i64 %bf.cast346, 8, !dbg !3161
  br i1 %cmp35, label %if.then37, label %if.end48, !dbg !3162

if.then37:                                        ; preds = %lor.lhs.false29, %lor.lhs.false, %land.lhs.true14
  %call38 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %3) #8, !dbg !3163
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !3142, metadata !DIExpression()), !dbg !3164
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call38, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3165
  %bf.load40 = load i64, i64* %7, align 8, !dbg !3165
  %bf.cast427 = and i64 %bf.load40, 65535, !dbg !3167
  %cmp43 = icmp eq i64 %bf.cast427, 121, !dbg !3167
  %spec.select = select i1 %cmp43, %union.tree_node* %call38, %union.tree_node* %call, !dbg !3168
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select, metadata !3137, metadata !DIExpression()), !dbg !3145
  br label %if.end48, !dbg !3169

if.end48:                                         ; preds = %if.then11, %land.lhs.true, %lor.lhs.false29, %if.then37, %if.end
  %arg1.2 = phi %union.tree_node* [ %call, %land.lhs.true ], [ %call, %if.end ], [ %spec.select, %if.then37 ], [ %call, %lor.lhs.false29 ], [ %call, %if.then11 ], !dbg !3145
  call void @llvm.dbg.value(metadata %union.tree_node* %arg1.2, metadata !3137, metadata !DIExpression()), !dbg !3145
  %call49 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %stmt) #8, !dbg !3170
  %call50 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !3171
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call50, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3171
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3171
  %call51 = tail call %union.tree_node* @fold_binary_loc(i32 %call49, i32 89, %union.tree_node* %8, %union.tree_node* %arg1.2, %union.tree_node* %call1) #6, !dbg !3172
  call void @llvm.dbg.value(metadata %union.tree_node* %call51, metadata !3136, metadata !DIExpression()), !dbg !3145
  %tobool52 = icmp eq %union.tree_node* %call51, null, !dbg !3173
  br i1 %tobool52, label %cleanup, label %land.lhs.true53, !dbg !3175

land.lhs.true53:                                  ; preds = %if.end48
  %call54 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* nonnull %call51) #6, !dbg !3176
  %tobool56 = icmp eq i8 %call54, 0, !dbg !3176
  br i1 %tobool56, label %cleanup, label %if.then57, !dbg !3177

if.then57:                                        ; preds = %land.lhs.true53
  tail call void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* nonnull %call51) #6, !dbg !3178
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %stmt) #8, !dbg !3180
  br label %cleanup, !dbg !3181

cleanup:                                          ; preds = %land.lhs.true53, %if.end48, %entry, %if.then57
  ret void, !dbg !3182
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3183 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3187, metadata !DIExpression()), !dbg !3188
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3189
  %bf.load = load i32, i32* %0, align 8, !dbg !3189
  %bf.clear = and i32 %bf.load, 255, !dbg !3189
  ret i32 %bf.clear, !dbg !3190
}

; Function Attrs: nounwind uwtable
define internal fastcc void @simplify_gimple_switch(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !3191 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3193, metadata !DIExpression()), !dbg !3207
  %call = tail call fastcc %union.tree_node* @gimple_switch_index(%union.gimple_statement_d* %stmt) #8, !dbg !3208
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3194, metadata !DIExpression()), !dbg !3207
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3209
  %bf.load = load i64, i64* %0, align 8, !dbg !3209
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !3210
  %cmp = icmp eq i64 %bf.cast2, 141, !dbg !3210
  br i1 %cmp, label %if.then, label %if.end71, !dbg !3211

if.then:                                          ; preds = %entry
  %def_stmt1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3212
  %1 = bitcast %union.tree_node** %def_stmt1 to %union.gimple_statement_d**, !dbg !3212
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %1, align 8, !dbg !3212
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !3198, metadata !DIExpression()), !dbg !3207
  %call2 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %2) #8, !dbg !3213
  %tobool = icmp eq i8 %call2, 0, !dbg !3213
  br i1 %tobool, label %if.end71, label %if.then3, !dbg !3214

if.then3:                                         ; preds = %if.then
  %call4 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %2) #8, !dbg !3215
  %cmp5 = icmp eq i32 %call4, 116, !dbg !3216
  br i1 %cmp5, label %if.then6, label %if.end71, !dbg !3217

if.then6:                                         ; preds = %if.then3
  %call7 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %2) #8, !dbg !3218
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !3195, metadata !DIExpression()), !dbg !3207
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3219
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3219
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3196, metadata !DIExpression()), !dbg !3207
  %type9 = getelementptr inbounds %union.tree_node, %union.tree_node* %call7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3220
  %4 = load %union.tree_node*, %union.tree_node** %type9, align 8, !dbg !3220
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !3197, metadata !DIExpression()), !dbg !3207
  %type10 = bitcast %union.tree_node* %4 to %struct.tree_type*, !dbg !3221
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type10, i64 0, i32 6, !dbg !3221
  %bf.load11 = load i32, i32* %precision, align 4, !dbg !3221
  %bf.clear12 = and i32 %bf.load11, 1023, !dbg !3221
  call void @llvm.dbg.value(metadata i32 %bf.clear12, metadata !3199, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i8 0, metadata !3206, metadata !DIExpression()), !dbg !3222
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3223
  %bf.load14 = load i64, i64* %5, align 8, !dbg !3223
  %bf.cast163 = and i64 %bf.load14, 65535, !dbg !3223
  %cmp17 = icmp eq i64 %bf.cast163, 6, !dbg !3223
  br i1 %cmp17, label %if.else, label %lor.lhs.false, !dbg !3223

lor.lhs.false:                                    ; preds = %if.then6
  %cmp22 = icmp eq i64 %bf.cast163, 7, !dbg !3223
  br i1 %cmp22, label %if.else, label %lor.lhs.false23, !dbg !3223

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %cmp28 = icmp eq i64 %bf.cast163, 8, !dbg !3223
  br i1 %cmp28, label %if.else, label %if.end58, !dbg !3225

if.else:                                          ; preds = %lor.lhs.false23, %lor.lhs.false, %if.then6
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3226
  %bf.load31 = load i64, i64* %6, align 8, !dbg !3226
  %bf.cast337 = and i64 %bf.load31, 2097152, !dbg !3226
  %tobool34 = icmp eq i64 %bf.cast337, 0, !dbg !3226
  br i1 %tobool34, label %if.else42, label %land.lhs.true, !dbg !3228

land.lhs.true:                                    ; preds = %if.else
  %bf.cast3910 = and i64 %bf.load14, 2097152, !dbg !3229
  %tobool40 = icmp eq i64 %bf.cast3910, 0, !dbg !3229
  br i1 %tobool40, label %if.end58, label %if.else42, !dbg !3230

if.else42:                                        ; preds = %land.lhs.true, %if.else
  br i1 %tobool34, label %land.lhs.true49, label %if.end58, !dbg !3231

land.lhs.true49:                                  ; preds = %if.else42
  %bf.cast549 = lshr i64 %bf.load14, 21, !dbg !3233
  %7 = trunc i64 %bf.cast549 to i32, !dbg !3233
  %8 = and i32 %7, 1, !dbg !3233
  %spec.select = add nuw nsw i32 %bf.clear12, %8, !dbg !3233
  br label %if.end58, !dbg !3233

if.end58:                                         ; preds = %land.lhs.true, %if.else42, %land.lhs.true49, %lor.lhs.false23
  %need_precision.2 = phi i32 [ %bf.clear12, %lor.lhs.false23 ], [ %bf.clear12, %land.lhs.true ], [ %bf.clear12, %if.else42 ], [ %spec.select, %land.lhs.true49 ], !dbg !3234
  %fail.1 = phi i1 [ true, %lor.lhs.false23 ], [ true, %land.lhs.true ], [ false, %if.else42 ], [ false, %land.lhs.true49 ]
  call void @llvm.dbg.value(metadata i32 %need_precision.2, metadata !3199, metadata !DIExpression()), !dbg !3222
  %type59 = bitcast %union.tree_node* %3 to %struct.tree_type*, !dbg !3235
  %precision60 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type59, i64 0, i32 6, !dbg !3235
  %bf.load61 = load i32, i32* %precision60, align 4, !dbg !3235
  %bf.clear62 = and i32 %bf.load61, 1023, !dbg !3235
  %cmp63 = icmp slt i32 %bf.clear62, %need_precision.2, !dbg !3237
  %tobool66 = or i1 %cmp63, %fail.1, !dbg !3238
  br i1 %tobool66, label %if.end71, label %if.then67, !dbg !3240

if.then67:                                        ; preds = %if.end58
  tail call fastcc void @gimple_switch_set_index(%union.gimple_statement_d* %stmt, %union.tree_node* %call7) #8, !dbg !3241
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %stmt) #8, !dbg !3243
  br label %if.end71, !dbg !3244

if.end71:                                         ; preds = %if.then, %if.end58, %if.then67, %if.then3, %entry
  ret void, !dbg !3245
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @forward_propagate_into_gimple_cond(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !3246 {
entry:
  %single_use0_p = alloca i8, align 1
  %single_use1_p = alloca i8, align 1
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3250, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 0, metadata !3251, metadata !DIExpression()), !dbg !3275
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %stmt) #8, !dbg !3276
  call void @llvm.dbg.value(metadata i32 %call, metadata !3252, metadata !DIExpression()), !dbg !3275
  br label %do.body, !dbg !3277

do.body:                                          ; preds = %cleanup91, %entry
  %name.0 = phi %union.tree_node* [ undef, %entry ], [ %name.3, %cleanup91 ]
  %did_something.0 = phi i32 [ 0, %entry ], [ %did_something.3, %cleanup91 ], !dbg !3278
  %retval.0 = phi i32 [ undef, %entry ], [ %retval.4, %cleanup91 ]
  call void @llvm.dbg.value(metadata i32 %did_something.0, metadata !3251, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata %union.tree_node* %name.0, metadata !3255, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3253, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3256, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3257, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i8* %single_use0_p, metadata !3259, metadata !DIExpression(DW_OP_deref)), !dbg !3279
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %single_use0_p) #7, !dbg !3280
  call void @llvm.dbg.value(metadata i8 0, metadata !3259, metadata !DIExpression()), !dbg !3279
  store i8 0, i8* %single_use0_p, align 1, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %single_use1_p, metadata !3260, metadata !DIExpression(DW_OP_deref)), !dbg !3279
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %single_use1_p) #7, !dbg !3280
  call void @llvm.dbg.value(metadata i8 0, metadata !3260, metadata !DIExpression()), !dbg !3279
  store i8 0, i8* %single_use1_p, align 1, !dbg !3282
  %call1 = call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %stmt) #8, !dbg !3283
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3261, metadata !DIExpression()), !dbg !3279
  %call2 = call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %stmt) #8, !dbg !3284
  %idxprom = sext i32 %call2 to i64, !dbg !3284
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom, !dbg !3284
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3284
  %cmp = icmp eq i32 %0, 5, !dbg !3285
  br i1 %cmp, label %land.lhs.true, label %if.end65, !dbg !3286

land.lhs.true:                                    ; preds = %do.body
  %call3 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !3287
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3287
  %bf.load = load i64, i64* %1, align 8, !dbg !3287
  %bf.cast3 = and i64 %bf.load, 65535, !dbg !3288
  %cmp4 = icmp eq i64 %bf.cast3, 141, !dbg !3288
  br i1 %cmp4, label %if.then, label %if.end65, !dbg !3289

if.then:                                          ; preds = %land.lhs.true
  %call5 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !3290
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !3255, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i8* %single_use0_p, metadata !3259, metadata !DIExpression(DW_OP_deref)), !dbg !3279
  %call6 = call fastcc %union.gimple_statement_d* @get_prop_source_stmt(%union.tree_node* %call5, i8 zeroext 0, i8* nonnull %single_use0_p) #8, !dbg !3291
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call6, metadata !3258, metadata !DIExpression()), !dbg !3279
  %tobool = icmp eq %union.gimple_statement_d* %call6, null, !dbg !3292
  br i1 %tobool, label %if.end, label %land.lhs.true7, !dbg !3293

land.lhs.true7:                                   ; preds = %if.then
  %call8 = call fastcc zeroext i8 @can_propagate_from(%union.gimple_statement_d* nonnull %call6) #8, !dbg !3294
  %tobool9 = icmp eq i8 %call8, 0, !dbg !3294
  br i1 %tobool9, label %if.end, label %if.then10, !dbg !3295

if.then10:                                        ; preds = %land.lhs.true7
  %call11 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %stmt) #8, !dbg !3296
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !3262, metadata !DIExpression()), !dbg !3297
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3298
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3298
  %call12 = call fastcc %union.tree_node* @rhs_to_tree(%union.tree_node* %2, %union.gimple_statement_d* nonnull %call6) #8, !dbg !3299
  call void @llvm.dbg.value(metadata %union.tree_node* %call12, metadata !3256, metadata !DIExpression()), !dbg !3279
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3300
  %4 = load i8, i8* %single_use0_p, align 1, !dbg !3301
  call void @llvm.dbg.value(metadata i8 %4, metadata !3259, metadata !DIExpression()), !dbg !3279
  %tobool13 = icmp eq i8 %4, 0, !dbg !3302
  %conv14 = zext i1 %tobool13 to i8, !dbg !3302
  %call15 = call fastcc %union.tree_node* @combine_cond_expr_cond(i32 %call, i32 %call1, %union.tree_node* %3, %union.tree_node* %call12, %union.tree_node* %call11, i8 zeroext %conv14) #8, !dbg !3303
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !3253, metadata !DIExpression()), !dbg !3279
  br label %if.end, !dbg !3304

if.end:                                           ; preds = %land.lhs.true7, %if.then, %if.then10
  %rhs0.0 = phi %union.tree_node* [ %call12, %if.then10 ], [ null, %land.lhs.true7 ], [ null, %if.then ], !dbg !3279
  %tmp.0 = phi %union.tree_node* [ %call15, %if.then10 ], [ null, %land.lhs.true7 ], [ null, %if.then ], !dbg !3279
  call void @llvm.dbg.value(metadata %union.tree_node* %tmp.0, metadata !3253, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs0.0, metadata !3256, metadata !DIExpression()), !dbg !3279
  %cmp16 = icmp eq %union.tree_node* %tmp.0, null, !dbg !3305
  br i1 %cmp16, label %land.lhs.true18, label %if.end43, !dbg !3306

land.lhs.true18:                                  ; preds = %if.end
  %call19 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %stmt) #8, !dbg !3307
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %call19, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3307
  %bf.load21 = load i64, i64* %5, align 8, !dbg !3307
  %bf.cast234 = and i64 %bf.load21, 65535, !dbg !3308
  %cmp24 = icmp eq i64 %bf.cast234, 141, !dbg !3308
  br i1 %cmp24, label %if.then26, label %if.end43, !dbg !3309

if.then26:                                        ; preds = %land.lhs.true18
  %call27 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !3310
  call void @llvm.dbg.value(metadata %union.tree_node* %call27, metadata !3267, metadata !DIExpression()), !dbg !3311
  %call28 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %stmt) #8, !dbg !3312
  call void @llvm.dbg.value(metadata %union.tree_node* %call28, metadata !3255, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i8* %single_use1_p, metadata !3260, metadata !DIExpression(DW_OP_deref)), !dbg !3279
  %call29 = call fastcc %union.gimple_statement_d* @get_prop_source_stmt(%union.tree_node* %call28, i8 zeroext 0, i8* nonnull %single_use1_p) #8, !dbg !3313
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call29, metadata !3258, metadata !DIExpression()), !dbg !3279
  %tobool30 = icmp eq %union.gimple_statement_d* %call29, null, !dbg !3314
  br i1 %tobool30, label %cleanup, label %lor.lhs.false, !dbg !3316

lor.lhs.false:                                    ; preds = %if.then26
  %call31 = call fastcc zeroext i8 @can_propagate_from(%union.gimple_statement_d* nonnull %call29) #8, !dbg !3317
  %tobool32 = icmp eq i8 %call31, 0, !dbg !3317
  br i1 %tobool32, label %cleanup, label %if.end34, !dbg !3318

if.end34:                                         ; preds = %lor.lhs.false
  %type36 = getelementptr inbounds %union.tree_node, %union.tree_node* %call27, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3319
  %6 = load %union.tree_node*, %union.tree_node** %type36, align 8, !dbg !3319
  %call37 = call fastcc %union.tree_node* @rhs_to_tree(%union.tree_node* %6, %union.gimple_statement_d* nonnull %call29) #8, !dbg !3320
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !3257, metadata !DIExpression()), !dbg !3279
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3321
  %8 = load i8, i8* %single_use1_p, align 1, !dbg !3322
  call void @llvm.dbg.value(metadata i8 %8, metadata !3260, metadata !DIExpression()), !dbg !3279
  %tobool38 = icmp eq i8 %8, 0, !dbg !3323
  %conv41 = zext i1 %tobool38 to i8, !dbg !3323
  %call42 = call fastcc %union.tree_node* @combine_cond_expr_cond(i32 %call, i32 %call1, %union.tree_node* %7, %union.tree_node* %call27, %union.tree_node* %call37, i8 zeroext %conv41) #8, !dbg !3324
  call void @llvm.dbg.value(metadata %union.tree_node* %call42, metadata !3253, metadata !DIExpression()), !dbg !3279
  br label %cleanup, !dbg !3325

cleanup:                                          ; preds = %lor.lhs.false, %if.then26, %if.end34
  %rhs1.0 = phi %union.tree_node* [ %call37, %if.end34 ], [ null, %lor.lhs.false ], [ null, %if.then26 ], !dbg !3279
  %tmp.1 = phi %union.tree_node* [ %call42, %if.end34 ], [ null, %lor.lhs.false ], [ null, %if.then26 ], !dbg !3326
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end34 ], [ 1, %lor.lhs.false ], [ 1, %if.then26 ]
  %retval.1 = phi i32 [ %retval.0, %if.end34 ], [ %did_something.0, %lor.lhs.false ], [ %did_something.0, %if.then26 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %tmp.1, metadata !3253, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs1.0, metadata !3257, metadata !DIExpression()), !dbg !3279
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %if.end43, label %cleanup91

if.end43:                                         ; preds = %cleanup, %land.lhs.true18, %if.end
  %rhs1.1 = phi %union.tree_node* [ null, %land.lhs.true18 ], [ null, %if.end ], [ %rhs1.0, %cleanup ], !dbg !3279
  %name.1 = phi %union.tree_node* [ %call5, %land.lhs.true18 ], [ %call5, %if.end ], [ %call28, %cleanup ], !dbg !3326
  %tmp.2 = phi %union.tree_node* [ null, %land.lhs.true18 ], [ %tmp.0, %if.end ], [ %tmp.1, %cleanup ], !dbg !3326
  %retval.2 = phi i32 [ %retval.0, %land.lhs.true18 ], [ %retval.0, %if.end ], [ %retval.1, %cleanup ]
  call void @llvm.dbg.value(metadata %union.tree_node* %tmp.2, metadata !3253, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata %union.tree_node* %name.1, metadata !3255, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs1.1, metadata !3257, metadata !DIExpression()), !dbg !3279
  %cmp44 = icmp eq %union.tree_node* %tmp.2, null, !dbg !3327
  %cmp47 = icmp ne %union.tree_node* %rhs0.0, null, !dbg !3329
  %or.cond = and i1 %cmp44, %cmp47, !dbg !3330
  %cmp50 = icmp ne %union.tree_node* %rhs1.1, null, !dbg !3331
  %or.cond1 = and i1 %or.cond, %cmp50, !dbg !3330
  br i1 %or.cond1, label %if.then52, label %if.end65, !dbg !3330

if.then52:                                        ; preds = %if.end43
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3332
  %type54 = getelementptr inbounds %union.tree_node, %union.tree_node* %rhs0.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3333
  %10 = load %union.tree_node*, %union.tree_node** %type54, align 8, !dbg !3333
  %call55 = call %union.tree_node* @fold_convert_loc(i32 %call, %union.tree_node* %10, %union.tree_node* nonnull %rhs1.1) #6, !dbg !3334
  %11 = load i8, i8* %single_use0_p, align 1, !dbg !3335
  call void @llvm.dbg.value(metadata i8 %11, metadata !3259, metadata !DIExpression()), !dbg !3279
  %tobool57 = icmp eq i8 %11, 0, !dbg !3335
  %12 = load i8, i8* %single_use1_p, align 1, !dbg !3336
  call void @llvm.dbg.value(metadata i8 %12, metadata !3260, metadata !DIExpression()), !dbg !3279
  %tobool59 = icmp eq i8 %12, 0, !dbg !3336
  %lnot60 = or i1 %tobool57, %tobool59, !dbg !3337
  %conv62 = zext i1 %lnot60 to i8, !dbg !3337
  %call63 = call fastcc %union.tree_node* @combine_cond_expr_cond(i32 %call, i32 %call1, %union.tree_node* %9, %union.tree_node* nonnull %rhs0.0, %union.tree_node* %call55, i8 zeroext %conv62) #8, !dbg !3338
  call void @llvm.dbg.value(metadata %union.tree_node* %call63, metadata !3253, metadata !DIExpression()), !dbg !3279
  br label %if.end65, !dbg !3339

if.end65:                                         ; preds = %if.end43, %if.then52, %land.lhs.true, %do.body
  %name.2 = phi %union.tree_node* [ %name.0, %land.lhs.true ], [ %name.0, %do.body ], [ %name.1, %if.then52 ], [ %name.1, %if.end43 ]
  %tmp.4 = phi %union.tree_node* [ null, %land.lhs.true ], [ null, %do.body ], [ %call63, %if.then52 ], [ %tmp.2, %if.end43 ], !dbg !3279
  %retval.3 = phi i32 [ %retval.0, %land.lhs.true ], [ %retval.0, %do.body ], [ %retval.2, %if.then52 ], [ %retval.2, %if.end43 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %tmp.4, metadata !3253, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata %union.tree_node* %name.2, metadata !3255, metadata !DIExpression()), !dbg !3279
  %tobool66 = icmp eq %union.tree_node* %tmp.4, null, !dbg !3340
  br i1 %tobool66, label %cleanup91, label %if.then67, !dbg !3341

if.then67:                                        ; preds = %if.end65
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3342
  %tobool68 = icmp eq %struct._IO_FILE* %13, null, !dbg !3342
  br i1 %tobool68, label %if.end79, label %if.then71, !dbg !3343

if.then71:                                        ; preds = %if.then67
  %call72 = call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %stmt) #8, !dbg !3344
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3344
  %call73 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !3344
  %call74 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %stmt) #8, !dbg !3344
  %call75 = call %union.tree_node* @build2_stat(i32 %call72, %union.tree_node* %14, %union.tree_node* %call73, %union.tree_node* %call74) #6, !dbg !3344
  call void @llvm.dbg.value(metadata %union.tree_node* %call75, metadata !3270, metadata !DIExpression()), !dbg !3345
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3346
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3347
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3348
  call void @print_generic_expr(%struct._IO_FILE* %16, %union.tree_node* %call75, i32 0) #6, !dbg !3349
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3350
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3351
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3352
  call void @print_generic_expr(%struct._IO_FILE* %18, %union.tree_node* nonnull %tmp.4, i32 0) #6, !dbg !3353
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3354
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3355
  br label %if.end79, !dbg !3356

if.end79:                                         ; preds = %if.then67, %if.then71
  %call80 = call %union.tree_node* @unshare_expr(%union.tree_node* nonnull %tmp.4) #6, !dbg !3357
  call void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d* %stmt, %union.tree_node* %call80) #6, !dbg !3358
  call fastcc void @update_stmt(%union.gimple_statement_d* %stmt) #8, !dbg !3359
  %call81 = call fastcc zeroext i8 @remove_prop_source_from_use(%union.tree_node* %name.2, %union.gimple_statement_d* null) #8, !dbg !3360
  %call82 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* nonnull %tmp.4) #6, !dbg !3361
  %tobool83 = icmp eq i8 %call82, 0, !dbg !3361
  %cmp85 = icmp eq i32 %did_something.0, 0, !dbg !3363
  %spec.select = select i1 %cmp85, i32 1, i32 %did_something.0, !dbg !3363
  %did_something.2 = select i1 %tobool83, i32 %spec.select, i32 2, !dbg !3363
  br label %cleanup91, !dbg !3363

cleanup91:                                        ; preds = %if.end65, %if.end79, %cleanup
  %name.3 = phi %union.tree_node* [ %call28, %cleanup ], [ %name.2, %if.end79 ], [ %name.2, %if.end65 ], !dbg !3364
  %did_something.3 = phi i32 [ %did_something.0, %cleanup ], [ %did_something.2, %if.end79 ], [ %did_something.0, %if.end65 ], !dbg !3275
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 3, %if.end79 ], [ 2, %if.end65 ]
  %retval.4 = phi i32 [ %retval.1, %cleanup ], [ %retval.3, %if.end79 ], [ %retval.3, %if.end65 ]
  call void @llvm.dbg.value(metadata i32 %did_something.3, metadata !3251, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata %union.tree_node* %name.3, metadata !3255, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i8* %single_use1_p, metadata !3260, metadata !DIExpression(DW_OP_deref)), !dbg !3279
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %single_use1_p) #7, !dbg !3365
  call void @llvm.dbg.value(metadata i8* %single_use0_p, metadata !3259, metadata !DIExpression(DW_OP_deref)), !dbg !3279
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %single_use0_p) #7, !dbg !3365
  switch i32 %cleanup.dest.slot.1, label %cleanup100.loopexit [
    i32 3, label %do.body
    i32 2, label %do.end
  ]

do.end:                                           ; preds = %cleanup91
  %did_something.3.lcssa10 = phi i32 [ %did_something.3, %cleanup91 ], !dbg !3275
  call void @llvm.dbg.value(metadata i32 %did_something.3.lcssa10, metadata !3251, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 %did_something.3.lcssa10, metadata !3251, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 %did_something.3.lcssa10, metadata !3251, metadata !DIExpression()), !dbg !3275
  br label %cleanup100, !dbg !3366

cleanup100.loopexit:                              ; preds = %cleanup91
  %retval.4.lcssa = phi i32 [ %retval.4, %cleanup91 ]
  br label %cleanup100, !dbg !3367

cleanup100:                                       ; preds = %cleanup100.loopexit, %do.end
  %retval.5 = phi i32 [ %did_something.3.lcssa10, %do.end ], [ %retval.4.lcssa, %cleanup100.loopexit ]
  ret i32 %retval.5, !dbg !3367
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3368 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3375, metadata !DIExpression()), !dbg !3376
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3377
  %0 = load i32, i32* %flags, align 8, !dbg !3377
  %and = and i32 %0, 512, !dbg !3378
  %tobool = icmp eq i32 %and, 0, !dbg !3378
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3379

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3380
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3380
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3381
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3382

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3383
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3383
  br label %cond.end, !dbg !3382

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3382
  ret %struct.gimple_seq_d* %cond, !dbg !3384
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3385 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3392, metadata !DIExpression()), !dbg !3393
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3394
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3394

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3395
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3395
  br label %cond.end, !dbg !3394

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3394
  ret %struct.gimple_seq_node_d* %cond, !dbg !3396
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3397 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3401, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 %i, metadata !3402, metadata !DIExpression()), !dbg !3403
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3404
  %tobool = icmp eq i8 %call, 0, !dbg !3404
  br i1 %tobool, label %return, label %if.then, !dbg !3406

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3407
  %idxprom = zext i32 %i to i64, !dbg !3407
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3407
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3407
  br label %return, !dbg !3409

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3410
  ret %union.tree_node* %retval.0, !dbg !3411
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3412 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3414, metadata !DIExpression()), !dbg !3415
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3416
  %cmp = icmp eq i32 %call, 0, !dbg !3417
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3418

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3419
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3420
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3421
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3422 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3426, metadata !DIExpression()), !dbg !3428
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !3429
  %idxprom = zext i32 %call to i64, !dbg !3430
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3430
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3430
  call void @llvm.dbg.value(metadata i64 %0, metadata !3427, metadata !DIExpression()), !dbg !3428
  %cmp = icmp eq i64 %0, 0, !dbg !3431
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3431

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3431
  br label %cond.end, !dbg !3431

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3432
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3433
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3434
  ret %union.tree_node** %2, !dbg !3435
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3436 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3440, metadata !DIExpression()), !dbg !3441
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3442
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !3443
  ret i32 %call1, !dbg !3444
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3445 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3449, metadata !DIExpression()), !dbg !3450
  %idxprom = zext i32 %code to i64, !dbg !3451
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3451
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3451
  ret i32 %0, !dbg !3452
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3453 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3455, metadata !DIExpression()), !dbg !3457
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3458
  call void @llvm.dbg.value(metadata i32 %call, metadata !3456, metadata !DIExpression()), !dbg !3457
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3459

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3461
  %bf.load = load i32, i32* %0, align 8, !dbg !3461
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3461
  br label %cleanup, !dbg !3462

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3463
  br label %cleanup, !dbg !3465

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3457
  ret i32 %retval.0, !dbg !3466
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3467 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3471, metadata !DIExpression()), !dbg !3472
  %idxprom = sext i32 %code to i64, !dbg !3473
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3473
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3473
  %conv = zext i8 %0 to i32, !dbg !3474
  ret i32 %conv, !dbg !3475
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3476 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3480, metadata !DIExpression()), !dbg !3481
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3482
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3482
  ret %struct.basic_block_def* %0, !dbg !3483
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @has_single_use(%union.tree_node* %var) unnamed_addr #0 !dbg !3484 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3490, metadata !DIExpression()), !dbg !3495
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3496
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !3496
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !3491, metadata !DIExpression()), !dbg !3495
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !3497
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !3497
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !3497
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !3499
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3500

if.end:                                           ; preds = %entry
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 1, !dbg !3501
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next2, align 8, !dbg !3501
  %cmp3 = icmp eq %struct.ssa_use_operand_d* %3, %0, !dbg !3503
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !3504

if.then4:                                         ; preds = %if.end
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 2, i32 0, !dbg !3505
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3505
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %4) #8, !dbg !3506
  %tobool = icmp eq i8 %call, 0, !dbg !3507
  %conv = zext i1 %tobool to i8, !dbg !3507
  br label %cleanup, !dbg !3508

if.end6:                                          ; preds = %if.end
  %5 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !3509
  %tobool7 = icmp eq i32 %5, 0, !dbg !3509
  br i1 %tobool7, label %cleanup, label %if.end9, !dbg !3511

if.end9:                                          ; preds = %if.end6
  %call10 = tail call zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d* nonnull %0, %struct.ssa_use_operand_d** null, %union.gimple_statement_d** null) #6, !dbg !3512
  br label %cleanup, !dbg !3513

cleanup:                                          ; preds = %if.end6, %entry, %if.end9, %if.then4
  %retval.0 = phi i8 [ %conv, %if.then4 ], [ %call10, %if.end9 ], [ 0, %entry ], [ 0, %if.end6 ], !dbg !3495
  ret i8 %retval.0, !dbg !3514
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !3515 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3520, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3521, metadata !DIExpression()), !dbg !3522
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3523
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3524
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !3525
  store i40* %imm_uses, i40** %0, align 8, !dbg !3525
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !3526
  %1 = bitcast i40* %next to i64*, !dbg !3526
  %2 = load i64, i64* %1, align 8, !dbg !3526
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3527
  store i64 %2, i64* %3, align 8, !dbg !3527
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !3528
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next_imm_name, align 8, !dbg !3529
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !3530
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3531
  %next3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !3532
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next3, align 8, !dbg !3533
  %stmt = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 2, i32 0, !dbg !3534
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %stmt, align 8, !dbg !3535
  %use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 3, !dbg !3536
  store %union.tree_node** null, %union.tree_node*** %use, align 8, !dbg !3537
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #8, !dbg !3538
  %tobool = icmp eq i8 %call, 0, !dbg !3538
  br i1 %tobool, label %if.end, label %return, !dbg !3540

if.end:                                           ; preds = %entry
  %imm_use6 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3541
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !3541
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #8, !dbg !3542
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !3543
  %stmt9 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !3543
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt9, align 8, !dbg !3543
  br label %return, !dbg !3544

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end ], [ null, %entry ], !dbg !3522
  ret %union.gimple_statement_d* %retval.0, !dbg !3545
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3546 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3552, metadata !DIExpression()), !dbg !3553
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3554
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3554
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3555
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !3555
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !3556
  %conv1 = zext i1 %cmp to i8, !dbg !3557
  ret i8 %conv1, !dbg !3558
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3559 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3561, metadata !DIExpression()), !dbg !3562
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3563
  %cmp = icmp eq i32 %call, 2, !dbg !3564
  %conv1 = zext i1 %cmp to i8, !dbg !3563
  ret i8 %conv1, !dbg !3565
}

declare dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* sret, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @forward_propagate_addr_expr_1(%union.tree_node* %name, %union.tree_node* %def_rhs, %struct.gimple_stmt_iterator* %use_stmt_gsi, i8 zeroext %single_use_p) unnamed_addr #5 !dbg !3566 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !3570, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata %union.tree_node* %def_rhs, metadata !3571, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %use_stmt_gsi, metadata !3572, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i8 %single_use_p, metadata !3573, metadata !DIExpression()), !dbg !3593
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %use_stmt_gsi) #8, !dbg !3594
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3580, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i8 1, metadata !3582, metadata !DIExpression()), !dbg !3593
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %def_rhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3595
  %bf.load = load i64, i64* %0, align 8, !dbg !3595
  %bf.cast5 = and i64 %bf.load, 65535, !dbg !3595
  %cmp = icmp eq i64 %bf.cast5, 121, !dbg !3595
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3595

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 735, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3595
  br label %cond.end, !dbg !3595

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call) #8, !dbg !3596
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3574, metadata !DIExpression()), !dbg !3593
  %call2 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call) #8, !dbg !3597
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3581, metadata !DIExpression()), !dbg !3593
  %call3 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call) #8, !dbg !3598
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3575, metadata !DIExpression()), !dbg !3593
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3599
  %bf.load5 = load i64, i64* %1, align 8, !dbg !3599
  %bf.cast76 = and i64 %bf.load5, 65535, !dbg !3601
  %cmp8 = icmp eq i64 %bf.cast76, 141, !dbg !3601
  br i1 %cmp8, label %land.lhs.true, label %if.end91, !dbg !3602

land.lhs.true:                                    ; preds = %cond.end
  %cmp9 = icmp eq i32 %call2, 141, !dbg !3603
  %cmp11 = icmp eq %union.tree_node* %call3, %name, !dbg !3604
  %or.cond = and i1 %cmp9, %cmp11, !dbg !3605
  br i1 %or.cond, label %if.then, label %switch.early.test, !dbg !3605

switch.early.test:                                ; preds = %land.lhs.true
  switch i32 %call2, label %if.end91 [
    i32 116, label %if.then
    i32 113, label %if.then
  ], !dbg !3605

if.then:                                          ; preds = %switch.early.test, %switch.early.test, %land.lhs.true
  %tobool = icmp eq i8 %single_use_p, 0, !dbg !3606
  br i1 %tobool, label %if.then76, label %lor.lhs.false15, !dbg !3609

lor.lhs.false15:                                  ; preds = %if.then
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3610
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3610
  %type17 = getelementptr inbounds %union.tree_node, %union.tree_node* %def_rhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3611
  %3 = load %union.tree_node*, %union.tree_node** %type17, align 8, !dbg !3611
  %call18 = tail call zeroext i8 @useless_type_conversion_p(%union.tree_node* %2, %union.tree_node* %3) #6, !dbg !3612
  %tobool19 = icmp eq i8 %call18, 0, !dbg !3612
  br i1 %tobool19, label %land.lhs.true20, label %if.end, !dbg !3613

land.lhs.true20:                                  ; preds = %lor.lhs.false15
  %call21 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %def_rhs) #6, !dbg !3614
  %tobool22 = icmp eq i8 %call21, 0, !dbg !3614
  br i1 %tobool22, label %if.then76, label %lor.lhs.false23, !dbg !3615

lor.lhs.false23:                                  ; preds = %land.lhs.true20
  %4 = bitcast %union.tree_node** %type to i64**, !dbg !3616
  %5 = load i64*, i64** %4, align 8, !dbg !3616
  %bf.load27 = load i64, i64* %5, align 8, !dbg !3616
  %bf.cast2923 = and i64 %bf.load27, 65535, !dbg !3616
  %cmp30 = icmp eq i64 %bf.cast2923, 6, !dbg !3616
  %6 = bitcast i64* %5 to %struct.tree_type*, !dbg !3616
  br i1 %cmp30, label %land.lhs.true47, label %lor.lhs.false31, !dbg !3616

lor.lhs.false31:                                  ; preds = %lor.lhs.false23
  %cmp38 = icmp eq i64 %bf.cast2923, 7, !dbg !3616
  br i1 %cmp38, label %land.lhs.true47, label %lor.lhs.false39, !dbg !3616

lor.lhs.false39:                                  ; preds = %lor.lhs.false31
  %cmp46 = icmp eq i64 %bf.cast2923, 8, !dbg !3616
  br i1 %cmp46, label %land.lhs.true47, label %if.end, !dbg !3617

land.lhs.true47:                                  ; preds = %lor.lhs.false39, %lor.lhs.false31, %lor.lhs.false23
  %7 = bitcast %union.tree_node** %type17 to i64**, !dbg !3618
  %8 = load i64*, i64** %7, align 8, !dbg !3618
  %bf.load51 = load i64, i64* %8, align 8, !dbg !3618
  %bf.cast5326 = and i64 %bf.load51, 65535, !dbg !3618
  %cmp54 = icmp eq i64 %bf.cast5326, 10, !dbg !3618
  %9 = bitcast i64* %8 to %struct.tree_type*, !dbg !3618
  br i1 %cmp54, label %land.lhs.true63, label %lor.lhs.false55, !dbg !3618

lor.lhs.false55:                                  ; preds = %land.lhs.true47
  %cmp62 = icmp eq i64 %bf.cast5326, 12, !dbg !3618
  br i1 %cmp62, label %land.lhs.true63, label %if.end, !dbg !3619

land.lhs.true63:                                  ; preds = %lor.lhs.false55, %land.lhs.true47
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %6, i64 0, i32 6, !dbg !3620
  %bf.load67 = load i32, i32* %precision, align 4, !dbg !3620
  %bf.clear68 = and i32 %bf.load67, 1023, !dbg !3620
  %precision72 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %9, i64 0, i32 6, !dbg !3621
  %bf.load73 = load i32, i32* %precision72, align 4, !dbg !3621
  %bf.clear74 = and i32 %bf.load73, 1023, !dbg !3621
  %cmp75 = icmp ugt i32 %bf.clear68, %bf.clear74, !dbg !3622
  br i1 %cmp75, label %if.then76, label %if.end, !dbg !3623

if.then76:                                        ; preds = %land.lhs.true20, %if.then, %land.lhs.true63
  %call77 = tail call fastcc zeroext i8 @forward_propagate_addr_expr(%union.tree_node* %call1, %union.tree_node* %def_rhs) #8, !dbg !3624
  br label %cleanup422, !dbg !3625

if.end:                                           ; preds = %lor.lhs.false15, %land.lhs.true63, %lor.lhs.false55, %lor.lhs.false39
  %call78 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %def_rhs) #6, !dbg !3626
  tail call fastcc void @gimple_assign_set_rhs1(%union.gimple_statement_d* %call, %union.tree_node* %call78) #8, !dbg !3627
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3628
  %11 = load %union.tree_node*, %union.tree_node** %type17, align 8, !dbg !3630
  %call83 = tail call zeroext i8 @useless_type_conversion_p(%union.tree_node* %10, %union.tree_node* %11) #6, !dbg !3631
  %tobool84 = icmp eq i8 %call83, 0, !dbg !3631
  br i1 %tobool84, label %if.else, label %if.then85, !dbg !3632

if.then85:                                        ; preds = %if.end
  %bf.load87 = load i64, i64* %0, align 8, !dbg !3633
  %12 = trunc i64 %bf.load87 to i32, !dbg !3633
  %bf.cast89 = and i32 %12, 65535, !dbg !3633
  tail call fastcc void @gimple_assign_set_rhs_code(%union.gimple_statement_d* %call, i32 %bf.cast89) #8, !dbg !3634
  br label %cleanup422, !dbg !3634

if.else:                                          ; preds = %if.end
  tail call fastcc void @gimple_assign_set_rhs_code(%union.gimple_statement_d* %call, i32 116) #8, !dbg !3635
  br label %cleanup422

if.end91:                                         ; preds = %switch.early.test, %cond.end
  %call92 = tail call fastcc %union.tree_node** @gimple_assign_lhs_ptr(%union.gimple_statement_d* %call) #8, !dbg !3636
  call void @llvm.dbg.value(metadata %union.tree_node** %call92, metadata !3579, metadata !DIExpression()), !dbg !3593
  br label %while.cond, !dbg !3637

while.cond:                                       ; preds = %while.body, %if.end91
  %lhsp.0 = phi %union.tree_node** [ %call92, %if.end91 ], [ %operands, %while.body ], !dbg !3593
  call void @llvm.dbg.value(metadata %union.tree_node** %lhsp.0, metadata !3579, metadata !DIExpression()), !dbg !3593
  %13 = load %union.tree_node*, %union.tree_node** %lhsp.0, align 8, !dbg !3638
  %call93 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %13) #8, !dbg !3639
  %tobool94 = icmp eq i8 %call93, 0, !dbg !3637
  %14 = load %union.tree_node*, %union.tree_node** %lhsp.0, align 8, !dbg !3593
  br i1 %tobool94, label %while.end, label %while.body, !dbg !3637

while.body:                                       ; preds = %while.cond
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3640
  call void @llvm.dbg.value(metadata %union.tree_node** %operands, metadata !3579, metadata !DIExpression()), !dbg !3593
  br label %while.cond, !dbg !3637, !llvm.loop !3641

while.end:                                        ; preds = %while.cond
  %lhsp.0.lcssa = phi %union.tree_node** [ %lhsp.0, %while.cond ], !dbg !3593
  %.lcssa32 = phi %union.tree_node* [ %14, %while.cond ], !dbg !3593
  call void @llvm.dbg.value(metadata %union.tree_node** %lhsp.0.lcssa, metadata !3579, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata %union.tree_node** %lhsp.0.lcssa, metadata !3579, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata %union.tree_node** %lhsp.0.lcssa, metadata !3579, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata %union.tree_node* %.lcssa32, metadata !3574, metadata !DIExpression()), !dbg !3593
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa32, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3642
  %bf.load96 = load i64, i64* %15, align 8, !dbg !3642
  %bf.cast987 = and i64 %bf.load96, 65535, !dbg !3644
  %cmp99 = icmp eq i64 %bf.cast987, 47, !dbg !3644
  br i1 %cmp99, label %land.lhs.true100, label %if.end134, !dbg !3645

land.lhs.true100:                                 ; preds = %while.end
  %operands102 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa32, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3646
  %16 = load %union.tree_node*, %union.tree_node** %operands102, align 8, !dbg !3646
  %cmp104 = icmp eq %union.tree_node* %16, %name, !dbg !3647
  br i1 %cmp104, label %if.then105, label %if.end134, !dbg !3648

if.then105:                                       ; preds = %land.lhs.true100
  %call106 = tail call zeroext i8 @may_propagate_address_into_dereference(%union.tree_node* %def_rhs, %union.tree_node* %.lcssa32) #6, !dbg !3649
  %tobool107 = icmp eq i8 %call106, 0, !dbg !3649
  br i1 %tobool107, label %if.end134, label %land.lhs.true108, !dbg !3652

land.lhs.true108:                                 ; preds = %if.then105
  %call109 = tail call fastcc %union.tree_node** @gimple_assign_lhs_ptr(%union.gimple_statement_d* %call) #8, !dbg !3653
  %cmp110 = icmp eq %union.tree_node** %lhsp.0.lcssa, %call109, !dbg !3654
  br i1 %cmp110, label %lor.lhs.false112, label %if.then123, !dbg !3655

lor.lhs.false112:                                 ; preds = %land.lhs.true108
  %operands114 = getelementptr inbounds %union.tree_node, %union.tree_node* %def_rhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3656
  %17 = bitcast %union.tree_node** %operands114 to %struct.tree_common**, !dbg !3656
  %18 = load %struct.tree_common*, %struct.tree_common** %17, align 8, !dbg !3656
  %type117 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %18, i64 0, i32 2, !dbg !3656
  %19 = load %union.tree_node*, %union.tree_node** %type117, align 8, !dbg !3656
  %type119 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3657
  %20 = load %union.tree_node*, %union.tree_node** %type119, align 8, !dbg !3657
  %call120 = tail call zeroext i8 @useless_type_conversion_p(%union.tree_node* %19, %union.tree_node* %20) #6, !dbg !3658
  %tobool122 = icmp eq i8 %call120, 0, !dbg !3658
  br i1 %tobool122, label %if.end134, label %if.then123, !dbg !3659

if.then123:                                       ; preds = %lor.lhs.false112, %land.lhs.true108
  %operands125 = getelementptr inbounds %union.tree_node, %union.tree_node* %def_rhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3660
  %21 = load %union.tree_node*, %union.tree_node** %operands125, align 8, !dbg !3660
  %call127 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %21) #6, !dbg !3662
  store %union.tree_node* %call127, %union.tree_node** %lhsp.0.lcssa, align 8, !dbg !3663
  %call128 = tail call zeroext i8 @fold_stmt_inplace(%union.gimple_statement_d* %call) #6, !dbg !3664
  tail call fastcc void @tidy_after_forward_propagate_addr(%union.gimple_statement_d* %call) #8, !dbg !3665
  %tobool129 = icmp eq i8 %single_use_p, 0, !dbg !3666
  br i1 %tobool129, label %if.end134, label %cleanup422, !dbg !3668

if.end134:                                        ; preds = %if.then123, %lor.lhs.false112, %if.then105, %land.lhs.true100, %while.end
  %res.1 = phi i8 [ 1, %land.lhs.true100 ], [ 1, %while.end ], [ 1, %if.then123 ], [ 0, %lor.lhs.false112 ], [ 0, %if.then105 ], !dbg !3669
  call void @llvm.dbg.value(metadata i8 %res.1, metadata !3582, metadata !DIExpression()), !dbg !3593
  %call135 = tail call fastcc %union.tree_node** @gimple_assign_rhs1_ptr(%union.gimple_statement_d* %call) #8, !dbg !3670
  call void @llvm.dbg.value(metadata %union.tree_node** %call135, metadata !3578, metadata !DIExpression()), !dbg !3593
  br label %while.cond136, !dbg !3671

while.cond136:                                    ; preds = %while.body146, %if.end134
  %rhsp.0 = phi %union.tree_node** [ %call135, %if.end134 ], [ %operands148, %while.body146 ], !dbg !3593
  call void @llvm.dbg.value(metadata %union.tree_node** %rhsp.0, metadata !3578, metadata !DIExpression()), !dbg !3593
  %22 = load %union.tree_node*, %union.tree_node** %rhsp.0, align 8, !dbg !3672
  %call137 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %22) #8, !dbg !3673
  %tobool139 = icmp eq i8 %call137, 0, !dbg !3673
  br i1 %tobool139, label %lor.rhs, label %while.cond136.lor.end_crit_edge, !dbg !3674

while.cond136.lor.end_crit_edge:                  ; preds = %while.cond136
  %.pre = load %union.tree_node*, %union.tree_node** %rhsp.0, align 8, !dbg !3593
  br label %lor.end, !dbg !3674

lor.rhs:                                          ; preds = %while.cond136
  %23 = bitcast %union.tree_node** %rhsp.0 to i64**, !dbg !3675
  %24 = load i64*, i64** %23, align 8, !dbg !3675
  %bf.load141 = load i64, i64* %24, align 8, !dbg !3675
  %bf.cast1438 = and i64 %bf.load141, 65535, !dbg !3676
  %cmp144 = icmp eq i64 %bf.cast1438, 121, !dbg !3676
  %25 = bitcast i64* %24 to %union.tree_node*, !dbg !3674
  br label %lor.end, !dbg !3674

lor.end:                                          ; preds = %while.cond136.lor.end_crit_edge, %lor.rhs
  %26 = phi %union.tree_node* [ %.pre, %while.cond136.lor.end_crit_edge ], [ %25, %lor.rhs ], !dbg !3593
  %27 = phi i1 [ true, %while.cond136.lor.end_crit_edge ], [ %cmp144, %lor.rhs ]
  br i1 %27, label %while.body146, label %while.end150, !dbg !3671

while.body146:                                    ; preds = %lor.end
  %operands148 = getelementptr inbounds %union.tree_node, %union.tree_node* %26, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3677
  call void @llvm.dbg.value(metadata %union.tree_node** %operands148, metadata !3578, metadata !DIExpression()), !dbg !3593
  br label %while.cond136, !dbg !3671, !llvm.loop !3678

while.end150:                                     ; preds = %lor.end
  %.lcssa = phi %union.tree_node* [ %26, %lor.end ], !dbg !3593
  %rhsp.0.lcssa = phi %union.tree_node** [ %rhsp.0, %lor.end ], !dbg !3593
  call void @llvm.dbg.value(metadata %union.tree_node** %rhsp.0.lcssa, metadata !3578, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata %union.tree_node** %rhsp.0.lcssa, metadata !3578, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata %union.tree_node** %rhsp.0.lcssa, metadata !3578, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata %union.tree_node* %.lcssa, metadata !3575, metadata !DIExpression()), !dbg !3593
  %28 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3679
  %bf.load152 = load i64, i64* %28, align 8, !dbg !3679
  %bf.cast1549 = and i64 %bf.load152, 65535, !dbg !3681
  %cmp155 = icmp eq i64 %bf.cast1549, 47, !dbg !3681
  br i1 %cmp155, label %land.lhs.true157, label %if.end173, !dbg !3682

land.lhs.true157:                                 ; preds = %while.end150
  %operands159 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3683
  %29 = load %union.tree_node*, %union.tree_node** %operands159, align 8, !dbg !3683
  %cmp161 = icmp eq %union.tree_node* %29, %name, !dbg !3684
  br i1 %cmp161, label %land.lhs.true163, label %if.end173, !dbg !3685

land.lhs.true163:                                 ; preds = %land.lhs.true157
  %call164 = tail call zeroext i8 @may_propagate_address_into_dereference(%union.tree_node* %def_rhs, %union.tree_node* %.lcssa) #6, !dbg !3686
  %tobool166 = icmp eq i8 %call164, 0, !dbg !3686
  br i1 %tobool166, label %land.lhs.true163.if.end173_crit_edge, label %if.then167, !dbg !3687

land.lhs.true163.if.end173_crit_edge:             ; preds = %land.lhs.true163
  %bf.load175.pre = load i64, i64* %28, align 8, !dbg !3688
  br label %if.end173, !dbg !3687

if.then167:                                       ; preds = %land.lhs.true163
  %operands169 = getelementptr inbounds %union.tree_node, %union.tree_node* %def_rhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3689
  %30 = load %union.tree_node*, %union.tree_node** %operands169, align 8, !dbg !3689
  %call171 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %30) #6, !dbg !3691
  store %union.tree_node* %call171, %union.tree_node** %rhsp.0.lcssa, align 8, !dbg !3692
  %call172 = tail call zeroext i8 @fold_stmt_inplace(%union.gimple_statement_d* %call) #6, !dbg !3693
  tail call fastcc void @tidy_after_forward_propagate_addr(%union.gimple_statement_d* %call) #8, !dbg !3694
  br label %cleanup422, !dbg !3695

if.end173:                                        ; preds = %land.lhs.true163.if.end173_crit_edge, %land.lhs.true157, %while.end150
  %bf.load175 = phi i64 [ %bf.load175.pre, %land.lhs.true163.if.end173_crit_edge ], [ %bf.load152, %land.lhs.true157 ], [ %bf.load152, %while.end150 ], !dbg !3688
  %bf.cast17710 = and i64 %bf.load175, 65535, !dbg !3696
  %cmp178 = icmp eq i64 %bf.cast17710, 47, !dbg !3696
  br i1 %cmp178, label %land.lhs.true180, label %if.end309, !dbg !3697

land.lhs.true180:                                 ; preds = %if.end173
  %operands182 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3698
  %31 = load %union.tree_node*, %union.tree_node** %operands182, align 8, !dbg !3698
  %cmp184 = icmp eq %union.tree_node* %31, %name, !dbg !3699
  br i1 %cmp184, label %land.lhs.true186, label %if.end309, !dbg !3700

land.lhs.true186:                                 ; preds = %land.lhs.true180
  %type188 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3701
  %32 = bitcast %union.tree_node** %type188 to %struct.tree_type**, !dbg !3701
  %33 = load %struct.tree_type*, %struct.tree_type** %32, align 8, !dbg !3701
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %33, i64 0, i32 2, !dbg !3701
  %34 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !3701
  %tobool190 = icmp eq %union.tree_node* %34, null, !dbg !3701
  %35 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %33, i64 0, i32 0, i32 0, i32 0, !dbg !3702
  br i1 %tobool190, label %if.end309, label %land.lhs.true191, !dbg !3702

land.lhs.true191:                                 ; preds = %land.lhs.true186
  %operands193 = getelementptr inbounds %union.tree_node, %union.tree_node* %def_rhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3703
  %36 = bitcast %union.tree_node** %operands193 to %struct.tree_common**, !dbg !3703
  %37 = load %struct.tree_common*, %struct.tree_common** %36, align 8, !dbg !3703
  %type196 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %37, i64 0, i32 2, !dbg !3703
  %38 = bitcast %union.tree_node** %type196 to %struct.tree_type**, !dbg !3703
  %39 = load %struct.tree_type*, %struct.tree_type** %38, align 8, !dbg !3703
  %size198 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %39, i64 0, i32 2, !dbg !3703
  %40 = load %union.tree_node*, %union.tree_node** %size198, align 8, !dbg !3703
  %tobool199 = icmp eq %union.tree_node* %40, null, !dbg !3703
  %41 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %39, i64 0, i32 0, i32 0, i32 0, !dbg !3704
  br i1 %tobool199, label %if.end309, label %land.lhs.true200, !dbg !3704

land.lhs.true200:                                 ; preds = %land.lhs.true191
  %42 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %37, i64 0, i32 0, i32 0, !dbg !3704
  %bf.load205 = load i64, i64* %42, align 8, !dbg !3705
  %bf.cast20716 = and i64 %bf.load205, 65535, !dbg !3706
  %cmp208 = icmp eq i64 %bf.cast20716, 29, !dbg !3706
  br i1 %cmp208, label %if.end309, label %land.lhs.true210, !dbg !3707

land.lhs.true210:                                 ; preds = %land.lhs.true200
  %bf.load214 = load i64, i64* %35, align 8, !dbg !3708
  %bf.cast21617 = and i64 %bf.load214, 524288, !dbg !3708
  %tobool217 = icmp eq i64 %bf.cast21617, 0, !dbg !3708
  br i1 %tobool217, label %land.lhs.true218, label %if.end309, !dbg !3709

land.lhs.true218:                                 ; preds = %land.lhs.true210
  %bf.load225 = load i64, i64* %41, align 8, !dbg !3710
  %bf.cast22818 = and i64 %bf.load225, 524288, !dbg !3710
  %tobool229 = icmp eq i64 %bf.cast22818, 0, !dbg !3710
  br i1 %tobool229, label %land.lhs.true230, label %if.end309, !dbg !3711

land.lhs.true230:                                 ; preds = %land.lhs.true218
  %call242 = tail call i32 @operand_equal_p(%union.tree_node* nonnull %34, %union.tree_node* nonnull %40, i32 0) #6, !dbg !3712
  %tobool243 = icmp eq i32 %call242, 0, !dbg !3712
  br i1 %tobool243, label %if.end309, label %land.lhs.true244, !dbg !3713

land.lhs.true244:                                 ; preds = %land.lhs.true230
  %43 = load %union.tree_node*, %union.tree_node** %operands193, align 8, !dbg !3714
  %call248 = tail call i32 @get_alias_set(%union.tree_node* %43) #6, !dbg !3715
  %call249 = tail call i32 @get_alias_set(%union.tree_node* %.lcssa) #6, !dbg !3716
  %cmp250 = icmp eq i32 %call248, %call249, !dbg !3717
  br i1 %cmp250, label %if.then252, label %if.end309, !dbg !3718

if.then252:                                       ; preds = %land.lhs.true244
  %44 = load %union.tree_node*, %union.tree_node** %operands193, align 8, !dbg !3719
  %call256 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %44) #6, !dbg !3720
  call void @llvm.dbg.value(metadata %union.tree_node* %call256, metadata !3586, metadata !DIExpression()), !dbg !3721
  %45 = load %union.tree_node*, %union.tree_node** %type188, align 8, !dbg !3722
  %call259 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 118, %union.tree_node* %45, %union.tree_node* %call256) #6, !dbg !3722
  call void @llvm.dbg.value(metadata %union.tree_node* %call259, metadata !3586, metadata !DIExpression()), !dbg !3721
  %46 = getelementptr inbounds %union.tree_node, %union.tree_node* %call259, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3723
  %bf.load261 = load i64, i64* %46, align 8, !dbg !3723
  %bf.cast26319 = and i64 %bf.load261, 65535, !dbg !3725
  %cmp264 = icmp eq i64 %bf.cast26319, 118, !dbg !3725
  br i1 %cmp264, label %if.end273, label %if.then266, !dbg !3726

if.then266:                                       ; preds = %if.then252
  %call267 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call) #8, !dbg !3727
  %cmp268 = icmp eq %union.tree_node* %.lcssa, %call267, !dbg !3730
  br i1 %cmp268, label %if.end271, label %cleanup, !dbg !3731

if.end271:                                        ; preds = %if.then266
  %call272 = tail call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %use_stmt_gsi, %union.tree_node* %call259, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 0) #6, !dbg !3732
  call void @llvm.dbg.value(metadata %union.tree_node* %call272, metadata !3586, metadata !DIExpression()), !dbg !3721
  tail call fastcc void @gimple_assign_set_rhs1(%union.gimple_statement_d* %call, %union.tree_node* %call272) #8, !dbg !3733
  tail call fastcc void @tidy_after_forward_propagate_addr(%union.gimple_statement_d* %call) #8, !dbg !3734
  br label %cleanup, !dbg !3735

if.end273:                                        ; preds = %if.then252
  br label %while.cond277, !dbg !3736

while.cond277:                                    ; preds = %while.body280, %if.end273
  %def_rhs.pn = phi %union.tree_node* [ %def_rhs, %if.end273 ], [ %def_rhs_base.0, %while.body280 ]
  %def_rhs_base.0.in = getelementptr inbounds %union.tree_node, %union.tree_node* %def_rhs.pn, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3721
  %def_rhs_base.0 = load %union.tree_node*, %union.tree_node** %def_rhs_base.0.in, align 8, !dbg !3721
  call void @llvm.dbg.value(metadata %union.tree_node* %def_rhs_base.0, metadata !3583, metadata !DIExpression()), !dbg !3721
  %call278 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %def_rhs_base.0) #8, !dbg !3737
  %tobool279 = icmp eq i8 %call278, 0, !dbg !3736
  br i1 %tobool279, label %while.end284, label %while.body280, !dbg !3736

while.body280:                                    ; preds = %while.cond277
  br label %while.cond277, !dbg !3736, !llvm.loop !3738

while.end284:                                     ; preds = %while.cond277
  %def_rhs_base.0.lcssa = phi %union.tree_node* [ %def_rhs_base.0, %while.cond277 ], !dbg !3721
  %47 = getelementptr inbounds %union.tree_node, %union.tree_node* %def_rhs_base.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3740
  %bf.load286 = load i64, i64* %47, align 8, !dbg !3740
  %bf.cast28820 = and i64 %bf.load286, 65535, !dbg !3740
  %cmp289 = icmp eq i64 %bf.cast28820, 47, !dbg !3740
  br i1 %cmp289, label %cleanup, label %lor.lhs.false291, !dbg !3740

lor.lhs.false291:                                 ; preds = %while.end284
  %cmp296 = icmp eq i64 %bf.cast28820, 48, !dbg !3740
  br i1 %cmp296, label %cleanup, label %lor.lhs.false298, !dbg !3740

lor.lhs.false298:                                 ; preds = %lor.lhs.false291
  %cmp303 = icmp eq i64 %bf.cast28820, 49, !dbg !3740
  br i1 %cmp303, label %cleanup, label %if.then305, !dbg !3742

if.then305:                                       ; preds = %lor.lhs.false298
  store %union.tree_node* %call259, %union.tree_node** %rhsp.0.lcssa, align 8, !dbg !3743
  %call306 = tail call zeroext i8 @fold_stmt_inplace(%union.gimple_statement_d* %call) #6, !dbg !3745
  tail call fastcc void @tidy_after_forward_propagate_addr(%union.gimple_statement_d* %call) #8, !dbg !3746
  br label %cleanup, !dbg !3747

cleanup:                                          ; preds = %if.then266, %while.end284, %lor.lhs.false291, %lor.lhs.false298, %if.then305, %if.end271
  %cleanup.dest.slot.0 = phi i1 [ false, %if.end271 ], [ false, %if.then305 ], [ false, %if.then266 ], [ true, %lor.lhs.false298 ], [ true, %lor.lhs.false291 ], [ true, %while.end284 ]
  %retval.0 = phi i8 [ %res.1, %if.end271 ], [ %res.1, %if.then305 ], [ 0, %if.then266 ], [ undef, %lor.lhs.false298 ], [ undef, %lor.lhs.false291 ], [ undef, %while.end284 ]
  br i1 %cleanup.dest.slot.0, label %if.end309, label %cleanup422

if.end309:                                        ; preds = %land.lhs.true230, %land.lhs.true218, %land.lhs.true210, %land.lhs.true200, %land.lhs.true191, %land.lhs.true186, %cleanup, %land.lhs.true244, %land.lhs.true180, %if.end173
  %retval.1 = phi i8 [ undef, %land.lhs.true210 ], [ undef, %land.lhs.true218 ], [ undef, %land.lhs.true244 ], [ undef, %land.lhs.true230 ], [ undef, %land.lhs.true200 ], [ undef, %land.lhs.true191 ], [ undef, %land.lhs.true186 ], [ undef, %land.lhs.true180 ], [ undef, %if.end173 ], [ %retval.0, %cleanup ]
  %call310 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call) #8, !dbg !3748
  %cmp311 = icmp eq i32 %call310, 66, !dbg !3750
  br i1 %cmp311, label %lor.lhs.false313, label %cleanup422, !dbg !3751

lor.lhs.false313:                                 ; preds = %if.end309
  %call314 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call) #8, !dbg !3752
  %cmp315 = icmp eq %union.tree_node* %call314, %name, !dbg !3753
  br i1 %cmp315, label %if.end318, label %cleanup422, !dbg !3754

if.end318:                                        ; preds = %lor.lhs.false313
  %operands320 = getelementptr inbounds %union.tree_node, %union.tree_node* %def_rhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3755
  %48 = load %union.tree_node*, %union.tree_node** %operands320, align 8, !dbg !3755
  call void @llvm.dbg.value(metadata %union.tree_node* %48, metadata !3577, metadata !DIExpression()), !dbg !3593
  %49 = getelementptr inbounds %union.tree_node, %union.tree_node* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3756
  %bf.load323 = load i64, i64* %49, align 8, !dbg !3756
  %bf.cast32511 = and i64 %bf.load323, 65535, !dbg !3758
  %cmp326 = icmp eq i64 %bf.cast32511, 45, !dbg !3758
  br i1 %cmp326, label %lor.lhs.false328, label %cleanup422, !dbg !3759

lor.lhs.false328:                                 ; preds = %if.end318
  %operands330 = getelementptr inbounds %union.tree_node, %union.tree_node* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3760
  %50 = bitcast %union.tree_node** %operands330 to %struct.tree_common**, !dbg !3760
  %51 = load %struct.tree_common*, %struct.tree_common** %50, align 8, !dbg !3760
  %type333 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %51, i64 0, i32 2, !dbg !3760
  %52 = bitcast %union.tree_node** %type333 to i64**, !dbg !3760
  %53 = load i64*, i64** %52, align 8, !dbg !3760
  %bf.load335 = load i64, i64* %53, align 8, !dbg !3760
  %bf.cast33712 = and i64 %bf.load335, 65535, !dbg !3761
  %cmp338 = icmp eq i64 %bf.cast33712, 15, !dbg !3761
  br i1 %cmp338, label %lor.lhs.false340, label %cleanup422, !dbg !3762

lor.lhs.false340:                                 ; preds = %lor.lhs.false328
  %arrayidx343 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands330, i64 1, !dbg !3763
  %54 = bitcast %union.tree_node** %arrayidx343 to i64**, !dbg !3763
  %55 = load i64*, i64** %54, align 8, !dbg !3763
  %bf.load345 = load i64, i64* %55, align 8, !dbg !3763
  %bf.cast34713 = and i64 %bf.load345, 65535, !dbg !3764
  %cmp348 = icmp eq i64 %bf.cast34713, 23, !dbg !3764
  br i1 %cmp348, label %if.end351, label %cleanup422, !dbg !3765

if.end351:                                        ; preds = %lor.lhs.false340
  %call352 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %call) #8, !dbg !3766
  call void @llvm.dbg.value(metadata %union.tree_node* %call352, metadata !3576, metadata !DIExpression()), !dbg !3593
  %56 = getelementptr inbounds %union.tree_node, %union.tree_node* %call352, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3767
  %bf.load354 = load i64, i64* %56, align 8, !dbg !3767
  %bf.cast35614 = and i64 %bf.load354, 65535, !dbg !3768
  %cmp357 = icmp eq i64 %bf.cast35614, 23, !dbg !3768
  br i1 %cmp357, label %if.then359, label %if.end390, !dbg !3769

if.then359:                                       ; preds = %if.end351
  %call361 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %call) #8, !dbg !3770
  %type363 = getelementptr inbounds %union.tree_node, %union.tree_node* %def_rhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3771
  %57 = load %union.tree_node*, %union.tree_node** %type363, align 8, !dbg !3771
  %call364 = tail call %union.tree_node* @maybe_fold_stmt_addition(i32 %call361, %union.tree_node* %57, %union.tree_node* %def_rhs, %union.tree_node* %call352) #6, !dbg !3772
  call void @llvm.dbg.value(metadata %union.tree_node* %call364, metadata !3587, metadata !DIExpression()), !dbg !3773
  %tobool365 = icmp eq %union.tree_node* %call364, null, !dbg !3774
  br i1 %tobool365, label %cleanup387, label %if.then366, !dbg !3775

if.then366:                                       ; preds = %if.then359
  %call368 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call) #8, !dbg !3776
  %type370 = getelementptr inbounds %union.tree_node, %union.tree_node* %call368, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3776
  %58 = load %union.tree_node*, %union.tree_node** %type370, align 8, !dbg !3776
  call void @llvm.dbg.value(metadata %union.tree_node* %58, metadata !3590, metadata !DIExpression()), !dbg !3777
  %call371 = tail call %union.tree_node* @unshare_expr(%union.tree_node* nonnull %call364) #6, !dbg !3778
  call void @llvm.dbg.value(metadata %union.tree_node* %call371, metadata !3587, metadata !DIExpression()), !dbg !3773
  %type373 = getelementptr inbounds %union.tree_node, %union.tree_node* %call371, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3779
  %59 = load %union.tree_node*, %union.tree_node** %type373, align 8, !dbg !3779
  %call374 = tail call zeroext i8 @useless_type_conversion_p(%union.tree_node* %58, %union.tree_node* %59) #6, !dbg !3781
  %tobool375 = icmp eq i8 %call374, 0, !dbg !3781
  br i1 %tobool375, label %if.then376, label %if.end383, !dbg !3782

if.then376:                                       ; preds = %if.then366
  %call377 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call371) #6, !dbg !3783
  %tobool378 = icmp eq i8 %call377, 0, !dbg !3783
  br i1 %tobool378, label %if.then379, label %if.end381, !dbg !3786

if.then379:                                       ; preds = %if.then376
  %call380 = tail call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %use_stmt_gsi, %union.tree_node* %call371, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !3787
  call void @llvm.dbg.value(metadata %union.tree_node* %call380, metadata !3587, metadata !DIExpression()), !dbg !3773
  br label %if.end381, !dbg !3788

if.end381:                                        ; preds = %if.then376, %if.then379
  %new_rhs360.0 = phi %union.tree_node* [ %call371, %if.then376 ], [ %call380, %if.then379 ], !dbg !3777
  call void @llvm.dbg.value(metadata %union.tree_node* %new_rhs360.0, metadata !3587, metadata !DIExpression()), !dbg !3773
  %call382 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %58, %union.tree_node* %new_rhs360.0) #6, !dbg !3789
  call void @llvm.dbg.value(metadata %union.tree_node* %call382, metadata !3587, metadata !DIExpression()), !dbg !3773
  br label %if.end383, !dbg !3790

if.end383:                                        ; preds = %if.then366, %if.end381
  %new_rhs360.1 = phi %union.tree_node* [ %call371, %if.then366 ], [ %call382, %if.end381 ], !dbg !3777
  call void @llvm.dbg.value(metadata %union.tree_node* %new_rhs360.1, metadata !3587, metadata !DIExpression()), !dbg !3773
  tail call void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator* %use_stmt_gsi, %union.tree_node* %new_rhs360.1) #6, !dbg !3791
  %call384 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %use_stmt_gsi) #8, !dbg !3792
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call384, metadata !3580, metadata !DIExpression()), !dbg !3593
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %call384) #8, !dbg !3793
  tail call fastcc void @tidy_after_forward_propagate_addr(%union.gimple_statement_d* %call384) #8, !dbg !3794
  br label %cleanup387

cleanup387:                                       ; preds = %if.then359, %if.end383
  %cleanup.dest.slot.1 = phi i1 [ false, %if.end383 ], [ true, %if.then359 ]
  %retval.2 = phi i8 [ 1, %if.end383 ], [ %retval.1, %if.then359 ]
  br i1 %cleanup.dest.slot.1, label %cleanup387.if.end390_crit_edge, label %cleanup422

cleanup387.if.end390_crit_edge:                   ; preds = %cleanup387
  %bf.load392.pre = load i64, i64* %56, align 8, !dbg !3795
  br label %if.end390

if.end390:                                        ; preds = %cleanup387.if.end390_crit_edge, %if.end351
  %bf.load392 = phi i64 [ %bf.load392.pre, %cleanup387.if.end390_crit_edge ], [ %bf.load354, %if.end351 ], !dbg !3795
  %bf.cast39415 = and i64 %bf.load392, 65535, !dbg !3797
  %cmp395 = icmp eq i64 %bf.cast39415, 141, !dbg !3797
  br i1 %cmp395, label %land.lhs.true397, label %cleanup422, !dbg !3798

land.lhs.true397:                                 ; preds = %if.end390
  %60 = load %union.tree_node*, %union.tree_node** %arrayidx343, align 8, !dbg !3799
  %call401 = tail call i32 @integer_zerop(%union.tree_node* %60) #6, !dbg !3800
  %tobool402 = icmp eq i32 %call401, 0, !dbg !3800
  br i1 %tobool402, label %cleanup422, label %land.lhs.true403, !dbg !3801

land.lhs.true403:                                 ; preds = %land.lhs.true397
  %type405 = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3802
  %61 = load %union.tree_node*, %union.tree_node** %type405, align 8, !dbg !3802
  %type407 = getelementptr inbounds %union.tree_node, %union.tree_node* %def_rhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3803
  %62 = load %union.tree_node*, %union.tree_node** %type407, align 8, !dbg !3803
  %call408 = tail call zeroext i8 @useless_type_conversion_p(%union.tree_node* %61, %union.tree_node* %62) #6, !dbg !3804
  %tobool410 = icmp eq i8 %call408, 0, !dbg !3804
  br i1 %tobool410, label %cleanup422, label %land.lhs.true411, !dbg !3805

land.lhs.true411:                                 ; preds = %land.lhs.true403
  %type413 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa32, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3806
  %63 = load %union.tree_node*, %union.tree_node** %type413, align 8, !dbg !3806
  %64 = load %union.tree_node*, %union.tree_node** %type407, align 8, !dbg !3807
  %call416 = tail call zeroext i8 @useless_type_conversion_p(%union.tree_node* %63, %union.tree_node* %64) #6, !dbg !3808
  %tobool418 = icmp eq i8 %call416, 0, !dbg !3808
  br i1 %tobool418, label %cleanup422, label %if.then419, !dbg !3809

if.then419:                                       ; preds = %land.lhs.true411
  %call420 = tail call fastcc zeroext i8 @forward_propagate_addr_into_variable_array_index(%union.tree_node* %call352, %union.tree_node* %def_rhs, %struct.gimple_stmt_iterator* %use_stmt_gsi) #8, !dbg !3810
  br label %cleanup422, !dbg !3811

cleanup422:                                       ; preds = %if.then123, %land.lhs.true411, %land.lhs.true403, %land.lhs.true397, %lor.lhs.false340, %lor.lhs.false328, %if.end318, %lor.lhs.false313, %if.end309, %if.end390, %if.then85, %if.else, %cleanup, %cleanup387, %if.then419, %if.then167, %if.then76
  %retval.3 = phi i8 [ %call77, %if.then76 ], [ %res.1, %if.then167 ], [ %retval.2, %cleanup387 ], [ %call420, %if.then419 ], [ %retval.0, %cleanup ], [ 1, %if.else ], [ 1, %if.then85 ], [ 1, %if.then123 ], [ 0, %lor.lhs.false313 ], [ 0, %if.end309 ], [ 0, %lor.lhs.false340 ], [ 0, %lor.lhs.false328 ], [ 0, %if.end318 ], [ 0, %land.lhs.true411 ], [ 0, %land.lhs.true403 ], [ 0, %land.lhs.true397 ], [ 0, %if.end390 ], !dbg !3593
  ret i8 %retval.3, !dbg !3812
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @has_zero_uses(%union.tree_node* %var) unnamed_addr #0 !dbg !3813 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3815, metadata !DIExpression()), !dbg !3817
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3818
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !3818
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !3816, metadata !DIExpression()), !dbg !3817
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !3819
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !3819
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !3819
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !3821
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3822

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !3823
  %tobool = icmp eq i32 %3, 0, !dbg !3823
  br i1 %tobool, label %cleanup, label %if.end2, !dbg !3825

if.end2:                                          ; preds = %if.end
  %call = tail call zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d* nonnull %0) #6, !dbg !3826
  br label %cleanup, !dbg !3827

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i8 [ %call, %if.end2 ], [ 1, %entry ], [ 0, %if.end ], !dbg !3817
  ret i8 %retval.0, !dbg !3828
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3829 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3833, metadata !DIExpression()), !dbg !3834
  %next = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !3835
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3835
  %1 = load i64, i64* %0, align 8, !dbg !3835
  %2 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3836
  store i64 %1, i64* %2, align 8, !dbg !3836
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #8, !dbg !3837
  %tobool = icmp eq i8 %call, 0, !dbg !3837
  br i1 %tobool, label %if.end4, label %if.then, !dbg !3839

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !3840
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3840
  %cmp = icmp eq %struct.ssa_use_operand_d* %3, null, !dbg !3843
  br i1 %cmp, label %return, label %if.then2, !dbg !3844

if.then2:                                         ; preds = %if.then
  %iter_node3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !3845
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node3) #8, !dbg !3846
  br label %return, !dbg !3846

if.end4:                                          ; preds = %entry
  %imm_use5 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3847
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !3847
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #8, !dbg !3848
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !3849
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !3849
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3849
  br label %return, !dbg !3850

return:                                           ; preds = %if.then, %if.then2, %if.end4
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end4 ], [ null, %if.then2 ], [ null, %if.then ], !dbg !3834
  ret %union.gimple_statement_d* %retval.0, !dbg !3851
}

declare dso_local zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d*, %struct.ssa_use_operand_d**, %union.gimple_statement_d**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %head, %struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3852 {
entry:
  %op_iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !3856, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3857, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !3859, metadata !DIExpression()), !dbg !3876
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %head, i64 0, i32 2, i32 0, !dbg !3877
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3877
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !3860, metadata !DIExpression()), !dbg !3876
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %head) #8, !dbg !3878
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3861, metadata !DIExpression()), !dbg !3876
  %1 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %op_iter, i64 0, i32 0, !dbg !3879
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #7, !dbg !3879
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !3880
  %tobool = icmp eq i8 %call1, 0, !dbg !3880
  %cond = select i1 %tobool, i32 4, i32 1, !dbg !3880
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3875, metadata !DIExpression()), !dbg !3876
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %0) #8, !dbg !3881
  %cmp = icmp eq i32 %call2, 16, !dbg !3883
  br i1 %cmp, label %if.then, label %if.else, !dbg !3884

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3862, metadata !DIExpression(DW_OP_deref)), !dbg !3876
  %call4 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #8, !dbg !3885
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call4, metadata !3858, metadata !DIExpression()), !dbg !3876
  br label %for.cond, !dbg !3885

for.cond:                                         ; preds = %for.inc, %if.then
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call4, %if.then ], [ %call12, %for.inc ], !dbg !3888
  %last_p.0 = phi %struct.ssa_use_operand_d* [ %head, %if.then ], [ %last_p.1, %for.inc ], !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0, metadata !3859, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !3858, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3862, metadata !DIExpression(DW_OP_deref)), !dbg !3876
  %call5 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !3889
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3889
  br i1 %tobool6, label %for.body, label %if.end44.loopexit, !dbg !3885

for.body:                                         ; preds = %for.cond
  %call7 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #8, !dbg !3891
  %cmp8 = icmp eq %union.tree_node* %call7, %call, !dbg !3893
  br i1 %cmp8, label %if.then10, label %for.inc, !dbg !3894

if.then10:                                        ; preds = %for.body
  %call11 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.0, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.0) #8, !dbg !3895
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call11, metadata !3859, metadata !DIExpression()), !dbg !3876
  br label %for.inc, !dbg !3896

for.inc:                                          ; preds = %for.body, %if.then10
  %last_p.1 = phi %struct.ssa_use_operand_d* [ %call11, %if.then10 ], [ %last_p.0, %for.body ], !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.1, metadata !3859, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3862, metadata !DIExpression(DW_OP_deref)), !dbg !3876
  %call12 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !3889
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call12, metadata !3858, metadata !DIExpression()), !dbg !3876
  br label %for.cond, !dbg !3889, !llvm.loop !3897

if.else:                                          ; preds = %entry
  br i1 %tobool, label %if.else31, label %if.then15, !dbg !3899

if.then15:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3862, metadata !DIExpression(DW_OP_deref)), !dbg !3876
  %call16 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #8, !dbg !3901
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call16, metadata !3858, metadata !DIExpression()), !dbg !3876
  br label %for.cond17, !dbg !3901

for.cond17:                                       ; preds = %for.inc28, %if.then15
  %use_p.1 = phi %struct.ssa_use_operand_d* [ %call16, %if.then15 ], [ %call29, %for.inc28 ], !dbg !3905
  %last_p.2 = phi %struct.ssa_use_operand_d* [ %head, %if.then15 ], [ %last_p.3, %for.inc28 ], !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2, metadata !3859, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.1, metadata !3858, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3862, metadata !DIExpression(DW_OP_deref)), !dbg !3876
  %call18 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !3906
  %tobool19 = icmp eq i8 %call18, 0, !dbg !3906
  br i1 %tobool19, label %for.body21, label %if.end44.loopexit1, !dbg !3901

for.body21:                                       ; preds = %for.cond17
  %call22 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.1) #8, !dbg !3908
  %cmp23 = icmp eq %union.tree_node* %call22, %call, !dbg !3910
  br i1 %cmp23, label %if.then25, label %for.inc28, !dbg !3911

if.then25:                                        ; preds = %for.body21
  %call26 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.1, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.2) #8, !dbg !3912
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call26, metadata !3859, metadata !DIExpression()), !dbg !3876
  br label %for.inc28, !dbg !3913

for.inc28:                                        ; preds = %for.body21, %if.then25
  %last_p.3 = phi %struct.ssa_use_operand_d* [ %call26, %if.then25 ], [ %last_p.2, %for.body21 ], !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.3, metadata !3859, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !3862, metadata !DIExpression(DW_OP_deref)), !dbg !3876
  %call29 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !3906
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call29, metadata !3858, metadata !DIExpression()), !dbg !3876
  br label %for.cond17, !dbg !3906, !llvm.loop !3914

if.else31:                                        ; preds = %if.else
  %call32 = tail call fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %0) #8, !dbg !3916
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call32, metadata !3858, metadata !DIExpression()), !dbg !3876
  %cmp33 = icmp eq %struct.ssa_use_operand_d* %call32, null, !dbg !3918
  br i1 %cmp33, label %if.end44, label %if.then35, !dbg !3919

if.then35:                                        ; preds = %if.else31
  %call36 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %call32) #8, !dbg !3920
  %cmp37 = icmp eq %union.tree_node* %call36, %call, !dbg !3923
  br i1 %cmp37, label %if.then39, label %if.end44, !dbg !3924

if.then39:                                        ; preds = %if.then35
  %call40 = tail call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* nonnull %call32, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %head) #8, !dbg !3925
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call40, metadata !3859, metadata !DIExpression()), !dbg !3876
  br label %if.end44, !dbg !3926

if.end44.loopexit:                                ; preds = %for.cond
  %last_p.0.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.0, %for.cond ], !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !3859, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !3859, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !3859, metadata !DIExpression()), !dbg !3876
  br label %if.end44, !dbg !3927

if.end44.loopexit1:                               ; preds = %for.cond17
  %last_p.2.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.2, %for.cond17 ], !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !3859, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !3859, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !3859, metadata !DIExpression()), !dbg !3876
  br label %if.end44, !dbg !3927

if.end44:                                         ; preds = %if.end44.loopexit1, %if.end44.loopexit, %if.else31, %if.then35, %if.then39
  %last_p.7 = phi %struct.ssa_use_operand_d* [ %head, %if.else31 ], [ %call40, %if.then39 ], [ %head, %if.then35 ], [ %last_p.0.lcssa, %if.end44.loopexit ], [ %last_p.2.lcssa, %if.end44.loopexit1 ], !dbg !3929
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.7, metadata !3859, metadata !DIExpression()), !dbg !3876
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !3927
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3927
  %cmp45 = icmp eq %struct.ssa_use_operand_d* %2, null, !dbg !3930
  br i1 %cmp45, label %if.end49, label %if.then47, !dbg !3931

if.then47:                                        ; preds = %if.end44
  %iter_node48 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !3932
  call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node48) #8, !dbg !3933
  br label %if.end49, !dbg !3933

if.end49:                                         ; preds = %if.end44, %if.then47
  %iter_node50 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !3934
  call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* nonnull %iter_node50, %struct.ssa_use_operand_d* %last_p.7) #8, !dbg !3935
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #7, !dbg !3936
  ret void, !dbg !3936
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3937 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3941, metadata !DIExpression()), !dbg !3942
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3943
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3943
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3944
  ret %union.tree_node* %1, !dbg !3945
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %phi, i32 %flags) unnamed_addr #0 !dbg !3946 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3951, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3952, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3953, metadata !DIExpression()), !dbg !3956
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #8, !dbg !3957
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3954, metadata !DIExpression()), !dbg !3956
  tail call fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !3958
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3959
  store i8 0, i8* %done, align 8, !dbg !3960
  %and = and i32 %flags, 5, !dbg !3961
  %cmp = icmp eq i32 %and, 0, !dbg !3961
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3961

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 918, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3961
  br label %cond.end, !dbg !3961

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !3962
  %tobool = icmp eq i8 %call1, 0, !dbg !3962
  %cond2 = select i1 %tobool, i32 4, i32 1, !dbg !3962
  call void @llvm.dbg.value(metadata i32 %cond2, metadata !3955, metadata !DIExpression()), !dbg !3956
  %and3 = and i32 %cond2, %flags, !dbg !3963
  %cmp4 = icmp eq i32 %and3, 0, !dbg !3965
  br i1 %cmp4, label %if.then, label %if.end, !dbg !3966

if.then:                                          ; preds = %cond.end
  store i8 1, i8* %done, align 8, !dbg !3967
  br label %cleanup, !dbg !3969

if.end:                                           ; preds = %cond.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3970
  store %union.gimple_statement_d* %phi, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3971
  %call7 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #8, !dbg !3972
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3973
  store i32 %call7, i32* %num_phi, align 4, !dbg !3974
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3975
  store i32 2, i32* %iter_type, align 4, !dbg !3976
  %call8 = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !3977
  br label %cleanup, !dbg !3978

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ null, %if.then ], [ %call8, %if.end ], !dbg !3956
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3979
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3980 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3986, metadata !DIExpression()), !dbg !3987
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3988
  %0 = load i8, i8* %done, align 8, !dbg !3988
  ret i8 %0, !dbg !3989
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p) unnamed_addr #0 !dbg !3990 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !3994, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !3995, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p, metadata !3996, metadata !DIExpression()), !dbg !3997
  %cmp = icmp eq %struct.ssa_use_operand_d* %use_p, %head, !dbg !3998
  br i1 %cmp, label %if.end3, label %if.then, !dbg !4000

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %last_p, i64 0, i32 1, !dbg !4001
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !4001
  %cmp1 = icmp eq %struct.ssa_use_operand_d* %0, %use_p, !dbg !4004
  br i1 %cmp1, label %if.end3, label %if.else, !dbg !4005

if.else:                                          ; preds = %if.then
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use_p) #8, !dbg !4006
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %last_p) #8, !dbg !4008
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !3996, metadata !DIExpression()), !dbg !3997
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.else, %if.then
  %last_p.addr.1 = phi %struct.ssa_use_operand_d* [ %last_p, %entry ], [ %use_p, %if.then ], [ %use_p, %if.else ]
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.addr.1, metadata !3996, metadata !DIExpression()), !dbg !3997
  ret %struct.ssa_use_operand_d* %last_p.addr.1, !dbg !4009
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4010 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4014, metadata !DIExpression()), !dbg !4016
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4017
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !4017
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !4019
  br i1 %tobool, label %if.end, label %if.then, !dbg !4020

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !4021
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !4015, metadata !DIExpression()), !dbg !4016
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !4023
  %2 = load i64, i64* %1, align 8, !dbg !4023
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4024
  store i64 %2, i64* %3, align 8, !dbg !4024
  br label %cleanup, !dbg !4025

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4026
  %4 = load i32, i32* %phi_i, align 8, !dbg !4026
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4028
  %5 = load i32, i32* %num_phi, align 4, !dbg !4028
  %cmp = icmp slt i32 %4, %5, !dbg !4029
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !4030

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4031
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4031
  %inc = add nsw i32 %4, 1, !dbg !4031
  store i32 %inc, i32* %phi_i, align 8, !dbg !4031
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #8, !dbg !4031
  br label %cleanup, !dbg !4033

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4034
  store i8 1, i8* %done, align 8, !dbg !4035
  br label %cleanup, !dbg !4036

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !4016
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4037
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4038 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4040, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4041, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4042, metadata !DIExpression()), !dbg !4043
  %0 = and i32 %flags, 11, !dbg !4044
  %1 = icmp eq i32 %0, 1, !dbg !4044
  br i1 %1, label %cond.end, label %cond.true, !dbg !4044

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 771, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4044
  br label %cond.end, !dbg !4044

cond.end:                                         ; preds = %entry, %cond.true
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) #8, !dbg !4045
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4046
  store i32 2, i32* %iter_type, align 4, !dbg !4047
  %call = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !4048
  ret %struct.ssa_use_operand_d* %call, !dbg !4049
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4050 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4054, metadata !DIExpression()), !dbg !4056
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !4057
  %tobool = icmp eq i8 %call, 0, !dbg !4057
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4059

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !4060
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !4060
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !4060
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %1, metadata !4055, metadata !DIExpression()), !dbg !4056
  %tobool1 = icmp eq %struct.use_optype_d* %1, null, !dbg !4061
  br i1 %tobool1, label %cleanup, label %land.lhs.true, !dbg !4063

land.lhs.true:                                    ; preds = %if.end
  %use = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, i32 3, !dbg !4064
  %2 = load %union.tree_node**, %union.tree_node*** %use, align 8, !dbg !4064
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !4065
  %3 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !4065
  %cmp = icmp eq %union.tree_node** %2, %3, !dbg !4066
  %use_ptr3 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, !dbg !4067
  %spec.select = select i1 %cmp, %struct.ssa_use_operand_d* %use_ptr3, %struct.ssa_use_operand_d* null, !dbg !4068
  ret %struct.ssa_use_operand_d* %spec.select, !dbg !4068

cleanup:                                          ; preds = %if.end, %entry
  ret %struct.ssa_use_operand_d* null, !dbg !4069
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !4070 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4074, metadata !DIExpression()), !dbg !4075
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4076
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4076
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !4078
  br i1 %cmp, label %return, label %if.end, !dbg !4079

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !4080
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4080
  %2 = load i64, i64* %1, align 8, !dbg !4080
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !4081
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !4082
  store i64 %2, i64* %3, align 8, !dbg !4082
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !4083
  %5 = load i64, i64* %4, align 8, !dbg !4083
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !4084
  %7 = load i64*, i64** %6, align 8, !dbg !4084
  store i64 %5, i64* %7, align 8, !dbg !4085
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4086
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !4087
  br label %return, !dbg !4088

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !4088
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !4089 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4093, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !4094, metadata !DIExpression()), !dbg !4095
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4096
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4097
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !4098
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4098
  %1 = load i64, i64* %0, align 8, !dbg !4098
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !4099
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !4100
  store i64 %1, i64* %2, align 8, !dbg !4100
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !4101
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !4102
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !4103
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !4104
  ret void, !dbg !4105
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4106 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4108, metadata !DIExpression()), !dbg !4109
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !4110
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !4110
  ret %union.tree_node* %0, !dbg !4111
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4112 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4116, metadata !DIExpression()), !dbg !4117
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4118
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !4119
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4120
  store %struct.use_optype_d* null, %struct.use_optype_d** %uses, align 8, !dbg !4121
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4122
  store i32 0, i32* %iter_type, align 4, !dbg !4123
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4124
  store i32 0, i32* %phi_i, align 8, !dbg !4125
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4126
  store i32 0, i32* %num_phi, align 4, !dbg !4127
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4128
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4129
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4130
  store i8 1, i8* %done, align 8, !dbg !4131
  ret void, !dbg !4132
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4133 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4137, metadata !DIExpression()), !dbg !4138
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !4139
  %0 = load i32, i32* %nargs, align 4, !dbg !4139
  ret i32 %0, !dbg !4140
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4141 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4145, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i32 %i, metadata !4146, metadata !DIExpression()), !dbg !4147
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #8, !dbg !4148
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4149
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !4150
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4151 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4156, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i32 %index, metadata !4157, metadata !DIExpression()), !dbg !4158
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !4159
  %0 = load i32, i32* %capacity, align 8, !dbg !4159
  %cmp = icmp ult i32 %0, %index, !dbg !4159
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4159

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4159
  br label %cond.end, !dbg !4159

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !4160
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !4160
  ret %struct.phi_arg_d* %arrayidx, !dbg !4161
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4162 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4166, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4167, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4168, metadata !DIExpression()), !dbg !4169
  %0 = and i32 %flags, 10, !dbg !4170
  %1 = icmp eq i32 %0, 8, !dbg !4170
  br i1 %1, label %cond.true, label %land.lhs.true, !dbg !4170

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %flags, 5, !dbg !4170
  %3 = icmp eq i32 %2, 4, !dbg !4170
  br i1 %3, label %cond.true, label %cond.end, !dbg !4170

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4170
  br label %cond.end, !dbg !4170

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %tobool9 = icmp eq i32 %0, 0, !dbg !4171
  br i1 %tobool9, label %cond.end12, label %cond.true10, !dbg !4172

cond.true10:                                      ; preds = %cond.end
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #8, !dbg !4173
  br label %cond.end12, !dbg !4172

cond.end12:                                       ; preds = %cond.end, %cond.true10
  %4 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ null, %cond.end ], !dbg !4172
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4174
  store %struct.def_optype_d* %4, %struct.def_optype_d** %defs, align 8, !dbg !4175
  %and14 = and i32 %flags, 8, !dbg !4176
  %tobool15 = icmp eq i32 %and14, 0, !dbg !4176
  br i1 %tobool15, label %land.lhs.true16, label %if.end, !dbg !4178

land.lhs.true16:                                  ; preds = %cond.end12
  %tobool18 = icmp eq %struct.def_optype_d* %4, null, !dbg !4179
  br i1 %tobool18, label %if.end, label %land.lhs.true19, !dbg !4180

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #8, !dbg !4181
  %cmp = icmp eq %union.tree_node* %call20, null, !dbg !4182
  br i1 %cmp, label %if.end, label %if.then, !dbg !4183

if.then:                                          ; preds = %land.lhs.true19
  %5 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !4184
  %6 = load i64*, i64** %5, align 8, !dbg !4184
  %7 = load i64, i64* %6, align 8, !dbg !4185
  %8 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !4186
  store i64 %7, i64* %8, align 8, !dbg !4186
  br label %if.end, !dbg !4187

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true16, %cond.end12, %if.then
  %and23 = and i32 %flags, 5, !dbg !4188
  %tobool24 = icmp eq i32 %and23, 0, !dbg !4188
  br i1 %tobool24, label %cond.end28, label %cond.true25, !dbg !4189

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #8, !dbg !4190
  br label %cond.end28, !dbg !4189

cond.end28:                                       ; preds = %if.end, %cond.true25
  %9 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ null, %if.end ], !dbg !4189
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4191
  store %struct.use_optype_d* %9, %struct.use_optype_d** %uses, align 8, !dbg !4192
  %and30 = and i32 %flags, 4, !dbg !4193
  %tobool31 = icmp eq i32 %and30, 0, !dbg !4193
  br i1 %tobool31, label %land.lhs.true32, label %if.end42, !dbg !4195

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %9, null, !dbg !4196
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !4197

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #8, !dbg !4198
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !4199
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !4200

if.then38:                                        ; preds = %land.lhs.true35
  %10 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !4201
  %11 = load i64*, i64** %10, align 8, !dbg !4201
  %12 = load i64, i64* %11, align 8, !dbg !4202
  %13 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4203
  store i64 %12, i64* %13, align 8, !dbg !4203
  br label %if.end42, !dbg !4204

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32, %cond.end28, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4205
  store i8 0, i8* %done, align 8, !dbg !4206
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4207
  store i32 0, i32* %phi_i, align 8, !dbg !4208
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4209
  store i32 0, i32* %num_phi, align 4, !dbg !4210
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4211
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4212
  ret void, !dbg !4213
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4214 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4218, metadata !DIExpression()), !dbg !4219
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #8, !dbg !4220
  %tobool = icmp eq i8 %call, 0, !dbg !4220
  br i1 %tobool, label %return, label %if.end, !dbg !4222

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !4223
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !4223
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !4223
  br label %return, !dbg !4224

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !4219
  ret %struct.def_optype_d* %retval.0, !dbg !4225
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4226 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4228, metadata !DIExpression()), !dbg !4229
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !4230
  %tobool = icmp eq i8 %call, 0, !dbg !4230
  br i1 %tobool, label %return, label %if.end, !dbg !4232

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !4233
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !4233
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4233
  br label %return, !dbg !4234

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !4229
  ret %union.tree_node* %retval.0, !dbg !4235
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4236 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4240, metadata !DIExpression()), !dbg !4241
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #8, !dbg !4242
  %tobool = icmp eq i8 %call, 0, !dbg !4242
  br i1 %tobool, label %return, label %if.end, !dbg !4244

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !4245
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !4245
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !4245
  br label %return, !dbg !4246

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !4241
  ret %struct.use_optype_d* %retval.0, !dbg !4247
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4248 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4250, metadata !DIExpression()), !dbg !4251
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !4252
  %tobool = icmp eq i8 %call, 0, !dbg !4252
  br i1 %tobool, label %return, label %if.end, !dbg !4254

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !4255
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !4255
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4255
  br label %return, !dbg !4256

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !4251
  ret %union.tree_node* %retval.0, !dbg !4257
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4258 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4260, metadata !DIExpression()), !dbg !4261
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4262
  %cmp = icmp ugt i32 %call, 5, !dbg !4263
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4264

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4265
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4266
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4267
}

declare dso_local zeroext i8 @useless_type_conversion_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_assign_set_rhs1(%union.gimple_statement_d* %gs, %union.tree_node* %rhs) unnamed_addr #0 !dbg !4268 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4272, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !4273, metadata !DIExpression()), !dbg !4274
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 1, %union.tree_node* %rhs) #8, !dbg !4275
  ret void, !dbg !4276
}

declare dso_local %union.tree_node* @unshare_expr(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_assign_set_rhs_code(%union.gimple_statement_d* %s, i32 %code) unnamed_addr #0 !dbg !4277 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !4281, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i32 %code, metadata !4282, metadata !DIExpression()), !dbg !4283
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %s, i64 0, i32 0, i32 0, i32 0, !dbg !4284
  %bf.load = load i32, i32* %0, align 8, !dbg !4285
  %bf.shl = shl i32 %code, 16, !dbg !4285
  %bf.clear = and i32 %bf.load, 65535, !dbg !4285
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !4285
  store i32 %bf.set, i32* %0, align 8, !dbg !4285
  ret void, !dbg !4286
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_assign_lhs_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4287 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4291, metadata !DIExpression()), !dbg !4292
  %call = tail call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !4293
  ret %union.tree_node** %call, !dbg !4294
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @handled_component_p(%union.tree_node* %t) unnamed_addr #0 !dbg !4295 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4297, metadata !DIExpression()), !dbg !4298
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4299
  %bf.load = load i64, i64* %0, align 8, !dbg !4299
  %1 = trunc i64 %bf.load to i16, !dbg !4299
  switch i16 %1, label %sw.default [
    i16 42, label %return
    i16 41, label %return
    i16 45, label %return
    i16 46, label %return
    i16 118, label %return
    i16 43, label %return
    i16 44, label %return
  ], !dbg !4300

sw.default:                                       ; preds = %entry
  br label %return, !dbg !4301

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], !dbg !4303
  ret i8 %retval.0, !dbg !4304
}

declare dso_local zeroext i8 @may_propagate_address_into_dereference(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @tidy_after_forward_propagate_addr(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !4305 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4307, metadata !DIExpression()), !dbg !4308
  %call = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(%union.gimple_statement_d* %stmt, %union.gimple_statement_d* %stmt) #6, !dbg !4309
  %tobool = icmp eq i8 %call, 0, !dbg !4309
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4311

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #8, !dbg !4312
  %call2 = tail call zeroext i8 @gimple_purge_dead_eh_edges(%struct.basic_block_def* %call1) #6, !dbg !4313
  %tobool4 = icmp eq i8 %call2, 0, !dbg !4313
  br i1 %tobool4, label %if.end, label %if.then, !dbg !4314

if.then:                                          ; preds = %land.lhs.true
  store i1 true, i1* @cfg_changed, align 1, !dbg !4315
  br label %if.end, !dbg !4316

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %call5 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !4317
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4317
  %bf.load = load i64, i64* %0, align 8, !dbg !4317
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4319
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !4319
  br i1 %cmp, label %if.then7, label %if.end9, !dbg !4320

if.then7:                                         ; preds = %if.end
  %call8 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !4321
  tail call void @recompute_tree_invariant_for_addr_expr(%union.tree_node* %call8) #6, !dbg !4322
  br label %if.end9, !dbg !4322

if.end9:                                          ; preds = %if.then7, %if.end
  ret void, !dbg !4323
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_assign_rhs1_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4324 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4326, metadata !DIExpression()), !dbg !4327
  %call = tail call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !4328
  ret %union.tree_node** %call, !dbg !4329
}

declare dso_local i32 @operand_equal_p(%union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i32 @get_alias_set(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build1_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator*, %union.tree_node*, i8 zeroext, %union.tree_node*, i8 zeroext, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4330 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4332, metadata !DIExpression()), !dbg !4333
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !4334
  %cmp = icmp ugt i32 %call, 2, !dbg !4336
  br i1 %cmp, label %if.then, label %return, !dbg !4337

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #8, !dbg !4338
  br label %return, !dbg !4339

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %call1, %if.then ], [ null, %entry ], !dbg !4340
  ret %union.tree_node* %retval.0, !dbg !4341
}

declare dso_local %union.tree_node* @maybe_fold_stmt_addition(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4342 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4346, metadata !DIExpression()), !dbg !4347
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !4348
  %0 = load i32, i32* %location, align 8, !dbg !4348
  ret i32 %0, !dbg !4349
}

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator*, %union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @forward_propagate_addr_into_variable_array_index(%union.tree_node* %offset, %union.tree_node* %def_rhs, %struct.gimple_stmt_iterator* %use_stmt_gsi) unnamed_addr #5 !dbg !4350 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %offset, metadata !4354, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata %union.tree_node* %def_rhs, metadata !4355, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %use_stmt_gsi, metadata !4356, metadata !DIExpression()), !dbg !4368
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %use_stmt_gsi) #8, !dbg !4369
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !4360, metadata !DIExpression()), !dbg !4368
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %def_rhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4370
  %0 = bitcast %union.tree_node** %type to %struct.tree_common**, !dbg !4370
  %1 = load %struct.tree_common*, %struct.tree_common** %0, align 8, !dbg !4370
  %type2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1, i64 0, i32 2, !dbg !4370
  %2 = bitcast %union.tree_node** %type2 to %struct.tree_type**, !dbg !4370
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !4370
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 3, !dbg !4370
  %4 = load %union.tree_node*, %union.tree_node** %size_unit, align 8, !dbg !4370
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !4358, metadata !DIExpression()), !dbg !4368
  %call4 = tail call i32 @host_integerp(%union.tree_node* %4, i32 1) #6, !dbg !4371
  %tobool = icmp eq i32 %call4, 0, !dbg !4371
  br i1 %tobool, label %cleanup102, label %if.end, !dbg !4373

if.end:                                           ; preds = %entry
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %offset, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4374
  %5 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4374
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %5, align 8, !dbg !4374
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %6, metadata !4359, metadata !DIExpression()), !dbg !4368
  %call5 = tail call i32 @integer_onep(%union.tree_node* %4) #6, !dbg !4375
  %tobool6 = icmp eq i32 %call5, 0, !dbg !4375
  %call8 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %6) #8, !dbg !4376
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !4377

if.then7:                                         ; preds = %if.end
  %tobool9 = icmp eq i8 %call8, 0, !dbg !4378
  br i1 %tobool9, label %if.end93, label %land.lhs.true, !dbg !4381

land.lhs.true:                                    ; preds = %if.then7
  %call10 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %6) #8, !dbg !4382
  %cmp = icmp eq i32 %call10, 65, !dbg !4383
  br i1 %cmp, label %cleanup102, label %if.end93, !dbg !4384

if.else:                                          ; preds = %if.end
  %tobool15 = icmp eq i8 %call8, 0, !dbg !4385
  br i1 %tobool15, label %cleanup102, label %if.end17, !dbg !4387

if.end17:                                         ; preds = %if.else
  %call18 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %6) #8, !dbg !4388
  %cmp19 = icmp eq i32 %call18, 65, !dbg !4389
  br i1 %cmp19, label %land.lhs.true21, label %if.else31, !dbg !4390

land.lhs.true21:                                  ; preds = %if.end17
  %call22 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %6) #8, !dbg !4391
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4391
  %bf.load = load i64, i64* %7, align 8, !dbg !4391
  %bf.cast4 = and i64 %bf.load, 65535, !dbg !4392
  %cmp23 = icmp eq i64 %bf.cast4, 23, !dbg !4392
  br i1 %cmp23, label %land.lhs.true25, label %if.else31, !dbg !4393

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %call26 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %6) #8, !dbg !4394
  %call27 = tail call i32 @tree_int_cst_equal(%union.tree_node* %call26, %union.tree_node* %4) #6, !dbg !4395
  %tobool28 = icmp eq i32 %call27, 0, !dbg !4395
  br i1 %tobool28, label %if.else31, label %if.then29, !dbg !4396

if.then29:                                        ; preds = %land.lhs.true25
  %call30 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %6) #8, !dbg !4397
  call void @llvm.dbg.value(metadata %union.tree_node* %call30, metadata !4357, metadata !DIExpression()), !dbg !4368
  br label %if.end93, !dbg !4399

if.else31:                                        ; preds = %land.lhs.true25, %land.lhs.true21, %if.end17
  %call32 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %6) #8, !dbg !4400
  %cmp33 = icmp eq i32 %call32, 63, !dbg !4401
  br i1 %cmp33, label %land.lhs.true38, label %lor.lhs.false, !dbg !4402

lor.lhs.false:                                    ; preds = %if.else31
  %call35 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %6) #8, !dbg !4403
  %cmp36 = icmp eq i32 %call35, 64, !dbg !4404
  br i1 %cmp36, label %land.lhs.true38, label %cleanup102, !dbg !4405

land.lhs.true38:                                  ; preds = %lor.lhs.false, %if.else31
  %call39 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %6) #8, !dbg !4406
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call39, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4406
  %bf.load41 = load i64, i64* %8, align 8, !dbg !4406
  %bf.cast431 = and i64 %bf.load41, 65535, !dbg !4407
  %cmp44 = icmp eq i64 %bf.cast431, 141, !dbg !4407
  br i1 %cmp44, label %land.lhs.true46, label %cleanup102, !dbg !4408

land.lhs.true46:                                  ; preds = %land.lhs.true38
  %call47 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %6) #8, !dbg !4409
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %call47, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4409
  %bf.load49 = load i64, i64* %9, align 8, !dbg !4409
  %bf.cast512 = and i64 %bf.load49, 65535, !dbg !4410
  %cmp52 = icmp eq i64 %bf.cast512, 23, !dbg !4410
  br i1 %cmp52, label %land.lhs.true54, label %cleanup102, !dbg !4411

land.lhs.true54:                                  ; preds = %land.lhs.true46
  %call55 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %6) #8, !dbg !4412
  %call56 = tail call %union.tree_node* @div_if_zero_remainder(i32 76, %union.tree_node* %call55, %union.tree_node* %4) #6, !dbg !4413
  call void @llvm.dbg.value(metadata %union.tree_node* %call56, metadata !4361, metadata !DIExpression()), !dbg !4368
  %cmp57 = icmp eq %union.tree_node* %call56, null, !dbg !4414
  br i1 %cmp57, label %cleanup102, label %if.then59, !dbg !4415

if.then59:                                        ; preds = %land.lhs.true54
  %call60 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %6) #8, !dbg !4416
  %def_stmt62 = getelementptr inbounds %union.tree_node, %union.tree_node* %call60, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4416
  %10 = bitcast %union.tree_node** %def_stmt62 to %union.gimple_statement_d**, !dbg !4416
  %11 = load %union.gimple_statement_d*, %union.gimple_statement_d** %10, align 8, !dbg !4416
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %11, metadata !4362, metadata !DIExpression()), !dbg !4417
  %call63 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %11) #8, !dbg !4418
  %tobool65 = icmp eq i8 %call63, 0, !dbg !4418
  br i1 %tobool65, label %cleanup, label %land.lhs.true66, !dbg !4420

land.lhs.true66:                                  ; preds = %if.then59
  %call67 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %11) #8, !dbg !4421
  %cmp68 = icmp eq i32 %call67, 65, !dbg !4422
  br i1 %cmp68, label %land.lhs.true70, label %cleanup, !dbg !4423

land.lhs.true70:                                  ; preds = %land.lhs.true66
  %call71 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %11) #8, !dbg !4424
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %call71, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4424
  %bf.load73 = load i64, i64* %12, align 8, !dbg !4424
  %bf.cast753 = and i64 %bf.load73, 65535, !dbg !4425
  %cmp76 = icmp eq i64 %bf.cast753, 23, !dbg !4425
  br i1 %cmp76, label %land.lhs.true78, label %cleanup, !dbg !4426

land.lhs.true78:                                  ; preds = %land.lhs.true70
  %call79 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %11) #8, !dbg !4427
  %call80 = tail call i32 @tree_int_cst_equal(%union.tree_node* %call79, %union.tree_node* %4) #6, !dbg !4428
  %tobool81 = icmp eq i32 %call80, 0, !dbg !4428
  br i1 %tobool81, label %cleanup, label %if.then82, !dbg !4429

if.then82:                                        ; preds = %land.lhs.true78
  %call83 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %6) #8, !dbg !4430
  %type85 = getelementptr inbounds %union.tree_node, %union.tree_node* %offset, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4430
  %13 = load %union.tree_node*, %union.tree_node** %type85, align 8, !dbg !4430
  %call86 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %11) #8, !dbg !4430
  %call87 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 %call83, %union.tree_node* %13, %union.tree_node* %call86, %union.tree_node* nonnull %call56) #6, !dbg !4430
  call void @llvm.dbg.value(metadata %union.tree_node* %call87, metadata !4357, metadata !DIExpression()), !dbg !4368
  br label %cleanup, !dbg !4432

cleanup:                                          ; preds = %land.lhs.true78, %if.then59, %land.lhs.true66, %land.lhs.true70, %if.then82
  %index.0 = phi %union.tree_node* [ %call87, %if.then82 ], [ undef, %land.lhs.true78 ], [ undef, %land.lhs.true70 ], [ undef, %land.lhs.true66 ], [ undef, %if.then59 ]
  %cleanup.dest.slot.0 = phi i1 [ true, %if.then82 ], [ false, %land.lhs.true78 ], [ false, %land.lhs.true70 ], [ false, %land.lhs.true66 ], [ false, %if.then59 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %index.0, metadata !4357, metadata !DIExpression()), !dbg !4368
  br i1 %cleanup.dest.slot.0, label %if.end93, label %cleanup102

if.end93:                                         ; preds = %if.then7, %if.then29, %cleanup, %land.lhs.true
  %index.2 = phi %union.tree_node* [ %offset, %land.lhs.true ], [ %offset, %if.then7 ], [ %call30, %if.then29 ], [ %index.0, %cleanup ], !dbg !4376
  call void @llvm.dbg.value(metadata %union.tree_node* %index.2, metadata !4357, metadata !DIExpression()), !dbg !4368
  %call94 = tail call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %use_stmt_gsi, %union.tree_node* %index.2, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !4433
  call void @llvm.dbg.value(metadata %union.tree_node* %call94, metadata !4357, metadata !DIExpression()), !dbg !4368
  %call95 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %def_rhs) #6, !dbg !4434
  tail call void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator* %use_stmt_gsi, %union.tree_node* %call95) #6, !dbg !4435
  %call96 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %use_stmt_gsi) #8, !dbg !4436
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call96, metadata !4360, metadata !DIExpression()), !dbg !4368
  %call97 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call96) #8, !dbg !4437
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call97, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4437
  %14 = bitcast %union.tree_node** %operands to %struct.tree_exp**, !dbg !4437
  %15 = load %struct.tree_exp*, %struct.tree_exp** %14, align 8, !dbg !4437
  %arrayidx100 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %15, i64 0, i32 3, i64 1, !dbg !4437
  store %union.tree_node* %call94, %union.tree_node** %arrayidx100, align 8, !dbg !4438
  %call101 = tail call zeroext i8 @fold_stmt_inplace(%union.gimple_statement_d* %call96) #6, !dbg !4439
  tail call fastcc void @tidy_after_forward_propagate_addr(%union.gimple_statement_d* %call96) #8, !dbg !4440
  br label %cleanup102, !dbg !4441

cleanup102:                                       ; preds = %land.lhs.true54, %if.else, %entry, %lor.lhs.false, %land.lhs.true38, %land.lhs.true46, %land.lhs.true, %cleanup, %if.end93
  %retval.1 = phi i8 [ 1, %if.end93 ], [ 0, %cleanup ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %if.else ], [ 0, %land.lhs.true54 ], [ 0, %land.lhs.true46 ], [ 0, %land.lhs.true38 ], [ 0, %lor.lhs.false ]
  ret i8 %retval.1, !dbg !4442
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !4443 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4447, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 %i, metadata !4448, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !4449, metadata !DIExpression()), !dbg !4450
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !4451
  %tobool = icmp eq i8 %call, 0, !dbg !4451
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !4451

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !4451
  %cmp = icmp ugt i32 %call1, %i, !dbg !4451
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4451

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4451
  br label %cond.end, !dbg !4451

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !4452
  %idxprom = zext i32 %i to i64, !dbg !4452
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call3, i64 %idxprom, !dbg !4452
  store %union.tree_node* %op, %union.tree_node** %arrayidx, align 8, !dbg !4453
  ret void, !dbg !4454
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4455 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4457, metadata !DIExpression()), !dbg !4458
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !4459
  %0 = load i32, i32* %num_ops, align 4, !dbg !4459
  ret i32 %0, !dbg !4460
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4461 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4465, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata i32 %i, metadata !4466, metadata !DIExpression()), !dbg !4467
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !4468
  %tobool = icmp eq i8 %call, 0, !dbg !4468
  br i1 %tobool, label %return, label %if.then, !dbg !4470

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !4471
  %idx.ext = zext i32 %i to i64, !dbg !4473
  %add.ptr = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idx.ext, !dbg !4473
  br label %return, !dbg !4474

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node** [ %add.ptr, %if.then ], [ null, %entry ], !dbg !4475
  ret %union.tree_node** %retval.0, !dbg !4476
}

declare dso_local zeroext i8 @maybe_clean_or_replace_eh_stmt(%union.gimple_statement_d*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local zeroext i8 @gimple_purge_dead_eh_edges(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @recompute_tree_invariant_for_addr_expr(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @host_integerp(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i32 @integer_onep(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @tree_int_cst_equal(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @div_if_zero_remainder(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d*) local_unnamed_addr #2

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.gimple_statement_d* @get_prop_source_stmt(%union.tree_node* %name, i8 zeroext %single_use_only, i8* %single_use_p) unnamed_addr #5 !dbg !4477 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !4481, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i8 %single_use_only, metadata !4482, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i8* %single_use_p, metadata !4483, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i8 1, metadata !4484, metadata !DIExpression()), !dbg !4490
  %tobool2 = icmp eq i8 %single_use_only, 0, !dbg !4491
  %tobool13 = icmp ne i8* %single_use_p, null, !dbg !4495
  %or.cond = and i1 %tobool2, %tobool13, !dbg !4495
  br i1 %tobool2, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !4497

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %do.body, !dbg !4497

entry.split.us:                                   ; preds = %entry
  br label %do.body.us, !dbg !4497

do.body.us:                                       ; preds = %cleanup59.us, %entry.split.us
  %single_use.0.us = phi i8 [ 1, %entry.split.us ], [ %single_use.1.us, %cleanup59.us ], !dbg !4498
  %name.addr.0.us = phi %union.tree_node* [ %name, %entry.split.us ], [ %name.addr.3.us, %cleanup59.us ]
  %retval.0.us = phi %union.gimple_statement_d* [ undef, %entry.split.us ], [ %retval.3.us, %cleanup59.us ]
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.0.us, metadata !4481, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i8 %single_use.0.us, metadata !4484, metadata !DIExpression()), !dbg !4490
  %def_stmt1.us = getelementptr inbounds %union.tree_node, %union.tree_node* %name.addr.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4499
  %0 = bitcast %union.tree_node** %def_stmt1.us to %union.gimple_statement_d**, !dbg !4499
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %0, align 8, !dbg !4499
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !4485, metadata !DIExpression()), !dbg !4500
  %call.us = tail call fastcc zeroext i8 @has_single_use(%union.tree_node* %name.addr.0.us) #8, !dbg !4501
  %tobool.us = icmp eq i8 %call.us, 0, !dbg !4501
  br i1 %tobool.us, label %if.then.us, label %if.end4.us, !dbg !4502

if.then.us:                                       ; preds = %do.body.us
  call void @llvm.dbg.value(metadata i8 0, metadata !4484, metadata !DIExpression()), !dbg !4490
  br label %if.end4.us, !dbg !4503

if.end4.us:                                       ; preds = %if.then.us, %do.body.us
  %single_use.1.us = phi i8 [ %single_use.0.us, %do.body.us ], [ 0, %if.then.us ], !dbg !4490
  call void @llvm.dbg.value(metadata i8 %single_use.1.us, metadata !4484, metadata !DIExpression()), !dbg !4490
  %call5.us = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %1) #8, !dbg !4504
  %tobool6.us = icmp eq i8 %call5.us, 0, !dbg !4504
  br i1 %tobool6.us, label %cleanup59.us, label %if.end8.us, !dbg !4506

if.end8.us:                                       ; preds = %if.end4.us
  %call9.us = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(%union.gimple_statement_d* %1) #6, !dbg !4507
  %tobool10.us = icmp eq i8 %call9.us, 0, !dbg !4507
  br i1 %tobool10.us, label %if.then11.us, label %if.else56.us, !dbg !4508

if.else56.us:                                     ; preds = %if.end8.us
  %call57.us = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %1) #8, !dbg !4509
  call void @llvm.dbg.value(metadata %union.tree_node* %call57.us, metadata !4481, metadata !DIExpression()), !dbg !4490
  br label %if.end58.us

if.then11.us:                                     ; preds = %if.end8.us
  br i1 %or.cond, label %if.then14.us, label %if.end15.us, !dbg !4511

if.then14.us:                                     ; preds = %if.then11.us
  store i8 %single_use.1.us, i8* %single_use_p, align 1, !dbg !4512
  br label %if.end15.us, !dbg !4513

if.end15.us:                                      ; preds = %if.then14.us, %if.then11.us
  %call16.us = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %1) #8, !dbg !4514
  call void @llvm.dbg.value(metadata %union.tree_node* %call16.us, metadata !4487, metadata !DIExpression()), !dbg !4515
  %call17.us = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %1) #8, !dbg !4516
  %cmp.us = icmp eq i32 %call17.us, 116, !dbg !4516
  br i1 %cmp.us, label %land.lhs.true20.us, label %lor.lhs.false.us, !dbg !4516

lor.lhs.false.us:                                 ; preds = %if.end15.us
  %call18.us = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %1) #8, !dbg !4516
  %cmp19.us = icmp eq i32 %call18.us, 113, !dbg !4516
  br i1 %cmp19.us, label %land.lhs.true20.us, label %cleanup.us, !dbg !4518

land.lhs.true20.us:                               ; preds = %lor.lhs.false.us, %if.end15.us
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4519
  %bf.load.us = load i64, i64* %2, align 8, !dbg !4519
  %bf.cast2.us = and i64 %bf.load.us, 65535, !dbg !4520
  %cmp21.us = icmp eq i64 %bf.cast2.us, 141, !dbg !4520
  br i1 %cmp21.us, label %land.lhs.true22.us, label %cleanup.us, !dbg !4521

land.lhs.true22.us:                               ; preds = %land.lhs.true20.us
  %call23.us = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %1) #8, !dbg !4522
  %type.us = getelementptr inbounds %union.tree_node, %union.tree_node* %call23.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4522
  %3 = bitcast %union.tree_node** %type.us to i64**, !dbg !4522
  %4 = load i64*, i64** %3, align 8, !dbg !4522
  %bf.load25.us = load i64, i64* %4, align 8, !dbg !4522
  %bf.cast273.us = and i64 %bf.load25.us, 65535, !dbg !4522
  %cmp28.us = icmp eq i64 %bf.cast273.us, 10, !dbg !4522
  br i1 %cmp28.us, label %land.lhs.true38.us, label %lor.lhs.false29.us, !dbg !4522

lor.lhs.false29.us:                               ; preds = %land.lhs.true22.us
  %call30.us = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %1) #8, !dbg !4522
  %type32.us = getelementptr inbounds %union.tree_node, %union.tree_node* %call30.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4522
  %5 = bitcast %union.tree_node** %type32.us to i64**, !dbg !4522
  %6 = load i64*, i64** %5, align 8, !dbg !4522
  %bf.load34.us = load i64, i64* %6, align 8, !dbg !4522
  %bf.cast364.us = and i64 %bf.load34.us, 65535, !dbg !4522
  %cmp37.us = icmp eq i64 %bf.cast364.us, 12, !dbg !4522
  br i1 %cmp37.us, label %land.lhs.true38.us, label %cleanup.us, !dbg !4523

land.lhs.true38.us:                               ; preds = %lor.lhs.false29.us, %land.lhs.true22.us
  %type40.us = getelementptr inbounds %union.tree_node, %union.tree_node* %call16.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4524
  %7 = bitcast %union.tree_node** %type40.us to i64**, !dbg !4524
  %8 = load i64*, i64** %7, align 8, !dbg !4524
  %bf.load42.us = load i64, i64* %8, align 8, !dbg !4524
  %bf.cast445.us = and i64 %bf.load42.us, 65535, !dbg !4524
  %cmp45.us = icmp eq i64 %bf.cast445.us, 10, !dbg !4524
  br i1 %cmp45.us, label %if.end55.us, label %lor.lhs.false46.us, !dbg !4524

lor.lhs.false46.us:                               ; preds = %land.lhs.true38.us
  %cmp53.us = icmp eq i64 %bf.cast445.us, 12, !dbg !4524
  br i1 %cmp53.us, label %if.end55.us, label %cleanup.us, !dbg !4525

if.end55.us:                                      ; preds = %lor.lhs.false46.us, %land.lhs.true38.us
  call void @llvm.dbg.value(metadata %union.tree_node* %call16.us, metadata !4481, metadata !DIExpression()), !dbg !4490
  br label %cleanup.us, !dbg !4526

cleanup.us:                                       ; preds = %if.end55.us, %lor.lhs.false46.us, %lor.lhs.false29.us, %land.lhs.true20.us, %lor.lhs.false.us
  %cleanup.dest.slot.0.us = phi i32 [ 0, %if.end55.us ], [ 1, %lor.lhs.false46.us ], [ 1, %lor.lhs.false29.us ], [ 1, %land.lhs.true20.us ], [ 1, %lor.lhs.false.us ]
  %name.addr.1.us = phi %union.tree_node* [ %call16.us, %if.end55.us ], [ %name.addr.0.us, %lor.lhs.false46.us ], [ %name.addr.0.us, %lor.lhs.false29.us ], [ %name.addr.0.us, %land.lhs.true20.us ], [ %name.addr.0.us, %lor.lhs.false.us ]
  %retval.1.us = phi %union.gimple_statement_d* [ %retval.0.us, %if.end55.us ], [ %1, %lor.lhs.false46.us ], [ %1, %lor.lhs.false29.us ], [ %1, %land.lhs.true20.us ], [ %1, %lor.lhs.false.us ]
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.1.us, metadata !4481, metadata !DIExpression()), !dbg !4490
  %cond1.us = icmp eq i32 %cleanup.dest.slot.0.us, 0
  br i1 %cond1.us, label %if.end58.us, label %cleanup59.us

if.end58.us:                                      ; preds = %cleanup.us, %if.else56.us
  %name.addr.2.us = phi %union.tree_node* [ %call57.us, %if.else56.us ], [ %name.addr.1.us, %cleanup.us ], !dbg !4527
  %retval.2.us = phi %union.gimple_statement_d* [ %retval.0.us, %if.else56.us ], [ %retval.1.us, %cleanup.us ]
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.2.us, metadata !4481, metadata !DIExpression()), !dbg !4490
  br label %cleanup59.us, !dbg !4528

cleanup59.us:                                     ; preds = %if.end58.us, %cleanup.us, %if.end4.us
  %cleanup.dest.slot.1.us = phi i32 [ 0, %if.end58.us ], [ %cleanup.dest.slot.0.us, %cleanup.us ], [ 1, %if.end4.us ]
  %name.addr.3.us = phi %union.tree_node* [ %name.addr.2.us, %if.end58.us ], [ %name.addr.1.us, %cleanup.us ], [ %name.addr.0.us, %if.end4.us ]
  %retval.3.us = phi %union.gimple_statement_d* [ %retval.2.us, %if.end58.us ], [ %retval.1.us, %cleanup.us ], [ null, %if.end4.us ]
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.3.us, metadata !4481, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i8 %single_use.1.us, metadata !4484, metadata !DIExpression()), !dbg !4490
  %cond.us = icmp eq i32 %cleanup.dest.slot.1.us, 0
  br i1 %cond.us, label %do.body.us, label %cleanup.cont64.us-lcssa.us

cleanup.cont64.us-lcssa.us:                       ; preds = %cleanup59.us
  %retval.3.us.lcssa = phi %union.gimple_statement_d* [ %retval.3.us, %cleanup59.us ]
  br label %cleanup.cont64, !dbg !4529

do.body:                                          ; preds = %cleanup59, %entry.entry.split_crit_edge
  %single_use.0 = phi i8 [ 1, %entry.entry.split_crit_edge ], [ %single_use.2, %cleanup59 ], !dbg !4498
  %name.addr.0 = phi %union.tree_node* [ %name, %entry.entry.split_crit_edge ], [ %name.addr.3, %cleanup59 ]
  %retval.0 = phi %union.gimple_statement_d* [ undef, %entry.entry.split_crit_edge ], [ %retval.3, %cleanup59 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.0, metadata !4481, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i8 %single_use.0, metadata !4484, metadata !DIExpression()), !dbg !4490
  %def_stmt1 = getelementptr inbounds %union.tree_node, %union.tree_node* %name.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4499
  %9 = bitcast %union.tree_node** %def_stmt1 to %union.gimple_statement_d**, !dbg !4499
  %10 = load %union.gimple_statement_d*, %union.gimple_statement_d** %9, align 8, !dbg !4499
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %10, metadata !4485, metadata !DIExpression()), !dbg !4500
  %call = tail call fastcc zeroext i8 @has_single_use(%union.tree_node* %name.addr.0) #8, !dbg !4501
  %tobool = icmp eq i8 %call, 0, !dbg !4501
  br i1 %tobool, label %if.then, label %if.end4, !dbg !4502

if.then:                                          ; preds = %do.body
  call void @llvm.dbg.value(metadata i8 0, metadata !4484, metadata !DIExpression()), !dbg !4490
  br label %cleanup59, !dbg !4503

if.end4:                                          ; preds = %do.body
  call void @llvm.dbg.value(metadata i8 %single_use.0, metadata !4484, metadata !DIExpression()), !dbg !4490
  %call5 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %10) #8, !dbg !4504
  %tobool6 = icmp eq i8 %call5, 0, !dbg !4504
  br i1 %tobool6, label %cleanup59, label %if.end8, !dbg !4506

if.end8:                                          ; preds = %if.end4
  %call9 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(%union.gimple_statement_d* %10) #6, !dbg !4507
  %tobool10 = icmp eq i8 %call9, 0, !dbg !4507
  br i1 %tobool10, label %if.then11, label %if.else56, !dbg !4508

if.then11:                                        ; preds = %if.end8
  br i1 %or.cond, label %if.then14, label %if.end15, !dbg !4511

if.then14:                                        ; preds = %if.then11
  store i8 %single_use.0, i8* %single_use_p, align 1, !dbg !4512
  br label %if.end15, !dbg !4513

if.end15:                                         ; preds = %if.then11, %if.then14
  %call16 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %10) #8, !dbg !4514
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !4487, metadata !DIExpression()), !dbg !4515
  %call17 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %10) #8, !dbg !4516
  %cmp = icmp eq i32 %call17, 116, !dbg !4516
  br i1 %cmp, label %land.lhs.true20, label %lor.lhs.false, !dbg !4516

lor.lhs.false:                                    ; preds = %if.end15
  %call18 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %10) #8, !dbg !4516
  %cmp19 = icmp eq i32 %call18, 113, !dbg !4516
  br i1 %cmp19, label %land.lhs.true20, label %cleanup, !dbg !4518

land.lhs.true20:                                  ; preds = %lor.lhs.false, %if.end15
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4519
  %bf.load = load i64, i64* %11, align 8, !dbg !4519
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !4520
  %cmp21 = icmp eq i64 %bf.cast2, 141, !dbg !4520
  br i1 %cmp21, label %land.lhs.true22, label %cleanup, !dbg !4521

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %call23 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %10) #8, !dbg !4522
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4522
  %12 = bitcast %union.tree_node** %type to i64**, !dbg !4522
  %13 = load i64*, i64** %12, align 8, !dbg !4522
  %bf.load25 = load i64, i64* %13, align 8, !dbg !4522
  %bf.cast273 = and i64 %bf.load25, 65535, !dbg !4522
  %cmp28 = icmp eq i64 %bf.cast273, 10, !dbg !4522
  br i1 %cmp28, label %land.lhs.true38, label %lor.lhs.false29, !dbg !4522

lor.lhs.false29:                                  ; preds = %land.lhs.true22
  %call30 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %10) #8, !dbg !4522
  %type32 = getelementptr inbounds %union.tree_node, %union.tree_node* %call30, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4522
  %14 = bitcast %union.tree_node** %type32 to i64**, !dbg !4522
  %15 = load i64*, i64** %14, align 8, !dbg !4522
  %bf.load34 = load i64, i64* %15, align 8, !dbg !4522
  %bf.cast364 = and i64 %bf.load34, 65535, !dbg !4522
  %cmp37 = icmp eq i64 %bf.cast364, 12, !dbg !4522
  br i1 %cmp37, label %land.lhs.true38, label %cleanup, !dbg !4523

land.lhs.true38:                                  ; preds = %lor.lhs.false29, %land.lhs.true22
  %type40 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4524
  %16 = bitcast %union.tree_node** %type40 to i64**, !dbg !4524
  %17 = load i64*, i64** %16, align 8, !dbg !4524
  %bf.load42 = load i64, i64* %17, align 8, !dbg !4524
  %bf.cast445 = and i64 %bf.load42, 65535, !dbg !4524
  %cmp45 = icmp eq i64 %bf.cast445, 10, !dbg !4524
  br i1 %cmp45, label %if.end55, label %lor.lhs.false46, !dbg !4524

lor.lhs.false46:                                  ; preds = %land.lhs.true38
  %cmp53 = icmp eq i64 %bf.cast445, 12, !dbg !4524
  br i1 %cmp53, label %if.end55, label %cleanup, !dbg !4525

if.end55:                                         ; preds = %land.lhs.true38, %lor.lhs.false46
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !4481, metadata !DIExpression()), !dbg !4490
  br label %cleanup, !dbg !4526

cleanup:                                          ; preds = %lor.lhs.false, %land.lhs.true20, %lor.lhs.false29, %lor.lhs.false46, %if.end55
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end55 ], [ 1, %lor.lhs.false46 ], [ 1, %lor.lhs.false29 ], [ 1, %land.lhs.true20 ], [ 1, %lor.lhs.false ]
  %name.addr.1 = phi %union.tree_node* [ %call16, %if.end55 ], [ %name.addr.0, %lor.lhs.false46 ], [ %name.addr.0, %lor.lhs.false29 ], [ %name.addr.0, %land.lhs.true20 ], [ %name.addr.0, %lor.lhs.false ]
  %retval.1 = phi %union.gimple_statement_d* [ %retval.0, %if.end55 ], [ %10, %lor.lhs.false46 ], [ %10, %lor.lhs.false29 ], [ %10, %land.lhs.true20 ], [ %10, %lor.lhs.false ]
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.1, metadata !4481, metadata !DIExpression()), !dbg !4490
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %if.end58, label %cleanup59

if.else56:                                        ; preds = %if.end8
  %call57 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %10) #8, !dbg !4509
  call void @llvm.dbg.value(metadata %union.tree_node* %call57, metadata !4481, metadata !DIExpression()), !dbg !4490
  br label %if.end58

if.end58:                                         ; preds = %cleanup, %if.else56
  %name.addr.2 = phi %union.tree_node* [ %call57, %if.else56 ], [ %name.addr.1, %cleanup ], !dbg !4527
  %retval.2 = phi %union.gimple_statement_d* [ %retval.0, %if.else56 ], [ %retval.1, %cleanup ]
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.2, metadata !4481, metadata !DIExpression()), !dbg !4490
  br label %cleanup59, !dbg !4528

cleanup59:                                        ; preds = %if.then, %if.end4, %cleanup, %if.end58
  %single_use.2 = phi i8 [ %single_use.0, %if.end58 ], [ %single_use.0, %cleanup ], [ 0, %if.then ], [ %single_use.0, %if.end4 ], !dbg !4490
  %cleanup.dest.slot.1 = phi i32 [ 0, %if.end58 ], [ %cleanup.dest.slot.0, %cleanup ], [ 1, %if.then ], [ 1, %if.end4 ]
  %name.addr.3 = phi %union.tree_node* [ %name.addr.2, %if.end58 ], [ %name.addr.1, %cleanup ], [ %name.addr.0, %if.then ], [ %name.addr.0, %if.end4 ]
  %retval.3 = phi %union.gimple_statement_d* [ %retval.2, %if.end58 ], [ %retval.1, %cleanup ], [ null, %if.then ], [ null, %if.end4 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.3, metadata !4481, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i8 %single_use.2, metadata !4484, metadata !DIExpression()), !dbg !4490
  %cond = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond, label %do.body, label %cleanup.cont64.us-lcssa

cleanup.cont64.us-lcssa:                          ; preds = %cleanup59
  %retval.3.lcssa8 = phi %union.gimple_statement_d* [ %retval.3, %cleanup59 ]
  br label %cleanup.cont64, !dbg !4529

cleanup.cont64:                                   ; preds = %cleanup.cont64.us-lcssa.us, %cleanup.cont64.us-lcssa
  %retval.3.lcssa = phi %union.gimple_statement_d* [ %retval.3.lcssa8, %cleanup.cont64.us-lcssa ], [ %retval.3.us.lcssa, %cleanup.cont64.us-lcssa.us ]
  ret %union.gimple_statement_d* %retval.3.lcssa, !dbg !4529
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @can_propagate_from(%union.gimple_statement_d* %def_stmt) unnamed_addr #5 !dbg !4530 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %def_stmt, metadata !4532, metadata !DIExpression()), !dbg !4538
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !4539
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7, !dbg !4539
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %def_stmt) #8, !dbg !4540
  %tobool = icmp eq i8 %call, 0, !dbg !4540
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4540

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 266, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4540
  br label %cond.end, !dbg !4540

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %def_stmt) #8, !dbg !4541
  %tobool2 = icmp eq i8 %call1, 0, !dbg !4541
  br i1 %tobool2, label %if.end, label %cleanup64, !dbg !4543

if.end:                                           ; preds = %cond.end
  %call3 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %def_stmt) #8, !dbg !4544
  %idxprom = sext i32 %call3 to i64, !dbg !4544
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom, !dbg !4544
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4544
  %cmp = icmp eq i32 %1, 4, !dbg !4546
  br i1 %cmp, label %cleanup64, label %lor.lhs.false, !dbg !4547

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %def_stmt) #8, !dbg !4548
  %idxprom5 = sext i32 %call4 to i64, !dbg !4548
  %arrayidx6 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom5, !dbg !4548
  %2 = load i32, i32* %arrayidx6, align 4, !dbg !4548
  %cmp7 = icmp eq i32 %2, 3, !dbg !4549
  br i1 %cmp7, label %cleanup64, label %if.end9, !dbg !4550

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d* %def_stmt) #6, !dbg !4551
  %tobool11 = icmp eq i8 %call10, 0, !dbg !4551
  br i1 %tobool11, label %if.end17, label %land.lhs.true, !dbg !4553

land.lhs.true:                                    ; preds = %if.end9
  %call12 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %def_stmt) #8, !dbg !4554
  %call13 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call12) #6, !dbg !4555
  %tobool15 = icmp eq i8 %call13, 0, !dbg !4555
  br i1 %tobool15, label %if.end17, label %cleanup64, !dbg !4556

if.end17:                                         ; preds = %land.lhs.true, %if.end9
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4534, metadata !DIExpression(DW_OP_deref)), !dbg !4538
  %call18 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %def_stmt, i32 1) #8, !dbg !4557
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call18, metadata !4533, metadata !DIExpression()), !dbg !4538
  br label %for.cond, !dbg !4557

for.cond:                                         ; preds = %for.inc, %if.end17
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call18, %if.end17 ], [ %call25, %for.inc ], !dbg !4559
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !4533, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4534, metadata !DIExpression(DW_OP_deref)), !dbg !4538
  %call19 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !4560
  %tobool20 = icmp eq i8 %call19, 0, !dbg !4560
  br i1 %tobool20, label %for.body, label %for.end, !dbg !4557

for.body:                                         ; preds = %for.cond
  %call21 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #8, !dbg !4562
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4562
  %bf.load = load i64, i64* %3, align 8, !dbg !4562
  %bf.cast5 = and i64 %bf.load, 4194304, !dbg !4562
  %tobool22 = icmp eq i64 %bf.cast5, 0, !dbg !4562
  br i1 %tobool22, label %for.inc, label %cleanup64.loopexit, !dbg !4564

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4534, metadata !DIExpression(DW_OP_deref)), !dbg !4538
  %call25 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !4560
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call25, metadata !4533, metadata !DIExpression()), !dbg !4538
  br label %for.cond, !dbg !4560, !llvm.loop !4565

for.end:                                          ; preds = %for.cond
  %call26 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %def_stmt) #8, !dbg !4567
  %cmp27 = icmp eq i32 %call26, 116, !dbg !4567
  br i1 %cmp27, label %if.then33, label %lor.lhs.false29, !dbg !4567

lor.lhs.false29:                                  ; preds = %for.end
  %call30 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %def_stmt) #8, !dbg !4567
  %cmp31 = icmp eq i32 %call30, 113, !dbg !4567
  br i1 %cmp31, label %if.then33, label %if.end63, !dbg !4568

if.then33:                                        ; preds = %lor.lhs.false29, %for.end
  %call34 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %def_stmt) #8, !dbg !4569
  call void @llvm.dbg.value(metadata %union.tree_node* %call34, metadata !4535, metadata !DIExpression()), !dbg !4570
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call34, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4571
  %4 = bitcast %union.tree_node** %type to i64**, !dbg !4571
  %5 = load i64*, i64** %4, align 8, !dbg !4571
  %bf.load36 = load i64, i64* %5, align 8, !dbg !4571
  %bf.cast382 = and i64 %bf.load36, 65535, !dbg !4571
  %cmp39 = icmp eq i64 %bf.cast382, 10, !dbg !4571
  br i1 %cmp39, label %land.lhs.true50, label %lor.lhs.false41, !dbg !4571

lor.lhs.false41:                                  ; preds = %if.then33
  %cmp48 = icmp eq i64 %bf.cast382, 12, !dbg !4571
  br i1 %cmp48, label %land.lhs.true50, label %if.end62, !dbg !4573

land.lhs.true50:                                  ; preds = %lor.lhs.false41, %if.then33
  %type54 = getelementptr inbounds i64, i64* %5, i64 2, !dbg !4574
  %6 = bitcast i64* %type54 to i64**, !dbg !4574
  %7 = load i64*, i64** %6, align 8, !dbg !4574
  %bf.load56 = load i64, i64* %7, align 8, !dbg !4574
  %bf.cast584 = and i64 %bf.load56, 65535, !dbg !4575
  %cmp59 = icmp eq i64 %bf.cast584, 20, !dbg !4575
  br i1 %cmp59, label %cleanup, label %if.end62, !dbg !4576

if.end62:                                         ; preds = %land.lhs.true50, %lor.lhs.false41
  br label %cleanup, !dbg !4577

cleanup:                                          ; preds = %land.lhs.true50, %if.end62
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end62 ], [ false, %land.lhs.true50 ]
  br i1 %cleanup.dest.slot.0, label %if.end63, label %cleanup64

if.end63:                                         ; preds = %cleanup, %lor.lhs.false29
  br label %cleanup64, !dbg !4578

cleanup64.loopexit:                               ; preds = %for.body
  br label %cleanup64, !dbg !4579

cleanup64:                                        ; preds = %cleanup64.loopexit, %land.lhs.true, %cond.end, %if.end, %lor.lhs.false, %cleanup, %if.end63
  %retval.1 = phi i8 [ 0, %cleanup ], [ 1, %if.end63 ], [ 0, %cond.end ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %land.lhs.true ], [ 0, %cleanup64.loopexit ], !dbg !4538
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7, !dbg !4579
  ret i8 %retval.1, !dbg !4579
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @rhs_to_tree(%union.tree_node* %type, %union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !4580 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4584, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4585, metadata !DIExpression()), !dbg !4588
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %stmt) #8, !dbg !4589
  call void @llvm.dbg.value(metadata i32 %call, metadata !4586, metadata !DIExpression()), !dbg !4588
  %call1 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #8, !dbg !4590
  call void @llvm.dbg.value(metadata i32 %call1, metadata !4587, metadata !DIExpression()), !dbg !4588
  %call2 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call1) #8, !dbg !4591
  %cmp = icmp eq i32 %call2, 1, !dbg !4593
  br i1 %cmp, label %if.then, label %if.else, !dbg !4594

if.then:                                          ; preds = %entry
  %call3 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !4595
  %call4 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #8, !dbg !4595
  %call5 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %call, i32 %call1, %union.tree_node* %type, %union.tree_node* %call3, %union.tree_node* %call4) #6, !dbg !4595
  br label %cleanup, !dbg !4596

if.else:                                          ; preds = %entry
  %call6 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call1) #8, !dbg !4597
  %cmp7 = icmp eq i32 %call6, 2, !dbg !4599
  br i1 %cmp7, label %if.then8, label %if.else11, !dbg !4600

if.then8:                                         ; preds = %if.else
  %call9 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !4601
  %call10 = tail call %union.tree_node* @build1_stat(i32 %call1, %union.tree_node* %type, %union.tree_node* %call9) #6, !dbg !4601
  br label %cleanup, !dbg !4602

if.else11:                                        ; preds = %if.else
  %call12 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call1) #8, !dbg !4603
  %cmp13 = icmp eq i32 %call12, 3, !dbg !4605
  br i1 %cmp13, label %if.then14, label %if.else16, !dbg !4606

if.then14:                                        ; preds = %if.else11
  %call15 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !4607
  br label %cleanup, !dbg !4608

if.else16:                                        ; preds = %if.else11
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 352, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4609
  br label %cleanup, !dbg !4610

cleanup:                                          ; preds = %if.else16, %if.then14, %if.then8, %if.then
  %retval.0 = phi %union.tree_node* [ %call5, %if.then ], [ %call10, %if.then8 ], [ %call15, %if.then14 ], [ null, %if.else16 ], !dbg !4588
  ret %union.tree_node* %retval.0, !dbg !4611
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @combine_cond_expr_cond(i32 %loc, i32 %code, %union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %op1, i8 zeroext %invariant_only) unnamed_addr #5 !dbg !4612 {
entry:
  call void @llvm.dbg.value(metadata i32 %loc, metadata !4616, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i32 %code, metadata !4617, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4618, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata %union.tree_node* %op0, metadata !4619, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata %union.tree_node* %op1, metadata !4620, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i8 %invariant_only, metadata !4621, metadata !DIExpression()), !dbg !4623
  %idxprom = sext i32 %code to i64, !dbg !4624
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom, !dbg !4624
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4624
  %cmp = icmp eq i32 %0, 5, !dbg !4624
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4624

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 370, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4624
  br label %cond.end, !dbg !4624

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call %union.tree_node* @fold_binary_loc(i32 %loc, i32 %code, %union.tree_node* %type, %union.tree_node* %op0, %union.tree_node* %op1) #6, !dbg !4625
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4622, metadata !DIExpression()), !dbg !4623
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !4626
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4628

if.end:                                           ; preds = %cond.end
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4629
  %1 = bitcast %union.tree_node** %type1 to i64**, !dbg !4629
  %2 = load i64*, i64** %1, align 8, !dbg !4629
  %bf.load = load i64, i64* %2, align 8, !dbg !4629
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4629
  %bf.load3 = load i64, i64* %3, align 8, !dbg !4629
  %4 = xor i64 %bf.load, %bf.load3, !dbg !4629
  %5 = and i64 %4, 65535, !dbg !4629
  %cmp6 = icmp eq i64 %5, 0, !dbg !4629
  br i1 %cmp6, label %cond.end9, label %cond.true7, !dbg !4629

cond.true7:                                       ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 377, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4629
  br label %cond.end9, !dbg !4629

cond.end9:                                        ; preds = %if.end, %cond.true7
  %call11 = tail call %union.tree_node* @canonicalize_cond_expr_cond(%union.tree_node* nonnull %call) #6, !dbg !4630
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !4622, metadata !DIExpression()), !dbg !4623
  %tobool12 = icmp eq %union.tree_node* %call11, null, !dbg !4631
  br i1 %tobool12, label %cleanup, label %lor.lhs.false, !dbg !4633

lor.lhs.false:                                    ; preds = %cond.end9
  %tobool13 = icmp eq i8 %invariant_only, 0, !dbg !4634
  br i1 %tobool13, label %if.end17, label %land.lhs.true, !dbg !4635

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call14 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* nonnull %call11) #6, !dbg !4636
  %tobool15 = icmp eq i8 %call14, 0, !dbg !4636
  br i1 %tobool15, label %cleanup, label %if.end17, !dbg !4637

if.end17:                                         ; preds = %land.lhs.true, %lor.lhs.false
  br label %cleanup, !dbg !4638

cleanup:                                          ; preds = %land.lhs.true, %cond.end9, %cond.end, %if.end17
  %retval.0 = phi %union.tree_node* [ %call11, %if.end17 ], [ null, %cond.end ], [ null, %land.lhs.true ], [ null, %cond.end9 ], !dbg !4623
  ret %union.tree_node* %retval.0, !dbg !4639
}

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @remove_prop_source_from_use(%union.tree_node* %name, %union.gimple_statement_d* %up_to_stmt) unnamed_addr #5 !dbg !4640 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !4644, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %up_to_stmt, metadata !4645, metadata !DIExpression()), !dbg !4648
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4649
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !4649
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4650
  br label %do.body, !dbg !4652

do.body:                                          ; preds = %land.rhs, %entry
  %name.addr.0 = phi %union.tree_node* [ %name, %entry ], [ %cond, %land.rhs ]
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.0, metadata !4644, metadata !DIExpression()), !dbg !4648
  %call = call fastcc zeroext i8 @has_zero_uses(%union.tree_node* %name.addr.0) #8, !dbg !4653
  %tobool = icmp eq i8 %call, 0, !dbg !4653
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4655

if.end:                                           ; preds = %do.body
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %name.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4656
  %2 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4656
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %2, align 8, !dbg !4656
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %3, metadata !4647, metadata !DIExpression()), !dbg !4648
  %cmp = icmp eq %union.gimple_statement_d* %3, %up_to_stmt, !dbg !4657
  br i1 %cmp, label %cleanup, label %if.end2, !dbg !4659

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !4660
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* %3) #6, !dbg !4660
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !4660
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !4660
  call void @release_defs(%union.gimple_statement_d* %3) #6, !dbg !4661
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4646, metadata !DIExpression(DW_OP_deref)), !dbg !4648
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !4662
  %call3 = call zeroext i8 @gimple_assign_copy_p(%union.gimple_statement_d* %3) #6, !dbg !4663
  %tobool4 = icmp eq i8 %call3, 0, !dbg !4664
  br i1 %tobool4, label %do.cond, label %cond.true, !dbg !4664

cond.true:                                        ; preds = %if.end2
  %call5 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %3) #8, !dbg !4665
  br label %do.cond, !dbg !4664

do.cond:                                          ; preds = %if.end2, %cond.true
  %cond = phi %union.tree_node* [ %call5, %cond.true ], [ null, %if.end2 ], !dbg !4664
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !4644, metadata !DIExpression()), !dbg !4648
  %tobool6 = icmp eq %union.tree_node* %cond, null, !dbg !4666
  br i1 %tobool6, label %cleanup, label %land.rhs, !dbg !4667

land.rhs:                                         ; preds = %do.cond
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %cond, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4668
  %bf.load = load i64, i64* %4, align 8, !dbg !4668
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4669
  %cmp7 = icmp eq i64 %bf.cast1, 141, !dbg !4669
  br i1 %cmp7, label %do.body, label %cleanup, !dbg !4670, !llvm.loop !4671

cleanup:                                          ; preds = %do.cond, %do.body, %land.rhs, %if.end
  %retval.0 = phi i8 [ 0, %do.body ], [ 1, %if.end ], [ 0, %land.rhs ], [ 0, %do.cond ], !dbg !4648
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !4673
  ret i8 %retval.0, !dbg !4673
}

declare dso_local zeroext i8 @gimple_assign_ssa_name_copy_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4674 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4676, metadata !DIExpression()), !dbg !4677
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %stmt) #8, !dbg !4678
  %tobool = icmp eq i8 %call, 0, !dbg !4678
  br i1 %tobool, label %return, label %if.then, !dbg !4680

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4681
  %bf.load = load i32, i32* %0, align 8, !dbg !4681
  %bf.lshr = lshr i32 %bf.load, 14, !dbg !4681
  %1 = trunc i32 %bf.lshr to i8, !dbg !4682
  %conv = and i8 %1, 1, !dbg !4682
  br label %return, !dbg !4683

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8 [ %conv, %if.then ], [ 0, %entry ], !dbg !4684
  ret i8 %retval.0, !dbg !4685
}

declare dso_local zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build1_stat(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_binary_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @canonicalize_cond_expr_cond(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @gimple_assign_copy_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.gimple_statement_d* @get_prop_dest_stmt(%union.tree_node* %name, %union.tree_node** %final_name_p) unnamed_addr #5 !dbg !4686 {
entry:
  %use = alloca %struct.ssa_use_operand_d*, align 8
  %use_stmt = alloca %union.gimple_statement_d*, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !4690, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata %union.tree_node** %final_name_p, metadata !4691, metadata !DIExpression()), !dbg !4694
  %0 = bitcast %struct.ssa_use_operand_d** %use to i8*, !dbg !4695
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4695
  %1 = bitcast %union.gimple_statement_d** %use_stmt to i8*, !dbg !4696
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4696
  br label %do.body, !dbg !4697

do.body:                                          ; preds = %if.end5, %entry
  %name.addr.0 = phi %union.tree_node* [ %name, %entry ], [ %call6, %if.end5 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.0, metadata !4690, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d** %use, metadata !4692, metadata !DIExpression(DW_OP_deref)), !dbg !4694
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %use_stmt, metadata !4693, metadata !DIExpression(DW_OP_deref)), !dbg !4694
  %call = call fastcc zeroext i8 @single_imm_use(%union.tree_node* %name.addr.0, %struct.ssa_use_operand_d** nonnull %use, %union.gimple_statement_d** nonnull %use_stmt) #8, !dbg !4698
  %tobool = icmp eq i8 %call, 0, !dbg !4698
  br i1 %tobool, label %cleanup.loopexit, label %if.end, !dbg !4701

if.end:                                           ; preds = %do.body
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !4702
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !4693, metadata !DIExpression()), !dbg !4694
  %call1 = call zeroext i8 @gimple_assign_ssa_name_copy_p(%union.gimple_statement_d* %2) #6, !dbg !4704
  %tobool2 = icmp eq i8 %call1, 0, !dbg !4704
  br i1 %tobool2, label %do.end, label %lor.lhs.false, !dbg !4705

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !4706
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %3, metadata !4693, metadata !DIExpression()), !dbg !4694
  %call3 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %3) #8, !dbg !4707
  %cmp = icmp eq %union.tree_node* %call3, %name.addr.0, !dbg !4708
  br i1 %cmp, label %if.end5, label %do.end, !dbg !4709

if.end5:                                          ; preds = %lor.lhs.false
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !4710
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %4, metadata !4693, metadata !DIExpression()), !dbg !4694
  %call6 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %4) #8, !dbg !4711
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !4690, metadata !DIExpression()), !dbg !4694
  br label %do.body, !dbg !4712

do.end:                                           ; preds = %lor.lhs.false, %if.end
  %name.addr.0.lcssa3 = phi %union.tree_node* [ %name.addr.0, %lor.lhs.false ], [ %name.addr.0, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.0.lcssa3, metadata !4690, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.0.lcssa3, metadata !4690, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.0.lcssa3, metadata !4690, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.0.lcssa3, metadata !4690, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.0.lcssa3, metadata !4690, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.0.lcssa3, metadata !4690, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata %union.tree_node* %name.addr.0.lcssa3, metadata !4690, metadata !DIExpression()), !dbg !4694
  %tobool7 = icmp eq %union.tree_node** %final_name_p, null, !dbg !4713
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4715

if.then8:                                         ; preds = %do.end
  store %union.tree_node* %name.addr.0.lcssa3, %union.tree_node** %final_name_p, align 8, !dbg !4716
  br label %if.end9, !dbg !4717

if.end9:                                          ; preds = %do.end, %if.then8
  %5 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !4718
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %5, metadata !4693, metadata !DIExpression()), !dbg !4694
  br label %cleanup, !dbg !4719

cleanup.loopexit:                                 ; preds = %do.body
  br label %cleanup, !dbg !4720

cleanup:                                          ; preds = %cleanup.loopexit, %if.end9
  %retval.0 = phi %union.gimple_statement_d* [ %5, %if.end9 ], [ null, %cleanup.loopexit ], !dbg !4694
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4720
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4720
  ret %union.gimple_statement_d* %retval.0, !dbg !4720
}

declare dso_local %union.tree_node* @build2_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @invert_tree_comparison(i32, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_imm_use(%union.tree_node* %var, %struct.ssa_use_operand_d** %use_p, %union.gimple_statement_d** %stmt) unnamed_addr #0 !dbg !4721 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4727, metadata !DIExpression()), !dbg !4734
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d** %use_p, metadata !4728, metadata !DIExpression()), !dbg !4734
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %stmt, metadata !4729, metadata !DIExpression()), !dbg !4734
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4735
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !4735
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !4730, metadata !DIExpression()), !dbg !4734
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !4736
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !4736
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !4736
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !4737
  br i1 %cmp, label %return_false, label %if.end, !dbg !4738

return_false:                                     ; preds = %if.then4, %if.end12, %entry
  call void @llvm.dbg.label(metadata !4731), !dbg !4739
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %use_p, align 8, !dbg !4740
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %stmt, align 8, !dbg !4741
  br label %cleanup, !dbg !4742

if.end:                                           ; preds = %entry
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 1, !dbg !4743
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next2, align 8, !dbg !4743
  %cmp3 = icmp eq %struct.ssa_use_operand_d* %3, %0, !dbg !4745
  br i1 %cmp3, label %if.then4, label %if.end12, !dbg !4746

if.then4:                                         ; preds = %if.end
  %stmt6 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 2, i32 0, !dbg !4747
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt6, align 8, !dbg !4747
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %4) #8, !dbg !4750
  %tobool = icmp eq i8 %call, 0, !dbg !4750
  br i1 %tobool, label %if.then7, label %return_false, !dbg !4751

if.then7:                                         ; preds = %if.then4
  %5 = bitcast i40* %next to i64*, !dbg !4752
  %6 = load i64, i64* %5, align 8, !dbg !4752
  %7 = bitcast %struct.ssa_use_operand_d** %use_p to i64*, !dbg !4754
  store i64 %6, i64* %7, align 8, !dbg !4754
  %8 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !4755
  %stmt11 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %8, i64 0, i32 2, i32 0, !dbg !4756
  %9 = bitcast %union.gimple_statement_d** %stmt11 to i64*, !dbg !4756
  %10 = load i64, i64* %9, align 8, !dbg !4756
  %11 = bitcast %union.gimple_statement_d** %stmt to i64*, !dbg !4757
  store i64 %10, i64* %11, align 8, !dbg !4757
  br label %cleanup, !dbg !4758

if.end12:                                         ; preds = %if.end
  %12 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !4759
  %tobool13 = icmp eq i32 %12, 0, !dbg !4759
  br i1 %tobool13, label %return_false, label %if.end15, !dbg !4761

if.end15:                                         ; preds = %if.end12
  %call16 = tail call zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d* nonnull %0, %struct.ssa_use_operand_d** %use_p, %union.gimple_statement_d** %stmt) #6, !dbg !4762
  br label %cleanup, !dbg !4763

cleanup:                                          ; preds = %if.end15, %if.then7, %return_false
  %retval.0 = phi i8 [ 0, %return_false ], [ 1, %if.then7 ], [ %call16, %if.end15 ], !dbg !4734
  ret i8 %retval.0, !dbg !4764
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !4765 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !4767, metadata !DIExpression()), !dbg !4771
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %s) #8, !dbg !4772
  %tobool = icmp eq i8 %call, 0, !dbg !4772
  br i1 %tobool, label %return, label %if.then, !dbg !4773

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %s) #8, !dbg !4774
  call void @llvm.dbg.value(metadata i32 %call1, metadata !4768, metadata !DIExpression()), !dbg !4775
  switch i32 %call1, label %lor.rhs [
    i32 116, label %lor.end
    i32 113, label %lor.end
    i32 118, label %lor.end
    i32 77, label %lor.end
  ], !dbg !4776

lor.rhs:                                          ; preds = %if.then
  br label %lor.end, !dbg !4777

lor.end:                                          ; preds = %if.then, %if.then, %if.then, %if.then, %lor.rhs
  %0 = phi i8 [ 1, %if.then ], [ 0, %lor.rhs ], [ 1, %if.then ], [ 1, %if.then ], [ 1, %if.then ]
  br label %return

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i8 [ %0, %lor.end ], [ 0, %entry ], !dbg !4771
  ret i8 %retval.0, !dbg !4778
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4779 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4781, metadata !DIExpression()), !dbg !4786
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !4787
  call void @llvm.dbg.value(metadata i32 %call, metadata !4782, metadata !DIExpression()), !dbg !4786
  switch i32 %call, label %if.else14 [
    i32 8, label %if.then3
    i32 6, label %if.else
    i32 1, label %if.then13
  ], !dbg !4788

if.then3:                                         ; preds = %entry
  %call4 = tail call fastcc %union.tree_node* @gimple_call_return_type(%union.gimple_statement_d* %stmt) #8, !dbg !4789
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !4783, metadata !DIExpression()), !dbg !4791
  br label %cleanup, !dbg !4792

if.else:                                          ; preds = %entry
  %call5 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #8, !dbg !4793
  %cond = icmp eq i32 %call5, 66, !dbg !4794
  br i1 %cond, label %sw.bb, label %sw.default, !dbg !4794

sw.bb:                                            ; preds = %if.else
  %call6 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !4795
  %type7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4795
  %0 = load %union.tree_node*, %union.tree_node** %type7, align 8, !dbg !4795
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4783, metadata !DIExpression()), !dbg !4791
  br label %cleanup, !dbg !4797

sw.default:                                       ; preds = %if.else
  %call8 = tail call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %stmt) #6, !dbg !4798
  %type10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4798
  %1 = load %union.tree_node*, %union.tree_node** %type10, align 8, !dbg !4798
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !4783, metadata !DIExpression()), !dbg !4791
  br label %cleanup, !dbg !4799

if.then13:                                        ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !4800
  br label %cleanup, !dbg !4802

if.else14:                                        ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !4803
  br label %cleanup, !dbg !4804

cleanup:                                          ; preds = %if.then3, %sw.default, %sw.bb, %if.else14, %if.then13
  %retval.0 = phi %union.tree_node* [ %2, %if.then13 ], [ %3, %if.else14 ], [ %call4, %if.then3 ], [ %1, %sw.default ], [ %0, %sw.bb ], !dbg !4805
  ret %union.tree_node* %retval.0, !dbg !4806
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_return_type(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4807 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4809, metadata !DIExpression()), !dbg !4812
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #8, !dbg !4813
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4810, metadata !DIExpression()), !dbg !4812
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4814
  %0 = bitcast %union.tree_node** %type1 to %struct.tree_common**, !dbg !4814
  %1 = load %struct.tree_common*, %struct.tree_common** %0, align 8, !dbg !4814
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1, i64 0, i32 2, !dbg !4815
  %2 = bitcast %union.tree_node** %type3 to %struct.tree_common**, !dbg !4815
  %3 = load %struct.tree_common*, %struct.tree_common** %2, align 8, !dbg !4815
  %type5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %3, i64 0, i32 2, !dbg !4816
  %4 = load %union.tree_node*, %union.tree_node** %type5, align 8, !dbg !4816
  ret %union.tree_node* %4, !dbg !4817
}

declare dso_local %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4818 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4820, metadata !DIExpression()), !dbg !4821
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !4822
  ret %union.tree_node* %call, !dbg !4823
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_switch_index(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4824 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4826, metadata !DIExpression()), !dbg !4827
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !4828
  ret %union.tree_node* %call, !dbg !4829
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_switch_set_index(%union.gimple_statement_d* %gs, %union.tree_node* %index) unnamed_addr #0 !dbg !4830 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4832, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.value(metadata %union.tree_node* %index, metadata !4833, metadata !DIExpression()), !dbg !4834
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %index, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4835
  %bf.load = load i64, i64* %0, align 8, !dbg !4835
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4835
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !4835
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !4835

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !4835
  br i1 %cmp5, label %cond.end, label %lor.lhs.false6, !dbg !4835

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i64 %bf.cast1, 36, !dbg !4835
  br i1 %cmp11, label %cond.end, label %lor.lhs.false12, !dbg !4835

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %cmp17 = icmp eq i64 %bf.cast1, 141, !dbg !4835
  br i1 %cmp17, label %land.lhs.true, label %lor.lhs.false39, !dbg !4835

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %index, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4835
  %1 = bitcast i32* %var to i64**, !dbg !4835
  %2 = load i64*, i64** %1, align 8, !dbg !4835
  %bf.load19 = load i64, i64* %2, align 8, !dbg !4835
  %bf.cast215 = and i64 %bf.load19, 65535, !dbg !4835
  %cmp22 = icmp eq i64 %bf.cast215, 32, !dbg !4835
  br i1 %cmp22, label %cond.end, label %lor.lhs.false23, !dbg !4835

lor.lhs.false23:                                  ; preds = %land.lhs.true
  %cmp30 = icmp eq i64 %bf.cast215, 34, !dbg !4835
  br i1 %cmp30, label %cond.end, label %lor.lhs.false31, !dbg !4835

lor.lhs.false31:                                  ; preds = %lor.lhs.false23
  %cmp38 = icmp eq i64 %bf.cast215, 36, !dbg !4835
  br i1 %cmp38, label %cond.end, label %lor.lhs.false39, !dbg !4835

lor.lhs.false39:                                  ; preds = %lor.lhs.false31, %lor.lhs.false12
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast1, !dbg !4835
  %3 = load i32, i32* %arrayidx, align 4, !dbg !4835
  %cmp44 = icmp eq i32 %3, 1, !dbg !4835
  br i1 %cmp44, label %cond.end, label %cond.true, !dbg !4835

cond.true:                                        ; preds = %lor.lhs.false39
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 3203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4835
  br label %cond.end, !dbg !4835

cond.end:                                         ; preds = %entry, %lor.lhs.false, %lor.lhs.false6, %land.lhs.true, %lor.lhs.false23, %lor.lhs.false31, %lor.lhs.false39, %cond.true
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %index) #8, !dbg !4836
  ret void, !dbg !4837
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4838 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4840, metadata !DIExpression()), !dbg !4841
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !4842
  %bf.load = load i32, i32* %0, align 8, !dbg !4842
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4842
  ret i32 %bf.lshr, !dbg !4843
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4844 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4846, metadata !DIExpression()), !dbg !4847
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !4848
  ret %union.tree_node* %call, !dbg !4849
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4850 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4852, metadata !DIExpression()), !dbg !4853
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !4854
  ret %union.tree_node* %call, !dbg !4855
}

declare dso_local void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d*, %union.tree_node*) local_unnamed_addr #2

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
!llvm.module.flags = !{!2001, !2002, !2003}
!llvm.ident = !{!2004}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_forwprop", scope: !2, file: !3, line: 1378, type: !1974, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !660, globals: !1971, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-forwprop.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !587, !625, !631, !638}
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
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !561, line: 727, baseType: !7, size: 32, elements: !562)
!561 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!563 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!564 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!565 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!566 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!567 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!568 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!569 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!570 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!571 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!572 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!573 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!574 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!575 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!576 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!577 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!578 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!579 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!580 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!581 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!582 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!583 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!584 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!585 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!586 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!587 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !561, line: 51, baseType: !7, size: 32, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!589 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!590 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!591 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!592 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!593 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!594 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!595 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!596 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!598 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!599 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!600 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!601 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!602 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!605 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!606 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!607 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!608 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!609 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!610 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!611 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!612 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!613 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!614 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!615 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!616 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!617 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!618 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!619 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!620 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!621 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!622 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!623 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!624 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !561, line: 80, baseType: !7, size: 32, elements: !626)
!626 = !{!627, !628, !629, !630}
!627 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!628 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!629 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!630 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!631 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !632, line: 119, baseType: !7, size: 32, elements: !633)
!632 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!633 = !{!634, !635, !636, !637}
!634 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!635 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!636 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!637 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!638 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !639, line: 36, baseType: !7, size: 32, elements: !640)
!639 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!641 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!642 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!643 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!644 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!645 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!646 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!647 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!648 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!649 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!650 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!651 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!652 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!653 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!654 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!655 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!656 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!657 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!658 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!659 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!660 = !{!661, !662, !663, !664, !667, !668, !366, !670, !1964, !995, !1966, !711, !1028, !665, !625, !1968, !797, !638, !189}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!663 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !672)
!672 = !{!673, !706, !714, !727, !746, !757, !762, !771, !777, !790, !802, !840, !1297, !1325, !1342, !1343, !1348, !1357, !1363, !1368, !1372, !1376, !1615, !1662, !1668, !1674, !1681, !1694, !1708, !1725, !1737, !1759, !1774, !1946}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !671, file: !334, line: 3372, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !674, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !674, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !674, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !674, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !674, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !674, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !674, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !674, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !674, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !674, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !674, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !674, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !674, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !674, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !674, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !674, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !674, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !674, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !674, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !674, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !674, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !674, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !674, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !674, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !674, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !674, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !674, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !674, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !674, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !674, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !671, file: !334, line: 3373, baseType: !707, size: 192)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !708)
!708 = !{!709, !710, !713}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !707, file: !334, line: 403, baseType: !674, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !707, file: !334, line: 404, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !712, line: 56, baseType: !670)
!712 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !334, line: 405, baseType: !711, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !671, file: !334, line: 3374, baseType: !715, size: 320)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !715, file: !334, line: 1385, baseType: !707, size: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !715, file: !334, line: 1386, baseType: !719, size: 128, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !720, line: 58, baseType: !721)
!720 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !720, line: 54, size: 128, elements: !722)
!722 = !{!723, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !721, file: !720, line: 56, baseType: !724, size: 64)
!724 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !721, file: !720, line: 57, baseType: !726, size: 64, offset: 64)
!726 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !671, file: !334, line: 3375, baseType: !728, size: 256)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !728, file: !334, line: 1398, baseType: !707, size: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !728, file: !334, line: 1399, baseType: !732, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !734, line: 52, size: 256, elements: !735)
!734 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!735 = !{!736, !737, !738, !739, !740, !741, !742}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !733, file: !734, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !733, file: !734, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !733, file: !734, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !733, file: !734, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !733, file: !734, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !733, file: !734, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !733, file: !734, line: 62, baseType: !743, size: 192, offset: 64)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 192, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 3)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !671, file: !334, line: 3376, baseType: !747, size: 256)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !747, file: !334, line: 1409, baseType: !707, size: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !747, file: !334, line: 1410, baseType: !751, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !753, line: 27, size: 192, elements: !754)
!753 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !752, file: !753, line: 29, baseType: !719, size: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !752, file: !753, line: 30, baseType: !189, size: 32, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !671, file: !334, line: 3377, baseType: !758, size: 256)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !758, file: !334, line: 1438, baseType: !707, size: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !758, file: !334, line: 1439, baseType: !711, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !671, file: !334, line: 3378, baseType: !763, size: 256)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !764)
!764 = !{!765, !766, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !763, file: !334, line: 1419, baseType: !707, size: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !763, file: !334, line: 1420, baseType: !663, size: 32, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !763, file: !334, line: 1421, baseType: !768, size: 8, offset: 224)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 8, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 1)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !671, file: !334, line: 3379, baseType: !772, size: 320)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !773)
!773 = !{!774, !775, !776}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !772, file: !334, line: 1429, baseType: !707, size: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !772, file: !334, line: 1430, baseType: !711, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !772, file: !334, line: 1431, baseType: !711, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !671, file: !334, line: 3380, baseType: !778, size: 320)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !779)
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !778, file: !334, line: 1461, baseType: !707, size: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !778, file: !334, line: 1462, baseType: !782, size: 128, offset: 192)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !783, line: 31, size: 128, elements: !784)
!783 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!784 = !{!785, !788, !789}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !782, file: !783, line: 32, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !782, file: !783, line: 33, baseType: !7, size: 32, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !782, file: !783, line: 34, baseType: !7, size: 32, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !671, file: !334, line: 3381, baseType: !791, size: 384)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !792)
!792 = !{!793, !794, !799, !800, !801}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !791, file: !334, line: 2508, baseType: !707, size: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !791, file: !334, line: 2509, baseType: !795, size: 32, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !796, line: 58, baseType: !797)
!796 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !798, line: 44, baseType: !7)
!798 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!799 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !791, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !791, file: !334, line: 2511, baseType: !711, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !791, file: !334, line: 2512, baseType: !711, size: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !671, file: !334, line: 3382, baseType: !803, size: 896)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !803, file: !334, line: 2653, baseType: !791, size: 384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !803, file: !334, line: 2654, baseType: !711, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !803, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !803, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !803, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !803, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !803, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !803, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !803, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !803, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !803, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !803, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !803, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !803, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !803, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !803, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !803, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !803, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !803, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !803, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !803, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !803, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !803, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !803, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !803, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !803, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !803, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !803, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !803, file: !334, line: 2705, baseType: !711, size: 64, offset: 576)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !803, file: !334, line: 2706, baseType: !711, size: 64, offset: 640)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !803, file: !334, line: 2707, baseType: !711, size: 64, offset: 704)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !803, file: !334, line: 2708, baseType: !711, size: 64, offset: 768)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !803, file: !334, line: 2711, baseType: !838, size: 64, offset: 832)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !671, file: !334, line: 3383, baseType: !841, size: 960)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !841, file: !334, line: 2757, baseType: !803, size: 896)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !841, file: !334, line: 2758, baseType: !845, size: 64, offset: 896)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !712, line: 50, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !848, line: 240, size: 384, elements: !849)
!848 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!849 = !{!850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !847, file: !848, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !847, file: !848, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !847, file: !848, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !847, file: !848, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !847, file: !848, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !847, file: !848, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !847, file: !848, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !847, file: !848, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !847, file: !848, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !847, file: !848, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !847, file: !848, line: 321, baseType: !861, size: 320, offset: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !848, line: 315, size: 320, elements: !862)
!862 = !{!863, !1264, !1266, !1295, !1296}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !861, file: !848, line: 316, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 64, elements: !769)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !848, line: 183, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !848, line: 166, size: 64, elements: !867)
!867 = !{!868, !869, !870, !871, !872, !880, !881, !893, !896, !956, !957, !1241, !1254, !1261}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !866, file: !848, line: 168, baseType: !663, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !866, file: !848, line: 169, baseType: !7, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !866, file: !848, line: 170, baseType: !668, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !866, file: !848, line: 171, baseType: !845, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !866, file: !848, line: 172, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !712, line: 53, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !848, line: 359, size: 128, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !875, file: !848, line: 360, baseType: !663, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !875, file: !848, line: 361, baseType: !879, size: 64, offset: 64)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 64, elements: !769)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !866, file: !848, line: 173, baseType: !189, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !866, file: !848, line: 174, baseType: !882, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !848, line: 133, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !848, line: 115, size: 32, elements: !884)
!884 = !{!885, !886, !887, !888, !889, !890, !891, !892}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !883, file: !848, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !883, file: !848, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !883, file: !848, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !883, file: !848, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !883, file: !848, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !883, file: !848, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !883, file: !848, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !883, file: !848, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !866, file: !848, line: 175, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !848, line: 175, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !866, file: !848, line: 176, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !899, line: 75, size: 256, elements: !900)
!899 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!900 = !{!901, !915, !916, !917}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !898, file: !899, line: 76, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !899, line: 68, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !899, line: 63, size: 320, elements: !905)
!905 = !{!906, !908, !909, !910}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !904, file: !899, line: 64, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !904, file: !899, line: 65, baseType: !907, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !904, file: !899, line: 66, baseType: !7, size: 32, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !904, file: !899, line: 67, baseType: !911, size: 128, offset: 192)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !912, size: 128, elements: !913)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !899, line: 29, baseType: !724)
!913 = !{!914}
!914 = !DISubrange(count: 2)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !898, file: !899, line: 77, baseType: !902, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !898, file: !899, line: 78, baseType: !7, size: 32, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !898, file: !899, line: 79, baseType: !918, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !899, line: 49, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !899, line: 45, size: 832, elements: !921)
!921 = !{!922, !923, !924}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !920, file: !899, line: 46, baseType: !907, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !920, file: !899, line: 47, baseType: !897, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !920, file: !899, line: 48, baseType: !925, size: 704, offset: 128)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !926, line: 164, size: 704, elements: !927)
!926 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!927 = !{!928, !929, !939, !940, !941, !942, !943, !944, !948, !952, !953, !954, !955}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !925, file: !926, line: 166, baseType: !726, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !925, file: !926, line: 167, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !926, line: 157, size: 192, elements: !932)
!932 = !{!933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !931, file: !926, line: 159, baseType: !665, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !931, file: !926, line: 160, baseType: !930, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !931, file: !926, line: 161, baseType: !936, size: 32, offset: 128)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 32, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 4)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !925, file: !926, line: 168, baseType: !665, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !925, file: !926, line: 169, baseType: !665, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !925, file: !926, line: 170, baseType: !665, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !925, file: !926, line: 171, baseType: !726, size: 64, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !925, file: !926, line: 172, baseType: !663, size: 32, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !925, file: !926, line: 176, baseType: !945, size: 64, offset: 448)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!930, !667, !726}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !925, file: !926, line: 177, baseType: !949, size: 64, offset: 512)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !667, !930}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !925, file: !926, line: 178, baseType: !667, size: 64, offset: 576)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !925, file: !926, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !925, file: !926, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !925, file: !926, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !866, file: !848, line: 177, baseType: !711, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !866, file: !848, line: 178, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !960)
!960 = !{!961, !1206, !1207, !1208, !1211, !1215, !1216, !1217, !1235, !1236, !1237, !1238, !1239, !1240}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !959, file: !318, line: 219, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !964, file: !318, line: 151, baseType: !967, size: 128)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !968, file: !318, line: 150, baseType: !7, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !968, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !968, file: !318, line: 150, baseType: !973, size: 64, offset: 64)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !974, size: 64, elements: !769)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !712, line: 108, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !977)
!977 = !{!978, !979, !980, !1198, !1199, !1200, !1201, !1202, !1203, !1204}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !976, file: !318, line: 124, baseType: !958, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !976, file: !318, line: 125, baseType: !958, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !976, file: !318, line: 131, baseType: !981, size: 64, offset: 128)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !982)
!982 = !{!983, !1197}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !981, file: !318, line: 129, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !712, line: 66, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !561, line: 143, size: 192, elements: !987)
!987 = !{!988, !1195, !1196}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !986, file: !561, line: 145, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !712, line: 69, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !561, line: 136, size: 192, elements: !992)
!992 = !{!993, !1193, !1194}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !991, file: !561, line: 137, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !712, line: 58, baseType: !995)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !561, line: 737, size: 768, elements: !997)
!997 = !{!998, !1015, !1048, !1054, !1059, !1064, !1071, !1077, !1083, !1088, !1102, !1107, !1113, !1118, !1128, !1133, !1151, !1158, !1165, !1171, !1176, !1182, !1188}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !996, file: !561, line: 738, baseType: !999, size: 256)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !561, line: 271, size: 256, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !999, file: !561, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !999, file: !561, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !999, file: !561, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !999, file: !561, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !999, file: !561, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !999, file: !561, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !999, file: !561, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !999, file: !561, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !999, file: !561, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !999, file: !561, line: 312, baseType: !7, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !999, file: !561, line: 316, baseType: !795, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !999, file: !561, line: 319, baseType: !7, size: 32, offset: 96)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !999, file: !561, line: 323, baseType: !958, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !999, file: !561, line: 327, baseType: !711, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !996, file: !561, line: 739, baseType: !1016, size: 448)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !561, line: 350, size: 448, elements: !1017)
!1017 = !{!1018, !1046}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1016, file: !561, line: 353, baseType: !1019, size: 384)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !561, line: 333, size: 384, elements: !1020)
!1020 = !{!1021, !1022, !1029}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1019, file: !561, line: 336, baseType: !999, size: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1019, file: !561, line: 343, baseType: !1023, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !632, line: 37, size: 128, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1024, file: !632, line: 39, baseType: !1023, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1024, file: !632, line: 40, baseType: !1028, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1019, file: !561, line: 344, baseType: !1030, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !632, line: 45, size: 320, elements: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1031, file: !632, line: 47, baseType: !1030, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1031, file: !632, line: 48, baseType: !1035, size: 256, offset: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !1036)
!1036 = !{!1037, !1039, !1040, !1045}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1035, file: !334, line: 1884, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1035, file: !334, line: 1885, baseType: !1038, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1035, file: !334, line: 1891, baseType: !1041, size: 64, offset: 128)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !334, line: 1891, size: 64, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1041, file: !334, line: 1891, baseType: !994, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1041, file: !334, line: 1891, baseType: !711, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1035, file: !334, line: 1892, baseType: !1028, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1016, file: !561, line: 359, baseType: !1047, size: 64, offset: 384)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 64, elements: !769)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !996, file: !561, line: 740, baseType: !1049, size: 512)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !561, line: 365, size: 512, elements: !1050)
!1050 = !{!1051, !1052, !1053}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1049, file: !561, line: 368, baseType: !1019, size: 384)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1049, file: !561, line: 373, baseType: !711, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1049, file: !561, line: 374, baseType: !711, size: 64, offset: 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !996, file: !561, line: 741, baseType: !1055, size: 576)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !561, line: 380, size: 576, elements: !1056)
!1056 = !{!1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1055, file: !561, line: 383, baseType: !1049, size: 512)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1055, file: !561, line: 389, baseType: !1047, size: 64, offset: 512)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !996, file: !561, line: 742, baseType: !1060, size: 320)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !561, line: 395, size: 320, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1060, file: !561, line: 397, baseType: !999, size: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1060, file: !561, line: 400, baseType: !984, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !996, file: !561, line: 743, baseType: !1065, size: 448)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !561, line: 406, size: 448, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1065, file: !561, line: 408, baseType: !999, size: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1065, file: !561, line: 412, baseType: !711, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1065, file: !561, line: 420, baseType: !711, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1065, file: !561, line: 423, baseType: !984, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !996, file: !561, line: 744, baseType: !1072, size: 384)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !561, line: 429, size: 384, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1072, file: !561, line: 431, baseType: !999, size: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1072, file: !561, line: 434, baseType: !711, size: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1072, file: !561, line: 437, baseType: !984, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !996, file: !561, line: 745, baseType: !1078, size: 384)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !561, line: 443, size: 384, elements: !1079)
!1079 = !{!1080, !1081, !1082}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1078, file: !561, line: 445, baseType: !999, size: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1078, file: !561, line: 449, baseType: !711, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1078, file: !561, line: 453, baseType: !984, size: 64, offset: 320)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !996, file: !561, line: 746, baseType: !1084, size: 320)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !561, line: 459, size: 320, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1084, file: !561, line: 461, baseType: !999, size: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1084, file: !561, line: 464, baseType: !711, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !996, file: !561, line: 747, baseType: !1089, size: 768)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !561, line: 469, size: 768, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094, !1095}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1089, file: !561, line: 471, baseType: !999, size: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1089, file: !561, line: 474, baseType: !7, size: 32, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1089, file: !561, line: 475, baseType: !7, size: 32, offset: 288)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1089, file: !561, line: 478, baseType: !711, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1089, file: !561, line: 481, baseType: !1096, size: 384, offset: 384)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1097, size: 384, elements: !769)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !334, line: 1917, size: 384, elements: !1098)
!1098 = !{!1099, !1100, !1101}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1097, file: !334, line: 1920, baseType: !1035, size: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1097, file: !334, line: 1921, baseType: !711, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1097, file: !334, line: 1922, baseType: !795, size: 32, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !996, file: !561, line: 748, baseType: !1103, size: 320)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !561, line: 487, size: 320, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1103, file: !561, line: 490, baseType: !999, size: 256)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1103, file: !561, line: 494, baseType: !663, size: 32, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !996, file: !561, line: 749, baseType: !1108, size: 384)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !561, line: 500, size: 384, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1108, file: !561, line: 502, baseType: !999, size: 256)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1108, file: !561, line: 506, baseType: !984, size: 64, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1108, file: !561, line: 510, baseType: !984, size: 64, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !996, file: !561, line: 750, baseType: !1114, size: 320)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !561, line: 529, size: 320, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1114, file: !561, line: 531, baseType: !999, size: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1114, file: !561, line: 540, baseType: !984, size: 64, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !996, file: !561, line: 751, baseType: !1119, size: 704)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !561, line: 546, size: 704, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126, !1127}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1119, file: !561, line: 549, baseType: !1049, size: 512)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1119, file: !561, line: 553, baseType: !668, size: 64, offset: 512)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1119, file: !561, line: 557, baseType: !662, size: 8, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1119, file: !561, line: 558, baseType: !662, size: 8, offset: 584)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1119, file: !561, line: 559, baseType: !662, size: 8, offset: 592)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1119, file: !561, line: 560, baseType: !662, size: 8, offset: 600)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1119, file: !561, line: 566, baseType: !1047, size: 64, offset: 640)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !996, file: !561, line: 752, baseType: !1129, size: 384)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !561, line: 571, size: 384, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1129, file: !561, line: 573, baseType: !1060, size: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1129, file: !561, line: 577, baseType: !711, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !996, file: !561, line: 753, baseType: !1134, size: 576)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !561, line: 600, size: 576, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1141, !1150}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1134, file: !561, line: 602, baseType: !1060, size: 320)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1134, file: !561, line: 605, baseType: !711, size: 64, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1134, file: !561, line: 609, baseType: !1139, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1140, line: 46, baseType: !724)
!1140 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1134, file: !561, line: 612, baseType: !1142, size: 64, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !561, line: 581, size: 320, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1143, file: !561, line: 583, baseType: !366, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1143, file: !561, line: 586, baseType: !711, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1143, file: !561, line: 589, baseType: !711, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1143, file: !561, line: 592, baseType: !711, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1143, file: !561, line: 595, baseType: !711, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1134, file: !561, line: 616, baseType: !984, size: 64, offset: 512)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !996, file: !561, line: 754, baseType: !1152, size: 512)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !561, line: 622, size: 512, elements: !1153)
!1153 = !{!1154, !1155, !1156, !1157}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1152, file: !561, line: 624, baseType: !1060, size: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1152, file: !561, line: 628, baseType: !711, size: 64, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1152, file: !561, line: 632, baseType: !711, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1152, file: !561, line: 636, baseType: !711, size: 64, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !996, file: !561, line: 755, baseType: !1159, size: 704)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !561, line: 642, size: 704, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1159, file: !561, line: 644, baseType: !1152, size: 512)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1159, file: !561, line: 648, baseType: !711, size: 64, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1159, file: !561, line: 652, baseType: !711, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1159, file: !561, line: 653, baseType: !711, size: 64, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !996, file: !561, line: 756, baseType: !1166, size: 448)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !561, line: 663, size: 448, elements: !1167)
!1167 = !{!1168, !1169, !1170}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1166, file: !561, line: 665, baseType: !1060, size: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1166, file: !561, line: 668, baseType: !711, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1166, file: !561, line: 673, baseType: !711, size: 64, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !996, file: !561, line: 757, baseType: !1172, size: 384)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !561, line: 694, size: 384, elements: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1172, file: !561, line: 696, baseType: !1060, size: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1172, file: !561, line: 699, baseType: !711, size: 64, offset: 320)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !996, file: !561, line: 758, baseType: !1177, size: 384)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !561, line: 681, size: 384, elements: !1178)
!1178 = !{!1179, !1180, !1181}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1177, file: !561, line: 683, baseType: !999, size: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1177, file: !561, line: 686, baseType: !711, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1177, file: !561, line: 689, baseType: !711, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !996, file: !561, line: 759, baseType: !1183, size: 384)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !561, line: 707, size: 384, elements: !1184)
!1184 = !{!1185, !1186, !1187}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1183, file: !561, line: 709, baseType: !999, size: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1183, file: !561, line: 712, baseType: !711, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1183, file: !561, line: 712, baseType: !711, size: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !996, file: !561, line: 760, baseType: !1189, size: 320)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !561, line: 718, size: 320, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1189, file: !561, line: 720, baseType: !999, size: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1189, file: !561, line: 723, baseType: !711, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !991, file: !561, line: 138, baseType: !990, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !991, file: !561, line: 139, baseType: !990, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !986, file: !561, line: 146, baseType: !989, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !986, file: !561, line: 152, baseType: !984, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !981, file: !318, line: 130, baseType: !845, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !976, file: !318, line: 134, baseType: !667, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !976, file: !318, line: 137, baseType: !711, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !976, file: !318, line: 138, baseType: !795, size: 32, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !976, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !976, file: !318, line: 144, baseType: !663, size: 32, offset: 384)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !976, file: !318, line: 145, baseType: !663, size: 32, offset: 416)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !976, file: !318, line: 146, baseType: !1205, size: 64, offset: 448)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !726)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !959, file: !318, line: 220, baseType: !962, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !959, file: !318, line: 223, baseType: !667, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !959, file: !318, line: 226, baseType: !1209, size: 64, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !318, line: 185, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !959, file: !318, line: 229, baseType: !1212, size: 128, offset: 256)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1213, size: 128, elements: !913)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !959, file: !318, line: 232, baseType: !958, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !959, file: !318, line: 233, baseType: !958, size: 64, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !959, file: !318, line: 238, baseType: !1218, size: 64, offset: 512)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !1219)
!1219 = !{!1220, !1226}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1218, file: !318, line: 236, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1222, file: !318, line: 275, baseType: !984, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1222, file: !318, line: 278, baseType: !984, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1218, file: !318, line: 237, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1228, file: !318, line: 261, baseType: !845, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1228, file: !318, line: 262, baseType: !845, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1228, file: !318, line: 266, baseType: !845, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1228, file: !318, line: 267, baseType: !845, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1228, file: !318, line: 270, baseType: !663, size: 32, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !959, file: !318, line: 241, baseType: !1205, size: 64, offset: 576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !959, file: !318, line: 244, baseType: !663, size: 32, offset: 640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !959, file: !318, line: 247, baseType: !663, size: 32, offset: 672)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !959, file: !318, line: 250, baseType: !663, size: 32, offset: 704)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !959, file: !318, line: 253, baseType: !663, size: 32, offset: 736)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !959, file: !318, line: 256, baseType: !663, size: 32, offset: 768)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !866, file: !848, line: 179, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !848, line: 150, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !848, line: 142, size: 320, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1252, !1253}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1244, file: !848, line: 144, baseType: !711, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1244, file: !848, line: 145, baseType: !845, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1244, file: !848, line: 146, baseType: !845, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1244, file: !848, line: 147, baseType: !1250, size: 32, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1251, line: 31, baseType: !663)
!1251 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1244, file: !848, line: 148, baseType: !7, size: 32, offset: 224)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1244, file: !848, line: 149, baseType: !662, size: 8, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !866, file: !848, line: 180, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !848, line: 162, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !848, line: 159, size: 128, elements: !1258)
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1257, file: !848, line: 160, baseType: !711, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1257, file: !848, line: 161, baseType: !726, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !866, file: !848, line: 181, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !848, line: 181, flags: DIFlagFwdDecl)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !861, file: !848, line: 317, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 64, elements: !769)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !861, file: !848, line: 318, baseType: !1267, size: 320)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !848, line: 188, size: 320, elements: !1268)
!1268 = !{!1269, !1271, !1294}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1267, file: !848, line: 190, baseType: !1270, size: 192)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 192, elements: !744)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1267, file: !848, line: 193, baseType: !1272, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !848, line: 206, size: 320, elements: !1274)
!1274 = !{!1275, !1279, !1280, !1281, !1293}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1273, file: !848, line: 208, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !712, line: 62, baseType: !1278)
!1278 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !712, line: 61, flags: DIFlagFwdDecl)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1273, file: !848, line: 211, baseType: !7, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1273, file: !848, line: 214, baseType: !726, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1273, file: !848, line: 224, baseType: !1282, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !848, line: 202, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !848, line: 202, size: 128, elements: !1285)
!1285 = !{!1286}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1284, file: !848, line: 202, baseType: !1287, size: 128)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !848, line: 200, baseType: !1288)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !848, line: 200, size: 128, elements: !1289)
!1289 = !{!1290, !1291, !1292}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1288, file: !848, line: 200, baseType: !7, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1288, file: !848, line: 200, baseType: !7, size: 32, offset: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1288, file: !848, line: 200, baseType: !879, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1273, file: !848, line: 234, baseType: !1282, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1267, file: !848, line: 197, baseType: !726, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !861, file: !848, line: 319, baseType: !733, size: 256)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !861, file: !848, line: 320, baseType: !752, size: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !671, file: !334, line: 3384, baseType: !1298, size: 1472)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1299)
!1299 = !{!1300, !1321, !1322, !1323, !1324}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1298, file: !334, line: 3115, baseType: !1301, size: 1216)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1301, file: !334, line: 2985, baseType: !841, size: 960)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1301, file: !334, line: 2986, baseType: !711, size: 64, offset: 960)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1301, file: !334, line: 2987, baseType: !711, size: 64, offset: 1024)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1301, file: !334, line: 2988, baseType: !711, size: 64, offset: 1088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1301, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1301, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1301, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1301, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1301, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1301, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1301, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1301, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1301, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1301, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1301, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1301, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1301, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1301, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1298, file: !334, line: 3117, baseType: !711, size: 64, offset: 1216)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1298, file: !334, line: 3119, baseType: !711, size: 64, offset: 1280)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1298, file: !334, line: 3121, baseType: !711, size: 64, offset: 1344)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1298, file: !334, line: 3123, baseType: !711, size: 64, offset: 1408)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !671, file: !334, line: 3385, baseType: !1326, size: 1088)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1327)
!1327 = !{!1328, !1329, !1330}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1326, file: !334, line: 2875, baseType: !841, size: 960)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1326, file: !334, line: 2876, baseType: !845, size: 64, offset: 960)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1326, file: !334, line: 2877, baseType: !1331, size: 64, offset: 1024)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1333, line: 172, size: 128, elements: !1334)
!1333 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1332, file: !1333, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1332, file: !1333, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1332, file: !1333, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1332, file: !1333, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1332, file: !1333, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1332, file: !1333, line: 195, baseType: !7, size: 32, offset: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1332, file: !1333, line: 199, baseType: !711, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !671, file: !334, line: 3386, baseType: !1301, size: 1216)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !671, file: !334, line: 3387, baseType: !1344, size: 1280)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1345)
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1344, file: !334, line: 3094, baseType: !1301, size: 1216)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1344, file: !334, line: 3095, baseType: !1331, size: 64, offset: 1216)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !671, file: !334, line: 3388, baseType: !1349, size: 1216)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1349, file: !334, line: 2825, baseType: !803, size: 896)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1349, file: !334, line: 2827, baseType: !711, size: 64, offset: 896)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1349, file: !334, line: 2828, baseType: !711, size: 64, offset: 960)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1349, file: !334, line: 2829, baseType: !711, size: 64, offset: 1024)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1349, file: !334, line: 2830, baseType: !711, size: 64, offset: 1088)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1349, file: !334, line: 2831, baseType: !711, size: 64, offset: 1152)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !671, file: !334, line: 3389, baseType: !1358, size: 1024)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1359)
!1359 = !{!1360, !1361, !1362}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1358, file: !334, line: 2851, baseType: !841, size: 960)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1358, file: !334, line: 2852, baseType: !663, size: 32, offset: 960)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1358, file: !334, line: 2853, baseType: !663, size: 32, offset: 992)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !671, file: !334, line: 3390, baseType: !1364, size: 1024)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1364, file: !334, line: 2858, baseType: !841, size: 960)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1364, file: !334, line: 2859, baseType: !1331, size: 64, offset: 960)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !671, file: !334, line: 3391, baseType: !1369, size: 960)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1370)
!1370 = !{!1371}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1369, file: !334, line: 2863, baseType: !841, size: 960)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !671, file: !334, line: 3392, baseType: !1373, size: 1472)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1373, file: !334, line: 3305, baseType: !1298, size: 1472)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !671, file: !334, line: 3393, baseType: !1377, size: 1792)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1378)
!1378 = !{!1379, !1380, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1377, file: !334, line: 3249, baseType: !1298, size: 1472)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1377, file: !334, line: 3251, baseType: !1381, size: 64, offset: 1472)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1383, line: 463, size: 1152, elements: !1384)
!1383 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1384 = !{!1385, !1388, !1419, !1420, !1535, !1538, !1539, !1540, !1541, !1542, !1543, !1567, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1382, file: !1383, line: 464, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1383, line: 464, flags: DIFlagFwdDecl)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1382, file: !1383, line: 467, baseType: !1389, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1391)
!1391 = !{!1392, !1394, !1395, !1408, !1409, !1410, !1411, !1412, !1413, !1415, !1417, !1418}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1390, file: !318, line: 377, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !712, line: 111, baseType: !958)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1390, file: !318, line: 378, baseType: !1393, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1390, file: !318, line: 381, baseType: !1396, size: 64, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1398, file: !318, line: 282, baseType: !1401, size: 128)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1402)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1403)
!1403 = !{!1404, !1405, !1406}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1402, file: !318, line: 281, baseType: !7, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1402, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1402, file: !318, line: 281, baseType: !1407, size: 64, offset: 64)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1393, size: 64, elements: !769)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1390, file: !318, line: 384, baseType: !663, size: 32, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1390, file: !318, line: 387, baseType: !663, size: 32, offset: 224)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1390, file: !318, line: 390, baseType: !663, size: 32, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1390, file: !318, line: 394, baseType: !1396, size: 64, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1390, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1390, file: !318, line: 399, baseType: !1414, size: 64, offset: 416)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !913)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1390, file: !318, line: 402, baseType: !1416, size: 64, offset: 480)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !913)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1390, file: !318, line: 406, baseType: !663, size: 32, offset: 544)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1390, file: !318, line: 409, baseType: !663, size: 32, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1382, file: !1383, line: 470, baseType: !985, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1382, file: !1383, line: 473, baseType: !1421, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1333, line: 39, size: 1152, elements: !1423)
!1423 = !{!1424, !1474, !1487, !1499, !1500, !1512, !1513, !1517, !1518, !1519, !1520, !1521}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1422, file: !1333, line: 41, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1426, line: 144, baseType: !1427)
!1426 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1426, line: 100, size: 896, elements: !1429)
!1429 = !{!1430, !1438, !1443, !1448, !1450, !1451, !1452, !1453, !1454, !1455, !1460, !1462, !1463, !1468, !1473}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1428, file: !1426, line: 102, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1426, line: 52, baseType: !1432)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1426, line: 47, baseType: !7)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1428, file: !1426, line: 105, baseType: !1439, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1426, line: 59, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!663, !1436, !1436}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1428, file: !1426, line: 108, baseType: !1444, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1426, line: 63, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !667}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1428, file: !1426, line: 111, baseType: !1449, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1428, file: !1426, line: 114, baseType: !1139, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1428, file: !1426, line: 117, baseType: !1139, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1428, file: !1426, line: 120, baseType: !1139, size: 64, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1428, file: !1426, line: 124, baseType: !7, size: 32, offset: 448)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1428, file: !1426, line: 128, baseType: !7, size: 32, offset: 480)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1428, file: !1426, line: 131, baseType: !1456, size: 64, offset: 512)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1426, line: 75, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!667, !1139, !1139}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1428, file: !1426, line: 132, baseType: !1461, size: 64, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1426, line: 78, baseType: !1445)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1428, file: !1426, line: 135, baseType: !667, size: 64, offset: 640)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1428, file: !1426, line: 136, baseType: !1464, size: 64, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1426, line: 82, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!667, !667, !1139, !1139}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1428, file: !1426, line: 137, baseType: !1469, size: 64, offset: 768)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1426, line: 83, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{null, !667, !667}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1428, file: !1426, line: 141, baseType: !7, size: 32, offset: 832)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1422, file: !1333, line: 48, baseType: !1475, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !561, line: 35, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !561, line: 35, size: 128, elements: !1478)
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1477, file: !561, line: 35, baseType: !1480, size: 128)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !561, line: 33, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !561, line: 33, size: 128, elements: !1482)
!1482 = !{!1483, !1484, !1485}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1481, file: !561, line: 33, baseType: !7, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1481, file: !561, line: 33, baseType: !7, size: 32, offset: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1481, file: !561, line: 33, baseType: !1486, size: 64, offset: 64)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !994, size: 64, elements: !769)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1422, file: !1333, line: 51, baseType: !1488, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1490, file: !334, line: 183, baseType: !1493, size: 128)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1494)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1495)
!1495 = !{!1496, !1497, !1498}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1494, file: !334, line: 182, baseType: !7, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1494, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1494, file: !334, line: 182, baseType: !1047, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1422, file: !1333, line: 54, baseType: !711, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1422, file: !1333, line: 57, baseType: !1501, size: 128, offset: 256)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1502, line: 31, size: 128, elements: !1503)
!1502 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1509, !1510}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1501, file: !1502, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1501, file: !1502, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1501, file: !1502, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1501, file: !1502, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1501, file: !1502, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1501, file: !1502, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1501, file: !1502, line: 56, baseType: !1511, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !712, line: 47, baseType: !897)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1422, file: !1333, line: 60, baseType: !1501, size: 128, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1422, file: !1333, line: 64, baseType: !1514, size: 64, offset: 512)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1516, line: 33, flags: DIFlagFwdDecl)
!1516 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1422, file: !1333, line: 67, baseType: !711, size: 64, offset: 576)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1422, file: !1333, line: 73, baseType: !1425, size: 64, offset: 640)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1422, file: !1333, line: 77, baseType: !1511, size: 64, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1422, file: !1333, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1422, file: !1333, line: 82, baseType: !1522, size: 320, offset: 832)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !632, line: 62, size: 320, elements: !1523)
!1523 = !{!1524, !1530, !1531, !1532, !1533, !1534}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1522, file: !632, line: 63, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !632, line: 56, size: 128, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1526, file: !632, line: 57, baseType: !1525, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1526, file: !632, line: 58, baseType: !768, size: 8, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1522, file: !632, line: 64, baseType: !7, size: 32, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1522, file: !632, line: 66, baseType: !7, size: 32, offset: 96)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1522, file: !632, line: 68, baseType: !662, size: 8, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1522, file: !632, line: 70, baseType: !1023, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1522, file: !632, line: 71, baseType: !1030, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1382, file: !1383, line: 476, baseType: !1536, size: 64, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1383, line: 476, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1382, file: !1383, line: 479, baseType: !1425, size: 64, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1382, file: !1383, line: 484, baseType: !711, size: 64, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1382, file: !1383, line: 488, baseType: !711, size: 64, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1382, file: !1383, line: 493, baseType: !711, size: 64, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1382, file: !1383, line: 496, baseType: !711, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1382, file: !1383, line: 501, baseType: !1544, size: 64, offset: 640)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !1546)
!1546 = !{!1547, !1550, !1551, !1552, !1553, !1555, !1556, !1561, !1562, !1563, !1564, !1565, !1566}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1545, file: !329, line: 2356, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1545, file: !329, line: 2357, baseType: !668, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1545, file: !329, line: 2358, baseType: !663, size: 32, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1545, file: !329, line: 2359, baseType: !663, size: 32, offset: 160)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1545, file: !329, line: 2360, baseType: !1554, size: 128, offset: 192)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 128, elements: !937)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1545, file: !329, line: 2364, baseType: !663, size: 32, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1545, file: !329, line: 2367, baseType: !1557, size: 128, offset: 384)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1557, file: !329, line: 2351, baseType: !845, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1557, file: !329, line: 2352, baseType: !726, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1545, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1545, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1545, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1545, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1545, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1545, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1382, file: !1383, line: 504, baseType: !1568, size: 64, offset: 704)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1383, line: 504, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1382, file: !1383, line: 507, baseType: !1425, size: 64, offset: 768)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1382, file: !1383, line: 510, baseType: !663, size: 32, offset: 832)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1382, file: !1383, line: 513, baseType: !663, size: 32, offset: 864)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1382, file: !1383, line: 516, baseType: !795, size: 32, offset: 896)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1382, file: !1383, line: 519, baseType: !795, size: 32, offset: 928)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1382, file: !1383, line: 522, baseType: !7, size: 32, offset: 960)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1382, file: !1383, line: 523, baseType: !7, size: 32, offset: 992)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1382, file: !1383, line: 528, baseType: !668, size: 64, offset: 1024)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1382, file: !1383, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1382, file: !1383, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1382, file: !1383, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1382, file: !1383, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1382, file: !1383, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1382, file: !1383, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1382, file: !1383, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1382, file: !1383, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1382, file: !1383, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1382, file: !1383, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1382, file: !1383, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1382, file: !1383, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1382, file: !1383, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1382, file: !1383, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1382, file: !1383, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1382, file: !1383, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1377, file: !334, line: 3254, baseType: !711, size: 64, offset: 1536)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1377, file: !334, line: 3257, baseType: !711, size: 64, offset: 1600)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1377, file: !334, line: 3258, baseType: !711, size: 64, offset: 1664)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1377, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1377, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1377, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1377, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1377, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1377, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1377, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1377, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1377, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1377, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1377, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1377, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1377, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1377, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1377, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1377, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1377, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1377, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !334, line: 3394, baseType: !1616, size: 1344)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !1617)
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1616, file: !334, line: 2280, baseType: !707, size: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1616, file: !334, line: 2281, baseType: !711, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1616, file: !334, line: 2282, baseType: !711, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1616, file: !334, line: 2283, baseType: !711, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1616, file: !334, line: 2284, baseType: !711, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1616, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1616, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1616, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1616, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1616, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1616, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1616, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1616, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1616, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1616, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1616, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1616, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1616, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1616, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1616, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1616, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1616, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1616, file: !334, line: 2306, baseType: !1250, size: 32, offset: 544)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1616, file: !334, line: 2307, baseType: !711, size: 64, offset: 576)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1616, file: !334, line: 2308, baseType: !711, size: 64, offset: 640)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1616, file: !334, line: 2314, baseType: !1644, size: 64, offset: 704)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !1645)
!1645 = !{!1646, !1647, !1648}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1644, file: !334, line: 2310, baseType: !663, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1644, file: !334, line: 2311, baseType: !668, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1644, file: !334, line: 2312, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1616, file: !334, line: 2315, baseType: !711, size: 64, offset: 768)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1616, file: !334, line: 2316, baseType: !711, size: 64, offset: 832)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1616, file: !334, line: 2317, baseType: !711, size: 64, offset: 896)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1616, file: !334, line: 2318, baseType: !711, size: 64, offset: 960)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1616, file: !334, line: 2319, baseType: !711, size: 64, offset: 1024)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1616, file: !334, line: 2320, baseType: !711, size: 64, offset: 1088)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1616, file: !334, line: 2321, baseType: !711, size: 64, offset: 1152)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1616, file: !334, line: 2322, baseType: !711, size: 64, offset: 1216)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1616, file: !334, line: 2324, baseType: !1660, size: 64, offset: 1280)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !671, file: !334, line: 3395, baseType: !1663, size: 320)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !1664)
!1664 = !{!1665, !1666, !1667}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1663, file: !334, line: 1470, baseType: !707, size: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1663, file: !334, line: 1471, baseType: !711, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1663, file: !334, line: 1472, baseType: !711, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !671, file: !334, line: 3396, baseType: !1669, size: 320)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !1670)
!1670 = !{!1671, !1672, !1673}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1669, file: !334, line: 1483, baseType: !707, size: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1669, file: !334, line: 1484, baseType: !663, size: 32, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1669, file: !334, line: 1485, baseType: !1047, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !671, file: !334, line: 3397, baseType: !1675, size: 384)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !1676)
!1676 = !{!1677, !1678, !1679, !1680}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1675, file: !334, line: 1830, baseType: !707, size: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1675, file: !334, line: 1831, baseType: !795, size: 32, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1675, file: !334, line: 1832, baseType: !711, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1675, file: !334, line: 1835, baseType: !1047, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !671, file: !334, line: 3398, baseType: !1682, size: 704)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !1683)
!1683 = !{!1684, !1685, !1686, !1687, !1688, !1693}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1682, file: !334, line: 1899, baseType: !707, size: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1682, file: !334, line: 1902, baseType: !711, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1682, file: !334, line: 1905, baseType: !994, size: 64, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1682, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1682, file: !334, line: 1911, baseType: !1689, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1333, line: 117, size: 128, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1690, file: !1333, line: 120, baseType: !1501, size: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1682, file: !334, line: 1914, baseType: !1035, size: 256, offset: 448)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !671, file: !334, line: 3399, baseType: !1695, size: 704)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !1696)
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1695, file: !334, line: 2009, baseType: !707, size: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1695, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1695, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1695, file: !334, line: 2014, baseType: !795, size: 32, offset: 224)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1695, file: !334, line: 2016, baseType: !711, size: 64, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1695, file: !334, line: 2017, baseType: !1488, size: 64, offset: 320)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1695, file: !334, line: 2019, baseType: !711, size: 64, offset: 384)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1695, file: !334, line: 2020, baseType: !711, size: 64, offset: 448)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1695, file: !334, line: 2021, baseType: !711, size: 64, offset: 512)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1695, file: !334, line: 2022, baseType: !711, size: 64, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1695, file: !334, line: 2023, baseType: !711, size: 64, offset: 640)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !671, file: !334, line: 3400, baseType: !1709, size: 832)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1709, file: !334, line: 2431, baseType: !707, size: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1709, file: !334, line: 2433, baseType: !711, size: 64, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1709, file: !334, line: 2434, baseType: !711, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1709, file: !334, line: 2435, baseType: !711, size: 64, offset: 320)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1709, file: !334, line: 2436, baseType: !711, size: 64, offset: 384)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1709, file: !334, line: 2437, baseType: !1488, size: 64, offset: 448)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1709, file: !334, line: 2438, baseType: !711, size: 64, offset: 512)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1709, file: !334, line: 2440, baseType: !711, size: 64, offset: 576)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1709, file: !334, line: 2441, baseType: !711, size: 64, offset: 640)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1709, file: !334, line: 2443, baseType: !1721, size: 128, offset: 704)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !1723)
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1722, file: !334, line: 182, baseType: !1493, size: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !671, file: !334, line: 3401, baseType: !1726, size: 320)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !1727)
!1727 = !{!1728, !1729, !1736}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1726, file: !334, line: 3329, baseType: !707, size: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1726, file: !334, line: 3330, baseType: !1730, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !1732)
!1732 = !{!1733, !1734, !1735}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1731, file: !334, line: 3322, baseType: !1730, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1731, file: !334, line: 3323, baseType: !1730, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1731, file: !334, line: 3324, baseType: !711, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1726, file: !334, line: 3331, baseType: !1730, size: 64, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !671, file: !334, line: 3402, baseType: !1738, size: 256)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !1739)
!1739 = !{!1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1738, file: !334, line: 1541, baseType: !707, size: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1738, file: !334, line: 1542, baseType: !1742, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !1745)
!1745 = !{!1746}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1744, file: !334, line: 1538, baseType: !1747, size: 192)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !1749)
!1749 = !{!1750, !1751, !1752}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1748, file: !334, line: 1537, baseType: !7, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1748, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1748, file: !334, line: 1537, baseType: !1753, size: 128, offset: 64)
!1753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1754, size: 128, elements: !769)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !1755)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1755, file: !334, line: 1533, baseType: !711, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1755, file: !334, line: 1534, baseType: !711, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !671, file: !334, line: 3403, baseType: !1760, size: 512)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765, !1771, !1772, !1773}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1760, file: !334, line: 1939, baseType: !707, size: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1760, file: !334, line: 1940, baseType: !795, size: 32, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1760, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1760, file: !334, line: 1946, baseType: !1766, size: 32, offset: 256)
!1766 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !1767)
!1767 = !{!1768, !1769, !1770}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1766, file: !334, line: 1943, baseType: !352, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1766, file: !334, line: 1944, baseType: !359, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1766, file: !334, line: 1945, baseType: !366, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1760, file: !334, line: 1950, baseType: !984, size: 64, offset: 320)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1760, file: !334, line: 1951, baseType: !984, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1760, file: !334, line: 1953, baseType: !1047, size: 64, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !671, file: !334, line: 3404, baseType: !1775, size: 1664)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1775, file: !334, line: 3338, baseType: !707, size: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1775, file: !334, line: 3341, baseType: !1779, size: 1472, offset: 192)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1780, line: 410, size: 1472, elements: !1781)
!1780 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1781 = !{!1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1779, file: !1780, line: 412, baseType: !663, size: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1779, file: !1780, line: 413, baseType: !663, size: 32, offset: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1779, file: !1780, line: 414, baseType: !663, size: 32, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1779, file: !1780, line: 415, baseType: !663, size: 32, offset: 96)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1779, file: !1780, line: 416, baseType: !663, size: 32, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1779, file: !1780, line: 417, baseType: !663, size: 32, offset: 160)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1779, file: !1780, line: 418, baseType: !662, size: 8, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1779, file: !1780, line: 419, baseType: !662, size: 8, offset: 200)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1779, file: !1780, line: 420, baseType: !1791, size: 8, offset: 208)
!1791 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1779, file: !1780, line: 421, baseType: !1791, size: 8, offset: 216)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1779, file: !1780, line: 422, baseType: !1791, size: 8, offset: 224)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1779, file: !1780, line: 423, baseType: !1791, size: 8, offset: 232)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1779, file: !1780, line: 424, baseType: !1791, size: 8, offset: 240)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1779, file: !1780, line: 425, baseType: !1791, size: 8, offset: 248)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1779, file: !1780, line: 426, baseType: !1791, size: 8, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1779, file: !1780, line: 427, baseType: !1791, size: 8, offset: 264)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1779, file: !1780, line: 428, baseType: !1791, size: 8, offset: 272)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1779, file: !1780, line: 429, baseType: !1791, size: 8, offset: 280)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1779, file: !1780, line: 430, baseType: !1791, size: 8, offset: 288)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1779, file: !1780, line: 431, baseType: !1791, size: 8, offset: 296)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1779, file: !1780, line: 432, baseType: !1791, size: 8, offset: 304)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1779, file: !1780, line: 433, baseType: !1791, size: 8, offset: 312)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1779, file: !1780, line: 434, baseType: !1791, size: 8, offset: 320)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1779, file: !1780, line: 435, baseType: !1791, size: 8, offset: 328)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1779, file: !1780, line: 436, baseType: !1791, size: 8, offset: 336)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1779, file: !1780, line: 437, baseType: !1791, size: 8, offset: 344)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1779, file: !1780, line: 438, baseType: !1791, size: 8, offset: 352)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1779, file: !1780, line: 439, baseType: !1791, size: 8, offset: 360)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1779, file: !1780, line: 440, baseType: !1791, size: 8, offset: 368)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1779, file: !1780, line: 441, baseType: !1791, size: 8, offset: 376)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1779, file: !1780, line: 442, baseType: !1791, size: 8, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1779, file: !1780, line: 443, baseType: !1791, size: 8, offset: 392)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1779, file: !1780, line: 444, baseType: !1791, size: 8, offset: 400)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1779, file: !1780, line: 445, baseType: !1791, size: 8, offset: 408)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1779, file: !1780, line: 446, baseType: !1791, size: 8, offset: 416)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1779, file: !1780, line: 447, baseType: !1791, size: 8, offset: 424)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1779, file: !1780, line: 448, baseType: !1791, size: 8, offset: 432)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1779, file: !1780, line: 449, baseType: !1791, size: 8, offset: 440)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1779, file: !1780, line: 450, baseType: !1791, size: 8, offset: 448)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1779, file: !1780, line: 451, baseType: !1791, size: 8, offset: 456)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1779, file: !1780, line: 452, baseType: !1791, size: 8, offset: 464)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1779, file: !1780, line: 453, baseType: !1791, size: 8, offset: 472)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1779, file: !1780, line: 454, baseType: !1791, size: 8, offset: 480)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1779, file: !1780, line: 455, baseType: !1791, size: 8, offset: 488)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1779, file: !1780, line: 456, baseType: !1791, size: 8, offset: 496)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1779, file: !1780, line: 457, baseType: !1791, size: 8, offset: 504)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1779, file: !1780, line: 458, baseType: !1791, size: 8, offset: 512)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1779, file: !1780, line: 459, baseType: !1791, size: 8, offset: 520)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1779, file: !1780, line: 460, baseType: !1791, size: 8, offset: 528)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1779, file: !1780, line: 461, baseType: !1791, size: 8, offset: 536)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1779, file: !1780, line: 462, baseType: !1791, size: 8, offset: 544)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1779, file: !1780, line: 463, baseType: !1791, size: 8, offset: 552)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1779, file: !1780, line: 464, baseType: !1791, size: 8, offset: 560)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1779, file: !1780, line: 465, baseType: !1791, size: 8, offset: 568)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1779, file: !1780, line: 466, baseType: !1791, size: 8, offset: 576)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1779, file: !1780, line: 467, baseType: !1791, size: 8, offset: 584)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1779, file: !1780, line: 468, baseType: !1791, size: 8, offset: 592)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1779, file: !1780, line: 469, baseType: !1791, size: 8, offset: 600)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1779, file: !1780, line: 470, baseType: !1791, size: 8, offset: 608)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1779, file: !1780, line: 471, baseType: !1791, size: 8, offset: 616)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1779, file: !1780, line: 472, baseType: !1791, size: 8, offset: 624)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1779, file: !1780, line: 473, baseType: !1791, size: 8, offset: 632)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1779, file: !1780, line: 474, baseType: !1791, size: 8, offset: 640)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1779, file: !1780, line: 475, baseType: !1791, size: 8, offset: 648)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1779, file: !1780, line: 476, baseType: !1791, size: 8, offset: 656)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1779, file: !1780, line: 477, baseType: !1791, size: 8, offset: 664)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1779, file: !1780, line: 478, baseType: !1791, size: 8, offset: 672)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1779, file: !1780, line: 479, baseType: !1791, size: 8, offset: 680)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1779, file: !1780, line: 480, baseType: !1791, size: 8, offset: 688)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1779, file: !1780, line: 481, baseType: !1791, size: 8, offset: 696)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1779, file: !1780, line: 482, baseType: !1791, size: 8, offset: 704)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1779, file: !1780, line: 483, baseType: !1791, size: 8, offset: 712)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1779, file: !1780, line: 484, baseType: !1791, size: 8, offset: 720)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1779, file: !1780, line: 485, baseType: !1791, size: 8, offset: 728)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1779, file: !1780, line: 486, baseType: !1791, size: 8, offset: 736)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1779, file: !1780, line: 487, baseType: !1791, size: 8, offset: 744)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1779, file: !1780, line: 488, baseType: !1791, size: 8, offset: 752)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1779, file: !1780, line: 489, baseType: !1791, size: 8, offset: 760)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1779, file: !1780, line: 490, baseType: !1791, size: 8, offset: 768)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1779, file: !1780, line: 491, baseType: !1791, size: 8, offset: 776)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1779, file: !1780, line: 492, baseType: !1791, size: 8, offset: 784)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1779, file: !1780, line: 493, baseType: !1791, size: 8, offset: 792)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1779, file: !1780, line: 494, baseType: !1791, size: 8, offset: 800)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1779, file: !1780, line: 495, baseType: !1791, size: 8, offset: 808)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1779, file: !1780, line: 496, baseType: !1791, size: 8, offset: 816)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1779, file: !1780, line: 497, baseType: !1791, size: 8, offset: 824)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1779, file: !1780, line: 498, baseType: !1791, size: 8, offset: 832)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1779, file: !1780, line: 499, baseType: !1791, size: 8, offset: 840)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1779, file: !1780, line: 500, baseType: !1791, size: 8, offset: 848)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1779, file: !1780, line: 501, baseType: !1791, size: 8, offset: 856)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1779, file: !1780, line: 502, baseType: !1791, size: 8, offset: 864)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1779, file: !1780, line: 503, baseType: !1791, size: 8, offset: 872)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1779, file: !1780, line: 504, baseType: !1791, size: 8, offset: 880)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1779, file: !1780, line: 505, baseType: !1791, size: 8, offset: 888)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1779, file: !1780, line: 506, baseType: !1791, size: 8, offset: 896)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1779, file: !1780, line: 507, baseType: !1791, size: 8, offset: 904)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1779, file: !1780, line: 508, baseType: !1791, size: 8, offset: 912)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1779, file: !1780, line: 509, baseType: !1791, size: 8, offset: 920)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1779, file: !1780, line: 510, baseType: !1791, size: 8, offset: 928)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1779, file: !1780, line: 511, baseType: !1791, size: 8, offset: 936)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1779, file: !1780, line: 512, baseType: !1791, size: 8, offset: 944)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1779, file: !1780, line: 513, baseType: !1791, size: 8, offset: 952)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1779, file: !1780, line: 514, baseType: !1791, size: 8, offset: 960)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1779, file: !1780, line: 515, baseType: !1791, size: 8, offset: 968)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1779, file: !1780, line: 516, baseType: !1791, size: 8, offset: 976)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1779, file: !1780, line: 517, baseType: !1791, size: 8, offset: 984)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1779, file: !1780, line: 518, baseType: !1791, size: 8, offset: 992)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1779, file: !1780, line: 519, baseType: !1791, size: 8, offset: 1000)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1779, file: !1780, line: 520, baseType: !1791, size: 8, offset: 1008)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1779, file: !1780, line: 521, baseType: !1791, size: 8, offset: 1016)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1779, file: !1780, line: 522, baseType: !1791, size: 8, offset: 1024)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1779, file: !1780, line: 523, baseType: !1791, size: 8, offset: 1032)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1779, file: !1780, line: 524, baseType: !1791, size: 8, offset: 1040)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1779, file: !1780, line: 525, baseType: !1791, size: 8, offset: 1048)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1779, file: !1780, line: 526, baseType: !1791, size: 8, offset: 1056)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1779, file: !1780, line: 527, baseType: !1791, size: 8, offset: 1064)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1779, file: !1780, line: 528, baseType: !1791, size: 8, offset: 1072)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1779, file: !1780, line: 529, baseType: !1791, size: 8, offset: 1080)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1779, file: !1780, line: 530, baseType: !1791, size: 8, offset: 1088)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1779, file: !1780, line: 531, baseType: !1791, size: 8, offset: 1096)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1779, file: !1780, line: 532, baseType: !1791, size: 8, offset: 1104)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1779, file: !1780, line: 533, baseType: !1791, size: 8, offset: 1112)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1779, file: !1780, line: 534, baseType: !1791, size: 8, offset: 1120)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1779, file: !1780, line: 535, baseType: !1791, size: 8, offset: 1128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1779, file: !1780, line: 536, baseType: !1791, size: 8, offset: 1136)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1779, file: !1780, line: 537, baseType: !1791, size: 8, offset: 1144)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1779, file: !1780, line: 538, baseType: !1791, size: 8, offset: 1152)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1779, file: !1780, line: 539, baseType: !1791, size: 8, offset: 1160)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1779, file: !1780, line: 540, baseType: !1791, size: 8, offset: 1168)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1779, file: !1780, line: 541, baseType: !1791, size: 8, offset: 1176)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1779, file: !1780, line: 542, baseType: !1791, size: 8, offset: 1184)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1779, file: !1780, line: 543, baseType: !1791, size: 8, offset: 1192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1779, file: !1780, line: 544, baseType: !1791, size: 8, offset: 1200)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1779, file: !1780, line: 545, baseType: !1791, size: 8, offset: 1208)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1779, file: !1780, line: 546, baseType: !1791, size: 8, offset: 1216)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1779, file: !1780, line: 547, baseType: !1791, size: 8, offset: 1224)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1779, file: !1780, line: 548, baseType: !1791, size: 8, offset: 1232)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1779, file: !1780, line: 549, baseType: !1791, size: 8, offset: 1240)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1779, file: !1780, line: 550, baseType: !1791, size: 8, offset: 1248)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1779, file: !1780, line: 551, baseType: !1791, size: 8, offset: 1256)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1779, file: !1780, line: 552, baseType: !1791, size: 8, offset: 1264)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1779, file: !1780, line: 553, baseType: !1791, size: 8, offset: 1272)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1779, file: !1780, line: 554, baseType: !1791, size: 8, offset: 1280)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1779, file: !1780, line: 555, baseType: !1791, size: 8, offset: 1288)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1779, file: !1780, line: 556, baseType: !1791, size: 8, offset: 1296)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1779, file: !1780, line: 557, baseType: !1791, size: 8, offset: 1304)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1779, file: !1780, line: 558, baseType: !1791, size: 8, offset: 1312)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1779, file: !1780, line: 559, baseType: !1791, size: 8, offset: 1320)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1779, file: !1780, line: 560, baseType: !1791, size: 8, offset: 1328)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1779, file: !1780, line: 561, baseType: !1791, size: 8, offset: 1336)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1779, file: !1780, line: 562, baseType: !1791, size: 8, offset: 1344)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1779, file: !1780, line: 563, baseType: !1791, size: 8, offset: 1352)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1779, file: !1780, line: 564, baseType: !1791, size: 8, offset: 1360)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1779, file: !1780, line: 565, baseType: !1791, size: 8, offset: 1368)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1779, file: !1780, line: 566, baseType: !1791, size: 8, offset: 1376)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1779, file: !1780, line: 567, baseType: !1791, size: 8, offset: 1384)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1779, file: !1780, line: 568, baseType: !1791, size: 8, offset: 1392)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1779, file: !1780, line: 569, baseType: !1791, size: 8, offset: 1400)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1779, file: !1780, line: 570, baseType: !1791, size: 8, offset: 1408)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1779, file: !1780, line: 571, baseType: !1791, size: 8, offset: 1416)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1779, file: !1780, line: 572, baseType: !1791, size: 8, offset: 1424)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1779, file: !1780, line: 573, baseType: !1791, size: 8, offset: 1432)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1779, file: !1780, line: 574, baseType: !1791, size: 8, offset: 1440)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !671, file: !334, line: 3405, baseType: !1947, size: 384)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !1948)
!1948 = !{!1949, !1950}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1947, file: !334, line: 3353, baseType: !707, size: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1947, file: !334, line: 3356, baseType: !1951, size: 192, offset: 192)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1780, line: 578, size: 192, elements: !1952)
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1951, file: !1780, line: 580, baseType: !663, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1951, file: !1780, line: 581, baseType: !663, size: 32, offset: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1951, file: !1780, line: 582, baseType: !663, size: 32, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1951, file: !1780, line: 583, baseType: !663, size: 32, offset: 96)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1951, file: !1780, line: 584, baseType: !662, size: 8, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1951, file: !1780, line: 585, baseType: !662, size: 8, offset: 136)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1951, file: !1780, line: 586, baseType: !662, size: 8, offset: 144)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1951, file: !1780, line: 587, baseType: !662, size: 8, offset: 152)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1951, file: !1780, line: 588, baseType: !662, size: 8, offset: 160)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1951, file: !1780, line: 589, baseType: !662, size: 8, offset: 168)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1951, file: !1780, line: 590, baseType: !662, size: 8, offset: 176)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !996)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !632, line: 30, baseType: !1969)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !334, line: 1893, baseType: !1035)
!1971 = !{!0, !1972}
!1972 = !DIGlobalVariableExpression(var: !1973, expr: !DIExpression())
!1973 = distinct !DIGlobalVariable(name: "cfg_changed", scope: !2, file: !3, line: 167, type: !662, isLocal: true, isDefinition: true)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !1975)
!1975 = !{!1976}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1974, file: !6, line: 158, baseType: !1977, size: 640)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1985, !1989, !1991, !1992, !1993, !1995, !1996, !1997, !1998, !1999}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1977, file: !6, line: 117, baseType: !5, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1977, file: !6, line: 121, baseType: !668, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1977, file: !6, line: 125, baseType: !1982, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!662}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1977, file: !6, line: 130, baseType: !1986, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!7}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1977, file: !6, line: 133, baseType: !1990, size: 64, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1977, file: !6, line: 136, baseType: !1990, size: 64, offset: 320)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1977, file: !6, line: 139, baseType: !663, size: 32, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1977, file: !6, line: 143, baseType: !1994, size: 32, offset: 416)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1977, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1977, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1977, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1977, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1977, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2000 = !DIGlobalVariableExpression(var: !1973, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2001 = !{i32 2, !"Dwarf Version", i32 4}
!2002 = !{i32 2, !"Debug Info Version", i32 3}
!2003 = !{i32 1, !"wchar_size", i32 4}
!2004 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2005 = distinct !DISubprogram(name: "vprintf", scope: !2006, file: !2006, line: 39, type: !2007, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2017)
!2006 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!663, !2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !668)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2011, file: !3, baseType: !7, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2011, file: !3, baseType: !7, size: 32, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2011, file: !3, baseType: !667, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2011, file: !3, baseType: !667, size: 64, offset: 128)
!2017 = !{!2018, !2019}
!2018 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2005, file: !2006, line: 39, type: !2009)
!2019 = !DILocalVariable(name: "__arg", arg: 2, scope: !2005, file: !2006, line: 39, type: !2010)
!2020 = !DILocation(line: 0, scope: !2005)
!2021 = !DILocation(line: 41, column: 20, scope: !2005)
!2022 = !DILocation(line: 41, column: 10, scope: !2005)
!2023 = !DILocation(line: 41, column: 3, scope: !2005)
!2024 = distinct !DISubprogram(name: "getchar", scope: !2006, file: !2006, line: 47, type: !2025, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2027)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!663}
!2027 = !{}
!2028 = !DILocation(line: 49, column: 16, scope: !2024)
!2029 = !DILocation(line: 49, column: 10, scope: !2024)
!2030 = !DILocation(line: 49, column: 3, scope: !2024)
!2031 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2006, file: !2006, line: 56, type: !2032, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2085)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!663, !2034}
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2036, line: 7, baseType: !2037)
!2036 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2038, line: 49, size: 1728, elements: !2039)
!2038 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2039 = !{!2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2055, !2057, !2058, !2059, !2062, !2064, !2065, !2066, !2069, !2071, !2074, !2077, !2078, !2079, !2080, !2081}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2037, file: !2038, line: 51, baseType: !663, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2037, file: !2038, line: 54, baseType: !665, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2037, file: !2038, line: 55, baseType: !665, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2037, file: !2038, line: 56, baseType: !665, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2037, file: !2038, line: 57, baseType: !665, size: 64, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2037, file: !2038, line: 58, baseType: !665, size: 64, offset: 320)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2037, file: !2038, line: 59, baseType: !665, size: 64, offset: 384)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2037, file: !2038, line: 60, baseType: !665, size: 64, offset: 448)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2037, file: !2038, line: 61, baseType: !665, size: 64, offset: 512)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2037, file: !2038, line: 64, baseType: !665, size: 64, offset: 576)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2037, file: !2038, line: 65, baseType: !665, size: 64, offset: 640)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2037, file: !2038, line: 66, baseType: !665, size: 64, offset: 704)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2037, file: !2038, line: 68, baseType: !2053, size: 64, offset: 768)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2038, line: 36, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2037, file: !2038, line: 70, baseType: !2056, size: 64, offset: 832)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2037, file: !2038, line: 72, baseType: !663, size: 32, offset: 896)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2037, file: !2038, line: 73, baseType: !663, size: 32, offset: 928)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2037, file: !2038, line: 74, baseType: !2060, size: 64, offset: 960)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2061, line: 152, baseType: !726)
!2061 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2037, file: !2038, line: 77, baseType: !2063, size: 16, offset: 1024)
!2063 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2037, file: !2038, line: 78, baseType: !1791, size: 8, offset: 1040)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2037, file: !2038, line: 79, baseType: !768, size: 8, offset: 1048)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2037, file: !2038, line: 81, baseType: !2067, size: 64, offset: 1088)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2038, line: 43, baseType: null)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2037, file: !2038, line: 89, baseType: !2070, size: 64, offset: 1152)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2061, line: 153, baseType: !726)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2037, file: !2038, line: 91, baseType: !2072, size: 64, offset: 1216)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2038, line: 37, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2037, file: !2038, line: 92, baseType: !2075, size: 64, offset: 1280)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2038, line: 38, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2037, file: !2038, line: 93, baseType: !2056, size: 64, offset: 1344)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2037, file: !2038, line: 94, baseType: !667, size: 64, offset: 1408)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2037, file: !2038, line: 95, baseType: !1139, size: 64, offset: 1472)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2037, file: !2038, line: 96, baseType: !663, size: 32, offset: 1536)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2037, file: !2038, line: 98, baseType: !2082, size: 160, offset: 1568)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 160, elements: !2083)
!2083 = !{!2084}
!2084 = !DISubrange(count: 20)
!2085 = !{!2086}
!2086 = !DILocalVariable(name: "__fp", arg: 1, scope: !2031, file: !2006, line: 56, type: !2034)
!2087 = !DILocation(line: 0, scope: !2031)
!2088 = !DILocation(line: 58, column: 10, scope: !2031)
!2089 = !DILocation(line: 58, column: 3, scope: !2031)
!2090 = distinct !DISubprogram(name: "getc_unlocked", scope: !2006, file: !2006, line: 66, type: !2032, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2091)
!2091 = !{!2092}
!2092 = !DILocalVariable(name: "__fp", arg: 1, scope: !2090, file: !2006, line: 66, type: !2034)
!2093 = !DILocation(line: 0, scope: !2090)
!2094 = !DILocation(line: 68, column: 10, scope: !2090)
!2095 = !DILocation(line: 68, column: 3, scope: !2090)
!2096 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2006, file: !2006, line: 73, type: !2025, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2027)
!2097 = !DILocation(line: 75, column: 10, scope: !2096)
!2098 = !DILocation(line: 75, column: 3, scope: !2096)
!2099 = distinct !DISubprogram(name: "putchar", scope: !2006, file: !2006, line: 82, type: !2100, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!663, !663}
!2102 = !{!2103}
!2103 = !DILocalVariable(name: "__c", arg: 1, scope: !2099, file: !2006, line: 82, type: !663)
!2104 = !DILocation(line: 0, scope: !2099)
!2105 = !DILocation(line: 84, column: 21, scope: !2099)
!2106 = !DILocation(line: 84, column: 10, scope: !2099)
!2107 = !DILocation(line: 84, column: 3, scope: !2099)
!2108 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2006, file: !2006, line: 91, type: !2109, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2111)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!663, !663, !2034}
!2111 = !{!2112, !2113}
!2112 = !DILocalVariable(name: "__c", arg: 1, scope: !2108, file: !2006, line: 91, type: !663)
!2113 = !DILocalVariable(name: "__stream", arg: 2, scope: !2108, file: !2006, line: 91, type: !2034)
!2114 = !DILocation(line: 0, scope: !2108)
!2115 = !DILocation(line: 93, column: 10, scope: !2108)
!2116 = !DILocation(line: 93, column: 3, scope: !2108)
!2117 = distinct !DISubprogram(name: "putc_unlocked", scope: !2006, file: !2006, line: 101, type: !2109, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2118 = !{!2119, !2120}
!2119 = !DILocalVariable(name: "__c", arg: 1, scope: !2117, file: !2006, line: 101, type: !663)
!2120 = !DILocalVariable(name: "__stream", arg: 2, scope: !2117, file: !2006, line: 101, type: !2034)
!2121 = !DILocation(line: 0, scope: !2117)
!2122 = !DILocation(line: 103, column: 10, scope: !2117)
!2123 = !DILocation(line: 103, column: 3, scope: !2117)
!2124 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2006, file: !2006, line: 108, type: !2100, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2125)
!2125 = !{!2126}
!2126 = !DILocalVariable(name: "__c", arg: 1, scope: !2124, file: !2006, line: 108, type: !663)
!2127 = !DILocation(line: 0, scope: !2124)
!2128 = !DILocation(line: 110, column: 10, scope: !2124)
!2129 = !DILocation(line: 110, column: 3, scope: !2124)
!2130 = distinct !DISubprogram(name: "getline", scope: !2006, file: !2006, line: 118, type: !2131, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!2133, !664, !2134, !2034}
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2061, line: 193, baseType: !726)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!2135 = !{!2136, !2137, !2138}
!2136 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2130, file: !2006, line: 118, type: !664)
!2137 = !DILocalVariable(name: "__n", arg: 2, scope: !2130, file: !2006, line: 118, type: !2134)
!2138 = !DILocalVariable(name: "__stream", arg: 3, scope: !2130, file: !2006, line: 118, type: !2034)
!2139 = !DILocation(line: 0, scope: !2130)
!2140 = !DILocation(line: 120, column: 10, scope: !2130)
!2141 = !DILocation(line: 120, column: 3, scope: !2130)
!2142 = distinct !DISubprogram(name: "feof_unlocked", scope: !2006, file: !2006, line: 128, type: !2032, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2143)
!2143 = !{!2144}
!2144 = !DILocalVariable(name: "__stream", arg: 1, scope: !2142, file: !2006, line: 128, type: !2034)
!2145 = !DILocation(line: 0, scope: !2142)
!2146 = !DILocation(line: 130, column: 10, scope: !2142)
!2147 = !DILocation(line: 130, column: 3, scope: !2142)
!2148 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2006, file: !2006, line: 135, type: !2032, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2149)
!2149 = !{!2150}
!2150 = !DILocalVariable(name: "__stream", arg: 1, scope: !2148, file: !2006, line: 135, type: !2034)
!2151 = !DILocation(line: 0, scope: !2148)
!2152 = !DILocation(line: 137, column: 10, scope: !2148)
!2153 = !DILocation(line: 137, column: 3, scope: !2148)
!2154 = distinct !DISubprogram(name: "tolower", scope: !2155, file: !2155, line: 207, type: !2100, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2155 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2156 = !{!2157}
!2157 = !DILocalVariable(name: "__c", arg: 1, scope: !2154, file: !2155, line: 207, type: !663)
!2158 = !DILocation(line: 0, scope: !2154)
!2159 = !DILocation(line: 209, column: 22, scope: !2154)
!2160 = !DILocation(line: 209, column: 39, scope: !2154)
!2161 = !DILocation(line: 209, column: 38, scope: !2154)
!2162 = !DILocation(line: 209, column: 37, scope: !2154)
!2163 = !DILocation(line: 209, column: 10, scope: !2154)
!2164 = !DILocation(line: 209, column: 3, scope: !2154)
!2165 = distinct !DISubprogram(name: "toupper", scope: !2155, file: !2155, line: 213, type: !2100, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2166 = !{!2167}
!2167 = !DILocalVariable(name: "__c", arg: 1, scope: !2165, file: !2155, line: 213, type: !663)
!2168 = !DILocation(line: 0, scope: !2165)
!2169 = !DILocation(line: 215, column: 22, scope: !2165)
!2170 = !DILocation(line: 215, column: 39, scope: !2165)
!2171 = !DILocation(line: 215, column: 38, scope: !2165)
!2172 = !DILocation(line: 215, column: 37, scope: !2165)
!2173 = !DILocation(line: 215, column: 10, scope: !2165)
!2174 = !DILocation(line: 215, column: 3, scope: !2165)
!2175 = distinct !DISubprogram(name: "atoi", scope: !2176, file: !2176, line: 361, type: !2177, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2179)
!2176 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!663, !668}
!2179 = !{!2180}
!2180 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2175, file: !2176, line: 361, type: !668)
!2181 = !DILocation(line: 0, scope: !2175)
!2182 = !DILocation(line: 363, column: 16, scope: !2175)
!2183 = !DILocation(line: 363, column: 10, scope: !2175)
!2184 = !DILocation(line: 363, column: 3, scope: !2175)
!2185 = distinct !DISubprogram(name: "atol", scope: !2176, file: !2176, line: 366, type: !2186, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!726, !668}
!2188 = !{!2189}
!2189 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2185, file: !2176, line: 366, type: !668)
!2190 = !DILocation(line: 0, scope: !2185)
!2191 = !DILocation(line: 368, column: 10, scope: !2185)
!2192 = !DILocation(line: 368, column: 3, scope: !2185)
!2193 = distinct !DISubprogram(name: "atoll", scope: !2176, file: !2176, line: 373, type: !2194, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2197)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!2196, !668}
!2196 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2197 = !{!2198}
!2198 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2193, file: !2176, line: 373, type: !668)
!2199 = !DILocation(line: 0, scope: !2193)
!2200 = !DILocation(line: 375, column: 10, scope: !2193)
!2201 = !DILocation(line: 375, column: 3, scope: !2193)
!2202 = distinct !DISubprogram(name: "bsearch", scope: !2203, file: !2203, line: 20, type: !2204, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2207)
!2203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!667, !1436, !1436, !1139, !1139, !2206}
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2176, line: 808, baseType: !1440)
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217}
!2208 = !DILocalVariable(name: "__key", arg: 1, scope: !2202, file: !2203, line: 20, type: !1436)
!2209 = !DILocalVariable(name: "__base", arg: 2, scope: !2202, file: !2203, line: 20, type: !1436)
!2210 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2202, file: !2203, line: 20, type: !1139)
!2211 = !DILocalVariable(name: "__size", arg: 4, scope: !2202, file: !2203, line: 20, type: !1139)
!2212 = !DILocalVariable(name: "__compar", arg: 5, scope: !2202, file: !2203, line: 21, type: !2206)
!2213 = !DILocalVariable(name: "__l", scope: !2202, file: !2203, line: 23, type: !1139)
!2214 = !DILocalVariable(name: "__u", scope: !2202, file: !2203, line: 23, type: !1139)
!2215 = !DILocalVariable(name: "__idx", scope: !2202, file: !2203, line: 23, type: !1139)
!2216 = !DILocalVariable(name: "__p", scope: !2202, file: !2203, line: 24, type: !1436)
!2217 = !DILocalVariable(name: "__comparison", scope: !2202, file: !2203, line: 25, type: !663)
!2218 = !DILocation(line: 0, scope: !2202)
!2219 = !DILocation(line: 29, column: 3, scope: !2202)
!2220 = !DILocation(line: 27, column: 7, scope: !2202)
!2221 = !DILocation(line: 29, column: 14, scope: !2202)
!2222 = !DILocation(line: 31, column: 20, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2202, file: !2203, line: 30, column: 5)
!2224 = !DILocation(line: 31, column: 27, scope: !2223)
!2225 = !DILocation(line: 32, column: 56, scope: !2223)
!2226 = !DILocation(line: 32, column: 47, scope: !2223)
!2227 = !DILocation(line: 33, column: 22, scope: !2223)
!2228 = !DILocation(line: 34, column: 24, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2223, file: !2203, line: 34, column: 11)
!2230 = !DILocation(line: 34, column: 11, scope: !2223)
!2231 = !DILocation(line: 36, column: 29, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2229, file: !2203, line: 36, column: 16)
!2233 = !DILocation(line: 36, column: 16, scope: !2229)
!2234 = !DILocation(line: 37, column: 14, scope: !2232)
!2235 = distinct !{!2235, !2219, !2236}
!2236 = !DILocation(line: 40, column: 5, scope: !2202)
!2237 = !DILocation(line: 43, column: 1, scope: !2202)
!2238 = distinct !DISubprogram(name: "atof", scope: !2239, file: !2239, line: 25, type: !2240, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2243)
!2239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!2242, !668}
!2242 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2243 = !{!2244}
!2244 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2238, file: !2239, line: 25, type: !668)
!2245 = !DILocation(line: 0, scope: !2238)
!2246 = !DILocation(line: 27, column: 10, scope: !2238)
!2247 = !DILocation(line: 27, column: 3, scope: !2238)
!2248 = distinct !DISubprogram(name: "strtoimax", scope: !2249, file: !2249, line: 324, type: !2250, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2256)
!2249 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!2252, !2009, !2255, !663}
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2253, line: 101, baseType: !2254)
!2253 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2061, line: 72, baseType: !726)
!2255 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !664)
!2256 = !{!2257, !2258, !2259}
!2257 = !DILocalVariable(name: "nptr", arg: 1, scope: !2248, file: !2249, line: 324, type: !2009)
!2258 = !DILocalVariable(name: "endptr", arg: 2, scope: !2248, file: !2249, line: 324, type: !2255)
!2259 = !DILocalVariable(name: "base", arg: 3, scope: !2248, file: !2249, line: 324, type: !663)
!2260 = !DILocation(line: 0, scope: !2248)
!2261 = !DILocation(line: 327, column: 10, scope: !2248)
!2262 = !DILocation(line: 327, column: 3, scope: !2248)
!2263 = distinct !DISubprogram(name: "strtoumax", scope: !2249, file: !2249, line: 336, type: !2264, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2268)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!2266, !2009, !2255, !663}
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2253, line: 102, baseType: !2267)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2061, line: 73, baseType: !724)
!2268 = !{!2269, !2270, !2271}
!2269 = !DILocalVariable(name: "nptr", arg: 1, scope: !2263, file: !2249, line: 336, type: !2009)
!2270 = !DILocalVariable(name: "endptr", arg: 2, scope: !2263, file: !2249, line: 336, type: !2255)
!2271 = !DILocalVariable(name: "base", arg: 3, scope: !2263, file: !2249, line: 336, type: !663)
!2272 = !DILocation(line: 0, scope: !2263)
!2273 = !DILocation(line: 339, column: 10, scope: !2263)
!2274 = !DILocation(line: 339, column: 3, scope: !2263)
!2275 = distinct !DISubprogram(name: "wcstoimax", scope: !2249, file: !2249, line: 348, type: !2276, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2285)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!2252, !2278, !2282, !663}
!2278 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2279)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2281)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2249, line: 34, baseType: !663)
!2282 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2283)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2285 = !{!2286, !2287, !2288}
!2286 = !DILocalVariable(name: "nptr", arg: 1, scope: !2275, file: !2249, line: 348, type: !2278)
!2287 = !DILocalVariable(name: "endptr", arg: 2, scope: !2275, file: !2249, line: 348, type: !2282)
!2288 = !DILocalVariable(name: "base", arg: 3, scope: !2275, file: !2249, line: 348, type: !663)
!2289 = !DILocation(line: 0, scope: !2275)
!2290 = !DILocation(line: 351, column: 10, scope: !2275)
!2291 = !DILocation(line: 351, column: 3, scope: !2275)
!2292 = distinct !DISubprogram(name: "wcstoumax", scope: !2249, file: !2249, line: 362, type: !2293, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!2266, !2278, !2282, !663}
!2295 = !{!2296, !2297, !2298}
!2296 = !DILocalVariable(name: "nptr", arg: 1, scope: !2292, file: !2249, line: 362, type: !2278)
!2297 = !DILocalVariable(name: "endptr", arg: 2, scope: !2292, file: !2249, line: 362, type: !2282)
!2298 = !DILocalVariable(name: "base", arg: 3, scope: !2292, file: !2249, line: 362, type: !663)
!2299 = !DILocation(line: 0, scope: !2292)
!2300 = !DILocation(line: 365, column: 10, scope: !2292)
!2301 = !DILocation(line: 365, column: 3, scope: !2292)
!2302 = distinct !DISubprogram(name: "stat", scope: !2303, file: !2303, line: 453, type: !2304, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2341)
!2303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!663, !668, !2306}
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2308, line: 46, size: 1152, elements: !2309)
!2308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2309 = !{!2310, !2312, !2314, !2316, !2318, !2320, !2322, !2323, !2324, !2325, !2327, !2329, !2337, !2338, !2339}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2307, file: !2308, line: 48, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2061, line: 145, baseType: !724)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2307, file: !2308, line: 53, baseType: !2313, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2061, line: 148, baseType: !724)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2307, file: !2308, line: 61, baseType: !2315, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2061, line: 151, baseType: !724)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2307, file: !2308, line: 62, baseType: !2317, size: 32, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2061, line: 150, baseType: !7)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2307, file: !2308, line: 64, baseType: !2319, size: 32, offset: 224)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2061, line: 146, baseType: !7)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2307, file: !2308, line: 65, baseType: !2321, size: 32, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2061, line: 147, baseType: !7)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2307, file: !2308, line: 67, baseType: !663, size: 32, offset: 288)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2307, file: !2308, line: 69, baseType: !2311, size: 64, offset: 320)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2307, file: !2308, line: 74, baseType: !2060, size: 64, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2307, file: !2308, line: 78, baseType: !2326, size: 64, offset: 448)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2061, line: 174, baseType: !726)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2307, file: !2308, line: 80, baseType: !2328, size: 64, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2061, line: 179, baseType: !726)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2307, file: !2308, line: 91, baseType: !2330, size: 128, offset: 576)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2331, line: 10, size: 128, elements: !2332)
!2331 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2332 = !{!2333, !2335}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2330, file: !2331, line: 12, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2061, line: 160, baseType: !726)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2330, file: !2331, line: 16, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2061, line: 196, baseType: !726)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2307, file: !2308, line: 92, baseType: !2330, size: 128, offset: 704)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2307, file: !2308, line: 93, baseType: !2330, size: 128, offset: 832)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2307, file: !2308, line: 106, baseType: !2340, size: 192, offset: 960)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2336, size: 192, elements: !744)
!2341 = !{!2342, !2343}
!2342 = !DILocalVariable(name: "__path", arg: 1, scope: !2302, file: !2303, line: 453, type: !668)
!2343 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2302, file: !2303, line: 453, type: !2306)
!2344 = !DILocation(line: 0, scope: !2302)
!2345 = !DILocation(line: 455, column: 10, scope: !2302)
!2346 = !DILocation(line: 455, column: 3, scope: !2302)
!2347 = distinct !DISubprogram(name: "lstat", scope: !2303, file: !2303, line: 460, type: !2304, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2348)
!2348 = !{!2349, !2350}
!2349 = !DILocalVariable(name: "__path", arg: 1, scope: !2347, file: !2303, line: 460, type: !668)
!2350 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2347, file: !2303, line: 460, type: !2306)
!2351 = !DILocation(line: 0, scope: !2347)
!2352 = !DILocation(line: 462, column: 10, scope: !2347)
!2353 = !DILocation(line: 462, column: 3, scope: !2347)
!2354 = distinct !DISubprogram(name: "fstat", scope: !2303, file: !2303, line: 467, type: !2355, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!663, !663, !2306}
!2357 = !{!2358, !2359}
!2358 = !DILocalVariable(name: "__fd", arg: 1, scope: !2354, file: !2303, line: 467, type: !663)
!2359 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2354, file: !2303, line: 467, type: !2306)
!2360 = !DILocation(line: 0, scope: !2354)
!2361 = !DILocation(line: 469, column: 10, scope: !2354)
!2362 = !DILocation(line: 469, column: 3, scope: !2354)
!2363 = distinct !DISubprogram(name: "fstatat", scope: !2303, file: !2303, line: 474, type: !2364, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!663, !663, !668, !2306, !663}
!2366 = !{!2367, !2368, !2369, !2370}
!2367 = !DILocalVariable(name: "__fd", arg: 1, scope: !2363, file: !2303, line: 474, type: !663)
!2368 = !DILocalVariable(name: "__filename", arg: 2, scope: !2363, file: !2303, line: 474, type: !668)
!2369 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2363, file: !2303, line: 474, type: !2306)
!2370 = !DILocalVariable(name: "__flag", arg: 4, scope: !2363, file: !2303, line: 474, type: !663)
!2371 = !DILocation(line: 0, scope: !2363)
!2372 = !DILocation(line: 477, column: 10, scope: !2363)
!2373 = !DILocation(line: 477, column: 3, scope: !2363)
!2374 = distinct !DISubprogram(name: "mknod", scope: !2303, file: !2303, line: 483, type: !2375, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!663, !668, !2317, !2311}
!2377 = !{!2378, !2379, !2380}
!2378 = !DILocalVariable(name: "__path", arg: 1, scope: !2374, file: !2303, line: 483, type: !668)
!2379 = !DILocalVariable(name: "__mode", arg: 2, scope: !2374, file: !2303, line: 483, type: !2317)
!2380 = !DILocalVariable(name: "__dev", arg: 3, scope: !2374, file: !2303, line: 483, type: !2311)
!2381 = !DILocation(line: 0, scope: !2374)
!2382 = !DILocation(line: 485, column: 10, scope: !2374)
!2383 = !DILocation(line: 485, column: 3, scope: !2374)
!2384 = distinct !DISubprogram(name: "mknodat", scope: !2303, file: !2303, line: 491, type: !2385, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!663, !663, !668, !2317, !2311}
!2387 = !{!2388, !2389, !2390, !2391}
!2388 = !DILocalVariable(name: "__fd", arg: 1, scope: !2384, file: !2303, line: 491, type: !663)
!2389 = !DILocalVariable(name: "__path", arg: 2, scope: !2384, file: !2303, line: 491, type: !668)
!2390 = !DILocalVariable(name: "__mode", arg: 3, scope: !2384, file: !2303, line: 491, type: !2317)
!2391 = !DILocalVariable(name: "__dev", arg: 4, scope: !2384, file: !2303, line: 491, type: !2311)
!2392 = !DILocation(line: 0, scope: !2384)
!2393 = !DILocation(line: 494, column: 10, scope: !2384)
!2394 = !DILocation(line: 494, column: 3, scope: !2384)
!2395 = distinct !DISubprogram(name: "stat64", scope: !2303, file: !2303, line: 502, type: !2396, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2418)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!663, !668, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2308, line: 119, size: 1152, elements: !2400)
!2400 = !{!2401, !2402, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2414, !2415, !2416, !2417}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2399, file: !2308, line: 121, baseType: !2311, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2399, file: !2308, line: 123, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2061, line: 149, baseType: !724)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2399, file: !2308, line: 124, baseType: !2315, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2399, file: !2308, line: 125, baseType: !2317, size: 32, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2399, file: !2308, line: 132, baseType: !2319, size: 32, offset: 224)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2399, file: !2308, line: 133, baseType: !2321, size: 32, offset: 256)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2399, file: !2308, line: 135, baseType: !663, size: 32, offset: 288)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2399, file: !2308, line: 136, baseType: !2311, size: 64, offset: 320)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2399, file: !2308, line: 137, baseType: !2060, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2399, file: !2308, line: 143, baseType: !2326, size: 64, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2399, file: !2308, line: 144, baseType: !2413, size: 64, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2061, line: 180, baseType: !726)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2399, file: !2308, line: 152, baseType: !2330, size: 128, offset: 576)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2399, file: !2308, line: 153, baseType: !2330, size: 128, offset: 704)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2399, file: !2308, line: 154, baseType: !2330, size: 128, offset: 832)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2399, file: !2308, line: 164, baseType: !2340, size: 192, offset: 960)
!2418 = !{!2419, !2420}
!2419 = !DILocalVariable(name: "__path", arg: 1, scope: !2395, file: !2303, line: 502, type: !668)
!2420 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2395, file: !2303, line: 502, type: !2398)
!2421 = !DILocation(line: 0, scope: !2395)
!2422 = !DILocation(line: 504, column: 10, scope: !2395)
!2423 = !DILocation(line: 504, column: 3, scope: !2395)
!2424 = distinct !DISubprogram(name: "lstat64", scope: !2303, file: !2303, line: 509, type: !2396, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2425)
!2425 = !{!2426, !2427}
!2426 = !DILocalVariable(name: "__path", arg: 1, scope: !2424, file: !2303, line: 509, type: !668)
!2427 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2424, file: !2303, line: 509, type: !2398)
!2428 = !DILocation(line: 0, scope: !2424)
!2429 = !DILocation(line: 511, column: 10, scope: !2424)
!2430 = !DILocation(line: 511, column: 3, scope: !2424)
!2431 = distinct !DISubprogram(name: "fstat64", scope: !2303, file: !2303, line: 516, type: !2432, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!663, !663, !2398}
!2434 = !{!2435, !2436}
!2435 = !DILocalVariable(name: "__fd", arg: 1, scope: !2431, file: !2303, line: 516, type: !663)
!2436 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2431, file: !2303, line: 516, type: !2398)
!2437 = !DILocation(line: 0, scope: !2431)
!2438 = !DILocation(line: 518, column: 10, scope: !2431)
!2439 = !DILocation(line: 518, column: 3, scope: !2431)
!2440 = distinct !DISubprogram(name: "fstatat64", scope: !2303, file: !2303, line: 523, type: !2441, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!663, !663, !668, !2398, !663}
!2443 = !{!2444, !2445, !2446, !2447}
!2444 = !DILocalVariable(name: "__fd", arg: 1, scope: !2440, file: !2303, line: 523, type: !663)
!2445 = !DILocalVariable(name: "__filename", arg: 2, scope: !2440, file: !2303, line: 523, type: !668)
!2446 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2440, file: !2303, line: 523, type: !2398)
!2447 = !DILocalVariable(name: "__flag", arg: 4, scope: !2440, file: !2303, line: 523, type: !663)
!2448 = !DILocation(line: 0, scope: !2440)
!2449 = !DILocation(line: 526, column: 10, scope: !2440)
!2450 = !DILocation(line: 526, column: 3, scope: !2440)
!2451 = distinct !DISubprogram(name: "gate_forwprop", scope: !3, file: !3, line: 1373, type: !1983, scopeLine: 1374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2027)
!2452 = !DILocation(line: 1375, column: 10, scope: !2451)
!2453 = !DILocation(line: 1375, column: 3, scope: !2451)
!2454 = distinct !DISubprogram(name: "tree_ssa_forward_propagate_single_use_vars", scope: !3, file: !3, line: 1249, type: !1987, scopeLine: 1250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2455)
!2455 = !{!2456, !2457, !2458, !2468, !2472, !2475, !2476, !2482}
!2456 = !DILocalVariable(name: "bb", scope: !2454, file: !3, line: 1251, type: !1393)
!2457 = !DILocalVariable(name: "todoflags", scope: !2454, file: !3, line: 1252, type: !7)
!2458 = !DILocalVariable(name: "gsi", scope: !2459, file: !3, line: 1258, type: !2462)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 1257, column: 5)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 1256, column: 3)
!2461 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 1256, column: 3)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !561, line: 265, baseType: !2463)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 254, size: 192, elements: !2464)
!2464 = !{!2465, !2466, !2467}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2463, file: !561, line: 257, baseType: !989, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2463, file: !561, line: 263, baseType: !984, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2463, file: !561, line: 264, baseType: !1393, size: 64, offset: 128)
!2468 = !DILocalVariable(name: "stmt", scope: !2469, file: !3, line: 1263, type: !994)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1262, column: 2)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1261, column: 7)
!2471 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 1261, column: 7)
!2472 = !DILocalVariable(name: "lhs", scope: !2473, file: !3, line: 1269, type: !711)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1268, column: 6)
!2474 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 1267, column: 8)
!2475 = !DILocalVariable(name: "rhs", scope: !2473, file: !3, line: 1270, type: !711)
!2476 = !DILocalVariable(name: "did_something", scope: !2477, file: !3, line: 1315, type: !663)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1313, column: 17)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 1312, column: 17)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1305, column: 17)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1296, column: 17)
!2481 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1278, column: 12)
!2482 = !DILocalVariable(name: "did_something", scope: !2483, file: !3, line: 1352, type: !663)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 1351, column: 6)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 1350, column: 13)
!2485 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1345, column: 13)
!2486 = !DILocation(line: 0, scope: !2454)
!2487 = !DILocation(line: 1254, column: 15, scope: !2454)
!2488 = !DILocation(line: 1256, column: 3, scope: !2461)
!2489 = !DILocation(line: 0, scope: !2459)
!2490 = !DILocation(line: 0, scope: !2471)
!2491 = !DILocation(line: 1256, column: 3, scope: !2460)
!2492 = !DILocation(line: 1252, column: 16, scope: !2454)
!2493 = !DILocation(line: 0, scope: !2461)
!2494 = !DILocation(line: 1258, column: 7, scope: !2459)
!2495 = !DILocation(line: 1261, column: 18, scope: !2471)
!2496 = !DILocation(line: 1261, column: 12, scope: !2471)
!2497 = !DILocation(line: 1261, column: 38, scope: !2470)
!2498 = !DILocation(line: 1261, column: 37, scope: !2470)
!2499 = !DILocation(line: 1261, column: 7, scope: !2471)
!2500 = !DILocation(line: 1263, column: 18, scope: !2469)
!2501 = !DILocation(line: 0, scope: !2469)
!2502 = !DILocation(line: 1267, column: 8, scope: !2474)
!2503 = !DILocation(line: 1267, column: 8, scope: !2469)
!2504 = !DILocation(line: 1269, column: 19, scope: !2473)
!2505 = !DILocation(line: 0, scope: !2473)
!2506 = !DILocation(line: 1270, column: 19, scope: !2473)
!2507 = !DILocation(line: 1272, column: 12, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1272, column: 12)
!2509 = !DILocation(line: 1272, column: 28, scope: !2508)
!2510 = !DILocation(line: 1272, column: 12, scope: !2473)
!2511 = !DILocation(line: 1274, column: 5, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 1273, column: 3)
!2513 = !DILocation(line: 1275, column: 5, scope: !2512)
!2514 = distinct !{!2514, !2499, !2515}
!2515 = !DILocation(line: 1363, column: 2, scope: !2471)
!2516 = !DILocation(line: 1278, column: 12, scope: !2481)
!2517 = !DILocation(line: 1278, column: 42, scope: !2481)
!2518 = !DILocation(line: 1281, column: 5, scope: !2481)
!2519 = !DILocation(line: 1281, column: 9, scope: !2481)
!2520 = !DILocation(line: 1282, column: 9, scope: !2481)
!2521 = !DILocation(line: 1282, column: 12, scope: !2481)
!2522 = !DILocation(line: 1282, column: 28, scope: !2481)
!2523 = !DILocation(line: 1283, column: 9, scope: !2481)
!2524 = !DILocation(line: 1283, column: 12, scope: !2481)
!2525 = !DILocation(line: 1278, column: 12, scope: !2473)
!2526 = !DILocation(line: 1285, column: 5, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1284, column: 3)
!2528 = !DILocation(line: 1286, column: 10, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 1286, column: 9)
!2530 = !DILocation(line: 1287, column: 9, scope: !2529)
!2531 = !DILocation(line: 1287, column: 12, scope: !2529)
!2532 = !DILocation(line: 1286, column: 9, scope: !2527)
!2533 = !DILocation(line: 1289, column: 9, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 1288, column: 7)
!2535 = !DILocation(line: 1290, column: 19, scope: !2534)
!2536 = !DILocation(line: 1291, column: 9, scope: !2534)
!2537 = !DILocation(line: 1292, column: 7, scope: !2534)
!2538 = !DILocation(line: 1294, column: 7, scope: !2529)
!2539 = !DILocation(line: 1296, column: 17, scope: !2480)
!2540 = !DILocation(line: 1296, column: 47, scope: !2480)
!2541 = !DILocation(line: 1297, column: 10, scope: !2480)
!2542 = !DILocation(line: 1297, column: 13, scope: !2480)
!2543 = !DILocation(line: 1296, column: 17, scope: !2481)
!2544 = !DILocation(line: 1300, column: 5, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1298, column: 3)
!2546 = !DILocation(line: 1301, column: 5, scope: !2545)
!2547 = !DILocation(line: 1302, column: 9, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 1302, column: 9)
!2549 = !DILocation(line: 1302, column: 39, scope: !2548)
!2550 = !DILocation(line: 1302, column: 9, scope: !2545)
!2551 = !DILocation(line: 1303, column: 7, scope: !2548)
!2552 = !DILocation(line: 1305, column: 18, scope: !2479)
!2553 = !DILocation(line: 1305, column: 48, scope: !2479)
!2554 = !DILocation(line: 1306, column: 11, scope: !2479)
!2555 = !DILocation(line: 1306, column: 14, scope: !2479)
!2556 = !DILocation(line: 1306, column: 44, scope: !2479)
!2557 = !DILocation(line: 1307, column: 10, scope: !2479)
!2558 = !DILocation(line: 1307, column: 13, scope: !2479)
!2559 = !DILocation(line: 1307, column: 29, scope: !2479)
!2560 = !DILocation(line: 1305, column: 17, scope: !2480)
!2561 = !DILocation(line: 1309, column: 5, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 1308, column: 3)
!2563 = !DILocation(line: 1310, column: 5, scope: !2562)
!2564 = !DILocation(line: 1311, column: 3, scope: !2562)
!2565 = !DILocation(line: 1312, column: 17, scope: !2478)
!2566 = !DILocation(line: 1312, column: 47, scope: !2478)
!2567 = !DILocation(line: 1312, column: 17, scope: !2479)
!2568 = !DILocation(line: 1316, column: 5, scope: !2477)
!2569 = !DILocation(line: 1317, column: 35, scope: !2477)
!2570 = !DILocation(line: 0, scope: !2477)
!2571 = !DILocation(line: 1318, column: 12, scope: !2477)
!2572 = !DILocation(line: 1319, column: 23, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1319, column: 9)
!2574 = !DILocation(line: 1319, column: 9, scope: !2477)
!2575 = !DILocation(line: 1320, column: 19, scope: !2573)
!2576 = !DILocation(line: 1320, column: 7, scope: !2573)
!2577 = !DILocation(line: 1321, column: 38, scope: !2477)
!2578 = !DILocation(line: 1322, column: 7, scope: !2477)
!2579 = !DILocation(line: 1321, column: 37, scope: !2477)
!2580 = !DILocation(line: 1321, column: 5, scope: !2477)
!2581 = !DILocation(line: 1323, column: 5, scope: !2477)
!2582 = !DILocation(line: 1324, column: 17, scope: !2477)
!2583 = !DILocation(line: 1325, column: 17, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1325, column: 17)
!2585 = !DILocation(line: 1326, column: 6, scope: !2584)
!2586 = !DILocation(line: 1325, column: 17, scope: !2478)
!2587 = !DILocation(line: 1328, column: 9, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 1328, column: 9)
!2589 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 1327, column: 3)
!2590 = !DILocation(line: 1328, column: 9, scope: !2589)
!2591 = !DILocation(line: 1330, column: 9, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 1329, column: 7)
!2593 = !DILocation(line: 1331, column: 19, scope: !2592)
!2594 = !DILocation(line: 1332, column: 9, scope: !2592)
!2595 = !DILocation(line: 1333, column: 7, scope: !2592)
!2596 = !DILocation(line: 1335, column: 7, scope: !2588)
!2597 = !DILocation(line: 1337, column: 17, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 1337, column: 17)
!2599 = !DILocation(line: 1337, column: 47, scope: !2598)
!2600 = !DILocation(line: 1337, column: 17, scope: !2584)
!2601 = !DILocation(line: 1339, column: 5, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 1338, column: 3)
!2603 = !DILocation(line: 1340, column: 5, scope: !2602)
!2604 = !DILocation(line: 1341, column: 3, scope: !2602)
!2605 = !DILocation(line: 1343, column: 3, scope: !2598)
!2606 = !DILocation(line: 1345, column: 13, scope: !2485)
!2607 = !DILocation(line: 1345, column: 32, scope: !2485)
!2608 = !DILocation(line: 1345, column: 13, scope: !2474)
!2609 = !DILocation(line: 1347, column: 8, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 1346, column: 6)
!2611 = !DILocation(line: 1348, column: 8, scope: !2610)
!2612 = !DILocation(line: 1349, column: 6, scope: !2610)
!2613 = !DILocation(line: 1350, column: 13, scope: !2484)
!2614 = !DILocation(line: 1350, column: 32, scope: !2484)
!2615 = !DILocation(line: 1350, column: 13, scope: !2485)
!2616 = !DILocation(line: 1353, column: 8, scope: !2483)
!2617 = !DILocation(line: 1354, column: 24, scope: !2483)
!2618 = !DILocation(line: 0, scope: !2483)
!2619 = !DILocation(line: 1355, column: 26, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 1355, column: 12)
!2621 = !DILocation(line: 1355, column: 12, scope: !2483)
!2622 = !DILocation(line: 1356, column: 15, scope: !2620)
!2623 = !DILocation(line: 1356, column: 3, scope: !2620)
!2624 = !DILocation(line: 1357, column: 40, scope: !2483)
!2625 = !DILocation(line: 1357, column: 8, scope: !2483)
!2626 = !DILocation(line: 1359, column: 8, scope: !2483)
!2627 = !DILocation(line: 1360, column: 6, scope: !2483)
!2628 = !DILocation(line: 1362, column: 6, scope: !2484)
!2629 = !DILocation(line: 1364, column: 5, scope: !2460)
!2630 = !DILocation(line: 0, scope: !2460)
!2631 = distinct !{!2631, !2488, !2632}
!2632 = !DILocation(line: 1364, column: 5, scope: !2461)
!2633 = !DILocation(line: 1366, column: 7, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 1366, column: 7)
!2635 = !DILocation(line: 1367, column: 15, scope: !2634)
!2636 = !DILocation(line: 1366, column: 7, scope: !2454)
!2637 = !DILocation(line: 1368, column: 3, scope: !2454)
!2638 = distinct !DISubprogram(name: "gsi_start_bb", scope: !561, file: !561, line: 4418, type: !2639, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!2462, !1393}
!2641 = !{!2642, !2643, !2644}
!2642 = !DILocalVariable(name: "bb", arg: 1, scope: !2638, file: !561, line: 4418, type: !1393)
!2643 = !DILocalVariable(name: "i", scope: !2638, file: !561, line: 4420, type: !2462)
!2644 = !DILocalVariable(name: "seq", scope: !2638, file: !561, line: 4421, type: !984)
!2645 = !DILocation(line: 0, scope: !2638)
!2646 = !DILocation(line: 4420, column: 24, scope: !2638)
!2647 = !DILocation(line: 4423, column: 9, scope: !2638)
!2648 = !DILocation(line: 4424, column: 11, scope: !2638)
!2649 = !DILocation(line: 4424, column: 5, scope: !2638)
!2650 = !DILocation(line: 4424, column: 9, scope: !2638)
!2651 = !DILocation(line: 4425, column: 5, scope: !2638)
!2652 = !DILocation(line: 4425, column: 9, scope: !2638)
!2653 = !DILocation(line: 4426, column: 5, scope: !2638)
!2654 = !DILocation(line: 4426, column: 8, scope: !2638)
!2655 = !DILocation(line: 4429, column: 1, scope: !2638)
!2656 = distinct !DISubprogram(name: "gsi_end_p", scope: !561, file: !561, line: 4467, type: !2657, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!662, !2462}
!2659 = !{!2660}
!2660 = !DILocalVariable(name: "i", arg: 1, scope: !2656, file: !561, line: 4467, type: !2462)
!2661 = !DILocation(line: 4467, column: 33, scope: !2656)
!2662 = !DILocation(line: 4469, column: 12, scope: !2656)
!2663 = !DILocation(line: 4469, column: 16, scope: !2656)
!2664 = !DILocation(line: 4469, column: 10, scope: !2656)
!2665 = !DILocation(line: 4469, column: 3, scope: !2656)
!2666 = distinct !DISubprogram(name: "gsi_stmt", scope: !561, file: !561, line: 4501, type: !2667, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!994, !2462}
!2669 = !{!2670}
!2670 = !DILocalVariable(name: "i", arg: 1, scope: !2666, file: !561, line: 4501, type: !2462)
!2671 = !DILocation(line: 4501, column: 32, scope: !2666)
!2672 = !DILocation(line: 4503, column: 12, scope: !2666)
!2673 = !DILocation(line: 4503, column: 17, scope: !2666)
!2674 = !DILocation(line: 4503, column: 3, scope: !2666)
!2675 = distinct !DISubprogram(name: "is_gimple_assign", scope: !561, file: !561, line: 1677, type: !2676, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2679)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!662, !2678}
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !712, line: 60, baseType: !1966)
!2679 = !{!2680}
!2680 = !DILocalVariable(name: "gs", arg: 1, scope: !2675, file: !561, line: 1677, type: !2678)
!2681 = !DILocation(line: 0, scope: !2675)
!2682 = !DILocation(line: 1679, column: 10, scope: !2675)
!2683 = !DILocation(line: 1679, column: 27, scope: !2675)
!2684 = !DILocation(line: 1679, column: 3, scope: !2675)
!2685 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !561, file: !561, line: 1694, type: !2686, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!711, !2678}
!2688 = !{!2689}
!2689 = !DILocalVariable(name: "gs", arg: 1, scope: !2685, file: !561, line: 1694, type: !2678)
!2690 = !DILocation(line: 0, scope: !2685)
!2691 = !DILocation(line: 1697, column: 10, scope: !2685)
!2692 = !DILocation(line: 1697, column: 3, scope: !2685)
!2693 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !561, file: !561, line: 1727, type: !2686, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2694)
!2694 = !{!2695}
!2695 = !DILocalVariable(name: "gs", arg: 1, scope: !2693, file: !561, line: 1727, type: !2678)
!2696 = !DILocation(line: 0, scope: !2693)
!2697 = !DILocation(line: 1730, column: 10, scope: !2693)
!2698 = !DILocation(line: 1730, column: 3, scope: !2693)
!2699 = distinct !DISubprogram(name: "gsi_next", scope: !561, file: !561, line: 4485, type: !2700, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2703)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{null, !2702}
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2703 = !{!2704}
!2704 = !DILocalVariable(name: "i", arg: 1, scope: !2699, file: !561, line: 4485, type: !2702)
!2705 = !DILocation(line: 0, scope: !2699)
!2706 = !DILocation(line: 4487, column: 15, scope: !2699)
!2707 = !DILocation(line: 4487, column: 20, scope: !2699)
!2708 = !DILocation(line: 4487, column: 10, scope: !2699)
!2709 = !DILocation(line: 4488, column: 1, scope: !2699)
!2710 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !561, file: !561, line: 1815, type: !2711, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!366, !2678}
!2713 = !{!2714, !2715}
!2714 = !DILocalVariable(name: "gs", arg: 1, scope: !2710, file: !561, line: 1815, type: !2678)
!2715 = !DILocalVariable(name: "code", scope: !2710, file: !561, line: 1817, type: !366)
!2716 = !DILocation(line: 0, scope: !2710)
!2717 = !DILocation(line: 1820, column: 10, scope: !2710)
!2718 = !DILocation(line: 1821, column: 7, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2710, file: !561, line: 1821, column: 7)
!2720 = !DILocation(line: 1821, column: 35, scope: !2719)
!2721 = !DILocation(line: 1821, column: 7, scope: !2710)
!2722 = !DILocation(line: 1822, column: 12, scope: !2719)
!2723 = !DILocation(line: 1822, column: 5, scope: !2719)
!2724 = !DILocation(line: 1824, column: 3, scope: !2710)
!2725 = distinct !DISubprogram(name: "forward_propagate_addr_expr", scope: !3, file: !3, line: 938, type: !2726, scopeLine: 939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!662, !711, !711}
!2728 = !{!2729, !2730, !2731, !2732, !2740, !2741, !2742, !2743, !2747, !2748, !2750}
!2729 = !DILocalVariable(name: "name", arg: 1, scope: !2725, file: !3, line: 938, type: !711)
!2730 = !DILocalVariable(name: "rhs", arg: 2, scope: !2725, file: !3, line: 938, type: !711)
!2731 = !DILocalVariable(name: "stmt_loop_depth", scope: !2725, file: !3, line: 940, type: !663)
!2732 = !DILocalVariable(name: "iter", scope: !2725, file: !3, line: 941, type: !2733)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "imm_use_iterator", file: !1333, line: 249, baseType: !2734)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "immediate_use_iterator_d", file: !1333, line: 238, size: 448, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !2734, file: !1333, line: 241, baseType: !1969, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "end_p", scope: !2734, file: !1333, line: 243, baseType: !1969, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "iter_node", scope: !2734, file: !1333, line: 245, baseType: !1970, size: 256, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "next_imm_name", scope: !2734, file: !1333, line: 248, baseType: !1969, size: 64, offset: 384)
!2740 = !DILocalVariable(name: "use_stmt", scope: !2725, file: !3, line: 942, type: !994)
!2741 = !DILocalVariable(name: "all", scope: !2725, file: !3, line: 943, type: !662)
!2742 = !DILocalVariable(name: "single_use_p", scope: !2725, file: !3, line: 944, type: !662)
!2743 = !DILocalVariable(name: "result", scope: !2744, file: !3, line: 948, type: !662)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 947, column: 5)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 946, column: 3)
!2746 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 946, column: 3)
!2747 = !DILocalVariable(name: "use_rhs", scope: !2744, file: !3, line: 949, type: !711)
!2748 = !DILocalVariable(name: "gsi", scope: !2749, file: !3, line: 970, type: !2462)
!2749 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 969, column: 7)
!2750 = !DILocalVariable(name: "gsi", scope: !2751, file: !3, line: 992, type: !2462)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 991, column: 2)
!2752 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 987, column: 11)
!2753 = !DILocation(line: 0, scope: !2725)
!2754 = !DILocation(line: 940, column: 36, scope: !2725)
!2755 = !DILocation(line: 940, column: 25, scope: !2725)
!2756 = !DILocation(line: 940, column: 63, scope: !2725)
!2757 = !DILocation(line: 941, column: 3, scope: !2725)
!2758 = !DILocation(line: 944, column: 23, scope: !2725)
!2759 = !DILocation(line: 946, column: 3, scope: !2746)
!2760 = !DILocation(line: 0, scope: !2749)
!2761 = !DILocation(line: 0, scope: !2751)
!2762 = !DILocation(line: 0, scope: !2746)
!2763 = !DILocation(line: 943, column: 8, scope: !2725)
!2764 = !DILocation(line: 946, column: 3, scope: !2745)
!2765 = !DILocation(line: 953, column: 11, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 953, column: 11)
!2767 = !DILocation(line: 953, column: 34, scope: !2766)
!2768 = !DILocation(line: 953, column: 11, scope: !2744)
!2769 = !DILocation(line: 955, column: 9, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 955, column: 8)
!2771 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 954, column: 2)
!2772 = !DILocation(line: 955, column: 8, scope: !2771)
!2773 = !DILocation(line: 957, column: 4, scope: !2771)
!2774 = !DILocation(line: 963, column: 11, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 963, column: 11)
!2776 = !DILocation(line: 963, column: 33, scope: !2775)
!2777 = !DILocation(line: 963, column: 44, scope: !2775)
!2778 = !DILocation(line: 963, column: 11, scope: !2744)
!2779 = !DILocation(line: 970, column: 2, scope: !2749)
!2780 = !DILocation(line: 970, column: 29, scope: !2749)
!2781 = !DILocation(line: 971, column: 11, scope: !2749)
!2782 = !DILocation(line: 0, scope: !2744)
!2783 = !DILocation(line: 975, column: 18, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 975, column: 6)
!2785 = !DILocation(line: 975, column: 15, scope: !2784)
!2786 = !DILocation(line: 975, column: 6, scope: !2749)
!2787 = !DILocation(line: 977, column: 6, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 976, column: 4)
!2789 = !DILocation(line: 978, column: 17, scope: !2788)
!2790 = !DILocation(line: 979, column: 4, scope: !2788)
!2791 = !DILocation(line: 981, column: 2, scope: !2749)
!2792 = !DILocation(line: 982, column: 7, scope: !2744)
!2793 = !DILocation(line: 983, column: 11, scope: !2744)
!2794 = !DILocation(line: 986, column: 17, scope: !2744)
!2795 = !DILocation(line: 987, column: 11, scope: !2752)
!2796 = !DILocation(line: 988, column: 4, scope: !2752)
!2797 = !DILocation(line: 988, column: 7, scope: !2752)
!2798 = !DILocation(line: 988, column: 48, scope: !2752)
!2799 = !DILocation(line: 989, column: 4, scope: !2752)
!2800 = !DILocation(line: 989, column: 7, scope: !2752)
!2801 = !DILocation(line: 989, column: 27, scope: !2752)
!2802 = !DILocation(line: 990, column: 4, scope: !2752)
!2803 = !DILocation(line: 990, column: 22, scope: !2752)
!2804 = !DILocation(line: 990, column: 7, scope: !2752)
!2805 = !DILocation(line: 987, column: 11, scope: !2744)
!2806 = !DILocation(line: 992, column: 4, scope: !2751)
!2807 = !DILocation(line: 992, column: 31, scope: !2751)
!2808 = !DILocation(line: 993, column: 4, scope: !2751)
!2809 = !DILocation(line: 994, column: 4, scope: !2751)
!2810 = !DILocation(line: 995, column: 2, scope: !2752)
!2811 = !DILocation(line: 995, column: 2, scope: !2751)
!2812 = distinct !{!2812, !2759, !2813}
!2813 = !DILocation(line: 996, column: 5, scope: !2746)
!2814 = !DILocation(line: 999, column: 1, scope: !2725)
!2815 = !DILocation(line: 998, column: 3, scope: !2725)
!2816 = distinct !DISubprogram(name: "update_stmt", scope: !561, file: !561, line: 1456, type: !2817, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !994}
!2819 = !{!2820}
!2820 = !DILocalVariable(name: "s", arg: 1, scope: !2816, file: !561, line: 1456, type: !994)
!2821 = !DILocation(line: 0, scope: !2816)
!2822 = !DILocation(line: 1458, column: 7, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2816, file: !561, line: 1458, column: 7)
!2824 = !DILocation(line: 1458, column: 7, scope: !2816)
!2825 = !DILocation(line: 1460, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2823, file: !561, line: 1459, column: 5)
!2827 = !DILocation(line: 1461, column: 7, scope: !2826)
!2828 = !DILocation(line: 1462, column: 5, scope: !2826)
!2829 = !DILocation(line: 1463, column: 1, scope: !2816)
!2830 = distinct !DISubprogram(name: "simplify_not_neg_expr", scope: !3, file: !3, line: 1126, type: !2700, scopeLine: 1127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2831)
!2831 = !{!2832, !2833, !2834, !2835, !2836}
!2832 = !DILocalVariable(name: "gsi_p", arg: 1, scope: !2830, file: !3, line: 1126, type: !2702)
!2833 = !DILocalVariable(name: "stmt", scope: !2830, file: !3, line: 1128, type: !994)
!2834 = !DILocalVariable(name: "rhs", scope: !2830, file: !3, line: 1129, type: !711)
!2835 = !DILocalVariable(name: "rhs_def_stmt", scope: !2830, file: !3, line: 1130, type: !994)
!2836 = !DILocalVariable(name: "rhs_def_operand", scope: !2837, file: !3, line: 1136, type: !711)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1135, column: 5)
!2838 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 1133, column: 7)
!2839 = !DILocation(line: 0, scope: !2830)
!2840 = !DILocation(line: 1128, column: 17, scope: !2830)
!2841 = !DILocation(line: 1129, column: 14, scope: !2830)
!2842 = !DILocation(line: 1130, column: 25, scope: !2830)
!2843 = !DILocation(line: 1133, column: 7, scope: !2838)
!2844 = !DILocation(line: 1134, column: 7, scope: !2838)
!2845 = !DILocation(line: 1134, column: 10, scope: !2838)
!2846 = !DILocation(line: 1134, column: 51, scope: !2838)
!2847 = !DILocation(line: 1134, column: 48, scope: !2838)
!2848 = !DILocation(line: 1133, column: 7, scope: !2830)
!2849 = !DILocation(line: 1136, column: 30, scope: !2837)
!2850 = !DILocation(line: 0, scope: !2837)
!2851 = !DILocation(line: 1139, column: 11, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 1139, column: 11)
!2853 = !DILocation(line: 1139, column: 39, scope: !2852)
!2854 = !DILocation(line: 1140, column: 4, scope: !2852)
!2855 = !DILocation(line: 1140, column: 9, scope: !2852)
!2856 = !DILocation(line: 1139, column: 11, scope: !2837)
!2857 = !DILocation(line: 1142, column: 4, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 1141, column: 2)
!2859 = !DILocation(line: 1143, column: 11, scope: !2858)
!2860 = !DILocation(line: 1144, column: 4, scope: !2858)
!2861 = !DILocation(line: 1145, column: 2, scope: !2858)
!2862 = !DILocation(line: 1147, column: 1, scope: !2830)
!2863 = distinct !DISubprogram(name: "forward_propagate_into_cond", scope: !3, file: !3, line: 494, type: !2864, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!663, !2702}
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2885}
!2867 = !DILocalVariable(name: "gsi_p", arg: 1, scope: !2863, file: !3, line: 494, type: !2702)
!2868 = !DILocalVariable(name: "stmt", scope: !2863, file: !3, line: 496, type: !994)
!2869 = !DILocalVariable(name: "loc", scope: !2863, file: !3, line: 497, type: !795)
!2870 = !DILocalVariable(name: "did_something", scope: !2863, file: !3, line: 498, type: !663)
!2871 = !DILocalVariable(name: "tmp", scope: !2872, file: !3, line: 501, type: !711)
!2872 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 500, column: 6)
!2873 = !DILocalVariable(name: "cond", scope: !2872, file: !3, line: 502, type: !711)
!2874 = !DILocalVariable(name: "name", scope: !2872, file: !3, line: 503, type: !711)
!2875 = !DILocalVariable(name: "rhs0", scope: !2872, file: !3, line: 503, type: !711)
!2876 = !DILocalVariable(name: "rhs1", scope: !2872, file: !3, line: 503, type: !711)
!2877 = !DILocalVariable(name: "def_stmt", scope: !2872, file: !3, line: 504, type: !994)
!2878 = !DILocalVariable(name: "single_use0_p", scope: !2872, file: !3, line: 505, type: !662)
!2879 = !DILocalVariable(name: "single_use1_p", scope: !2872, file: !3, line: 505, type: !662)
!2880 = !DILocalVariable(name: "op1", scope: !2881, file: !3, line: 517, type: !711)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 516, column: 4)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 515, column: 6)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 510, column: 7)
!2884 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 508, column: 9)
!2885 = !DILocalVariable(name: "op0", scope: !2886, file: !3, line: 527, type: !711)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 526, column: 4)
!2887 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 524, column: 6)
!2888 = !DILocation(line: 0, scope: !2863)
!2889 = !DILocation(line: 496, column: 17, scope: !2863)
!2890 = !DILocation(line: 497, column: 20, scope: !2863)
!2891 = !DILocation(line: 500, column: 3, scope: !2863)
!2892 = !DILocation(line: 498, column: 7, scope: !2863)
!2893 = !DILocation(line: 496, column: 10, scope: !2863)
!2894 = !DILocation(line: 0, scope: !2872)
!2895 = !DILocation(line: 502, column: 17, scope: !2872)
!2896 = !DILocation(line: 505, column: 5, scope: !2872)
!2897 = !DILocation(line: 505, column: 10, scope: !2872)
!2898 = !DILocation(line: 505, column: 33, scope: !2872)
!2899 = !DILocation(line: 508, column: 9, scope: !2884)
!2900 = !DILocation(line: 509, column: 2, scope: !2884)
!2901 = !DILocation(line: 509, column: 5, scope: !2884)
!2902 = !DILocation(line: 509, column: 40, scope: !2884)
!2903 = !DILocation(line: 508, column: 9, scope: !2872)
!2904 = !DILocation(line: 514, column: 13, scope: !2883)
!2905 = !DILocation(line: 515, column: 6, scope: !2882)
!2906 = !DILocation(line: 515, column: 15, scope: !2882)
!2907 = !DILocation(line: 515, column: 18, scope: !2882)
!2908 = !DILocation(line: 515, column: 6, scope: !2883)
!2909 = !DILocation(line: 517, column: 17, scope: !2881)
!2910 = !DILocation(line: 0, scope: !2881)
!2911 = !DILocation(line: 518, column: 26, scope: !2881)
!2912 = !DILocation(line: 518, column: 13, scope: !2881)
!2913 = !DILocation(line: 519, column: 41, scope: !2881)
!2914 = !DILocation(line: 520, column: 8, scope: !2881)
!2915 = !DILocation(line: 521, column: 20, scope: !2881)
!2916 = !DILocation(line: 521, column: 19, scope: !2881)
!2917 = !DILocation(line: 519, column: 12, scope: !2881)
!2918 = !DILocation(line: 522, column: 4, scope: !2881)
!2919 = !DILocation(line: 524, column: 10, scope: !2887)
!2920 = !DILocation(line: 525, column: 6, scope: !2887)
!2921 = !DILocation(line: 525, column: 9, scope: !2887)
!2922 = !DILocation(line: 525, column: 44, scope: !2887)
!2923 = !DILocation(line: 524, column: 6, scope: !2883)
!2924 = !DILocation(line: 527, column: 17, scope: !2886)
!2925 = !DILocation(line: 0, scope: !2886)
!2926 = !DILocation(line: 529, column: 17, scope: !2886)
!2927 = !DILocation(line: 530, column: 11, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 530, column: 10)
!2929 = !DILocation(line: 530, column: 20, scope: !2928)
!2930 = !DILocation(line: 530, column: 24, scope: !2928)
!2931 = !DILocation(line: 530, column: 10, scope: !2886)
!2932 = !DILocation(line: 533, column: 26, scope: !2886)
!2933 = !DILocation(line: 533, column: 13, scope: !2886)
!2934 = !DILocation(line: 534, column: 41, scope: !2886)
!2935 = !DILocation(line: 535, column: 8, scope: !2886)
!2936 = !DILocation(line: 536, column: 20, scope: !2886)
!2937 = !DILocation(line: 536, column: 19, scope: !2886)
!2938 = !DILocation(line: 534, column: 12, scope: !2886)
!2939 = !DILocation(line: 537, column: 4, scope: !2887)
!2940 = !DILocation(line: 0, scope: !2883)
!2941 = !DILocation(line: 539, column: 10, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 539, column: 6)
!2943 = !DILocation(line: 540, column: 14, scope: !2942)
!2944 = !DILocation(line: 540, column: 6, scope: !2942)
!2945 = !DILocation(line: 541, column: 14, scope: !2942)
!2946 = !DILocation(line: 542, column: 39, scope: !2942)
!2947 = !DILocation(line: 543, column: 6, scope: !2942)
!2948 = !DILocation(line: 546, column: 10, scope: !2942)
!2949 = !DILocation(line: 545, column: 6, scope: !2942)
!2950 = !DILocation(line: 548, column: 8, scope: !2942)
!2951 = !DILocation(line: 548, column: 22, scope: !2942)
!2952 = !DILocation(line: 548, column: 6, scope: !2942)
!2953 = !DILocation(line: 542, column: 10, scope: !2942)
!2954 = !DILocation(line: 542, column: 4, scope: !2942)
!2955 = !DILocation(line: 550, column: 31, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 550, column: 14)
!2957 = !DILocation(line: 550, column: 14, scope: !2884)
!2958 = !DILocation(line: 553, column: 13, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 551, column: 7)
!2960 = !DILocation(line: 554, column: 6, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 554, column: 6)
!2962 = !DILocation(line: 554, column: 15, scope: !2961)
!2963 = !DILocation(line: 554, column: 19, scope: !2961)
!2964 = !DILocation(line: 554, column: 6, scope: !2959)
!2965 = !DILocation(line: 557, column: 9, scope: !2959)
!2966 = !DILocation(line: 558, column: 46, scope: !2959)
!2967 = !DILocation(line: 559, column: 26, scope: !2959)
!2968 = !DILocation(line: 559, column: 11, scope: !2959)
!2969 = !DILocation(line: 558, column: 8, scope: !2959)
!2970 = !DILocation(line: 561, column: 7, scope: !2959)
!2971 = !DILocation(line: 0, scope: !2884)
!2972 = !DILocation(line: 563, column: 9, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 563, column: 9)
!2974 = !DILocation(line: 563, column: 9, scope: !2872)
!2975 = !DILocation(line: 565, column: 6, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 565, column: 6)
!2977 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 564, column: 7)
!2978 = !DILocation(line: 565, column: 16, scope: !2976)
!2979 = !DILocation(line: 567, column: 6, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 566, column: 4)
!2981 = !DILocation(line: 568, column: 26, scope: !2980)
!2982 = !DILocation(line: 568, column: 6, scope: !2980)
!2983 = !DILocation(line: 569, column: 15, scope: !2980)
!2984 = !DILocation(line: 569, column: 6, scope: !2980)
!2985 = !DILocation(line: 570, column: 26, scope: !2980)
!2986 = !DILocation(line: 570, column: 6, scope: !2980)
!2987 = !DILocation(line: 571, column: 15, scope: !2980)
!2988 = !DILocation(line: 571, column: 6, scope: !2980)
!2989 = !DILocation(line: 572, column: 4, scope: !2980)
!2990 = !DILocation(line: 574, column: 42, scope: !2977)
!2991 = !DILocation(line: 574, column: 2, scope: !2977)
!2992 = !DILocation(line: 575, column: 9, scope: !2977)
!2993 = !DILocation(line: 576, column: 2, scope: !2977)
!2994 = !DILocation(line: 579, column: 2, scope: !2977)
!2995 = !DILocation(line: 581, column: 6, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 581, column: 6)
!2997 = !DILocation(line: 581, column: 6, scope: !2977)
!2998 = !DILocation(line: 591, column: 3, scope: !2863)
!2999 = !DILocation(line: 593, column: 3, scope: !2863)
!3000 = !DILocation(line: 594, column: 1, scope: !2863)
!3001 = distinct !DISubprogram(name: "forward_propagate_comparison", scope: !3, file: !3, line: 1009, type: !3002, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!662, !994}
!3004 = !{!3005, !3006, !3007, !3008, !3009, !3012, !3016, !3017, !3018, !3021, !3022, !3023, !3025}
!3005 = !DILocalVariable(name: "stmt", arg: 1, scope: !3001, file: !3, line: 1009, type: !994)
!3006 = !DILocalVariable(name: "name", scope: !3001, file: !3, line: 1011, type: !711)
!3007 = !DILocalVariable(name: "use_stmt", scope: !3001, file: !3, line: 1012, type: !994)
!3008 = !DILocalVariable(name: "tmp", scope: !3001, file: !3, line: 1013, type: !711)
!3009 = !DILocalVariable(name: "lhs", scope: !3010, file: !3, line: 1035, type: !711)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 1034, column: 5)
!3011 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1028, column: 7)
!3012 = !DILocalVariable(name: "code", scope: !3013, file: !3, line: 1052, type: !366)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 1051, column: 7)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1047, column: 16)
!3015 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 1038, column: 11)
!3016 = !DILocalVariable(name: "cst", scope: !3013, file: !3, line: 1053, type: !711)
!3017 = !DILocalVariable(name: "cond", scope: !3013, file: !3, line: 1054, type: !711)
!3018 = !DILocalVariable(name: "type", scope: !3019, file: !3, line: 1071, type: !711)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 1070, column: 2)
!3020 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 1069, column: 16)
!3021 = !DILocalVariable(name: "nans", scope: !3019, file: !3, line: 1072, type: !662)
!3022 = !DILocalVariable(name: "code", scope: !3019, file: !3, line: 1073, type: !366)
!3023 = !DILocalVariable(name: "gsi", scope: !3024, file: !3, line: 1085, type: !2462)
!3024 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 1084, column: 7)
!3025 = !DILocalVariable(name: "old_rhs", scope: !3026, file: !3, line: 1096, type: !711)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 1095, column: 2)
!3027 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 1094, column: 11)
!3028 = !DILocation(line: 0, scope: !3001)
!3029 = !DILocation(line: 1011, column: 3, scope: !3001)
!3030 = !DILocation(line: 1011, column: 15, scope: !3001)
!3031 = !DILocation(line: 1011, column: 8, scope: !3001)
!3032 = !DILocation(line: 1016, column: 8, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1016, column: 7)
!3034 = !DILocation(line: 1016, column: 46, scope: !3033)
!3035 = !DILocation(line: 1017, column: 8, scope: !3033)
!3036 = !DILocation(line: 1017, column: 11, scope: !3033)
!3037 = !DILocation(line: 1018, column: 7, scope: !3033)
!3038 = !DILocation(line: 1018, column: 11, scope: !3033)
!3039 = !DILocation(line: 1018, column: 49, scope: !3033)
!3040 = !DILocation(line: 1019, column: 9, scope: !3033)
!3041 = !DILocation(line: 1019, column: 12, scope: !3033)
!3042 = !DILocation(line: 1016, column: 7, scope: !3001)
!3043 = !DILocation(line: 1023, column: 14, scope: !3001)
!3044 = !DILocation(line: 1024, column: 8, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1024, column: 7)
!3046 = !DILocation(line: 1024, column: 7, scope: !3001)
!3047 = !DILocation(line: 1028, column: 7, scope: !3011)
!3048 = !DILocation(line: 1029, column: 7, scope: !3011)
!3049 = !DILocation(line: 1029, column: 11, scope: !3011)
!3050 = !DILocation(line: 1030, column: 4, scope: !3011)
!3051 = !DILocation(line: 1030, column: 7, scope: !3011)
!3052 = !DILocation(line: 1031, column: 7, scope: !3011)
!3053 = !DILocation(line: 1032, column: 11, scope: !3011)
!3054 = !DILocation(line: 1032, column: 14, scope: !3011)
!3055 = !DILocation(line: 1032, column: 48, scope: !3011)
!3056 = !DILocation(line: 1033, column: 7, scope: !3011)
!3057 = !DILocation(line: 1033, column: 10, scope: !3011)
!3058 = !DILocation(line: 1028, column: 7, scope: !3001)
!3059 = !DILocation(line: 1035, column: 18, scope: !3010)
!3060 = !DILocation(line: 0, scope: !3010)
!3061 = !DILocation(line: 1038, column: 11, scope: !3015)
!3062 = !DILocation(line: 1038, column: 11, scope: !3010)
!3063 = !DILocation(line: 1042, column: 10, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1039, column: 2)
!3065 = !DILocation(line: 1044, column: 2, scope: !3064)
!3066 = !DILocation(line: 1047, column: 16, scope: !3014)
!3067 = !DILocation(line: 1048, column: 15, scope: !3014)
!3068 = !DILocation(line: 1049, column: 14, scope: !3014)
!3069 = !DILocation(line: 1049, column: 17, scope: !3014)
!3070 = !DILocation(line: 1049, column: 59, scope: !3014)
!3071 = !DILocation(line: 1050, column: 14, scope: !3014)
!3072 = !DILocation(line: 1050, column: 17, scope: !3014)
!3073 = !DILocation(line: 1050, column: 59, scope: !3014)
!3074 = !DILocation(line: 1047, column: 16, scope: !3015)
!3075 = !DILocation(line: 1052, column: 31, scope: !3013)
!3076 = !DILocation(line: 0, scope: !3013)
!3077 = !DILocation(line: 1053, column: 20, scope: !3013)
!3078 = !DILocation(line: 1056, column: 9, scope: !3013)
!3079 = !DILocation(line: 1061, column: 39, scope: !3013)
!3080 = !DILocation(line: 1062, column: 17, scope: !3013)
!3081 = !DILocation(line: 1061, column: 15, scope: !3013)
!3082 = !DILocation(line: 1064, column: 17, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 1064, column: 13)
!3084 = !DILocation(line: 1069, column: 16, scope: !3020)
!3085 = !DILocation(line: 1069, column: 50, scope: !3020)
!3086 = !DILocation(line: 1069, column: 16, scope: !3014)
!3087 = !DILocation(line: 1071, column: 16, scope: !3019)
!3088 = !DILocation(line: 0, scope: !3019)
!3089 = !DILocation(line: 1072, column: 16, scope: !3019)
!3090 = !DILocation(line: 1074, column: 35, scope: !3019)
!3091 = !DILocation(line: 1074, column: 11, scope: !3019)
!3092 = !DILocation(line: 1075, column: 13, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 1075, column: 8)
!3094 = !DILocation(line: 1075, column: 8, scope: !3019)
!3095 = !DILocation(line: 1078, column: 10, scope: !3019)
!3096 = !DILocation(line: 1080, column: 2, scope: !3020)
!3097 = !DILocation(line: 0, scope: !3015)
!3098 = !DILocation(line: 1085, column: 2, scope: !3024)
!3099 = !DILocation(line: 0, scope: !3024)
!3100 = !DILocation(line: 1085, column: 29, scope: !3024)
!3101 = !DILocation(line: 1086, column: 41, scope: !3024)
!3102 = !DILocation(line: 1086, column: 2, scope: !3024)
!3103 = !DILocation(line: 1087, column: 13, scope: !3024)
!3104 = !DILocation(line: 1088, column: 2, scope: !3024)
!3105 = !DILocation(line: 1089, column: 7, scope: !3010)
!3106 = !DILocation(line: 1092, column: 36, scope: !3010)
!3107 = !DILocation(line: 1092, column: 7, scope: !3010)
!3108 = !DILocation(line: 1094, column: 11, scope: !3027)
!3109 = !DILocation(line: 1094, column: 21, scope: !3027)
!3110 = !DILocation(line: 1094, column: 25, scope: !3027)
!3111 = !DILocation(line: 1094, column: 36, scope: !3027)
!3112 = !DILocation(line: 1094, column: 11, scope: !3010)
!3113 = !DILocation(line: 1096, column: 32, scope: !3026)
!3114 = !DILocation(line: 1096, column: 19, scope: !3026)
!3115 = !DILocation(line: 0, scope: !3026)
!3116 = !DILocation(line: 1098, column: 13, scope: !3026)
!3117 = !DILocation(line: 1098, column: 4, scope: !3026)
!3118 = !DILocation(line: 1099, column: 24, scope: !3026)
!3119 = !DILocation(line: 1099, column: 44, scope: !3026)
!3120 = !DILocation(line: 1099, column: 4, scope: !3026)
!3121 = !DILocation(line: 1100, column: 13, scope: !3026)
!3122 = !DILocation(line: 1100, column: 4, scope: !3026)
!3123 = !DILocation(line: 1101, column: 24, scope: !3026)
!3124 = !DILocation(line: 1101, column: 40, scope: !3026)
!3125 = !DILocation(line: 1101, column: 4, scope: !3026)
!3126 = !DILocation(line: 1102, column: 13, scope: !3026)
!3127 = !DILocation(line: 1102, column: 4, scope: !3026)
!3128 = !DILocation(line: 1103, column: 2, scope: !3026)
!3129 = !DILocation(line: 1109, column: 1, scope: !3001)
!3130 = distinct !DISubprogram(name: "simplify_bitwise_and", scope: !3, file: !3, line: 1212, type: !3131, scopeLine: 1213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{null, !2702, !994}
!3133 = !{!3134, !3135, !3136, !3137, !3138, !3139, !3142}
!3134 = !DILocalVariable(name: "gsi", arg: 1, scope: !3130, file: !3, line: 1212, type: !2702)
!3135 = !DILocalVariable(name: "stmt", arg: 2, scope: !3130, file: !3, line: 1212, type: !994)
!3136 = !DILocalVariable(name: "res", scope: !3130, file: !3, line: 1214, type: !711)
!3137 = !DILocalVariable(name: "arg1", scope: !3130, file: !3, line: 1215, type: !711)
!3138 = !DILocalVariable(name: "arg2", scope: !3130, file: !3, line: 1216, type: !711)
!3139 = !DILocalVariable(name: "def", scope: !3140, file: !3, line: 1223, type: !994)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 1222, column: 5)
!3141 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 1221, column: 7)
!3142 = !DILocalVariable(name: "op", scope: !3143, file: !3, line: 1228, type: !711)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1227, column: 2)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 1225, column: 11)
!3145 = !DILocation(line: 0, scope: !3130)
!3146 = !DILocation(line: 1215, column: 15, scope: !3130)
!3147 = !DILocation(line: 1216, column: 15, scope: !3130)
!3148 = !DILocation(line: 1218, column: 7, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 1218, column: 7)
!3150 = !DILocation(line: 1218, column: 24, scope: !3149)
!3151 = !DILocation(line: 1218, column: 7, scope: !3130)
!3152 = !DILocation(line: 1221, column: 7, scope: !3141)
!3153 = !DILocation(line: 1221, column: 24, scope: !3141)
!3154 = !DILocation(line: 1221, column: 36, scope: !3141)
!3155 = !DILocation(line: 1221, column: 40, scope: !3141)
!3156 = !DILocation(line: 1221, column: 7, scope: !3130)
!3157 = !DILocation(line: 1223, column: 20, scope: !3140)
!3158 = !DILocation(line: 0, scope: !3140)
!3159 = !DILocation(line: 1225, column: 11, scope: !3144)
!3160 = !DILocation(line: 1226, column: 4, scope: !3144)
!3161 = !DILocation(line: 1226, column: 7, scope: !3144)
!3162 = !DILocation(line: 1225, column: 11, scope: !3140)
!3163 = !DILocation(line: 1228, column: 14, scope: !3143)
!3164 = !DILocation(line: 0, scope: !3143)
!3165 = !DILocation(line: 1230, column: 8, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 1230, column: 8)
!3167 = !DILocation(line: 1230, column: 23, scope: !3166)
!3168 = !DILocation(line: 1230, column: 8, scope: !3143)
!3169 = !DILocation(line: 1232, column: 2, scope: !3143)
!3170 = !DILocation(line: 1235, column: 26, scope: !3130)
!3171 = !DILocation(line: 1236, column: 22, scope: !3130)
!3172 = !DILocation(line: 1235, column: 9, scope: !3130)
!3173 = !DILocation(line: 1238, column: 7, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 1238, column: 7)
!3175 = !DILocation(line: 1238, column: 11, scope: !3174)
!3176 = !DILocation(line: 1238, column: 14, scope: !3174)
!3177 = !DILocation(line: 1238, column: 7, scope: !3130)
!3178 = !DILocation(line: 1240, column: 7, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 1239, column: 5)
!3180 = !DILocation(line: 1241, column: 7, scope: !3179)
!3181 = !DILocation(line: 1242, column: 5, scope: !3179)
!3182 = !DILocation(line: 1244, column: 1, scope: !3130)
!3183 = distinct !DISubprogram(name: "gimple_code", scope: !561, file: !561, line: 1052, type: !3184, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3186)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!587, !2678}
!3186 = !{!3187}
!3187 = !DILocalVariable(name: "g", arg: 1, scope: !3183, file: !561, line: 1052, type: !2678)
!3188 = !DILocation(line: 0, scope: !3183)
!3189 = !DILocation(line: 1054, column: 20, scope: !3183)
!3190 = !DILocation(line: 1054, column: 3, scope: !3183)
!3191 = distinct !DISubprogram(name: "simplify_gimple_switch", scope: !3, file: !3, line: 1153, type: !2817, scopeLine: 1154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3192)
!3192 = !{!3193, !3194, !3195, !3196, !3197, !3198, !3199, !3206}
!3193 = !DILocalVariable(name: "stmt", arg: 1, scope: !3191, file: !3, line: 1153, type: !994)
!3194 = !DILocalVariable(name: "cond", scope: !3191, file: !3, line: 1155, type: !711)
!3195 = !DILocalVariable(name: "def", scope: !3191, file: !3, line: 1156, type: !711)
!3196 = !DILocalVariable(name: "to", scope: !3191, file: !3, line: 1156, type: !711)
!3197 = !DILocalVariable(name: "ti", scope: !3191, file: !3, line: 1156, type: !711)
!3198 = !DILocalVariable(name: "def_stmt", scope: !3191, file: !3, line: 1157, type: !994)
!3199 = !DILocalVariable(name: "need_precision", scope: !3200, file: !3, line: 1169, type: !663)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 1168, column: 6)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 1167, column: 8)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 1166, column: 2)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 1165, column: 11)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1163, column: 5)
!3205 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 1162, column: 7)
!3206 = !DILocalVariable(name: "fail", scope: !3200, file: !3, line: 1170, type: !662)
!3207 = !DILocation(line: 0, scope: !3191)
!3208 = !DILocation(line: 1155, column: 15, scope: !3191)
!3209 = !DILocation(line: 1162, column: 7, scope: !3205)
!3210 = !DILocation(line: 1162, column: 24, scope: !3205)
!3211 = !DILocation(line: 1162, column: 7, scope: !3191)
!3212 = !DILocation(line: 1164, column: 18, scope: !3204)
!3213 = !DILocation(line: 1165, column: 11, scope: !3203)
!3214 = !DILocation(line: 1165, column: 11, scope: !3204)
!3215 = !DILocation(line: 1167, column: 8, scope: !3201)
!3216 = !DILocation(line: 1167, column: 42, scope: !3201)
!3217 = !DILocation(line: 1167, column: 8, scope: !3202)
!3218 = !DILocation(line: 1172, column: 14, scope: !3200)
!3219 = !DILocation(line: 1179, column: 13, scope: !3200)
!3220 = !DILocation(line: 1180, column: 13, scope: !3200)
!3221 = !DILocation(line: 1185, column: 25, scope: !3200)
!3222 = !DILocation(line: 0, scope: !3200)
!3223 = !DILocation(line: 1187, column: 14, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 1187, column: 12)
!3225 = !DILocation(line: 1187, column: 12, scope: !3200)
!3226 = !DILocation(line: 1189, column: 17, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 1189, column: 17)
!3228 = !DILocation(line: 1189, column: 36, scope: !3227)
!3229 = !DILocation(line: 1189, column: 40, scope: !3227)
!3230 = !DILocation(line: 1189, column: 17, scope: !3224)
!3231 = !DILocation(line: 1191, column: 37, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 1191, column: 17)
!3233 = !DILocation(line: 1191, column: 17, scope: !3227)
!3234 = !DILocation(line: 1185, column: 23, scope: !3200)
!3235 = !DILocation(line: 1193, column: 12, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 1193, column: 12)
!3237 = !DILocation(line: 1193, column: 32, scope: !3236)
!3238 = !DILocation(line: 1196, column: 13, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 1196, column: 12)
!3240 = !DILocation(line: 1196, column: 12, scope: !3200)
!3241 = !DILocation(line: 1198, column: 5, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 1197, column: 3)
!3243 = !DILocation(line: 1199, column: 5, scope: !3242)
!3244 = !DILocation(line: 1200, column: 3, scope: !3242)
!3245 = !DILocation(line: 1204, column: 1, scope: !3191)
!3246 = distinct !DISubprogram(name: "forward_propagate_into_gimple_cond", scope: !3, file: !3, line: 397, type: !3247, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!663, !994}
!3249 = !{!3250, !3251, !3252, !3253, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3267, !3270}
!3250 = !DILocalVariable(name: "stmt", arg: 1, scope: !3246, file: !3, line: 397, type: !994)
!3251 = !DILocalVariable(name: "did_something", scope: !3246, file: !3, line: 399, type: !663)
!3252 = !DILocalVariable(name: "loc", scope: !3246, file: !3, line: 400, type: !795)
!3253 = !DILocalVariable(name: "tmp", scope: !3254, file: !3, line: 403, type: !711)
!3254 = distinct !DILexicalBlock(scope: !3246, file: !3, line: 402, column: 6)
!3255 = !DILocalVariable(name: "name", scope: !3254, file: !3, line: 404, type: !711)
!3256 = !DILocalVariable(name: "rhs0", scope: !3254, file: !3, line: 404, type: !711)
!3257 = !DILocalVariable(name: "rhs1", scope: !3254, file: !3, line: 404, type: !711)
!3258 = !DILocalVariable(name: "def_stmt", scope: !3254, file: !3, line: 405, type: !994)
!3259 = !DILocalVariable(name: "single_use0_p", scope: !3254, file: !3, line: 406, type: !662)
!3260 = !DILocalVariable(name: "single_use1_p", scope: !3254, file: !3, line: 406, type: !662)
!3261 = !DILocalVariable(name: "code", scope: !3254, file: !3, line: 407, type: !366)
!3262 = !DILocalVariable(name: "op1", scope: !3263, file: !3, line: 419, type: !711)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 418, column: 4)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 417, column: 6)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 412, column: 7)
!3266 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 410, column: 9)
!3267 = !DILocalVariable(name: "op0", scope: !3268, file: !3, line: 428, type: !711)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 427, column: 4)
!3269 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 425, column: 6)
!3270 = !DILocalVariable(name: "cond", scope: !3271, file: !3, line: 453, type: !711)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 452, column: 4)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 451, column: 6)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 450, column: 7)
!3274 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 449, column: 9)
!3275 = !DILocation(line: 0, scope: !3246)
!3276 = !DILocation(line: 400, column: 20, scope: !3246)
!3277 = !DILocation(line: 402, column: 3, scope: !3246)
!3278 = !DILocation(line: 399, column: 7, scope: !3246)
!3279 = !DILocation(line: 0, scope: !3254)
!3280 = !DILocation(line: 406, column: 5, scope: !3254)
!3281 = !DILocation(line: 406, column: 10, scope: !3254)
!3282 = !DILocation(line: 406, column: 33, scope: !3254)
!3283 = !DILocation(line: 407, column: 27, scope: !3254)
!3284 = !DILocation(line: 410, column: 9, scope: !3266)
!3285 = !DILocation(line: 410, column: 51, scope: !3266)
!3286 = !DILocation(line: 411, column: 9, scope: !3266)
!3287 = !DILocation(line: 411, column: 12, scope: !3266)
!3288 = !DILocation(line: 411, column: 47, scope: !3266)
!3289 = !DILocation(line: 410, column: 9, scope: !3254)
!3290 = !DILocation(line: 415, column: 9, scope: !3265)
!3291 = !DILocation(line: 416, column: 13, scope: !3265)
!3292 = !DILocation(line: 417, column: 6, scope: !3264)
!3293 = !DILocation(line: 417, column: 15, scope: !3264)
!3294 = !DILocation(line: 417, column: 18, scope: !3264)
!3295 = !DILocation(line: 417, column: 6, scope: !3265)
!3296 = !DILocation(line: 419, column: 17, scope: !3263)
!3297 = !DILocation(line: 0, scope: !3263)
!3298 = !DILocation(line: 420, column: 26, scope: !3263)
!3299 = !DILocation(line: 420, column: 13, scope: !3263)
!3300 = !DILocation(line: 421, column: 47, scope: !3263)
!3301 = !DILocation(line: 422, column: 14, scope: !3263)
!3302 = !DILocation(line: 422, column: 13, scope: !3263)
!3303 = !DILocation(line: 421, column: 12, scope: !3263)
!3304 = !DILocation(line: 423, column: 4, scope: !3263)
!3305 = !DILocation(line: 425, column: 10, scope: !3269)
!3306 = !DILocation(line: 426, column: 6, scope: !3269)
!3307 = !DILocation(line: 426, column: 9, scope: !3269)
!3308 = !DILocation(line: 426, column: 44, scope: !3269)
!3309 = !DILocation(line: 425, column: 6, scope: !3265)
!3310 = !DILocation(line: 428, column: 17, scope: !3268)
!3311 = !DILocation(line: 0, scope: !3268)
!3312 = !DILocation(line: 429, column: 13, scope: !3268)
!3313 = !DILocation(line: 430, column: 17, scope: !3268)
!3314 = !DILocation(line: 431, column: 11, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 431, column: 10)
!3316 = !DILocation(line: 431, column: 20, scope: !3315)
!3317 = !DILocation(line: 431, column: 24, scope: !3315)
!3318 = !DILocation(line: 431, column: 10, scope: !3268)
!3319 = !DILocation(line: 434, column: 26, scope: !3268)
!3320 = !DILocation(line: 434, column: 13, scope: !3268)
!3321 = !DILocation(line: 435, column: 47, scope: !3268)
!3322 = !DILocation(line: 436, column: 15, scope: !3268)
!3323 = !DILocation(line: 436, column: 14, scope: !3268)
!3324 = !DILocation(line: 435, column: 12, scope: !3268)
!3325 = !DILocation(line: 437, column: 4, scope: !3269)
!3326 = !DILocation(line: 0, scope: !3265)
!3327 = !DILocation(line: 439, column: 10, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 439, column: 6)
!3329 = !DILocation(line: 440, column: 14, scope: !3328)
!3330 = !DILocation(line: 440, column: 6, scope: !3328)
!3331 = !DILocation(line: 441, column: 14, scope: !3328)
!3332 = !DILocation(line: 442, column: 45, scope: !3328)
!3333 = !DILocation(line: 444, column: 10, scope: !3328)
!3334 = !DILocation(line: 443, column: 6, scope: !3328)
!3335 = !DILocation(line: 446, column: 8, scope: !3328)
!3336 = !DILocation(line: 446, column: 22, scope: !3328)
!3337 = !DILocation(line: 446, column: 6, scope: !3328)
!3338 = !DILocation(line: 442, column: 10, scope: !3328)
!3339 = !DILocation(line: 442, column: 4, scope: !3328)
!3340 = !DILocation(line: 449, column: 9, scope: !3274)
!3341 = !DILocation(line: 449, column: 9, scope: !3254)
!3342 = !DILocation(line: 451, column: 6, scope: !3272)
!3343 = !DILocation(line: 451, column: 16, scope: !3272)
!3344 = !DILocation(line: 453, column: 25, scope: !3271)
!3345 = !DILocation(line: 0, scope: !3271)
!3346 = !DILocation(line: 457, column: 15, scope: !3271)
!3347 = !DILocation(line: 457, column: 6, scope: !3271)
!3348 = !DILocation(line: 458, column: 26, scope: !3271)
!3349 = !DILocation(line: 458, column: 6, scope: !3271)
!3350 = !DILocation(line: 459, column: 15, scope: !3271)
!3351 = !DILocation(line: 459, column: 6, scope: !3271)
!3352 = !DILocation(line: 460, column: 26, scope: !3271)
!3353 = !DILocation(line: 460, column: 6, scope: !3271)
!3354 = !DILocation(line: 461, column: 15, scope: !3271)
!3355 = !DILocation(line: 461, column: 6, scope: !3271)
!3356 = !DILocation(line: 462, column: 4, scope: !3271)
!3357 = !DILocation(line: 464, column: 52, scope: !3273)
!3358 = !DILocation(line: 464, column: 9, scope: !3273)
!3359 = !DILocation(line: 465, column: 2, scope: !3273)
!3360 = !DILocation(line: 468, column: 2, scope: !3273)
!3361 = !DILocation(line: 470, column: 6, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 470, column: 6)
!3363 = !DILocation(line: 470, column: 6, scope: !3273)
!3364 = !DILocation(line: 429, column: 11, scope: !3268)
!3365 = !DILocation(line: 480, column: 3, scope: !3246)
!3366 = !DILocation(line: 482, column: 3, scope: !3246)
!3367 = !DILocation(line: 483, column: 1, scope: !3246)
!3368 = distinct !DISubprogram(name: "bb_seq", scope: !561, file: !561, line: 237, type: !3369, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3374)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!984, !3371}
!3371 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !712, line: 112, baseType: !3372)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!3374 = !{!3375}
!3375 = !DILocalVariable(name: "bb", arg: 1, scope: !3368, file: !561, line: 237, type: !3371)
!3376 = !DILocation(line: 0, scope: !3368)
!3377 = !DILocation(line: 239, column: 17, scope: !3368)
!3378 = !DILocation(line: 239, column: 23, scope: !3368)
!3379 = !DILocation(line: 239, column: 33, scope: !3368)
!3380 = !DILocation(line: 239, column: 43, scope: !3368)
!3381 = !DILocation(line: 239, column: 36, scope: !3368)
!3382 = !DILocation(line: 239, column: 10, scope: !3368)
!3383 = !DILocation(line: 239, column: 68, scope: !3368)
!3384 = !DILocation(line: 239, column: 3, scope: !3368)
!3385 = distinct !DISubprogram(name: "gimple_seq_first", scope: !561, file: !561, line: 159, type: !3386, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3391)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!989, !3388}
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !712, line: 67, baseType: !3389)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!3391 = !{!3392}
!3392 = !DILocalVariable(name: "s", arg: 1, scope: !3385, file: !561, line: 159, type: !3388)
!3393 = !DILocation(line: 0, scope: !3385)
!3394 = !DILocation(line: 161, column: 10, scope: !3385)
!3395 = !DILocation(line: 161, column: 17, scope: !3385)
!3396 = !DILocation(line: 161, column: 3, scope: !3385)
!3397 = distinct !DISubprogram(name: "gimple_op", scope: !561, file: !561, line: 1631, type: !3398, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!711, !2678, !7}
!3400 = !{!3401, !3402}
!3401 = !DILocalVariable(name: "gs", arg: 1, scope: !3397, file: !561, line: 1631, type: !2678)
!3402 = !DILocalVariable(name: "i", arg: 2, scope: !3397, file: !561, line: 1631, type: !7)
!3403 = !DILocation(line: 0, scope: !3397)
!3404 = !DILocation(line: 1633, column: 7, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3397, file: !561, line: 1633, column: 7)
!3406 = !DILocation(line: 1633, column: 7, scope: !3397)
!3407 = !DILocation(line: 1638, column: 14, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3405, file: !561, line: 1634, column: 5)
!3409 = !DILocation(line: 1638, column: 7, scope: !3408)
!3410 = !DILocation(line: 0, scope: !3405)
!3411 = !DILocation(line: 1642, column: 1, scope: !3397)
!3412 = distinct !DISubprogram(name: "gimple_has_ops", scope: !561, file: !561, line: 1274, type: !2676, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3413)
!3413 = !{!3414}
!3414 = !DILocalVariable(name: "g", arg: 1, scope: !3412, file: !561, line: 1274, type: !2678)
!3415 = !DILocation(line: 0, scope: !3412)
!3416 = !DILocation(line: 1276, column: 10, scope: !3412)
!3417 = !DILocation(line: 1276, column: 26, scope: !3412)
!3418 = !DILocation(line: 1276, column: 41, scope: !3412)
!3419 = !DILocation(line: 1276, column: 44, scope: !3412)
!3420 = !DILocation(line: 1276, column: 60, scope: !3412)
!3421 = !DILocation(line: 1276, column: 3, scope: !3412)
!3422 = distinct !DISubprogram(name: "gimple_ops", scope: !561, file: !561, line: 1614, type: !3423, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3425)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!1028, !994}
!3425 = !{!3426, !3427}
!3426 = !DILocalVariable(name: "gs", arg: 1, scope: !3422, file: !561, line: 1614, type: !994)
!3427 = !DILocalVariable(name: "off", scope: !3422, file: !561, line: 1616, type: !1139)
!3428 = !DILocation(line: 0, scope: !3422)
!3429 = !DILocation(line: 1621, column: 28, scope: !3422)
!3430 = !DILocation(line: 1621, column: 9, scope: !3422)
!3431 = !DILocation(line: 1622, column: 3, scope: !3422)
!3432 = !DILocation(line: 1624, column: 20, scope: !3422)
!3433 = !DILocation(line: 1624, column: 32, scope: !3422)
!3434 = !DILocation(line: 1624, column: 10, scope: !3422)
!3435 = !DILocation(line: 1624, column: 3, scope: !3422)
!3436 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !561, file: !561, line: 1073, type: !3437, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!560, !994}
!3439 = !{!3440}
!3440 = !DILocalVariable(name: "gs", arg: 1, scope: !3436, file: !561, line: 1073, type: !994)
!3441 = !DILocation(line: 0, scope: !3436)
!3442 = !DILocation(line: 1075, column: 24, scope: !3436)
!3443 = !DILocation(line: 1075, column: 10, scope: !3436)
!3444 = !DILocation(line: 1075, column: 3, scope: !3436)
!3445 = distinct !DISubprogram(name: "gss_for_code", scope: !561, file: !561, line: 1061, type: !3446, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!560, !587}
!3448 = !{!3449}
!3449 = !DILocalVariable(name: "code", arg: 1, scope: !3445, file: !561, line: 1061, type: !587)
!3450 = !DILocation(line: 0, scope: !3445)
!3451 = !DILocation(line: 1066, column: 10, scope: !3445)
!3452 = !DILocation(line: 1066, column: 3, scope: !3445)
!3453 = distinct !DISubprogram(name: "gimple_expr_code", scope: !561, file: !561, line: 1438, type: !2711, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3454)
!3454 = !{!3455, !3456}
!3455 = !DILocalVariable(name: "stmt", arg: 1, scope: !3453, file: !561, line: 1438, type: !2678)
!3456 = !DILocalVariable(name: "code", scope: !3453, file: !561, line: 1440, type: !587)
!3457 = !DILocation(line: 0, scope: !3453)
!3458 = !DILocation(line: 1440, column: 27, scope: !3453)
!3459 = !DILocation(line: 1441, column: 29, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3453, file: !561, line: 1441, column: 7)
!3461 = !DILocation(line: 1442, column: 42, scope: !3460)
!3462 = !DILocation(line: 1442, column: 5, scope: !3460)
!3463 = !DILocation(line: 1446, column: 5, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3460, file: !561, line: 1443, column: 12)
!3465 = !DILocation(line: 1448, column: 5, scope: !3453)
!3466 = !DILocation(line: 1450, column: 1, scope: !3453)
!3467 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !561, file: !561, line: 1686, type: !3468, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!625, !366}
!3470 = !{!3471}
!3471 = !DILocalVariable(name: "code", arg: 1, scope: !3467, file: !561, line: 1686, type: !366)
!3472 = !DILocation(line: 0, scope: !3467)
!3473 = !DILocation(line: 1688, column: 34, scope: !3467)
!3474 = !DILocation(line: 1688, column: 10, scope: !3467)
!3475 = !DILocation(line: 1688, column: 3, scope: !3467)
!3476 = distinct !DISubprogram(name: "gimple_bb", scope: !561, file: !561, line: 1112, type: !3477, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!958, !2678}
!3479 = !{!3480}
!3480 = !DILocalVariable(name: "g", arg: 1, scope: !3476, file: !561, line: 1112, type: !2678)
!3481 = !DILocation(line: 0, scope: !3476)
!3482 = !DILocation(line: 1114, column: 20, scope: !3476)
!3483 = !DILocation(line: 1114, column: 3, scope: !3476)
!3484 = distinct !DISubprogram(name: "has_single_use", scope: !3485, file: !3485, line: 350, type: !3486, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3489)
!3485 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!662, !3488}
!3488 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !712, line: 59, baseType: !1964)
!3489 = !{!3490, !3491}
!3490 = !DILocalVariable(name: "var", arg: 1, scope: !3484, file: !3485, line: 350, type: !3488)
!3491 = !DILocalVariable(name: "ptr", scope: !3484, file: !3485, line: 352, type: !3492)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1970)
!3495 = !DILocation(line: 0, scope: !3484)
!3496 = !DILocation(line: 352, column: 42, scope: !3484)
!3497 = !DILocation(line: 355, column: 19, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3484, file: !3485, line: 355, column: 7)
!3499 = !DILocation(line: 355, column: 11, scope: !3498)
!3500 = !DILocation(line: 355, column: 7, scope: !3484)
!3501 = !DILocation(line: 359, column: 25, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3484, file: !3485, line: 359, column: 7)
!3503 = !DILocation(line: 359, column: 11, scope: !3502)
!3504 = !DILocation(line: 359, column: 7, scope: !3484)
!3505 = !DILocation(line: 360, column: 30, scope: !3502)
!3506 = !DILocation(line: 360, column: 13, scope: !3502)
!3507 = !DILocation(line: 360, column: 12, scope: !3502)
!3508 = !DILocation(line: 360, column: 5, scope: !3502)
!3509 = !DILocation(line: 363, column: 8, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3484, file: !3485, line: 363, column: 7)
!3511 = !DILocation(line: 363, column: 7, scope: !3484)
!3512 = !DILocation(line: 366, column: 10, scope: !3484)
!3513 = !DILocation(line: 366, column: 3, scope: !3484)
!3514 = !DILocation(line: 367, column: 1, scope: !3484)
!3515 = distinct !DISubprogram(name: "first_imm_use_stmt", scope: !3485, file: !3485, line: 1058, type: !3516, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3519)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!994, !3518, !711}
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!3519 = !{!3520, !3521}
!3520 = !DILocalVariable(name: "imm", arg: 1, scope: !3515, file: !3485, line: 1058, type: !3518)
!3521 = !DILocalVariable(name: "var", arg: 2, scope: !3515, file: !3485, line: 1058, type: !711)
!3522 = !DILocation(line: 0, scope: !3515)
!3523 = !DILocation(line: 1060, column: 18, scope: !3515)
!3524 = !DILocation(line: 1060, column: 8, scope: !3515)
!3525 = !DILocation(line: 1060, column: 14, scope: !3515)
!3526 = !DILocation(line: 1061, column: 30, scope: !3515)
!3527 = !DILocation(line: 1061, column: 16, scope: !3515)
!3528 = !DILocation(line: 1062, column: 8, scope: !3515)
!3529 = !DILocation(line: 1062, column: 22, scope: !3515)
!3530 = !DILocation(line: 1067, column: 18, scope: !3515)
!3531 = !DILocation(line: 1067, column: 23, scope: !3515)
!3532 = !DILocation(line: 1068, column: 18, scope: !3515)
!3533 = !DILocation(line: 1068, column: 23, scope: !3515)
!3534 = !DILocation(line: 1069, column: 22, scope: !3515)
!3535 = !DILocation(line: 1069, column: 27, scope: !3515)
!3536 = !DILocation(line: 1070, column: 18, scope: !3515)
!3537 = !DILocation(line: 1070, column: 22, scope: !3515)
!3538 = !DILocation(line: 1072, column: 7, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3515, file: !3485, line: 1072, column: 7)
!3540 = !DILocation(line: 1072, column: 7, scope: !3515)
!3541 = !DILocation(line: 1075, column: 30, scope: !3515)
!3542 = !DILocation(line: 1075, column: 3, scope: !3515)
!3543 = !DILocation(line: 1077, column: 10, scope: !3515)
!3544 = !DILocation(line: 1077, column: 3, scope: !3515)
!3545 = !DILocation(line: 1078, column: 1, scope: !3515)
!3546 = distinct !DISubprogram(name: "end_imm_use_stmt_p", scope: !3485, file: !3485, line: 969, type: !3547, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3551)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!662, !3549}
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2733)
!3551 = !{!3552}
!3552 = !DILocalVariable(name: "imm", arg: 1, scope: !3546, file: !3485, line: 969, type: !3549)
!3553 = !DILocation(line: 0, scope: !3546)
!3554 = !DILocation(line: 971, column: 16, scope: !3546)
!3555 = !DILocation(line: 971, column: 32, scope: !3546)
!3556 = !DILocation(line: 971, column: 24, scope: !3546)
!3557 = !DILocation(line: 971, column: 10, scope: !3546)
!3558 = !DILocation(line: 971, column: 3, scope: !3546)
!3559 = distinct !DISubprogram(name: "is_gimple_debug", scope: !561, file: !561, line: 3249, type: !2676, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3560)
!3560 = !{!3561}
!3561 = !DILocalVariable(name: "gs", arg: 1, scope: !3559, file: !561, line: 3249, type: !2678)
!3562 = !DILocation(line: 0, scope: !3559)
!3563 = !DILocation(line: 3251, column: 10, scope: !3559)
!3564 = !DILocation(line: 3251, column: 27, scope: !3559)
!3565 = !DILocation(line: 3251, column: 3, scope: !3559)
!3566 = distinct !DISubprogram(name: "forward_propagate_addr_expr_1", scope: !3, file: !3, line: 725, type: !3567, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!662, !711, !711, !2702, !662}
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3586, !3587, !3590}
!3570 = !DILocalVariable(name: "name", arg: 1, scope: !3566, file: !3, line: 725, type: !711)
!3571 = !DILocalVariable(name: "def_rhs", arg: 2, scope: !3566, file: !3, line: 725, type: !711)
!3572 = !DILocalVariable(name: "use_stmt_gsi", arg: 3, scope: !3566, file: !3, line: 726, type: !2702)
!3573 = !DILocalVariable(name: "single_use_p", arg: 4, scope: !3566, file: !3, line: 727, type: !662)
!3574 = !DILocalVariable(name: "lhs", scope: !3566, file: !3, line: 729, type: !711)
!3575 = !DILocalVariable(name: "rhs", scope: !3566, file: !3, line: 729, type: !711)
!3576 = !DILocalVariable(name: "rhs2", scope: !3566, file: !3, line: 729, type: !711)
!3577 = !DILocalVariable(name: "array_ref", scope: !3566, file: !3, line: 729, type: !711)
!3578 = !DILocalVariable(name: "rhsp", scope: !3566, file: !3, line: 730, type: !1028)
!3579 = !DILocalVariable(name: "lhsp", scope: !3566, file: !3, line: 730, type: !1028)
!3580 = !DILocalVariable(name: "use_stmt", scope: !3566, file: !3, line: 731, type: !994)
!3581 = !DILocalVariable(name: "rhs_code", scope: !3566, file: !3, line: 732, type: !366)
!3582 = !DILocalVariable(name: "res", scope: !3566, file: !3, line: 733, type: !662)
!3583 = !DILocalVariable(name: "def_rhs_base", scope: !3584, file: !3, line: 841, type: !711)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 840, column: 4)
!3585 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 826, column: 7)
!3586 = !DILocalVariable(name: "new_rhs", scope: !3584, file: !3, line: 841, type: !711)
!3587 = !DILocalVariable(name: "new_rhs", scope: !3588, file: !3, line: 892, type: !711)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 891, column: 5)
!3589 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 890, column: 7)
!3590 = !DILocalVariable(name: "type", scope: !3591, file: !3, line: 897, type: !711)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 896, column: 2)
!3592 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 895, column: 11)
!3593 = !DILocation(line: 0, scope: !3566)
!3594 = !DILocation(line: 731, column: 21, scope: !3566)
!3595 = !DILocation(line: 735, column: 3, scope: !3566)
!3596 = !DILocation(line: 737, column: 9, scope: !3566)
!3597 = !DILocation(line: 738, column: 14, scope: !3566)
!3598 = !DILocation(line: 739, column: 9, scope: !3566)
!3599 = !DILocation(line: 746, column: 7, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 746, column: 7)
!3601 = !DILocation(line: 746, column: 23, scope: !3600)
!3602 = !DILocation(line: 747, column: 7, scope: !3600)
!3603 = !DILocation(line: 747, column: 21, scope: !3600)
!3604 = !DILocation(line: 747, column: 40, scope: !3600)
!3605 = !DILocation(line: 747, column: 33, scope: !3600)
!3606 = !DILocation(line: 754, column: 12, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 754, column: 11)
!3608 = distinct !DILexicalBlock(scope: !3600, file: !3, line: 749, column: 5)
!3609 = !DILocation(line: 755, column: 4, scope: !3607)
!3610 = !DILocation(line: 755, column: 36, scope: !3607)
!3611 = !DILocation(line: 755, column: 53, scope: !3607)
!3612 = !DILocation(line: 755, column: 9, scope: !3607)
!3613 = !DILocation(line: 756, column: 8, scope: !3607)
!3614 = !DILocation(line: 756, column: 13, scope: !3607)
!3615 = !DILocation(line: 757, column: 5, scope: !3607)
!3616 = !DILocation(line: 757, column: 9, scope: !3607)
!3617 = !DILocation(line: 758, column: 9, scope: !3607)
!3618 = !DILocation(line: 758, column: 12, scope: !3607)
!3619 = !DILocation(line: 759, column: 9, scope: !3607)
!3620 = !DILocation(line: 759, column: 13, scope: !3607)
!3621 = !DILocation(line: 760, column: 8, scope: !3607)
!3622 = !DILocation(line: 760, column: 6, scope: !3607)
!3623 = !DILocation(line: 754, column: 11, scope: !3608)
!3624 = !DILocation(line: 761, column: 9, scope: !3607)
!3625 = !DILocation(line: 761, column: 2, scope: !3607)
!3626 = !DILocation(line: 763, column: 41, scope: !3608)
!3627 = !DILocation(line: 763, column: 7, scope: !3608)
!3628 = !DILocation(line: 764, column: 38, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 764, column: 11)
!3630 = !DILocation(line: 764, column: 55, scope: !3629)
!3631 = !DILocation(line: 764, column: 11, scope: !3629)
!3632 = !DILocation(line: 764, column: 11, scope: !3608)
!3633 = !DILocation(line: 765, column: 40, scope: !3629)
!3634 = !DILocation(line: 765, column: 2, scope: !3629)
!3635 = !DILocation(line: 767, column: 2, scope: !3629)
!3636 = !DILocation(line: 773, column: 10, scope: !3566)
!3637 = !DILocation(line: 774, column: 3, scope: !3566)
!3638 = !DILocation(line: 774, column: 31, scope: !3566)
!3639 = !DILocation(line: 774, column: 10, scope: !3566)
!3640 = !DILocation(line: 775, column: 13, scope: !3566)
!3641 = distinct !{!3641, !3637, !3640}
!3642 = !DILocation(line: 780, column: 7, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 780, column: 7)
!3644 = !DILocation(line: 780, column: 23, scope: !3643)
!3645 = !DILocation(line: 781, column: 7, scope: !3643)
!3646 = !DILocation(line: 781, column: 10, scope: !3643)
!3647 = !DILocation(line: 781, column: 32, scope: !3643)
!3648 = !DILocation(line: 780, column: 7, scope: !3566)
!3649 = !DILocation(line: 783, column: 11, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 783, column: 11)
!3651 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 782, column: 5)
!3652 = !DILocation(line: 784, column: 4, scope: !3650)
!3653 = !DILocation(line: 784, column: 16, scope: !3650)
!3654 = !DILocation(line: 784, column: 13, scope: !3650)
!3655 = !DILocation(line: 785, column: 8, scope: !3650)
!3656 = !DILocation(line: 786, column: 14, scope: !3650)
!3657 = !DILocation(line: 786, column: 53, scope: !3650)
!3658 = !DILocation(line: 785, column: 11, scope: !3650)
!3659 = !DILocation(line: 783, column: 11, scope: !3651)
!3660 = !DILocation(line: 788, column: 26, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 787, column: 2)
!3662 = !DILocation(line: 788, column: 12, scope: !3661)
!3663 = !DILocation(line: 788, column: 10, scope: !3661)
!3664 = !DILocation(line: 789, column: 4, scope: !3661)
!3665 = !DILocation(line: 790, column: 4, scope: !3661)
!3666 = !DILocation(line: 793, column: 8, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 793, column: 8)
!3668 = !DILocation(line: 793, column: 8, scope: !3661)
!3669 = !DILocation(line: 733, column: 8, scope: !3566)
!3670 = !DILocation(line: 805, column: 10, scope: !3566)
!3671 = !DILocation(line: 806, column: 3, scope: !3566)
!3672 = !DILocation(line: 806, column: 31, scope: !3566)
!3673 = !DILocation(line: 806, column: 10, scope: !3566)
!3674 = !DILocation(line: 807, column: 3, scope: !3566)
!3675 = !DILocation(line: 807, column: 6, scope: !3566)
!3676 = !DILocation(line: 807, column: 24, scope: !3566)
!3677 = !DILocation(line: 808, column: 13, scope: !3566)
!3678 = distinct !{!3678, !3671, !3677}
!3679 = !DILocation(line: 813, column: 7, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 813, column: 7)
!3681 = !DILocation(line: 813, column: 23, scope: !3680)
!3682 = !DILocation(line: 814, column: 7, scope: !3680)
!3683 = !DILocation(line: 814, column: 10, scope: !3680)
!3684 = !DILocation(line: 814, column: 32, scope: !3680)
!3685 = !DILocation(line: 815, column: 7, scope: !3680)
!3686 = !DILocation(line: 815, column: 10, scope: !3680)
!3687 = !DILocation(line: 813, column: 7, scope: !3566)
!3688 = !DILocation(line: 826, column: 7, scope: !3585)
!3689 = !DILocation(line: 817, column: 29, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 816, column: 5)
!3691 = !DILocation(line: 817, column: 15, scope: !3690)
!3692 = !DILocation(line: 817, column: 13, scope: !3690)
!3693 = !DILocation(line: 818, column: 7, scope: !3690)
!3694 = !DILocation(line: 819, column: 7, scope: !3690)
!3695 = !DILocation(line: 820, column: 7, scope: !3690)
!3696 = !DILocation(line: 826, column: 23, scope: !3585)
!3697 = !DILocation(line: 827, column: 7, scope: !3585)
!3698 = !DILocation(line: 827, column: 10, scope: !3585)
!3699 = !DILocation(line: 827, column: 32, scope: !3585)
!3700 = !DILocation(line: 828, column: 7, scope: !3585)
!3701 = !DILocation(line: 828, column: 10, scope: !3585)
!3702 = !DILocation(line: 829, column: 7, scope: !3585)
!3703 = !DILocation(line: 829, column: 10, scope: !3585)
!3704 = !DILocation(line: 832, column: 7, scope: !3585)
!3705 = !DILocation(line: 832, column: 10, scope: !3585)
!3706 = !DILocation(line: 832, column: 48, scope: !3585)
!3707 = !DILocation(line: 834, column: 7, scope: !3585)
!3708 = !DILocation(line: 834, column: 11, scope: !3585)
!3709 = !DILocation(line: 835, column: 7, scope: !3585)
!3710 = !DILocation(line: 835, column: 11, scope: !3585)
!3711 = !DILocation(line: 836, column: 7, scope: !3585)
!3712 = !DILocation(line: 836, column: 10, scope: !3585)
!3713 = !DILocation(line: 839, column: 7, scope: !3585)
!3714 = !DILocation(line: 839, column: 25, scope: !3585)
!3715 = !DILocation(line: 839, column: 10, scope: !3585)
!3716 = !DILocation(line: 839, column: 55, scope: !3585)
!3717 = !DILocation(line: 839, column: 52, scope: !3585)
!3718 = !DILocation(line: 826, column: 7, scope: !3566)
!3719 = !DILocation(line: 841, column: 49, scope: !3584)
!3720 = !DILocation(line: 841, column: 35, scope: !3584)
!3721 = !DILocation(line: 0, scope: !3584)
!3722 = !DILocation(line: 842, column: 16, scope: !3584)
!3723 = !DILocation(line: 843, column: 10, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 843, column: 10)
!3725 = !DILocation(line: 843, column: 30, scope: !3724)
!3726 = !DILocation(line: 843, column: 10, scope: !3584)
!3727 = !DILocation(line: 847, column: 14, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 847, column: 7)
!3729 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 844, column: 8)
!3730 = !DILocation(line: 847, column: 11, scope: !3728)
!3731 = !DILocation(line: 847, column: 7, scope: !3729)
!3732 = !DILocation(line: 849, column: 13, scope: !3729)
!3733 = !DILocation(line: 851, column: 3, scope: !3729)
!3734 = !DILocation(line: 852, column: 3, scope: !3729)
!3735 = !DILocation(line: 853, column: 3, scope: !3729)
!3736 = !DILocation(line: 858, column: 6, scope: !3584)
!3737 = !DILocation(line: 858, column: 13, scope: !3584)
!3738 = distinct !{!3738, !3736, !3739}
!3739 = !DILocation(line: 859, column: 23, scope: !3584)
!3740 = !DILocation(line: 860, column: 11, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 860, column: 10)
!3742 = !DILocation(line: 860, column: 10, scope: !3584)
!3743 = !DILocation(line: 864, column: 9, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 861, column: 8)
!3745 = !DILocation(line: 865, column: 3, scope: !3744)
!3746 = !DILocation(line: 866, column: 3, scope: !3744)
!3747 = !DILocation(line: 867, column: 3, scope: !3744)
!3748 = !DILocation(line: 873, column: 7, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 873, column: 7)
!3750 = !DILocation(line: 873, column: 41, scope: !3749)
!3751 = !DILocation(line: 874, column: 7, scope: !3749)
!3752 = !DILocation(line: 874, column: 10, scope: !3749)
!3753 = !DILocation(line: 874, column: 40, scope: !3749)
!3754 = !DILocation(line: 873, column: 7, scope: !3566)
!3755 = !DILocation(line: 881, column: 15, scope: !3566)
!3756 = !DILocation(line: 882, column: 7, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 882, column: 7)
!3758 = !DILocation(line: 882, column: 29, scope: !3757)
!3759 = !DILocation(line: 883, column: 7, scope: !3757)
!3760 = !DILocation(line: 883, column: 10, scope: !3757)
!3761 = !DILocation(line: 883, column: 62, scope: !3757)
!3762 = !DILocation(line: 884, column: 7, scope: !3757)
!3763 = !DILocation(line: 884, column: 10, scope: !3757)
!3764 = !DILocation(line: 884, column: 50, scope: !3757)
!3765 = !DILocation(line: 882, column: 7, scope: !3566)
!3766 = !DILocation(line: 887, column: 10, scope: !3566)
!3767 = !DILocation(line: 890, column: 7, scope: !3589)
!3768 = !DILocation(line: 890, column: 24, scope: !3589)
!3769 = !DILocation(line: 890, column: 7, scope: !3566)
!3770 = !DILocation(line: 892, column: 48, scope: !3588)
!3771 = !DILocation(line: 893, column: 15, scope: !3588)
!3772 = !DILocation(line: 892, column: 22, scope: !3588)
!3773 = !DILocation(line: 0, scope: !3588)
!3774 = !DILocation(line: 895, column: 11, scope: !3592)
!3775 = !DILocation(line: 895, column: 11, scope: !3588)
!3776 = !DILocation(line: 897, column: 16, scope: !3591)
!3777 = !DILocation(line: 0, scope: !3591)
!3778 = !DILocation(line: 898, column: 14, scope: !3591)
!3779 = !DILocation(line: 899, column: 42, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 899, column: 8)
!3781 = !DILocation(line: 899, column: 9, scope: !3780)
!3782 = !DILocation(line: 899, column: 8, scope: !3591)
!3783 = !DILocation(line: 901, column: 13, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !3, line: 901, column: 12)
!3785 = distinct !DILexicalBlock(scope: !3780, file: !3, line: 900, column: 6)
!3786 = !DILocation(line: 901, column: 12, scope: !3785)
!3787 = !DILocation(line: 902, column: 13, scope: !3784)
!3788 = !DILocation(line: 902, column: 3, scope: !3784)
!3789 = !DILocation(line: 905, column: 18, scope: !3785)
!3790 = !DILocation(line: 906, column: 6, scope: !3785)
!3791 = !DILocation(line: 907, column: 4, scope: !3591)
!3792 = !DILocation(line: 908, column: 15, scope: !3591)
!3793 = !DILocation(line: 909, column: 4, scope: !3591)
!3794 = !DILocation(line: 910, column: 4, scope: !3591)
!3795 = !DILocation(line: 919, column: 7, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 919, column: 7)
!3797 = !DILocation(line: 919, column: 24, scope: !3796)
!3798 = !DILocation(line: 920, column: 7, scope: !3796)
!3799 = !DILocation(line: 920, column: 25, scope: !3796)
!3800 = !DILocation(line: 920, column: 10, scope: !3796)
!3801 = !DILocation(line: 921, column: 7, scope: !3796)
!3802 = !DILocation(line: 921, column: 37, scope: !3796)
!3803 = !DILocation(line: 921, column: 55, scope: !3796)
!3804 = !DILocation(line: 921, column: 10, scope: !3796)
!3805 = !DILocation(line: 924, column: 7, scope: !3796)
!3806 = !DILocation(line: 924, column: 37, scope: !3796)
!3807 = !DILocation(line: 924, column: 54, scope: !3796)
!3808 = !DILocation(line: 924, column: 10, scope: !3796)
!3809 = !DILocation(line: 919, column: 7, scope: !3566)
!3810 = !DILocation(line: 925, column: 12, scope: !3796)
!3811 = !DILocation(line: 925, column: 5, scope: !3796)
!3812 = !DILocation(line: 928, column: 1, scope: !3566)
!3813 = distinct !DISubprogram(name: "has_zero_uses", scope: !3485, file: !3485, line: 332, type: !3486, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3814)
!3814 = !{!3815, !3816}
!3815 = !DILocalVariable(name: "var", arg: 1, scope: !3813, file: !3485, line: 332, type: !3488)
!3816 = !DILocalVariable(name: "ptr", scope: !3813, file: !3485, line: 334, type: !3492)
!3817 = !DILocation(line: 0, scope: !3813)
!3818 = !DILocation(line: 334, column: 42, scope: !3813)
!3819 = !DILocation(line: 337, column: 19, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3813, file: !3485, line: 337, column: 7)
!3821 = !DILocation(line: 337, column: 11, scope: !3820)
!3822 = !DILocation(line: 337, column: 7, scope: !3813)
!3823 = !DILocation(line: 342, column: 8, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3813, file: !3485, line: 342, column: 7)
!3825 = !DILocation(line: 342, column: 7, scope: !3813)
!3826 = !DILocation(line: 345, column: 10, scope: !3813)
!3827 = !DILocation(line: 345, column: 3, scope: !3813)
!3828 = !DILocation(line: 346, column: 1, scope: !3813)
!3829 = distinct !DISubprogram(name: "next_imm_use_stmt", scope: !3485, file: !3485, line: 1083, type: !3830, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!994, !3518}
!3832 = !{!3833}
!3833 = !DILocalVariable(name: "imm", arg: 1, scope: !3829, file: !3485, line: 1083, type: !3518)
!3834 = !DILocation(line: 0, scope: !3829)
!3835 = !DILocation(line: 1085, column: 33, scope: !3829)
!3836 = !DILocation(line: 1085, column: 16, scope: !3829)
!3837 = !DILocation(line: 1086, column: 7, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3829, file: !3485, line: 1086, column: 7)
!3839 = !DILocation(line: 1086, column: 7, scope: !3829)
!3840 = !DILocation(line: 1088, column: 26, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !3485, line: 1088, column: 11)
!3842 = distinct !DILexicalBlock(scope: !3838, file: !3485, line: 1087, column: 5)
!3843 = !DILocation(line: 1088, column: 31, scope: !3841)
!3844 = !DILocation(line: 1088, column: 11, scope: !3842)
!3845 = !DILocation(line: 1089, column: 24, scope: !3841)
!3846 = !DILocation(line: 1089, column: 2, scope: !3841)
!3847 = !DILocation(line: 1093, column: 30, scope: !3829)
!3848 = !DILocation(line: 1093, column: 3, scope: !3829)
!3849 = !DILocation(line: 1094, column: 10, scope: !3829)
!3850 = !DILocation(line: 1094, column: 3, scope: !3829)
!3851 = !DILocation(line: 1095, column: 1, scope: !3829)
!3852 = distinct !DISubprogram(name: "link_use_stmts_after", scope: !3485, file: !3485, line: 1018, type: !3853, scopeLine: 1019, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !1968, !3518}
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861, !3862, !3875}
!3856 = !DILocalVariable(name: "head", arg: 1, scope: !3852, file: !3485, line: 1018, type: !1968)
!3857 = !DILocalVariable(name: "imm", arg: 2, scope: !3852, file: !3485, line: 1018, type: !3518)
!3858 = !DILocalVariable(name: "use_p", scope: !3852, file: !3485, line: 1020, type: !1968)
!3859 = !DILocalVariable(name: "last_p", scope: !3852, file: !3485, line: 1021, type: !1968)
!3860 = !DILocalVariable(name: "head_stmt", scope: !3852, file: !3485, line: 1022, type: !994)
!3861 = !DILocalVariable(name: "use", scope: !3852, file: !3485, line: 1023, type: !711)
!3862 = !DILocalVariable(name: "op_iter", scope: !3852, file: !3485, line: 1024, type: !3863)
!3863 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !632, line: 140, baseType: !3864)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !632, line: 131, size: 320, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3870, !3872, !3873, !3874}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3864, file: !632, line: 133, baseType: !662, size: 8)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !3864, file: !632, line: 134, baseType: !631, size: 32, offset: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !3864, file: !632, line: 135, baseType: !3869, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !632, line: 42, baseType: !1023)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !3864, file: !632, line: 136, baseType: !3871, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !632, line: 50, baseType: !1030)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !3864, file: !632, line: 137, baseType: !663, size: 32, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !3864, file: !632, line: 138, baseType: !663, size: 32, offset: 224)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !3864, file: !632, line: 139, baseType: !994, size: 64, offset: 256)
!3875 = !DILocalVariable(name: "flag", scope: !3852, file: !3485, line: 1025, type: !663)
!3876 = !DILocation(line: 0, scope: !3852)
!3877 = !DILocation(line: 1022, column: 22, scope: !3852)
!3878 = !DILocation(line: 1023, column: 14, scope: !3852)
!3879 = !DILocation(line: 1024, column: 3, scope: !3852)
!3880 = !DILocation(line: 1028, column: 11, scope: !3852)
!3881 = !DILocation(line: 1030, column: 7, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3852, file: !3485, line: 1030, column: 7)
!3883 = !DILocation(line: 1030, column: 31, scope: !3882)
!3884 = !DILocation(line: 1030, column: 7, scope: !3852)
!3885 = !DILocation(line: 1032, column: 7, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !3485, line: 1032, column: 7)
!3887 = distinct !DILexicalBlock(scope: !3882, file: !3485, line: 1031, column: 5)
!3888 = !DILocation(line: 0, scope: !3886)
!3889 = !DILocation(line: 1032, column: 7, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3886, file: !3485, line: 1032, column: 7)
!3891 = !DILocation(line: 1033, column: 6, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3890, file: !3485, line: 1033, column: 6)
!3893 = !DILocation(line: 1033, column: 27, scope: !3892)
!3894 = !DILocation(line: 1033, column: 6, scope: !3890)
!3895 = !DILocation(line: 1034, column: 13, scope: !3892)
!3896 = !DILocation(line: 1034, column: 4, scope: !3892)
!3897 = distinct !{!3897, !3885, !3898}
!3898 = !DILocation(line: 1034, column: 53, scope: !3886)
!3899 = !DILocation(line: 1038, column: 11, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3882, file: !3485, line: 1037, column: 5)
!3901 = !DILocation(line: 1040, column: 4, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !3485, line: 1040, column: 4)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !3485, line: 1039, column: 2)
!3904 = distinct !DILexicalBlock(scope: !3900, file: !3485, line: 1038, column: 11)
!3905 = !DILocation(line: 0, scope: !3902)
!3906 = !DILocation(line: 1040, column: 4, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3902, file: !3485, line: 1040, column: 4)
!3908 = !DILocation(line: 1041, column: 10, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3907, file: !3485, line: 1041, column: 10)
!3910 = !DILocation(line: 1041, column: 31, scope: !3909)
!3911 = !DILocation(line: 1041, column: 10, scope: !3907)
!3912 = !DILocation(line: 1042, column: 17, scope: !3909)
!3913 = !DILocation(line: 1042, column: 8, scope: !3909)
!3914 = distinct !{!3914, !3901, !3915}
!3915 = !DILocation(line: 1042, column: 57, scope: !3902)
!3916 = !DILocation(line: 1044, column: 25, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3904, file: !3485, line: 1044, column: 16)
!3918 = !DILocation(line: 1044, column: 53, scope: !3917)
!3919 = !DILocation(line: 1044, column: 16, scope: !3904)
!3920 = !DILocation(line: 1046, column: 8, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3922, file: !3485, line: 1046, column: 8)
!3922 = distinct !DILexicalBlock(scope: !3917, file: !3485, line: 1045, column: 2)
!3923 = !DILocation(line: 1046, column: 29, scope: !3921)
!3924 = !DILocation(line: 1046, column: 8, scope: !3922)
!3925 = !DILocation(line: 1047, column: 15, scope: !3921)
!3926 = !DILocation(line: 1047, column: 6, scope: !3921)
!3927 = !DILocation(line: 1051, column: 22, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3852, file: !3485, line: 1051, column: 7)
!3929 = !DILocation(line: 1021, column: 17, scope: !3852)
!3930 = !DILocation(line: 1051, column: 27, scope: !3928)
!3931 = !DILocation(line: 1051, column: 7, scope: !3852)
!3932 = !DILocation(line: 1052, column: 27, scope: !3928)
!3933 = !DILocation(line: 1052, column: 5, scope: !3928)
!3934 = !DILocation(line: 1053, column: 32, scope: !3852)
!3935 = !DILocation(line: 1053, column: 3, scope: !3852)
!3936 = !DILocation(line: 1054, column: 1, scope: !3852)
!3937 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !3485, file: !3485, line: 427, type: !3938, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3940)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!711, !1968}
!3940 = !{!3941}
!3941 = !DILocalVariable(name: "use", arg: 1, scope: !3937, file: !3485, line: 427, type: !1968)
!3942 = !DILocation(line: 0, scope: !3937)
!3943 = !DILocation(line: 429, column: 17, scope: !3937)
!3944 = !DILocation(line: 429, column: 10, scope: !3937)
!3945 = !DILocation(line: 429, column: 3, scope: !3937)
!3946 = distinct !DISubprogram(name: "op_iter_init_phiuse", scope: !3485, file: !3485, line: 910, type: !3947, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3950)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!1968, !3949, !994, !663}
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3950 = !{!3951, !3952, !3953, !3954, !3955}
!3951 = !DILocalVariable(name: "ptr", arg: 1, scope: !3946, file: !3485, line: 910, type: !3949)
!3952 = !DILocalVariable(name: "phi", arg: 2, scope: !3946, file: !3485, line: 910, type: !994)
!3953 = !DILocalVariable(name: "flags", arg: 3, scope: !3946, file: !3485, line: 910, type: !663)
!3954 = !DILocalVariable(name: "phi_def", scope: !3946, file: !3485, line: 912, type: !711)
!3955 = !DILocalVariable(name: "comp", scope: !3946, file: !3485, line: 913, type: !663)
!3956 = !DILocation(line: 0, scope: !3946)
!3957 = !DILocation(line: 912, column: 18, scope: !3946)
!3958 = !DILocation(line: 915, column: 3, scope: !3946)
!3959 = !DILocation(line: 916, column: 8, scope: !3946)
!3960 = !DILocation(line: 916, column: 13, scope: !3946)
!3961 = !DILocation(line: 918, column: 3, scope: !3946)
!3962 = !DILocation(line: 920, column: 11, scope: !3946)
!3963 = !DILocation(line: 923, column: 14, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3946, file: !3485, line: 923, column: 7)
!3965 = !DILocation(line: 923, column: 22, scope: !3964)
!3966 = !DILocation(line: 923, column: 7, scope: !3946)
!3967 = !DILocation(line: 925, column: 17, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3964, file: !3485, line: 924, column: 5)
!3969 = !DILocation(line: 926, column: 7, scope: !3968)
!3970 = !DILocation(line: 929, column: 8, scope: !3946)
!3971 = !DILocation(line: 929, column: 17, scope: !3946)
!3972 = !DILocation(line: 930, column: 18, scope: !3946)
!3973 = !DILocation(line: 930, column: 8, scope: !3946)
!3974 = !DILocation(line: 930, column: 16, scope: !3946)
!3975 = !DILocation(line: 931, column: 8, scope: !3946)
!3976 = !DILocation(line: 931, column: 18, scope: !3946)
!3977 = !DILocation(line: 932, column: 10, scope: !3946)
!3978 = !DILocation(line: 932, column: 3, scope: !3946)
!3979 = !DILocation(line: 933, column: 1, scope: !3946)
!3980 = distinct !DISubprogram(name: "op_iter_done", scope: !3485, file: !3485, line: 652, type: !3981, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3985)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!662, !3983}
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3863)
!3985 = !{!3986}
!3986 = !DILocalVariable(name: "ptr", arg: 1, scope: !3980, file: !3485, line: 652, type: !3983)
!3987 = !DILocation(line: 0, scope: !3980)
!3988 = !DILocation(line: 654, column: 15, scope: !3980)
!3989 = !DILocation(line: 654, column: 3, scope: !3980)
!3990 = distinct !DISubprogram(name: "move_use_after_head", scope: !3485, file: !3485, line: 990, type: !3991, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3993)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!1968, !1968, !1968, !1968}
!3993 = !{!3994, !3995, !3996}
!3994 = !DILocalVariable(name: "use_p", arg: 1, scope: !3990, file: !3485, line: 990, type: !1968)
!3995 = !DILocalVariable(name: "head", arg: 2, scope: !3990, file: !3485, line: 990, type: !1968)
!3996 = !DILocalVariable(name: "last_p", arg: 3, scope: !3990, file: !3485, line: 991, type: !1968)
!3997 = !DILocation(line: 0, scope: !3990)
!3998 = !DILocation(line: 997, column: 13, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3990, file: !3485, line: 997, column: 7)
!4000 = !DILocation(line: 997, column: 7, scope: !3990)
!4001 = !DILocation(line: 1000, column: 19, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !3485, line: 1000, column: 11)
!4003 = distinct !DILexicalBlock(scope: !3999, file: !3485, line: 998, column: 5)
!4004 = !DILocation(line: 1000, column: 24, scope: !4002)
!4005 = !DILocation(line: 1000, column: 11, scope: !4003)
!4006 = !DILocation(line: 1005, column: 4, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4002, file: !3485, line: 1003, column: 2)
!4008 = !DILocation(line: 1006, column: 4, scope: !4007)
!4009 = !DILocation(line: 1010, column: 3, scope: !3990)
!4010 = distinct !DISubprogram(name: "op_iter_next_use", scope: !3485, file: !3485, line: 659, type: !4011, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!1968, !3949}
!4013 = !{!4014, !4015}
!4014 = !DILocalVariable(name: "ptr", arg: 1, scope: !4010, file: !3485, line: 659, type: !3949)
!4015 = !DILocalVariable(name: "use_p", scope: !4010, file: !3485, line: 661, type: !1968)
!4016 = !DILocation(line: 0, scope: !4010)
!4017 = !DILocation(line: 665, column: 12, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4010, file: !3485, line: 665, column: 7)
!4019 = !DILocation(line: 665, column: 7, scope: !4018)
!4020 = !DILocation(line: 665, column: 7, scope: !4010)
!4021 = !DILocation(line: 667, column: 15, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4018, file: !3485, line: 666, column: 5)
!4023 = !DILocation(line: 668, column: 30, scope: !4022)
!4024 = !DILocation(line: 668, column: 17, scope: !4022)
!4025 = !DILocation(line: 669, column: 7, scope: !4022)
!4026 = !DILocation(line: 671, column: 12, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4010, file: !3485, line: 671, column: 7)
!4028 = !DILocation(line: 671, column: 25, scope: !4027)
!4029 = !DILocation(line: 671, column: 18, scope: !4027)
!4030 = !DILocation(line: 671, column: 7, scope: !4010)
!4031 = !DILocation(line: 673, column: 14, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4027, file: !3485, line: 672, column: 5)
!4033 = !DILocation(line: 673, column: 7, scope: !4032)
!4034 = !DILocation(line: 675, column: 8, scope: !4010)
!4035 = !DILocation(line: 675, column: 13, scope: !4010)
!4036 = !DILocation(line: 676, column: 3, scope: !4010)
!4037 = !DILocation(line: 677, column: 1, scope: !4010)
!4038 = distinct !DISubprogram(name: "op_iter_init_use", scope: !3485, file: !3485, line: 768, type: !3947, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4039)
!4039 = !{!4040, !4041, !4042}
!4040 = !DILocalVariable(name: "ptr", arg: 1, scope: !4038, file: !3485, line: 768, type: !3949)
!4041 = !DILocalVariable(name: "stmt", arg: 2, scope: !4038, file: !3485, line: 768, type: !994)
!4042 = !DILocalVariable(name: "flags", arg: 3, scope: !4038, file: !3485, line: 768, type: !663)
!4043 = !DILocation(line: 0, scope: !4038)
!4044 = !DILocation(line: 770, column: 3, scope: !4038)
!4045 = !DILocation(line: 772, column: 3, scope: !4038)
!4046 = !DILocation(line: 773, column: 8, scope: !4038)
!4047 = !DILocation(line: 773, column: 18, scope: !4038)
!4048 = !DILocation(line: 774, column: 10, scope: !4038)
!4049 = !DILocation(line: 774, column: 3, scope: !4038)
!4050 = distinct !DISubprogram(name: "gimple_vuse_op", scope: !561, file: !561, line: 1334, type: !4051, scopeLine: 1335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4053)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!1968, !2678}
!4053 = !{!4054, !4055}
!4054 = !DILocalVariable(name: "g", arg: 1, scope: !4050, file: !561, line: 1334, type: !2678)
!4055 = !DILocalVariable(name: "ops", scope: !4050, file: !561, line: 1336, type: !1030)
!4056 = !DILocation(line: 0, scope: !4050)
!4057 = !DILocation(line: 1337, column: 8, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4050, file: !561, line: 1337, column: 7)
!4059 = !DILocation(line: 1337, column: 7, scope: !4050)
!4060 = !DILocation(line: 1339, column: 25, scope: !4050)
!4061 = !DILocation(line: 1340, column: 7, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4050, file: !561, line: 1340, column: 7)
!4063 = !DILocation(line: 1341, column: 7, scope: !4062)
!4064 = !DILocation(line: 1341, column: 28, scope: !4062)
!4065 = !DILocation(line: 1341, column: 49, scope: !4062)
!4066 = !DILocation(line: 1341, column: 32, scope: !4062)
!4067 = !DILocation(line: 1342, column: 12, scope: !4062)
!4068 = !DILocation(line: 1340, column: 7, scope: !4050)
!4069 = !DILocation(line: 1344, column: 1, scope: !4050)
!4070 = distinct !DISubprogram(name: "delink_imm_use", scope: !3485, file: !3485, line: 188, type: !4071, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4073)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{null, !1969}
!4073 = !{!4074}
!4074 = !DILocalVariable(name: "linknode", arg: 1, scope: !4070, file: !3485, line: 188, type: !1969)
!4075 = !DILocation(line: 0, scope: !4070)
!4076 = !DILocation(line: 191, column: 17, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4070, file: !3485, line: 191, column: 7)
!4078 = !DILocation(line: 191, column: 22, scope: !4077)
!4079 = !DILocation(line: 191, column: 7, scope: !4070)
!4080 = !DILocation(line: 194, column: 36, scope: !4070)
!4081 = !DILocation(line: 194, column: 19, scope: !4070)
!4082 = !DILocation(line: 194, column: 24, scope: !4070)
!4083 = !DILocation(line: 195, column: 36, scope: !4070)
!4084 = !DILocation(line: 195, column: 13, scope: !4070)
!4085 = !DILocation(line: 195, column: 24, scope: !4070)
!4086 = !DILocation(line: 196, column: 18, scope: !4070)
!4087 = !DILocation(line: 197, column: 18, scope: !4070)
!4088 = !DILocation(line: 198, column: 1, scope: !4070)
!4089 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !3485, file: !3485, line: 202, type: !4090, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4092)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{null, !1969, !1969}
!4092 = !{!4093, !4094}
!4093 = !DILocalVariable(name: "linknode", arg: 1, scope: !4089, file: !3485, line: 202, type: !1969)
!4094 = !DILocalVariable(name: "list", arg: 2, scope: !4089, file: !3485, line: 202, type: !1969)
!4095 = !DILocation(line: 0, scope: !4089)
!4096 = !DILocation(line: 206, column: 13, scope: !4089)
!4097 = !DILocation(line: 206, column: 18, scope: !4089)
!4098 = !DILocation(line: 207, column: 26, scope: !4089)
!4099 = !DILocation(line: 207, column: 13, scope: !4089)
!4100 = !DILocation(line: 207, column: 18, scope: !4089)
!4101 = !DILocation(line: 208, column: 9, scope: !4089)
!4102 = !DILocation(line: 208, column: 15, scope: !4089)
!4103 = !DILocation(line: 208, column: 20, scope: !4089)
!4104 = !DILocation(line: 209, column: 14, scope: !4089)
!4105 = !DILocation(line: 210, column: 1, scope: !4089)
!4106 = distinct !DISubprogram(name: "gimple_phi_result", scope: !561, file: !561, line: 3071, type: !2686, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4107)
!4107 = !{!4108}
!4108 = !DILocalVariable(name: "gs", arg: 1, scope: !4106, file: !561, line: 3071, type: !2678)
!4109 = !DILocation(line: 0, scope: !4106)
!4110 = !DILocation(line: 3074, column: 25, scope: !4106)
!4111 = !DILocation(line: 3074, column: 3, scope: !4106)
!4112 = distinct !DISubprogram(name: "clear_and_done_ssa_iter", scope: !3485, file: !3485, line: 729, type: !4113, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4115)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !3949}
!4115 = !{!4116}
!4116 = !DILocalVariable(name: "ptr", arg: 1, scope: !4112, file: !3485, line: 729, type: !3949)
!4117 = !DILocation(line: 0, scope: !4112)
!4118 = !DILocation(line: 731, column: 8, scope: !4112)
!4119 = !DILocation(line: 731, column: 13, scope: !4112)
!4120 = !DILocation(line: 732, column: 8, scope: !4112)
!4121 = !DILocation(line: 732, column: 13, scope: !4112)
!4122 = !DILocation(line: 733, column: 8, scope: !4112)
!4123 = !DILocation(line: 733, column: 18, scope: !4112)
!4124 = !DILocation(line: 734, column: 8, scope: !4112)
!4125 = !DILocation(line: 734, column: 14, scope: !4112)
!4126 = !DILocation(line: 735, column: 8, scope: !4112)
!4127 = !DILocation(line: 735, column: 16, scope: !4112)
!4128 = !DILocation(line: 736, column: 8, scope: !4112)
!4129 = !DILocation(line: 736, column: 17, scope: !4112)
!4130 = !DILocation(line: 737, column: 8, scope: !4112)
!4131 = !DILocation(line: 737, column: 13, scope: !4112)
!4132 = !DILocation(line: 738, column: 1, scope: !4112)
!4133 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !561, file: !561, line: 3061, type: !4134, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4136)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!7, !2678}
!4136 = !{!4137}
!4137 = !DILocalVariable(name: "gs", arg: 1, scope: !4133, file: !561, line: 3061, type: !2678)
!4138 = !DILocation(line: 0, scope: !4133)
!4139 = !DILocation(line: 3064, column: 25, scope: !4133)
!4140 = !DILocation(line: 3064, column: 3, scope: !4133)
!4141 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !3485, file: !3485, line: 442, type: !4142, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4144)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!1968, !994, !663}
!4144 = !{!4145, !4146}
!4145 = !DILocalVariable(name: "gs", arg: 1, scope: !4141, file: !3485, line: 442, type: !994)
!4146 = !DILocalVariable(name: "i", arg: 2, scope: !4141, file: !3485, line: 442, type: !663)
!4147 = !DILocation(line: 0, scope: !4141)
!4148 = !DILocation(line: 444, column: 11, scope: !4141)
!4149 = !DILocation(line: 444, column: 35, scope: !4141)
!4150 = !DILocation(line: 444, column: 3, scope: !4141)
!4151 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !561, file: !561, line: 3100, type: !4152, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4155)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!4154, !994, !7}
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!4155 = !{!4156, !4157}
!4156 = !DILocalVariable(name: "gs", arg: 1, scope: !4151, file: !561, line: 3100, type: !994)
!4157 = !DILocalVariable(name: "index", arg: 2, scope: !4151, file: !561, line: 3100, type: !7)
!4158 = !DILocation(line: 0, scope: !4151)
!4159 = !DILocation(line: 3103, column: 3, scope: !4151)
!4160 = !DILocation(line: 3104, column: 12, scope: !4151)
!4161 = !DILocation(line: 3104, column: 3, scope: !4151)
!4162 = distinct !DISubprogram(name: "op_iter_init", scope: !3485, file: !3485, line: 742, type: !4163, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4165)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !3949, !994, !663}
!4165 = !{!4166, !4167, !4168}
!4166 = !DILocalVariable(name: "ptr", arg: 1, scope: !4162, file: !3485, line: 742, type: !3949)
!4167 = !DILocalVariable(name: "stmt", arg: 2, scope: !4162, file: !3485, line: 742, type: !994)
!4168 = !DILocalVariable(name: "flags", arg: 3, scope: !4162, file: !3485, line: 742, type: !663)
!4169 = !DILocation(line: 0, scope: !4162)
!4170 = !DILocation(line: 746, column: 3, scope: !4162)
!4171 = !DILocation(line: 748, column: 22, scope: !4162)
!4172 = !DILocation(line: 748, column: 15, scope: !4162)
!4173 = !DILocation(line: 748, column: 52, scope: !4162)
!4174 = !DILocation(line: 748, column: 8, scope: !4162)
!4175 = !DILocation(line: 748, column: 13, scope: !4162)
!4176 = !DILocation(line: 749, column: 15, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4162, file: !3485, line: 749, column: 7)
!4178 = !DILocation(line: 750, column: 7, scope: !4177)
!4179 = !DILocation(line: 750, column: 10, scope: !4177)
!4180 = !DILocation(line: 751, column: 7, scope: !4177)
!4181 = !DILocation(line: 751, column: 10, scope: !4177)
!4182 = !DILocation(line: 751, column: 29, scope: !4177)
!4183 = !DILocation(line: 749, column: 7, scope: !4162)
!4184 = !DILocation(line: 752, column: 22, scope: !4177)
!4185 = !DILocation(line: 752, column: 28, scope: !4177)
!4186 = !DILocation(line: 752, column: 15, scope: !4177)
!4187 = !DILocation(line: 752, column: 5, scope: !4177)
!4188 = !DILocation(line: 753, column: 22, scope: !4162)
!4189 = !DILocation(line: 753, column: 15, scope: !4162)
!4190 = !DILocation(line: 753, column: 52, scope: !4162)
!4191 = !DILocation(line: 753, column: 8, scope: !4162)
!4192 = !DILocation(line: 753, column: 13, scope: !4162)
!4193 = !DILocation(line: 754, column: 15, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4162, file: !3485, line: 754, column: 7)
!4195 = !DILocation(line: 755, column: 7, scope: !4194)
!4196 = !DILocation(line: 755, column: 10, scope: !4194)
!4197 = !DILocation(line: 756, column: 7, scope: !4194)
!4198 = !DILocation(line: 756, column: 10, scope: !4194)
!4199 = !DILocation(line: 756, column: 29, scope: !4194)
!4200 = !DILocation(line: 754, column: 7, scope: !4162)
!4201 = !DILocation(line: 757, column: 22, scope: !4194)
!4202 = !DILocation(line: 757, column: 28, scope: !4194)
!4203 = !DILocation(line: 757, column: 15, scope: !4194)
!4204 = !DILocation(line: 757, column: 5, scope: !4194)
!4205 = !DILocation(line: 758, column: 8, scope: !4162)
!4206 = !DILocation(line: 758, column: 13, scope: !4162)
!4207 = !DILocation(line: 760, column: 8, scope: !4162)
!4208 = !DILocation(line: 760, column: 14, scope: !4162)
!4209 = !DILocation(line: 761, column: 8, scope: !4162)
!4210 = !DILocation(line: 761, column: 16, scope: !4162)
!4211 = !DILocation(line: 762, column: 8, scope: !4162)
!4212 = !DILocation(line: 762, column: 17, scope: !4162)
!4213 = !DILocation(line: 763, column: 1, scope: !4162)
!4214 = distinct !DISubprogram(name: "gimple_def_ops", scope: !561, file: !561, line: 1292, type: !4215, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!1023, !2678}
!4217 = !{!4218}
!4218 = !DILocalVariable(name: "g", arg: 1, scope: !4214, file: !561, line: 1292, type: !2678)
!4219 = !DILocation(line: 0, scope: !4214)
!4220 = !DILocation(line: 1294, column: 8, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4214, file: !561, line: 1294, column: 7)
!4222 = !DILocation(line: 1294, column: 7, scope: !4214)
!4223 = !DILocation(line: 1296, column: 26, scope: !4214)
!4224 = !DILocation(line: 1296, column: 3, scope: !4214)
!4225 = !DILocation(line: 1297, column: 1, scope: !4214)
!4226 = distinct !DISubprogram(name: "gimple_vdef", scope: !561, file: !561, line: 1375, type: !2686, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4227)
!4227 = !{!4228}
!4228 = !DILocalVariable(name: "g", arg: 1, scope: !4226, file: !561, line: 1375, type: !2678)
!4229 = !DILocation(line: 0, scope: !4226)
!4230 = !DILocation(line: 1377, column: 8, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4226, file: !561, line: 1377, column: 7)
!4232 = !DILocation(line: 1377, column: 7, scope: !4226)
!4233 = !DILocation(line: 1379, column: 23, scope: !4226)
!4234 = !DILocation(line: 1379, column: 3, scope: !4226)
!4235 = !DILocation(line: 1380, column: 1, scope: !4226)
!4236 = distinct !DISubprogram(name: "gimple_use_ops", scope: !561, file: !561, line: 1313, type: !4237, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4239)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!1030, !2678}
!4239 = !{!4240}
!4240 = !DILocalVariable(name: "g", arg: 1, scope: !4236, file: !561, line: 1313, type: !2678)
!4241 = !DILocation(line: 0, scope: !4236)
!4242 = !DILocation(line: 1315, column: 8, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4236, file: !561, line: 1315, column: 7)
!4244 = !DILocation(line: 1315, column: 7, scope: !4236)
!4245 = !DILocation(line: 1317, column: 26, scope: !4236)
!4246 = !DILocation(line: 1317, column: 3, scope: !4236)
!4247 = !DILocation(line: 1318, column: 1, scope: !4236)
!4248 = distinct !DISubprogram(name: "gimple_vuse", scope: !561, file: !561, line: 1365, type: !2686, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4249)
!4249 = !{!4250}
!4250 = !DILocalVariable(name: "g", arg: 1, scope: !4248, file: !561, line: 1365, type: !2678)
!4251 = !DILocation(line: 0, scope: !4248)
!4252 = !DILocation(line: 1367, column: 8, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4248, file: !561, line: 1367, column: 7)
!4254 = !DILocation(line: 1367, column: 7, scope: !4248)
!4255 = !DILocation(line: 1369, column: 23, scope: !4248)
!4256 = !DILocation(line: 1369, column: 3, scope: !4248)
!4257 = !DILocation(line: 1370, column: 1, scope: !4248)
!4258 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !561, file: !561, line: 1283, type: !2676, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4259)
!4259 = !{!4260}
!4260 = !DILocalVariable(name: "g", arg: 1, scope: !4258, file: !561, line: 1283, type: !2678)
!4261 = !DILocation(line: 0, scope: !4258)
!4262 = !DILocation(line: 1285, column: 10, scope: !4258)
!4263 = !DILocation(line: 1285, column: 26, scope: !4258)
!4264 = !DILocation(line: 1285, column: 43, scope: !4258)
!4265 = !DILocation(line: 1285, column: 46, scope: !4258)
!4266 = !DILocation(line: 1285, column: 62, scope: !4258)
!4267 = !DILocation(line: 1285, column: 3, scope: !4258)
!4268 = distinct !DISubprogram(name: "gimple_assign_set_rhs1", scope: !561, file: !561, line: 1747, type: !4269, scopeLine: 1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4271)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{null, !994, !711}
!4271 = !{!4272, !4273}
!4272 = !DILocalVariable(name: "gs", arg: 1, scope: !4268, file: !561, line: 1747, type: !994)
!4273 = !DILocalVariable(name: "rhs", arg: 2, scope: !4268, file: !561, line: 1747, type: !711)
!4274 = !DILocation(line: 0, scope: !4268)
!4275 = !DILocation(line: 1751, column: 3, scope: !4268)
!4276 = !DILocation(line: 1752, column: 1, scope: !4268)
!4277 = distinct !DISubprogram(name: "gimple_assign_set_rhs_code", scope: !561, file: !561, line: 1832, type: !4278, scopeLine: 1833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{null, !994, !366}
!4280 = !{!4281, !4282}
!4281 = !DILocalVariable(name: "s", arg: 1, scope: !4277, file: !561, line: 1832, type: !994)
!4282 = !DILocalVariable(name: "code", arg: 2, scope: !4277, file: !561, line: 1832, type: !366)
!4283 = !DILocation(line: 0, scope: !4277)
!4284 = !DILocation(line: 1835, column: 13, scope: !4277)
!4285 = !DILocation(line: 1835, column: 21, scope: !4277)
!4286 = !DILocation(line: 1836, column: 1, scope: !4277)
!4287 = distinct !DISubprogram(name: "gimple_assign_lhs_ptr", scope: !561, file: !561, line: 1704, type: !4288, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4290)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!1028, !2678}
!4290 = !{!4291}
!4291 = !DILocalVariable(name: "gs", arg: 1, scope: !4287, file: !561, line: 1704, type: !2678)
!4292 = !DILocation(line: 0, scope: !4287)
!4293 = !DILocation(line: 1707, column: 10, scope: !4287)
!4294 = !DILocation(line: 1707, column: 3, scope: !4287)
!4295 = distinct !DISubprogram(name: "handled_component_p", scope: !334, file: !334, line: 4551, type: !3486, scopeLine: 4552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4296)
!4296 = !{!4297}
!4297 = !DILocalVariable(name: "t", arg: 1, scope: !4295, file: !334, line: 4551, type: !3488)
!4298 = !DILocation(line: 0, scope: !4295)
!4299 = !DILocation(line: 4553, column: 11, scope: !4295)
!4300 = !DILocation(line: 4553, column: 3, scope: !4295)
!4301 = !DILocation(line: 4565, column: 7, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4295, file: !334, line: 4554, column: 5)
!4303 = !DILocation(line: 0, scope: !4302)
!4304 = !DILocation(line: 4567, column: 1, scope: !4295)
!4305 = distinct !DISubprogram(name: "tidy_after_forward_propagate_addr", scope: !3, file: !3, line: 600, type: !2817, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4306)
!4306 = !{!4307}
!4307 = !DILocalVariable(name: "stmt", arg: 1, scope: !4305, file: !3, line: 600, type: !994)
!4308 = !DILocation(line: 0, scope: !4305)
!4309 = !DILocation(line: 603, column: 7, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 603, column: 7)
!4311 = !DILocation(line: 604, column: 7, scope: !4310)
!4312 = !DILocation(line: 604, column: 38, scope: !4310)
!4313 = !DILocation(line: 604, column: 10, scope: !4310)
!4314 = !DILocation(line: 603, column: 7, scope: !4305)
!4315 = !DILocation(line: 605, column: 17, scope: !4310)
!4316 = !DILocation(line: 605, column: 5, scope: !4310)
!4317 = !DILocation(line: 607, column: 7, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 607, column: 7)
!4319 = !DILocation(line: 607, column: 45, scope: !4318)
!4320 = !DILocation(line: 607, column: 7, scope: !4305)
!4321 = !DILocation(line: 608, column: 46, scope: !4318)
!4322 = !DILocation(line: 608, column: 6, scope: !4318)
!4323 = !DILocation(line: 609, column: 1, scope: !4305)
!4324 = distinct !DISubprogram(name: "gimple_assign_rhs1_ptr", scope: !561, file: !561, line: 1738, type: !4288, scopeLine: 1739, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4325)
!4325 = !{!4326}
!4326 = !DILocalVariable(name: "gs", arg: 1, scope: !4324, file: !561, line: 1738, type: !2678)
!4327 = !DILocation(line: 0, scope: !4324)
!4328 = !DILocation(line: 1741, column: 10, scope: !4324)
!4329 = !DILocation(line: 1741, column: 3, scope: !4324)
!4330 = distinct !DISubprogram(name: "gimple_assign_rhs2", scope: !561, file: !561, line: 1759, type: !2686, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4331)
!4331 = !{!4332}
!4332 = !DILocalVariable(name: "gs", arg: 1, scope: !4330, file: !561, line: 1759, type: !2678)
!4333 = !DILocation(line: 0, scope: !4330)
!4334 = !DILocation(line: 1763, column: 7, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4330, file: !561, line: 1763, column: 7)
!4336 = !DILocation(line: 1763, column: 27, scope: !4335)
!4337 = !DILocation(line: 1763, column: 7, scope: !4330)
!4338 = !DILocation(line: 1764, column: 12, scope: !4335)
!4339 = !DILocation(line: 1764, column: 5, scope: !4335)
!4340 = !DILocation(line: 0, scope: !4335)
!4341 = !DILocation(line: 1767, column: 1, scope: !4330)
!4342 = distinct !DISubprogram(name: "gimple_location", scope: !561, file: !561, line: 1139, type: !4343, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4345)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!795, !2678}
!4345 = !{!4346}
!4346 = !DILocalVariable(name: "g", arg: 1, scope: !4342, file: !561, line: 1139, type: !2678)
!4347 = !DILocation(line: 0, scope: !4342)
!4348 = !DILocation(line: 1141, column: 20, scope: !4342)
!4349 = !DILocation(line: 1141, column: 3, scope: !4342)
!4350 = distinct !DISubprogram(name: "forward_propagate_addr_into_variable_array_index", scope: !3, file: !3, line: 627, type: !4351, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4353)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!662, !711, !711, !2702}
!4353 = !{!4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362}
!4354 = !DILocalVariable(name: "offset", arg: 1, scope: !4350, file: !3, line: 627, type: !711)
!4355 = !DILocalVariable(name: "def_rhs", arg: 2, scope: !4350, file: !3, line: 628, type: !711)
!4356 = !DILocalVariable(name: "use_stmt_gsi", arg: 3, scope: !4350, file: !3, line: 629, type: !2702)
!4357 = !DILocalVariable(name: "index", scope: !4350, file: !3, line: 631, type: !711)
!4358 = !DILocalVariable(name: "tunit", scope: !4350, file: !3, line: 631, type: !711)
!4359 = !DILocalVariable(name: "offset_def", scope: !4350, file: !3, line: 632, type: !994)
!4360 = !DILocalVariable(name: "use_stmt", scope: !4350, file: !3, line: 632, type: !994)
!4361 = !DILocalVariable(name: "tmp", scope: !4350, file: !3, line: 633, type: !711)
!4362 = !DILocalVariable(name: "offset_def2", scope: !4363, file: !3, line: 682, type: !994)
!4363 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 681, column: 8)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 674, column: 15)
!4365 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 666, column: 10)
!4366 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 656, column: 5)
!4367 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 647, column: 7)
!4368 = !DILocation(line: 0, scope: !4350)
!4369 = !DILocation(line: 632, column: 33, scope: !4350)
!4370 = !DILocation(line: 635, column: 11, scope: !4350)
!4371 = !DILocation(line: 636, column: 8, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 636, column: 7)
!4373 = !DILocation(line: 636, column: 7, scope: !4350)
!4374 = !DILocation(line: 640, column: 16, scope: !4350)
!4375 = !DILocation(line: 647, column: 7, scope: !4367)
!4376 = !DILocation(line: 0, scope: !4367)
!4377 = !DILocation(line: 647, column: 7, scope: !4350)
!4378 = !DILocation(line: 649, column: 11, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 649, column: 11)
!4380 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 648, column: 5)
!4381 = !DILocation(line: 650, column: 4, scope: !4379)
!4382 = !DILocation(line: 650, column: 7, scope: !4379)
!4383 = !DILocation(line: 650, column: 43, scope: !4379)
!4384 = !DILocation(line: 649, column: 11, scope: !4380)
!4385 = !DILocation(line: 659, column: 12, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 659, column: 11)
!4387 = !DILocation(line: 659, column: 11, scope: !4366)
!4388 = !DILocation(line: 666, column: 10, scope: !4365)
!4389 = !DILocation(line: 666, column: 46, scope: !4365)
!4390 = !DILocation(line: 667, column: 3, scope: !4365)
!4391 = !DILocation(line: 667, column: 6, scope: !4365)
!4392 = !DILocation(line: 667, column: 50, scope: !4365)
!4393 = !DILocation(line: 668, column: 3, scope: !4365)
!4394 = !DILocation(line: 668, column: 26, scope: !4365)
!4395 = !DILocation(line: 668, column: 6, scope: !4365)
!4396 = !DILocation(line: 666, column: 10, scope: !4366)
!4397 = !DILocation(line: 671, column: 11, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 669, column: 8)
!4399 = !DILocation(line: 672, column: 8, scope: !4398)
!4400 = !DILocation(line: 674, column: 16, scope: !4364)
!4401 = !DILocation(line: 674, column: 52, scope: !4364)
!4402 = !DILocation(line: 675, column: 9, scope: !4364)
!4403 = !DILocation(line: 675, column: 12, scope: !4364)
!4404 = !DILocation(line: 675, column: 48, scope: !4364)
!4405 = !DILocation(line: 676, column: 8, scope: !4364)
!4406 = !DILocation(line: 676, column: 11, scope: !4364)
!4407 = !DILocation(line: 676, column: 55, scope: !4364)
!4408 = !DILocation(line: 677, column: 8, scope: !4364)
!4409 = !DILocation(line: 677, column: 11, scope: !4364)
!4410 = !DILocation(line: 677, column: 55, scope: !4364)
!4411 = !DILocation(line: 678, column: 8, scope: !4364)
!4412 = !DILocation(line: 679, column: 13, scope: !4364)
!4413 = !DILocation(line: 678, column: 18, scope: !4364)
!4414 = !DILocation(line: 680, column: 21, scope: !4364)
!4415 = !DILocation(line: 674, column: 15, scope: !4365)
!4416 = !DILocation(line: 682, column: 24, scope: !4363)
!4417 = !DILocation(line: 0, scope: !4363)
!4418 = !DILocation(line: 683, column: 7, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 683, column: 7)
!4420 = !DILocation(line: 684, column: 7, scope: !4419)
!4421 = !DILocation(line: 684, column: 10, scope: !4419)
!4422 = !DILocation(line: 684, column: 47, scope: !4419)
!4423 = !DILocation(line: 685, column: 7, scope: !4419)
!4424 = !DILocation(line: 685, column: 10, scope: !4419)
!4425 = !DILocation(line: 685, column: 55, scope: !4419)
!4426 = !DILocation(line: 686, column: 7, scope: !4419)
!4427 = !DILocation(line: 686, column: 30, scope: !4419)
!4428 = !DILocation(line: 686, column: 10, scope: !4419)
!4429 = !DILocation(line: 683, column: 7, scope: !4363)
!4430 = !DILocation(line: 688, column: 15, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 687, column: 5)
!4432 = !DILocation(line: 694, column: 8, scope: !4364)
!4433 = !DILocation(line: 700, column: 11, scope: !4350)
!4434 = !DILocation(line: 702, column: 50, scope: !4350)
!4435 = !DILocation(line: 702, column: 3, scope: !4350)
!4436 = !DILocation(line: 703, column: 14, scope: !4350)
!4437 = !DILocation(line: 704, column: 3, scope: !4350)
!4438 = !DILocation(line: 705, column: 5, scope: !4350)
!4439 = !DILocation(line: 709, column: 3, scope: !4350)
!4440 = !DILocation(line: 710, column: 3, scope: !4350)
!4441 = !DILocation(line: 711, column: 3, scope: !4350)
!4442 = !DILocation(line: 712, column: 1, scope: !4350)
!4443 = distinct !DISubprogram(name: "gimple_set_op", scope: !561, file: !561, line: 1663, type: !4444, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4446)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{null, !994, !7, !711}
!4446 = !{!4447, !4448, !4449}
!4447 = !DILocalVariable(name: "gs", arg: 1, scope: !4443, file: !561, line: 1663, type: !994)
!4448 = !DILocalVariable(name: "i", arg: 2, scope: !4443, file: !561, line: 1663, type: !7)
!4449 = !DILocalVariable(name: "op", arg: 3, scope: !4443, file: !561, line: 1663, type: !711)
!4450 = !DILocation(line: 0, scope: !4443)
!4451 = !DILocation(line: 1665, column: 3, scope: !4443)
!4452 = !DILocation(line: 1671, column: 3, scope: !4443)
!4453 = !DILocation(line: 1671, column: 22, scope: !4443)
!4454 = !DILocation(line: 1672, column: 1, scope: !4443)
!4455 = distinct !DISubprogram(name: "gimple_num_ops", scope: !561, file: !561, line: 1596, type: !4134, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4456)
!4456 = !{!4457}
!4457 = !DILocalVariable(name: "gs", arg: 1, scope: !4455, file: !561, line: 1596, type: !2678)
!4458 = !DILocation(line: 0, scope: !4455)
!4459 = !DILocation(line: 1598, column: 21, scope: !4455)
!4460 = !DILocation(line: 1598, column: 3, scope: !4455)
!4461 = distinct !DISubprogram(name: "gimple_op_ptr", scope: !561, file: !561, line: 1647, type: !4462, scopeLine: 1648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4464)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!1028, !2678, !7}
!4464 = !{!4465, !4466}
!4465 = !DILocalVariable(name: "gs", arg: 1, scope: !4461, file: !561, line: 1647, type: !2678)
!4466 = !DILocalVariable(name: "i", arg: 2, scope: !4461, file: !561, line: 1647, type: !7)
!4467 = !DILocation(line: 0, scope: !4461)
!4468 = !DILocation(line: 1649, column: 7, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4461, file: !561, line: 1649, column: 7)
!4470 = !DILocation(line: 1649, column: 7, scope: !4461)
!4471 = !DILocation(line: 1654, column: 14, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4469, file: !561, line: 1650, column: 5)
!4473 = !DILocation(line: 1654, column: 50, scope: !4472)
!4474 = !DILocation(line: 1654, column: 7, scope: !4472)
!4475 = !DILocation(line: 0, scope: !4469)
!4476 = !DILocation(line: 1658, column: 1, scope: !4461)
!4477 = distinct !DISubprogram(name: "get_prop_source_stmt", scope: !3, file: !3, line: 212, type: !4478, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4480)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!994, !711, !662, !661}
!4480 = !{!4481, !4482, !4483, !4484, !4485, !4487}
!4481 = !DILocalVariable(name: "name", arg: 1, scope: !4477, file: !3, line: 212, type: !711)
!4482 = !DILocalVariable(name: "single_use_only", arg: 2, scope: !4477, file: !3, line: 212, type: !662)
!4483 = !DILocalVariable(name: "single_use_p", arg: 3, scope: !4477, file: !3, line: 212, type: !661)
!4484 = !DILocalVariable(name: "single_use", scope: !4477, file: !3, line: 214, type: !662)
!4485 = !DILocalVariable(name: "def_stmt", scope: !4486, file: !3, line: 217, type: !994)
!4486 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 216, column: 6)
!4487 = !DILocalVariable(name: "rhs", scope: !4488, file: !3, line: 233, type: !711)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 232, column: 7)
!4489 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 231, column: 9)
!4490 = !DILocation(line: 0, scope: !4477)
!4491 = !DILocation(line: 0, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 222, column: 6)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 220, column: 7)
!4494 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 219, column: 9)
!4495 = !DILocation(line: 0, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 235, column: 6)
!4497 = !DILocation(line: 216, column: 3, scope: !4477)
!4498 = !DILocation(line: 214, column: 8, scope: !4477)
!4499 = !DILocation(line: 217, column: 23, scope: !4486)
!4500 = !DILocation(line: 0, scope: !4486)
!4501 = !DILocation(line: 219, column: 10, scope: !4494)
!4502 = !DILocation(line: 219, column: 9, scope: !4486)
!4503 = !DILocation(line: 222, column: 6, scope: !4493)
!4504 = !DILocation(line: 227, column: 10, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 227, column: 9)
!4506 = !DILocation(line: 227, column: 9, scope: !4486)
!4507 = !DILocation(line: 231, column: 10, scope: !4489)
!4508 = !DILocation(line: 231, column: 9, scope: !4486)
!4509 = !DILocation(line: 252, column: 9, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 250, column: 7)
!4511 = !DILocation(line: 235, column: 23, scope: !4496)
!4512 = !DILocation(line: 236, column: 18, scope: !4496)
!4513 = !DILocation(line: 236, column: 4, scope: !4496)
!4514 = !DILocation(line: 240, column: 8, scope: !4488)
!4515 = !DILocation(line: 0, scope: !4488)
!4516 = !DILocation(line: 241, column: 6, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 241, column: 6)
!4518 = !DILocation(line: 242, column: 6, scope: !4517)
!4519 = !DILocation(line: 242, column: 9, scope: !4517)
!4520 = !DILocation(line: 242, column: 25, scope: !4517)
!4521 = !DILocation(line: 243, column: 6, scope: !4517)
!4522 = !DILocation(line: 243, column: 9, scope: !4517)
!4523 = !DILocation(line: 244, column: 6, scope: !4517)
!4524 = !DILocation(line: 244, column: 9, scope: !4517)
!4525 = !DILocation(line: 241, column: 6, scope: !4488)
!4526 = !DILocation(line: 248, column: 7, scope: !4489)
!4527 = !DILocation(line: 0, scope: !4489)
!4528 = !DILocation(line: 254, column: 3, scope: !4477)
!4529 = !DILocation(line: 255, column: 1, scope: !4477)
!4530 = distinct !DISubprogram(name: "can_propagate_from", scope: !3, file: !3, line: 261, type: !3002, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4531)
!4531 = !{!4532, !4533, !4534, !4535}
!4532 = !DILocalVariable(name: "def_stmt", arg: 1, scope: !4530, file: !3, line: 261, type: !994)
!4533 = !DILocalVariable(name: "use_p", scope: !4530, file: !3, line: 263, type: !1968)
!4534 = !DILocalVariable(name: "iter", scope: !4530, file: !3, line: 264, type: !3863)
!4535 = !DILocalVariable(name: "rhs", scope: !4536, file: !3, line: 293, type: !711)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 292, column: 5)
!4537 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 291, column: 7)
!4538 = !DILocation(line: 0, scope: !4530)
!4539 = !DILocation(line: 264, column: 3, scope: !4530)
!4540 = !DILocation(line: 266, column: 3, scope: !4530)
!4541 = !DILocation(line: 269, column: 7, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 269, column: 7)
!4543 = !DILocation(line: 269, column: 7, scope: !4530)
!4544 = !DILocation(line: 273, column: 7, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 273, column: 7)
!4546 = !DILocation(line: 273, column: 59, scope: !4545)
!4547 = !DILocation(line: 274, column: 7, scope: !4545)
!4548 = !DILocation(line: 274, column: 10, scope: !4545)
!4549 = !DILocation(line: 274, column: 62, scope: !4545)
!4550 = !DILocation(line: 273, column: 7, scope: !4530)
!4551 = !DILocation(line: 278, column: 7, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 278, column: 7)
!4553 = !DILocation(line: 279, column: 7, scope: !4552)
!4554 = !DILocation(line: 279, column: 35, scope: !4552)
!4555 = !DILocation(line: 279, column: 10, scope: !4552)
!4556 = !DILocation(line: 278, column: 7, scope: !4530)
!4557 = !DILocation(line: 283, column: 3, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 283, column: 3)
!4559 = !DILocation(line: 0, scope: !4558)
!4560 = !DILocation(line: 283, column: 3, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 283, column: 3)
!4562 = !DILocation(line: 284, column: 9, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 284, column: 9)
!4564 = !DILocation(line: 284, column: 9, scope: !4561)
!4565 = distinct !{!4565, !4557, !4566}
!4566 = !DILocation(line: 285, column: 14, scope: !4558)
!4567 = !DILocation(line: 291, column: 7, scope: !4537)
!4568 = !DILocation(line: 291, column: 7, scope: !4530)
!4569 = !DILocation(line: 293, column: 18, scope: !4536)
!4570 = !DILocation(line: 0, scope: !4536)
!4571 = !DILocation(line: 294, column: 11, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 294, column: 11)
!4573 = !DILocation(line: 295, column: 11, scope: !4572)
!4574 = !DILocation(line: 295, column: 14, scope: !4572)
!4575 = !DILocation(line: 295, column: 54, scope: !4572)
!4576 = !DILocation(line: 294, column: 11, scope: !4536)
!4577 = !DILocation(line: 297, column: 5, scope: !4537)
!4578 = !DILocation(line: 299, column: 3, scope: !4530)
!4579 = !DILocation(line: 300, column: 1, scope: !4530)
!4580 = distinct !DISubprogram(name: "rhs_to_tree", scope: !3, file: !3, line: 340, type: !4581, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4583)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!711, !711, !994}
!4583 = !{!4584, !4585, !4586, !4587}
!4584 = !DILocalVariable(name: "type", arg: 1, scope: !4580, file: !3, line: 340, type: !711)
!4585 = !DILocalVariable(name: "stmt", arg: 2, scope: !4580, file: !3, line: 340, type: !994)
!4586 = !DILocalVariable(name: "loc", scope: !4580, file: !3, line: 342, type: !795)
!4587 = !DILocalVariable(name: "code", scope: !4580, file: !3, line: 343, type: !366)
!4588 = !DILocation(line: 0, scope: !4580)
!4589 = !DILocation(line: 342, column: 20, scope: !4580)
!4590 = !DILocation(line: 343, column: 25, scope: !4580)
!4591 = !DILocation(line: 344, column: 7, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 344, column: 7)
!4593 = !DILocation(line: 344, column: 35, scope: !4592)
!4594 = !DILocation(line: 344, column: 7, scope: !4580)
!4595 = !DILocation(line: 345, column: 12, scope: !4592)
!4596 = !DILocation(line: 345, column: 5, scope: !4592)
!4597 = !DILocation(line: 347, column: 12, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 347, column: 12)
!4599 = !DILocation(line: 347, column: 40, scope: !4598)
!4600 = !DILocation(line: 347, column: 12, scope: !4592)
!4601 = !DILocation(line: 348, column: 12, scope: !4598)
!4602 = !DILocation(line: 348, column: 5, scope: !4598)
!4603 = !DILocation(line: 349, column: 12, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 349, column: 12)
!4605 = !DILocation(line: 349, column: 40, scope: !4604)
!4606 = !DILocation(line: 349, column: 12, scope: !4598)
!4607 = !DILocation(line: 350, column: 12, scope: !4604)
!4608 = !DILocation(line: 350, column: 5, scope: !4604)
!4609 = !DILocation(line: 352, column: 5, scope: !4604)
!4610 = !DILocation(line: 354, column: 5, scope: !4580)
!4611 = !DILocation(line: 356, column: 1, scope: !4580)
!4612 = distinct !DISubprogram(name: "combine_cond_expr_cond", scope: !3, file: !3, line: 365, type: !4613, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4615)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!711, !795, !366, !711, !711, !711, !662}
!4615 = !{!4616, !4617, !4618, !4619, !4620, !4621, !4622}
!4616 = !DILocalVariable(name: "loc", arg: 1, scope: !4612, file: !3, line: 365, type: !795)
!4617 = !DILocalVariable(name: "code", arg: 2, scope: !4612, file: !3, line: 365, type: !366)
!4618 = !DILocalVariable(name: "type", arg: 3, scope: !4612, file: !3, line: 365, type: !711)
!4619 = !DILocalVariable(name: "op0", arg: 4, scope: !4612, file: !3, line: 366, type: !711)
!4620 = !DILocalVariable(name: "op1", arg: 5, scope: !4612, file: !3, line: 366, type: !711)
!4621 = !DILocalVariable(name: "invariant_only", arg: 6, scope: !4612, file: !3, line: 366, type: !662)
!4622 = !DILocalVariable(name: "t", scope: !4612, file: !3, line: 368, type: !711)
!4623 = !DILocation(line: 0, scope: !4612)
!4624 = !DILocation(line: 370, column: 3, scope: !4612)
!4625 = !DILocation(line: 372, column: 7, scope: !4612)
!4626 = !DILocation(line: 373, column: 8, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 373, column: 7)
!4628 = !DILocation(line: 373, column: 7, scope: !4612)
!4629 = !DILocation(line: 377, column: 3, scope: !4612)
!4630 = !DILocation(line: 380, column: 7, scope: !4612)
!4631 = !DILocation(line: 383, column: 8, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 383, column: 7)
!4633 = !DILocation(line: 383, column: 10, scope: !4632)
!4634 = !DILocation(line: 383, column: 14, scope: !4632)
!4635 = !DILocation(line: 383, column: 29, scope: !4632)
!4636 = !DILocation(line: 383, column: 33, scope: !4632)
!4637 = !DILocation(line: 383, column: 7, scope: !4612)
!4638 = !DILocation(line: 386, column: 3, scope: !4612)
!4639 = !DILocation(line: 387, column: 1, scope: !4612)
!4640 = distinct !DISubprogram(name: "remove_prop_source_from_use", scope: !3, file: !3, line: 309, type: !4641, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4643)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!662, !711, !994}
!4643 = !{!4644, !4645, !4646, !4647}
!4644 = !DILocalVariable(name: "name", arg: 1, scope: !4640, file: !3, line: 309, type: !711)
!4645 = !DILocalVariable(name: "up_to_stmt", arg: 2, scope: !4640, file: !3, line: 309, type: !994)
!4646 = !DILocalVariable(name: "gsi", scope: !4640, file: !3, line: 311, type: !2462)
!4647 = !DILocalVariable(name: "stmt", scope: !4640, file: !3, line: 312, type: !994)
!4648 = !DILocation(line: 0, scope: !4640)
!4649 = !DILocation(line: 311, column: 3, scope: !4640)
!4650 = !DILocation(line: 0, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 314, column: 6)
!4652 = !DILocation(line: 314, column: 3, scope: !4640)
!4653 = !DILocation(line: 315, column: 10, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 315, column: 9)
!4655 = !DILocation(line: 315, column: 9, scope: !4651)
!4656 = !DILocation(line: 318, column: 12, scope: !4651)
!4657 = !DILocation(line: 319, column: 14, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 319, column: 9)
!4659 = !DILocation(line: 319, column: 9, scope: !4651)
!4660 = !DILocation(line: 322, column: 11, scope: !4651)
!4661 = !DILocation(line: 323, column: 5, scope: !4651)
!4662 = !DILocation(line: 324, column: 5, scope: !4651)
!4663 = !DILocation(line: 326, column: 13, scope: !4651)
!4664 = !DILocation(line: 326, column: 12, scope: !4651)
!4665 = !DILocation(line: 326, column: 44, scope: !4651)
!4666 = !DILocation(line: 327, column: 12, scope: !4640)
!4667 = !DILocation(line: 327, column: 17, scope: !4640)
!4668 = !DILocation(line: 327, column: 20, scope: !4640)
!4669 = !DILocation(line: 327, column: 37, scope: !4640)
!4670 = !DILocation(line: 327, column: 3, scope: !4651)
!4671 = distinct !{!4671, !4652, !4672}
!4672 = !DILocation(line: 327, column: 48, scope: !4640)
!4673 = !DILocation(line: 330, column: 1, scope: !4640)
!4674 = distinct !DISubprogram(name: "gimple_has_volatile_ops", scope: !561, file: !561, line: 1477, type: !2676, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4675)
!4675 = !{!4676}
!4676 = !DILocalVariable(name: "stmt", arg: 1, scope: !4674, file: !561, line: 1477, type: !2678)
!4677 = !DILocation(line: 0, scope: !4674)
!4678 = !DILocation(line: 1479, column: 7, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4674, file: !561, line: 1479, column: 7)
!4680 = !DILocation(line: 1479, column: 7, scope: !4674)
!4681 = !DILocation(line: 1480, column: 25, scope: !4679)
!4682 = !DILocation(line: 1480, column: 12, scope: !4679)
!4683 = !DILocation(line: 1480, column: 5, scope: !4679)
!4684 = !DILocation(line: 0, scope: !4679)
!4685 = !DILocation(line: 1483, column: 1, scope: !4674)
!4686 = distinct !DISubprogram(name: "get_prop_dest_stmt", scope: !3, file: !3, line: 178, type: !4687, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4689)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!994, !711, !1028}
!4689 = !{!4690, !4691, !4692, !4693}
!4690 = !DILocalVariable(name: "name", arg: 1, scope: !4686, file: !3, line: 178, type: !711)
!4691 = !DILocalVariable(name: "final_name_p", arg: 2, scope: !4686, file: !3, line: 178, type: !1028)
!4692 = !DILocalVariable(name: "use", scope: !4686, file: !3, line: 180, type: !1968)
!4693 = !DILocalVariable(name: "use_stmt", scope: !4686, file: !3, line: 181, type: !994)
!4694 = !DILocation(line: 0, scope: !4686)
!4695 = !DILocation(line: 180, column: 3, scope: !4686)
!4696 = !DILocation(line: 181, column: 3, scope: !4686)
!4697 = !DILocation(line: 183, column: 3, scope: !4686)
!4698 = !DILocation(line: 185, column: 10, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 185, column: 9)
!4700 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 183, column: 6)
!4701 = !DILocation(line: 185, column: 9, scope: !4700)
!4702 = !DILocation(line: 189, column: 41, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 189, column: 9)
!4704 = !DILocation(line: 189, column: 10, scope: !4703)
!4705 = !DILocation(line: 190, column: 2, scope: !4703)
!4706 = !DILocation(line: 190, column: 25, scope: !4703)
!4707 = !DILocation(line: 190, column: 5, scope: !4703)
!4708 = !DILocation(line: 190, column: 35, scope: !4703)
!4709 = !DILocation(line: 189, column: 9, scope: !4700)
!4710 = !DILocation(line: 194, column: 31, scope: !4700)
!4711 = !DILocation(line: 194, column: 12, scope: !4700)
!4712 = !DILocation(line: 195, column: 3, scope: !4700)
!4713 = !DILocation(line: 197, column: 7, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 197, column: 7)
!4715 = !DILocation(line: 197, column: 7, scope: !4686)
!4716 = !DILocation(line: 198, column: 19, scope: !4714)
!4717 = !DILocation(line: 198, column: 5, scope: !4714)
!4718 = !DILocation(line: 200, column: 10, scope: !4686)
!4719 = !DILocation(line: 200, column: 3, scope: !4686)
!4720 = !DILocation(line: 201, column: 1, scope: !4686)
!4721 = distinct !DISubprogram(name: "single_imm_use", scope: !3485, file: !3485, line: 373, type: !4722, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4726)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!662, !3488, !4724, !4725}
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!4726 = !{!4727, !4728, !4729, !4730, !4731}
!4727 = !DILocalVariable(name: "var", arg: 1, scope: !4721, file: !3485, line: 373, type: !3488)
!4728 = !DILocalVariable(name: "use_p", arg: 2, scope: !4721, file: !3485, line: 373, type: !4724)
!4729 = !DILocalVariable(name: "stmt", arg: 3, scope: !4721, file: !3485, line: 373, type: !4725)
!4730 = !DILocalVariable(name: "ptr", scope: !4721, file: !3485, line: 375, type: !3492)
!4731 = !DILabel(scope: !4732, name: "return_false", file: !3485, line: 380)
!4732 = distinct !DILexicalBlock(scope: !4733, file: !3485, line: 379, column: 5)
!4733 = distinct !DILexicalBlock(scope: !4721, file: !3485, line: 378, column: 7)
!4734 = !DILocation(line: 0, scope: !4721)
!4735 = !DILocation(line: 375, column: 42, scope: !4721)
!4736 = !DILocation(line: 378, column: 19, scope: !4733)
!4737 = !DILocation(line: 378, column: 11, scope: !4733)
!4738 = !DILocation(line: 378, column: 7, scope: !4721)
!4739 = !DILocation(line: 380, column: 5, scope: !4732)
!4740 = !DILocation(line: 381, column: 14, scope: !4732)
!4741 = !DILocation(line: 382, column: 13, scope: !4732)
!4742 = !DILocation(line: 383, column: 7, scope: !4732)
!4743 = !DILocation(line: 387, column: 25, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4721, file: !3485, line: 387, column: 7)
!4745 = !DILocation(line: 387, column: 11, scope: !4744)
!4746 = !DILocation(line: 387, column: 7, scope: !4721)
!4747 = !DILocation(line: 389, column: 29, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4749, file: !3485, line: 389, column: 11)
!4749 = distinct !DILexicalBlock(scope: !4744, file: !3485, line: 388, column: 5)
!4750 = !DILocation(line: 389, column: 12, scope: !4748)
!4751 = !DILocation(line: 389, column: 11, scope: !4749)
!4752 = !DILocation(line: 391, column: 18, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4748, file: !3485, line: 390, column: 2)
!4754 = !DILocation(line: 391, column: 11, scope: !4753)
!4755 = !DILocation(line: 392, column: 17, scope: !4753)
!4756 = !DILocation(line: 392, column: 27, scope: !4753)
!4757 = !DILocation(line: 392, column: 10, scope: !4753)
!4758 = !DILocation(line: 393, column: 4, scope: !4753)
!4759 = !DILocation(line: 400, column: 8, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4721, file: !3485, line: 400, column: 7)
!4761 = !DILocation(line: 400, column: 7, scope: !4721)
!4762 = !DILocation(line: 403, column: 10, scope: !4721)
!4763 = !DILocation(line: 403, column: 3, scope: !4721)
!4764 = !DILocation(line: 404, column: 1, scope: !4721)
!4765 = distinct !DISubprogram(name: "gimple_assign_cast_p", scope: !561, file: !561, line: 1853, type: !3002, scopeLine: 1854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4766)
!4766 = !{!4767, !4768}
!4767 = !DILocalVariable(name: "s", arg: 1, scope: !4765, file: !561, line: 1853, type: !994)
!4768 = !DILocalVariable(name: "sc", scope: !4769, file: !561, line: 1857, type: !366)
!4769 = distinct !DILexicalBlock(scope: !4770, file: !561, line: 1856, column: 5)
!4770 = distinct !DILexicalBlock(scope: !4765, file: !561, line: 1855, column: 7)
!4771 = !DILocation(line: 0, scope: !4765)
!4772 = !DILocation(line: 1855, column: 7, scope: !4770)
!4773 = !DILocation(line: 1855, column: 7, scope: !4765)
!4774 = !DILocation(line: 1857, column: 27, scope: !4769)
!4775 = !DILocation(line: 0, scope: !4769)
!4776 = !DILocation(line: 1858, column: 14, scope: !4769)
!4777 = !DILocation(line: 1860, column: 7, scope: !4769)
!4778 = !DILocation(line: 1864, column: 1, scope: !4765)
!4779 = distinct !DISubprogram(name: "gimple_expr_type", scope: !561, file: !561, line: 4366, type: !2686, scopeLine: 4367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4780)
!4780 = !{!4781, !4782, !4783}
!4781 = !DILocalVariable(name: "stmt", arg: 1, scope: !4779, file: !561, line: 4366, type: !2678)
!4782 = !DILocalVariable(name: "code", scope: !4779, file: !561, line: 4368, type: !587)
!4783 = !DILocalVariable(name: "type", scope: !4784, file: !561, line: 4372, type: !711)
!4784 = distinct !DILexicalBlock(scope: !4785, file: !561, line: 4371, column: 5)
!4785 = distinct !DILexicalBlock(scope: !4779, file: !561, line: 4370, column: 7)
!4786 = !DILocation(line: 0, scope: !4779)
!4787 = !DILocation(line: 4368, column: 27, scope: !4779)
!4788 = !DILocation(line: 4370, column: 29, scope: !4785)
!4789 = !DILocation(line: 4378, column: 9, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4784, file: !561, line: 4377, column: 11)
!4791 = !DILocation(line: 0, scope: !4784)
!4792 = !DILocation(line: 4378, column: 2, scope: !4790)
!4793 = !DILocation(line: 4380, column: 10, scope: !4790)
!4794 = !DILocation(line: 4380, column: 2, scope: !4790)
!4795 = !DILocation(line: 4383, column: 13, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4790, file: !561, line: 4381, column: 4)
!4797 = !DILocation(line: 4384, column: 6, scope: !4796)
!4798 = !DILocation(line: 4388, column: 13, scope: !4796)
!4799 = !DILocation(line: 4389, column: 6, scope: !4796)
!4800 = !DILocation(line: 4394, column: 12, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4785, file: !561, line: 4393, column: 12)
!4802 = !DILocation(line: 4394, column: 5, scope: !4801)
!4803 = !DILocation(line: 4396, column: 12, scope: !4801)
!4804 = !DILocation(line: 4396, column: 5, scope: !4801)
!4805 = !DILocation(line: 0, scope: !4785)
!4806 = !DILocation(line: 4397, column: 1, scope: !4779)
!4807 = distinct !DISubprogram(name: "gimple_call_return_type", scope: !561, file: !561, line: 1966, type: !2686, scopeLine: 1967, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4808)
!4808 = !{!4809, !4810, !4811}
!4809 = !DILocalVariable(name: "gs", arg: 1, scope: !4807, file: !561, line: 1966, type: !2678)
!4810 = !DILocalVariable(name: "fn", scope: !4807, file: !561, line: 1968, type: !711)
!4811 = !DILocalVariable(name: "type", scope: !4807, file: !561, line: 1969, type: !711)
!4812 = !DILocation(line: 0, scope: !4807)
!4813 = !DILocation(line: 1968, column: 13, scope: !4807)
!4814 = !DILocation(line: 1969, column: 15, scope: !4807)
!4815 = !DILocation(line: 1972, column: 10, scope: !4807)
!4816 = !DILocation(line: 1976, column: 10, scope: !4807)
!4817 = !DILocation(line: 1976, column: 3, scope: !4807)
!4818 = distinct !DISubprogram(name: "gimple_call_fn", scope: !561, file: !561, line: 1911, type: !2686, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4819)
!4819 = !{!4820}
!4820 = !DILocalVariable(name: "gs", arg: 1, scope: !4818, file: !561, line: 1911, type: !2678)
!4821 = !DILocation(line: 0, scope: !4818)
!4822 = !DILocation(line: 1914, column: 10, scope: !4818)
!4823 = !DILocation(line: 1914, column: 3, scope: !4818)
!4824 = distinct !DISubprogram(name: "gimple_switch_index", scope: !561, file: !561, line: 3180, type: !2686, scopeLine: 3181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4825)
!4825 = !{!4826}
!4826 = !DILocalVariable(name: "gs", arg: 1, scope: !4824, file: !561, line: 3180, type: !2678)
!4827 = !DILocation(line: 0, scope: !4824)
!4828 = !DILocation(line: 3183, column: 10, scope: !4824)
!4829 = !DILocation(line: 3183, column: 3, scope: !4824)
!4830 = distinct !DISubprogram(name: "gimple_switch_set_index", scope: !561, file: !561, line: 3200, type: !4269, scopeLine: 3201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4831)
!4831 = !{!4832, !4833}
!4832 = !DILocalVariable(name: "gs", arg: 1, scope: !4830, file: !561, line: 3200, type: !994)
!4833 = !DILocalVariable(name: "index", arg: 2, scope: !4830, file: !561, line: 3200, type: !711)
!4834 = !DILocation(line: 0, scope: !4830)
!4835 = !DILocation(line: 3203, column: 3, scope: !4830)
!4836 = !DILocation(line: 3204, column: 3, scope: !4830)
!4837 = !DILocation(line: 3205, column: 1, scope: !4830)
!4838 = distinct !DISubprogram(name: "gimple_cond_code", scope: !561, file: !561, line: 2221, type: !2711, scopeLine: 2222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4839)
!4839 = !{!4840}
!4840 = !DILocalVariable(name: "gs", arg: 1, scope: !4838, file: !561, line: 2221, type: !2678)
!4841 = !DILocation(line: 0, scope: !4838)
!4842 = !DILocation(line: 2224, column: 38, scope: !4838)
!4843 = !DILocation(line: 2224, column: 3, scope: !4838)
!4844 = distinct !DISubprogram(name: "gimple_cond_lhs", scope: !561, file: !561, line: 2241, type: !2686, scopeLine: 2242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4845)
!4845 = !{!4846}
!4846 = !DILocalVariable(name: "gs", arg: 1, scope: !4844, file: !561, line: 2241, type: !2678)
!4847 = !DILocation(line: 0, scope: !4844)
!4848 = !DILocation(line: 2244, column: 10, scope: !4844)
!4849 = !DILocation(line: 2244, column: 3, scope: !4844)
!4850 = distinct !DISubprogram(name: "gimple_cond_rhs", scope: !561, file: !561, line: 2271, type: !2686, scopeLine: 2272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4851)
!4851 = !{!4852}
!4852 = !DILocalVariable(name: "gs", arg: 1, scope: !4850, file: !561, line: 2271, type: !2678)
!4853 = !DILocation(line: 0, scope: !4850)
!4854 = !DILocation(line: 2274, column: 10, scope: !4850)
!4855 = !DILocation(line: 2274, column: 3, scope: !4850)
