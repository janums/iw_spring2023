; ModuleID = 'tree-call-cdce.bc'
source_filename = "tree-call-cdce.c"
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
%struct.VEC_gimple_heap = type { %struct.VEC_gimple_base }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.expanded_location = type { i8*, i32, i32, i8 }
%struct.input_domain = type { i32, i32, i8, i8, i8, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [5 x i8] c"cdce\00", align 1
@pass_call_cdce = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_call_cdce, i32 ()* @tree_call_cdce, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 78, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8, !dbg !0
@flag_tree_builtin_call_dce = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Found conditional dead call: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@real_format_for_mode = external dso_local local_unnamed_addr global [7 x %struct.real_format*], align 16
@ieee_single_format = external dso_local constant %struct.real_format, align 8
@mips_single_format = external dso_local constant %struct.real_format, align 8
@motorola_single_format = external dso_local constant %struct.real_format, align 8
@ieee_double_format = external dso_local constant %struct.real_format, align 8
@mips_double_format = external dso_local constant %struct.real_format, align 8
@motorola_double_format = external dso_local constant %struct.real_format, align 8
@ieee_quad_format = external dso_local constant %struct.real_format, align 8
@mips_quad_format = external dso_local constant %struct.real_format, align 8
@ieee_extended_motorola_format = external dso_local constant %struct.real_format, align 8
@ieee_extended_intel_96_format = external dso_local constant %struct.real_format, align 8
@ieee_extended_intel_128_format = external dso_local constant %struct.real_format, align 8
@ieee_extended_intel_96_round_53_format = external dso_local constant %struct.real_format, align 8
@dconst1 = external dso_local global %struct.real_value, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"tree-call-cdce.c\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"%s:%d: note: function call is shrink-wrapped into error conditions.\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"DCE_COND1\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"DCE_COND_LB\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"DCE_COND_LB_TEST\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"DCE_COND_UB\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"DCE_COND_UB_TEST\00", align 1
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2716 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2730, metadata !DIExpression()), !dbg !2731
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2732
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2733
  ret i32 %call, !dbg !2734
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2735 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2739
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2740
  ret i32 %call, !dbg !2741
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2742 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2797, metadata !DIExpression()), !dbg !2798
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2799
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2799
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2799
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2799
  %cmp = icmp uge i8* %0, %1, !dbg !2799
  %conv1 = zext i1 %cmp to i64, !dbg !2799
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2799
  %tobool = icmp eq i64 %expval, 0, !dbg !2799
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2799

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2799
  br label %cond.end, !dbg !2799

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2799
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2799
  %2 = load i8, i8* %0, align 1, !dbg !2799
  %conv3 = zext i8 %2 to i32, !dbg !2799
  br label %cond.end, !dbg !2799

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2799
  ret i32 %cond, !dbg !2800
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2801 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2803, metadata !DIExpression()), !dbg !2804
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2805
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2805
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2805
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2805
  %cmp = icmp uge i8* %0, %1, !dbg !2805
  %conv1 = zext i1 %cmp to i64, !dbg !2805
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2805
  %tobool = icmp eq i64 %expval, 0, !dbg !2805
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2805

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2805
  br label %cond.end, !dbg !2805

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2805
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2805
  %2 = load i8, i8* %0, align 1, !dbg !2805
  %conv3 = zext i8 %2 to i32, !dbg !2805
  br label %cond.end, !dbg !2805

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2805
  ret i32 %cond, !dbg !2806
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2807 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2808
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2808
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2808
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2808
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2808
  %cmp = icmp uge i8* %1, %2, !dbg !2808
  %conv1 = zext i1 %cmp to i64, !dbg !2808
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2808
  %tobool = icmp eq i64 %expval, 0, !dbg !2808
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2808

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2808
  br label %cond.end, !dbg !2808

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2808
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2808
  %3 = load i8, i8* %1, align 1, !dbg !2808
  %conv3 = zext i8 %3 to i32, !dbg !2808
  br label %cond.end, !dbg !2808

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2808
  ret i32 %cond, !dbg !2809
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2810 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2814, metadata !DIExpression()), !dbg !2815
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2816
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2817
  ret i32 %call, !dbg !2818
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2819 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2823, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2824, metadata !DIExpression()), !dbg !2825
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2826
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2826
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2826
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2826
  %cmp = icmp uge i8* %0, %1, !dbg !2826
  %conv1 = zext i1 %cmp to i64, !dbg !2826
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2826
  %tobool = icmp eq i64 %expval, 0, !dbg !2826
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2826

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2826
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2826
  br label %cond.end, !dbg !2826

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2826
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2826
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2826
  store i8 %conv2, i8* %0, align 1, !dbg !2826
  %conv6 = and i32 %__c, 255, !dbg !2826
  br label %cond.end, !dbg !2826

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2826
  ret i32 %cond, !dbg !2827
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2828 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2830, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2831, metadata !DIExpression()), !dbg !2832
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2833
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2833
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2833
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2833
  %cmp = icmp uge i8* %0, %1, !dbg !2833
  %conv1 = zext i1 %cmp to i64, !dbg !2833
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2833
  %tobool = icmp eq i64 %expval, 0, !dbg !2833
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2833

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2833
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2833
  br label %cond.end, !dbg !2833

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2833
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2833
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2833
  store i8 %conv2, i8* %0, align 1, !dbg !2833
  %conv6 = and i32 %__c, 255, !dbg !2833
  br label %cond.end, !dbg !2833

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2833
  ret i32 %cond, !dbg !2834
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2835 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2837, metadata !DIExpression()), !dbg !2838
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2839
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2839
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2839
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2839
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2839
  %cmp = icmp uge i8* %1, %2, !dbg !2839
  %conv1 = zext i1 %cmp to i64, !dbg !2839
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2839
  %tobool = icmp eq i64 %expval, 0, !dbg !2839
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2839

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2839
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2839
  br label %cond.end, !dbg !2839

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2839
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2839
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2839
  store i8 %conv4, i8* %1, align 1, !dbg !2839
  %conv6 = and i32 %__c, 255, !dbg !2839
  br label %cond.end, !dbg !2839

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2839
  ret i32 %cond, !dbg !2840
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2841 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2847, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2848, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2849, metadata !DIExpression()), !dbg !2850
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2851
  ret i64 %call, !dbg !2852
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2853 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2855, metadata !DIExpression()), !dbg !2856
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2857
  %0 = load i32, i32* %_flags, align 8, !dbg !2857
  %and = lshr i32 %0, 4, !dbg !2857
  %and.lobit = and i32 %and, 1, !dbg !2857
  ret i32 %and.lobit, !dbg !2858
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2859 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2861, metadata !DIExpression()), !dbg !2862
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2863
  %0 = load i32, i32* %_flags, align 8, !dbg !2863
  %and = lshr i32 %0, 5, !dbg !2863
  %and.lobit = and i32 %and, 1, !dbg !2863
  ret i32 %and.lobit, !dbg !2864
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2865 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2868, metadata !DIExpression()), !dbg !2869
  %__c.off = add i32 %__c, 128, !dbg !2870
  %0 = icmp ult i32 %__c.off, 384, !dbg !2870
  br i1 %0, label %cond.true, label %cond.end, !dbg !2870

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2871
  %1 = load i32*, i32** %call, align 8, !dbg !2872
  %idxprom = sext i32 %__c to i64, !dbg !2873
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2873
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2873
  br label %cond.end, !dbg !2874

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2874
  ret i32 %cond, !dbg !2875
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2876 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2878, metadata !DIExpression()), !dbg !2879
  %__c.off = add i32 %__c, 128, !dbg !2880
  %0 = icmp ult i32 %__c.off, 384, !dbg !2880
  br i1 %0, label %cond.true, label %cond.end, !dbg !2880

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2881
  %1 = load i32*, i32** %call, align 8, !dbg !2882
  %idxprom = sext i32 %__c to i64, !dbg !2883
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2883
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2883
  br label %cond.end, !dbg !2884

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2884
  ret i32 %cond, !dbg !2885
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2886 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2891, metadata !DIExpression()), !dbg !2892
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2893
  %conv = trunc i64 %call to i32, !dbg !2894
  ret i32 %conv, !dbg !2895
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2896 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2900, metadata !DIExpression()), !dbg !2901
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2902
  ret i64 %call, !dbg !2903
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2904 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2909, metadata !DIExpression()), !dbg !2910
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2911
  ret i64 %call, !dbg !2912
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2913 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2919, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2920, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2921, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2922, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2923, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 0, metadata !2924, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2925, metadata !DIExpression()), !dbg !2929
  br label %while.cond, !dbg !2930

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2931
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2929
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2925, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2924, metadata !DIExpression()), !dbg !2929
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2932
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2930

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2933
  %div = lshr i64 %add, 1, !dbg !2935
  call void @llvm.dbg.value(metadata i64 %div, metadata !2926, metadata !DIExpression()), !dbg !2929
  %mul = mul i64 %div, %__size, !dbg !2936
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2937
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2927, metadata !DIExpression()), !dbg !2929
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2938
  call void @llvm.dbg.value(metadata i32 %call, metadata !2928, metadata !DIExpression()), !dbg !2929
  %cmp1 = icmp slt i32 %call, 0, !dbg !2939
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2941

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2942
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2944

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2924, metadata !DIExpression()), !dbg !2929
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2929
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2929
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2925, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2924, metadata !DIExpression()), !dbg !2929
  br label %while.cond, !dbg !2930, !llvm.loop !2946

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2929
  ret i8* %retval.0, !dbg !2948
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2949 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2955, metadata !DIExpression()), !dbg !2956
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2957
  ret double %call, !dbg !2958
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2959 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2968, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2969, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i32 %base, metadata !2970, metadata !DIExpression()), !dbg !2971
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2972
  ret i64 %call, !dbg !2973
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2974 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2980, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2981, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 %base, metadata !2982, metadata !DIExpression()), !dbg !2983
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2984
  ret i64 %call, !dbg !2985
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2986 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2997, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2998, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32 %base, metadata !2999, metadata !DIExpression()), !dbg !3000
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !3001
  ret i64 %call, !dbg !3002
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !3003 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !3007, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !3008, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i32 %base, metadata !3009, metadata !DIExpression()), !dbg !3010
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !3011
  ret i64 %call, !dbg !3012
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !3013 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3053, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3054, metadata !DIExpression()), !dbg !3055
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !3056
  ret i32 %call, !dbg !3057
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !3058 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3060, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3061, metadata !DIExpression()), !dbg !3062
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !3063
  ret i32 %call, !dbg !3064
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !3065 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3069, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3070, metadata !DIExpression()), !dbg !3071
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !3072
  ret i32 %call, !dbg !3073
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !3074 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3078, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !3079, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3080, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !3081, metadata !DIExpression()), !dbg !3082
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !3083
  ret i32 %call, !dbg !3084
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !3085 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3089, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !3090, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !3091, metadata !DIExpression()), !dbg !3092
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !3091, metadata !DIExpression(DW_OP_deref)), !dbg !3092
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !3093
  ret i32 %call, !dbg !3094
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !3095 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3099, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3100, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !3101, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !3102, metadata !DIExpression()), !dbg !3103
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !3102, metadata !DIExpression(DW_OP_deref)), !dbg !3103
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !3104
  ret i32 %call, !dbg !3105
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3106 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3130, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3131, metadata !DIExpression()), !dbg !3132
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !3133
  ret i32 %call, !dbg !3134
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3135 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3137, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3138, metadata !DIExpression()), !dbg !3139
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !3140
  ret i32 %call, !dbg !3141
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3142 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3146, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3147, metadata !DIExpression()), !dbg !3148
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !3149
  ret i32 %call, !dbg !3150
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !3151 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3155, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !3156, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3157, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !3158, metadata !DIExpression()), !dbg !3159
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !3160
  ret i32 %call, !dbg !3161
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_call_cdce() #5 !dbg !3162 {
entry:
  %0 = load i32, i32* @flag_tree_builtin_call_dce, align 4, !dbg !3163
  %cmp = icmp eq i32 %0, 0, !dbg !3164
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3165

land.rhs:                                         ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3166
  %call = tail call zeroext i8 @optimize_function_for_speed_p(%struct.function* %1) #6, !dbg !3167
  %tobool = icmp ne i8 %call, 0, !dbg !3165
  %phitmp = zext i1 %tobool to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %2 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !3168
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_call_cdce() #5 !dbg !3169 {
entry:
  %i = alloca %struct.gimple_stmt_iterator, align 8
  %cond_dead_built_in_calls = alloca %struct.VEC_gimple_heap*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %0 = bitcast %struct.gimple_stmt_iterator* %i to i8*, !dbg !3188
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3188
  call void @llvm.dbg.value(metadata i8 0, metadata !3179, metadata !DIExpression()), !dbg !3189
  %1 = bitcast %struct.VEC_gimple_heap** %cond_dead_built_in_calls to i8*, !dbg !3190
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3190
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* null, metadata !3180, metadata !DIExpression()), !dbg !3189
  store %struct.VEC_gimple_heap* null, %struct.VEC_gimple_heap** %cond_dead_built_in_calls, align 8, !dbg !3191
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3192
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3192
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3192
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !3192
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3192
  %5 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3193
  br label %for.cond, !dbg !3192

for.cond:                                         ; preds = %for.inc24, %entry
  %6 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre1, %for.inc24 ], !dbg !3194
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %bb.0, %for.inc24 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3195
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3195
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3171, metadata !DIExpression()), !dbg !3189
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 1, !dbg !3194
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3194
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %7, !dbg !3194
  br i1 %cmp, label %for.end26, label %for.body, !dbg !3192

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !3196
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #8, !dbg !3196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !3196
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !3196
  br label %for.cond3, !dbg !3197

for.cond3:                                        ; preds = %for.inc, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3172, metadata !DIExpression(DW_OP_deref)), !dbg !3189
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #8, !dbg !3198
  %tobool = icmp eq i8 %call, 0, !dbg !3199
  br i1 %tobool, label %for.body4, label %for.inc24, !dbg !3200

for.body4:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3172, metadata !DIExpression(DW_OP_deref)), !dbg !3189
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #8, !dbg !3201
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !3181, metadata !DIExpression()), !dbg !3202
  %call6 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call5) #8, !dbg !3203
  %tobool7 = icmp eq i8 %call6, 0, !dbg !3203
  br i1 %tobool7, label %for.inc, label %land.lhs.true, !dbg !3205

land.lhs.true:                                    ; preds = %for.body4
  %call8 = call fastcc zeroext i8 @is_call_dce_candidate(%union.gimple_statement_d* %call5) #8, !dbg !3206
  %tobool10 = icmp eq i8 %call8, 0, !dbg !3206
  br i1 %tobool10, label %for.inc, label %if.then, !dbg !3207

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3208
  %tobool11 = icmp eq %struct._IO_FILE* %8, null, !dbg !3208
  br i1 %tobool11, label %if.end, label %land.lhs.true12, !dbg !3211

land.lhs.true12:                                  ; preds = %if.then
  %9 = load i32, i32* @dump_flags, align 4, !dbg !3212
  %and = and i32 %9, 8, !dbg !3213
  %tobool13 = icmp eq i32 %and, 0, !dbg !3213
  br i1 %tobool13, label %if.end, label %if.then14, !dbg !3214

if.then14:                                        ; preds = %land.lhs.true12
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3215
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3217
  call void @print_gimple_stmt(%struct._IO_FILE* %10, %union.gimple_statement_d* %call5, i32 0, i32 2) #6, !dbg !3218
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3219
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3220
  br label %if.end, !dbg !3221

if.end:                                           ; preds = %land.lhs.true12, %if.then, %if.then14
  %12 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %cond_dead_built_in_calls, align 8, !dbg !3222
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %12, metadata !3180, metadata !DIExpression()), !dbg !3189
  %cmp17 = icmp eq %struct.VEC_gimple_heap* %12, null, !dbg !3224
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !3225

if.then19:                                        ; preds = %if.end
  %call20 = call fastcc %struct.VEC_gimple_heap* @VEC_gimple_heap_alloc(i32 64) #8, !dbg !3226
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %call20, metadata !3180, metadata !DIExpression()), !dbg !3189
  store %struct.VEC_gimple_heap* %call20, %struct.VEC_gimple_heap** %cond_dead_built_in_calls, align 8, !dbg !3227
  br label %if.end21, !dbg !3228

if.end21:                                         ; preds = %if.then19, %if.end
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %cond_dead_built_in_calls, metadata !3180, metadata !DIExpression(DW_OP_deref)), !dbg !3189
  %call22 = call fastcc %union.gimple_statement_d** @VEC_gimple_heap_safe_push(%struct.VEC_gimple_heap** nonnull %cond_dead_built_in_calls, %union.gimple_statement_d* %call5) #8, !dbg !3229
  br label %for.inc, !dbg !3230

for.inc:                                          ; preds = %land.lhs.true, %for.body4, %if.end21
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3172, metadata !DIExpression(DW_OP_deref)), !dbg !3189
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %i) #8, !dbg !3231
  br label %for.cond3, !dbg !3232, !llvm.loop !3233

for.inc24:                                        ; preds = %for.cond3
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3194
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3235
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3194
  br label %for.cond, !dbg !3194, !llvm.loop !3236

for.end26:                                        ; preds = %for.cond
  %13 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %cond_dead_built_in_calls, align 8, !dbg !3238
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %13, metadata !3180, metadata !DIExpression()), !dbg !3189
  %cmp27 = icmp eq %struct.VEC_gimple_heap* %13, null, !dbg !3240
  br i1 %cmp27, label %cleanup, label %if.end30, !dbg !3241

if.end30:                                         ; preds = %for.end26
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %13, metadata !3180, metadata !DIExpression()), !dbg !3189
  %call31 = call fastcc zeroext i8 @shrink_wrap_conditional_dead_built_in_calls(%struct.VEC_gimple_heap* nonnull %13) #8, !dbg !3242
  call void @llvm.dbg.value(metadata i8 %call31, metadata !3179, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %cond_dead_built_in_calls, metadata !3180, metadata !DIExpression(DW_OP_deref)), !dbg !3189
  call fastcc void @VEC_gimple_heap_free(%struct.VEC_gimple_heap** nonnull %cond_dead_built_in_calls) #8, !dbg !3243
  %tobool32 = icmp eq i8 %call31, 0, !dbg !3244
  br i1 %tobool32, label %cleanup, label %if.then33, !dbg !3246

if.then33:                                        ; preds = %if.end30
  call void @free_dominance_info(i32 1) #6, !dbg !3247
  call void @free_dominance_info(i32 2) #6, !dbg !3249
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3250
  %call35 = call fastcc %union.tree_node* @gimple_vop(%struct.function* %14) #8, !dbg !3251
  call void @mark_sym_for_renaming(%union.tree_node* %call35) #6, !dbg !3252
  br label %cleanup, !dbg !3253

cleanup:                                          ; preds = %if.end30, %for.end26, %if.then33
  %retval.0 = phi i32 [ 34850, %if.then33 ], [ 0, %for.end26 ], [ 0, %if.end30 ], !dbg !3189
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3254
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3254
  ret i32 %retval.0, !dbg !3254
}

declare dso_local zeroext i8 @optimize_function_for_speed_p(%struct.function*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3255 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3259, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3260, metadata !DIExpression()), !dbg !3263
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !3264
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3261, metadata !DIExpression()), !dbg !3262
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !3265
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3266
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3267
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3268
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3269
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3270
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3271
  ret void, !dbg !3272
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3273 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3277, metadata !DIExpression()), !dbg !3278
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3279
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3279
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3280
  %conv1 = zext i1 %cmp to i8, !dbg !3281
  ret i8 %conv1, !dbg !3282
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3283 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3287, metadata !DIExpression()), !dbg !3288
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3289
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3289
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3290
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3290
  ret %union.gimple_statement_d* %1, !dbg !3291
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3292 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3297, metadata !DIExpression()), !dbg !3298
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3299
  %cmp = icmp eq i32 %call, 8, !dbg !3300
  %conv1 = zext i1 %cmp to i8, !dbg !3299
  ret i8 %conv1, !dbg !3301
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @is_call_dce_candidate(%union.gimple_statement_d* %call) unnamed_addr #5 !dbg !3302 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3306, metadata !DIExpression()), !dbg !3309
  %call1 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call) #8, !dbg !3310
  %tobool = icmp eq %union.tree_node* %call1, null, !dbg !3310
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3312

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call) #8, !dbg !3313
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3307, metadata !DIExpression()), !dbg !3309
  %tobool3 = icmp eq %union.tree_node* %call2, null, !dbg !3314
  br i1 %tobool3, label %cleanup, label %lor.lhs.false, !dbg !3316

lor.lhs.false:                                    ; preds = %if.end
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 5, !dbg !3317
  %bf.load = load i32, i32* %built_in_class, align 8, !dbg !3317
  %bf.clear = and i32 %bf.load, 6144, !dbg !3317
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !3317
  br i1 %cmp, label %cleanup, label %lor.lhs.false4, !dbg !3318

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp10 = icmp eq i32 %bf.clear, 6144, !dbg !3319
  br i1 %cmp10, label %if.end12, label %cleanup, !dbg !3320

if.end12:                                         ; preds = %lor.lhs.false4
  %bf.clear15 = and i32 %bf.load, 2047, !dbg !3321
  call void @llvm.dbg.value(metadata i32 %bf.clear15, metadata !3308, metadata !DIExpression()), !dbg !3309
  switch i32 %bf.clear15, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 11, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 17, label %sw.bb
    i32 18, label %sw.bb
    i32 19, label %sw.bb
    i32 32, label %sw.bb
    i32 33, label %sw.bb
    i32 34, label %sw.bb
    i32 224, label %sw.bb
    i32 225, label %sw.bb
    i32 226, label %sw.bb
    i32 138, label %sw.bb
    i32 151, label %sw.bb
    i32 152, label %sw.bb
    i32 145, label %sw.bb
    i32 146, label %sw.bb
    i32 147, label %sw.bb
    i32 139, label %sw.bb
    i32 140, label %sw.bb
    i32 141, label %sw.bb
    i32 142, label %sw.bb
    i32 143, label %sw.bb
    i32 144, label %sw.bb
    i32 45, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 46, label %sw.bb
    i32 47, label %sw.bb
    i32 48, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 181, label %sw.bb
    i32 182, label %sw.bb
    i32 183, label %sw.bb
    i32 228, label %sw.bb
    i32 229, label %sw.bb
    i32 230, label %sw.bb
    i32 180, label %sw.bb17
  ], !dbg !3322

sw.bb:                                            ; preds = %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12, %if.end12
  %call16 = tail call fastcc zeroext i8 @check_builtin_call(%union.gimple_statement_d* %call) #8, !dbg !3323
  br label %cleanup, !dbg !3325

sw.bb17:                                          ; preds = %if.end12
  %call18 = tail call fastcc zeroext i8 @check_pow(%union.gimple_statement_d* %call) #8, !dbg !3326
  br label %cleanup, !dbg !3327

cleanup:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %if.end, %entry, %if.end12, %sw.bb17, %sw.bb
  %retval.0 = phi i8 [ %call18, %sw.bb17 ], [ %call16, %sw.bb ], [ 0, %entry ], [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.end12 ], !dbg !3309
  ret i8 %retval.0, !dbg !3328
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_gimple_heap* @VEC_gimple_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3329 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3333, metadata !DIExpression()), !dbg !3334
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 %alloc_) #6, !dbg !3335
  %0 = bitcast i8* %call to %struct.VEC_gimple_heap*, !dbg !3335
  ret %struct.VEC_gimple_heap* %0, !dbg !3335
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @VEC_gimple_heap_safe_push(%struct.VEC_gimple_heap** %vec_, %union.gimple_statement_d* %obj_) unnamed_addr #0 !dbg !3336 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %vec_, metadata !3342, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %obj_, metadata !3343, metadata !DIExpression()), !dbg !3344
  %call = tail call fastcc i32 @VEC_gimple_heap_reserve(%struct.VEC_gimple_heap** %vec_, i32 1) #8, !dbg !3345
  %0 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !3345
  %tobool = icmp eq %struct.VEC_gimple_heap* %0, null, !dbg !3345
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3345

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %0, i64 0, i32 0, !dbg !3345
  br label %cond.end, !dbg !3345

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3345
  %call1 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %cond, %union.gimple_statement_d* %obj_) #8, !dbg !3345
  ret %union.gimple_statement_d** %call1, !dbg !3345
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3346 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3351, metadata !DIExpression()), !dbg !3352
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3353
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3353
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3354
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3354
  %2 = load i64, i64* %1, align 8, !dbg !3354
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3355
  store i64 %2, i64* %3, align 8, !dbg !3355
  ret void, !dbg !3356
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @shrink_wrap_conditional_dead_built_in_calls(%struct.VEC_gimple_heap* %calls) unnamed_addr #5 !dbg !3357 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %calls, metadata !3361, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 0, metadata !3362, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i32 0, metadata !3363, metadata !DIExpression()), !dbg !3369
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %calls, i64 0, i32 0, !dbg !3370
  %call = tail call fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %base) #8, !dbg !3370
  call void @llvm.dbg.value(metadata i32 %call, metadata !3364, metadata !DIExpression()), !dbg !3369
  %cmp = icmp eq i32 %call, 0, !dbg !3371
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !3373

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !3374

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3369
  %changed.0 = phi i8 [ %or1, %for.body ], [ 0, %for.cond.preheader ], !dbg !3369
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !3362, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3363, metadata !DIExpression()), !dbg !3369
  %exitcond = icmp eq i32 %i.0, %call, !dbg !3375
  br i1 %exitcond, label %cleanup.loopexit, label %for.body, !dbg !3374

for.body:                                         ; preds = %for.cond
  %call8 = tail call fastcc %union.gimple_statement_d* @VEC_gimple_base_index(%struct.VEC_gimple_base* %base, i32 %i.0) #8, !dbg !3376
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call8, metadata !3365, metadata !DIExpression()), !dbg !3377
  %call9 = tail call fastcc zeroext i8 @shrink_wrap_one_built_in_call(%union.gimple_statement_d* %call8) #8, !dbg !3378
  %or1 = or i8 %changed.0, %call9, !dbg !3379
  call void @llvm.dbg.value(metadata i8 %or1, metadata !3362, metadata !DIExpression()), !dbg !3369
  %inc = add i32 %i.0, 1, !dbg !3380
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3363, metadata !DIExpression()), !dbg !3369
  br label %for.cond, !dbg !3381, !llvm.loop !3382

cleanup.loopexit:                                 ; preds = %for.cond
  %changed.0.lcssa = phi i8 [ %changed.0, %for.cond ], !dbg !3369
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !3362, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !3362, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !3362, metadata !DIExpression()), !dbg !3369
  br label %cleanup, !dbg !3384

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ %changed.0.lcssa, %cleanup.loopexit ], !dbg !3369
  ret i8 %retval.0, !dbg !3384
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_gimple_heap_free(%struct.VEC_gimple_heap** %vec_) unnamed_addr #0 !dbg !3385 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %vec_, metadata !3389, metadata !DIExpression()), !dbg !3390
  %0 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !3391
  %tobool = icmp eq %struct.VEC_gimple_heap* %0, null, !dbg !3391
  br i1 %tobool, label %if.end, label %if.then, !dbg !3393

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_gimple_heap* %0 to i8*, !dbg !3393
  tail call void @free(i8* nonnull %1) #6, !dbg !3391
  br label %if.end, !dbg !3391

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_gimple_heap* null, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !3393
  ret void, !dbg !3393
}

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

declare dso_local void @mark_sym_for_renaming(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vop(%struct.function* %fun) unnamed_addr #0 !dbg !3394 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3401, metadata !DIExpression()), !dbg !3402
  %tobool = icmp eq %struct.function* %fun, null, !dbg !3403
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !3403

land.lhs.true:                                    ; preds = %entry
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !3403
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3403
  %tobool1 = icmp eq %struct.gimple_df* %0, null, !dbg !3403
  br i1 %tobool1, label %cond.true, label %cond.end, !dbg !3403

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3403
  %gimple_df2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !3402
  %.pre = load %struct.gimple_df*, %struct.gimple_df** %gimple_df2.phi.trans.insert, align 8, !dbg !3404
  br label %cond.end, !dbg !3403

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %1 = phi %struct.gimple_df* [ %0, %land.lhs.true ], [ %.pre, %cond.true ], !dbg !3404
  %vop = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 3, !dbg !3405
  %2 = load %union.tree_node*, %union.tree_node** %vop, align 8, !dbg !3405
  ret %union.tree_node* %2, !dbg !3406
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3407 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3414, metadata !DIExpression()), !dbg !3415
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3416
  %0 = load i32, i32* %flags, align 8, !dbg !3416
  %and = and i32 %0, 512, !dbg !3417
  %tobool = icmp eq i32 %and, 0, !dbg !3417
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3418

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3419
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3419
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3420
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3421

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3422
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3422
  br label %cond.end, !dbg !3421

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3421
  ret %struct.gimple_seq_d* %cond, !dbg !3423
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3424 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3431, metadata !DIExpression()), !dbg !3432
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3433
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3433

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3434
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3434
  br label %cond.end, !dbg !3433

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3433
  ret %struct.gimple_seq_node_d* %cond, !dbg !3435
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3436 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3440, metadata !DIExpression()), !dbg !3441
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3442
  %bf.load = load i32, i32* %0, align 8, !dbg !3442
  %bf.clear = and i32 %bf.load, 255, !dbg !3442
  ret i32 %bf.clear, !dbg !3443
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3444 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3448, metadata !DIExpression()), !dbg !3449
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3450
  ret %union.tree_node* %call, !dbg !3451
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3452 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3454, metadata !DIExpression()), !dbg !3456
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #8, !dbg !3457
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3455, metadata !DIExpression()), !dbg !3456
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3458
  %bf.load = load i64, i64* %0, align 8, !dbg !3458
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3460
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !3460
  br i1 %cmp, label %if.then, label %cleanup, !dbg !3461

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3462
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3462
  br label %cleanup, !dbg !3463

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !3456
  ret %union.tree_node* %retval.0, !dbg !3464
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @check_builtin_call(%union.gimple_statement_d* %bcall) unnamed_addr #5 !dbg !3465 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %bcall, metadata !3467, metadata !DIExpression()), !dbg !3469
  %call = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %bcall, i32 0) #8, !dbg !3470
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3468, metadata !DIExpression()), !dbg !3469
  %call1 = tail call fastcc zeroext i8 @check_target_format(%union.tree_node* %call) #8, !dbg !3471
  ret i8 %call1, !dbg !3472
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @check_pow(%union.gimple_statement_d* %pow_call) unnamed_addr #5 !dbg !3473 {
entry:
  %mv = alloca %struct.real_value, align 8
  %bcv = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %pow_call, metadata !3475, metadata !DIExpression()), !dbg !3491
  %call = tail call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %pow_call) #8, !dbg !3492
  %cmp = icmp eq i32 %call, 2, !dbg !3494
  br i1 %cmp, label %if.end, label %cleanup84, !dbg !3495

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %pow_call, i32 0) #8, !dbg !3496
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3476, metadata !DIExpression()), !dbg !3491
  %call2 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %pow_call, i32 1) #8, !dbg !3497
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3477, metadata !DIExpression()), !dbg !3491
  %call3 = tail call fastcc zeroext i8 @check_target_format(%union.tree_node* %call2) #8, !dbg !3498
  %tobool = icmp eq i8 %call3, 0, !dbg !3498
  br i1 %tobool, label %cleanup84, label %if.end5, !dbg !3500

if.end5:                                          ; preds = %if.end
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3501
  %bf.load = load i64, i64* %0, align 8, !dbg !3501
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3502
  %bf.load8 = load i64, i64* %1, align 8, !dbg !3502
  %bf.cast102 = and i64 %bf.load8, 65535, !dbg !3503
  %cmp11 = icmp eq i64 %bf.cast102, 24, !dbg !3503
  %bf.cast5 = and i64 %bf.load, 65535, !dbg !3505
  %cmp12 = icmp eq i64 %bf.cast5, 24, !dbg !3505
  %or.cond = and i1 %cmp11, %cmp12, !dbg !3506
  br i1 %or.cond, label %cleanup84, label %if.end14, !dbg !3506

if.end14:                                         ; preds = %if.end5
  %trunc = trunc i64 %bf.load to i16, !dbg !3507
  switch i16 %trunc, label %cleanup84 [
    i16 24, label %if.then16
    i16 141, label %if.then44
  ], !dbg !3507

if.then16:                                        ; preds = %if.end14
  %2 = bitcast %struct.real_value* %mv to i8*, !dbg !3508
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #7, !dbg !3508
  %3 = bitcast %struct.real_value* %bcv to i8*, !dbg !3509
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #7, !dbg !3509
  %real_cst_ptr = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3510
  %4 = bitcast i32* %real_cst_ptr to i8**, !dbg !3510
  %5 = load i8*, i8** %4, align 8, !dbg !3510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 %5, i64 32, i1 false), !dbg !3510
  call void @llvm.dbg.value(metadata %struct.real_value* %bcv, metadata !3483, metadata !DIExpression(DW_OP_deref)), !dbg !3511
  %call17 = call zeroext i8 @real_compare(i32 101, %struct.real_value* nonnull %bcv, %struct.real_value* nonnull @dconst1) #6, !dbg !3512
  %tobool18 = icmp eq i8 %call17, 0, !dbg !3512
  br i1 %tobool18, label %if.end20, label %cleanup, !dbg !3514

if.end20:                                         ; preds = %if.then16
  call void @llvm.dbg.value(metadata %struct.real_value* %bcv, metadata !3483, metadata !DIExpression(DW_OP_deref)), !dbg !3511
  %call21 = call zeroext i8 @real_compare(i32 97, %struct.real_value* nonnull %bcv, %struct.real_value* nonnull @dconst1) #6, !dbg !3515
  %tobool22 = icmp eq i8 %call21, 0, !dbg !3515
  br i1 %tobool22, label %if.end24, label %cleanup, !dbg !3517

if.end24:                                         ; preds = %if.end20
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3518
  %6 = bitcast %union.tree_node** %type to i64**, !dbg !3518
  %7 = load i64*, i64** %6, align 8, !dbg !3518
  %bf.load26 = load i64, i64* %7, align 8, !dbg !3518
  %bf.cast284 = and i64 %bf.load26, 65535, !dbg !3518
  %cmp29 = icmp eq i64 %bf.cast284, 14, !dbg !3518
  br i1 %cmp29, label %cond.true, label %cond.false, !dbg !3518

cond.true:                                        ; preds = %if.end24
  %.cast = bitcast i64* %7 to %union.tree_node*, !dbg !3518
  %call32 = call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !3518
  br label %cond.end, !dbg !3518

cond.false:                                       ; preds = %if.end24
  %type35 = bitcast i64* %7 to %struct.tree_type*, !dbg !3518
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type35, i64 0, i32 6, !dbg !3518
  %bf.load36 = load i32, i32* %mode, align 4, !dbg !3518
  %bf.lshr = lshr i32 %bf.load36, 16, !dbg !3518
  %bf.clear37 = and i32 %bf.lshr, 255, !dbg !3518
  br label %cond.end, !dbg !3518

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call32, %cond.true ], [ %bf.clear37, %cond.false ], !dbg !3518
  call void @llvm.dbg.value(metadata %struct.real_value* %mv, metadata !3480, metadata !DIExpression(DW_OP_deref)), !dbg !3511
  call void @real_from_integer(%struct.real_value* nonnull %mv, i32 %cond, i64 256, i64 0, i32 1) #6, !dbg !3519
  call void @llvm.dbg.value(metadata %struct.real_value* %mv, metadata !3480, metadata !DIExpression(DW_OP_deref)), !dbg !3511
  call void @llvm.dbg.value(metadata %struct.real_value* %bcv, metadata !3483, metadata !DIExpression(DW_OP_deref)), !dbg !3511
  %call38 = call zeroext i8 @real_compare(i32 97, %struct.real_value* nonnull %mv, %struct.real_value* nonnull %bcv) #6, !dbg !3520
  %tobool39 = icmp eq i8 %call38, 0, !dbg !3520
  %. = zext i1 %tobool39 to i8, !dbg !3511
  br label %cleanup, !dbg !3511

cleanup:                                          ; preds = %if.end20, %if.then16, %cond.end
  %retval.0 = phi i8 [ 0, %if.then16 ], [ 0, %if.end20 ], [ %., %cond.end ], !dbg !3511
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #7, !dbg !3522
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #7, !dbg !3522
  br label %cleanup84

if.then44:                                        ; preds = %if.end14
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3523
  %8 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3523
  %9 = load %union.gimple_statement_d*, %union.gimple_statement_d** %8, align 8, !dbg !3523
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %9, metadata !3489, metadata !DIExpression()), !dbg !3524
  %call46 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %9) #8, !dbg !3525
  %cmp47 = icmp eq i32 %call46, 6, !dbg !3527
  br i1 %cmp47, label %if.end49, label %cleanup84, !dbg !3528

if.end49:                                         ; preds = %if.then44
  %call50 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %9) #8, !dbg !3529
  %cmp51 = icmp eq i32 %call50, 78, !dbg !3531
  br i1 %cmp51, label %if.end53, label %cleanup84, !dbg !3532

if.end53:                                         ; preds = %if.end49
  %call54 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %9) #8, !dbg !3533
  call void @llvm.dbg.value(metadata %union.tree_node* %call54, metadata !3484, metadata !DIExpression()), !dbg !3524
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call54, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3534
  %10 = bitcast i32* %var to %union.tree_node**, !dbg !3534
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8, !dbg !3534
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !3487, metadata !DIExpression()), !dbg !3524
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3535
  %bf.load57 = load i64, i64* %12, align 8, !dbg !3535
  %bf.cast59 = and i64 %bf.load57, 65535, !dbg !3535
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast59, !dbg !3535
  %13 = load i32, i32* %arrayidx, align 4, !dbg !3535
  %cmp60 = icmp eq i32 %13, 3, !dbg !3535
  br i1 %cmp60, label %if.end62, label %cleanup84, !dbg !3537

if.end62:                                         ; preds = %if.end53
  %type64 = getelementptr inbounds %union.tree_node, %union.tree_node* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3538
  %14 = load %union.tree_node*, %union.tree_node** %type64, align 8, !dbg !3538
  call void @llvm.dbg.value(metadata %union.tree_node* %14, metadata !3488, metadata !DIExpression()), !dbg !3524
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3539
  %bf.load66 = load i64, i64* %15, align 8, !dbg !3539
  %bf.cast683 = and i64 %bf.load66, 65535, !dbg !3541
  %cmp69 = icmp eq i64 %bf.cast683, 8, !dbg !3541
  br i1 %cmp69, label %if.end71, label %cleanup84, !dbg !3542

if.end71:                                         ; preds = %if.end62
  %type72 = bitcast %union.tree_node* %14 to %struct.tree_type*, !dbg !3543
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type72, i64 0, i32 6, !dbg !3543
  %bf.load73 = load i32, i32* %precision, align 4, !dbg !3543
  %bf.clear74 = and i32 %bf.load73, 1023, !dbg !3543
  call void @llvm.dbg.value(metadata i32 %bf.clear74, metadata !3490, metadata !DIExpression()), !dbg !3524
  %cmp75 = icmp ult i32 %bf.clear74, 33, !dbg !3544
  %.1 = zext i1 %cmp75 to i8, !dbg !3524
  br label %cleanup84, !dbg !3524

cleanup84:                                        ; preds = %if.end62, %if.end49, %if.then44, %if.end, %entry, %if.end14, %if.end53, %if.end71, %if.end5, %cleanup
  %retval.2 = phi i8 [ %retval.0, %cleanup ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end5 ], [ 0, %if.then44 ], [ 0, %if.end49 ], [ 0, %if.end53 ], [ 0, %if.end62 ], [ %.1, %if.end71 ], [ 0, %if.end14 ], !dbg !3491
  ret i8 %retval.2, !dbg !3546
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3547 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i32 %i, metadata !3552, metadata !DIExpression()), !dbg !3553
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3554
  %tobool = icmp eq i8 %call, 0, !dbg !3554
  br i1 %tobool, label %return, label %if.then, !dbg !3556

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3557
  %idxprom = zext i32 %i to i64, !dbg !3557
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3557
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3557
  br label %return, !dbg !3559

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3560
  ret %union.tree_node* %retval.0, !dbg !3561
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3562 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3564, metadata !DIExpression()), !dbg !3565
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3566
  %cmp = icmp eq i32 %call, 0, !dbg !3567
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3568

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3569
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3570
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3571
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3572 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3576, metadata !DIExpression()), !dbg !3578
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !3579
  %idxprom = zext i32 %call to i64, !dbg !3580
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3580
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %0, metadata !3577, metadata !DIExpression()), !dbg !3578
  %cmp = icmp eq i64 %0, 0, !dbg !3581
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3581

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3581
  br label %cond.end, !dbg !3581

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3582
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3583
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3584
  ret %union.tree_node** %2, !dbg !3585
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3586 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3590, metadata !DIExpression()), !dbg !3591
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3592
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !3593
  ret i32 %call1, !dbg !3594
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3595 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3599, metadata !DIExpression()), !dbg !3600
  %idxprom = zext i32 %code to i64, !dbg !3601
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3601
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3601
  ret i32 %0, !dbg !3602
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3603 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3605, metadata !DIExpression()), !dbg !3606
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !3607
  ret %union.tree_node* %call, !dbg !3608
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3609 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3611, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 %index, metadata !3612, metadata !DIExpression()), !dbg !3613
  %add = add i32 %index, 3, !dbg !3614
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add) #8, !dbg !3615
  ret %union.tree_node* %call, !dbg !3616
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @check_target_format(%union.tree_node* %arg) unnamed_addr #5 !dbg !3617 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %arg, metadata !3621, metadata !DIExpression()), !dbg !3657
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3658
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !3658
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3622, metadata !DIExpression()), !dbg !3657
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3659
  %bf.load = load i64, i64* %1, align 8, !dbg !3659
  %bf.cast9 = and i64 %bf.load, 65535, !dbg !3659
  %cmp = icmp eq i64 %bf.cast9, 14, !dbg !3659
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3659

cond.true:                                        ; preds = %entry
  %call = tail call i32 @vector_type_mode(%union.tree_node* %0) #6, !dbg !3659
  br label %cond.end, !dbg !3659

cond.false:                                       ; preds = %entry
  %type2 = bitcast %union.tree_node* %0 to %struct.tree_type*, !dbg !3659
  %mode3 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i64 0, i32 6, !dbg !3659
  %bf.load4 = load i32, i32* %mode3, align 4, !dbg !3659
  %bf.lshr = lshr i32 %bf.load4, 16, !dbg !3659
  %bf.clear5 = and i32 %bf.lshr, 255, !dbg !3659
  br label %cond.end, !dbg !3659

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %bf.clear5, %cond.false ], !dbg !3659
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3623, metadata !DIExpression()), !dbg !3657
  %cond12 = add i32 %cond, -38, !dbg !3660
  %idxprom13 = zext i32 %cond12 to i64, !dbg !3660
  %arrayidx14 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom13, !dbg !3660
  %2 = load %struct.real_format*, %struct.real_format** %arrayidx14, align 8, !dbg !3660
  call void @llvm.dbg.value(metadata %struct.real_format* %2, metadata !3624, metadata !DIExpression()), !dbg !3657
  switch i32 %cond, label %land.lhs.true42 [
    i32 38, label %land.lhs.true
    i32 39, label %land.lhs.true27
  ], !dbg !3661

land.lhs.true:                                    ; preds = %cond.end
  %cmp17 = icmp eq %struct.real_format* %2, @ieee_single_format, !dbg !3663
  %cmp19 = icmp eq %struct.real_format* %2, @mips_single_format, !dbg !3664
  %or.cond = or i1 %cmp17, %cmp19, !dbg !3665
  %cmp22 = icmp eq %struct.real_format* %2, @motorola_single_format, !dbg !3666
  %or.cond1 = or i1 %or.cond, %cmp22, !dbg !3665
  br i1 %or.cond1, label %cleanup, label %lor.lhs.false24, !dbg !3665

lor.lhs.false24:                                  ; preds = %land.lhs.true
  switch i32 38, label %land.lhs.true42 [
    i32 39, label %land.lhs.true27
    i32 38, label %if.end
  ], !dbg !3667

land.lhs.true27:                                  ; preds = %cond.end, %lor.lhs.false24
  %cmp28 = icmp eq %struct.real_format* %2, @ieee_double_format, !dbg !3668
  %cmp31 = icmp eq %struct.real_format* %2, @mips_double_format, !dbg !3669
  %or.cond2 = or i1 %cmp28, %cmp31, !dbg !3670
  %cmp34 = icmp eq %struct.real_format* %2, @motorola_double_format, !dbg !3671
  %or.cond3 = or i1 %or.cond2, %cmp34, !dbg !3670
  br i1 %or.cond3, label %cleanup, label %lor.lhs.false36, !dbg !3670

lor.lhs.false36:                                  ; preds = %land.lhs.true27
  %3 = and i32 %cond, -2, !dbg !3672
  %switch = icmp eq i32 %3, 38, !dbg !3672
  br i1 %switch, label %if.end, label %land.lhs.true42, !dbg !3672

land.lhs.true42:                                  ; preds = %lor.lhs.false36, %cond.end, %lor.lhs.false24
  %cmp43 = icmp eq %struct.real_format* %2, @ieee_quad_format, !dbg !3673
  %cmp46 = icmp eq %struct.real_format* %2, @mips_quad_format, !dbg !3674
  %or.cond4 = or i1 %cmp43, %cmp46, !dbg !3675
  %cmp49 = icmp eq %struct.real_format* %2, @ieee_extended_motorola_format, !dbg !3676
  %or.cond5 = or i1 %or.cond4, %cmp49, !dbg !3675
  %cmp52 = icmp eq %struct.real_format* %2, @ieee_extended_intel_96_format, !dbg !3677
  %or.cond6 = or i1 %or.cond5, %cmp52, !dbg !3675
  %cmp55 = icmp eq %struct.real_format* %2, @ieee_extended_intel_128_format, !dbg !3678
  %or.cond7 = or i1 %or.cond6, %cmp55, !dbg !3675
  %cmp58 = icmp eq %struct.real_format* %2, @ieee_extended_intel_96_round_53_format, !dbg !3679
  %or.cond8 = or i1 %or.cond7, %cmp58, !dbg !3675
  br i1 %or.cond8, label %cleanup, label %if.end, !dbg !3675

if.end:                                           ; preds = %lor.lhs.false36, %land.lhs.true42, %lor.lhs.false24
  br label %cleanup, !dbg !3680

cleanup:                                          ; preds = %land.lhs.true, %land.lhs.true27, %land.lhs.true42, %if.end
  %retval.0 = phi i8 [ 0, %if.end ], [ 1, %land.lhs.true42 ], [ 1, %land.lhs.true27 ], [ 1, %land.lhs.true ], !dbg !3657
  ret i8 %retval.0, !dbg !3681
}

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3682 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3686, metadata !DIExpression()), !dbg !3688
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !3689
  call void @llvm.dbg.value(metadata i32 %call, metadata !3687, metadata !DIExpression()), !dbg !3688
  %sub = add i32 %call, -3, !dbg !3690
  ret i32 %sub, !dbg !3691
}

declare dso_local zeroext i8 @real_compare(i32, %struct.real_value*, %struct.real_value*) local_unnamed_addr #2

declare dso_local void @real_from_integer(%struct.real_value*, i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3692 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3696, metadata !DIExpression()), !dbg !3698
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #8, !dbg !3699
  call void @llvm.dbg.value(metadata i32 %call, metadata !3697, metadata !DIExpression()), !dbg !3698
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #8, !dbg !3700
  %cmp = icmp eq i32 %call1, 3, !dbg !3702
  br i1 %cmp, label %if.then, label %if.end, !dbg !3703

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #8, !dbg !3704
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3704
  %bf.load = load i64, i64* %0, align 8, !dbg !3704
  %1 = trunc i64 %bf.load to i32, !dbg !3704
  %bf.cast = and i32 %1, 65535, !dbg !3704
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3697, metadata !DIExpression()), !dbg !3698
  br label %if.end, !dbg !3705

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3698
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3697, metadata !DIExpression()), !dbg !3698
  ret i32 %code.0, !dbg !3706
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3707 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3709, metadata !DIExpression()), !dbg !3710
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !3711
  ret %union.tree_node* %call, !dbg !3712
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3713 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3715, metadata !DIExpression()), !dbg !3716
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3717
  %0 = load i32, i32* %num_ops, align 4, !dbg !3717
  ret i32 %0, !dbg !3718
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3719 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3721, metadata !DIExpression()), !dbg !3723
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3724
  call void @llvm.dbg.value(metadata i32 %call, metadata !3722, metadata !DIExpression()), !dbg !3723
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3725

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3727
  %bf.load = load i32, i32* %0, align 8, !dbg !3727
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3727
  br label %cleanup, !dbg !3728

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3729
  br label %cleanup, !dbg !3731

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3723
  ret i32 %retval.0, !dbg !3732
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3733 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3737, metadata !DIExpression()), !dbg !3738
  %idxprom = sext i32 %code to i64, !dbg !3739
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3739
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3739
  %conv = zext i8 %0 to i32, !dbg !3740
  ret i32 %conv, !dbg !3741
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_heap_reserve(%struct.VEC_gimple_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3742 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %vec_, metadata !3746, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i32 1, metadata !3747, metadata !DIExpression()), !dbg !3749
  %0 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !3750
  %tobool = icmp eq %struct.VEC_gimple_heap* %0, null, !dbg !3750
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3750

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %0, i64 0, i32 0, !dbg !3750
  br label %cond.end, !dbg !3750

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3750
  %call = tail call fastcc i32 @VEC_gimple_base_space(%struct.VEC_gimple_base* %cond, i32 1) #8, !dbg !3750
  %tobool1 = icmp eq i32 %call, 0, !dbg !3750
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3750
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3748, metadata !DIExpression()), !dbg !3749
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3750

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_gimple_heap** %vec_ to i8**, !dbg !3751
  %2 = load i8*, i8** %1, align 8, !dbg !3751
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !3751
  store i8* %call3, i8** %1, align 8, !dbg !3751
  br label %if.end, !dbg !3751

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3750
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %vec_, %union.gimple_statement_d* %obj_) unnamed_addr #0 !dbg !3753 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !3758, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %obj_, metadata !3759, metadata !DIExpression()), !dbg !3761
  %num1 = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !3762
  %0 = load i32, i32* %num1, align 8, !dbg !3762
  %inc = add i32 %0, 1, !dbg !3762
  store i32 %inc, i32* %num1, align 8, !dbg !3762
  %idxprom = zext i32 %0 to i64, !dbg !3762
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3762
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %arrayidx, metadata !3760, metadata !DIExpression()), !dbg !3761
  store %union.gimple_statement_d* %obj_, %union.gimple_statement_d** %arrayidx, align 8, !dbg !3762
  ret %union.gimple_statement_d** %arrayidx, !dbg !3762
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_space(%struct.VEC_gimple_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3763 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !3767, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 1, metadata !3768, metadata !DIExpression()), !dbg !3769
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !3770
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3770

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 1, !dbg !3770
  %0 = load i32, i32* %alloc, align 4, !dbg !3770
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !3770
  %1 = load i32, i32* %num, align 8, !dbg !3770
  %cmp1 = icmp ne i32 %0, %1, !dbg !3770
  %phitmp = zext i1 %cmp1 to i32, !dbg !3770
  br label %cond.end, !dbg !3770

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3770

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3770
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %vec_) unnamed_addr #0 !dbg !3771 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !3777, metadata !DIExpression()), !dbg !3778
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !3779
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3779

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !3779
  %0 = load i32, i32* %num, align 8, !dbg !3779
  br label %cond.end, !dbg !3779

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3779
  ret i32 %cond, !dbg !3779
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @VEC_gimple_base_index(%struct.VEC_gimple_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3780 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !3784, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3785, metadata !DIExpression()), !dbg !3786
  br label %land.end, !dbg !3787

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3787
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3787
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %arrayidx, align 8, !dbg !3787
  ret %union.gimple_statement_d* %0, !dbg !3787
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @shrink_wrap_one_built_in_call(%union.gimple_statement_d* %bi_call) unnamed_addr #5 !dbg !3788 {
entry:
  %bi_call_bsi = alloca %struct.gimple_stmt_iterator, align 8
  %conds = alloca %struct.VEC_gimple_heap*, align 8
  %nconds = alloca i32, align 4
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp3 = alloca %struct.gimple_stmt_iterator, align 8
  %guard_bsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp107 = alloca %struct.expanded_location, align 8
  %tmp108 = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %bi_call, metadata !3790, metadata !DIExpression()), !dbg !3823
  %0 = bitcast %struct.gimple_stmt_iterator* %bi_call_bsi to i8*, !dbg !3824
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3824
  %1 = bitcast %struct.VEC_gimple_heap** %conds to i8*, !dbg !3825
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3825
  %2 = bitcast i32* %nconds to i8*, !dbg !3826
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7, !dbg !3826
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !3804, metadata !DIExpression()), !dbg !3823
  %call = tail call fastcc %struct.VEC_gimple_heap* @VEC_gimple_heap_alloc(i32 12) #8, !dbg !3827
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %call, metadata !3800, metadata !DIExpression()), !dbg !3823
  store %struct.VEC_gimple_heap* %call, %struct.VEC_gimple_heap** %conds, align 8, !dbg !3828
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %call, metadata !3800, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32* %nconds, metadata !3802, metadata !DIExpression(DW_OP_deref)), !dbg !3823
  call fastcc void @gen_shrink_wrap_conditions(%union.gimple_statement_d* %bi_call, %struct.VEC_gimple_heap* %call, i32* nonnull %nconds) #8, !dbg !3829
  %3 = load i32, i32* %nconds, align 4, !dbg !3830
  call void @llvm.dbg.value(metadata i32 %3, metadata !3802, metadata !DIExpression()), !dbg !3823
  %cmp = icmp eq i32 %3, 0, !dbg !3832
  br i1 %cmp, label %cleanup111, label %if.end, !dbg !3833

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %bi_call) #8, !dbg !3834
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call1, metadata !3792, metadata !DIExpression()), !dbg !3823
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3835
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !3835
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* %bi_call) #6, !dbg !3835
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !3835
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !3835
  %5 = bitcast %union.gimple_statement_d* %bi_call to i8*, !dbg !3836
  %call2 = call %struct.edge_def* @split_block(%struct.basic_block_def* %call1, i8* %5) #6, !dbg !3837
  call void @llvm.dbg.value(metadata %struct.edge_def* %call2, metadata !3796, metadata !DIExpression()), !dbg !3823
  %6 = bitcast %struct.gimple_stmt_iterator* %tmp3 to i8*, !dbg !3838
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7, !dbg !3838
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp3, %union.gimple_statement_d* %bi_call) #6, !dbg !3838
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !3838
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7, !dbg !3838
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call2, i64 0, i32 1, !dbg !3839
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3839
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %7, metadata !3793, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %call, metadata !3800, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %call, metadata !3800, metadata !DIExpression()), !dbg !3823
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %call, i64 0, i32 0, !dbg !3840
  %call4 = call fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %base) #8, !dbg !3840
  call void @llvm.dbg.value(metadata i32 %call4, metadata !3801, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !3804, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %call, metadata !3800, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %call, metadata !3800, metadata !DIExpression()), !dbg !3823
  %call11 = call fastcc %union.gimple_statement_d* @VEC_gimple_base_index(%struct.VEC_gimple_base* %base, i32 0) #8, !dbg !3841
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call11, metadata !3805, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 0, metadata !3803, metadata !DIExpression()), !dbg !3823
  br label %for.cond, !dbg !3842

for.cond:                                         ; preds = %for.inc, %if.end
  %ci.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !3843
  %cond_expr.0 = phi %union.gimple_statement_d* [ null, %if.end ], [ %cond_expr.1, %for.inc ], !dbg !3823
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %cond_expr.0, metadata !3804, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.0, metadata !3803, metadata !DIExpression()), !dbg !3823
  %exitcond = icmp eq i32 %ci.0, %call4, !dbg !3844
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3845

for.body:                                         ; preds = %for.cond
  %8 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %conds, align 8, !dbg !3846
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %8, metadata !3800, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %8, metadata !3800, metadata !DIExpression()), !dbg !3823
  %base15 = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %8, i64 0, i32 0, !dbg !3846
  %call19 = call fastcc %union.gimple_statement_d* @VEC_gimple_base_index(%struct.VEC_gimple_base* %base15, i32 %ci.0) #8, !dbg !3846
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call19, metadata !3808, metadata !DIExpression()), !dbg !3847
  %tobool20 = icmp ne %union.gimple_statement_d* %call19, null, !dbg !3848
  %cmp21 = icmp ne i32 %ci.0, 0, !dbg !3848
  %or.cond = or i1 %tobool20, %cmp21, !dbg !3848
  br i1 %or.cond, label %cond.end24, label %cond.true22, !dbg !3848

cond.true22:                                      ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 773, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3848
  br label %cond.end24, !dbg !3848

cond.end24:                                       ; preds = %for.body, %cond.true22
  %tobool26 = icmp eq %union.gimple_statement_d* %call19, null, !dbg !3849
  br i1 %tobool26, label %cleanup, label %if.end28, !dbg !3851

if.end28:                                         ; preds = %cond.end24
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bi_call_bsi, metadata !3791, metadata !DIExpression(DW_OP_deref)), !dbg !3823
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %bi_call_bsi, %union.gimple_statement_d* nonnull %call19, i32 1) #6, !dbg !3852
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call19, metadata !3804, metadata !DIExpression()), !dbg !3823
  br label %cleanup, !dbg !3853

cleanup:                                          ; preds = %cond.end24, %if.end28
  %cond_expr.1 = phi %union.gimple_statement_d* [ %call19, %if.end28 ], [ %cond_expr.0, %cond.end24 ], !dbg !3823
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end28 ], [ false, %cond.end24 ]
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %cond_expr.1, metadata !3804, metadata !DIExpression()), !dbg !3823
  br i1 %cleanup.dest.slot.0, label %for.inc, label %for.end

for.inc:                                          ; preds = %cleanup
  %inc = add i32 %ci.0, 1, !dbg !3854
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3803, metadata !DIExpression()), !dbg !3823
  br label %for.cond, !dbg !3855, !llvm.loop !3856

for.end:                                          ; preds = %for.cond, %cleanup
  %ci.0.lcssa = phi i32 [ %ci.0, %for.cond ], [ %ci.0, %cleanup ], !dbg !3843
  %cond_expr.2 = phi %union.gimple_statement_d* [ %cond_expr.1, %cleanup ], [ %cond_expr.0, %for.cond ], !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.0.lcssa, metadata !3803, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.0.lcssa, metadata !3803, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.0.lcssa, metadata !3803, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.0.lcssa, metadata !3803, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.0.lcssa, metadata !3803, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.0.lcssa, metadata !3803, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %cond_expr.2, metadata !3804, metadata !DIExpression()), !dbg !3823
  %9 = load i32, i32* %nconds, align 4, !dbg !3858
  call void @llvm.dbg.value(metadata i32 %9, metadata !3802, metadata !DIExpression()), !dbg !3823
  %dec = add i32 %9, -1, !dbg !3858
  call void @llvm.dbg.value(metadata i32 %dec, metadata !3802, metadata !DIExpression()), !dbg !3823
  store i32 %dec, i32* %nconds, align 4, !dbg !3858
  call void @llvm.dbg.value(metadata i32 %ci.0.lcssa, metadata !3803, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3823
  %tobool30 = icmp eq %union.gimple_statement_d* %cond_expr.2, null, !dbg !3859
  br i1 %tobool30, label %cond.true33, label %land.lhs.true, !dbg !3859

land.lhs.true:                                    ; preds = %for.end
  %call31 = call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %cond_expr.2) #8, !dbg !3859
  %cmp32 = icmp eq i32 %call31, 1, !dbg !3859
  br i1 %cmp32, label %cond.end35, label %cond.true33, !dbg !3859

cond.true33:                                      ; preds = %for.end, %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 781, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3859
  br label %cond.end35, !dbg !3859

cond.end35:                                       ; preds = %land.lhs.true, %cond.true33
  %call37 = call fastcc i32 @gimple_location(%union.gimple_statement_d* %bi_call) #8, !dbg !3860
  %call38 = call %union.tree_node* @create_artificial_label(i32 %call37) #6, !dbg !3861
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !3806, metadata !DIExpression()), !dbg !3823
  %call39 = call %union.gimple_statement_d* @gimple_build_label(%union.tree_node* %call38) #6, !dbg !3862
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call39, metadata !3807, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bi_call_bsi, metadata !3791, metadata !DIExpression(DW_OP_deref)), !dbg !3823
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %bi_call_bsi, %union.gimple_statement_d* %call39, i32 1) #6, !dbg !3863
  %10 = bitcast %union.gimple_statement_d* %cond_expr.2 to i8*, !dbg !3864
  %call40 = call %struct.edge_def* @split_block(%struct.basic_block_def* %call1, i8* %10) #6, !dbg !3865
  call void @llvm.dbg.value(metadata %struct.edge_def* %call40, metadata !3798, metadata !DIExpression()), !dbg !3823
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call40, i64 0, i32 7, !dbg !3866
  %11 = load i32, i32* %flags, align 8, !dbg !3867
  %and = and i32 %11, -1026, !dbg !3867
  %or = or i32 %and, 1024, !dbg !3868
  store i32 %or, i32* %flags, align 8, !dbg !3868
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call1, metadata !3795, metadata !DIExpression()), !dbg !3823
  %dest42 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call40, i64 0, i32 1, !dbg !3869
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dest42, align 8, !dbg !3869
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %12, metadata !3792, metadata !DIExpression()), !dbg !3823
  %call43 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call1, %struct.basic_block_def* %7, i32 2048) #6, !dbg !3870
  call void @llvm.dbg.value(metadata %struct.edge_def* %call43, metadata !3797, metadata !DIExpression()), !dbg !3823
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call40, i64 0, i32 8, !dbg !3871
  store i32 100, i32* %probability, align 4, !dbg !3872
  %probability45 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call43, i64 0, i32 8, !dbg !3873
  store i32 9900, i32* %probability45, align 4, !dbg !3874
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call1, metadata !3794, metadata !DIExpression()), !dbg !3823
  %13 = bitcast %struct.gimple_stmt_iterator* %guard_bsi to i8*, !dbg !3875
  br label %while.cond, !dbg !3876

while.cond:                                       ; preds = %cond.end89, %cond.end35
  %ci.1.in = phi i32 [ %ci.0.lcssa, %cond.end35 ], [ %ci.2.lcssa, %cond.end89 ]
  %cond_expr.3 = phi %union.gimple_statement_d* [ %cond_expr.2, %cond.end35 ], [ %cond_expr.6, %cond.end89 ], !dbg !3823
  %cond_expr_start.0 = phi %union.gimple_statement_d* [ %call11, %cond.end35 ], [ %call53, %cond.end89 ], !dbg !3823
  %ci.1 = add i32 %ci.1.in, 1, !dbg !3823
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %cond_expr_start.0, metadata !3805, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %cond_expr.3, metadata !3804, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.1, metadata !3803, metadata !DIExpression()), !dbg !3823
  %14 = load i32, i32* %nconds, align 4, !dbg !3877
  call void @llvm.dbg.value(metadata i32 %14, metadata !3802, metadata !DIExpression()), !dbg !3823
  %cmp46 = icmp eq i32 %14, 0, !dbg !3878
  br i1 %cmp46, label %while.end, label %while.body, !dbg !3876

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #7, !dbg !3879
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %guard_bsi, metadata !3815, metadata !DIExpression(DW_OP_deref)), !dbg !3875
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %guard_bsi, %union.gimple_statement_d* %cond_expr_start.0) #6, !dbg !3880
  call void @llvm.dbg.value(metadata i32 %ci.1, metadata !3812, metadata !DIExpression()), !dbg !3875
  %15 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %conds, align 8, !dbg !3881
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %15, metadata !3800, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %15, metadata !3800, metadata !DIExpression()), !dbg !3823
  %base49 = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %15, i64 0, i32 0, !dbg !3881
  %call53 = call fastcc %union.gimple_statement_d* @VEC_gimple_base_index(%struct.VEC_gimple_base* %base49, i32 %ci.1) #8, !dbg !3881
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call53, metadata !3805, metadata !DIExpression()), !dbg !3823
  br label %for.cond54, !dbg !3882

for.cond54:                                       ; preds = %for.inc78, %while.body
  %ci.2 = phi i32 [ %ci.1, %while.body ], [ %inc79, %for.inc78 ], !dbg !3823
  %cond_expr.4 = phi %union.gimple_statement_d* [ %cond_expr.3, %while.body ], [ %cond_expr.5, %for.inc78 ], !dbg !3823
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %cond_expr.4, metadata !3804, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.2, metadata !3803, metadata !DIExpression()), !dbg !3823
  %cmp55 = icmp ult i32 %ci.2, %call4, !dbg !3883
  br i1 %cmp55, label %for.body56, label %for.end80, !dbg !3884

for.body56:                                       ; preds = %for.cond54
  %16 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %conds, align 8, !dbg !3885
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %16, metadata !3800, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %16, metadata !3800, metadata !DIExpression()), !dbg !3823
  %base60 = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %16, i64 0, i32 0, !dbg !3885
  %call64 = call fastcc %union.gimple_statement_d* @VEC_gimple_base_index(%struct.VEC_gimple_base* %base60, i32 %ci.2) #8, !dbg !3885
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call64, metadata !3816, metadata !DIExpression()), !dbg !3886
  %tobool65 = icmp ne %union.gimple_statement_d* %call64, null, !dbg !3887
  %cmp67 = icmp ne i32 %ci.2, %ci.1, !dbg !3887
  %or.cond1 = or i1 %tobool65, %cmp67, !dbg !3887
  br i1 %or.cond1, label %cond.end70, label %cond.true68, !dbg !3887

cond.true68:                                      ; preds = %for.body56
  call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 812, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3887
  br label %cond.end70, !dbg !3887

cond.end70:                                       ; preds = %for.body56, %cond.true68
  %tobool72 = icmp eq %union.gimple_statement_d* %call64, null, !dbg !3888
  br i1 %tobool72, label %cleanup75, label %if.end74, !dbg !3890

if.end74:                                         ; preds = %cond.end70
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %guard_bsi, metadata !3815, metadata !DIExpression(DW_OP_deref)), !dbg !3875
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %guard_bsi, %union.gimple_statement_d* nonnull %call64, i32 1) #6, !dbg !3891
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call64, metadata !3804, metadata !DIExpression()), !dbg !3823
  br label %cleanup75, !dbg !3892

cleanup75:                                        ; preds = %cond.end70, %if.end74
  %cond_expr.5 = phi %union.gimple_statement_d* [ %call64, %if.end74 ], [ %cond_expr.4, %cond.end70 ], !dbg !3823
  %cleanup.dest.slot.1 = phi i1 [ true, %if.end74 ], [ false, %cond.end70 ]
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %cond_expr.5, metadata !3804, metadata !DIExpression()), !dbg !3823
  br i1 %cleanup.dest.slot.1, label %for.inc78, label %for.end80

for.inc78:                                        ; preds = %cleanup75
  %inc79 = add i32 %ci.2, 1, !dbg !3893
  call void @llvm.dbg.value(metadata i32 %inc79, metadata !3803, metadata !DIExpression()), !dbg !3823
  br label %for.cond54, !dbg !3894, !llvm.loop !3895

for.end80:                                        ; preds = %cleanup75, %for.cond54
  %ci.2.lcssa = phi i32 [ %ci.2, %cleanup75 ], [ %ci.2, %for.cond54 ], !dbg !3823
  %cond_expr.6 = phi %union.gimple_statement_d* [ %cond_expr.5, %cleanup75 ], [ %cond_expr.4, %for.cond54 ], !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.2.lcssa, metadata !3803, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.2.lcssa, metadata !3803, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.2.lcssa, metadata !3803, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.2.lcssa, metadata !3803, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.2.lcssa, metadata !3803, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %ci.2.lcssa, metadata !3803, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %cond_expr.6, metadata !3804, metadata !DIExpression()), !dbg !3823
  %17 = load i32, i32* %nconds, align 4, !dbg !3897
  call void @llvm.dbg.value(metadata i32 %17, metadata !3802, metadata !DIExpression()), !dbg !3823
  %dec81 = add i32 %17, -1, !dbg !3897
  call void @llvm.dbg.value(metadata i32 %dec81, metadata !3802, metadata !DIExpression()), !dbg !3823
  store i32 %dec81, i32* %nconds, align 4, !dbg !3897
  call void @llvm.dbg.value(metadata i32 %ci.2.lcssa, metadata !3803, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3823
  %tobool83 = icmp eq %union.gimple_statement_d* %cond_expr.6, null, !dbg !3898
  br i1 %tobool83, label %cond.true87, label %land.lhs.true84, !dbg !3898

land.lhs.true84:                                  ; preds = %for.end80
  %call85 = call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %cond_expr.6) #8, !dbg !3898
  %cmp86 = icmp eq i32 %call85, 1, !dbg !3898
  br i1 %cmp86, label %cond.end89, label %cond.true87, !dbg !3898

cond.true87:                                      ; preds = %for.end80, %land.lhs.true84
  call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 820, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3898
  br label %cond.end89, !dbg !3898

cond.end89:                                       ; preds = %land.lhs.true84, %cond.true87
  %18 = bitcast %union.gimple_statement_d* %cond_expr.6 to i8*, !dbg !3899
  %call91 = call %struct.edge_def* @split_block(%struct.basic_block_def* %call1, i8* %18) #6, !dbg !3900
  call void @llvm.dbg.value(metadata %struct.edge_def* %call91, metadata !3799, metadata !DIExpression()), !dbg !3823
  %flags92 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call91, i64 0, i32 7, !dbg !3901
  %19 = load i32, i32* %flags92, align 8, !dbg !3902
  %and93 = and i32 %19, -2050, !dbg !3902
  %or95 = or i32 %and93, 2048, !dbg !3903
  store i32 %or95, i32* %flags92, align 8, !dbg !3903
  %call96 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call1, %struct.basic_block_def* %12, i32 1024) #6, !dbg !3904
  call void @llvm.dbg.value(metadata %struct.edge_def* %call96, metadata !3814, metadata !DIExpression()), !dbg !3875
  %probability97 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call96, i64 0, i32 8, !dbg !3905
  store i32 100, i32* %probability97, align 4, !dbg !3906
  %probability100 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call91, i64 0, i32 8, !dbg !3907
  store i32 9900, i32* %probability100, align 4, !dbg !3908
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #7, !dbg !3909
  br label %while.cond, !dbg !3876, !llvm.loop !3910

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %conds, metadata !3800, metadata !DIExpression(DW_OP_deref)), !dbg !3823
  call fastcc void @VEC_gimple_heap_free(%struct.VEC_gimple_heap** nonnull %conds) #8, !dbg !3911
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3912
  %tobool101 = icmp eq %struct._IO_FILE* %20, null, !dbg !3912
  br i1 %tobool101, label %cleanup111, label %land.lhs.true102, !dbg !3913

land.lhs.true102:                                 ; preds = %while.end
  %21 = load i32, i32* @dump_flags, align 4, !dbg !3914
  %and103 = and i32 %21, 8, !dbg !3915
  %tobool104 = icmp eq i32 %and103, 0, !dbg !3915
  br i1 %tobool104, label %cleanup111, label %if.then105, !dbg !3916

if.then105:                                       ; preds = %land.lhs.true102
  %call106 = call fastcc i32 @gimple_location(%union.gimple_statement_d* %bi_call) #8, !dbg !3917
  call void @llvm.dbg.value(metadata i32 %call106, metadata !3820, metadata !DIExpression()), !dbg !3918
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3919
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp107, i32 %call106) #6, !dbg !3920
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp107, i64 0, i32 0, !dbg !3920
  %23 = load i8*, i8** %file, align 8, !dbg !3920
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp108, i32 %call106) #6, !dbg !3921
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp108, i64 0, i32 1, !dbg !3921
  %24 = load i32, i32* %line, align 8, !dbg !3921
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i8* %23, i32 %24) #6, !dbg !3922
  br label %cleanup111, !dbg !3923

cleanup111:                                       ; preds = %land.lhs.true102, %while.end, %if.then105, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ 1, %if.then105 ], [ 1, %land.lhs.true102 ], [ 1, %while.end ], !dbg !3823
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7, !dbg !3924
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3924
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3924
  ret i8 %retval.0, !dbg !3924
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gen_shrink_wrap_conditions(%union.gimple_statement_d* %bi_call, %struct.VEC_gimple_heap* %conds, i32* %nconds) unnamed_addr #5 !dbg !3925 {
entry:
  %domain = alloca %struct.input_domain, align 4
  %tmp = alloca { i64, i32 }, align 8
  %domain.coerce = alloca { i64, i32 }, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %bi_call, metadata !3930, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %conds, metadata !3931, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i32* %nconds, metadata !3932, metadata !DIExpression()), !dbg !3949
  %tobool = icmp ne i32* %nconds, null, !dbg !3950
  %tobool1 = icmp ne %struct.VEC_gimple_heap* %conds, null, !dbg !3950
  %or.cond = and i1 %tobool, %tobool1, !dbg !3950
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !3950

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 695, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3950
  br label %cond.end, !dbg !3950

cond.end:                                         ; preds = %entry, %cond.true
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %conds, i64 0, i32 0, !dbg !3951
  %call7 = tail call fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %base) #8, !dbg !3951
  %cmp = icmp eq i32 %call7, 0, !dbg !3951
  br i1 %cmp, label %cond.end10, label %cond.true8, !dbg !3951

cond.true8:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 696, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3951
  br label %cond.end10, !dbg !3951

cond.end10:                                       ; preds = %cond.end, %cond.true8
  %call12 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %bi_call) #8, !dbg !3952
  %tobool13 = icmp eq i8 %call12, 0, !dbg !3952
  br i1 %tobool13, label %cond.true14, label %cond.end16, !dbg !3952

cond.true14:                                      ; preds = %cond.end10
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 697, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3952
  br label %cond.end16, !dbg !3952

cond.end16:                                       ; preds = %cond.end10, %cond.true14
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %bi_call, metadata !3933, metadata !DIExpression()), !dbg !3949
  %call18 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %bi_call) #8, !dbg !3953
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !3934, metadata !DIExpression()), !dbg !3949
  %tobool19 = icmp eq %union.tree_node* %call18, null, !dbg !3954
  br i1 %tobool19, label %cond.true22, label %land.lhs.true20, !dbg !3954

land.lhs.true20:                                  ; preds = %cond.end16
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call18, i64 0, i32 0, i32 5, !dbg !3954
  %bf.load = load i32, i32* %built_in_class, align 8, !dbg !3954
  %bf.clear = and i32 %bf.load, 6144, !dbg !3954
  %cmp21 = icmp eq i32 %bf.clear, 0, !dbg !3954
  br i1 %cmp21, label %cond.true22, label %cond.end24, !dbg !3954

cond.true22:                                      ; preds = %land.lhs.true20, %cond.end16
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 701, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3954
  %function_code.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %call18, i64 0, i32 0, i32 5, !dbg !3949
  %bf.load27.pre = load i32, i32* %function_code.phi.trans.insert, align 8, !dbg !3955
  br label %cond.end24, !dbg !3954

cond.end24:                                       ; preds = %land.lhs.true20, %cond.true22
  %bf.load27 = phi i32 [ %bf.load, %land.lhs.true20 ], [ %bf.load27.pre, %cond.true22 ], !dbg !3955
  %bf.clear28 = and i32 %bf.load27, 2047, !dbg !3955
  call void @llvm.dbg.value(metadata i32 %bf.clear28, metadata !3935, metadata !DIExpression()), !dbg !3949
  store i32 0, i32* %nconds, align 4, !dbg !3956
  %cmp29 = icmp eq i32 %bf.clear28, 180, !dbg !3957
  br i1 %cmp29, label %if.then, label %if.else, !dbg !3958

if.then:                                          ; preds = %cond.end24
  tail call fastcc void @gen_conditions_for_pow(%union.gimple_statement_d* %bi_call, %struct.VEC_gimple_heap* %conds, i32* %nconds) #8, !dbg !3959
  br label %if.end, !dbg !3959

if.else:                                          ; preds = %cond.end24
  %0 = bitcast %struct.input_domain* %domain to i8*, !dbg !3960
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #7, !dbg !3960
  %call30 = tail call fastcc { i64, i32 } @get_no_error_domain(i32 %bf.clear28) #8, !dbg !3961
  store { i64, i32 } %call30, { i64, i32 }* %tmp, align 8, !dbg !3961
  %1 = bitcast { i64, i32 }* %tmp to i8*, !dbg !3961
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %0, i8* nonnull align 8 %1, i64 12, i1 false), !dbg !3961
  store i32 0, i32* %nconds, align 4, !dbg !3962
  %call31 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %bi_call, i32 0) #8, !dbg !3963
  call void @llvm.dbg.value(metadata %union.tree_node* %call31, metadata !3936, metadata !DIExpression()), !dbg !3964
  %2 = bitcast { i64, i32 }* %domain.coerce to i8*, !dbg !3965
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 4 %0, i64 12, i1 false), !dbg !3965
  %3 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %domain.coerce, i64 0, i32 0, !dbg !3965
  %4 = load i64, i64* %3, align 8, !dbg !3965
  %5 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %domain.coerce, i64 0, i32 1, !dbg !3965
  %6 = load i32, i32* %5, align 8, !dbg !3965
  tail call fastcc void @gen_conditions_for_domain(%union.tree_node* %call31, i64 %4, i32 %6, %struct.VEC_gimple_heap* %conds, i32* %nconds) #8, !dbg !3965
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #7, !dbg !3966
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3967
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3968 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3972, metadata !DIExpression()), !dbg !3973
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3974
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3974
  ret %struct.basic_block_def* %0, !dbg !3975
}

declare dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* sret, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @split_block(%struct.basic_block_def*, i8*) local_unnamed_addr #2

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_artificial_label(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3976 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3980, metadata !DIExpression()), !dbg !3981
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !3982
  %0 = load i32, i32* %location, align 8, !dbg !3982
  ret i32 %0, !dbg !3983
}

declare dso_local %union.gimple_statement_d* @gimple_build_label(%union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gen_conditions_for_pow(%union.gimple_statement_d* %pow_call, %struct.VEC_gimple_heap* %conds, i32* %nconds) unnamed_addr #5 !dbg !3984 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %pow_call, metadata !3986, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %conds, metadata !3987, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32* %nconds, metadata !3988, metadata !DIExpression()), !dbg !3992
  store i32 0, i32* %nconds, align 4, !dbg !3993
  %call = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %pow_call, i32 0) #8, !dbg !3994
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3989, metadata !DIExpression()), !dbg !3992
  %call1 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %pow_call, i32 1) #8, !dbg !3995
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3990, metadata !DIExpression()), !dbg !3992
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3996
  %bf.load = load i64, i64* %0, align 8, !dbg !3996
  %1 = trunc i64 %bf.load to i16, !dbg !3996
  switch i16 %1, label %if.else5 [
    i16 24, label %if.then
    i16 141, label %if.then4
  ], !dbg !3997

if.then:                                          ; preds = %entry
  tail call fastcc void @gen_conditions_for_pow_cst_base(%union.tree_node* %call, %union.tree_node* %call1, %struct.VEC_gimple_heap* %conds, i32* %nconds) #8, !dbg !3998
  br label %if.end6, !dbg !3998

if.then4:                                         ; preds = %entry
  tail call fastcc void @gen_conditions_for_pow_int_base(%union.tree_node* %call, %union.tree_node* %call1, %struct.VEC_gimple_heap* %conds, i32* %nconds) #8, !dbg !4000
  br label %if.end6, !dbg !4000

if.else5:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 568, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4002
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.else5, %if.then
  ret void, !dbg !4003
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i32 } @get_no_error_domain(i32 %fnc) unnamed_addr #5 !dbg !4004 {
entry:
  %retval = alloca %struct.input_domain, align 4
  %tmp = alloca { i64, i32 }, align 8
  %tmp3 = alloca { i64, i32 }, align 8
  %tmp6 = alloca { i64, i32 }, align 8
  %tmp9 = alloca { i64, i32 }, align 8
  %tmp12 = alloca { i64, i32 }, align 8
  %tmp15 = alloca { i64, i32 }, align 8
  %tmp18 = alloca { i64, i32 }, align 8
  %tmp21 = alloca { i64, i32 }, align 8
  %tmp24 = alloca { i64, i32 }, align 8
  %tmp27 = alloca { i64, i32 }, align 8
  %tmp30 = alloca { i64, i32 }, align 8
  %tmp33 = alloca { i64, i32 }, align 8
  %tmp36 = alloca { i64, i32 }, align 8
  %tmp39 = alloca { i64, i32 }, align 8
  %tmp41 = alloca { i64, i32 }, align 8
  %tmp42 = alloca { i64, i32 }, align 8
  call void @llvm.dbg.value(metadata i32 %fnc, metadata !4008, metadata !DIExpression()), !dbg !4009
  switch i32 %fnc, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 11, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb1
    i32 4, label %sw.bb1
    i32 17, label %sw.bb4
    i32 18, label %sw.bb4
    i32 19, label %sw.bb4
    i32 33, label %sw.bb7
    i32 225, label %sw.bb7
    i32 32, label %sw.bb10
    i32 224, label %sw.bb10
    i32 34, label %sw.bb10
    i32 226, label %sw.bb10
    i32 138, label %sw.bb13
    i32 151, label %sw.bb13
    i32 152, label %sw.bb13
    i32 145, label %sw.bb13
    i32 146, label %sw.bb13
    i32 147, label %sw.bb13
    i32 139, label %sw.bb13
    i32 140, label %sw.bb13
    i32 141, label %sw.bb13
    i32 142, label %sw.bb16
    i32 143, label %sw.bb16
    i32 144, label %sw.bb16
    i32 52, label %sw.bb19
    i32 55, label %sw.bb19
    i32 45, label %sw.bb22
    i32 54, label %sw.bb22
    i32 53, label %sw.bb22
    i32 56, label %sw.bb22
    i32 50, label %sw.bb25
    i32 49, label %sw.bb28
    i32 51, label %sw.bb28
    i32 47, label %sw.bb31
    i32 182, label %sw.bb31
    i32 46, label %sw.bb34
    i32 181, label %sw.bb34
    i32 48, label %sw.bb34
    i32 183, label %sw.bb34
    i32 228, label %sw.bb37
    i32 229, label %sw.bb37
    i32 230, label %sw.bb37
  ], !dbg !4010

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %call = tail call fastcc { i64, i32 } @get_domain(i32 -1, i8 zeroext 1, i8 zeroext 1, i32 1, i8 zeroext 1, i8 zeroext 1) #8, !dbg !4011
  store { i64, i32 } %call, { i64, i32 }* %tmp, align 8, !dbg !4011
  %0 = bitcast { i64, i32 }* %tmp to i8*, !dbg !4011
  %1 = bitcast %struct.input_domain* %retval to i8*, !dbg !4011
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %1, i8* nonnull align 8 %0, i64 12, i1 false), !dbg !4011
  br label %return, !dbg !4013

sw.bb1:                                           ; preds = %entry, %entry, %entry
  %call2 = tail call fastcc { i64, i32 } @get_domain(i32 1, i8 zeroext 1, i8 zeroext 1, i32 1, i8 zeroext 0, i8 zeroext 0) #8, !dbg !4014
  store { i64, i32 } %call2, { i64, i32 }* %tmp3, align 8, !dbg !4014
  %2 = bitcast { i64, i32 }* %tmp3 to i8*, !dbg !4014
  %3 = bitcast %struct.input_domain* %retval to i8*, !dbg !4014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %3, i8* nonnull align 8 %2, i64 12, i1 false), !dbg !4014
  br label %return, !dbg !4015

sw.bb4:                                           ; preds = %entry, %entry, %entry
  %call5 = tail call fastcc { i64, i32 } @get_domain(i32 -1, i8 zeroext 1, i8 zeroext 0, i32 1, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4016
  store { i64, i32 } %call5, { i64, i32 }* %tmp6, align 8, !dbg !4016
  %4 = bitcast { i64, i32 }* %tmp6 to i8*, !dbg !4016
  %5 = bitcast %struct.input_domain* %retval to i8*, !dbg !4016
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %5, i8* nonnull align 8 %4, i64 12, i1 false), !dbg !4016
  br label %return, !dbg !4017

sw.bb7:                                           ; preds = %entry, %entry
  %call8 = tail call fastcc { i64, i32 } @get_domain(i32 -89, i8 zeroext 1, i8 zeroext 0, i32 89, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4018
  store { i64, i32 } %call8, { i64, i32 }* %tmp9, align 8, !dbg !4018
  %6 = bitcast { i64, i32 }* %tmp9 to i8*, !dbg !4018
  %7 = bitcast %struct.input_domain* %retval to i8*, !dbg !4018
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %7, i8* nonnull align 8 %6, i64 12, i1 false), !dbg !4018
  br label %return, !dbg !4019

sw.bb10:                                          ; preds = %entry, %entry, %entry, %entry
  %call11 = tail call fastcc { i64, i32 } @get_domain(i32 -710, i8 zeroext 1, i8 zeroext 0, i32 710, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4020
  store { i64, i32 } %call11, { i64, i32 }* %tmp12, align 8, !dbg !4020
  %8 = bitcast { i64, i32 }* %tmp12 to i8*, !dbg !4020
  %9 = bitcast %struct.input_domain* %retval to i8*, !dbg !4020
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %9, i8* nonnull align 8 %8, i64 12, i1 false), !dbg !4020
  br label %return, !dbg !4021

sw.bb13:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %call14 = tail call fastcc { i64, i32 } @get_domain(i32 0, i8 zeroext 1, i8 zeroext 0, i32 0, i8 zeroext 0, i8 zeroext 0) #8, !dbg !4022
  store { i64, i32 } %call14, { i64, i32 }* %tmp15, align 8, !dbg !4022
  %10 = bitcast { i64, i32 }* %tmp15 to i8*, !dbg !4022
  %11 = bitcast %struct.input_domain* %retval to i8*, !dbg !4022
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %11, i8* nonnull align 8 %10, i64 12, i1 false), !dbg !4022
  br label %return, !dbg !4023

sw.bb16:                                          ; preds = %entry, %entry, %entry
  %call17 = tail call fastcc { i64, i32 } @get_domain(i32 -1, i8 zeroext 1, i8 zeroext 0, i32 0, i8 zeroext 0, i8 zeroext 0) #8, !dbg !4024
  store { i64, i32 } %call17, { i64, i32 }* %tmp18, align 8, !dbg !4024
  %12 = bitcast { i64, i32 }* %tmp18 to i8*, !dbg !4024
  %13 = bitcast %struct.input_domain* %retval to i8*, !dbg !4024
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 8 %12, i64 12, i1 false), !dbg !4024
  br label %return, !dbg !4025

sw.bb19:                                          ; preds = %entry, %entry
  %call20 = tail call fastcc { i64, i32 } @get_domain(i32 -1, i8 zeroext 0, i8 zeroext 0, i32 88, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4026
  store { i64, i32 } %call20, { i64, i32 }* %tmp21, align 8, !dbg !4026
  %14 = bitcast { i64, i32 }* %tmp21 to i8*, !dbg !4026
  %15 = bitcast %struct.input_domain* %retval to i8*, !dbg !4026
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %15, i8* nonnull align 8 %14, i64 12, i1 false), !dbg !4026
  br label %return, !dbg !4027

sw.bb22:                                          ; preds = %entry, %entry, %entry, %entry
  %call23 = tail call fastcc { i64, i32 } @get_domain(i32 -1, i8 zeroext 0, i8 zeroext 0, i32 709, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4028
  store { i64, i32 } %call23, { i64, i32 }* %tmp24, align 8, !dbg !4028
  %16 = bitcast { i64, i32 }* %tmp24 to i8*, !dbg !4028
  %17 = bitcast %struct.input_domain* %retval to i8*, !dbg !4028
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %17, i8* nonnull align 8 %16, i64 12, i1 false), !dbg !4028
  br label %return, !dbg !4029

sw.bb25:                                          ; preds = %entry
  %call26 = tail call fastcc { i64, i32 } @get_domain(i32 -1, i8 zeroext 0, i8 zeroext 0, i32 128, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4030
  store { i64, i32 } %call26, { i64, i32 }* %tmp27, align 8, !dbg !4030
  %18 = bitcast { i64, i32 }* %tmp27 to i8*, !dbg !4030
  %19 = bitcast %struct.input_domain* %retval to i8*, !dbg !4030
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %19, i8* nonnull align 8 %18, i64 12, i1 false), !dbg !4030
  br label %return, !dbg !4031

sw.bb28:                                          ; preds = %entry, %entry
  %call29 = tail call fastcc { i64, i32 } @get_domain(i32 -1, i8 zeroext 0, i8 zeroext 0, i32 1024, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4032
  store { i64, i32 } %call29, { i64, i32 }* %tmp30, align 8, !dbg !4032
  %20 = bitcast { i64, i32 }* %tmp30 to i8*, !dbg !4032
  %21 = bitcast %struct.input_domain* %retval to i8*, !dbg !4032
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %21, i8* nonnull align 8 %20, i64 12, i1 false), !dbg !4032
  br label %return, !dbg !4033

sw.bb31:                                          ; preds = %entry, %entry
  %call32 = tail call fastcc { i64, i32 } @get_domain(i32 -1, i8 zeroext 0, i8 zeroext 0, i32 38, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4034
  store { i64, i32 } %call32, { i64, i32 }* %tmp33, align 8, !dbg !4034
  %22 = bitcast { i64, i32 }* %tmp33 to i8*, !dbg !4034
  %23 = bitcast %struct.input_domain* %retval to i8*, !dbg !4034
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %23, i8* nonnull align 8 %22, i64 12, i1 false), !dbg !4034
  br label %return, !dbg !4035

sw.bb34:                                          ; preds = %entry, %entry, %entry, %entry
  %call35 = tail call fastcc { i64, i32 } @get_domain(i32 -1, i8 zeroext 0, i8 zeroext 0, i32 308, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4036
  store { i64, i32 } %call35, { i64, i32 }* %tmp36, align 8, !dbg !4036
  %24 = bitcast { i64, i32 }* %tmp36 to i8*, !dbg !4036
  %25 = bitcast %struct.input_domain* %retval to i8*, !dbg !4036
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %25, i8* nonnull align 8 %24, i64 12, i1 false), !dbg !4036
  br label %return, !dbg !4037

sw.bb37:                                          ; preds = %entry, %entry, %entry
  %call38 = tail call fastcc { i64, i32 } @get_domain(i32 0, i8 zeroext 1, i8 zeroext 1, i32 0, i8 zeroext 0, i8 zeroext 0) #8, !dbg !4038
  store { i64, i32 } %call38, { i64, i32 }* %tmp39, align 8, !dbg !4038
  %26 = bitcast { i64, i32 }* %tmp39 to i8*, !dbg !4038
  %27 = bitcast %struct.input_domain* %retval to i8*, !dbg !4038
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %27, i8* nonnull align 8 %26, i64 12, i1 false), !dbg !4038
  br label %return, !dbg !4039

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 669, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4040
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 672, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4041
  %call40 = tail call fastcc { i64, i32 } @get_domain(i32 0, i8 zeroext 1, i8 zeroext 1, i32 0, i8 zeroext 1, i8 zeroext 1) #8, !dbg !4042
  store { i64, i32 } %call40, { i64, i32 }* %tmp41, align 8, !dbg !4042
  %28 = bitcast { i64, i32 }* %tmp41 to i8*, !dbg !4042
  %29 = bitcast %struct.input_domain* %retval to i8*, !dbg !4042
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %29, i8* nonnull align 8 %28, i64 12, i1 false), !dbg !4042
  br label %return, !dbg !4043

return:                                           ; preds = %sw.default, %sw.bb37, %sw.bb34, %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %.pre-phi = phi i8* [ %29, %sw.default ], [ %27, %sw.bb37 ], [ %25, %sw.bb34 ], [ %23, %sw.bb31 ], [ %21, %sw.bb28 ], [ %19, %sw.bb25 ], [ %17, %sw.bb22 ], [ %15, %sw.bb19 ], [ %13, %sw.bb16 ], [ %11, %sw.bb13 ], [ %9, %sw.bb10 ], [ %7, %sw.bb7 ], [ %5, %sw.bb4 ], [ %3, %sw.bb1 ], [ %1, %sw.bb ], !dbg !4044
  %30 = bitcast { i64, i32 }* %tmp42 to i8*, !dbg !4044
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %30, i8* nonnull align 4 %.pre-phi, i64 12, i1 false), !dbg !4044
  %31 = load { i64, i32 }, { i64, i32 }* %tmp42, align 8, !dbg !4044
  ret { i64, i32 } %31, !dbg !4044
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gen_conditions_for_domain(%union.tree_node* %arg, i64 %domain.coerce0, i32 %domain.coerce1, %struct.VEC_gimple_heap* %conds, i32* %nconds) unnamed_addr #5 !dbg !4045 {
entry:
  %domain = alloca %struct.input_domain, align 4
  %coerce = alloca { i64, i32 }, align 8
  %0 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i64 0, i32 0
  store i64 %domain.coerce0, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i64 0, i32 1
  store i32 %domain.coerce1, i32* %1, align 8
  %2 = bitcast %struct.input_domain* %domain to i8*
  %3 = bitcast { i64, i32 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %2, i8* nonnull align 8 %3, i64 12, i1 false)
  call void @llvm.dbg.value(metadata %union.tree_node* %arg, metadata !4049, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %conds, metadata !4051, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i32* %nconds, metadata !4052, metadata !DIExpression()), !dbg !4053
  %has_lb = getelementptr inbounds %struct.input_domain, %struct.input_domain* %domain, i64 0, i32 2, !dbg !4054
  %4 = load i8, i8* %has_lb, align 4, !dbg !4054
  %tobool = icmp eq i8 %4, 0, !dbg !4056
  br i1 %tobool, label %if.end, label %if.then, !dbg !4057

if.then:                                          ; preds = %entry
  %lb = getelementptr inbounds %struct.input_domain, %struct.input_domain* %domain, i64 0, i32 0, !dbg !4058
  %5 = load i32, i32* %lb, align 4, !dbg !4058
  %is_lb_inclusive = getelementptr inbounds %struct.input_domain, %struct.input_domain* %domain, i64 0, i32 4, !dbg !4059
  %6 = load i8, i8* %is_lb_inclusive, align 2, !dbg !4059
  %tobool1 = icmp eq i8 %6, 0, !dbg !4060
  %cond = select i1 %tobool1, i32 98, i32 97, !dbg !4060
  tail call fastcc void @gen_one_condition(%union.tree_node* %arg, i32 %5, i32 %cond, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), %struct.VEC_gimple_heap* %conds, i32* %nconds) #8, !dbg !4061
  br label %if.end, !dbg !4061

if.end:                                           ; preds = %entry, %if.then
  %has_ub = getelementptr inbounds %struct.input_domain, %struct.input_domain* %domain, i64 0, i32 3, !dbg !4062
  %7 = load i8, i8* %has_ub, align 1, !dbg !4062
  %tobool2 = icmp eq i8 %7, 0, !dbg !4064
  br i1 %tobool2, label %if.end13, label %if.then3, !dbg !4065

if.then3:                                         ; preds = %if.end
  br i1 %tobool, label %if.end9, label %if.then6, !dbg !4066

if.then6:                                         ; preds = %if.then3
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %conds, i64 0, i32 0, !dbg !4068
  %call = tail call fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %base, %union.gimple_statement_d* null) #8, !dbg !4068
  br label %if.end9, !dbg !4068

if.end9:                                          ; preds = %if.then3, %if.then6
  %ub = getelementptr inbounds %struct.input_domain, %struct.input_domain* %domain, i64 0, i32 1, !dbg !4070
  %8 = load i32, i32* %ub, align 4, !dbg !4070
  %is_ub_inclusive = getelementptr inbounds %struct.input_domain, %struct.input_domain* %domain, i64 0, i32 5, !dbg !4071
  %9 = load i8, i8* %is_ub_inclusive, align 1, !dbg !4071
  %tobool11 = icmp eq i8 %9, 0, !dbg !4072
  %cond12 = select i1 %tobool11, i32 100, i32 99, !dbg !4072
  tail call fastcc void @gen_one_condition(%union.tree_node* %arg, i32 %8, i32 %cond12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), %struct.VEC_gimple_heap* %conds, i32* %nconds) #8, !dbg !4073
  br label %if.end13, !dbg !4074

if.end13:                                         ; preds = %if.end, %if.end9
  ret void, !dbg !4075
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gen_conditions_for_pow_cst_base(%union.tree_node* %base, %union.tree_node* %expn, %struct.VEC_gimple_heap* %conds, i32* %nconds) unnamed_addr #5 !dbg !4076 {
entry:
  %exp_domain = alloca %struct.input_domain, align 4
  %mv = alloca %struct.real_value, align 8
  %bcv = alloca %struct.real_value, align 8
  %tmp = alloca %struct.input_domain, align 4
  %tmp23 = alloca { i64, i32 }, align 8
  %exp_domain.coerce = alloca { i64, i32 }, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %base, metadata !4080, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata %union.tree_node* %expn, metadata !4081, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %conds, metadata !4082, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32* %nconds, metadata !4083, metadata !DIExpression()), !dbg !4087
  %0 = bitcast %struct.input_domain* %exp_domain to i8*, !dbg !4088
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #7, !dbg !4088
  %1 = bitcast %struct.real_value* %mv to i8*, !dbg !4089
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !4089
  %2 = bitcast %struct.real_value* %bcv to i8*, !dbg !4090
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #7, !dbg !4090
  %real_cst_ptr = getelementptr inbounds %union.tree_node, %union.tree_node* %base, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4091
  %3 = bitcast i32* %real_cst_ptr to i8**, !dbg !4091
  %4 = load i8*, i8** %3, align 8, !dbg !4091
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* align 8 %4, i64 32, i1 false), !dbg !4091
  call void @llvm.dbg.value(metadata %struct.real_value* %bcv, metadata !4086, metadata !DIExpression(DW_OP_deref)), !dbg !4087
  %call = call zeroext i8 @real_compare(i32 101, %struct.real_value* nonnull %bcv, %struct.real_value* nonnull @dconst1) #6, !dbg !4092
  %tobool = icmp eq i8 %call, 0, !dbg !4092
  br i1 %tobool, label %land.lhs.true, label %cond.true, !dbg !4092

land.lhs.true:                                    ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.real_value* %bcv, metadata !4086, metadata !DIExpression(DW_OP_deref)), !dbg !4087
  %call1 = call zeroext i8 @real_compare(i32 97, %struct.real_value* nonnull %bcv, %struct.real_value* nonnull @dconst1) #6, !dbg !4092
  %tobool2 = icmp eq i8 %call1, 0, !dbg !4092
  br i1 %tobool2, label %cond.end, label %cond.true, !dbg !4092

cond.true:                                        ; preds = %land.lhs.true, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 429, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4092
  br label %cond.end, !dbg !4092

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %base, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4093
  %5 = bitcast %union.tree_node** %type to i64**, !dbg !4093
  %6 = load i64*, i64** %5, align 8, !dbg !4093
  %bf.load = load i64, i64* %6, align 8, !dbg !4093
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4093
  %cmp = icmp eq i64 %bf.cast1, 14, !dbg !4093
  br i1 %cmp, label %cond.true4, label %cond.false8, !dbg !4093

cond.true4:                                       ; preds = %cond.end
  %.cast = bitcast i64* %6 to %union.tree_node*, !dbg !4093
  %call7 = call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !4093
  br label %cond.end14, !dbg !4093

cond.false8:                                      ; preds = %cond.end
  %type11 = bitcast i64* %6 to %struct.tree_type*, !dbg !4093
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type11, i64 0, i32 6, !dbg !4093
  %bf.load12 = load i32, i32* %mode, align 4, !dbg !4093
  %bf.lshr = lshr i32 %bf.load12, 16, !dbg !4093
  %bf.clear13 = and i32 %bf.lshr, 255, !dbg !4093
  br label %cond.end14, !dbg !4093

cond.end14:                                       ; preds = %cond.false8, %cond.true4
  %cond15 = phi i32 [ %call7, %cond.true4 ], [ %bf.clear13, %cond.false8 ], !dbg !4093
  call void @llvm.dbg.value(metadata %struct.real_value* %mv, metadata !4085, metadata !DIExpression(DW_OP_deref)), !dbg !4087
  call void @real_from_integer(%struct.real_value* nonnull %mv, i32 %cond15, i64 256, i64 0, i32 1) #6, !dbg !4094
  call void @llvm.dbg.value(metadata %struct.real_value* %mv, metadata !4085, metadata !DIExpression(DW_OP_deref)), !dbg !4087
  call void @llvm.dbg.value(metadata %struct.real_value* %bcv, metadata !4086, metadata !DIExpression(DW_OP_deref)), !dbg !4087
  %call16 = call zeroext i8 @real_compare(i32 97, %struct.real_value* nonnull %mv, %struct.real_value* nonnull %bcv) #6, !dbg !4095
  %tobool17 = icmp eq i8 %call16, 0, !dbg !4095
  br i1 %tobool17, label %cond.end20, label %cond.true18, !dbg !4095

cond.true18:                                      ; preds = %cond.end14
  call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 431, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4095
  br label %cond.end20, !dbg !4095

cond.end20:                                       ; preds = %cond.end14, %cond.true18
  %7 = bitcast %struct.input_domain* %tmp to i8*, !dbg !4096
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %7) #7, !dbg !4096
  %call22 = call fastcc { i64, i32 } @get_domain(i32 0, i8 zeroext 0, i8 zeroext 0, i32 127, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4096
  store { i64, i32 } %call22, { i64, i32 }* %tmp23, align 8, !dbg !4096
  %8 = bitcast { i64, i32 }* %tmp23 to i8*, !dbg !4096
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %7, i8* nonnull align 8 %8, i64 12, i1 false), !dbg !4096
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %0, i8* nonnull align 4 %7, i64 12, i1 false), !dbg !4096
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %7) #7, !dbg !4096
  %9 = bitcast { i64, i32 }* %exp_domain.coerce to i8*, !dbg !4097
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 4 %0, i64 12, i1 false), !dbg !4097
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %exp_domain.coerce, i64 0, i32 0, !dbg !4097
  %11 = load i64, i64* %10, align 8, !dbg !4097
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %exp_domain.coerce, i64 0, i32 1, !dbg !4097
  %13 = load i32, i32* %12, align 8, !dbg !4097
  call fastcc void @gen_conditions_for_domain(%union.tree_node* %expn, i64 %11, i32 %13, %struct.VEC_gimple_heap* %conds, i32* %nconds) #8, !dbg !4097
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #7, !dbg !4098
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !4098
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #7, !dbg !4098
  ret void, !dbg !4098
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gen_conditions_for_pow_int_base(%union.tree_node* %base, %union.tree_node* %expn, %struct.VEC_gimple_heap* %conds, i32* %nconds) unnamed_addr #5 !dbg !4099 {
entry:
  %exp_domain = alloca %struct.input_domain, align 4
  %tmp = alloca %struct.input_domain, align 4
  %tmp15 = alloca { i64, i32 }, align 8
  %exp_domain.coerce = alloca { i64, i32 }, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %base, metadata !4101, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata %union.tree_node* %expn, metadata !4102, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %conds, metadata !4103, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i32* %nconds, metadata !4104, metadata !DIExpression()), !dbg !4117
  %0 = bitcast %struct.input_domain* %exp_domain to i8*, !dbg !4118
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #7, !dbg !4118
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %base, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4119
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4119
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %1, align 8, !dbg !4119
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !4105, metadata !DIExpression()), !dbg !4117
  %call = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %2) #8, !dbg !4120
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4106, metadata !DIExpression()), !dbg !4117
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4121
  %3 = bitcast i32* %var to %struct.tree_common**, !dbg !4121
  %4 = load %struct.tree_common*, %struct.tree_common** %3, align 8, !dbg !4121
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %4, i64 0, i32 2, !dbg !4122
  %5 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4122
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !4108, metadata !DIExpression()), !dbg !4117
  %type2 = bitcast %union.tree_node* %5 to %struct.tree_type*, !dbg !4123
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i64 0, i32 6, !dbg !4123
  %bf.load = load i32, i32* %precision, align 4, !dbg !4123
  %bf.clear = and i32 %bf.load, 1023, !dbg !4123
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4114, metadata !DIExpression()), !dbg !4117
  %bf.clear.off = add nsw i32 %bf.clear, -1, !dbg !4124
  %6 = icmp ult i32 %bf.clear.off, 32, !dbg !4124
  br i1 %6, label %cond.end, label %cond.true, !dbg !4124

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 474, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4124
  br label %cond.end, !dbg !4124

cond.end:                                         ; preds = %entry, %cond.true
  switch i32 %bf.clear, label %cond.true9 [
    i32 8, label %if.end13
    i32 16, label %if.end
    i32 32, label %cond.end11
  ], !dbg !4125

cond.true9:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 486, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4126
  br label %cond.end11, !dbg !4126

cond.end11:                                       ; preds = %cond.end, %cond.true9
  call void @llvm.dbg.value(metadata i32 32, metadata !4115, metadata !DIExpression()), !dbg !4117
  br label %if.end

if.end:                                           ; preds = %cond.end, %cond.end11
  %max_exp.0 = phi i32 [ 32, %cond.end11 ], [ 64, %cond.end ], !dbg !4130
  call void @llvm.dbg.value(metadata i32 %max_exp.0, metadata !4115, metadata !DIExpression()), !dbg !4117
  br label %if.end13

if.end13:                                         ; preds = %cond.end, %if.end
  %max_exp.1 = phi i32 [ %max_exp.0, %if.end ], [ 128, %cond.end ], !dbg !4131
  call void @llvm.dbg.value(metadata i32 %max_exp.1, metadata !4115, metadata !DIExpression()), !dbg !4117
  %7 = bitcast %struct.input_domain* %tmp to i8*, !dbg !4132
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %7) #7, !dbg !4132
  %call14 = tail call fastcc { i64, i32 } @get_domain(i32 0, i8 zeroext 0, i8 zeroext 0, i32 %max_exp.1, i8 zeroext 1, i8 zeroext 1) #8, !dbg !4132
  store { i64, i32 } %call14, { i64, i32 }* %tmp15, align 8, !dbg !4132
  %8 = bitcast { i64, i32 }* %tmp15 to i8*, !dbg !4132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %7, i8* nonnull align 8 %8, i64 12, i1 false), !dbg !4132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %0, i8* nonnull align 4 %7, i64 12, i1 false), !dbg !4132
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %7) #7, !dbg !4132
  %9 = bitcast { i64, i32 }* %exp_domain.coerce to i8*, !dbg !4133
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 4 %0, i64 12, i1 false), !dbg !4133
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %exp_domain.coerce, i64 0, i32 0, !dbg !4133
  %11 = load i64, i64* %10, align 8, !dbg !4133
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %exp_domain.coerce, i64 0, i32 1, !dbg !4133
  %13 = load i32, i32* %12, align 8, !dbg !4133
  tail call fastcc void @gen_conditions_for_domain(%union.tree_node* %expn, i64 %11, i32 %13, %struct.VEC_gimple_heap* %conds, i32* %nconds) #8, !dbg !4133
  %base17 = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %conds, i64 0, i32 0, !dbg !4134
  %call21 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %base17, %union.gimple_statement_d* null) #8, !dbg !4134
  %call22 = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !4135
  call void @llvm.dbg.value(metadata %union.tree_node* %call22, metadata !4109, metadata !DIExpression()), !dbg !4117
  %call23 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %5, i64 0) #6, !dbg !4136
  call void @llvm.dbg.value(metadata %union.tree_node* %call23, metadata !4111, metadata !DIExpression()), !dbg !4117
  %call24 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call22, %union.tree_node* %call) #6, !dbg !4137
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call24, metadata !4112, metadata !DIExpression()), !dbg !4117
  %call25 = tail call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call22, %union.gimple_statement_d* %call24) #8, !dbg !4138
  call void @llvm.dbg.value(metadata %union.tree_node* %call25, metadata !4110, metadata !DIExpression()), !dbg !4117
  tail call fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %call24, %union.tree_node* %call25) #8, !dbg !4139
  %call26 = tail call %union.gimple_statement_d* @gimple_build_cond(i32 98, %union.tree_node* %call25, %union.tree_node* %call23, %union.tree_node* null, %union.tree_node* null) #6, !dbg !4140
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call26, metadata !4113, metadata !DIExpression()), !dbg !4117
  %call33 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %base17, %union.gimple_statement_d* %call24) #8, !dbg !4141
  %call40 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %base17, %union.gimple_statement_d* %call26) #8, !dbg !4142
  %14 = load i32, i32* %nconds, align 4, !dbg !4143
  %inc = add i32 %14, 1, !dbg !4143
  store i32 %inc, i32* %nconds, align 4, !dbg !4143
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #7, !dbg !4144
  ret void, !dbg !4144
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i32 } @get_domain(i32 %lb, i8 zeroext %has_lb, i8 zeroext %lb_inclusive, i32 %ub, i8 zeroext %has_ub, i8 zeroext %ub_inclusive) unnamed_addr #5 !dbg !4145 {
entry:
  %retval = alloca %struct.input_domain, align 4
  %tmp = alloca { i64, i32 }, align 8
  call void @llvm.dbg.value(metadata i32 %lb, metadata !4149, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i8 %has_lb, metadata !4150, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i8 %lb_inclusive, metadata !4151, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i32 %ub, metadata !4152, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i8 %has_ub, metadata !4153, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i8 %ub_inclusive, metadata !4154, metadata !DIExpression()), !dbg !4156
  %lb1 = getelementptr inbounds %struct.input_domain, %struct.input_domain* %retval, i64 0, i32 0, !dbg !4157
  store i32 %lb, i32* %lb1, align 4, !dbg !4158
  %has_lb2 = getelementptr inbounds %struct.input_domain, %struct.input_domain* %retval, i64 0, i32 2, !dbg !4159
  store i8 %has_lb, i8* %has_lb2, align 4, !dbg !4160
  %is_lb_inclusive = getelementptr inbounds %struct.input_domain, %struct.input_domain* %retval, i64 0, i32 4, !dbg !4161
  store i8 %lb_inclusive, i8* %is_lb_inclusive, align 2, !dbg !4162
  %ub3 = getelementptr inbounds %struct.input_domain, %struct.input_domain* %retval, i64 0, i32 1, !dbg !4163
  store i32 %ub, i32* %ub3, align 4, !dbg !4164
  %has_ub4 = getelementptr inbounds %struct.input_domain, %struct.input_domain* %retval, i64 0, i32 3, !dbg !4165
  store i8 %has_ub, i8* %has_ub4, align 1, !dbg !4166
  %is_ub_inclusive = getelementptr inbounds %struct.input_domain, %struct.input_domain* %retval, i64 0, i32 5, !dbg !4167
  store i8 %ub_inclusive, i8* %is_ub_inclusive, align 1, !dbg !4168
  %0 = bitcast { i64, i32 }* %tmp to i8*, !dbg !4169
  %1 = bitcast %struct.input_domain* %retval to i8*, !dbg !4169
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 4 %1, i64 12, i1 false), !dbg !4169
  %2 = load { i64, i32 }, { i64, i32 }* %tmp, align 8, !dbg !4169
  ret { i64, i32 } %2, !dbg !4169
}

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4170 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4174, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4175, metadata !DIExpression()), !dbg !4176
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4177
  %call = tail call %union.tree_node* @make_ssa_name_fn(%struct.function* %0, %union.tree_node* %var, %union.gimple_statement_d* %stmt) #6, !dbg !4178
  ret %union.tree_node* %call, !dbg !4179
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !4180 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4184, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !4185, metadata !DIExpression()), !dbg !4186
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #8, !dbg !4187
  %tobool = icmp eq %union.tree_node* %lhs, null, !dbg !4188
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4190

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4191
  %bf.load = load i64, i64* %0, align 8, !dbg !4191
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4192
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4192
  br i1 %cmp, label %if.then, label %if.end, !dbg !4193

if.then:                                          ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4194
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4194
  store %union.gimple_statement_d* %gs, %union.gimple_statement_d** %1, align 8, !dbg !4195
  br label %if.end, !dbg !4194

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !4196
}

declare dso_local %union.gimple_statement_d* @gimple_build_cond(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @make_ssa_name_fn(%struct.function*, %union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !4197 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4201, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 0, metadata !4202, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !4203, metadata !DIExpression()), !dbg !4204
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !4205
  %tobool = icmp eq i8 %call, 0, !dbg !4205
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !4205

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !4205
  %cmp = icmp eq i32 %call1, 0, !dbg !4205
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4205

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4205
  br label %cond.end, !dbg !4205

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !4206
  store %union.tree_node* %op, %union.tree_node** %call3, align 8, !dbg !4207
  ret void, !dbg !4208
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gen_one_condition(%union.tree_node* %arg, i32 %lbub, i32 %tcode, i8* %temp_name1, i8* %temp_name2, %struct.VEC_gimple_heap* %conds, i32* %nconds) unnamed_addr #5 !dbg !4209 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %arg, metadata !4213, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i32 %lbub, metadata !4214, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i32 %tcode, metadata !4215, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i8* %temp_name1, metadata !4216, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i8* %temp_name2, metadata !4217, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %conds, metadata !4218, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i32* %nconds, metadata !4219, metadata !DIExpression()), !dbg !4230
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %arg, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4231
  %0 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4231
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4222, metadata !DIExpression()), !dbg !4230
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !4232
  %conv = sext i32 %lbub to i64, !dbg !4233
  %call = tail call %union.tree_node* @build_int_cst(%union.tree_node* %1, i64 %conv) #6, !dbg !4234
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4221, metadata !DIExpression()), !dbg !4230
  %call1 = tail call %union.tree_node* @build_real_from_int_cst(%union.tree_node* %0, %union.tree_node* %call) #6, !dbg !4235
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !4220, metadata !DIExpression()), !dbg !4230
  %call2 = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %0, i8* %temp_name1) #6, !dbg !4236
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !4223, metadata !DIExpression()), !dbg !4230
  %call3 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call2, %union.tree_node* %arg) #6, !dbg !4237
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call3, metadata !4227, metadata !DIExpression()), !dbg !4230
  %call4 = tail call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call2, %union.gimple_statement_d* %call3) #8, !dbg !4238
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !4224, metadata !DIExpression()), !dbg !4230
  tail call fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %call3, %union.tree_node* %call4) #8, !dbg !4239
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !4240
  %call5 = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %2, i8* %temp_name2) #6, !dbg !4241
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !4225, metadata !DIExpression()), !dbg !4230
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !4242
  %call6 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 %tcode, %union.tree_node* %3, %union.tree_node* %call4, %union.tree_node* %call1) #6, !dbg !4242
  %call7 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call5, %union.tree_node* %call6) #6, !dbg !4242
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call7, metadata !4228, metadata !DIExpression()), !dbg !4230
  %call8 = tail call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call5, %union.gimple_statement_d* %call7) #8, !dbg !4243
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !4226, metadata !DIExpression()), !dbg !4230
  tail call fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %call7, %union.tree_node* %call8) #8, !dbg !4244
  %call9 = tail call %union.gimple_statement_d* @gimple_build_cond_from_tree(%union.tree_node* %call8, %union.tree_node* null, %union.tree_node* null) #6, !dbg !4245
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call9, metadata !4229, metadata !DIExpression()), !dbg !4230
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %conds, i64 0, i32 0, !dbg !4246
  %call10 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %base, %union.gimple_statement_d* %call3) #8, !dbg !4246
  %call17 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %base, %union.gimple_statement_d* %call7) #8, !dbg !4247
  %call24 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %base, %union.gimple_statement_d* %call9) #8, !dbg !4248
  %4 = load i32, i32* %nconds, align 4, !dbg !4249
  %inc = add i32 %4, 1, !dbg !4249
  store i32 %inc, i32* %nconds, align 4, !dbg !4249
  ret void, !dbg !4250
}

declare dso_local %union.tree_node* @build_real_from_int_cst(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_cond_from_tree(%union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

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
!llvm.module.flags = !{!2712, !2713, !2714}
!llvm.ident = !{!2715}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_call_cdce", scope: !2, file: !3, line: 930, type: !2686, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1373, globals: !2685, nameTableKind: None)
!3 = !DIFile(filename: "tree-call-cdce.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !599, !1319, !1345, !1367}
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
!599 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "built_in_function", file: !334, line: 220, baseType: !7, size: 32, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318}
!601 = !DIEnumerator(name: "BUILT_IN_ACOS", value: 0, isUnsigned: true)
!602 = !DIEnumerator(name: "BUILT_IN_ACOSF", value: 1, isUnsigned: true)
!603 = !DIEnumerator(name: "BUILT_IN_ACOSH", value: 2, isUnsigned: true)
!604 = !DIEnumerator(name: "BUILT_IN_ACOSHF", value: 3, isUnsigned: true)
!605 = !DIEnumerator(name: "BUILT_IN_ACOSHL", value: 4, isUnsigned: true)
!606 = !DIEnumerator(name: "BUILT_IN_ACOSL", value: 5, isUnsigned: true)
!607 = !DIEnumerator(name: "BUILT_IN_ASIN", value: 6, isUnsigned: true)
!608 = !DIEnumerator(name: "BUILT_IN_ASINF", value: 7, isUnsigned: true)
!609 = !DIEnumerator(name: "BUILT_IN_ASINH", value: 8, isUnsigned: true)
!610 = !DIEnumerator(name: "BUILT_IN_ASINHF", value: 9, isUnsigned: true)
!611 = !DIEnumerator(name: "BUILT_IN_ASINHL", value: 10, isUnsigned: true)
!612 = !DIEnumerator(name: "BUILT_IN_ASINL", value: 11, isUnsigned: true)
!613 = !DIEnumerator(name: "BUILT_IN_ATAN", value: 12, isUnsigned: true)
!614 = !DIEnumerator(name: "BUILT_IN_ATAN2", value: 13, isUnsigned: true)
!615 = !DIEnumerator(name: "BUILT_IN_ATAN2F", value: 14, isUnsigned: true)
!616 = !DIEnumerator(name: "BUILT_IN_ATAN2L", value: 15, isUnsigned: true)
!617 = !DIEnumerator(name: "BUILT_IN_ATANF", value: 16, isUnsigned: true)
!618 = !DIEnumerator(name: "BUILT_IN_ATANH", value: 17, isUnsigned: true)
!619 = !DIEnumerator(name: "BUILT_IN_ATANHF", value: 18, isUnsigned: true)
!620 = !DIEnumerator(name: "BUILT_IN_ATANHL", value: 19, isUnsigned: true)
!621 = !DIEnumerator(name: "BUILT_IN_ATANL", value: 20, isUnsigned: true)
!622 = !DIEnumerator(name: "BUILT_IN_CBRT", value: 21, isUnsigned: true)
!623 = !DIEnumerator(name: "BUILT_IN_CBRTF", value: 22, isUnsigned: true)
!624 = !DIEnumerator(name: "BUILT_IN_CBRTL", value: 23, isUnsigned: true)
!625 = !DIEnumerator(name: "BUILT_IN_CEIL", value: 24, isUnsigned: true)
!626 = !DIEnumerator(name: "BUILT_IN_CEILF", value: 25, isUnsigned: true)
!627 = !DIEnumerator(name: "BUILT_IN_CEILL", value: 26, isUnsigned: true)
!628 = !DIEnumerator(name: "BUILT_IN_COPYSIGN", value: 27, isUnsigned: true)
!629 = !DIEnumerator(name: "BUILT_IN_COPYSIGNF", value: 28, isUnsigned: true)
!630 = !DIEnumerator(name: "BUILT_IN_COPYSIGNL", value: 29, isUnsigned: true)
!631 = !DIEnumerator(name: "BUILT_IN_COS", value: 30, isUnsigned: true)
!632 = !DIEnumerator(name: "BUILT_IN_COSF", value: 31, isUnsigned: true)
!633 = !DIEnumerator(name: "BUILT_IN_COSH", value: 32, isUnsigned: true)
!634 = !DIEnumerator(name: "BUILT_IN_COSHF", value: 33, isUnsigned: true)
!635 = !DIEnumerator(name: "BUILT_IN_COSHL", value: 34, isUnsigned: true)
!636 = !DIEnumerator(name: "BUILT_IN_COSL", value: 35, isUnsigned: true)
!637 = !DIEnumerator(name: "BUILT_IN_DREM", value: 36, isUnsigned: true)
!638 = !DIEnumerator(name: "BUILT_IN_DREMF", value: 37, isUnsigned: true)
!639 = !DIEnumerator(name: "BUILT_IN_DREML", value: 38, isUnsigned: true)
!640 = !DIEnumerator(name: "BUILT_IN_ERF", value: 39, isUnsigned: true)
!641 = !DIEnumerator(name: "BUILT_IN_ERFC", value: 40, isUnsigned: true)
!642 = !DIEnumerator(name: "BUILT_IN_ERFCF", value: 41, isUnsigned: true)
!643 = !DIEnumerator(name: "BUILT_IN_ERFCL", value: 42, isUnsigned: true)
!644 = !DIEnumerator(name: "BUILT_IN_ERFF", value: 43, isUnsigned: true)
!645 = !DIEnumerator(name: "BUILT_IN_ERFL", value: 44, isUnsigned: true)
!646 = !DIEnumerator(name: "BUILT_IN_EXP", value: 45, isUnsigned: true)
!647 = !DIEnumerator(name: "BUILT_IN_EXP10", value: 46, isUnsigned: true)
!648 = !DIEnumerator(name: "BUILT_IN_EXP10F", value: 47, isUnsigned: true)
!649 = !DIEnumerator(name: "BUILT_IN_EXP10L", value: 48, isUnsigned: true)
!650 = !DIEnumerator(name: "BUILT_IN_EXP2", value: 49, isUnsigned: true)
!651 = !DIEnumerator(name: "BUILT_IN_EXP2F", value: 50, isUnsigned: true)
!652 = !DIEnumerator(name: "BUILT_IN_EXP2L", value: 51, isUnsigned: true)
!653 = !DIEnumerator(name: "BUILT_IN_EXPF", value: 52, isUnsigned: true)
!654 = !DIEnumerator(name: "BUILT_IN_EXPL", value: 53, isUnsigned: true)
!655 = !DIEnumerator(name: "BUILT_IN_EXPM1", value: 54, isUnsigned: true)
!656 = !DIEnumerator(name: "BUILT_IN_EXPM1F", value: 55, isUnsigned: true)
!657 = !DIEnumerator(name: "BUILT_IN_EXPM1L", value: 56, isUnsigned: true)
!658 = !DIEnumerator(name: "BUILT_IN_FABS", value: 57, isUnsigned: true)
!659 = !DIEnumerator(name: "BUILT_IN_FABSF", value: 58, isUnsigned: true)
!660 = !DIEnumerator(name: "BUILT_IN_FABSL", value: 59, isUnsigned: true)
!661 = !DIEnumerator(name: "BUILT_IN_FDIM", value: 60, isUnsigned: true)
!662 = !DIEnumerator(name: "BUILT_IN_FDIMF", value: 61, isUnsigned: true)
!663 = !DIEnumerator(name: "BUILT_IN_FDIML", value: 62, isUnsigned: true)
!664 = !DIEnumerator(name: "BUILT_IN_FLOOR", value: 63, isUnsigned: true)
!665 = !DIEnumerator(name: "BUILT_IN_FLOORF", value: 64, isUnsigned: true)
!666 = !DIEnumerator(name: "BUILT_IN_FLOORL", value: 65, isUnsigned: true)
!667 = !DIEnumerator(name: "BUILT_IN_FMA", value: 66, isUnsigned: true)
!668 = !DIEnumerator(name: "BUILT_IN_FMAF", value: 67, isUnsigned: true)
!669 = !DIEnumerator(name: "BUILT_IN_FMAL", value: 68, isUnsigned: true)
!670 = !DIEnumerator(name: "BUILT_IN_FMAX", value: 69, isUnsigned: true)
!671 = !DIEnumerator(name: "BUILT_IN_FMAXF", value: 70, isUnsigned: true)
!672 = !DIEnumerator(name: "BUILT_IN_FMAXL", value: 71, isUnsigned: true)
!673 = !DIEnumerator(name: "BUILT_IN_FMIN", value: 72, isUnsigned: true)
!674 = !DIEnumerator(name: "BUILT_IN_FMINF", value: 73, isUnsigned: true)
!675 = !DIEnumerator(name: "BUILT_IN_FMINL", value: 74, isUnsigned: true)
!676 = !DIEnumerator(name: "BUILT_IN_FMOD", value: 75, isUnsigned: true)
!677 = !DIEnumerator(name: "BUILT_IN_FMODF", value: 76, isUnsigned: true)
!678 = !DIEnumerator(name: "BUILT_IN_FMODL", value: 77, isUnsigned: true)
!679 = !DIEnumerator(name: "BUILT_IN_FREXP", value: 78, isUnsigned: true)
!680 = !DIEnumerator(name: "BUILT_IN_FREXPF", value: 79, isUnsigned: true)
!681 = !DIEnumerator(name: "BUILT_IN_FREXPL", value: 80, isUnsigned: true)
!682 = !DIEnumerator(name: "BUILT_IN_GAMMA", value: 81, isUnsigned: true)
!683 = !DIEnumerator(name: "BUILT_IN_GAMMAF", value: 82, isUnsigned: true)
!684 = !DIEnumerator(name: "BUILT_IN_GAMMAL", value: 83, isUnsigned: true)
!685 = !DIEnumerator(name: "BUILT_IN_GAMMA_R", value: 84, isUnsigned: true)
!686 = !DIEnumerator(name: "BUILT_IN_GAMMAF_R", value: 85, isUnsigned: true)
!687 = !DIEnumerator(name: "BUILT_IN_GAMMAL_R", value: 86, isUnsigned: true)
!688 = !DIEnumerator(name: "BUILT_IN_HUGE_VAL", value: 87, isUnsigned: true)
!689 = !DIEnumerator(name: "BUILT_IN_HUGE_VALF", value: 88, isUnsigned: true)
!690 = !DIEnumerator(name: "BUILT_IN_HUGE_VALL", value: 89, isUnsigned: true)
!691 = !DIEnumerator(name: "BUILT_IN_HYPOT", value: 90, isUnsigned: true)
!692 = !DIEnumerator(name: "BUILT_IN_HYPOTF", value: 91, isUnsigned: true)
!693 = !DIEnumerator(name: "BUILT_IN_HYPOTL", value: 92, isUnsigned: true)
!694 = !DIEnumerator(name: "BUILT_IN_ILOGB", value: 93, isUnsigned: true)
!695 = !DIEnumerator(name: "BUILT_IN_ILOGBF", value: 94, isUnsigned: true)
!696 = !DIEnumerator(name: "BUILT_IN_ILOGBL", value: 95, isUnsigned: true)
!697 = !DIEnumerator(name: "BUILT_IN_INF", value: 96, isUnsigned: true)
!698 = !DIEnumerator(name: "BUILT_IN_INFF", value: 97, isUnsigned: true)
!699 = !DIEnumerator(name: "BUILT_IN_INFL", value: 98, isUnsigned: true)
!700 = !DIEnumerator(name: "BUILT_IN_INFD32", value: 99, isUnsigned: true)
!701 = !DIEnumerator(name: "BUILT_IN_INFD64", value: 100, isUnsigned: true)
!702 = !DIEnumerator(name: "BUILT_IN_INFD128", value: 101, isUnsigned: true)
!703 = !DIEnumerator(name: "BUILT_IN_J0", value: 102, isUnsigned: true)
!704 = !DIEnumerator(name: "BUILT_IN_J0F", value: 103, isUnsigned: true)
!705 = !DIEnumerator(name: "BUILT_IN_J0L", value: 104, isUnsigned: true)
!706 = !DIEnumerator(name: "BUILT_IN_J1", value: 105, isUnsigned: true)
!707 = !DIEnumerator(name: "BUILT_IN_J1F", value: 106, isUnsigned: true)
!708 = !DIEnumerator(name: "BUILT_IN_J1L", value: 107, isUnsigned: true)
!709 = !DIEnumerator(name: "BUILT_IN_JN", value: 108, isUnsigned: true)
!710 = !DIEnumerator(name: "BUILT_IN_JNF", value: 109, isUnsigned: true)
!711 = !DIEnumerator(name: "BUILT_IN_JNL", value: 110, isUnsigned: true)
!712 = !DIEnumerator(name: "BUILT_IN_LCEIL", value: 111, isUnsigned: true)
!713 = !DIEnumerator(name: "BUILT_IN_LCEILF", value: 112, isUnsigned: true)
!714 = !DIEnumerator(name: "BUILT_IN_LCEILL", value: 113, isUnsigned: true)
!715 = !DIEnumerator(name: "BUILT_IN_LDEXP", value: 114, isUnsigned: true)
!716 = !DIEnumerator(name: "BUILT_IN_LDEXPF", value: 115, isUnsigned: true)
!717 = !DIEnumerator(name: "BUILT_IN_LDEXPL", value: 116, isUnsigned: true)
!718 = !DIEnumerator(name: "BUILT_IN_LFLOOR", value: 117, isUnsigned: true)
!719 = !DIEnumerator(name: "BUILT_IN_LFLOORF", value: 118, isUnsigned: true)
!720 = !DIEnumerator(name: "BUILT_IN_LFLOORL", value: 119, isUnsigned: true)
!721 = !DIEnumerator(name: "BUILT_IN_LGAMMA", value: 120, isUnsigned: true)
!722 = !DIEnumerator(name: "BUILT_IN_LGAMMAF", value: 121, isUnsigned: true)
!723 = !DIEnumerator(name: "BUILT_IN_LGAMMAL", value: 122, isUnsigned: true)
!724 = !DIEnumerator(name: "BUILT_IN_LGAMMA_R", value: 123, isUnsigned: true)
!725 = !DIEnumerator(name: "BUILT_IN_LGAMMAF_R", value: 124, isUnsigned: true)
!726 = !DIEnumerator(name: "BUILT_IN_LGAMMAL_R", value: 125, isUnsigned: true)
!727 = !DIEnumerator(name: "BUILT_IN_LLCEIL", value: 126, isUnsigned: true)
!728 = !DIEnumerator(name: "BUILT_IN_LLCEILF", value: 127, isUnsigned: true)
!729 = !DIEnumerator(name: "BUILT_IN_LLCEILL", value: 128, isUnsigned: true)
!730 = !DIEnumerator(name: "BUILT_IN_LLFLOOR", value: 129, isUnsigned: true)
!731 = !DIEnumerator(name: "BUILT_IN_LLFLOORF", value: 130, isUnsigned: true)
!732 = !DIEnumerator(name: "BUILT_IN_LLFLOORL", value: 131, isUnsigned: true)
!733 = !DIEnumerator(name: "BUILT_IN_LLRINT", value: 132, isUnsigned: true)
!734 = !DIEnumerator(name: "BUILT_IN_LLRINTF", value: 133, isUnsigned: true)
!735 = !DIEnumerator(name: "BUILT_IN_LLRINTL", value: 134, isUnsigned: true)
!736 = !DIEnumerator(name: "BUILT_IN_LLROUND", value: 135, isUnsigned: true)
!737 = !DIEnumerator(name: "BUILT_IN_LLROUNDF", value: 136, isUnsigned: true)
!738 = !DIEnumerator(name: "BUILT_IN_LLROUNDL", value: 137, isUnsigned: true)
!739 = !DIEnumerator(name: "BUILT_IN_LOG", value: 138, isUnsigned: true)
!740 = !DIEnumerator(name: "BUILT_IN_LOG10", value: 139, isUnsigned: true)
!741 = !DIEnumerator(name: "BUILT_IN_LOG10F", value: 140, isUnsigned: true)
!742 = !DIEnumerator(name: "BUILT_IN_LOG10L", value: 141, isUnsigned: true)
!743 = !DIEnumerator(name: "BUILT_IN_LOG1P", value: 142, isUnsigned: true)
!744 = !DIEnumerator(name: "BUILT_IN_LOG1PF", value: 143, isUnsigned: true)
!745 = !DIEnumerator(name: "BUILT_IN_LOG1PL", value: 144, isUnsigned: true)
!746 = !DIEnumerator(name: "BUILT_IN_LOG2", value: 145, isUnsigned: true)
!747 = !DIEnumerator(name: "BUILT_IN_LOG2F", value: 146, isUnsigned: true)
!748 = !DIEnumerator(name: "BUILT_IN_LOG2L", value: 147, isUnsigned: true)
!749 = !DIEnumerator(name: "BUILT_IN_LOGB", value: 148, isUnsigned: true)
!750 = !DIEnumerator(name: "BUILT_IN_LOGBF", value: 149, isUnsigned: true)
!751 = !DIEnumerator(name: "BUILT_IN_LOGBL", value: 150, isUnsigned: true)
!752 = !DIEnumerator(name: "BUILT_IN_LOGF", value: 151, isUnsigned: true)
!753 = !DIEnumerator(name: "BUILT_IN_LOGL", value: 152, isUnsigned: true)
!754 = !DIEnumerator(name: "BUILT_IN_LRINT", value: 153, isUnsigned: true)
!755 = !DIEnumerator(name: "BUILT_IN_LRINTF", value: 154, isUnsigned: true)
!756 = !DIEnumerator(name: "BUILT_IN_LRINTL", value: 155, isUnsigned: true)
!757 = !DIEnumerator(name: "BUILT_IN_LROUND", value: 156, isUnsigned: true)
!758 = !DIEnumerator(name: "BUILT_IN_LROUNDF", value: 157, isUnsigned: true)
!759 = !DIEnumerator(name: "BUILT_IN_LROUNDL", value: 158, isUnsigned: true)
!760 = !DIEnumerator(name: "BUILT_IN_MODF", value: 159, isUnsigned: true)
!761 = !DIEnumerator(name: "BUILT_IN_MODFF", value: 160, isUnsigned: true)
!762 = !DIEnumerator(name: "BUILT_IN_MODFL", value: 161, isUnsigned: true)
!763 = !DIEnumerator(name: "BUILT_IN_NAN", value: 162, isUnsigned: true)
!764 = !DIEnumerator(name: "BUILT_IN_NANF", value: 163, isUnsigned: true)
!765 = !DIEnumerator(name: "BUILT_IN_NANL", value: 164, isUnsigned: true)
!766 = !DIEnumerator(name: "BUILT_IN_NAND32", value: 165, isUnsigned: true)
!767 = !DIEnumerator(name: "BUILT_IN_NAND64", value: 166, isUnsigned: true)
!768 = !DIEnumerator(name: "BUILT_IN_NAND128", value: 167, isUnsigned: true)
!769 = !DIEnumerator(name: "BUILT_IN_NANS", value: 168, isUnsigned: true)
!770 = !DIEnumerator(name: "BUILT_IN_NANSF", value: 169, isUnsigned: true)
!771 = !DIEnumerator(name: "BUILT_IN_NANSL", value: 170, isUnsigned: true)
!772 = !DIEnumerator(name: "BUILT_IN_NEARBYINT", value: 171, isUnsigned: true)
!773 = !DIEnumerator(name: "BUILT_IN_NEARBYINTF", value: 172, isUnsigned: true)
!774 = !DIEnumerator(name: "BUILT_IN_NEARBYINTL", value: 173, isUnsigned: true)
!775 = !DIEnumerator(name: "BUILT_IN_NEXTAFTER", value: 174, isUnsigned: true)
!776 = !DIEnumerator(name: "BUILT_IN_NEXTAFTERF", value: 175, isUnsigned: true)
!777 = !DIEnumerator(name: "BUILT_IN_NEXTAFTERL", value: 176, isUnsigned: true)
!778 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARD", value: 177, isUnsigned: true)
!779 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARDF", value: 178, isUnsigned: true)
!780 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARDL", value: 179, isUnsigned: true)
!781 = !DIEnumerator(name: "BUILT_IN_POW", value: 180, isUnsigned: true)
!782 = !DIEnumerator(name: "BUILT_IN_POW10", value: 181, isUnsigned: true)
!783 = !DIEnumerator(name: "BUILT_IN_POW10F", value: 182, isUnsigned: true)
!784 = !DIEnumerator(name: "BUILT_IN_POW10L", value: 183, isUnsigned: true)
!785 = !DIEnumerator(name: "BUILT_IN_POWF", value: 184, isUnsigned: true)
!786 = !DIEnumerator(name: "BUILT_IN_POWI", value: 185, isUnsigned: true)
!787 = !DIEnumerator(name: "BUILT_IN_POWIF", value: 186, isUnsigned: true)
!788 = !DIEnumerator(name: "BUILT_IN_POWIL", value: 187, isUnsigned: true)
!789 = !DIEnumerator(name: "BUILT_IN_POWL", value: 188, isUnsigned: true)
!790 = !DIEnumerator(name: "BUILT_IN_REMAINDER", value: 189, isUnsigned: true)
!791 = !DIEnumerator(name: "BUILT_IN_REMAINDERF", value: 190, isUnsigned: true)
!792 = !DIEnumerator(name: "BUILT_IN_REMAINDERL", value: 191, isUnsigned: true)
!793 = !DIEnumerator(name: "BUILT_IN_REMQUO", value: 192, isUnsigned: true)
!794 = !DIEnumerator(name: "BUILT_IN_REMQUOF", value: 193, isUnsigned: true)
!795 = !DIEnumerator(name: "BUILT_IN_REMQUOL", value: 194, isUnsigned: true)
!796 = !DIEnumerator(name: "BUILT_IN_RINT", value: 195, isUnsigned: true)
!797 = !DIEnumerator(name: "BUILT_IN_RINTF", value: 196, isUnsigned: true)
!798 = !DIEnumerator(name: "BUILT_IN_RINTL", value: 197, isUnsigned: true)
!799 = !DIEnumerator(name: "BUILT_IN_ROUND", value: 198, isUnsigned: true)
!800 = !DIEnumerator(name: "BUILT_IN_ROUNDF", value: 199, isUnsigned: true)
!801 = !DIEnumerator(name: "BUILT_IN_ROUNDL", value: 200, isUnsigned: true)
!802 = !DIEnumerator(name: "BUILT_IN_SCALB", value: 201, isUnsigned: true)
!803 = !DIEnumerator(name: "BUILT_IN_SCALBF", value: 202, isUnsigned: true)
!804 = !DIEnumerator(name: "BUILT_IN_SCALBL", value: 203, isUnsigned: true)
!805 = !DIEnumerator(name: "BUILT_IN_SCALBLN", value: 204, isUnsigned: true)
!806 = !DIEnumerator(name: "BUILT_IN_SCALBLNF", value: 205, isUnsigned: true)
!807 = !DIEnumerator(name: "BUILT_IN_SCALBLNL", value: 206, isUnsigned: true)
!808 = !DIEnumerator(name: "BUILT_IN_SCALBN", value: 207, isUnsigned: true)
!809 = !DIEnumerator(name: "BUILT_IN_SCALBNF", value: 208, isUnsigned: true)
!810 = !DIEnumerator(name: "BUILT_IN_SCALBNL", value: 209, isUnsigned: true)
!811 = !DIEnumerator(name: "BUILT_IN_SIGNBIT", value: 210, isUnsigned: true)
!812 = !DIEnumerator(name: "BUILT_IN_SIGNBITF", value: 211, isUnsigned: true)
!813 = !DIEnumerator(name: "BUILT_IN_SIGNBITL", value: 212, isUnsigned: true)
!814 = !DIEnumerator(name: "BUILT_IN_SIGNBITD32", value: 213, isUnsigned: true)
!815 = !DIEnumerator(name: "BUILT_IN_SIGNBITD64", value: 214, isUnsigned: true)
!816 = !DIEnumerator(name: "BUILT_IN_SIGNBITD128", value: 215, isUnsigned: true)
!817 = !DIEnumerator(name: "BUILT_IN_SIGNIFICAND", value: 216, isUnsigned: true)
!818 = !DIEnumerator(name: "BUILT_IN_SIGNIFICANDF", value: 217, isUnsigned: true)
!819 = !DIEnumerator(name: "BUILT_IN_SIGNIFICANDL", value: 218, isUnsigned: true)
!820 = !DIEnumerator(name: "BUILT_IN_SIN", value: 219, isUnsigned: true)
!821 = !DIEnumerator(name: "BUILT_IN_SINCOS", value: 220, isUnsigned: true)
!822 = !DIEnumerator(name: "BUILT_IN_SINCOSF", value: 221, isUnsigned: true)
!823 = !DIEnumerator(name: "BUILT_IN_SINCOSL", value: 222, isUnsigned: true)
!824 = !DIEnumerator(name: "BUILT_IN_SINF", value: 223, isUnsigned: true)
!825 = !DIEnumerator(name: "BUILT_IN_SINH", value: 224, isUnsigned: true)
!826 = !DIEnumerator(name: "BUILT_IN_SINHF", value: 225, isUnsigned: true)
!827 = !DIEnumerator(name: "BUILT_IN_SINHL", value: 226, isUnsigned: true)
!828 = !DIEnumerator(name: "BUILT_IN_SINL", value: 227, isUnsigned: true)
!829 = !DIEnumerator(name: "BUILT_IN_SQRT", value: 228, isUnsigned: true)
!830 = !DIEnumerator(name: "BUILT_IN_SQRTF", value: 229, isUnsigned: true)
!831 = !DIEnumerator(name: "BUILT_IN_SQRTL", value: 230, isUnsigned: true)
!832 = !DIEnumerator(name: "BUILT_IN_TAN", value: 231, isUnsigned: true)
!833 = !DIEnumerator(name: "BUILT_IN_TANF", value: 232, isUnsigned: true)
!834 = !DIEnumerator(name: "BUILT_IN_TANH", value: 233, isUnsigned: true)
!835 = !DIEnumerator(name: "BUILT_IN_TANHF", value: 234, isUnsigned: true)
!836 = !DIEnumerator(name: "BUILT_IN_TANHL", value: 235, isUnsigned: true)
!837 = !DIEnumerator(name: "BUILT_IN_TANL", value: 236, isUnsigned: true)
!838 = !DIEnumerator(name: "BUILT_IN_TGAMMA", value: 237, isUnsigned: true)
!839 = !DIEnumerator(name: "BUILT_IN_TGAMMAF", value: 238, isUnsigned: true)
!840 = !DIEnumerator(name: "BUILT_IN_TGAMMAL", value: 239, isUnsigned: true)
!841 = !DIEnumerator(name: "BUILT_IN_TRUNC", value: 240, isUnsigned: true)
!842 = !DIEnumerator(name: "BUILT_IN_TRUNCF", value: 241, isUnsigned: true)
!843 = !DIEnumerator(name: "BUILT_IN_TRUNCL", value: 242, isUnsigned: true)
!844 = !DIEnumerator(name: "BUILT_IN_Y0", value: 243, isUnsigned: true)
!845 = !DIEnumerator(name: "BUILT_IN_Y0F", value: 244, isUnsigned: true)
!846 = !DIEnumerator(name: "BUILT_IN_Y0L", value: 245, isUnsigned: true)
!847 = !DIEnumerator(name: "BUILT_IN_Y1", value: 246, isUnsigned: true)
!848 = !DIEnumerator(name: "BUILT_IN_Y1F", value: 247, isUnsigned: true)
!849 = !DIEnumerator(name: "BUILT_IN_Y1L", value: 248, isUnsigned: true)
!850 = !DIEnumerator(name: "BUILT_IN_YN", value: 249, isUnsigned: true)
!851 = !DIEnumerator(name: "BUILT_IN_YNF", value: 250, isUnsigned: true)
!852 = !DIEnumerator(name: "BUILT_IN_YNL", value: 251, isUnsigned: true)
!853 = !DIEnumerator(name: "BUILT_IN_CABS", value: 252, isUnsigned: true)
!854 = !DIEnumerator(name: "BUILT_IN_CABSF", value: 253, isUnsigned: true)
!855 = !DIEnumerator(name: "BUILT_IN_CABSL", value: 254, isUnsigned: true)
!856 = !DIEnumerator(name: "BUILT_IN_CACOS", value: 255, isUnsigned: true)
!857 = !DIEnumerator(name: "BUILT_IN_CACOSF", value: 256, isUnsigned: true)
!858 = !DIEnumerator(name: "BUILT_IN_CACOSH", value: 257, isUnsigned: true)
!859 = !DIEnumerator(name: "BUILT_IN_CACOSHF", value: 258, isUnsigned: true)
!860 = !DIEnumerator(name: "BUILT_IN_CACOSHL", value: 259, isUnsigned: true)
!861 = !DIEnumerator(name: "BUILT_IN_CACOSL", value: 260, isUnsigned: true)
!862 = !DIEnumerator(name: "BUILT_IN_CARG", value: 261, isUnsigned: true)
!863 = !DIEnumerator(name: "BUILT_IN_CARGF", value: 262, isUnsigned: true)
!864 = !DIEnumerator(name: "BUILT_IN_CARGL", value: 263, isUnsigned: true)
!865 = !DIEnumerator(name: "BUILT_IN_CASIN", value: 264, isUnsigned: true)
!866 = !DIEnumerator(name: "BUILT_IN_CASINF", value: 265, isUnsigned: true)
!867 = !DIEnumerator(name: "BUILT_IN_CASINH", value: 266, isUnsigned: true)
!868 = !DIEnumerator(name: "BUILT_IN_CASINHF", value: 267, isUnsigned: true)
!869 = !DIEnumerator(name: "BUILT_IN_CASINHL", value: 268, isUnsigned: true)
!870 = !DIEnumerator(name: "BUILT_IN_CASINL", value: 269, isUnsigned: true)
!871 = !DIEnumerator(name: "BUILT_IN_CATAN", value: 270, isUnsigned: true)
!872 = !DIEnumerator(name: "BUILT_IN_CATANF", value: 271, isUnsigned: true)
!873 = !DIEnumerator(name: "BUILT_IN_CATANH", value: 272, isUnsigned: true)
!874 = !DIEnumerator(name: "BUILT_IN_CATANHF", value: 273, isUnsigned: true)
!875 = !DIEnumerator(name: "BUILT_IN_CATANHL", value: 274, isUnsigned: true)
!876 = !DIEnumerator(name: "BUILT_IN_CATANL", value: 275, isUnsigned: true)
!877 = !DIEnumerator(name: "BUILT_IN_CCOS", value: 276, isUnsigned: true)
!878 = !DIEnumerator(name: "BUILT_IN_CCOSF", value: 277, isUnsigned: true)
!879 = !DIEnumerator(name: "BUILT_IN_CCOSH", value: 278, isUnsigned: true)
!880 = !DIEnumerator(name: "BUILT_IN_CCOSHF", value: 279, isUnsigned: true)
!881 = !DIEnumerator(name: "BUILT_IN_CCOSHL", value: 280, isUnsigned: true)
!882 = !DIEnumerator(name: "BUILT_IN_CCOSL", value: 281, isUnsigned: true)
!883 = !DIEnumerator(name: "BUILT_IN_CEXP", value: 282, isUnsigned: true)
!884 = !DIEnumerator(name: "BUILT_IN_CEXPF", value: 283, isUnsigned: true)
!885 = !DIEnumerator(name: "BUILT_IN_CEXPL", value: 284, isUnsigned: true)
!886 = !DIEnumerator(name: "BUILT_IN_CEXPI", value: 285, isUnsigned: true)
!887 = !DIEnumerator(name: "BUILT_IN_CEXPIF", value: 286, isUnsigned: true)
!888 = !DIEnumerator(name: "BUILT_IN_CEXPIL", value: 287, isUnsigned: true)
!889 = !DIEnumerator(name: "BUILT_IN_CIMAG", value: 288, isUnsigned: true)
!890 = !DIEnumerator(name: "BUILT_IN_CIMAGF", value: 289, isUnsigned: true)
!891 = !DIEnumerator(name: "BUILT_IN_CIMAGL", value: 290, isUnsigned: true)
!892 = !DIEnumerator(name: "BUILT_IN_CLOG", value: 291, isUnsigned: true)
!893 = !DIEnumerator(name: "BUILT_IN_CLOGF", value: 292, isUnsigned: true)
!894 = !DIEnumerator(name: "BUILT_IN_CLOGL", value: 293, isUnsigned: true)
!895 = !DIEnumerator(name: "BUILT_IN_CLOG10", value: 294, isUnsigned: true)
!896 = !DIEnumerator(name: "BUILT_IN_CLOG10F", value: 295, isUnsigned: true)
!897 = !DIEnumerator(name: "BUILT_IN_CLOG10L", value: 296, isUnsigned: true)
!898 = !DIEnumerator(name: "BUILT_IN_CONJ", value: 297, isUnsigned: true)
!899 = !DIEnumerator(name: "BUILT_IN_CONJF", value: 298, isUnsigned: true)
!900 = !DIEnumerator(name: "BUILT_IN_CONJL", value: 299, isUnsigned: true)
!901 = !DIEnumerator(name: "BUILT_IN_CPOW", value: 300, isUnsigned: true)
!902 = !DIEnumerator(name: "BUILT_IN_CPOWF", value: 301, isUnsigned: true)
!903 = !DIEnumerator(name: "BUILT_IN_CPOWL", value: 302, isUnsigned: true)
!904 = !DIEnumerator(name: "BUILT_IN_CPROJ", value: 303, isUnsigned: true)
!905 = !DIEnumerator(name: "BUILT_IN_CPROJF", value: 304, isUnsigned: true)
!906 = !DIEnumerator(name: "BUILT_IN_CPROJL", value: 305, isUnsigned: true)
!907 = !DIEnumerator(name: "BUILT_IN_CREAL", value: 306, isUnsigned: true)
!908 = !DIEnumerator(name: "BUILT_IN_CREALF", value: 307, isUnsigned: true)
!909 = !DIEnumerator(name: "BUILT_IN_CREALL", value: 308, isUnsigned: true)
!910 = !DIEnumerator(name: "BUILT_IN_CSIN", value: 309, isUnsigned: true)
!911 = !DIEnumerator(name: "BUILT_IN_CSINF", value: 310, isUnsigned: true)
!912 = !DIEnumerator(name: "BUILT_IN_CSINH", value: 311, isUnsigned: true)
!913 = !DIEnumerator(name: "BUILT_IN_CSINHF", value: 312, isUnsigned: true)
!914 = !DIEnumerator(name: "BUILT_IN_CSINHL", value: 313, isUnsigned: true)
!915 = !DIEnumerator(name: "BUILT_IN_CSINL", value: 314, isUnsigned: true)
!916 = !DIEnumerator(name: "BUILT_IN_CSQRT", value: 315, isUnsigned: true)
!917 = !DIEnumerator(name: "BUILT_IN_CSQRTF", value: 316, isUnsigned: true)
!918 = !DIEnumerator(name: "BUILT_IN_CSQRTL", value: 317, isUnsigned: true)
!919 = !DIEnumerator(name: "BUILT_IN_CTAN", value: 318, isUnsigned: true)
!920 = !DIEnumerator(name: "BUILT_IN_CTANF", value: 319, isUnsigned: true)
!921 = !DIEnumerator(name: "BUILT_IN_CTANH", value: 320, isUnsigned: true)
!922 = !DIEnumerator(name: "BUILT_IN_CTANHF", value: 321, isUnsigned: true)
!923 = !DIEnumerator(name: "BUILT_IN_CTANHL", value: 322, isUnsigned: true)
!924 = !DIEnumerator(name: "BUILT_IN_CTANL", value: 323, isUnsigned: true)
!925 = !DIEnumerator(name: "BUILT_IN_BCMP", value: 324, isUnsigned: true)
!926 = !DIEnumerator(name: "BUILT_IN_BCOPY", value: 325, isUnsigned: true)
!927 = !DIEnumerator(name: "BUILT_IN_BZERO", value: 326, isUnsigned: true)
!928 = !DIEnumerator(name: "BUILT_IN_INDEX", value: 327, isUnsigned: true)
!929 = !DIEnumerator(name: "BUILT_IN_MEMCHR", value: 328, isUnsigned: true)
!930 = !DIEnumerator(name: "BUILT_IN_MEMCMP", value: 329, isUnsigned: true)
!931 = !DIEnumerator(name: "BUILT_IN_MEMCPY", value: 330, isUnsigned: true)
!932 = !DIEnumerator(name: "BUILT_IN_MEMMOVE", value: 331, isUnsigned: true)
!933 = !DIEnumerator(name: "BUILT_IN_MEMPCPY", value: 332, isUnsigned: true)
!934 = !DIEnumerator(name: "BUILT_IN_MEMSET", value: 333, isUnsigned: true)
!935 = !DIEnumerator(name: "BUILT_IN_RINDEX", value: 334, isUnsigned: true)
!936 = !DIEnumerator(name: "BUILT_IN_STPCPY", value: 335, isUnsigned: true)
!937 = !DIEnumerator(name: "BUILT_IN_STPNCPY", value: 336, isUnsigned: true)
!938 = !DIEnumerator(name: "BUILT_IN_STRCASECMP", value: 337, isUnsigned: true)
!939 = !DIEnumerator(name: "BUILT_IN_STRCAT", value: 338, isUnsigned: true)
!940 = !DIEnumerator(name: "BUILT_IN_STRCHR", value: 339, isUnsigned: true)
!941 = !DIEnumerator(name: "BUILT_IN_STRCMP", value: 340, isUnsigned: true)
!942 = !DIEnumerator(name: "BUILT_IN_STRCPY", value: 341, isUnsigned: true)
!943 = !DIEnumerator(name: "BUILT_IN_STRCSPN", value: 342, isUnsigned: true)
!944 = !DIEnumerator(name: "BUILT_IN_STRDUP", value: 343, isUnsigned: true)
!945 = !DIEnumerator(name: "BUILT_IN_STRNDUP", value: 344, isUnsigned: true)
!946 = !DIEnumerator(name: "BUILT_IN_STRLEN", value: 345, isUnsigned: true)
!947 = !DIEnumerator(name: "BUILT_IN_STRNCASECMP", value: 346, isUnsigned: true)
!948 = !DIEnumerator(name: "BUILT_IN_STRNCAT", value: 347, isUnsigned: true)
!949 = !DIEnumerator(name: "BUILT_IN_STRNCMP", value: 348, isUnsigned: true)
!950 = !DIEnumerator(name: "BUILT_IN_STRNCPY", value: 349, isUnsigned: true)
!951 = !DIEnumerator(name: "BUILT_IN_STRPBRK", value: 350, isUnsigned: true)
!952 = !DIEnumerator(name: "BUILT_IN_STRRCHR", value: 351, isUnsigned: true)
!953 = !DIEnumerator(name: "BUILT_IN_STRSPN", value: 352, isUnsigned: true)
!954 = !DIEnumerator(name: "BUILT_IN_STRSTR", value: 353, isUnsigned: true)
!955 = !DIEnumerator(name: "BUILT_IN_FPRINTF", value: 354, isUnsigned: true)
!956 = !DIEnumerator(name: "BUILT_IN_FPRINTF_UNLOCKED", value: 355, isUnsigned: true)
!957 = !DIEnumerator(name: "BUILT_IN_PUTC", value: 356, isUnsigned: true)
!958 = !DIEnumerator(name: "BUILT_IN_PUTC_UNLOCKED", value: 357, isUnsigned: true)
!959 = !DIEnumerator(name: "BUILT_IN_FPUTC", value: 358, isUnsigned: true)
!960 = !DIEnumerator(name: "BUILT_IN_FPUTC_UNLOCKED", value: 359, isUnsigned: true)
!961 = !DIEnumerator(name: "BUILT_IN_FPUTS", value: 360, isUnsigned: true)
!962 = !DIEnumerator(name: "BUILT_IN_FPUTS_UNLOCKED", value: 361, isUnsigned: true)
!963 = !DIEnumerator(name: "BUILT_IN_FSCANF", value: 362, isUnsigned: true)
!964 = !DIEnumerator(name: "BUILT_IN_FWRITE", value: 363, isUnsigned: true)
!965 = !DIEnumerator(name: "BUILT_IN_FWRITE_UNLOCKED", value: 364, isUnsigned: true)
!966 = !DIEnumerator(name: "BUILT_IN_PRINTF", value: 365, isUnsigned: true)
!967 = !DIEnumerator(name: "BUILT_IN_PRINTF_UNLOCKED", value: 366, isUnsigned: true)
!968 = !DIEnumerator(name: "BUILT_IN_PUTCHAR", value: 367, isUnsigned: true)
!969 = !DIEnumerator(name: "BUILT_IN_PUTCHAR_UNLOCKED", value: 368, isUnsigned: true)
!970 = !DIEnumerator(name: "BUILT_IN_PUTS", value: 369, isUnsigned: true)
!971 = !DIEnumerator(name: "BUILT_IN_PUTS_UNLOCKED", value: 370, isUnsigned: true)
!972 = !DIEnumerator(name: "BUILT_IN_SCANF", value: 371, isUnsigned: true)
!973 = !DIEnumerator(name: "BUILT_IN_SNPRINTF", value: 372, isUnsigned: true)
!974 = !DIEnumerator(name: "BUILT_IN_SPRINTF", value: 373, isUnsigned: true)
!975 = !DIEnumerator(name: "BUILT_IN_SSCANF", value: 374, isUnsigned: true)
!976 = !DIEnumerator(name: "BUILT_IN_VFPRINTF", value: 375, isUnsigned: true)
!977 = !DIEnumerator(name: "BUILT_IN_VFSCANF", value: 376, isUnsigned: true)
!978 = !DIEnumerator(name: "BUILT_IN_VPRINTF", value: 377, isUnsigned: true)
!979 = !DIEnumerator(name: "BUILT_IN_VSCANF", value: 378, isUnsigned: true)
!980 = !DIEnumerator(name: "BUILT_IN_VSNPRINTF", value: 379, isUnsigned: true)
!981 = !DIEnumerator(name: "BUILT_IN_VSPRINTF", value: 380, isUnsigned: true)
!982 = !DIEnumerator(name: "BUILT_IN_VSSCANF", value: 381, isUnsigned: true)
!983 = !DIEnumerator(name: "BUILT_IN_ISALNUM", value: 382, isUnsigned: true)
!984 = !DIEnumerator(name: "BUILT_IN_ISALPHA", value: 383, isUnsigned: true)
!985 = !DIEnumerator(name: "BUILT_IN_ISASCII", value: 384, isUnsigned: true)
!986 = !DIEnumerator(name: "BUILT_IN_ISBLANK", value: 385, isUnsigned: true)
!987 = !DIEnumerator(name: "BUILT_IN_ISCNTRL", value: 386, isUnsigned: true)
!988 = !DIEnumerator(name: "BUILT_IN_ISDIGIT", value: 387, isUnsigned: true)
!989 = !DIEnumerator(name: "BUILT_IN_ISGRAPH", value: 388, isUnsigned: true)
!990 = !DIEnumerator(name: "BUILT_IN_ISLOWER", value: 389, isUnsigned: true)
!991 = !DIEnumerator(name: "BUILT_IN_ISPRINT", value: 390, isUnsigned: true)
!992 = !DIEnumerator(name: "BUILT_IN_ISPUNCT", value: 391, isUnsigned: true)
!993 = !DIEnumerator(name: "BUILT_IN_ISSPACE", value: 392, isUnsigned: true)
!994 = !DIEnumerator(name: "BUILT_IN_ISUPPER", value: 393, isUnsigned: true)
!995 = !DIEnumerator(name: "BUILT_IN_ISXDIGIT", value: 394, isUnsigned: true)
!996 = !DIEnumerator(name: "BUILT_IN_TOASCII", value: 395, isUnsigned: true)
!997 = !DIEnumerator(name: "BUILT_IN_TOLOWER", value: 396, isUnsigned: true)
!998 = !DIEnumerator(name: "BUILT_IN_TOUPPER", value: 397, isUnsigned: true)
!999 = !DIEnumerator(name: "BUILT_IN_ISWALNUM", value: 398, isUnsigned: true)
!1000 = !DIEnumerator(name: "BUILT_IN_ISWALPHA", value: 399, isUnsigned: true)
!1001 = !DIEnumerator(name: "BUILT_IN_ISWBLANK", value: 400, isUnsigned: true)
!1002 = !DIEnumerator(name: "BUILT_IN_ISWCNTRL", value: 401, isUnsigned: true)
!1003 = !DIEnumerator(name: "BUILT_IN_ISWDIGIT", value: 402, isUnsigned: true)
!1004 = !DIEnumerator(name: "BUILT_IN_ISWGRAPH", value: 403, isUnsigned: true)
!1005 = !DIEnumerator(name: "BUILT_IN_ISWLOWER", value: 404, isUnsigned: true)
!1006 = !DIEnumerator(name: "BUILT_IN_ISWPRINT", value: 405, isUnsigned: true)
!1007 = !DIEnumerator(name: "BUILT_IN_ISWPUNCT", value: 406, isUnsigned: true)
!1008 = !DIEnumerator(name: "BUILT_IN_ISWSPACE", value: 407, isUnsigned: true)
!1009 = !DIEnumerator(name: "BUILT_IN_ISWUPPER", value: 408, isUnsigned: true)
!1010 = !DIEnumerator(name: "BUILT_IN_ISWXDIGIT", value: 409, isUnsigned: true)
!1011 = !DIEnumerator(name: "BUILT_IN_TOWLOWER", value: 410, isUnsigned: true)
!1012 = !DIEnumerator(name: "BUILT_IN_TOWUPPER", value: 411, isUnsigned: true)
!1013 = !DIEnumerator(name: "BUILT_IN_ABORT", value: 412, isUnsigned: true)
!1014 = !DIEnumerator(name: "BUILT_IN_ABS", value: 413, isUnsigned: true)
!1015 = !DIEnumerator(name: "BUILT_IN_AGGREGATE_INCOMING_ADDRESS", value: 414, isUnsigned: true)
!1016 = !DIEnumerator(name: "BUILT_IN_ALLOCA", value: 415, isUnsigned: true)
!1017 = !DIEnumerator(name: "BUILT_IN_APPLY", value: 416, isUnsigned: true)
!1018 = !DIEnumerator(name: "BUILT_IN_APPLY_ARGS", value: 417, isUnsigned: true)
!1019 = !DIEnumerator(name: "BUILT_IN_ARGS_INFO", value: 418, isUnsigned: true)
!1020 = !DIEnumerator(name: "BUILT_IN_BSWAP32", value: 419, isUnsigned: true)
!1021 = !DIEnumerator(name: "BUILT_IN_BSWAP64", value: 420, isUnsigned: true)
!1022 = !DIEnumerator(name: "BUILT_IN_CLEAR_CACHE", value: 421, isUnsigned: true)
!1023 = !DIEnumerator(name: "BUILT_IN_CALLOC", value: 422, isUnsigned: true)
!1024 = !DIEnumerator(name: "BUILT_IN_CLASSIFY_TYPE", value: 423, isUnsigned: true)
!1025 = !DIEnumerator(name: "BUILT_IN_CLZ", value: 424, isUnsigned: true)
!1026 = !DIEnumerator(name: "BUILT_IN_CLZIMAX", value: 425, isUnsigned: true)
!1027 = !DIEnumerator(name: "BUILT_IN_CLZL", value: 426, isUnsigned: true)
!1028 = !DIEnumerator(name: "BUILT_IN_CLZLL", value: 427, isUnsigned: true)
!1029 = !DIEnumerator(name: "BUILT_IN_CONSTANT_P", value: 428, isUnsigned: true)
!1030 = !DIEnumerator(name: "BUILT_IN_CTZ", value: 429, isUnsigned: true)
!1031 = !DIEnumerator(name: "BUILT_IN_CTZIMAX", value: 430, isUnsigned: true)
!1032 = !DIEnumerator(name: "BUILT_IN_CTZL", value: 431, isUnsigned: true)
!1033 = !DIEnumerator(name: "BUILT_IN_CTZLL", value: 432, isUnsigned: true)
!1034 = !DIEnumerator(name: "BUILT_IN_DCGETTEXT", value: 433, isUnsigned: true)
!1035 = !DIEnumerator(name: "BUILT_IN_DGETTEXT", value: 434, isUnsigned: true)
!1036 = !DIEnumerator(name: "BUILT_IN_DWARF_CFA", value: 435, isUnsigned: true)
!1037 = !DIEnumerator(name: "BUILT_IN_DWARF_SP_COLUMN", value: 436, isUnsigned: true)
!1038 = !DIEnumerator(name: "BUILT_IN_EH_RETURN", value: 437, isUnsigned: true)
!1039 = !DIEnumerator(name: "BUILT_IN_EH_RETURN_DATA_REGNO", value: 438, isUnsigned: true)
!1040 = !DIEnumerator(name: "BUILT_IN_EXECL", value: 439, isUnsigned: true)
!1041 = !DIEnumerator(name: "BUILT_IN_EXECLP", value: 440, isUnsigned: true)
!1042 = !DIEnumerator(name: "BUILT_IN_EXECLE", value: 441, isUnsigned: true)
!1043 = !DIEnumerator(name: "BUILT_IN_EXECV", value: 442, isUnsigned: true)
!1044 = !DIEnumerator(name: "BUILT_IN_EXECVP", value: 443, isUnsigned: true)
!1045 = !DIEnumerator(name: "BUILT_IN_EXECVE", value: 444, isUnsigned: true)
!1046 = !DIEnumerator(name: "BUILT_IN_EXIT", value: 445, isUnsigned: true)
!1047 = !DIEnumerator(name: "BUILT_IN_EXPECT", value: 446, isUnsigned: true)
!1048 = !DIEnumerator(name: "BUILT_IN_EXTEND_POINTER", value: 447, isUnsigned: true)
!1049 = !DIEnumerator(name: "BUILT_IN_EXTRACT_RETURN_ADDR", value: 448, isUnsigned: true)
!1050 = !DIEnumerator(name: "BUILT_IN_FFS", value: 449, isUnsigned: true)
!1051 = !DIEnumerator(name: "BUILT_IN_FFSIMAX", value: 450, isUnsigned: true)
!1052 = !DIEnumerator(name: "BUILT_IN_FFSL", value: 451, isUnsigned: true)
!1053 = !DIEnumerator(name: "BUILT_IN_FFSLL", value: 452, isUnsigned: true)
!1054 = !DIEnumerator(name: "BUILT_IN_FORK", value: 453, isUnsigned: true)
!1055 = !DIEnumerator(name: "BUILT_IN_FRAME_ADDRESS", value: 454, isUnsigned: true)
!1056 = !DIEnumerator(name: "BUILT_IN_FREE", value: 455, isUnsigned: true)
!1057 = !DIEnumerator(name: "BUILT_IN_FROB_RETURN_ADDR", value: 456, isUnsigned: true)
!1058 = !DIEnumerator(name: "BUILT_IN_GETTEXT", value: 457, isUnsigned: true)
!1059 = !DIEnumerator(name: "BUILT_IN_IMAXABS", value: 458, isUnsigned: true)
!1060 = !DIEnumerator(name: "BUILT_IN_INIT_DWARF_REG_SIZES", value: 459, isUnsigned: true)
!1061 = !DIEnumerator(name: "BUILT_IN_FINITE", value: 460, isUnsigned: true)
!1062 = !DIEnumerator(name: "BUILT_IN_FINITEF", value: 461, isUnsigned: true)
!1063 = !DIEnumerator(name: "BUILT_IN_FINITEL", value: 462, isUnsigned: true)
!1064 = !DIEnumerator(name: "BUILT_IN_FINITED32", value: 463, isUnsigned: true)
!1065 = !DIEnumerator(name: "BUILT_IN_FINITED64", value: 464, isUnsigned: true)
!1066 = !DIEnumerator(name: "BUILT_IN_FINITED128", value: 465, isUnsigned: true)
!1067 = !DIEnumerator(name: "BUILT_IN_FPCLASSIFY", value: 466, isUnsigned: true)
!1068 = !DIEnumerator(name: "BUILT_IN_ISFINITE", value: 467, isUnsigned: true)
!1069 = !DIEnumerator(name: "BUILT_IN_ISINF_SIGN", value: 468, isUnsigned: true)
!1070 = !DIEnumerator(name: "BUILT_IN_ISINF", value: 469, isUnsigned: true)
!1071 = !DIEnumerator(name: "BUILT_IN_ISINFF", value: 470, isUnsigned: true)
!1072 = !DIEnumerator(name: "BUILT_IN_ISINFL", value: 471, isUnsigned: true)
!1073 = !DIEnumerator(name: "BUILT_IN_ISINFD32", value: 472, isUnsigned: true)
!1074 = !DIEnumerator(name: "BUILT_IN_ISINFD64", value: 473, isUnsigned: true)
!1075 = !DIEnumerator(name: "BUILT_IN_ISINFD128", value: 474, isUnsigned: true)
!1076 = !DIEnumerator(name: "BUILT_IN_ISNAN", value: 475, isUnsigned: true)
!1077 = !DIEnumerator(name: "BUILT_IN_ISNANF", value: 476, isUnsigned: true)
!1078 = !DIEnumerator(name: "BUILT_IN_ISNANL", value: 477, isUnsigned: true)
!1079 = !DIEnumerator(name: "BUILT_IN_ISNAND32", value: 478, isUnsigned: true)
!1080 = !DIEnumerator(name: "BUILT_IN_ISNAND64", value: 479, isUnsigned: true)
!1081 = !DIEnumerator(name: "BUILT_IN_ISNAND128", value: 480, isUnsigned: true)
!1082 = !DIEnumerator(name: "BUILT_IN_ISNORMAL", value: 481, isUnsigned: true)
!1083 = !DIEnumerator(name: "BUILT_IN_ISGREATER", value: 482, isUnsigned: true)
!1084 = !DIEnumerator(name: "BUILT_IN_ISGREATEREQUAL", value: 483, isUnsigned: true)
!1085 = !DIEnumerator(name: "BUILT_IN_ISLESS", value: 484, isUnsigned: true)
!1086 = !DIEnumerator(name: "BUILT_IN_ISLESSEQUAL", value: 485, isUnsigned: true)
!1087 = !DIEnumerator(name: "BUILT_IN_ISLESSGREATER", value: 486, isUnsigned: true)
!1088 = !DIEnumerator(name: "BUILT_IN_ISUNORDERED", value: 487, isUnsigned: true)
!1089 = !DIEnumerator(name: "BUILT_IN_LABS", value: 488, isUnsigned: true)
!1090 = !DIEnumerator(name: "BUILT_IN_LLABS", value: 489, isUnsigned: true)
!1091 = !DIEnumerator(name: "BUILT_IN_LONGJMP", value: 490, isUnsigned: true)
!1092 = !DIEnumerator(name: "BUILT_IN_MALLOC", value: 491, isUnsigned: true)
!1093 = !DIEnumerator(name: "BUILT_IN_NEXT_ARG", value: 492, isUnsigned: true)
!1094 = !DIEnumerator(name: "BUILT_IN_PARITY", value: 493, isUnsigned: true)
!1095 = !DIEnumerator(name: "BUILT_IN_PARITYIMAX", value: 494, isUnsigned: true)
!1096 = !DIEnumerator(name: "BUILT_IN_PARITYL", value: 495, isUnsigned: true)
!1097 = !DIEnumerator(name: "BUILT_IN_PARITYLL", value: 496, isUnsigned: true)
!1098 = !DIEnumerator(name: "BUILT_IN_POPCOUNT", value: 497, isUnsigned: true)
!1099 = !DIEnumerator(name: "BUILT_IN_POPCOUNTIMAX", value: 498, isUnsigned: true)
!1100 = !DIEnumerator(name: "BUILT_IN_POPCOUNTL", value: 499, isUnsigned: true)
!1101 = !DIEnumerator(name: "BUILT_IN_POPCOUNTLL", value: 500, isUnsigned: true)
!1102 = !DIEnumerator(name: "BUILT_IN_PREFETCH", value: 501, isUnsigned: true)
!1103 = !DIEnumerator(name: "BUILT_IN_REALLOC", value: 502, isUnsigned: true)
!1104 = !DIEnumerator(name: "BUILT_IN_RETURN", value: 503, isUnsigned: true)
!1105 = !DIEnumerator(name: "BUILT_IN_RETURN_ADDRESS", value: 504, isUnsigned: true)
!1106 = !DIEnumerator(name: "BUILT_IN_SAVEREGS", value: 505, isUnsigned: true)
!1107 = !DIEnumerator(name: "BUILT_IN_SETJMP", value: 506, isUnsigned: true)
!1108 = !DIEnumerator(name: "BUILT_IN_STRFMON", value: 507, isUnsigned: true)
!1109 = !DIEnumerator(name: "BUILT_IN_STRFTIME", value: 508, isUnsigned: true)
!1110 = !DIEnumerator(name: "BUILT_IN_TRAP", value: 509, isUnsigned: true)
!1111 = !DIEnumerator(name: "BUILT_IN_UNREACHABLE", value: 510, isUnsigned: true)
!1112 = !DIEnumerator(name: "BUILT_IN_UNWIND_INIT", value: 511, isUnsigned: true)
!1113 = !DIEnumerator(name: "BUILT_IN_UPDATE_SETJMP_BUF", value: 512, isUnsigned: true)
!1114 = !DIEnumerator(name: "BUILT_IN_VA_COPY", value: 513, isUnsigned: true)
!1115 = !DIEnumerator(name: "BUILT_IN_VA_END", value: 514, isUnsigned: true)
!1116 = !DIEnumerator(name: "BUILT_IN_VA_START", value: 515, isUnsigned: true)
!1117 = !DIEnumerator(name: "BUILT_IN_VA_ARG_PACK", value: 516, isUnsigned: true)
!1118 = !DIEnumerator(name: "BUILT_IN_VA_ARG_PACK_LEN", value: 517, isUnsigned: true)
!1119 = !DIEnumerator(name: "BUILT_IN__EXIT", value: 518, isUnsigned: true)
!1120 = !DIEnumerator(name: "BUILT_IN__EXIT2", value: 519, isUnsigned: true)
!1121 = !DIEnumerator(name: "BUILT_IN_INIT_TRAMPOLINE", value: 520, isUnsigned: true)
!1122 = !DIEnumerator(name: "BUILT_IN_ADJUST_TRAMPOLINE", value: 521, isUnsigned: true)
!1123 = !DIEnumerator(name: "BUILT_IN_NONLOCAL_GOTO", value: 522, isUnsigned: true)
!1124 = !DIEnumerator(name: "BUILT_IN_SETJMP_SETUP", value: 523, isUnsigned: true)
!1125 = !DIEnumerator(name: "BUILT_IN_SETJMP_DISPATCHER", value: 524, isUnsigned: true)
!1126 = !DIEnumerator(name: "BUILT_IN_SETJMP_RECEIVER", value: 525, isUnsigned: true)
!1127 = !DIEnumerator(name: "BUILT_IN_STACK_SAVE", value: 526, isUnsigned: true)
!1128 = !DIEnumerator(name: "BUILT_IN_STACK_RESTORE", value: 527, isUnsigned: true)
!1129 = !DIEnumerator(name: "BUILT_IN_OBJECT_SIZE", value: 528, isUnsigned: true)
!1130 = !DIEnumerator(name: "BUILT_IN_MEMCPY_CHK", value: 529, isUnsigned: true)
!1131 = !DIEnumerator(name: "BUILT_IN_MEMMOVE_CHK", value: 530, isUnsigned: true)
!1132 = !DIEnumerator(name: "BUILT_IN_MEMPCPY_CHK", value: 531, isUnsigned: true)
!1133 = !DIEnumerator(name: "BUILT_IN_MEMSET_CHK", value: 532, isUnsigned: true)
!1134 = !DIEnumerator(name: "BUILT_IN_STPCPY_CHK", value: 533, isUnsigned: true)
!1135 = !DIEnumerator(name: "BUILT_IN_STRCAT_CHK", value: 534, isUnsigned: true)
!1136 = !DIEnumerator(name: "BUILT_IN_STRCPY_CHK", value: 535, isUnsigned: true)
!1137 = !DIEnumerator(name: "BUILT_IN_STRNCAT_CHK", value: 536, isUnsigned: true)
!1138 = !DIEnumerator(name: "BUILT_IN_STRNCPY_CHK", value: 537, isUnsigned: true)
!1139 = !DIEnumerator(name: "BUILT_IN_SNPRINTF_CHK", value: 538, isUnsigned: true)
!1140 = !DIEnumerator(name: "BUILT_IN_SPRINTF_CHK", value: 539, isUnsigned: true)
!1141 = !DIEnumerator(name: "BUILT_IN_VSNPRINTF_CHK", value: 540, isUnsigned: true)
!1142 = !DIEnumerator(name: "BUILT_IN_VSPRINTF_CHK", value: 541, isUnsigned: true)
!1143 = !DIEnumerator(name: "BUILT_IN_FPRINTF_CHK", value: 542, isUnsigned: true)
!1144 = !DIEnumerator(name: "BUILT_IN_PRINTF_CHK", value: 543, isUnsigned: true)
!1145 = !DIEnumerator(name: "BUILT_IN_VFPRINTF_CHK", value: 544, isUnsigned: true)
!1146 = !DIEnumerator(name: "BUILT_IN_VPRINTF_CHK", value: 545, isUnsigned: true)
!1147 = !DIEnumerator(name: "BUILT_IN_PROFILE_FUNC_ENTER", value: 546, isUnsigned: true)
!1148 = !DIEnumerator(name: "BUILT_IN_PROFILE_FUNC_EXIT", value: 547, isUnsigned: true)
!1149 = !DIEnumerator(name: "BUILT_IN_EMUTLS_GET_ADDRESS", value: 548, isUnsigned: true)
!1150 = !DIEnumerator(name: "BUILT_IN_EMUTLS_REGISTER_COMMON", value: 549, isUnsigned: true)
!1151 = !DIEnumerator(name: "BUILT_IN_UNWIND_RESUME", value: 550, isUnsigned: true)
!1152 = !DIEnumerator(name: "BUILT_IN_CXA_END_CLEANUP", value: 551, isUnsigned: true)
!1153 = !DIEnumerator(name: "BUILT_IN_EH_POINTER", value: 552, isUnsigned: true)
!1154 = !DIEnumerator(name: "BUILT_IN_EH_FILTER", value: 553, isUnsigned: true)
!1155 = !DIEnumerator(name: "BUILT_IN_EH_COPY_VALUES", value: 554, isUnsigned: true)
!1156 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_N", value: 555, isUnsigned: true)
!1157 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_1", value: 556, isUnsigned: true)
!1158 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_2", value: 557, isUnsigned: true)
!1159 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_4", value: 558, isUnsigned: true)
!1160 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_8", value: 559, isUnsigned: true)
!1161 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_16", value: 560, isUnsigned: true)
!1162 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_N", value: 561, isUnsigned: true)
!1163 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_1", value: 562, isUnsigned: true)
!1164 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_2", value: 563, isUnsigned: true)
!1165 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_4", value: 564, isUnsigned: true)
!1166 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_8", value: 565, isUnsigned: true)
!1167 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_16", value: 566, isUnsigned: true)
!1168 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_N", value: 567, isUnsigned: true)
!1169 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_1", value: 568, isUnsigned: true)
!1170 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_2", value: 569, isUnsigned: true)
!1171 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_4", value: 570, isUnsigned: true)
!1172 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_8", value: 571, isUnsigned: true)
!1173 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_16", value: 572, isUnsigned: true)
!1174 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_N", value: 573, isUnsigned: true)
!1175 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_1", value: 574, isUnsigned: true)
!1176 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_2", value: 575, isUnsigned: true)
!1177 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_4", value: 576, isUnsigned: true)
!1178 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_8", value: 577, isUnsigned: true)
!1179 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_16", value: 578, isUnsigned: true)
!1180 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_N", value: 579, isUnsigned: true)
!1181 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_1", value: 580, isUnsigned: true)
!1182 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_2", value: 581, isUnsigned: true)
!1183 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_4", value: 582, isUnsigned: true)
!1184 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_8", value: 583, isUnsigned: true)
!1185 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_16", value: 584, isUnsigned: true)
!1186 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_N", value: 585, isUnsigned: true)
!1187 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_1", value: 586, isUnsigned: true)
!1188 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_2", value: 587, isUnsigned: true)
!1189 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_4", value: 588, isUnsigned: true)
!1190 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_8", value: 589, isUnsigned: true)
!1191 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_16", value: 590, isUnsigned: true)
!1192 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_N", value: 591, isUnsigned: true)
!1193 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_1", value: 592, isUnsigned: true)
!1194 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_2", value: 593, isUnsigned: true)
!1195 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_4", value: 594, isUnsigned: true)
!1196 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_8", value: 595, isUnsigned: true)
!1197 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_16", value: 596, isUnsigned: true)
!1198 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_N", value: 597, isUnsigned: true)
!1199 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_1", value: 598, isUnsigned: true)
!1200 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_2", value: 599, isUnsigned: true)
!1201 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_4", value: 600, isUnsigned: true)
!1202 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_8", value: 601, isUnsigned: true)
!1203 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_16", value: 602, isUnsigned: true)
!1204 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_N", value: 603, isUnsigned: true)
!1205 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_1", value: 604, isUnsigned: true)
!1206 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_2", value: 605, isUnsigned: true)
!1207 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_4", value: 606, isUnsigned: true)
!1208 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_8", value: 607, isUnsigned: true)
!1209 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_16", value: 608, isUnsigned: true)
!1210 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_N", value: 609, isUnsigned: true)
!1211 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_1", value: 610, isUnsigned: true)
!1212 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_2", value: 611, isUnsigned: true)
!1213 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_4", value: 612, isUnsigned: true)
!1214 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_8", value: 613, isUnsigned: true)
!1215 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_16", value: 614, isUnsigned: true)
!1216 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_N", value: 615, isUnsigned: true)
!1217 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_1", value: 616, isUnsigned: true)
!1218 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_2", value: 617, isUnsigned: true)
!1219 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_4", value: 618, isUnsigned: true)
!1220 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_8", value: 619, isUnsigned: true)
!1221 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_16", value: 620, isUnsigned: true)
!1222 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_N", value: 621, isUnsigned: true)
!1223 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_1", value: 622, isUnsigned: true)
!1224 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_2", value: 623, isUnsigned: true)
!1225 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_4", value: 624, isUnsigned: true)
!1226 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_8", value: 625, isUnsigned: true)
!1227 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_16", value: 626, isUnsigned: true)
!1228 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_N", value: 627, isUnsigned: true)
!1229 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_1", value: 628, isUnsigned: true)
!1230 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_2", value: 629, isUnsigned: true)
!1231 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_4", value: 630, isUnsigned: true)
!1232 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_8", value: 631, isUnsigned: true)
!1233 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_16", value: 632, isUnsigned: true)
!1234 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_N", value: 633, isUnsigned: true)
!1235 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_1", value: 634, isUnsigned: true)
!1236 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_2", value: 635, isUnsigned: true)
!1237 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_4", value: 636, isUnsigned: true)
!1238 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_8", value: 637, isUnsigned: true)
!1239 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_16", value: 638, isUnsigned: true)
!1240 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_N", value: 639, isUnsigned: true)
!1241 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_1", value: 640, isUnsigned: true)
!1242 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_2", value: 641, isUnsigned: true)
!1243 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_4", value: 642, isUnsigned: true)
!1244 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_8", value: 643, isUnsigned: true)
!1245 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_16", value: 644, isUnsigned: true)
!1246 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_N", value: 645, isUnsigned: true)
!1247 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_1", value: 646, isUnsigned: true)
!1248 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_2", value: 647, isUnsigned: true)
!1249 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_4", value: 648, isUnsigned: true)
!1250 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_8", value: 649, isUnsigned: true)
!1251 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_16", value: 650, isUnsigned: true)
!1252 = !DIEnumerator(name: "BUILT_IN_SYNCHRONIZE", value: 651, isUnsigned: true)
!1253 = !DIEnumerator(name: "BUILT_IN_OMP_GET_THREAD_NUM", value: 652, isUnsigned: true)
!1254 = !DIEnumerator(name: "BUILT_IN_OMP_GET_NUM_THREADS", value: 653, isUnsigned: true)
!1255 = !DIEnumerator(name: "BUILT_IN_GOMP_ATOMIC_START", value: 654, isUnsigned: true)
!1256 = !DIEnumerator(name: "BUILT_IN_GOMP_ATOMIC_END", value: 655, isUnsigned: true)
!1257 = !DIEnumerator(name: "BUILT_IN_GOMP_BARRIER", value: 656, isUnsigned: true)
!1258 = !DIEnumerator(name: "BUILT_IN_GOMP_TASKWAIT", value: 657, isUnsigned: true)
!1259 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_START", value: 658, isUnsigned: true)
!1260 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_END", value: 659, isUnsigned: true)
!1261 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_NAME_START", value: 660, isUnsigned: true)
!1262 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_NAME_END", value: 661, isUnsigned: true)
!1263 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_STATIC_START", value: 662, isUnsigned: true)
!1264 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_DYNAMIC_START", value: 663, isUnsigned: true)
!1265 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_GUIDED_START", value: 664, isUnsigned: true)
!1266 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_RUNTIME_START", value: 665, isUnsigned: true)
!1267 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_STATIC_START", value: 666, isUnsigned: true)
!1268 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_START", value: 667, isUnsigned: true)
!1269 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_START", value: 668, isUnsigned: true)
!1270 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_START", value: 669, isUnsigned: true)
!1271 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_STATIC_NEXT", value: 670, isUnsigned: true)
!1272 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_DYNAMIC_NEXT", value: 671, isUnsigned: true)
!1273 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_GUIDED_NEXT", value: 672, isUnsigned: true)
!1274 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_RUNTIME_NEXT", value: 673, isUnsigned: true)
!1275 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_STATIC_NEXT", value: 674, isUnsigned: true)
!1276 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_NEXT", value: 675, isUnsigned: true)
!1277 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_NEXT", value: 676, isUnsigned: true)
!1278 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_NEXT", value: 677, isUnsigned: true)
!1279 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_STATIC_START", value: 678, isUnsigned: true)
!1280 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_START", value: 679, isUnsigned: true)
!1281 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_GUIDED_START", value: 680, isUnsigned: true)
!1282 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_RUNTIME_START", value: 681, isUnsigned: true)
!1283 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_START", value: 682, isUnsigned: true)
!1284 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_START", value: 683, isUnsigned: true)
!1285 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_START", value: 684, isUnsigned: true)
!1286 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_START", value: 685, isUnsigned: true)
!1287 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_STATIC_NEXT", value: 686, isUnsigned: true)
!1288 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_NEXT", value: 687, isUnsigned: true)
!1289 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_GUIDED_NEXT", value: 688, isUnsigned: true)
!1290 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_RUNTIME_NEXT", value: 689, isUnsigned: true)
!1291 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_NEXT", value: 690, isUnsigned: true)
!1292 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_NEXT", value: 691, isUnsigned: true)
!1293 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_NEXT", value: 692, isUnsigned: true)
!1294 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_NEXT", value: 693, isUnsigned: true)
!1295 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START", value: 694, isUnsigned: true)
!1296 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_DYNAMIC_START", value: 695, isUnsigned: true)
!1297 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_GUIDED_START", value: 696, isUnsigned: true)
!1298 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_RUNTIME_START", value: 697, isUnsigned: true)
!1299 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_END", value: 698, isUnsigned: true)
!1300 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_END_NOWAIT", value: 699, isUnsigned: true)
!1301 = !DIEnumerator(name: "BUILT_IN_GOMP_ORDERED_START", value: 700, isUnsigned: true)
!1302 = !DIEnumerator(name: "BUILT_IN_GOMP_ORDERED_END", value: 701, isUnsigned: true)
!1303 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_START", value: 702, isUnsigned: true)
!1304 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_END", value: 703, isUnsigned: true)
!1305 = !DIEnumerator(name: "BUILT_IN_GOMP_TASK", value: 704, isUnsigned: true)
!1306 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_START", value: 705, isUnsigned: true)
!1307 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_NEXT", value: 706, isUnsigned: true)
!1308 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_SECTIONS_START", value: 707, isUnsigned: true)
!1309 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_END", value: 708, isUnsigned: true)
!1310 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_END_NOWAIT", value: 709, isUnsigned: true)
!1311 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_START", value: 710, isUnsigned: true)
!1312 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_COPY_START", value: 711, isUnsigned: true)
!1313 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_COPY_END", value: 712, isUnsigned: true)
!1314 = !DIEnumerator(name: "BUILT_IN_COMPLEX_MUL_MIN", value: 713, isUnsigned: true)
!1315 = !DIEnumerator(name: "BUILT_IN_COMPLEX_MUL_MAX", value: 716, isUnsigned: true)
!1316 = !DIEnumerator(name: "BUILT_IN_COMPLEX_DIV_MIN", value: 717, isUnsigned: true)
!1317 = !DIEnumerator(name: "BUILT_IN_COMPLEX_DIV_MAX", value: 720, isUnsigned: true)
!1318 = !DIEnumerator(name: "END_BUILTINS", value: 721, isUnsigned: true)
!1319 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !561, line: 727, baseType: !7, size: 32, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344}
!1321 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!1322 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!1323 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!1324 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!1325 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!1326 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!1327 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!1328 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!1329 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!1330 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!1331 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!1332 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!1333 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!1334 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!1335 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!1336 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!1337 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!1338 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!1339 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!1340 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!1341 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!1342 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!1343 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!1344 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!1345 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !1346, line: 36, baseType: !7, size: 32, elements: !1347)
!1346 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366}
!1348 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!1349 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!1350 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!1351 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!1352 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!1353 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!1354 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!1355 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!1356 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!1357 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!1358 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!1359 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!1360 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!1361 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!1362 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!1363 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!1364 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!1365 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!1366 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!1367 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !561, line: 80, baseType: !7, size: 32, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372}
!1369 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!1370 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!1371 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!1372 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!1373 = !{!1374, !1375, !1376, !1377, !1380, !1381, !1383, !2678, !1565, !1977, !1378, !366, !1345, !1367, !2680, !7, !1402}
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1376 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !561, line: 737, size: 768, elements: !1385)
!1385 = !{!1386, !2525, !2535, !2541, !2546, !2551, !2558, !2564, !2570, !2575, !2589, !2594, !2600, !2605, !2615, !2620, !2636, !2643, !2650, !2656, !2661, !2667, !2673}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1384, file: !561, line: 738, baseType: !1387, size: 256)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !561, line: 271, size: 256, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1404, !1405, !2524}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1387, file: !561, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !1387, file: !561, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1387, file: !561, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !1387, file: !561, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !1387, file: !561, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1387, file: !561, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !1387, file: !561, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1387, file: !561, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1387, file: !561, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1387, file: !561, line: 312, baseType: !7, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1387, file: !561, line: 316, baseType: !1400, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1401, line: 58, baseType: !1402)
!1401 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1403, line: 44, baseType: !7)
!1403 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !1387, file: !561, line: 319, baseType: !7, size: 32, offset: 96)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1387, file: !561, line: 323, baseType: !1406, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !1408)
!1408 = !{!1409, !2489, !2490, !2491, !2494, !2498, !2499, !2500, !2518, !2519, !2520, !2521, !2522, !2523}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1407, file: !318, line: 219, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !1413)
!1413 = !{!1414}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1412, file: !318, line: 151, baseType: !1415, size: 128)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1416, file: !318, line: 150, baseType: !7, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1416, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1416, file: !318, line: 150, baseType: !1421, size: 64, offset: 64)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 64, elements: !1484)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !1423, line: 108, baseType: !1424)
!1423 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !1426)
!1426 = !{!1427, !1428, !1429, !2481, !2482, !2483, !2484, !2485, !2486, !2487}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1425, file: !318, line: 124, baseType: !1406, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1425, file: !318, line: 125, baseType: !1406, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1425, file: !318, line: 131, baseType: !1430, size: 64, offset: 128)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !1431)
!1431 = !{!1432, !1448}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1430, file: !318, line: 129, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !1423, line: 66, baseType: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !561, line: 143, size: 192, elements: !1436)
!1436 = !{!1437, !1446, !1447}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1435, file: !561, line: 145, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !1423, line: 69, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !561, line: 136, size: 192, elements: !1441)
!1441 = !{!1442, !1444, !1445}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1440, file: !561, line: 137, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !1423, line: 58, baseType: !1383)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1440, file: !561, line: 138, baseType: !1439, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1440, file: !561, line: 139, baseType: !1439, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1435, file: !561, line: 146, baseType: !1438, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1435, file: !561, line: 152, baseType: !1433, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1430, file: !318, line: 130, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !1423, line: 50, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !1452, line: 240, size: 384, elements: !1453)
!1452 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1451, file: !1452, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1451, file: !1452, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !1451, file: !1452, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !1451, file: !1452, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !1451, file: !1452, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !1451, file: !1452, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !1451, file: !1452, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1451, file: !1452, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !1451, file: !1452, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !1451, file: !1452, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1451, file: !1452, line: 321, baseType: !1465, size: 320, offset: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !1452, line: 315, size: 320, elements: !1466)
!1466 = !{!1467, !2448, !2450, !2479, !2480}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1465, file: !1452, line: 316, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1469, size: 64, elements: !1484)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !1452, line: 183, baseType: !1470)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !1452, line: 166, size: 64, elements: !1471)
!1471 = !{!1472, !1473, !1474, !1475, !1476, !1486, !1487, !1499, !1502, !1564, !2426, !2427, !2438, !2445}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !1470, file: !1452, line: 168, baseType: !1376, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !1470, file: !1452, line: 169, baseType: !7, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !1470, file: !1452, line: 170, baseType: !1381, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !1470, file: !1452, line: 171, baseType: !1449, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !1470, file: !1452, line: 172, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !1423, line: 53, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !1452, line: 359, size: 128, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !1479, file: !1452, line: 360, baseType: !1376, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1479, file: !1452, line: 361, baseType: !1483, size: 64, offset: 64)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1449, size: 64, elements: !1484)
!1484 = !{!1485}
!1485 = !DISubrange(count: 1)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !1470, file: !1452, line: 173, baseType: !189, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !1470, file: !1452, line: 174, baseType: !1488, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !1452, line: 133, baseType: !1489)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1452, line: 115, size: 32, elements: !1490)
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !1489, file: !1452, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !1489, file: !1452, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !1489, file: !1452, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !1489, file: !1452, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !1489, file: !1452, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !1489, file: !1452, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !1489, file: !1452, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1489, file: !1452, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !1470, file: !1452, line: 175, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !1452, line: 175, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !1470, file: !1452, line: 176, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1505, line: 75, size: 256, elements: !1506)
!1505 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1506 = !{!1507, !1522, !1523, !1524}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1504, file: !1505, line: 76, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1505, line: 68, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1505, line: 63, size: 320, elements: !1511)
!1511 = !{!1512, !1514, !1515, !1516}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1510, file: !1505, line: 64, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1510, file: !1505, line: 65, baseType: !1513, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1510, file: !1505, line: 66, baseType: !7, size: 32, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1510, file: !1505, line: 67, baseType: !1517, size: 128, offset: 192)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1518, size: 128, elements: !1520)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1505, line: 29, baseType: !1519)
!1519 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1520 = !{!1521}
!1521 = !DISubrange(count: 2)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1504, file: !1505, line: 77, baseType: !1508, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1504, file: !1505, line: 78, baseType: !7, size: 32, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1504, file: !1505, line: 79, baseType: !1525, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1505, line: 49, baseType: !1527)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1505, line: 45, size: 832, elements: !1528)
!1528 = !{!1529, !1530, !1531}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1527, file: !1505, line: 46, baseType: !1513, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1527, file: !1505, line: 47, baseType: !1503, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1527, file: !1505, line: 48, baseType: !1532, size: 704, offset: 128)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1533, line: 164, size: 704, elements: !1534)
!1533 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1534 = !{!1535, !1537, !1547, !1548, !1549, !1550, !1551, !1552, !1556, !1560, !1561, !1562, !1563}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1532, file: !1533, line: 166, baseType: !1536, size: 64)
!1536 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1532, file: !1533, line: 167, baseType: !1538, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1533, line: 157, size: 192, elements: !1540)
!1540 = !{!1541, !1542, !1543}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1539, file: !1533, line: 159, baseType: !1378, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1539, file: !1533, line: 160, baseType: !1538, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1539, file: !1533, line: 161, baseType: !1544, size: 32, offset: 128)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 32, elements: !1545)
!1545 = !{!1546}
!1546 = !DISubrange(count: 4)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1532, file: !1533, line: 168, baseType: !1378, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1532, file: !1533, line: 169, baseType: !1378, size: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1532, file: !1533, line: 170, baseType: !1378, size: 64, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1532, file: !1533, line: 171, baseType: !1536, size: 64, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1532, file: !1533, line: 172, baseType: !1376, size: 32, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1532, file: !1533, line: 176, baseType: !1553, size: 64, offset: 448)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!1538, !1380, !1536}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1532, file: !1533, line: 177, baseType: !1557, size: 64, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !1380, !1538}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1532, file: !1533, line: 178, baseType: !1380, size: 64, offset: 576)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1532, file: !1533, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1532, file: !1533, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1532, file: !1533, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !1470, file: !1452, line: 177, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !1423, line: 56, baseType: !1566)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !1568)
!1568 = !{!1569, !1602, !1608, !1619, !1638, !1649, !1654, !1661, !1667, !1680, !1688, !1726, !1731, !1759, !1776, !1777, !1782, !1791, !1797, !1802, !1806, !1810, !2075, !2124, !2130, !2136, !2143, !2156, !2170, !2187, !2199, !2221, !2236, !2408}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1567, file: !334, line: 3372, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1570, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !1570, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !1570, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !1570, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !1570, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !1570, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !1570, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !1570, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !1570, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !1570, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !1570, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !1570, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !1570, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !1570, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !1570, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !1570, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !1570, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !1570, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1570, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1570, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1570, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1570, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1570, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1570, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1570, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1570, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !1570, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !1570, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !1570, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1570, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1567, file: !334, line: 3373, baseType: !1603, size: 192)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !1604)
!1604 = !{!1605, !1606, !1607}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1603, file: !334, line: 403, baseType: !1570, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1603, file: !334, line: 404, baseType: !1565, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1603, file: !334, line: 405, baseType: !1565, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1567, file: !334, line: 3374, baseType: !1609, size: 320)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1609, file: !334, line: 1385, baseType: !1603, size: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1609, file: !334, line: 1386, baseType: !1613, size: 128, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !1614, line: 58, baseType: !1615)
!1614 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1614, line: 54, size: 128, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1615, file: !1614, line: 56, baseType: !1519, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1615, file: !1614, line: 57, baseType: !1536, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !1567, file: !334, line: 3375, baseType: !1620, size: 256)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !1621)
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1620, file: !334, line: 1398, baseType: !1603, size: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !1620, file: !334, line: 1399, baseType: !1624, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !1626, line: 52, size: 256, elements: !1627)
!1626 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1633, !1634}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1625, file: !1626, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !1625, file: !1626, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1625, file: !1626, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !1625, file: !1626, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1625, file: !1626, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !1625, file: !1626, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1625, file: !1626, line: 62, baseType: !1635, size: 192, offset: 64)
!1635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 192, elements: !1636)
!1636 = !{!1637}
!1637 = !DISubrange(count: 3)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !1567, file: !334, line: 3376, baseType: !1639, size: 256)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1639, file: !334, line: 1409, baseType: !1603, size: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1639, file: !334, line: 1410, baseType: !1643, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !1645, line: 27, size: 192, elements: !1646)
!1645 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1644, file: !1645, line: 29, baseType: !1613, size: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1644, file: !1645, line: 30, baseType: !189, size: 32, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1567, file: !334, line: 3377, baseType: !1650, size: 256)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1650, file: !334, line: 1438, baseType: !1603, size: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1650, file: !334, line: 1439, baseType: !1565, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1567, file: !334, line: 3378, baseType: !1655, size: 256)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !1656)
!1656 = !{!1657, !1658, !1659}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1655, file: !334, line: 1419, baseType: !1603, size: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1655, file: !334, line: 1420, baseType: !1376, size: 32, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1655, file: !334, line: 1421, baseType: !1660, size: 8, offset: 224)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 8, elements: !1484)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !1567, file: !334, line: 3379, baseType: !1662, size: 320)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !1663)
!1663 = !{!1664, !1665, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1662, file: !334, line: 1429, baseType: !1603, size: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1662, file: !334, line: 1430, baseType: !1565, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1662, file: !334, line: 1431, baseType: !1565, size: 64, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !1567, file: !334, line: 3380, baseType: !1668, size: 320)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1668, file: !334, line: 1461, baseType: !1603, size: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1668, file: !334, line: 1462, baseType: !1672, size: 128, offset: 192)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1673, line: 31, size: 128, elements: !1674)
!1673 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1674 = !{!1675, !1678, !1679}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1672, file: !1673, line: 32, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1375)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1672, file: !1673, line: 33, baseType: !7, size: 32, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1672, file: !1673, line: 34, baseType: !7, size: 32, offset: 96)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !1567, file: !334, line: 3381, baseType: !1681, size: 384)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1686, !1687}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1681, file: !334, line: 2508, baseType: !1603, size: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1681, file: !334, line: 2509, baseType: !1400, size: 32, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1681, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1681, file: !334, line: 2511, baseType: !1565, size: 64, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1681, file: !334, line: 2512, baseType: !1565, size: 64, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !1567, file: !334, line: 3382, baseType: !1689, size: 896)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1689, file: !334, line: 2653, baseType: !1681, size: 384)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1689, file: !334, line: 2654, baseType: !1565, size: 64, offset: 384)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1689, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1689, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1689, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1689, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1689, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1689, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1689, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1689, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1689, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1689, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1689, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1689, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1689, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1689, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1689, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1689, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1689, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1689, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1689, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1689, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1689, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1689, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1689, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1689, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1689, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1689, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1689, file: !334, line: 2705, baseType: !1565, size: 64, offset: 576)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1689, file: !334, line: 2706, baseType: !1565, size: 64, offset: 640)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1689, file: !334, line: 2707, baseType: !1565, size: 64, offset: 704)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1689, file: !334, line: 2708, baseType: !1565, size: 64, offset: 768)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1689, file: !334, line: 2711, baseType: !1724, size: 64, offset: 832)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !1567, file: !334, line: 3383, baseType: !1727, size: 960)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1727, file: !334, line: 2757, baseType: !1689, size: 896)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1727, file: !334, line: 2758, baseType: !1449, size: 64, offset: 896)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !1567, file: !334, line: 3384, baseType: !1732, size: 1472)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1733)
!1733 = !{!1734, !1755, !1756, !1757, !1758}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1732, file: !334, line: 3115, baseType: !1735, size: 1216)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1736)
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1735, file: !334, line: 2985, baseType: !1727, size: 960)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1735, file: !334, line: 2986, baseType: !1565, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1735, file: !334, line: 2987, baseType: !1565, size: 64, offset: 1024)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1735, file: !334, line: 2988, baseType: !1565, size: 64, offset: 1088)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1735, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1735, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1735, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1735, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1735, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1735, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1735, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1735, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1735, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1735, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1735, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1735, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1735, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1735, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1732, file: !334, line: 3117, baseType: !1565, size: 64, offset: 1216)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1732, file: !334, line: 3119, baseType: !1565, size: 64, offset: 1280)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1732, file: !334, line: 3121, baseType: !1565, size: 64, offset: 1344)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1732, file: !334, line: 3123, baseType: !1565, size: 64, offset: 1408)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !1567, file: !334, line: 3385, baseType: !1760, size: 1088)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1761)
!1761 = !{!1762, !1763, !1764}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1760, file: !334, line: 2875, baseType: !1727, size: 960)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1760, file: !334, line: 2876, baseType: !1449, size: 64, offset: 960)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1760, file: !334, line: 2877, baseType: !1765, size: 64, offset: 1024)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1767, line: 172, size: 128, elements: !1768)
!1767 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774, !1775}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1766, file: !1767, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1766, file: !1767, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1766, file: !1767, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1766, file: !1767, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1766, file: !1767, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1766, file: !1767, line: 195, baseType: !7, size: 32, offset: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1766, file: !1767, line: 199, baseType: !1565, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !1567, file: !334, line: 3386, baseType: !1735, size: 1216)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !1567, file: !334, line: 3387, baseType: !1778, size: 1280)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1779)
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1778, file: !334, line: 3094, baseType: !1735, size: 1216)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1778, file: !334, line: 3095, baseType: !1765, size: 64, offset: 1216)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !1567, file: !334, line: 3388, baseType: !1783, size: 1216)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1784)
!1784 = !{!1785, !1786, !1787, !1788, !1789, !1790}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1783, file: !334, line: 2825, baseType: !1689, size: 896)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1783, file: !334, line: 2827, baseType: !1565, size: 64, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1783, file: !334, line: 2828, baseType: !1565, size: 64, offset: 960)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1783, file: !334, line: 2829, baseType: !1565, size: 64, offset: 1024)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1783, file: !334, line: 2830, baseType: !1565, size: 64, offset: 1088)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1783, file: !334, line: 2831, baseType: !1565, size: 64, offset: 1152)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !1567, file: !334, line: 3389, baseType: !1792, size: 1024)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1793)
!1793 = !{!1794, !1795, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1792, file: !334, line: 2851, baseType: !1727, size: 960)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1792, file: !334, line: 2852, baseType: !1376, size: 32, offset: 960)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1792, file: !334, line: 2853, baseType: !1376, size: 32, offset: 992)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !1567, file: !334, line: 3390, baseType: !1798, size: 1024)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1799)
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1798, file: !334, line: 2858, baseType: !1727, size: 960)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1798, file: !334, line: 2859, baseType: !1765, size: 64, offset: 960)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !1567, file: !334, line: 3391, baseType: !1803, size: 960)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1803, file: !334, line: 2863, baseType: !1727, size: 960)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1567, file: !334, line: 3392, baseType: !1807, size: 1472)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1808)
!1808 = !{!1809}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1807, file: !334, line: 3305, baseType: !1732, size: 1472)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1567, file: !334, line: 3393, baseType: !1811, size: 1792)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1812)
!1812 = !{!1813, !1814, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1811, file: !334, line: 3249, baseType: !1732, size: 1472)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1811, file: !334, line: 3251, baseType: !1815, size: 64, offset: 1472)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1817, line: 463, size: 1152, elements: !1818)
!1817 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1818 = !{!1819, !1822, !1853, !1854, !1995, !1998, !1999, !2000, !2001, !2002, !2003, !2027, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1816, file: !1817, line: 464, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1817, line: 464, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1816, file: !1817, line: 467, baseType: !1823, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1825)
!1825 = !{!1826, !1828, !1829, !1842, !1843, !1844, !1845, !1846, !1847, !1849, !1851, !1852}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1824, file: !318, line: 377, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !1423, line: 111, baseType: !1406)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1824, file: !318, line: 378, baseType: !1827, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1824, file: !318, line: 381, baseType: !1830, size: 64, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1832)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1833)
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1832, file: !318, line: 282, baseType: !1835, size: 128)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1836)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1837)
!1837 = !{!1838, !1839, !1840}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1836, file: !318, line: 281, baseType: !7, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1836, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1836, file: !318, line: 281, baseType: !1841, size: 64, offset: 64)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1827, size: 64, elements: !1484)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1824, file: !318, line: 384, baseType: !1376, size: 32, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1824, file: !318, line: 387, baseType: !1376, size: 32, offset: 224)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1824, file: !318, line: 390, baseType: !1376, size: 32, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1824, file: !318, line: 394, baseType: !1830, size: 64, offset: 320)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1824, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1824, file: !318, line: 399, baseType: !1848, size: 64, offset: 416)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !1520)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1824, file: !318, line: 402, baseType: !1850, size: 64, offset: 480)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1520)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1824, file: !318, line: 406, baseType: !1376, size: 32, offset: 544)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1824, file: !318, line: 409, baseType: !1376, size: 32, offset: 576)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1816, file: !1817, line: 470, baseType: !1434, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1816, file: !1817, line: 473, baseType: !1855, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1767, line: 39, size: 1152, elements: !1857)
!1857 = !{!1858, !1910, !1923, !1936, !1937, !1949, !1950, !1954, !1955, !1956, !1957, !1958}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1856, file: !1767, line: 41, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1860, line: 144, baseType: !1861)
!1860 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1860, line: 100, size: 896, elements: !1863)
!1863 = !{!1864, !1872, !1877, !1882, !1884, !1887, !1888, !1889, !1890, !1891, !1896, !1898, !1899, !1904, !1909}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1862, file: !1860, line: 102, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1860, line: 52, baseType: !1866)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1860, line: 47, baseType: !7)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1862, file: !1860, line: 105, baseType: !1873, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1860, line: 59, baseType: !1874)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!1376, !1870, !1870}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1862, file: !1860, line: 108, baseType: !1878, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1860, line: 63, baseType: !1879)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !1380}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1862, file: !1860, line: 111, baseType: !1883, size: 64, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1862, file: !1860, line: 114, baseType: !1885, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1886, line: 46, baseType: !1519)
!1886 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1862, file: !1860, line: 117, baseType: !1885, size: 64, offset: 320)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1862, file: !1860, line: 120, baseType: !1885, size: 64, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1862, file: !1860, line: 124, baseType: !7, size: 32, offset: 448)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1862, file: !1860, line: 128, baseType: !7, size: 32, offset: 480)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1862, file: !1860, line: 131, baseType: !1892, size: 64, offset: 512)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1860, line: 75, baseType: !1893)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!1380, !1885, !1885}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1862, file: !1860, line: 132, baseType: !1897, size: 64, offset: 576)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1860, line: 78, baseType: !1879)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1862, file: !1860, line: 135, baseType: !1380, size: 64, offset: 640)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1862, file: !1860, line: 136, baseType: !1900, size: 64, offset: 704)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1860, line: 82, baseType: !1901)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!1380, !1380, !1885, !1885}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1862, file: !1860, line: 137, baseType: !1905, size: 64, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1860, line: 83, baseType: !1906)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !1380, !1380}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1862, file: !1860, line: 141, baseType: !7, size: 32, offset: 832)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1856, file: !1767, line: 48, baseType: !1911, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !561, line: 35, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !561, line: 35, size: 128, elements: !1914)
!1914 = !{!1915}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1913, file: !561, line: 35, baseType: !1916, size: 128)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !561, line: 33, baseType: !1917)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !561, line: 33, size: 128, elements: !1918)
!1918 = !{!1919, !1920, !1921}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1917, file: !561, line: 33, baseType: !7, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1917, file: !561, line: 33, baseType: !7, size: 32, offset: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1917, file: !561, line: 33, baseType: !1922, size: 64, offset: 64)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1443, size: 64, elements: !1484)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1856, file: !1767, line: 51, baseType: !1924, size: 64, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1926)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1927)
!1927 = !{!1928}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1926, file: !334, line: 183, baseType: !1929, size: 128)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1930)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1931)
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1930, file: !334, line: 182, baseType: !7, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1930, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1930, file: !334, line: 182, baseType: !1935, size: 64, offset: 64)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1565, size: 64, elements: !1484)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1856, file: !1767, line: 54, baseType: !1565, size: 64, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1856, file: !1767, line: 57, baseType: !1938, size: 128, offset: 256)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1939, line: 31, size: 128, elements: !1940)
!1939 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1940 = !{!1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1938, file: !1939, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1938, file: !1939, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1938, file: !1939, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1938, file: !1939, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1938, file: !1939, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1938, file: !1939, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1938, file: !1939, line: 56, baseType: !1948, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !1423, line: 47, baseType: !1503)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1856, file: !1767, line: 60, baseType: !1938, size: 128, offset: 384)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1856, file: !1767, line: 64, baseType: !1951, size: 64, offset: 512)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1953, line: 33, flags: DIFlagFwdDecl)
!1953 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1856, file: !1767, line: 67, baseType: !1565, size: 64, offset: 576)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1856, file: !1767, line: 73, baseType: !1859, size: 64, offset: 640)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1856, file: !1767, line: 77, baseType: !1948, size: 64, offset: 704)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1856, file: !1767, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1856, file: !1767, line: 82, baseType: !1959, size: 320, offset: 832)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1960, line: 62, size: 320, elements: !1961)
!1960 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1961 = !{!1962, !1968, !1969, !1970, !1971, !1978}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1959, file: !1960, line: 63, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1960, line: 56, size: 128, elements: !1965)
!1965 = !{!1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1964, file: !1960, line: 57, baseType: !1963, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1964, file: !1960, line: 58, baseType: !1660, size: 8, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1959, file: !1960, line: 64, baseType: !7, size: 32, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1959, file: !1960, line: 66, baseType: !7, size: 32, offset: 96)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1959, file: !1960, line: 68, baseType: !1375, size: 8, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1959, file: !1960, line: 70, baseType: !1972, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1960, line: 37, size: 128, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1973, file: !1960, line: 39, baseType: !1972, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1973, file: !1960, line: 40, baseType: !1977, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1959, file: !1960, line: 71, baseType: !1979, size: 64, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1960, line: 45, size: 320, elements: !1981)
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1980, file: !1960, line: 47, baseType: !1979, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1980, file: !1960, line: 48, baseType: !1984, size: 256, offset: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !1985)
!1985 = !{!1986, !1988, !1989, !1994}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1984, file: !334, line: 1884, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1984, file: !334, line: 1885, baseType: !1987, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1984, file: !334, line: 1891, baseType: !1990, size: 64, offset: 128)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1984, file: !334, line: 1891, size: 64, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1990, file: !334, line: 1891, baseType: !1443, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1990, file: !334, line: 1891, baseType: !1565, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1984, file: !334, line: 1892, baseType: !1977, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1816, file: !1817, line: 476, baseType: !1996, size: 64, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1817, line: 476, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1816, file: !1817, line: 479, baseType: !1859, size: 64, offset: 320)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1816, file: !1817, line: 484, baseType: !1565, size: 64, offset: 384)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1816, file: !1817, line: 488, baseType: !1565, size: 64, offset: 448)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1816, file: !1817, line: 493, baseType: !1565, size: 64, offset: 512)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1816, file: !1817, line: 496, baseType: !1565, size: 64, offset: 576)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1816, file: !1817, line: 501, baseType: !2004, size: 64, offset: 640)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !2006)
!2006 = !{!2007, !2010, !2011, !2012, !2013, !2015, !2016, !2021, !2022, !2023, !2024, !2025, !2026}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !2005, file: !329, line: 2356, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !2005, file: !329, line: 2357, baseType: !1381, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !2005, file: !329, line: 2358, baseType: !1376, size: 32, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !2005, file: !329, line: 2359, baseType: !1376, size: 32, offset: 160)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !2005, file: !329, line: 2360, baseType: !2014, size: 128, offset: 192)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 128, elements: !1545)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !2005, file: !329, line: 2364, baseType: !1376, size: 32, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !2005, file: !329, line: 2367, baseType: !2017, size: 128, offset: 384)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2017, file: !329, line: 2351, baseType: !1449, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2017, file: !329, line: 2352, baseType: !1536, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !2005, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !2005, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !2005, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !2005, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !2005, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !2005, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1816, file: !1817, line: 504, baseType: !2028, size: 64, offset: 704)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1817, line: 504, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1816, file: !1817, line: 507, baseType: !1859, size: 64, offset: 768)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1816, file: !1817, line: 510, baseType: !1376, size: 32, offset: 832)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1816, file: !1817, line: 513, baseType: !1376, size: 32, offset: 864)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1816, file: !1817, line: 516, baseType: !1400, size: 32, offset: 896)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1816, file: !1817, line: 519, baseType: !1400, size: 32, offset: 928)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1816, file: !1817, line: 522, baseType: !7, size: 32, offset: 960)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1816, file: !1817, line: 523, baseType: !7, size: 32, offset: 992)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1816, file: !1817, line: 528, baseType: !1381, size: 64, offset: 1024)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1816, file: !1817, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1816, file: !1817, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1816, file: !1817, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1816, file: !1817, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1816, file: !1817, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1816, file: !1817, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1816, file: !1817, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1816, file: !1817, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1816, file: !1817, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1816, file: !1817, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1816, file: !1817, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1816, file: !1817, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1816, file: !1817, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1816, file: !1817, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1816, file: !1817, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1816, file: !1817, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1811, file: !334, line: 3254, baseType: !1565, size: 64, offset: 1536)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1811, file: !334, line: 3257, baseType: !1565, size: 64, offset: 1600)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1811, file: !334, line: 3258, baseType: !1565, size: 64, offset: 1664)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1811, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1811, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1811, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1811, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1811, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1811, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1811, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1811, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1811, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1811, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1811, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1811, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1811, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1811, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1811, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1811, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1811, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1811, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1567, file: !334, line: 3394, baseType: !2076, size: 1344)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !2077)
!2077 = !{!2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2103, !2104, !2105, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2076, file: !334, line: 2280, baseType: !1603, size: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2076, file: !334, line: 2281, baseType: !1565, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2076, file: !334, line: 2282, baseType: !1565, size: 64, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !2076, file: !334, line: 2283, baseType: !1565, size: 64, offset: 320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2076, file: !334, line: 2284, baseType: !1565, size: 64, offset: 384)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2076, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !2076, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !2076, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !2076, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !2076, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !2076, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !2076, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2076, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !2076, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !2076, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !2076, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !2076, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !2076, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !2076, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !2076, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !2076, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2076, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !2076, file: !334, line: 2306, baseType: !2101, size: 32, offset: 544)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !2102, line: 31, baseType: !1376)
!2102 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !2076, file: !334, line: 2307, baseType: !1565, size: 64, offset: 576)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !2076, file: !334, line: 2308, baseType: !1565, size: 64, offset: 640)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2076, file: !334, line: 2314, baseType: !2106, size: 64, offset: 704)
!2106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !2107)
!2107 = !{!2108, !2109, !2110}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2106, file: !334, line: 2310, baseType: !1376, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2106, file: !334, line: 2311, baseType: !1381, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !2106, file: !334, line: 2312, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2076, file: !334, line: 2315, baseType: !1565, size: 64, offset: 768)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !2076, file: !334, line: 2316, baseType: !1565, size: 64, offset: 832)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !2076, file: !334, line: 2317, baseType: !1565, size: 64, offset: 896)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !2076, file: !334, line: 2318, baseType: !1565, size: 64, offset: 960)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !2076, file: !334, line: 2319, baseType: !1565, size: 64, offset: 1024)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !2076, file: !334, line: 2320, baseType: !1565, size: 64, offset: 1088)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2076, file: !334, line: 2321, baseType: !1565, size: 64, offset: 1152)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !2076, file: !334, line: 2322, baseType: !1565, size: 64, offset: 1216)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !2076, file: !334, line: 2324, baseType: !2122, size: 64, offset: 1280)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1567, file: !334, line: 3395, baseType: !2125, size: 320)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !2126)
!2126 = !{!2127, !2128, !2129}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2125, file: !334, line: 1470, baseType: !1603, size: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !2125, file: !334, line: 1471, baseType: !1565, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2125, file: !334, line: 1472, baseType: !1565, size: 64, offset: 256)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1567, file: !334, line: 3396, baseType: !2131, size: 320)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !2132)
!2132 = !{!2133, !2134, !2135}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2131, file: !334, line: 1483, baseType: !1603, size: 192)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2131, file: !334, line: 1484, baseType: !1376, size: 32, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2131, file: !334, line: 1485, baseType: !1935, size: 64, offset: 256)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !1567, file: !334, line: 3397, baseType: !2137, size: 384)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !2138)
!2138 = !{!2139, !2140, !2141, !2142}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2137, file: !334, line: 1830, baseType: !1603, size: 192)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2137, file: !334, line: 1831, baseType: !1400, size: 32, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2137, file: !334, line: 1832, baseType: !1565, size: 64, offset: 256)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !2137, file: !334, line: 1835, baseType: !1935, size: 64, offset: 320)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1567, file: !334, line: 3398, baseType: !2144, size: 704)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2155}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2144, file: !334, line: 1899, baseType: !1603, size: 192)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !2144, file: !334, line: 1902, baseType: !1565, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !2144, file: !334, line: 1905, baseType: !1443, size: 64, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2144, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !2144, file: !334, line: 1911, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1767, line: 117, size: 128, elements: !2153)
!2153 = !{!2154}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !2152, file: !1767, line: 120, baseType: !1938, size: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !2144, file: !334, line: 1914, baseType: !1984, size: 256, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1567, file: !334, line: 3399, baseType: !2157, size: 704)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !2158)
!2158 = !{!2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2157, file: !334, line: 2009, baseType: !1603, size: 192)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !2157, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !2157, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2157, file: !334, line: 2014, baseType: !1400, size: 32, offset: 224)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !2157, file: !334, line: 2016, baseType: !1565, size: 64, offset: 256)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !2157, file: !334, line: 2017, baseType: !1924, size: 64, offset: 320)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !2157, file: !334, line: 2019, baseType: !1565, size: 64, offset: 384)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !2157, file: !334, line: 2020, baseType: !1565, size: 64, offset: 448)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !2157, file: !334, line: 2021, baseType: !1565, size: 64, offset: 512)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !2157, file: !334, line: 2022, baseType: !1565, size: 64, offset: 576)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !2157, file: !334, line: 2023, baseType: !1565, size: 64, offset: 640)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1567, file: !334, line: 3400, baseType: !2171, size: 832)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !2172)
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2171, file: !334, line: 2431, baseType: !1603, size: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2171, file: !334, line: 2433, baseType: !1565, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !2171, file: !334, line: 2434, baseType: !1565, size: 64, offset: 256)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !2171, file: !334, line: 2435, baseType: !1565, size: 64, offset: 320)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !2171, file: !334, line: 2436, baseType: !1565, size: 64, offset: 384)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !2171, file: !334, line: 2437, baseType: !1924, size: 64, offset: 448)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !2171, file: !334, line: 2438, baseType: !1565, size: 64, offset: 512)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !2171, file: !334, line: 2440, baseType: !1565, size: 64, offset: 576)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !2171, file: !334, line: 2441, baseType: !1565, size: 64, offset: 640)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !2171, file: !334, line: 2443, baseType: !2183, size: 128, offset: 704)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !2184)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !2185)
!2185 = !{!2186}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2184, file: !334, line: 182, baseType: !1929, size: 128)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !1567, file: !334, line: 3401, baseType: !2188, size: 320)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !2189)
!2189 = !{!2190, !2191, !2198}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2188, file: !334, line: 3329, baseType: !1603, size: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2188, file: !334, line: 3330, baseType: !2192, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !2194)
!2194 = !{!2195, !2196, !2197}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2193, file: !334, line: 3322, baseType: !2192, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2193, file: !334, line: 3323, baseType: !2192, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2193, file: !334, line: 3324, baseType: !1565, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2188, file: !334, line: 3331, baseType: !2192, size: 64, offset: 256)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1567, file: !334, line: 3402, baseType: !2200, size: 256)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !2201)
!2201 = !{!2202, !2203}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2200, file: !334, line: 1541, baseType: !1603, size: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !2200, file: !334, line: 1542, baseType: !2204, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !2206)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !2207)
!2207 = !{!2208}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2206, file: !334, line: 1538, baseType: !2209, size: 192)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !2210)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !2211)
!2211 = !{!2212, !2213, !2214}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2210, file: !334, line: 1537, baseType: !7, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2210, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2210, file: !334, line: 1537, baseType: !2215, size: 128, offset: 64)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2216, size: 128, elements: !1484)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !2217)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !2218)
!2218 = !{!2219, !2220}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2217, file: !334, line: 1533, baseType: !1565, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2217, file: !334, line: 1534, baseType: !1565, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !1567, file: !334, line: 3403, baseType: !2222, size: 512)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !2223)
!2223 = !{!2224, !2225, !2226, !2227, !2233, !2234, !2235}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2222, file: !334, line: 1939, baseType: !1603, size: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2222, file: !334, line: 1940, baseType: !1400, size: 32, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2222, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !2222, file: !334, line: 1946, baseType: !2228, size: 32, offset: 256)
!2228 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !2229)
!2229 = !{!2230, !2231, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !2228, file: !334, line: 1943, baseType: !352, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !2228, file: !334, line: 1944, baseType: !359, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !2228, file: !334, line: 1945, baseType: !366, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !2222, file: !334, line: 1950, baseType: !1433, size: 64, offset: 320)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !2222, file: !334, line: 1951, baseType: !1433, size: 64, offset: 384)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2222, file: !334, line: 1953, baseType: !1935, size: 64, offset: 448)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !1567, file: !334, line: 3404, baseType: !2237, size: 1664)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !2238)
!2238 = !{!2239, !2240}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2237, file: !334, line: 3338, baseType: !1603, size: 192)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2237, file: !334, line: 3341, baseType: !2241, size: 1472, offset: 192)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !2242, line: 410, size: 1472, elements: !2243)
!2242 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2243 = !{!2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !2241, file: !2242, line: 412, baseType: !1376, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !2241, file: !2242, line: 413, baseType: !1376, size: 32, offset: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !2241, file: !2242, line: 414, baseType: !1376, size: 32, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !2241, file: !2242, line: 415, baseType: !1376, size: 32, offset: 96)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !2241, file: !2242, line: 416, baseType: !1376, size: 32, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !2241, file: !2242, line: 417, baseType: !1376, size: 32, offset: 160)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !2241, file: !2242, line: 418, baseType: !1375, size: 8, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !2241, file: !2242, line: 419, baseType: !1375, size: 8, offset: 200)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !2241, file: !2242, line: 420, baseType: !2253, size: 8, offset: 208)
!2253 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !2241, file: !2242, line: 421, baseType: !2253, size: 8, offset: 216)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !2241, file: !2242, line: 422, baseType: !2253, size: 8, offset: 224)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !2241, file: !2242, line: 423, baseType: !2253, size: 8, offset: 232)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !2241, file: !2242, line: 424, baseType: !2253, size: 8, offset: 240)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !2241, file: !2242, line: 425, baseType: !2253, size: 8, offset: 248)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !2241, file: !2242, line: 426, baseType: !2253, size: 8, offset: 256)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !2241, file: !2242, line: 427, baseType: !2253, size: 8, offset: 264)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !2241, file: !2242, line: 428, baseType: !2253, size: 8, offset: 272)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !2241, file: !2242, line: 429, baseType: !2253, size: 8, offset: 280)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !2241, file: !2242, line: 430, baseType: !2253, size: 8, offset: 288)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !2241, file: !2242, line: 431, baseType: !2253, size: 8, offset: 296)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !2241, file: !2242, line: 432, baseType: !2253, size: 8, offset: 304)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !2241, file: !2242, line: 433, baseType: !2253, size: 8, offset: 312)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !2241, file: !2242, line: 434, baseType: !2253, size: 8, offset: 320)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !2241, file: !2242, line: 435, baseType: !2253, size: 8, offset: 328)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !2241, file: !2242, line: 436, baseType: !2253, size: 8, offset: 336)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !2241, file: !2242, line: 437, baseType: !2253, size: 8, offset: 344)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !2241, file: !2242, line: 438, baseType: !2253, size: 8, offset: 352)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !2241, file: !2242, line: 439, baseType: !2253, size: 8, offset: 360)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !2241, file: !2242, line: 440, baseType: !2253, size: 8, offset: 368)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !2241, file: !2242, line: 441, baseType: !2253, size: 8, offset: 376)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !2241, file: !2242, line: 442, baseType: !2253, size: 8, offset: 384)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !2241, file: !2242, line: 443, baseType: !2253, size: 8, offset: 392)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !2241, file: !2242, line: 444, baseType: !2253, size: 8, offset: 400)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !2241, file: !2242, line: 445, baseType: !2253, size: 8, offset: 408)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !2241, file: !2242, line: 446, baseType: !2253, size: 8, offset: 416)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !2241, file: !2242, line: 447, baseType: !2253, size: 8, offset: 424)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !2241, file: !2242, line: 448, baseType: !2253, size: 8, offset: 432)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !2241, file: !2242, line: 449, baseType: !2253, size: 8, offset: 440)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !2241, file: !2242, line: 450, baseType: !2253, size: 8, offset: 448)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !2241, file: !2242, line: 451, baseType: !2253, size: 8, offset: 456)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !2241, file: !2242, line: 452, baseType: !2253, size: 8, offset: 464)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !2241, file: !2242, line: 453, baseType: !2253, size: 8, offset: 472)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !2241, file: !2242, line: 454, baseType: !2253, size: 8, offset: 480)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !2241, file: !2242, line: 455, baseType: !2253, size: 8, offset: 488)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !2241, file: !2242, line: 456, baseType: !2253, size: 8, offset: 496)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !2241, file: !2242, line: 457, baseType: !2253, size: 8, offset: 504)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !2241, file: !2242, line: 458, baseType: !2253, size: 8, offset: 512)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !2241, file: !2242, line: 459, baseType: !2253, size: 8, offset: 520)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !2241, file: !2242, line: 460, baseType: !2253, size: 8, offset: 528)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !2241, file: !2242, line: 461, baseType: !2253, size: 8, offset: 536)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !2241, file: !2242, line: 462, baseType: !2253, size: 8, offset: 544)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !2241, file: !2242, line: 463, baseType: !2253, size: 8, offset: 552)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !2241, file: !2242, line: 464, baseType: !2253, size: 8, offset: 560)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !2241, file: !2242, line: 465, baseType: !2253, size: 8, offset: 568)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !2241, file: !2242, line: 466, baseType: !2253, size: 8, offset: 576)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !2241, file: !2242, line: 467, baseType: !2253, size: 8, offset: 584)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !2241, file: !2242, line: 468, baseType: !2253, size: 8, offset: 592)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !2241, file: !2242, line: 469, baseType: !2253, size: 8, offset: 600)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !2241, file: !2242, line: 470, baseType: !2253, size: 8, offset: 608)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !2241, file: !2242, line: 471, baseType: !2253, size: 8, offset: 616)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !2241, file: !2242, line: 472, baseType: !2253, size: 8, offset: 624)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !2241, file: !2242, line: 473, baseType: !2253, size: 8, offset: 632)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !2241, file: !2242, line: 474, baseType: !2253, size: 8, offset: 640)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !2241, file: !2242, line: 475, baseType: !2253, size: 8, offset: 648)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !2241, file: !2242, line: 476, baseType: !2253, size: 8, offset: 656)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !2241, file: !2242, line: 477, baseType: !2253, size: 8, offset: 664)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !2241, file: !2242, line: 478, baseType: !2253, size: 8, offset: 672)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !2241, file: !2242, line: 479, baseType: !2253, size: 8, offset: 680)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !2241, file: !2242, line: 480, baseType: !2253, size: 8, offset: 688)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !2241, file: !2242, line: 481, baseType: !2253, size: 8, offset: 696)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !2241, file: !2242, line: 482, baseType: !2253, size: 8, offset: 704)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !2241, file: !2242, line: 483, baseType: !2253, size: 8, offset: 712)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !2241, file: !2242, line: 484, baseType: !2253, size: 8, offset: 720)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !2241, file: !2242, line: 485, baseType: !2253, size: 8, offset: 728)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !2241, file: !2242, line: 486, baseType: !2253, size: 8, offset: 736)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !2241, file: !2242, line: 487, baseType: !2253, size: 8, offset: 744)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !2241, file: !2242, line: 488, baseType: !2253, size: 8, offset: 752)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !2241, file: !2242, line: 489, baseType: !2253, size: 8, offset: 760)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !2241, file: !2242, line: 490, baseType: !2253, size: 8, offset: 768)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !2241, file: !2242, line: 491, baseType: !2253, size: 8, offset: 776)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !2241, file: !2242, line: 492, baseType: !2253, size: 8, offset: 784)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !2241, file: !2242, line: 493, baseType: !2253, size: 8, offset: 792)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !2241, file: !2242, line: 494, baseType: !2253, size: 8, offset: 800)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !2241, file: !2242, line: 495, baseType: !2253, size: 8, offset: 808)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !2241, file: !2242, line: 496, baseType: !2253, size: 8, offset: 816)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !2241, file: !2242, line: 497, baseType: !2253, size: 8, offset: 824)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !2241, file: !2242, line: 498, baseType: !2253, size: 8, offset: 832)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !2241, file: !2242, line: 499, baseType: !2253, size: 8, offset: 840)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !2241, file: !2242, line: 500, baseType: !2253, size: 8, offset: 848)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !2241, file: !2242, line: 501, baseType: !2253, size: 8, offset: 856)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !2241, file: !2242, line: 502, baseType: !2253, size: 8, offset: 864)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !2241, file: !2242, line: 503, baseType: !2253, size: 8, offset: 872)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !2241, file: !2242, line: 504, baseType: !2253, size: 8, offset: 880)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !2241, file: !2242, line: 505, baseType: !2253, size: 8, offset: 888)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !2241, file: !2242, line: 506, baseType: !2253, size: 8, offset: 896)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !2241, file: !2242, line: 507, baseType: !2253, size: 8, offset: 904)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !2241, file: !2242, line: 508, baseType: !2253, size: 8, offset: 912)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !2241, file: !2242, line: 509, baseType: !2253, size: 8, offset: 920)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !2241, file: !2242, line: 510, baseType: !2253, size: 8, offset: 928)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !2241, file: !2242, line: 511, baseType: !2253, size: 8, offset: 936)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !2241, file: !2242, line: 512, baseType: !2253, size: 8, offset: 944)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !2241, file: !2242, line: 513, baseType: !2253, size: 8, offset: 952)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !2241, file: !2242, line: 514, baseType: !2253, size: 8, offset: 960)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !2241, file: !2242, line: 515, baseType: !2253, size: 8, offset: 968)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !2241, file: !2242, line: 516, baseType: !2253, size: 8, offset: 976)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !2241, file: !2242, line: 517, baseType: !2253, size: 8, offset: 984)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !2241, file: !2242, line: 518, baseType: !2253, size: 8, offset: 992)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !2241, file: !2242, line: 519, baseType: !2253, size: 8, offset: 1000)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !2241, file: !2242, line: 520, baseType: !2253, size: 8, offset: 1008)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !2241, file: !2242, line: 521, baseType: !2253, size: 8, offset: 1016)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !2241, file: !2242, line: 522, baseType: !2253, size: 8, offset: 1024)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !2241, file: !2242, line: 523, baseType: !2253, size: 8, offset: 1032)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !2241, file: !2242, line: 524, baseType: !2253, size: 8, offset: 1040)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !2241, file: !2242, line: 525, baseType: !2253, size: 8, offset: 1048)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !2241, file: !2242, line: 526, baseType: !2253, size: 8, offset: 1056)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !2241, file: !2242, line: 527, baseType: !2253, size: 8, offset: 1064)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !2241, file: !2242, line: 528, baseType: !2253, size: 8, offset: 1072)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !2241, file: !2242, line: 529, baseType: !2253, size: 8, offset: 1080)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !2241, file: !2242, line: 530, baseType: !2253, size: 8, offset: 1088)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !2241, file: !2242, line: 531, baseType: !2253, size: 8, offset: 1096)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !2241, file: !2242, line: 532, baseType: !2253, size: 8, offset: 1104)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !2241, file: !2242, line: 533, baseType: !2253, size: 8, offset: 1112)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !2241, file: !2242, line: 534, baseType: !2253, size: 8, offset: 1120)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !2241, file: !2242, line: 535, baseType: !2253, size: 8, offset: 1128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !2241, file: !2242, line: 536, baseType: !2253, size: 8, offset: 1136)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !2241, file: !2242, line: 537, baseType: !2253, size: 8, offset: 1144)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !2241, file: !2242, line: 538, baseType: !2253, size: 8, offset: 1152)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !2241, file: !2242, line: 539, baseType: !2253, size: 8, offset: 1160)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !2241, file: !2242, line: 540, baseType: !2253, size: 8, offset: 1168)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !2241, file: !2242, line: 541, baseType: !2253, size: 8, offset: 1176)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !2241, file: !2242, line: 542, baseType: !2253, size: 8, offset: 1184)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !2241, file: !2242, line: 543, baseType: !2253, size: 8, offset: 1192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !2241, file: !2242, line: 544, baseType: !2253, size: 8, offset: 1200)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !2241, file: !2242, line: 545, baseType: !2253, size: 8, offset: 1208)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !2241, file: !2242, line: 546, baseType: !2253, size: 8, offset: 1216)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !2241, file: !2242, line: 547, baseType: !2253, size: 8, offset: 1224)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !2241, file: !2242, line: 548, baseType: !2253, size: 8, offset: 1232)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !2241, file: !2242, line: 549, baseType: !2253, size: 8, offset: 1240)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !2241, file: !2242, line: 550, baseType: !2253, size: 8, offset: 1248)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !2241, file: !2242, line: 551, baseType: !2253, size: 8, offset: 1256)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !2241, file: !2242, line: 552, baseType: !2253, size: 8, offset: 1264)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !2241, file: !2242, line: 553, baseType: !2253, size: 8, offset: 1272)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !2241, file: !2242, line: 554, baseType: !2253, size: 8, offset: 1280)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !2241, file: !2242, line: 555, baseType: !2253, size: 8, offset: 1288)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !2241, file: !2242, line: 556, baseType: !2253, size: 8, offset: 1296)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !2241, file: !2242, line: 557, baseType: !2253, size: 8, offset: 1304)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !2241, file: !2242, line: 558, baseType: !2253, size: 8, offset: 1312)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !2241, file: !2242, line: 559, baseType: !2253, size: 8, offset: 1320)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !2241, file: !2242, line: 560, baseType: !2253, size: 8, offset: 1328)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !2241, file: !2242, line: 561, baseType: !2253, size: 8, offset: 1336)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !2241, file: !2242, line: 562, baseType: !2253, size: 8, offset: 1344)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !2241, file: !2242, line: 563, baseType: !2253, size: 8, offset: 1352)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !2241, file: !2242, line: 564, baseType: !2253, size: 8, offset: 1360)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !2241, file: !2242, line: 565, baseType: !2253, size: 8, offset: 1368)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !2241, file: !2242, line: 566, baseType: !2253, size: 8, offset: 1376)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !2241, file: !2242, line: 567, baseType: !2253, size: 8, offset: 1384)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !2241, file: !2242, line: 568, baseType: !2253, size: 8, offset: 1392)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !2241, file: !2242, line: 569, baseType: !2253, size: 8, offset: 1400)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !2241, file: !2242, line: 570, baseType: !2253, size: 8, offset: 1408)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !2241, file: !2242, line: 571, baseType: !2253, size: 8, offset: 1416)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !2241, file: !2242, line: 572, baseType: !2253, size: 8, offset: 1424)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !2241, file: !2242, line: 573, baseType: !2253, size: 8, offset: 1432)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !2241, file: !2242, line: 574, baseType: !2253, size: 8, offset: 1440)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !1567, file: !334, line: 3405, baseType: !2409, size: 384)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !2410)
!2410 = !{!2411, !2412}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2409, file: !334, line: 3353, baseType: !1603, size: 192)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2409, file: !334, line: 3356, baseType: !2413, size: 192, offset: 192)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !2242, line: 578, size: 192, elements: !2414)
!2414 = !{!2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2413, file: !2242, line: 580, baseType: !1376, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2413, file: !2242, line: 581, baseType: !1376, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2413, file: !2242, line: 582, baseType: !1376, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2413, file: !2242, line: 583, baseType: !1376, size: 32, offset: 96)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2413, file: !2242, line: 584, baseType: !1375, size: 8, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2413, file: !2242, line: 585, baseType: !1375, size: 8, offset: 136)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2413, file: !2242, line: 586, baseType: !1375, size: 8, offset: 144)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2413, file: !2242, line: 587, baseType: !1375, size: 8, offset: 152)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2413, file: !2242, line: 588, baseType: !1375, size: 8, offset: 160)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2413, file: !2242, line: 589, baseType: !1375, size: 8, offset: 168)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2413, file: !2242, line: 590, baseType: !1375, size: 8, offset: 176)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !1470, file: !1452, line: 178, baseType: !1406, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !1470, file: !1452, line: 179, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !1452, line: 150, baseType: !2430)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !1452, line: 142, size: 320, elements: !2431)
!2431 = !{!2432, !2433, !2434, !2435, !2436, !2437}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !2430, file: !1452, line: 144, baseType: !1565, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2430, file: !1452, line: 145, baseType: !1449, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2430, file: !1452, line: 146, baseType: !1449, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2430, file: !1452, line: 147, baseType: !2101, size: 32, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2430, file: !1452, line: 148, baseType: !7, size: 32, offset: 224)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !2430, file: !1452, line: 149, baseType: !1375, size: 8, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !1470, file: !1452, line: 180, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !1452, line: 162, baseType: !2441)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !1452, line: 159, size: 128, elements: !2442)
!2442 = !{!2443, !2444}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2441, file: !1452, line: 160, baseType: !1565, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2441, file: !1452, line: 161, baseType: !1536, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !1470, file: !1452, line: 181, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !1452, line: 181, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !1465, file: !1452, line: 317, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1536, size: 64, elements: !1484)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !1465, file: !1452, line: 318, baseType: !2451, size: 320)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !1452, line: 188, size: 320, elements: !2452)
!2452 = !{!2453, !2455, !2478}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !2451, file: !1452, line: 190, baseType: !2454, size: 192)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1469, size: 192, elements: !1636)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2451, file: !1452, line: 193, baseType: !2456, size: 64, offset: 192)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !1452, line: 206, size: 320, elements: !2458)
!2458 = !{!2459, !2463, !2464, !2465, !2477}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !2457, file: !1452, line: 208, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !1423, line: 62, baseType: !2462)
!2462 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1423, line: 61, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2457, file: !1452, line: 211, baseType: !7, size: 32, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2457, file: !1452, line: 214, baseType: !1536, size: 64, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2457, file: !1452, line: 224, baseType: !2466, size: 64, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !1452, line: 202, baseType: !2468)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !1452, line: 202, size: 128, elements: !2469)
!2469 = !{!2470}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2468, file: !1452, line: 202, baseType: !2471, size: 128)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !1452, line: 200, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !1452, line: 200, size: 128, elements: !2473)
!2473 = !{!2474, !2475, !2476}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2472, file: !1452, line: 200, baseType: !7, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2472, file: !1452, line: 200, baseType: !7, size: 32, offset: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2472, file: !1452, line: 200, baseType: !1483, size: 64, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !2457, file: !1452, line: 234, baseType: !2466, size: 64, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2451, file: !1452, line: 197, baseType: !1536, size: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !1465, file: !1452, line: 319, baseType: !1625, size: 256)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !1465, file: !1452, line: 320, baseType: !1644, size: 192)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1425, file: !318, line: 134, baseType: !1380, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1425, file: !318, line: 137, baseType: !1565, size: 64, offset: 256)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1425, file: !318, line: 138, baseType: !1400, size: 32, offset: 320)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1425, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1425, file: !318, line: 144, baseType: !1376, size: 32, offset: 384)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1425, file: !318, line: 145, baseType: !1376, size: 32, offset: 416)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1425, file: !318, line: 146, baseType: !2488, size: 64, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !1536)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1407, file: !318, line: 220, baseType: !1410, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1407, file: !318, line: 223, baseType: !1380, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1407, file: !318, line: 226, baseType: !2492, size: 64, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !318, line: 185, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1407, file: !318, line: 229, baseType: !2495, size: 128, offset: 256)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2496, size: 128, elements: !1520)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1407, file: !318, line: 232, baseType: !1406, size: 64, offset: 384)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1407, file: !318, line: 233, baseType: !1406, size: 64, offset: 448)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1407, file: !318, line: 238, baseType: !2501, size: 64, offset: 512)
!2501 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !2502)
!2502 = !{!2503, !2509}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !2501, file: !318, line: 236, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !2506)
!2506 = !{!2507, !2508}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2505, file: !318, line: 275, baseType: !1433, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !2505, file: !318, line: 278, baseType: !1433, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2501, file: !318, line: 237, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !2512)
!2512 = !{!2513, !2514, !2515, !2516, !2517}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !2511, file: !318, line: 261, baseType: !1449, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !2511, file: !318, line: 262, baseType: !1449, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2511, file: !318, line: 266, baseType: !1449, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !2511, file: !318, line: 267, baseType: !1449, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2511, file: !318, line: 270, baseType: !1376, size: 32, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1407, file: !318, line: 241, baseType: !2488, size: 64, offset: 576)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1407, file: !318, line: 244, baseType: !1376, size: 32, offset: 640)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1407, file: !318, line: 247, baseType: !1376, size: 32, offset: 672)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1407, file: !318, line: 250, baseType: !1376, size: 32, offset: 704)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1407, file: !318, line: 253, baseType: !1376, size: 32, offset: 736)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1407, file: !318, line: 256, baseType: !1376, size: 32, offset: 768)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1387, file: !561, line: 327, baseType: !1565, size: 64, offset: 192)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !1384, file: !561, line: 739, baseType: !2526, size: 448)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !561, line: 350, size: 448, elements: !2527)
!2527 = !{!2528, !2534}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !2526, file: !561, line: 353, baseType: !2529, size: 384)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !561, line: 333, size: 384, elements: !2530)
!2530 = !{!2531, !2532, !2533}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2529, file: !561, line: 336, baseType: !1387, size: 256)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !2529, file: !561, line: 343, baseType: !1972, size: 64, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !2529, file: !561, line: 344, baseType: !1979, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2526, file: !561, line: 359, baseType: !1935, size: 64, offset: 384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !1384, file: !561, line: 740, baseType: !2536, size: 512)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !561, line: 365, size: 512, elements: !2537)
!2537 = !{!2538, !2539, !2540}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !2536, file: !561, line: 368, baseType: !2529, size: 384)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !2536, file: !561, line: 373, baseType: !1565, size: 64, offset: 384)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !2536, file: !561, line: 374, baseType: !1565, size: 64, offset: 448)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !1384, file: !561, line: 741, baseType: !2542, size: 576)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !561, line: 380, size: 576, elements: !2543)
!2543 = !{!2544, !2545}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !2542, file: !561, line: 383, baseType: !2536, size: 512)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2542, file: !561, line: 389, baseType: !1935, size: 64, offset: 512)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1384, file: !561, line: 742, baseType: !2547, size: 320)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !561, line: 395, size: 320, elements: !2548)
!2548 = !{!2549, !2550}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2547, file: !561, line: 397, baseType: !1387, size: 256)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !2547, file: !561, line: 400, baseType: !1433, size: 64, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !1384, file: !561, line: 743, baseType: !2552, size: 448)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !561, line: 406, size: 448, elements: !2553)
!2553 = !{!2554, !2555, !2556, !2557}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2552, file: !561, line: 408, baseType: !1387, size: 256)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !2552, file: !561, line: 412, baseType: !1565, size: 64, offset: 256)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2552, file: !561, line: 420, baseType: !1565, size: 64, offset: 320)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !2552, file: !561, line: 423, baseType: !1433, size: 64, offset: 384)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !1384, file: !561, line: 744, baseType: !2559, size: 384)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !561, line: 429, size: 384, elements: !2560)
!2560 = !{!2561, !2562, !2563}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2559, file: !561, line: 431, baseType: !1387, size: 256)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !2559, file: !561, line: 434, baseType: !1565, size: 64, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2559, file: !561, line: 437, baseType: !1433, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !1384, file: !561, line: 745, baseType: !2565, size: 384)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !561, line: 443, size: 384, elements: !2566)
!2566 = !{!2567, !2568, !2569}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2565, file: !561, line: 445, baseType: !1387, size: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !2565, file: !561, line: 449, baseType: !1565, size: 64, offset: 256)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !2565, file: !561, line: 453, baseType: !1433, size: 64, offset: 320)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !1384, file: !561, line: 746, baseType: !2571, size: 320)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !561, line: 459, size: 320, elements: !2572)
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2571, file: !561, line: 461, baseType: !1387, size: 256)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !2571, file: !561, line: 464, baseType: !1565, size: 64, offset: 256)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !1384, file: !561, line: 747, baseType: !2576, size: 768)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !561, line: 469, size: 768, elements: !2577)
!2577 = !{!2578, !2579, !2580, !2581, !2582}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2576, file: !561, line: 471, baseType: !1387, size: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2576, file: !561, line: 474, baseType: !7, size: 32, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2576, file: !561, line: 475, baseType: !7, size: 32, offset: 288)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !2576, file: !561, line: 478, baseType: !1565, size: 64, offset: 320)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2576, file: !561, line: 481, baseType: !2583, size: 384, offset: 384)
!2583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2584, size: 384, elements: !1484)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !334, line: 1917, size: 384, elements: !2585)
!2585 = !{!2586, !2587, !2588}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !2584, file: !334, line: 1920, baseType: !1984, size: 256)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !2584, file: !334, line: 1921, baseType: !1565, size: 64, offset: 256)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2584, file: !334, line: 1922, baseType: !1400, size: 32, offset: 320)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !1384, file: !561, line: 748, baseType: !2590, size: 320)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !561, line: 487, size: 320, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2590, file: !561, line: 490, baseType: !1387, size: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !2590, file: !561, line: 494, baseType: !1376, size: 32, offset: 256)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !1384, file: !561, line: 749, baseType: !2595, size: 384)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !561, line: 500, size: 384, elements: !2596)
!2596 = !{!2597, !2598, !2599}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2595, file: !561, line: 502, baseType: !1387, size: 256)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !2595, file: !561, line: 506, baseType: !1433, size: 64, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2595, file: !561, line: 510, baseType: !1433, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !1384, file: !561, line: 750, baseType: !2601, size: 320)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !561, line: 529, size: 320, elements: !2602)
!2602 = !{!2603, !2604}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2601, file: !561, line: 531, baseType: !1387, size: 256)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2601, file: !561, line: 540, baseType: !1433, size: 64, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !1384, file: !561, line: 751, baseType: !2606, size: 704)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !561, line: 546, size: 704, elements: !2607)
!2607 = !{!2608, !2609, !2610, !2611, !2612, !2613, !2614}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !2606, file: !561, line: 549, baseType: !2536, size: 512)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2606, file: !561, line: 553, baseType: !1381, size: 64, offset: 512)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !2606, file: !561, line: 557, baseType: !1375, size: 8, offset: 576)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !2606, file: !561, line: 558, baseType: !1375, size: 8, offset: 584)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !2606, file: !561, line: 559, baseType: !1375, size: 8, offset: 592)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !2606, file: !561, line: 560, baseType: !1375, size: 8, offset: 600)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2606, file: !561, line: 566, baseType: !1935, size: 64, offset: 640)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !1384, file: !561, line: 752, baseType: !2616, size: 384)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !561, line: 571, size: 384, elements: !2617)
!2617 = !{!2618, !2619}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2616, file: !561, line: 573, baseType: !2547, size: 320)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2616, file: !561, line: 577, baseType: !1565, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !1384, file: !561, line: 753, baseType: !2621, size: 576)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !561, line: 600, size: 576, elements: !2622)
!2622 = !{!2623, !2624, !2625, !2626, !2635}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2621, file: !561, line: 602, baseType: !2547, size: 320)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2621, file: !561, line: 605, baseType: !1565, size: 64, offset: 320)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !2621, file: !561, line: 609, baseType: !1885, size: 64, offset: 384)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !2621, file: !561, line: 612, baseType: !2627, size: 64, offset: 448)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !561, line: 581, size: 320, elements: !2629)
!2629 = !{!2630, !2631, !2632, !2633, !2634}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2628, file: !561, line: 583, baseType: !366, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2628, file: !561, line: 586, baseType: !1565, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !2628, file: !561, line: 589, baseType: !1565, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !2628, file: !561, line: 592, baseType: !1565, size: 64, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2628, file: !561, line: 595, baseType: !1565, size: 64, offset: 256)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !2621, file: !561, line: 616, baseType: !1433, size: 64, offset: 512)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !1384, file: !561, line: 754, baseType: !2637, size: 512)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !561, line: 622, size: 512, elements: !2638)
!2638 = !{!2639, !2640, !2641, !2642}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2637, file: !561, line: 624, baseType: !2547, size: 320)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2637, file: !561, line: 628, baseType: !1565, size: 64, offset: 320)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !2637, file: !561, line: 632, baseType: !1565, size: 64, offset: 384)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !2637, file: !561, line: 636, baseType: !1565, size: 64, offset: 448)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !1384, file: !561, line: 755, baseType: !2644, size: 704)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !561, line: 642, size: 704, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !2644, file: !561, line: 644, baseType: !2637, size: 512)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !2644, file: !561, line: 648, baseType: !1565, size: 64, offset: 512)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !2644, file: !561, line: 652, baseType: !1565, size: 64, offset: 576)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !2644, file: !561, line: 653, baseType: !1565, size: 64, offset: 640)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !1384, file: !561, line: 756, baseType: !2651, size: 448)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !561, line: 663, size: 448, elements: !2652)
!2652 = !{!2653, !2654, !2655}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2651, file: !561, line: 665, baseType: !2547, size: 320)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2651, file: !561, line: 668, baseType: !1565, size: 64, offset: 320)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2651, file: !561, line: 673, baseType: !1565, size: 64, offset: 384)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !1384, file: !561, line: 757, baseType: !2657, size: 384)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !561, line: 694, size: 384, elements: !2658)
!2658 = !{!2659, !2660}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2657, file: !561, line: 696, baseType: !2547, size: 320)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2657, file: !561, line: 699, baseType: !1565, size: 64, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !1384, file: !561, line: 758, baseType: !2662, size: 384)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !561, line: 681, size: 384, elements: !2663)
!2663 = !{!2664, !2665, !2666}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2662, file: !561, line: 683, baseType: !1387, size: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !2662, file: !561, line: 686, baseType: !1565, size: 64, offset: 256)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !2662, file: !561, line: 689, baseType: !1565, size: 64, offset: 320)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !1384, file: !561, line: 759, baseType: !2668, size: 384)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !561, line: 707, size: 384, elements: !2669)
!2669 = !{!2670, !2671, !2672}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2668, file: !561, line: 709, baseType: !1387, size: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !2668, file: !561, line: 712, baseType: !1565, size: 64, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !2668, file: !561, line: 712, baseType: !1565, size: 64, offset: 320)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !1384, file: !561, line: 760, baseType: !2674, size: 320)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !561, line: 718, size: 320, elements: !2675)
!2675 = !{!2676, !2677}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2674, file: !561, line: 720, baseType: !1387, size: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2674, file: !561, line: 723, baseType: !1565, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1384)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_heap", file: !561, line: 34, baseType: !2682)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_heap", file: !561, line: 34, size: 128, elements: !2683)
!2683 = !{!2684}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2682, file: !561, line: 34, baseType: !1916, size: 128)
!2685 = !{!0}
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !2687)
!2687 = !{!2688}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2686, file: !6, line: 158, baseType: !2689, size: 640)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2690)
!2690 = !{!2691, !2692, !2693, !2697, !2701, !2703, !2704, !2705, !2707, !2708, !2709, !2710, !2711}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2689, file: !6, line: 117, baseType: !5, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2689, file: !6, line: 121, baseType: !1381, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2689, file: !6, line: 125, baseType: !2694, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!1375}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2689, file: !6, line: 130, baseType: !2698, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!7}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2689, file: !6, line: 133, baseType: !2702, size: 64, offset: 256)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2689, file: !6, line: 136, baseType: !2702, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2689, file: !6, line: 139, baseType: !1376, size: 32, offset: 384)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2689, file: !6, line: 143, baseType: !2706, size: 32, offset: 416)
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2689, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2689, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2689, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2689, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2689, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2712 = !{i32 2, !"Dwarf Version", i32 4}
!2713 = !{i32 2, !"Debug Info Version", i32 3}
!2714 = !{i32 1, !"wchar_size", i32 4}
!2715 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2716 = distinct !DISubprogram(name: "vprintf", scope: !2717, file: !2717, line: 39, type: !2718, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2728)
!2717 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!1376, !2720, !2721}
!2720 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1381)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2723)
!2723 = !{!2724, !2725, !2726, !2727}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2722, file: !3, baseType: !7, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2722, file: !3, baseType: !7, size: 32, offset: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2722, file: !3, baseType: !1380, size: 64, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2722, file: !3, baseType: !1380, size: 64, offset: 128)
!2728 = !{!2729, !2730}
!2729 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2716, file: !2717, line: 39, type: !2720)
!2730 = !DILocalVariable(name: "__arg", arg: 2, scope: !2716, file: !2717, line: 39, type: !2721)
!2731 = !DILocation(line: 0, scope: !2716)
!2732 = !DILocation(line: 41, column: 20, scope: !2716)
!2733 = !DILocation(line: 41, column: 10, scope: !2716)
!2734 = !DILocation(line: 41, column: 3, scope: !2716)
!2735 = distinct !DISubprogram(name: "getchar", scope: !2717, file: !2717, line: 47, type: !2736, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!1376}
!2738 = !{}
!2739 = !DILocation(line: 49, column: 16, scope: !2735)
!2740 = !DILocation(line: 49, column: 10, scope: !2735)
!2741 = !DILocation(line: 49, column: 3, scope: !2735)
!2742 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2717, file: !2717, line: 56, type: !2743, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2796)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!1376, !2745}
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2747, line: 7, baseType: !2748)
!2747 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2749, line: 49, size: 1728, elements: !2750)
!2749 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2750 = !{!2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2766, !2768, !2769, !2770, !2773, !2775, !2776, !2777, !2780, !2782, !2785, !2788, !2789, !2790, !2791, !2792}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2748, file: !2749, line: 51, baseType: !1376, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2748, file: !2749, line: 54, baseType: !1378, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2748, file: !2749, line: 55, baseType: !1378, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2748, file: !2749, line: 56, baseType: !1378, size: 64, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2748, file: !2749, line: 57, baseType: !1378, size: 64, offset: 256)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2748, file: !2749, line: 58, baseType: !1378, size: 64, offset: 320)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2748, file: !2749, line: 59, baseType: !1378, size: 64, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2748, file: !2749, line: 60, baseType: !1378, size: 64, offset: 448)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2748, file: !2749, line: 61, baseType: !1378, size: 64, offset: 512)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2748, file: !2749, line: 64, baseType: !1378, size: 64, offset: 576)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2748, file: !2749, line: 65, baseType: !1378, size: 64, offset: 640)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2748, file: !2749, line: 66, baseType: !1378, size: 64, offset: 704)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2748, file: !2749, line: 68, baseType: !2764, size: 64, offset: 768)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2749, line: 36, flags: DIFlagFwdDecl)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2748, file: !2749, line: 70, baseType: !2767, size: 64, offset: 832)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2748, file: !2749, line: 72, baseType: !1376, size: 32, offset: 896)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2748, file: !2749, line: 73, baseType: !1376, size: 32, offset: 928)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2748, file: !2749, line: 74, baseType: !2771, size: 64, offset: 960)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2772, line: 152, baseType: !1536)
!2772 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2748, file: !2749, line: 77, baseType: !2774, size: 16, offset: 1024)
!2774 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2748, file: !2749, line: 78, baseType: !2253, size: 8, offset: 1040)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2748, file: !2749, line: 79, baseType: !1660, size: 8, offset: 1048)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2748, file: !2749, line: 81, baseType: !2778, size: 64, offset: 1088)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2749, line: 43, baseType: null)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2748, file: !2749, line: 89, baseType: !2781, size: 64, offset: 1152)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2772, line: 153, baseType: !1536)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2748, file: !2749, line: 91, baseType: !2783, size: 64, offset: 1216)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2749, line: 37, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2748, file: !2749, line: 92, baseType: !2786, size: 64, offset: 1280)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2749, line: 38, flags: DIFlagFwdDecl)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2748, file: !2749, line: 93, baseType: !2767, size: 64, offset: 1344)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2748, file: !2749, line: 94, baseType: !1380, size: 64, offset: 1408)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2748, file: !2749, line: 95, baseType: !1885, size: 64, offset: 1472)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2748, file: !2749, line: 96, baseType: !1376, size: 32, offset: 1536)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2748, file: !2749, line: 98, baseType: !2793, size: 160, offset: 1568)
!2793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 160, elements: !2794)
!2794 = !{!2795}
!2795 = !DISubrange(count: 20)
!2796 = !{!2797}
!2797 = !DILocalVariable(name: "__fp", arg: 1, scope: !2742, file: !2717, line: 56, type: !2745)
!2798 = !DILocation(line: 0, scope: !2742)
!2799 = !DILocation(line: 58, column: 10, scope: !2742)
!2800 = !DILocation(line: 58, column: 3, scope: !2742)
!2801 = distinct !DISubprogram(name: "getc_unlocked", scope: !2717, file: !2717, line: 66, type: !2743, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2802)
!2802 = !{!2803}
!2803 = !DILocalVariable(name: "__fp", arg: 1, scope: !2801, file: !2717, line: 66, type: !2745)
!2804 = !DILocation(line: 0, scope: !2801)
!2805 = !DILocation(line: 68, column: 10, scope: !2801)
!2806 = !DILocation(line: 68, column: 3, scope: !2801)
!2807 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2717, file: !2717, line: 73, type: !2736, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2738)
!2808 = !DILocation(line: 75, column: 10, scope: !2807)
!2809 = !DILocation(line: 75, column: 3, scope: !2807)
!2810 = distinct !DISubprogram(name: "putchar", scope: !2717, file: !2717, line: 82, type: !2811, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!1376, !1376}
!2813 = !{!2814}
!2814 = !DILocalVariable(name: "__c", arg: 1, scope: !2810, file: !2717, line: 82, type: !1376)
!2815 = !DILocation(line: 0, scope: !2810)
!2816 = !DILocation(line: 84, column: 21, scope: !2810)
!2817 = !DILocation(line: 84, column: 10, scope: !2810)
!2818 = !DILocation(line: 84, column: 3, scope: !2810)
!2819 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2717, file: !2717, line: 91, type: !2820, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2822)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!1376, !1376, !2745}
!2822 = !{!2823, !2824}
!2823 = !DILocalVariable(name: "__c", arg: 1, scope: !2819, file: !2717, line: 91, type: !1376)
!2824 = !DILocalVariable(name: "__stream", arg: 2, scope: !2819, file: !2717, line: 91, type: !2745)
!2825 = !DILocation(line: 0, scope: !2819)
!2826 = !DILocation(line: 93, column: 10, scope: !2819)
!2827 = !DILocation(line: 93, column: 3, scope: !2819)
!2828 = distinct !DISubprogram(name: "putc_unlocked", scope: !2717, file: !2717, line: 101, type: !2820, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2829)
!2829 = !{!2830, !2831}
!2830 = !DILocalVariable(name: "__c", arg: 1, scope: !2828, file: !2717, line: 101, type: !1376)
!2831 = !DILocalVariable(name: "__stream", arg: 2, scope: !2828, file: !2717, line: 101, type: !2745)
!2832 = !DILocation(line: 0, scope: !2828)
!2833 = !DILocation(line: 103, column: 10, scope: !2828)
!2834 = !DILocation(line: 103, column: 3, scope: !2828)
!2835 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2717, file: !2717, line: 108, type: !2811, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2836)
!2836 = !{!2837}
!2837 = !DILocalVariable(name: "__c", arg: 1, scope: !2835, file: !2717, line: 108, type: !1376)
!2838 = !DILocation(line: 0, scope: !2835)
!2839 = !DILocation(line: 110, column: 10, scope: !2835)
!2840 = !DILocation(line: 110, column: 3, scope: !2835)
!2841 = distinct !DISubprogram(name: "getline", scope: !2717, file: !2717, line: 118, type: !2842, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2846)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!2844, !1377, !2845, !2745}
!2844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2772, line: 193, baseType: !1536)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!2846 = !{!2847, !2848, !2849}
!2847 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2841, file: !2717, line: 118, type: !1377)
!2848 = !DILocalVariable(name: "__n", arg: 2, scope: !2841, file: !2717, line: 118, type: !2845)
!2849 = !DILocalVariable(name: "__stream", arg: 3, scope: !2841, file: !2717, line: 118, type: !2745)
!2850 = !DILocation(line: 0, scope: !2841)
!2851 = !DILocation(line: 120, column: 10, scope: !2841)
!2852 = !DILocation(line: 120, column: 3, scope: !2841)
!2853 = distinct !DISubprogram(name: "feof_unlocked", scope: !2717, file: !2717, line: 128, type: !2743, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2854)
!2854 = !{!2855}
!2855 = !DILocalVariable(name: "__stream", arg: 1, scope: !2853, file: !2717, line: 128, type: !2745)
!2856 = !DILocation(line: 0, scope: !2853)
!2857 = !DILocation(line: 130, column: 10, scope: !2853)
!2858 = !DILocation(line: 130, column: 3, scope: !2853)
!2859 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2717, file: !2717, line: 135, type: !2743, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2860)
!2860 = !{!2861}
!2861 = !DILocalVariable(name: "__stream", arg: 1, scope: !2859, file: !2717, line: 135, type: !2745)
!2862 = !DILocation(line: 0, scope: !2859)
!2863 = !DILocation(line: 137, column: 10, scope: !2859)
!2864 = !DILocation(line: 137, column: 3, scope: !2859)
!2865 = distinct !DISubprogram(name: "tolower", scope: !2866, file: !2866, line: 207, type: !2811, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2867)
!2866 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2867 = !{!2868}
!2868 = !DILocalVariable(name: "__c", arg: 1, scope: !2865, file: !2866, line: 207, type: !1376)
!2869 = !DILocation(line: 0, scope: !2865)
!2870 = !DILocation(line: 209, column: 22, scope: !2865)
!2871 = !DILocation(line: 209, column: 39, scope: !2865)
!2872 = !DILocation(line: 209, column: 38, scope: !2865)
!2873 = !DILocation(line: 209, column: 37, scope: !2865)
!2874 = !DILocation(line: 209, column: 10, scope: !2865)
!2875 = !DILocation(line: 209, column: 3, scope: !2865)
!2876 = distinct !DISubprogram(name: "toupper", scope: !2866, file: !2866, line: 213, type: !2811, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2877)
!2877 = !{!2878}
!2878 = !DILocalVariable(name: "__c", arg: 1, scope: !2876, file: !2866, line: 213, type: !1376)
!2879 = !DILocation(line: 0, scope: !2876)
!2880 = !DILocation(line: 215, column: 22, scope: !2876)
!2881 = !DILocation(line: 215, column: 39, scope: !2876)
!2882 = !DILocation(line: 215, column: 38, scope: !2876)
!2883 = !DILocation(line: 215, column: 37, scope: !2876)
!2884 = !DILocation(line: 215, column: 10, scope: !2876)
!2885 = !DILocation(line: 215, column: 3, scope: !2876)
!2886 = distinct !DISubprogram(name: "atoi", scope: !2887, file: !2887, line: 361, type: !2888, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2890)
!2887 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!1376, !1381}
!2890 = !{!2891}
!2891 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2886, file: !2887, line: 361, type: !1381)
!2892 = !DILocation(line: 0, scope: !2886)
!2893 = !DILocation(line: 363, column: 16, scope: !2886)
!2894 = !DILocation(line: 363, column: 10, scope: !2886)
!2895 = !DILocation(line: 363, column: 3, scope: !2886)
!2896 = distinct !DISubprogram(name: "atol", scope: !2887, file: !2887, line: 366, type: !2897, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!1536, !1381}
!2899 = !{!2900}
!2900 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2896, file: !2887, line: 366, type: !1381)
!2901 = !DILocation(line: 0, scope: !2896)
!2902 = !DILocation(line: 368, column: 10, scope: !2896)
!2903 = !DILocation(line: 368, column: 3, scope: !2896)
!2904 = distinct !DISubprogram(name: "atoll", scope: !2887, file: !2887, line: 373, type: !2905, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2908)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!2907, !1381}
!2907 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2908 = !{!2909}
!2909 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2904, file: !2887, line: 373, type: !1381)
!2910 = !DILocation(line: 0, scope: !2904)
!2911 = !DILocation(line: 375, column: 10, scope: !2904)
!2912 = !DILocation(line: 375, column: 3, scope: !2904)
!2913 = distinct !DISubprogram(name: "bsearch", scope: !2914, file: !2914, line: 20, type: !2915, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2918)
!2914 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!1380, !1870, !1870, !1885, !1885, !2917}
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2887, line: 808, baseType: !1874)
!2918 = !{!2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928}
!2919 = !DILocalVariable(name: "__key", arg: 1, scope: !2913, file: !2914, line: 20, type: !1870)
!2920 = !DILocalVariable(name: "__base", arg: 2, scope: !2913, file: !2914, line: 20, type: !1870)
!2921 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2913, file: !2914, line: 20, type: !1885)
!2922 = !DILocalVariable(name: "__size", arg: 4, scope: !2913, file: !2914, line: 20, type: !1885)
!2923 = !DILocalVariable(name: "__compar", arg: 5, scope: !2913, file: !2914, line: 21, type: !2917)
!2924 = !DILocalVariable(name: "__l", scope: !2913, file: !2914, line: 23, type: !1885)
!2925 = !DILocalVariable(name: "__u", scope: !2913, file: !2914, line: 23, type: !1885)
!2926 = !DILocalVariable(name: "__idx", scope: !2913, file: !2914, line: 23, type: !1885)
!2927 = !DILocalVariable(name: "__p", scope: !2913, file: !2914, line: 24, type: !1870)
!2928 = !DILocalVariable(name: "__comparison", scope: !2913, file: !2914, line: 25, type: !1376)
!2929 = !DILocation(line: 0, scope: !2913)
!2930 = !DILocation(line: 29, column: 3, scope: !2913)
!2931 = !DILocation(line: 27, column: 7, scope: !2913)
!2932 = !DILocation(line: 29, column: 14, scope: !2913)
!2933 = !DILocation(line: 31, column: 20, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2913, file: !2914, line: 30, column: 5)
!2935 = !DILocation(line: 31, column: 27, scope: !2934)
!2936 = !DILocation(line: 32, column: 56, scope: !2934)
!2937 = !DILocation(line: 32, column: 47, scope: !2934)
!2938 = !DILocation(line: 33, column: 22, scope: !2934)
!2939 = !DILocation(line: 34, column: 24, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2934, file: !2914, line: 34, column: 11)
!2941 = !DILocation(line: 34, column: 11, scope: !2934)
!2942 = !DILocation(line: 36, column: 29, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2940, file: !2914, line: 36, column: 16)
!2944 = !DILocation(line: 36, column: 16, scope: !2940)
!2945 = !DILocation(line: 37, column: 14, scope: !2943)
!2946 = distinct !{!2946, !2930, !2947}
!2947 = !DILocation(line: 40, column: 5, scope: !2913)
!2948 = !DILocation(line: 43, column: 1, scope: !2913)
!2949 = distinct !DISubprogram(name: "atof", scope: !2950, file: !2950, line: 25, type: !2951, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2954)
!2950 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!2953, !1381}
!2953 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2954 = !{!2955}
!2955 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2949, file: !2950, line: 25, type: !1381)
!2956 = !DILocation(line: 0, scope: !2949)
!2957 = !DILocation(line: 27, column: 10, scope: !2949)
!2958 = !DILocation(line: 27, column: 3, scope: !2949)
!2959 = distinct !DISubprogram(name: "strtoimax", scope: !2960, file: !2960, line: 324, type: !2961, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2967)
!2960 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!2963, !2720, !2966, !1376}
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2964, line: 101, baseType: !2965)
!2964 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2772, line: 72, baseType: !1536)
!2966 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1377)
!2967 = !{!2968, !2969, !2970}
!2968 = !DILocalVariable(name: "nptr", arg: 1, scope: !2959, file: !2960, line: 324, type: !2720)
!2969 = !DILocalVariable(name: "endptr", arg: 2, scope: !2959, file: !2960, line: 324, type: !2966)
!2970 = !DILocalVariable(name: "base", arg: 3, scope: !2959, file: !2960, line: 324, type: !1376)
!2971 = !DILocation(line: 0, scope: !2959)
!2972 = !DILocation(line: 327, column: 10, scope: !2959)
!2973 = !DILocation(line: 327, column: 3, scope: !2959)
!2974 = distinct !DISubprogram(name: "strtoumax", scope: !2960, file: !2960, line: 336, type: !2975, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2979)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!2977, !2720, !2966, !1376}
!2977 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2964, line: 102, baseType: !2978)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2772, line: 73, baseType: !1519)
!2979 = !{!2980, !2981, !2982}
!2980 = !DILocalVariable(name: "nptr", arg: 1, scope: !2974, file: !2960, line: 336, type: !2720)
!2981 = !DILocalVariable(name: "endptr", arg: 2, scope: !2974, file: !2960, line: 336, type: !2966)
!2982 = !DILocalVariable(name: "base", arg: 3, scope: !2974, file: !2960, line: 336, type: !1376)
!2983 = !DILocation(line: 0, scope: !2974)
!2984 = !DILocation(line: 339, column: 10, scope: !2974)
!2985 = !DILocation(line: 339, column: 3, scope: !2974)
!2986 = distinct !DISubprogram(name: "wcstoimax", scope: !2960, file: !2960, line: 348, type: !2987, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2996)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!2963, !2989, !2993, !1376}
!2989 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2990)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2992)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2960, line: 34, baseType: !1376)
!2993 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2994)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2996 = !{!2997, !2998, !2999}
!2997 = !DILocalVariable(name: "nptr", arg: 1, scope: !2986, file: !2960, line: 348, type: !2989)
!2998 = !DILocalVariable(name: "endptr", arg: 2, scope: !2986, file: !2960, line: 348, type: !2993)
!2999 = !DILocalVariable(name: "base", arg: 3, scope: !2986, file: !2960, line: 348, type: !1376)
!3000 = !DILocation(line: 0, scope: !2986)
!3001 = !DILocation(line: 351, column: 10, scope: !2986)
!3002 = !DILocation(line: 351, column: 3, scope: !2986)
!3003 = distinct !DISubprogram(name: "wcstoumax", scope: !2960, file: !2960, line: 362, type: !3004, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!2977, !2989, !2993, !1376}
!3006 = !{!3007, !3008, !3009}
!3007 = !DILocalVariable(name: "nptr", arg: 1, scope: !3003, file: !2960, line: 362, type: !2989)
!3008 = !DILocalVariable(name: "endptr", arg: 2, scope: !3003, file: !2960, line: 362, type: !2993)
!3009 = !DILocalVariable(name: "base", arg: 3, scope: !3003, file: !2960, line: 362, type: !1376)
!3010 = !DILocation(line: 0, scope: !3003)
!3011 = !DILocation(line: 365, column: 10, scope: !3003)
!3012 = !DILocation(line: 365, column: 3, scope: !3003)
!3013 = distinct !DISubprogram(name: "stat", scope: !3014, file: !3014, line: 453, type: !3015, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3052)
!3014 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!1376, !1381, !3017}
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3019, line: 46, size: 1152, elements: !3020)
!3019 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!3020 = !{!3021, !3023, !3025, !3027, !3029, !3031, !3033, !3034, !3035, !3036, !3038, !3040, !3048, !3049, !3050}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3018, file: !3019, line: 48, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2772, line: 145, baseType: !1519)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3018, file: !3019, line: 53, baseType: !3024, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2772, line: 148, baseType: !1519)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3018, file: !3019, line: 61, baseType: !3026, size: 64, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2772, line: 151, baseType: !1519)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3018, file: !3019, line: 62, baseType: !3028, size: 32, offset: 192)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2772, line: 150, baseType: !7)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3018, file: !3019, line: 64, baseType: !3030, size: 32, offset: 224)
!3030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2772, line: 146, baseType: !7)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3018, file: !3019, line: 65, baseType: !3032, size: 32, offset: 256)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2772, line: 147, baseType: !7)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3018, file: !3019, line: 67, baseType: !1376, size: 32, offset: 288)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3018, file: !3019, line: 69, baseType: !3022, size: 64, offset: 320)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3018, file: !3019, line: 74, baseType: !2771, size: 64, offset: 384)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3018, file: !3019, line: 78, baseType: !3037, size: 64, offset: 448)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2772, line: 174, baseType: !1536)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3018, file: !3019, line: 80, baseType: !3039, size: 64, offset: 512)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2772, line: 179, baseType: !1536)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3018, file: !3019, line: 91, baseType: !3041, size: 128, offset: 576)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3042, line: 10, size: 128, elements: !3043)
!3042 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!3043 = !{!3044, !3046}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3041, file: !3042, line: 12, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2772, line: 160, baseType: !1536)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3041, file: !3042, line: 16, baseType: !3047, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2772, line: 196, baseType: !1536)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3018, file: !3019, line: 92, baseType: !3041, size: 128, offset: 704)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3018, file: !3019, line: 93, baseType: !3041, size: 128, offset: 832)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3018, file: !3019, line: 106, baseType: !3051, size: 192, offset: 960)
!3051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3047, size: 192, elements: !1636)
!3052 = !{!3053, !3054}
!3053 = !DILocalVariable(name: "__path", arg: 1, scope: !3013, file: !3014, line: 453, type: !1381)
!3054 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3013, file: !3014, line: 453, type: !3017)
!3055 = !DILocation(line: 0, scope: !3013)
!3056 = !DILocation(line: 455, column: 10, scope: !3013)
!3057 = !DILocation(line: 455, column: 3, scope: !3013)
!3058 = distinct !DISubprogram(name: "lstat", scope: !3014, file: !3014, line: 460, type: !3015, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3059)
!3059 = !{!3060, !3061}
!3060 = !DILocalVariable(name: "__path", arg: 1, scope: !3058, file: !3014, line: 460, type: !1381)
!3061 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3058, file: !3014, line: 460, type: !3017)
!3062 = !DILocation(line: 0, scope: !3058)
!3063 = !DILocation(line: 462, column: 10, scope: !3058)
!3064 = !DILocation(line: 462, column: 3, scope: !3058)
!3065 = distinct !DISubprogram(name: "fstat", scope: !3014, file: !3014, line: 467, type: !3066, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!1376, !1376, !3017}
!3068 = !{!3069, !3070}
!3069 = !DILocalVariable(name: "__fd", arg: 1, scope: !3065, file: !3014, line: 467, type: !1376)
!3070 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3065, file: !3014, line: 467, type: !3017)
!3071 = !DILocation(line: 0, scope: !3065)
!3072 = !DILocation(line: 469, column: 10, scope: !3065)
!3073 = !DILocation(line: 469, column: 3, scope: !3065)
!3074 = distinct !DISubprogram(name: "fstatat", scope: !3014, file: !3014, line: 474, type: !3075, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3077)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!1376, !1376, !1381, !3017, !1376}
!3077 = !{!3078, !3079, !3080, !3081}
!3078 = !DILocalVariable(name: "__fd", arg: 1, scope: !3074, file: !3014, line: 474, type: !1376)
!3079 = !DILocalVariable(name: "__filename", arg: 2, scope: !3074, file: !3014, line: 474, type: !1381)
!3080 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !3074, file: !3014, line: 474, type: !3017)
!3081 = !DILocalVariable(name: "__flag", arg: 4, scope: !3074, file: !3014, line: 474, type: !1376)
!3082 = !DILocation(line: 0, scope: !3074)
!3083 = !DILocation(line: 477, column: 10, scope: !3074)
!3084 = !DILocation(line: 477, column: 3, scope: !3074)
!3085 = distinct !DISubprogram(name: "mknod", scope: !3014, file: !3014, line: 483, type: !3086, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!1376, !1381, !3028, !3022}
!3088 = !{!3089, !3090, !3091}
!3089 = !DILocalVariable(name: "__path", arg: 1, scope: !3085, file: !3014, line: 483, type: !1381)
!3090 = !DILocalVariable(name: "__mode", arg: 2, scope: !3085, file: !3014, line: 483, type: !3028)
!3091 = !DILocalVariable(name: "__dev", arg: 3, scope: !3085, file: !3014, line: 483, type: !3022)
!3092 = !DILocation(line: 0, scope: !3085)
!3093 = !DILocation(line: 485, column: 10, scope: !3085)
!3094 = !DILocation(line: 485, column: 3, scope: !3085)
!3095 = distinct !DISubprogram(name: "mknodat", scope: !3014, file: !3014, line: 491, type: !3096, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!1376, !1376, !1381, !3028, !3022}
!3098 = !{!3099, !3100, !3101, !3102}
!3099 = !DILocalVariable(name: "__fd", arg: 1, scope: !3095, file: !3014, line: 491, type: !1376)
!3100 = !DILocalVariable(name: "__path", arg: 2, scope: !3095, file: !3014, line: 491, type: !1381)
!3101 = !DILocalVariable(name: "__mode", arg: 3, scope: !3095, file: !3014, line: 491, type: !3028)
!3102 = !DILocalVariable(name: "__dev", arg: 4, scope: !3095, file: !3014, line: 491, type: !3022)
!3103 = !DILocation(line: 0, scope: !3095)
!3104 = !DILocation(line: 494, column: 10, scope: !3095)
!3105 = !DILocation(line: 494, column: 3, scope: !3095)
!3106 = distinct !DISubprogram(name: "stat64", scope: !3014, file: !3014, line: 502, type: !3107, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3129)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!1376, !1381, !3109}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !3019, line: 119, size: 1152, elements: !3111)
!3111 = !{!3112, !3113, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3125, !3126, !3127, !3128}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3110, file: !3019, line: 121, baseType: !3022, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3110, file: !3019, line: 123, baseType: !3114, size: 64, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2772, line: 149, baseType: !1519)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3110, file: !3019, line: 124, baseType: !3026, size: 64, offset: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3110, file: !3019, line: 125, baseType: !3028, size: 32, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3110, file: !3019, line: 132, baseType: !3030, size: 32, offset: 224)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3110, file: !3019, line: 133, baseType: !3032, size: 32, offset: 256)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3110, file: !3019, line: 135, baseType: !1376, size: 32, offset: 288)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3110, file: !3019, line: 136, baseType: !3022, size: 64, offset: 320)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3110, file: !3019, line: 137, baseType: !2771, size: 64, offset: 384)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3110, file: !3019, line: 143, baseType: !3037, size: 64, offset: 448)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3110, file: !3019, line: 144, baseType: !3124, size: 64, offset: 512)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2772, line: 180, baseType: !1536)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3110, file: !3019, line: 152, baseType: !3041, size: 128, offset: 576)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3110, file: !3019, line: 153, baseType: !3041, size: 128, offset: 704)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3110, file: !3019, line: 154, baseType: !3041, size: 128, offset: 832)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3110, file: !3019, line: 164, baseType: !3051, size: 192, offset: 960)
!3129 = !{!3130, !3131}
!3130 = !DILocalVariable(name: "__path", arg: 1, scope: !3106, file: !3014, line: 502, type: !1381)
!3131 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3106, file: !3014, line: 502, type: !3109)
!3132 = !DILocation(line: 0, scope: !3106)
!3133 = !DILocation(line: 504, column: 10, scope: !3106)
!3134 = !DILocation(line: 504, column: 3, scope: !3106)
!3135 = distinct !DISubprogram(name: "lstat64", scope: !3014, file: !3014, line: 509, type: !3107, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3136)
!3136 = !{!3137, !3138}
!3137 = !DILocalVariable(name: "__path", arg: 1, scope: !3135, file: !3014, line: 509, type: !1381)
!3138 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3135, file: !3014, line: 509, type: !3109)
!3139 = !DILocation(line: 0, scope: !3135)
!3140 = !DILocation(line: 511, column: 10, scope: !3135)
!3141 = !DILocation(line: 511, column: 3, scope: !3135)
!3142 = distinct !DISubprogram(name: "fstat64", scope: !3014, file: !3014, line: 516, type: !3143, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!1376, !1376, !3109}
!3145 = !{!3146, !3147}
!3146 = !DILocalVariable(name: "__fd", arg: 1, scope: !3142, file: !3014, line: 516, type: !1376)
!3147 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3142, file: !3014, line: 516, type: !3109)
!3148 = !DILocation(line: 0, scope: !3142)
!3149 = !DILocation(line: 518, column: 10, scope: !3142)
!3150 = !DILocation(line: 518, column: 3, scope: !3142)
!3151 = distinct !DISubprogram(name: "fstatat64", scope: !3014, file: !3014, line: 523, type: !3152, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!1376, !1376, !1381, !3109, !1376}
!3154 = !{!3155, !3156, !3157, !3158}
!3155 = !DILocalVariable(name: "__fd", arg: 1, scope: !3151, file: !3014, line: 523, type: !1376)
!3156 = !DILocalVariable(name: "__filename", arg: 2, scope: !3151, file: !3014, line: 523, type: !1381)
!3157 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !3151, file: !3014, line: 523, type: !3109)
!3158 = !DILocalVariable(name: "__flag", arg: 4, scope: !3151, file: !3014, line: 523, type: !1376)
!3159 = !DILocation(line: 0, scope: !3151)
!3160 = !DILocation(line: 526, column: 10, scope: !3151)
!3161 = !DILocation(line: 526, column: 3, scope: !3151)
!3162 = distinct !DISubprogram(name: "gate_call_cdce", scope: !3, file: !3, line: 922, type: !2695, scopeLine: 923, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2738)
!3163 = !DILocation(line: 927, column: 10, scope: !3162)
!3164 = !DILocation(line: 927, column: 37, scope: !3162)
!3165 = !DILocation(line: 927, column: 42, scope: !3162)
!3166 = !DILocation(line: 927, column: 76, scope: !3162)
!3167 = !DILocation(line: 927, column: 45, scope: !3162)
!3168 = !DILocation(line: 927, column: 3, scope: !3162)
!3169 = distinct !DISubprogram(name: "tree_call_cdce", scope: !3, file: !3, line: 871, type: !2699, scopeLine: 872, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3170)
!3170 = !{!3171, !3172, !3179, !3180, !3181}
!3171 = !DILocalVariable(name: "bb", scope: !3169, file: !3, line: 873, type: !1827)
!3172 = !DILocalVariable(name: "i", scope: !3169, file: !3, line: 874, type: !3173)
!3173 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !561, line: 265, baseType: !3174)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 254, size: 192, elements: !3175)
!3175 = !{!3176, !3177, !3178}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3174, file: !561, line: 257, baseType: !1438, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3174, file: !561, line: 263, baseType: !1433, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3174, file: !561, line: 264, baseType: !1827, size: 64, offset: 128)
!3179 = !DILocalVariable(name: "something_changed", scope: !3169, file: !3, line: 875, type: !1375)
!3180 = !DILocalVariable(name: "cond_dead_built_in_calls", scope: !3169, file: !3, line: 876, type: !2680)
!3181 = !DILocalVariable(name: "stmt", scope: !3182, file: !3, line: 882, type: !1443)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 881, column: 9)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 880, column: 7)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 880, column: 7)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 878, column: 5)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 877, column: 3)
!3187 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 877, column: 3)
!3188 = !DILocation(line: 874, column: 3, scope: !3169)
!3189 = !DILocation(line: 0, scope: !3169)
!3190 = !DILocation(line: 876, column: 3, scope: !3169)
!3191 = !DILocation(line: 876, column: 23, scope: !3169)
!3192 = !DILocation(line: 877, column: 3, scope: !3187)
!3193 = !DILocation(line: 0, scope: !3184)
!3194 = !DILocation(line: 877, column: 3, scope: !3186)
!3195 = !DILocation(line: 0, scope: !3187)
!3196 = !DILocation(line: 880, column: 16, scope: !3184)
!3197 = !DILocation(line: 880, column: 12, scope: !3184)
!3198 = !DILocation(line: 880, column: 36, scope: !3183)
!3199 = !DILocation(line: 880, column: 35, scope: !3183)
!3200 = !DILocation(line: 880, column: 7, scope: !3184)
!3201 = !DILocation(line: 882, column: 18, scope: !3182)
!3202 = !DILocation(line: 0, scope: !3182)
!3203 = !DILocation(line: 883, column: 15, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 883, column: 15)
!3205 = !DILocation(line: 884, column: 15, scope: !3204)
!3206 = !DILocation(line: 884, column: 18, scope: !3204)
!3207 = !DILocation(line: 883, column: 15, scope: !3182)
!3208 = !DILocation(line: 886, column: 19, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 886, column: 19)
!3210 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 885, column: 13)
!3211 = !DILocation(line: 886, column: 29, scope: !3209)
!3212 = !DILocation(line: 886, column: 33, scope: !3209)
!3213 = !DILocation(line: 886, column: 44, scope: !3209)
!3214 = !DILocation(line: 886, column: 19, scope: !3210)
!3215 = !DILocation(line: 888, column: 19, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 887, column: 17)
!3217 = !DILocation(line: 889, column: 38, scope: !3216)
!3218 = !DILocation(line: 889, column: 19, scope: !3216)
!3219 = !DILocation(line: 890, column: 28, scope: !3216)
!3220 = !DILocation(line: 890, column: 19, scope: !3216)
!3221 = !DILocation(line: 891, column: 17, scope: !3216)
!3222 = !DILocation(line: 892, column: 12, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 892, column: 12)
!3224 = !DILocation(line: 892, column: 37, scope: !3223)
!3225 = !DILocation(line: 892, column: 12, scope: !3210)
!3226 = !DILocation(line: 893, column: 30, scope: !3223)
!3227 = !DILocation(line: 893, column: 28, scope: !3223)
!3228 = !DILocation(line: 893, column: 3, scope: !3223)
!3229 = !DILocation(line: 894, column: 8, scope: !3210)
!3230 = !DILocation(line: 895, column: 13, scope: !3210)
!3231 = !DILocation(line: 880, column: 51, scope: !3183)
!3232 = !DILocation(line: 880, column: 7, scope: !3183)
!3233 = distinct !{!3233, !3200, !3234}
!3234 = !DILocation(line: 896, column: 2, scope: !3184)
!3235 = !DILocation(line: 0, scope: !3186)
!3236 = distinct !{!3236, !3192, !3237}
!3237 = !DILocation(line: 897, column: 5, scope: !3187)
!3238 = !DILocation(line: 899, column: 7, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 899, column: 7)
!3240 = !DILocation(line: 899, column: 32, scope: !3239)
!3241 = !DILocation(line: 899, column: 7, scope: !3169)
!3242 = !DILocation(line: 903, column: 7, scope: !3169)
!3243 = !DILocation(line: 905, column: 3, scope: !3169)
!3244 = !DILocation(line: 907, column: 7, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 907, column: 7)
!3246 = !DILocation(line: 907, column: 7, scope: !3169)
!3247 = !DILocation(line: 909, column: 7, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 908, column: 5)
!3249 = !DILocation(line: 910, column: 7, scope: !3248)
!3250 = !DILocation(line: 913, column: 42, scope: !3248)
!3251 = !DILocation(line: 913, column: 30, scope: !3248)
!3252 = !DILocation(line: 913, column: 7, scope: !3248)
!3253 = !DILocation(line: 914, column: 7, scope: !3248)
!3254 = !DILocation(line: 919, column: 1, scope: !3169)
!3255 = distinct !DISubprogram(name: "gsi_start_bb", scope: !561, file: !561, line: 4418, type: !3256, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!3173, !1827}
!3258 = !{!3259, !3260, !3261}
!3259 = !DILocalVariable(name: "bb", arg: 1, scope: !3255, file: !561, line: 4418, type: !1827)
!3260 = !DILocalVariable(name: "i", scope: !3255, file: !561, line: 4420, type: !3173)
!3261 = !DILocalVariable(name: "seq", scope: !3255, file: !561, line: 4421, type: !1433)
!3262 = !DILocation(line: 0, scope: !3255)
!3263 = !DILocation(line: 4420, column: 24, scope: !3255)
!3264 = !DILocation(line: 4423, column: 9, scope: !3255)
!3265 = !DILocation(line: 4424, column: 11, scope: !3255)
!3266 = !DILocation(line: 4424, column: 5, scope: !3255)
!3267 = !DILocation(line: 4424, column: 9, scope: !3255)
!3268 = !DILocation(line: 4425, column: 5, scope: !3255)
!3269 = !DILocation(line: 4425, column: 9, scope: !3255)
!3270 = !DILocation(line: 4426, column: 5, scope: !3255)
!3271 = !DILocation(line: 4426, column: 8, scope: !3255)
!3272 = !DILocation(line: 4429, column: 1, scope: !3255)
!3273 = distinct !DISubprogram(name: "gsi_end_p", scope: !561, file: !561, line: 4467, type: !3274, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3276)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!1375, !3173}
!3276 = !{!3277}
!3277 = !DILocalVariable(name: "i", arg: 1, scope: !3273, file: !561, line: 4467, type: !3173)
!3278 = !DILocation(line: 4467, column: 33, scope: !3273)
!3279 = !DILocation(line: 4469, column: 12, scope: !3273)
!3280 = !DILocation(line: 4469, column: 16, scope: !3273)
!3281 = !DILocation(line: 4469, column: 10, scope: !3273)
!3282 = !DILocation(line: 4469, column: 3, scope: !3273)
!3283 = distinct !DISubprogram(name: "gsi_stmt", scope: !561, file: !561, line: 4501, type: !3284, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!1443, !3173}
!3286 = !{!3287}
!3287 = !DILocalVariable(name: "i", arg: 1, scope: !3283, file: !561, line: 4501, type: !3173)
!3288 = !DILocation(line: 4501, column: 32, scope: !3283)
!3289 = !DILocation(line: 4503, column: 12, scope: !3283)
!3290 = !DILocation(line: 4503, column: 17, scope: !3283)
!3291 = !DILocation(line: 4503, column: 3, scope: !3283)
!3292 = distinct !DISubprogram(name: "is_gimple_call", scope: !561, file: !561, line: 1870, type: !3293, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3296)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!1375, !3295}
!3295 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !1423, line: 60, baseType: !2678)
!3296 = !{!3297}
!3297 = !DILocalVariable(name: "gs", arg: 1, scope: !3292, file: !561, line: 1870, type: !3295)
!3298 = !DILocation(line: 0, scope: !3292)
!3299 = !DILocation(line: 1872, column: 10, scope: !3292)
!3300 = !DILocation(line: 1872, column: 27, scope: !3292)
!3301 = !DILocation(line: 1872, column: 3, scope: !3292)
!3302 = distinct !DISubprogram(name: "is_call_dce_candidate", scope: !3, file: !3, line: 269, type: !3303, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!1375, !1443}
!3305 = !{!3306, !3307, !3308}
!3306 = !DILocalVariable(name: "call", arg: 1, scope: !3302, file: !3, line: 269, type: !1443)
!3307 = !DILocalVariable(name: "fn", scope: !3302, file: !3, line: 271, type: !1565)
!3308 = !DILocalVariable(name: "fnc", scope: !3302, file: !3, line: 272, type: !599)
!3309 = !DILocation(line: 0, scope: !3302)
!3310 = !DILocation(line: 275, column: 7, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 275, column: 7)
!3312 = !DILocation(line: 275, column: 7, scope: !3302)
!3313 = !DILocation(line: 278, column: 8, scope: !3302)
!3314 = !DILocation(line: 279, column: 8, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 279, column: 7)
!3316 = !DILocation(line: 280, column: 7, scope: !3315)
!3317 = !DILocation(line: 280, column: 11, scope: !3315)
!3318 = !DILocation(line: 281, column: 7, scope: !3315)
!3319 = !DILocation(line: 281, column: 36, scope: !3315)
!3320 = !DILocation(line: 279, column: 7, scope: !3302)
!3321 = !DILocation(line: 284, column: 9, scope: !3302)
!3322 = !DILocation(line: 285, column: 3, scope: !3302)
!3323 = !DILocation(line: 308, column: 14, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 286, column: 5)
!3325 = !DILocation(line: 308, column: 7, scope: !3324)
!3326 = !DILocation(line: 311, column: 14, scope: !3324)
!3327 = !DILocation(line: 311, column: 7, scope: !3324)
!3328 = !DILocation(line: 317, column: 1, scope: !3302)
!3329 = distinct !DISubprogram(name: "VEC_gimple_heap_alloc", scope: !561, file: !561, line: 34, type: !3330, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!2680, !1376}
!3332 = !{!3333}
!3333 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3329, file: !561, line: 34, type: !1376)
!3334 = !DILocation(line: 0, scope: !3329)
!3335 = !DILocation(line: 34, column: 1, scope: !3329)
!3336 = distinct !DISubprogram(name: "VEC_gimple_heap_safe_push", scope: !561, file: !561, line: 34, type: !3337, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3341)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!3339, !3340, !1443}
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!3341 = !{!3342, !3343}
!3342 = !DILocalVariable(name: "vec_", arg: 1, scope: !3336, file: !561, line: 34, type: !3340)
!3343 = !DILocalVariable(name: "obj_", arg: 2, scope: !3336, file: !561, line: 34, type: !1443)
!3344 = !DILocation(line: 0, scope: !3336)
!3345 = !DILocation(line: 34, column: 1, scope: !3336)
!3346 = distinct !DISubprogram(name: "gsi_next", scope: !561, file: !561, line: 4485, type: !3347, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3350)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{null, !3349}
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3350 = !{!3351}
!3351 = !DILocalVariable(name: "i", arg: 1, scope: !3346, file: !561, line: 4485, type: !3349)
!3352 = !DILocation(line: 0, scope: !3346)
!3353 = !DILocation(line: 4487, column: 15, scope: !3346)
!3354 = !DILocation(line: 4487, column: 20, scope: !3346)
!3355 = !DILocation(line: 4487, column: 10, scope: !3346)
!3356 = !DILocation(line: 4488, column: 1, scope: !3346)
!3357 = distinct !DISubprogram(name: "shrink_wrap_conditional_dead_built_in_calls", scope: !3, file: !3, line: 850, type: !3358, scopeLine: 851, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3360)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!1375, !2680}
!3360 = !{!3361, !3362, !3363, !3364, !3365}
!3361 = !DILocalVariable(name: "calls", arg: 1, scope: !3357, file: !3, line: 850, type: !2680)
!3362 = !DILocalVariable(name: "changed", scope: !3357, file: !3, line: 852, type: !1375)
!3363 = !DILocalVariable(name: "i", scope: !3357, file: !3, line: 853, type: !7)
!3364 = !DILocalVariable(name: "n", scope: !3357, file: !3, line: 855, type: !7)
!3365 = !DILocalVariable(name: "bi_call", scope: !3366, file: !3, line: 861, type: !1443)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 860, column: 5)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 859, column: 3)
!3368 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 859, column: 3)
!3369 = !DILocation(line: 0, scope: !3357)
!3370 = !DILocation(line: 855, column: 16, scope: !3357)
!3371 = !DILocation(line: 856, column: 9, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 856, column: 7)
!3373 = !DILocation(line: 856, column: 7, scope: !3357)
!3374 = !DILocation(line: 859, column: 3, scope: !3368)
!3375 = !DILocation(line: 859, column: 12, scope: !3367)
!3376 = !DILocation(line: 861, column: 24, scope: !3366)
!3377 = !DILocation(line: 0, scope: !3366)
!3378 = !DILocation(line: 862, column: 18, scope: !3366)
!3379 = !DILocation(line: 862, column: 15, scope: !3366)
!3380 = !DILocation(line: 859, column: 19, scope: !3367)
!3381 = !DILocation(line: 859, column: 3, scope: !3367)
!3382 = distinct !{!3382, !3374, !3383}
!3383 = !DILocation(line: 863, column: 5, scope: !3368)
!3384 = !DILocation(line: 866, column: 1, scope: !3357)
!3385 = distinct !DISubprogram(name: "VEC_gimple_heap_free", scope: !561, file: !561, line: 34, type: !3386, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{null, !3340}
!3388 = !{!3389}
!3389 = !DILocalVariable(name: "vec_", arg: 1, scope: !3385, file: !561, line: 34, type: !3340)
!3390 = !DILocation(line: 0, scope: !3385)
!3391 = !DILocation(line: 34, column: 1, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3385, file: !561, line: 34, column: 1)
!3393 = !DILocation(line: 34, column: 1, scope: !3385)
!3394 = distinct !DISubprogram(name: "gimple_vop", scope: !3395, file: !3395, line: 49, type: !3396, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3400)
!3395 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!1565, !3398}
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1816)
!3400 = !{!3401}
!3401 = !DILocalVariable(name: "fun", arg: 1, scope: !3394, file: !3395, line: 49, type: !3398)
!3402 = !DILocation(line: 0, scope: !3394)
!3403 = !DILocation(line: 51, column: 3, scope: !3394)
!3404 = !DILocation(line: 52, column: 15, scope: !3394)
!3405 = !DILocation(line: 52, column: 26, scope: !3394)
!3406 = !DILocation(line: 52, column: 3, scope: !3394)
!3407 = distinct !DISubprogram(name: "bb_seq", scope: !561, file: !561, line: 237, type: !3408, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3413)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!1433, !3410}
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !1423, line: 112, baseType: !3411)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!3413 = !{!3414}
!3414 = !DILocalVariable(name: "bb", arg: 1, scope: !3407, file: !561, line: 237, type: !3410)
!3415 = !DILocation(line: 0, scope: !3407)
!3416 = !DILocation(line: 239, column: 17, scope: !3407)
!3417 = !DILocation(line: 239, column: 23, scope: !3407)
!3418 = !DILocation(line: 239, column: 33, scope: !3407)
!3419 = !DILocation(line: 239, column: 43, scope: !3407)
!3420 = !DILocation(line: 239, column: 36, scope: !3407)
!3421 = !DILocation(line: 239, column: 10, scope: !3407)
!3422 = !DILocation(line: 239, column: 68, scope: !3407)
!3423 = !DILocation(line: 239, column: 3, scope: !3407)
!3424 = distinct !DISubprogram(name: "gimple_seq_first", scope: !561, file: !561, line: 159, type: !3425, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3430)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!1438, !3427}
!3427 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !1423, line: 67, baseType: !3428)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1435)
!3430 = !{!3431}
!3431 = !DILocalVariable(name: "s", arg: 1, scope: !3424, file: !561, line: 159, type: !3427)
!3432 = !DILocation(line: 0, scope: !3424)
!3433 = !DILocation(line: 161, column: 10, scope: !3424)
!3434 = !DILocation(line: 161, column: 17, scope: !3424)
!3435 = !DILocation(line: 161, column: 3, scope: !3424)
!3436 = distinct !DISubprogram(name: "gimple_code", scope: !561, file: !561, line: 1052, type: !3437, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!560, !3295}
!3439 = !{!3440}
!3440 = !DILocalVariable(name: "g", arg: 1, scope: !3436, file: !561, line: 1052, type: !3295)
!3441 = !DILocation(line: 0, scope: !3436)
!3442 = !DILocation(line: 1054, column: 20, scope: !3436)
!3443 = !DILocation(line: 1054, column: 3, scope: !3436)
!3444 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !561, file: !561, line: 1878, type: !3445, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3447)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!1565, !3295}
!3447 = !{!3448}
!3448 = !DILocalVariable(name: "gs", arg: 1, scope: !3444, file: !561, line: 1878, type: !3295)
!3449 = !DILocation(line: 0, scope: !3444)
!3450 = !DILocation(line: 1881, column: 10, scope: !3444)
!3451 = !DILocation(line: 1881, column: 3, scope: !3444)
!3452 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !561, file: !561, line: 1954, type: !3445, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3453)
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "gs", arg: 1, scope: !3452, file: !561, line: 1954, type: !3295)
!3455 = !DILocalVariable(name: "addr", scope: !3452, file: !561, line: 1956, type: !1565)
!3456 = !DILocation(line: 0, scope: !3452)
!3457 = !DILocation(line: 1956, column: 15, scope: !3452)
!3458 = !DILocation(line: 1957, column: 7, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3452, file: !561, line: 1957, column: 7)
!3460 = !DILocation(line: 1957, column: 24, scope: !3459)
!3461 = !DILocation(line: 1957, column: 7, scope: !3452)
!3462 = !DILocation(line: 1958, column: 12, scope: !3459)
!3463 = !DILocation(line: 1958, column: 5, scope: !3459)
!3464 = !DILocation(line: 1960, column: 1, scope: !3452)
!3465 = distinct !DISubprogram(name: "check_builtin_call", scope: !3, file: !3, line: 256, type: !3303, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3466)
!3466 = !{!3467, !3468}
!3467 = !DILocalVariable(name: "bcall", arg: 1, scope: !3465, file: !3, line: 256, type: !1443)
!3468 = !DILocalVariable(name: "arg", scope: !3465, file: !3, line: 258, type: !1565)
!3469 = !DILocation(line: 0, scope: !3465)
!3470 = !DILocation(line: 260, column: 9, scope: !3465)
!3471 = !DILocation(line: 261, column: 10, scope: !3465)
!3472 = !DILocation(line: 261, column: 3, scope: !3465)
!3473 = distinct !DISubprogram(name: "check_pow", scope: !3, file: !3, line: 178, type: !3303, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3474)
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3483, !3484, !3487, !3488, !3489, !3490}
!3475 = !DILocalVariable(name: "pow_call", arg: 1, scope: !3473, file: !3, line: 178, type: !1443)
!3476 = !DILocalVariable(name: "base", scope: !3473, file: !3, line: 180, type: !1565)
!3477 = !DILocalVariable(name: "expn", scope: !3473, file: !3, line: 180, type: !1565)
!3478 = !DILocalVariable(name: "bc", scope: !3473, file: !3, line: 181, type: !366)
!3479 = !DILocalVariable(name: "ec", scope: !3473, file: !3, line: 181, type: !366)
!3480 = !DILocalVariable(name: "mv", scope: !3481, file: !3, line: 203, type: !1625)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 201, column: 5)
!3482 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 200, column: 7)
!3483 = !DILocalVariable(name: "bcv", scope: !3481, file: !3, line: 204, type: !1625)
!3484 = !DILocalVariable(name: "base_val0", scope: !3485, file: !3, line: 216, type: !1565)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 215, column: 5)
!3486 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 214, column: 12)
!3487 = !DILocalVariable(name: "base_var", scope: !3485, file: !3, line: 216, type: !1565)
!3488 = !DILocalVariable(name: "type", scope: !3485, file: !3, line: 216, type: !1565)
!3489 = !DILocalVariable(name: "base_def", scope: !3485, file: !3, line: 217, type: !1443)
!3490 = !DILocalVariable(name: "bit_sz", scope: !3485, file: !3, line: 218, type: !1376)
!3491 = !DILocation(line: 0, scope: !3473)
!3492 = !DILocation(line: 183, column: 7, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 183, column: 7)
!3494 = !DILocation(line: 183, column: 39, scope: !3493)
!3495 = !DILocation(line: 183, column: 7, scope: !3473)
!3496 = !DILocation(line: 186, column: 10, scope: !3473)
!3497 = !DILocation(line: 187, column: 10, scope: !3473)
!3498 = !DILocation(line: 189, column: 8, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 189, column: 7)
!3500 = !DILocation(line: 189, column: 7, scope: !3473)
!3501 = !DILocation(line: 192, column: 8, scope: !3473)
!3502 = !DILocation(line: 193, column: 8, scope: !3473)
!3503 = !DILocation(line: 197, column: 10, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 197, column: 7)
!3505 = !DILocation(line: 197, column: 28, scope: !3504)
!3506 = !DILocation(line: 197, column: 22, scope: !3504)
!3507 = !DILocation(line: 200, column: 7, scope: !3473)
!3508 = !DILocation(line: 203, column: 7, scope: !3481)
!3509 = !DILocation(line: 204, column: 7, scope: !3481)
!3510 = !DILocation(line: 204, column: 29, scope: !3481)
!3511 = !DILocation(line: 0, scope: !3481)
!3512 = !DILocation(line: 205, column: 11, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 205, column: 11)
!3514 = !DILocation(line: 205, column: 11, scope: !3481)
!3515 = !DILocation(line: 207, column: 11, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 207, column: 11)
!3517 = !DILocation(line: 207, column: 11, scope: !3481)
!3518 = !DILocation(line: 209, column: 31, scope: !3481)
!3519 = !DILocation(line: 209, column: 7, scope: !3481)
!3520 = !DILocation(line: 210, column: 11, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 210, column: 11)
!3522 = !DILocation(line: 213, column: 5, scope: !3482)
!3523 = !DILocation(line: 222, column: 18, scope: !3485)
!3524 = !DILocation(line: 0, scope: !3485)
!3525 = !DILocation(line: 223, column: 11, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 223, column: 11)
!3527 = !DILocation(line: 223, column: 34, scope: !3526)
!3528 = !DILocation(line: 223, column: 11, scope: !3485)
!3529 = !DILocation(line: 226, column: 11, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 226, column: 11)
!3531 = !DILocation(line: 226, column: 45, scope: !3530)
!3532 = !DILocation(line: 226, column: 11, scope: !3485)
!3533 = !DILocation(line: 228, column: 19, scope: !3485)
!3534 = !DILocation(line: 230, column: 18, scope: !3485)
!3535 = !DILocation(line: 231, column: 12, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 231, column: 11)
!3537 = !DILocation(line: 231, column: 11, scope: !3485)
!3538 = !DILocation(line: 234, column: 14, scope: !3485)
!3539 = !DILocation(line: 235, column: 11, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 235, column: 11)
!3541 = !DILocation(line: 235, column: 28, scope: !3540)
!3542 = !DILocation(line: 235, column: 11, scope: !3485)
!3543 = !DILocation(line: 237, column: 16, scope: !3485)
!3544 = !DILocation(line: 241, column: 18, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 241, column: 11)
!3546 = !DILocation(line: 248, column: 1, scope: !3473)
!3547 = distinct !DISubprogram(name: "gimple_op", scope: !561, file: !561, line: 1631, type: !3548, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3550)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!1565, !3295, !7}
!3550 = !{!3551, !3552}
!3551 = !DILocalVariable(name: "gs", arg: 1, scope: !3547, file: !561, line: 1631, type: !3295)
!3552 = !DILocalVariable(name: "i", arg: 2, scope: !3547, file: !561, line: 1631, type: !7)
!3553 = !DILocation(line: 0, scope: !3547)
!3554 = !DILocation(line: 1633, column: 7, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3547, file: !561, line: 1633, column: 7)
!3556 = !DILocation(line: 1633, column: 7, scope: !3547)
!3557 = !DILocation(line: 1638, column: 14, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3555, file: !561, line: 1634, column: 5)
!3559 = !DILocation(line: 1638, column: 7, scope: !3558)
!3560 = !DILocation(line: 0, scope: !3555)
!3561 = !DILocation(line: 1642, column: 1, scope: !3547)
!3562 = distinct !DISubprogram(name: "gimple_has_ops", scope: !561, file: !561, line: 1274, type: !3293, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3563)
!3563 = !{!3564}
!3564 = !DILocalVariable(name: "g", arg: 1, scope: !3562, file: !561, line: 1274, type: !3295)
!3565 = !DILocation(line: 0, scope: !3562)
!3566 = !DILocation(line: 1276, column: 10, scope: !3562)
!3567 = !DILocation(line: 1276, column: 26, scope: !3562)
!3568 = !DILocation(line: 1276, column: 41, scope: !3562)
!3569 = !DILocation(line: 1276, column: 44, scope: !3562)
!3570 = !DILocation(line: 1276, column: 60, scope: !3562)
!3571 = !DILocation(line: 1276, column: 3, scope: !3562)
!3572 = distinct !DISubprogram(name: "gimple_ops", scope: !561, file: !561, line: 1614, type: !3573, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3575)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!1977, !1443}
!3575 = !{!3576, !3577}
!3576 = !DILocalVariable(name: "gs", arg: 1, scope: !3572, file: !561, line: 1614, type: !1443)
!3577 = !DILocalVariable(name: "off", scope: !3572, file: !561, line: 1616, type: !1885)
!3578 = !DILocation(line: 0, scope: !3572)
!3579 = !DILocation(line: 1621, column: 28, scope: !3572)
!3580 = !DILocation(line: 1621, column: 9, scope: !3572)
!3581 = !DILocation(line: 1622, column: 3, scope: !3572)
!3582 = !DILocation(line: 1624, column: 20, scope: !3572)
!3583 = !DILocation(line: 1624, column: 32, scope: !3572)
!3584 = !DILocation(line: 1624, column: 10, scope: !3572)
!3585 = !DILocation(line: 1624, column: 3, scope: !3572)
!3586 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !561, file: !561, line: 1073, type: !3587, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3589)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!1319, !1443}
!3589 = !{!3590}
!3590 = !DILocalVariable(name: "gs", arg: 1, scope: !3586, file: !561, line: 1073, type: !1443)
!3591 = !DILocation(line: 0, scope: !3586)
!3592 = !DILocation(line: 1075, column: 24, scope: !3586)
!3593 = !DILocation(line: 1075, column: 10, scope: !3586)
!3594 = !DILocation(line: 1075, column: 3, scope: !3586)
!3595 = distinct !DISubprogram(name: "gss_for_code", scope: !561, file: !561, line: 1061, type: !3596, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!1319, !560}
!3598 = !{!3599}
!3599 = !DILocalVariable(name: "code", arg: 1, scope: !3595, file: !561, line: 1061, type: !560)
!3600 = !DILocation(line: 0, scope: !3595)
!3601 = !DILocation(line: 1066, column: 10, scope: !3595)
!3602 = !DILocation(line: 1066, column: 3, scope: !3595)
!3603 = distinct !DISubprogram(name: "gimple_call_fn", scope: !561, file: !561, line: 1911, type: !3445, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3604)
!3604 = !{!3605}
!3605 = !DILocalVariable(name: "gs", arg: 1, scope: !3603, file: !561, line: 1911, type: !3295)
!3606 = !DILocation(line: 0, scope: !3603)
!3607 = !DILocation(line: 1914, column: 10, scope: !3603)
!3608 = !DILocation(line: 1914, column: 3, scope: !3603)
!3609 = distinct !DISubprogram(name: "gimple_call_arg", scope: !561, file: !561, line: 2025, type: !3548, scopeLine: 2026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3610)
!3610 = !{!3611, !3612}
!3611 = !DILocalVariable(name: "gs", arg: 1, scope: !3609, file: !561, line: 2025, type: !3295)
!3612 = !DILocalVariable(name: "index", arg: 2, scope: !3609, file: !561, line: 2025, type: !7)
!3613 = !DILocation(line: 0, scope: !3609)
!3614 = !DILocation(line: 2028, column: 31, scope: !3609)
!3615 = !DILocation(line: 2028, column: 10, scope: !3609)
!3616 = !DILocation(line: 2028, column: 3, scope: !3609)
!3617 = distinct !DISubprogram(name: "check_target_format", scope: !3, file: !3, line: 134, type: !3618, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!1375, !1565}
!3620 = !{!3621, !3622, !3623, !3624}
!3621 = !DILocalVariable(name: "arg", arg: 1, scope: !3617, file: !3, line: 134, type: !1565)
!3622 = !DILocalVariable(name: "type", scope: !3617, file: !3, line: 136, type: !1565)
!3623 = !DILocalVariable(name: "mode", scope: !3617, file: !3, line: 137, type: !189)
!3624 = !DILocalVariable(name: "rfmt", scope: !3617, file: !3, line: 138, type: !3625)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3627)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_format", file: !1626, line: 124, size: 448, elements: !3628)
!3628 = !{!3629, !3636, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "encode", scope: !3627, file: !1626, line: 127, baseType: !3630, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{null, !3625, !3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !3627, file: !1626, line: 129, baseType: !3637, size: 64, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{null, !3625, !1624, !3640}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1536)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3627, file: !1626, line: 133, baseType: !1376, size: 32, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3627, file: !1626, line: 136, baseType: !1376, size: 32, offset: 160)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "pnan", scope: !3627, file: !1626, line: 139, baseType: !1376, size: 32, offset: 192)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !3627, file: !1626, line: 142, baseType: !1376, size: 32, offset: 224)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !3627, file: !1626, line: 145, baseType: !1376, size: 32, offset: 256)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "signbit_ro", scope: !3627, file: !1626, line: 149, baseType: !1376, size: 32, offset: 288)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "signbit_rw", scope: !3627, file: !1626, line: 153, baseType: !1376, size: 32, offset: 320)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "round_towards_zero", scope: !3627, file: !1626, line: 156, baseType: !1375, size: 8, offset: 352)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "has_sign_dependent_rounding", scope: !3627, file: !1626, line: 157, baseType: !1375, size: 8, offset: 360)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "has_nans", scope: !3627, file: !1626, line: 160, baseType: !1375, size: 8, offset: 368)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "has_inf", scope: !3627, file: !1626, line: 161, baseType: !1375, size: 8, offset: 376)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm", scope: !3627, file: !1626, line: 162, baseType: !1375, size: 8, offset: 384)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "has_signed_zero", scope: !3627, file: !1626, line: 163, baseType: !1375, size: 8, offset: 392)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "qnan_msb_set", scope: !3627, file: !1626, line: 164, baseType: !1375, size: 8, offset: 400)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_nan_lsbs_set", scope: !3627, file: !1626, line: 165, baseType: !1375, size: 8, offset: 408)
!3657 = !DILocation(line: 0, scope: !3617)
!3658 = !DILocation(line: 140, column: 10, scope: !3617)
!3659 = !DILocation(line: 141, column: 10, scope: !3617)
!3660 = !DILocation(line: 142, column: 10, scope: !3617)
!3661 = !DILocation(line: 144, column: 8, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 143, column: 7)
!3663 = !DILocation(line: 144, column: 17, scope: !3662)
!3664 = !DILocation(line: 144, column: 48, scope: !3662)
!3665 = !DILocation(line: 144, column: 40, scope: !3662)
!3666 = !DILocation(line: 145, column: 13, scope: !3662)
!3667 = !DILocation(line: 147, column: 4, scope: !3662)
!3668 = !DILocation(line: 147, column: 13, scope: !3662)
!3669 = !DILocation(line: 147, column: 44, scope: !3662)
!3670 = !DILocation(line: 147, column: 36, scope: !3662)
!3671 = !DILocation(line: 148, column: 16, scope: !3662)
!3672 = !DILocation(line: 154, column: 26, scope: !3662)
!3673 = !DILocation(line: 155, column: 20, scope: !3662)
!3674 = !DILocation(line: 156, column: 16, scope: !3662)
!3675 = !DILocation(line: 156, column: 8, scope: !3662)
!3676 = !DILocation(line: 157, column: 16, scope: !3662)
!3677 = !DILocation(line: 158, column: 23, scope: !3662)
!3678 = !DILocation(line: 159, column: 23, scope: !3662)
!3679 = !DILocation(line: 160, column: 23, scope: !3662)
!3680 = !DILocation(line: 163, column: 3, scope: !3617)
!3681 = !DILocation(line: 164, column: 1, scope: !3617)
!3682 = distinct !DISubprogram(name: "gimple_call_num_args", scope: !561, file: !561, line: 2013, type: !3683, scopeLine: 2014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!7, !3295}
!3685 = !{!3686, !3687}
!3686 = !DILocalVariable(name: "gs", arg: 1, scope: !3682, file: !561, line: 2013, type: !3295)
!3687 = !DILocalVariable(name: "num_ops", scope: !3682, file: !561, line: 2015, type: !7)
!3688 = !DILocation(line: 0, scope: !3682)
!3689 = !DILocation(line: 2017, column: 13, scope: !3682)
!3690 = !DILocation(line: 2018, column: 18, scope: !3682)
!3691 = !DILocation(line: 2018, column: 3, scope: !3682)
!3692 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !561, file: !561, line: 1815, type: !3693, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3695)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!366, !3295}
!3695 = !{!3696, !3697}
!3696 = !DILocalVariable(name: "gs", arg: 1, scope: !3692, file: !561, line: 1815, type: !3295)
!3697 = !DILocalVariable(name: "code", scope: !3692, file: !561, line: 1817, type: !366)
!3698 = !DILocation(line: 0, scope: !3692)
!3699 = !DILocation(line: 1820, column: 10, scope: !3692)
!3700 = !DILocation(line: 1821, column: 7, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3692, file: !561, line: 1821, column: 7)
!3702 = !DILocation(line: 1821, column: 35, scope: !3701)
!3703 = !DILocation(line: 1821, column: 7, scope: !3692)
!3704 = !DILocation(line: 1822, column: 12, scope: !3701)
!3705 = !DILocation(line: 1822, column: 5, scope: !3701)
!3706 = !DILocation(line: 1824, column: 3, scope: !3692)
!3707 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !561, file: !561, line: 1727, type: !3445, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3708)
!3708 = !{!3709}
!3709 = !DILocalVariable(name: "gs", arg: 1, scope: !3707, file: !561, line: 1727, type: !3295)
!3710 = !DILocation(line: 0, scope: !3707)
!3711 = !DILocation(line: 1730, column: 10, scope: !3707)
!3712 = !DILocation(line: 1730, column: 3, scope: !3707)
!3713 = distinct !DISubprogram(name: "gimple_num_ops", scope: !561, file: !561, line: 1596, type: !3683, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3714)
!3714 = !{!3715}
!3715 = !DILocalVariable(name: "gs", arg: 1, scope: !3713, file: !561, line: 1596, type: !3295)
!3716 = !DILocation(line: 0, scope: !3713)
!3717 = !DILocation(line: 1598, column: 21, scope: !3713)
!3718 = !DILocation(line: 1598, column: 3, scope: !3713)
!3719 = distinct !DISubprogram(name: "gimple_expr_code", scope: !561, file: !561, line: 1438, type: !3693, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3720)
!3720 = !{!3721, !3722}
!3721 = !DILocalVariable(name: "stmt", arg: 1, scope: !3719, file: !561, line: 1438, type: !3295)
!3722 = !DILocalVariable(name: "code", scope: !3719, file: !561, line: 1440, type: !560)
!3723 = !DILocation(line: 0, scope: !3719)
!3724 = !DILocation(line: 1440, column: 27, scope: !3719)
!3725 = !DILocation(line: 1441, column: 29, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3719, file: !561, line: 1441, column: 7)
!3727 = !DILocation(line: 1442, column: 42, scope: !3726)
!3728 = !DILocation(line: 1442, column: 5, scope: !3726)
!3729 = !DILocation(line: 1446, column: 5, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3726, file: !561, line: 1443, column: 12)
!3731 = !DILocation(line: 1448, column: 5, scope: !3719)
!3732 = !DILocation(line: 1450, column: 1, scope: !3719)
!3733 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !561, file: !561, line: 1686, type: !3734, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3736)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!1367, !366}
!3736 = !{!3737}
!3737 = !DILocalVariable(name: "code", arg: 1, scope: !3733, file: !561, line: 1686, type: !366)
!3738 = !DILocation(line: 0, scope: !3733)
!3739 = !DILocation(line: 1688, column: 34, scope: !3733)
!3740 = !DILocation(line: 1688, column: 10, scope: !3733)
!3741 = !DILocation(line: 1688, column: 3, scope: !3733)
!3742 = distinct !DISubprogram(name: "VEC_gimple_heap_reserve", scope: !561, file: !561, line: 34, type: !3743, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!1376, !3340, !1376}
!3745 = !{!3746, !3747, !3748}
!3746 = !DILocalVariable(name: "vec_", arg: 1, scope: !3742, file: !561, line: 34, type: !3340)
!3747 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3742, file: !561, line: 34, type: !1376)
!3748 = !DILocalVariable(name: "extend", scope: !3742, file: !561, line: 34, type: !1376)
!3749 = !DILocation(line: 0, scope: !3742)
!3750 = !DILocation(line: 34, column: 1, scope: !3742)
!3751 = !DILocation(line: 34, column: 1, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3742, file: !561, line: 34, column: 1)
!3753 = distinct !DISubprogram(name: "VEC_gimple_base_quick_push", scope: !561, file: !561, line: 33, type: !3754, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3757)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!3339, !3756, !1443}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!3757 = !{!3758, !3759, !3760}
!3758 = !DILocalVariable(name: "vec_", arg: 1, scope: !3753, file: !561, line: 33, type: !3756)
!3759 = !DILocalVariable(name: "obj_", arg: 2, scope: !3753, file: !561, line: 33, type: !1443)
!3760 = !DILocalVariable(name: "slot_", scope: !3753, file: !561, line: 33, type: !3339)
!3761 = !DILocation(line: 0, scope: !3753)
!3762 = !DILocation(line: 33, column: 1, scope: !3753)
!3763 = distinct !DISubprogram(name: "VEC_gimple_base_space", scope: !561, file: !561, line: 33, type: !3764, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!1376, !3756, !1376}
!3766 = !{!3767, !3768}
!3767 = !DILocalVariable(name: "vec_", arg: 1, scope: !3763, file: !561, line: 33, type: !3756)
!3768 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3763, file: !561, line: 33, type: !1376)
!3769 = !DILocation(line: 0, scope: !3763)
!3770 = !DILocation(line: 33, column: 1, scope: !3763)
!3771 = distinct !DISubprogram(name: "VEC_gimple_base_length", scope: !561, file: !561, line: 33, type: !3772, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3776)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!7, !3774}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1916)
!3776 = !{!3777}
!3777 = !DILocalVariable(name: "vec_", arg: 1, scope: !3771, file: !561, line: 33, type: !3774)
!3778 = !DILocation(line: 0, scope: !3771)
!3779 = !DILocation(line: 33, column: 1, scope: !3771)
!3780 = distinct !DISubprogram(name: "VEC_gimple_base_index", scope: !561, file: !561, line: 33, type: !3781, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!1443, !3774, !7}
!3783 = !{!3784, !3785}
!3784 = !DILocalVariable(name: "vec_", arg: 1, scope: !3780, file: !561, line: 33, type: !3774)
!3785 = !DILocalVariable(name: "ix_", arg: 2, scope: !3780, file: !561, line: 33, type: !7)
!3786 = !DILocation(line: 0, scope: !3780)
!3787 = !DILocation(line: 33, column: 1, scope: !3780)
!3788 = distinct !DISubprogram(name: "shrink_wrap_one_built_in_call", scope: !3, file: !3, line: 729, type: !3303, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3789)
!3789 = !{!3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3812, !3814, !3815, !3816, !3820}
!3790 = !DILocalVariable(name: "bi_call", arg: 1, scope: !3788, file: !3, line: 729, type: !1443)
!3791 = !DILocalVariable(name: "bi_call_bsi", scope: !3788, file: !3, line: 731, type: !3173)
!3792 = !DILocalVariable(name: "bi_call_bb", scope: !3788, file: !3, line: 732, type: !1827)
!3793 = !DILocalVariable(name: "join_tgt_bb", scope: !3788, file: !3, line: 732, type: !1827)
!3794 = !DILocalVariable(name: "guard_bb", scope: !3788, file: !3, line: 732, type: !1827)
!3795 = !DILocalVariable(name: "guard_bb0", scope: !3788, file: !3, line: 732, type: !1827)
!3796 = !DILocalVariable(name: "join_tgt_in_edge_from_call", scope: !3788, file: !3, line: 733, type: !1422)
!3797 = !DILocalVariable(name: "join_tgt_in_edge_fall_thru", scope: !3788, file: !3, line: 733, type: !1422)
!3798 = !DILocalVariable(name: "bi_call_in_edge0", scope: !3788, file: !3, line: 734, type: !1422)
!3799 = !DILocalVariable(name: "guard_bb_in_edge", scope: !3788, file: !3, line: 734, type: !1422)
!3800 = !DILocalVariable(name: "conds", scope: !3788, file: !3, line: 735, type: !2680)
!3801 = !DILocalVariable(name: "tn_cond_stmts", scope: !3788, file: !3, line: 736, type: !7)
!3802 = !DILocalVariable(name: "nconds", scope: !3788, file: !3, line: 736, type: !7)
!3803 = !DILocalVariable(name: "ci", scope: !3788, file: !3, line: 737, type: !7)
!3804 = !DILocalVariable(name: "cond_expr", scope: !3788, file: !3, line: 738, type: !1443)
!3805 = !DILocalVariable(name: "cond_expr_start", scope: !3788, file: !3, line: 739, type: !1443)
!3806 = !DILocalVariable(name: "bi_call_label_decl", scope: !3788, file: !3, line: 740, type: !1565)
!3807 = !DILocalVariable(name: "bi_call_label", scope: !3788, file: !3, line: 741, type: !1443)
!3808 = !DILocalVariable(name: "c", scope: !3809, file: !3, line: 772, type: !1443)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !3, line: 771, column: 5)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 770, column: 3)
!3811 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 770, column: 3)
!3812 = !DILocalVariable(name: "ci0", scope: !3813, file: !3, line: 804, type: !7)
!3813 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 803, column: 5)
!3814 = !DILocalVariable(name: "bi_call_in_edge", scope: !3813, file: !3, line: 805, type: !1422)
!3815 = !DILocalVariable(name: "guard_bsi", scope: !3813, file: !3, line: 806, type: !3173)
!3816 = !DILocalVariable(name: "c", scope: !3817, file: !3, line: 811, type: !1443)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 810, column: 9)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 809, column: 7)
!3819 = distinct !DILexicalBlock(scope: !3813, file: !3, line: 809, column: 7)
!3820 = !DILocalVariable(name: "loc", scope: !3821, file: !3, line: 835, type: !1400)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 834, column: 5)
!3822 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 833, column: 7)
!3823 = !DILocation(line: 0, scope: !3788)
!3824 = !DILocation(line: 731, column: 3, scope: !3788)
!3825 = !DILocation(line: 735, column: 3, scope: !3788)
!3826 = !DILocation(line: 736, column: 3, scope: !3788)
!3827 = !DILocation(line: 743, column: 11, scope: !3788)
!3828 = !DILocation(line: 743, column: 9, scope: !3788)
!3829 = !DILocation(line: 744, column: 3, scope: !3788)
!3830 = !DILocation(line: 750, column: 7, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 750, column: 7)
!3832 = !DILocation(line: 750, column: 14, scope: !3831)
!3833 = !DILocation(line: 750, column: 7, scope: !3788)
!3834 = !DILocation(line: 753, column: 16, scope: !3788)
!3835 = !DILocation(line: 757, column: 17, scope: !3788)
!3836 = !DILocation(line: 759, column: 57, scope: !3788)
!3837 = !DILocation(line: 759, column: 32, scope: !3788)
!3838 = !DILocation(line: 760, column: 17, scope: !3788)
!3839 = !DILocation(line: 762, column: 45, scope: !3788)
!3840 = !DILocation(line: 767, column: 19, scope: !3788)
!3841 = !DILocation(line: 769, column: 21, scope: !3788)
!3842 = !DILocation(line: 770, column: 8, scope: !3811)
!3843 = !DILocation(line: 0, scope: !3811)
!3844 = !DILocation(line: 770, column: 19, scope: !3810)
!3845 = !DILocation(line: 770, column: 3, scope: !3811)
!3846 = !DILocation(line: 772, column: 18, scope: !3809)
!3847 = !DILocation(line: 0, scope: !3809)
!3848 = !DILocation(line: 773, column: 7, scope: !3809)
!3849 = !DILocation(line: 774, column: 12, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3809, file: !3, line: 774, column: 11)
!3851 = !DILocation(line: 774, column: 11, scope: !3809)
!3852 = !DILocation(line: 776, column: 7, scope: !3809)
!3853 = !DILocation(line: 778, column: 5, scope: !3810)
!3854 = !DILocation(line: 770, column: 38, scope: !3810)
!3855 = !DILocation(line: 770, column: 3, scope: !3810)
!3856 = distinct !{!3856, !3845, !3857}
!3857 = !DILocation(line: 778, column: 5, scope: !3811)
!3858 = !DILocation(line: 779, column: 9, scope: !3788)
!3859 = !DILocation(line: 781, column: 3, scope: !3788)
!3860 = !DILocation(line: 784, column: 49, scope: !3788)
!3861 = !DILocation(line: 784, column: 24, scope: !3788)
!3862 = !DILocation(line: 785, column: 19, scope: !3788)
!3863 = !DILocation(line: 786, column: 3, scope: !3788)
!3864 = !DILocation(line: 788, column: 47, scope: !3788)
!3865 = !DILocation(line: 788, column: 22, scope: !3788)
!3866 = !DILocation(line: 789, column: 21, scope: !3788)
!3867 = !DILocation(line: 789, column: 27, scope: !3788)
!3868 = !DILocation(line: 790, column: 27, scope: !3788)
!3869 = !DILocation(line: 792, column: 34, scope: !3788)
!3870 = !DILocation(line: 793, column: 32, scope: !3788)
!3871 = !DILocation(line: 796, column: 21, scope: !3788)
!3872 = !DILocation(line: 796, column: 33, scope: !3788)
!3873 = !DILocation(line: 797, column: 31, scope: !3788)
!3874 = !DILocation(line: 797, column: 43, scope: !3788)
!3875 = !DILocation(line: 0, scope: !3813)
!3876 = !DILocation(line: 802, column: 3, scope: !3788)
!3877 = !DILocation(line: 802, column: 10, scope: !3788)
!3878 = !DILocation(line: 802, column: 17, scope: !3788)
!3879 = !DILocation(line: 806, column: 7, scope: !3813)
!3880 = !DILocation(line: 806, column: 40, scope: !3813)
!3881 = !DILocation(line: 808, column: 25, scope: !3813)
!3882 = !DILocation(line: 809, column: 7, scope: !3813)
!3883 = !DILocation(line: 809, column: 17, scope: !3818)
!3884 = !DILocation(line: 809, column: 7, scope: !3819)
!3885 = !DILocation(line: 811, column: 22, scope: !3817)
!3886 = !DILocation(line: 0, scope: !3817)
!3887 = !DILocation(line: 812, column: 11, scope: !3817)
!3888 = !DILocation(line: 813, column: 16, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 813, column: 15)
!3890 = !DILocation(line: 813, column: 15, scope: !3817)
!3891 = !DILocation(line: 815, column: 11, scope: !3817)
!3892 = !DILocation(line: 817, column: 9, scope: !3818)
!3893 = !DILocation(line: 809, column: 36, scope: !3818)
!3894 = !DILocation(line: 809, column: 7, scope: !3818)
!3895 = distinct !{!3895, !3884, !3896}
!3896 = !DILocation(line: 817, column: 9, scope: !3819)
!3897 = !DILocation(line: 818, column: 13, scope: !3813)
!3898 = !DILocation(line: 820, column: 7, scope: !3813)
!3899 = !DILocation(line: 821, column: 49, scope: !3813)
!3900 = !DILocation(line: 821, column: 26, scope: !3813)
!3901 = !DILocation(line: 822, column: 25, scope: !3813)
!3902 = !DILocation(line: 822, column: 31, scope: !3813)
!3903 = !DILocation(line: 823, column: 31, scope: !3813)
!3904 = !DILocation(line: 825, column: 25, scope: !3813)
!3905 = !DILocation(line: 827, column: 24, scope: !3813)
!3906 = !DILocation(line: 827, column: 36, scope: !3813)
!3907 = !DILocation(line: 828, column: 25, scope: !3813)
!3908 = !DILocation(line: 828, column: 37, scope: !3813)
!3909 = !DILocation(line: 830, column: 5, scope: !3788)
!3910 = distinct !{!3910, !3876, !3909}
!3911 = !DILocation(line: 832, column: 3, scope: !3788)
!3912 = !DILocation(line: 833, column: 7, scope: !3822)
!3913 = !DILocation(line: 833, column: 17, scope: !3822)
!3914 = !DILocation(line: 833, column: 21, scope: !3822)
!3915 = !DILocation(line: 833, column: 32, scope: !3822)
!3916 = !DILocation(line: 833, column: 7, scope: !3788)
!3917 = !DILocation(line: 836, column: 13, scope: !3821)
!3918 = !DILocation(line: 0, scope: !3821)
!3919 = !DILocation(line: 837, column: 16, scope: !3821)
!3920 = !DILocation(line: 840, column: 16, scope: !3821)
!3921 = !DILocation(line: 840, column: 37, scope: !3821)
!3922 = !DILocation(line: 837, column: 7, scope: !3821)
!3923 = !DILocation(line: 841, column: 5, scope: !3821)
!3924 = !DILocation(line: 844, column: 1, scope: !3788)
!3925 = distinct !DISubprogram(name: "gen_shrink_wrap_conditions", scope: !3, file: !3, line: 688, type: !3926, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3929)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{null, !1443, !2680, !3928}
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935, !3936, !3939}
!3930 = !DILocalVariable(name: "bi_call", arg: 1, scope: !3925, file: !3, line: 688, type: !1443)
!3931 = !DILocalVariable(name: "conds", arg: 2, scope: !3925, file: !3, line: 688, type: !2680)
!3932 = !DILocalVariable(name: "nconds", arg: 3, scope: !3925, file: !3, line: 689, type: !3928)
!3933 = !DILocalVariable(name: "call", scope: !3925, file: !3, line: 691, type: !1443)
!3934 = !DILocalVariable(name: "fn", scope: !3925, file: !3, line: 692, type: !1565)
!3935 = !DILocalVariable(name: "fnc", scope: !3925, file: !3, line: 693, type: !599)
!3936 = !DILocalVariable(name: "arg", scope: !3937, file: !3, line: 709, type: !1565)
!3937 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 708, column: 5)
!3938 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 705, column: 7)
!3939 = !DILocalVariable(name: "domain", scope: !3937, file: !3, line: 710, type: !3940)
!3940 = !DIDerivedType(tag: DW_TAG_typedef, name: "inp_domain", file: !3, line: 100, baseType: !3941)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_domain", file: !3, line: 92, size: 96, elements: !3942)
!3942 = !{!3943, !3944, !3945, !3946, !3947, !3948}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !3941, file: !3, line: 94, baseType: !1376, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "ub", scope: !3941, file: !3, line: 95, baseType: !1376, size: 32, offset: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "has_lb", scope: !3941, file: !3, line: 96, baseType: !1375, size: 8, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "has_ub", scope: !3941, file: !3, line: 97, baseType: !1375, size: 8, offset: 72)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "is_lb_inclusive", scope: !3941, file: !3, line: 98, baseType: !1375, size: 8, offset: 80)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "is_ub_inclusive", scope: !3941, file: !3, line: 99, baseType: !1375, size: 8, offset: 88)
!3949 = !DILocation(line: 0, scope: !3925)
!3950 = !DILocation(line: 695, column: 3, scope: !3925)
!3951 = !DILocation(line: 696, column: 3, scope: !3925)
!3952 = !DILocation(line: 697, column: 3, scope: !3925)
!3953 = !DILocation(line: 700, column: 8, scope: !3925)
!3954 = !DILocation(line: 701, column: 3, scope: !3925)
!3955 = !DILocation(line: 702, column: 9, scope: !3925)
!3956 = !DILocation(line: 703, column: 11, scope: !3925)
!3957 = !DILocation(line: 705, column: 11, scope: !3938)
!3958 = !DILocation(line: 705, column: 7, scope: !3925)
!3959 = !DILocation(line: 706, column: 5, scope: !3938)
!3960 = !DILocation(line: 710, column: 7, scope: !3937)
!3961 = !DILocation(line: 710, column: 27, scope: !3937)
!3962 = !DILocation(line: 711, column: 15, scope: !3937)
!3963 = !DILocation(line: 712, column: 13, scope: !3937)
!3964 = !DILocation(line: 0, scope: !3937)
!3965 = !DILocation(line: 713, column: 7, scope: !3937)
!3966 = !DILocation(line: 714, column: 5, scope: !3938)
!3967 = !DILocation(line: 717, column: 1, scope: !3925)
!3968 = distinct !DISubprogram(name: "gimple_bb", scope: !561, file: !561, line: 1112, type: !3969, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3971)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!1406, !3295}
!3971 = !{!3972}
!3972 = !DILocalVariable(name: "g", arg: 1, scope: !3968, file: !561, line: 1112, type: !3295)
!3973 = !DILocation(line: 0, scope: !3968)
!3974 = !DILocation(line: 1114, column: 20, scope: !3968)
!3975 = !DILocation(line: 1114, column: 3, scope: !3968)
!3976 = distinct !DISubprogram(name: "gimple_location", scope: !561, file: !561, line: 1139, type: !3977, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3979)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!1400, !3295}
!3979 = !{!3980}
!3980 = !DILocalVariable(name: "g", arg: 1, scope: !3976, file: !561, line: 1139, type: !3295)
!3981 = !DILocation(line: 0, scope: !3976)
!3982 = !DILocation(line: 1141, column: 20, scope: !3976)
!3983 = !DILocation(line: 1141, column: 3, scope: !3976)
!3984 = distinct !DISubprogram(name: "gen_conditions_for_pow", scope: !3, file: !3, line: 546, type: !3926, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3985)
!3985 = !{!3986, !3987, !3988, !3989, !3990, !3991}
!3986 = !DILocalVariable(name: "pow_call", arg: 1, scope: !3984, file: !3, line: 546, type: !1443)
!3987 = !DILocalVariable(name: "conds", arg: 2, scope: !3984, file: !3, line: 546, type: !2680)
!3988 = !DILocalVariable(name: "nconds", arg: 3, scope: !3984, file: !3, line: 547, type: !3928)
!3989 = !DILocalVariable(name: "base", scope: !3984, file: !3, line: 549, type: !1565)
!3990 = !DILocalVariable(name: "expn", scope: !3984, file: !3, line: 549, type: !1565)
!3991 = !DILocalVariable(name: "bc", scope: !3984, file: !3, line: 550, type: !366)
!3992 = !DILocation(line: 0, scope: !3984)
!3993 = !DILocation(line: 556, column: 11, scope: !3984)
!3994 = !DILocation(line: 558, column: 10, scope: !3984)
!3995 = !DILocation(line: 559, column: 10, scope: !3984)
!3996 = !DILocation(line: 561, column: 8, scope: !3984)
!3997 = !DILocation(line: 563, column: 7, scope: !3984)
!3998 = !DILocation(line: 564, column: 5, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 563, column: 7)
!4000 = !DILocation(line: 566, column: 5, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 565, column: 12)
!4002 = !DILocation(line: 568, column: 5, scope: !4001)
!4003 = !DILocation(line: 569, column: 1, scope: !3984)
!4004 = distinct !DISubprogram(name: "get_no_error_domain", scope: !3, file: !3, line: 591, type: !4005, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4007)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!3940, !599}
!4007 = !{!4008}
!4008 = !DILocalVariable(name: "fnc", arg: 1, scope: !4004, file: !3, line: 591, type: !599)
!4009 = !DILocation(line: 0, scope: !4004)
!4010 = !DILocation(line: 593, column: 3, scope: !4004)
!4011 = !DILocation(line: 598, column: 14, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 594, column: 5)
!4013 = !DILocation(line: 598, column: 7, scope: !4012)
!4014 = !DILocation(line: 603, column: 14, scope: !4012)
!4015 = !DILocation(line: 603, column: 7, scope: !4012)
!4016 = !DILocation(line: 607, column: 14, scope: !4012)
!4017 = !DILocation(line: 607, column: 7, scope: !4012)
!4018 = !DILocation(line: 612, column: 14, scope: !4012)
!4019 = !DILocation(line: 612, column: 7, scope: !4012)
!4020 = !DILocation(line: 619, column: 14, scope: !4012)
!4021 = !DILocation(line: 619, column: 7, scope: !4012)
!4022 = !DILocation(line: 625, column: 14, scope: !4012)
!4023 = !DILocation(line: 625, column: 7, scope: !4012)
!4024 = !DILocation(line: 628, column: 14, scope: !4012)
!4025 = !DILocation(line: 628, column: 7, scope: !4012)
!4026 = !DILocation(line: 634, column: 14, scope: !4012)
!4027 = !DILocation(line: 634, column: 7, scope: !4012)
!4028 = !DILocation(line: 641, column: 14, scope: !4012)
!4029 = !DILocation(line: 641, column: 7, scope: !4012)
!4030 = !DILocation(line: 645, column: 14, scope: !4012)
!4031 = !DILocation(line: 645, column: 7, scope: !4012)
!4032 = !DILocation(line: 650, column: 14, scope: !4012)
!4033 = !DILocation(line: 650, column: 7, scope: !4012)
!4034 = !DILocation(line: 655, column: 14, scope: !4012)
!4035 = !DILocation(line: 655, column: 7, scope: !4012)
!4036 = !DILocation(line: 662, column: 14, scope: !4012)
!4037 = !DILocation(line: 662, column: 7, scope: !4012)
!4038 = !DILocation(line: 666, column: 14, scope: !4012)
!4039 = !DILocation(line: 666, column: 7, scope: !4012)
!4040 = !DILocation(line: 669, column: 7, scope: !4012)
!4041 = !DILocation(line: 672, column: 3, scope: !4004)
!4042 = !DILocation(line: 674, column: 10, scope: !4004)
!4043 = !DILocation(line: 674, column: 3, scope: !4004)
!4044 = !DILocation(line: 677, column: 1, scope: !4004)
!4045 = distinct !DISubprogram(name: "gen_conditions_for_domain", scope: !3, file: !3, line: 376, type: !4046, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4048)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{null, !1565, !3940, !2680, !3928}
!4048 = !{!4049, !4050, !4051, !4052}
!4049 = !DILocalVariable(name: "arg", arg: 1, scope: !4045, file: !3, line: 376, type: !1565)
!4050 = !DILocalVariable(name: "domain", arg: 2, scope: !4045, file: !3, line: 376, type: !3940)
!4051 = !DILocalVariable(name: "conds", arg: 3, scope: !4045, file: !3, line: 377, type: !2680)
!4052 = !DILocalVariable(name: "nconds", arg: 4, scope: !4045, file: !3, line: 378, type: !3928)
!4053 = !DILocation(line: 0, scope: !4045)
!4054 = !DILocation(line: 380, column: 14, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 380, column: 7)
!4056 = !DILocation(line: 380, column: 7, scope: !4055)
!4057 = !DILocation(line: 380, column: 7, scope: !4045)
!4058 = !DILocation(line: 381, column: 36, scope: !4055)
!4059 = !DILocation(line: 382, column: 32, scope: !4055)
!4060 = !DILocation(line: 382, column: 25, scope: !4055)
!4061 = !DILocation(line: 381, column: 5, scope: !4055)
!4062 = !DILocation(line: 387, column: 14, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 387, column: 7)
!4064 = !DILocation(line: 387, column: 7, scope: !4063)
!4065 = !DILocation(line: 387, column: 7, scope: !4045)
!4066 = !DILocation(line: 390, column: 11, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 388, column: 5)
!4068 = !DILocation(line: 391, column: 9, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 390, column: 11)
!4070 = !DILocation(line: 393, column: 38, scope: !4067)
!4071 = !DILocation(line: 394, column: 34, scope: !4067)
!4072 = !DILocation(line: 394, column: 27, scope: !4067)
!4073 = !DILocation(line: 393, column: 7, scope: !4067)
!4074 = !DILocation(line: 398, column: 5, scope: !4067)
!4075 = !DILocation(line: 399, column: 1, scope: !4045)
!4076 = distinct !DISubprogram(name: "gen_conditions_for_pow_cst_base", scope: !3, file: !3, line: 419, type: !4077, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4079)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !1565, !1565, !2680, !3928}
!4079 = !{!4080, !4081, !4082, !4083, !4084, !4085, !4086}
!4080 = !DILocalVariable(name: "base", arg: 1, scope: !4076, file: !3, line: 419, type: !1565)
!4081 = !DILocalVariable(name: "expn", arg: 2, scope: !4076, file: !3, line: 419, type: !1565)
!4082 = !DILocalVariable(name: "conds", arg: 3, scope: !4076, file: !3, line: 420, type: !2680)
!4083 = !DILocalVariable(name: "nconds", arg: 4, scope: !4076, file: !3, line: 421, type: !3928)
!4084 = !DILocalVariable(name: "exp_domain", scope: !4076, file: !3, line: 423, type: !3940)
!4085 = !DILocalVariable(name: "mv", scope: !4076, file: !3, line: 426, type: !1625)
!4086 = !DILocalVariable(name: "bcv", scope: !4076, file: !3, line: 427, type: !1625)
!4087 = !DILocation(line: 0, scope: !4076)
!4088 = !DILocation(line: 423, column: 3, scope: !4076)
!4089 = !DILocation(line: 426, column: 3, scope: !4076)
!4090 = !DILocation(line: 427, column: 3, scope: !4076)
!4091 = !DILocation(line: 427, column: 25, scope: !4076)
!4092 = !DILocation(line: 428, column: 3, scope: !4076)
!4093 = !DILocation(line: 430, column: 27, scope: !4076)
!4094 = !DILocation(line: 430, column: 3, scope: !4076)
!4095 = !DILocation(line: 431, column: 3, scope: !4076)
!4096 = !DILocation(line: 433, column: 16, scope: !4076)
!4097 = !DILocation(line: 436, column: 3, scope: !4076)
!4098 = !DILocation(line: 438, column: 1, scope: !4076)
!4099 = distinct !DISubprogram(name: "gen_conditions_for_pow_int_base", scope: !3, file: !3, line: 455, type: !4077, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4100)
!4100 = !{!4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116}
!4101 = !DILocalVariable(name: "base", arg: 1, scope: !4099, file: !3, line: 455, type: !1565)
!4102 = !DILocalVariable(name: "expn", arg: 2, scope: !4099, file: !3, line: 455, type: !1565)
!4103 = !DILocalVariable(name: "conds", arg: 3, scope: !4099, file: !3, line: 456, type: !2680)
!4104 = !DILocalVariable(name: "nconds", arg: 4, scope: !4099, file: !3, line: 457, type: !3928)
!4105 = !DILocalVariable(name: "base_def", scope: !4099, file: !3, line: 459, type: !1443)
!4106 = !DILocalVariable(name: "base_val0", scope: !4099, file: !3, line: 460, type: !1565)
!4107 = !DILocalVariable(name: "base_var", scope: !4099, file: !3, line: 461, type: !1565)
!4108 = !DILocalVariable(name: "int_type", scope: !4099, file: !3, line: 461, type: !1565)
!4109 = !DILocalVariable(name: "temp", scope: !4099, file: !3, line: 462, type: !1565)
!4110 = !DILocalVariable(name: "tempn", scope: !4099, file: !3, line: 462, type: !1565)
!4111 = !DILocalVariable(name: "cst0", scope: !4099, file: !3, line: 463, type: !1565)
!4112 = !DILocalVariable(name: "stmt1", scope: !4099, file: !3, line: 464, type: !1443)
!4113 = !DILocalVariable(name: "stmt2", scope: !4099, file: !3, line: 464, type: !1443)
!4114 = !DILocalVariable(name: "bit_sz", scope: !4099, file: !3, line: 465, type: !1376)
!4115 = !DILocalVariable(name: "max_exp", scope: !4099, file: !3, line: 465, type: !1376)
!4116 = !DILocalVariable(name: "exp_domain", scope: !4099, file: !3, line: 466, type: !3940)
!4117 = !DILocation(line: 0, scope: !4099)
!4118 = !DILocation(line: 466, column: 3, scope: !4099)
!4119 = !DILocation(line: 468, column: 14, scope: !4099)
!4120 = !DILocation(line: 469, column: 15, scope: !4099)
!4121 = !DILocation(line: 470, column: 14, scope: !4099)
!4122 = !DILocation(line: 471, column: 14, scope: !4099)
!4123 = !DILocation(line: 472, column: 12, scope: !4099)
!4124 = !DILocation(line: 473, column: 3, scope: !4099)
!4125 = !DILocation(line: 480, column: 7, scope: !4099)
!4126 = !DILocation(line: 486, column: 7, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 485, column: 5)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 482, column: 12)
!4129 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 480, column: 7)
!4130 = !DILocation(line: 0, scope: !4128)
!4131 = !DILocation(line: 0, scope: !4129)
!4132 = !DILocation(line: 502, column: 16, scope: !4099)
!4133 = !DILocation(line: 505, column: 3, scope: !4099)
!4134 = !DILocation(line: 514, column: 3, scope: !4099)
!4135 = !DILocation(line: 516, column: 10, scope: !4099)
!4136 = !DILocation(line: 517, column: 10, scope: !4099)
!4137 = !DILocation(line: 518, column: 11, scope: !4099)
!4138 = !DILocation(line: 519, column: 11, scope: !4099)
!4139 = !DILocation(line: 520, column: 3, scope: !4099)
!4140 = !DILocation(line: 521, column: 11, scope: !4099)
!4141 = !DILocation(line: 523, column: 3, scope: !4099)
!4142 = !DILocation(line: 524, column: 3, scope: !4099)
!4143 = !DILocation(line: 525, column: 12, scope: !4099)
!4144 = !DILocation(line: 526, column: 1, scope: !4099)
!4145 = distinct !DISubprogram(name: "get_domain", scope: !3, file: !3, line: 111, type: !4146, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4148)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!3940, !1376, !1375, !1375, !1376, !1375, !1375}
!4148 = !{!4149, !4150, !4151, !4152, !4153, !4154, !4155}
!4149 = !DILocalVariable(name: "lb", arg: 1, scope: !4145, file: !3, line: 111, type: !1376)
!4150 = !DILocalVariable(name: "has_lb", arg: 2, scope: !4145, file: !3, line: 111, type: !1375)
!4151 = !DILocalVariable(name: "lb_inclusive", arg: 3, scope: !4145, file: !3, line: 111, type: !1375)
!4152 = !DILocalVariable(name: "ub", arg: 4, scope: !4145, file: !3, line: 112, type: !1376)
!4153 = !DILocalVariable(name: "has_ub", arg: 5, scope: !4145, file: !3, line: 112, type: !1375)
!4154 = !DILocalVariable(name: "ub_inclusive", arg: 6, scope: !4145, file: !3, line: 112, type: !1375)
!4155 = !DILocalVariable(name: "domain", scope: !4145, file: !3, line: 114, type: !3940)
!4156 = !DILocation(line: 0, scope: !4145)
!4157 = !DILocation(line: 115, column: 10, scope: !4145)
!4158 = !DILocation(line: 115, column: 13, scope: !4145)
!4159 = !DILocation(line: 116, column: 10, scope: !4145)
!4160 = !DILocation(line: 116, column: 17, scope: !4145)
!4161 = !DILocation(line: 117, column: 10, scope: !4145)
!4162 = !DILocation(line: 117, column: 26, scope: !4145)
!4163 = !DILocation(line: 118, column: 10, scope: !4145)
!4164 = !DILocation(line: 118, column: 13, scope: !4145)
!4165 = !DILocation(line: 119, column: 10, scope: !4145)
!4166 = !DILocation(line: 119, column: 17, scope: !4145)
!4167 = !DILocation(line: 120, column: 10, scope: !4145)
!4168 = !DILocation(line: 120, column: 26, scope: !4145)
!4169 = !DILocation(line: 121, column: 3, scope: !4145)
!4170 = distinct !DISubprogram(name: "make_ssa_name", scope: !3395, file: !3395, line: 1245, type: !4171, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!1565, !1565, !1443}
!4173 = !{!4174, !4175}
!4174 = !DILocalVariable(name: "var", arg: 1, scope: !4170, file: !3395, line: 1245, type: !1565)
!4175 = !DILocalVariable(name: "stmt", arg: 2, scope: !4170, file: !3395, line: 1245, type: !1443)
!4176 = !DILocation(line: 0, scope: !4170)
!4177 = !DILocation(line: 1247, column: 28, scope: !4170)
!4178 = !DILocation(line: 1247, column: 10, scope: !4170)
!4179 = !DILocation(line: 1247, column: 3, scope: !4170)
!4180 = distinct !DISubprogram(name: "gimple_assign_set_lhs", scope: !561, file: !561, line: 1714, type: !4181, scopeLine: 1715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4183)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{null, !1443, !1565}
!4183 = !{!4184, !4185}
!4184 = !DILocalVariable(name: "gs", arg: 1, scope: !4180, file: !561, line: 1714, type: !1443)
!4185 = !DILocalVariable(name: "lhs", arg: 2, scope: !4180, file: !561, line: 1714, type: !1565)
!4186 = !DILocation(line: 0, scope: !4180)
!4187 = !DILocation(line: 1717, column: 3, scope: !4180)
!4188 = !DILocation(line: 1719, column: 7, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4180, file: !561, line: 1719, column: 7)
!4190 = !DILocation(line: 1719, column: 11, scope: !4189)
!4191 = !DILocation(line: 1719, column: 14, scope: !4189)
!4192 = !DILocation(line: 1719, column: 30, scope: !4189)
!4193 = !DILocation(line: 1719, column: 7, scope: !4180)
!4194 = !DILocation(line: 1720, column: 5, scope: !4189)
!4195 = !DILocation(line: 1720, column: 29, scope: !4189)
!4196 = !DILocation(line: 1721, column: 1, scope: !4180)
!4197 = distinct !DISubprogram(name: "gimple_set_op", scope: !561, file: !561, line: 1663, type: !4198, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4200)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{null, !1443, !7, !1565}
!4200 = !{!4201, !4202, !4203}
!4201 = !DILocalVariable(name: "gs", arg: 1, scope: !4197, file: !561, line: 1663, type: !1443)
!4202 = !DILocalVariable(name: "i", arg: 2, scope: !4197, file: !561, line: 1663, type: !7)
!4203 = !DILocalVariable(name: "op", arg: 3, scope: !4197, file: !561, line: 1663, type: !1565)
!4204 = !DILocation(line: 0, scope: !4197)
!4205 = !DILocation(line: 1665, column: 3, scope: !4197)
!4206 = !DILocation(line: 1671, column: 3, scope: !4197)
!4207 = !DILocation(line: 1671, column: 22, scope: !4197)
!4208 = !DILocation(line: 1672, column: 1, scope: !4197)
!4209 = distinct !DISubprogram(name: "gen_one_condition", scope: !3, file: !3, line: 331, type: !4210, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4212)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{null, !1565, !1376, !366, !1381, !1381, !2680, !3928}
!4212 = !{!4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229}
!4213 = !DILocalVariable(name: "arg", arg: 1, scope: !4209, file: !3, line: 331, type: !1565)
!4214 = !DILocalVariable(name: "lbub", arg: 2, scope: !4209, file: !3, line: 331, type: !1376)
!4215 = !DILocalVariable(name: "tcode", arg: 3, scope: !4209, file: !3, line: 332, type: !366)
!4216 = !DILocalVariable(name: "temp_name1", arg: 4, scope: !4209, file: !3, line: 333, type: !1381)
!4217 = !DILocalVariable(name: "temp_name2", arg: 5, scope: !4209, file: !3, line: 334, type: !1381)
!4218 = !DILocalVariable(name: "conds", arg: 6, scope: !4209, file: !3, line: 335, type: !2680)
!4219 = !DILocalVariable(name: "nconds", arg: 7, scope: !4209, file: !3, line: 336, type: !3928)
!4220 = !DILocalVariable(name: "lbub_real_cst", scope: !4209, file: !3, line: 338, type: !1565)
!4221 = !DILocalVariable(name: "lbub_cst", scope: !4209, file: !3, line: 338, type: !1565)
!4222 = !DILocalVariable(name: "float_type", scope: !4209, file: !3, line: 338, type: !1565)
!4223 = !DILocalVariable(name: "temp", scope: !4209, file: !3, line: 339, type: !1565)
!4224 = !DILocalVariable(name: "tempn", scope: !4209, file: !3, line: 339, type: !1565)
!4225 = !DILocalVariable(name: "tempc", scope: !4209, file: !3, line: 339, type: !1565)
!4226 = !DILocalVariable(name: "tempcn", scope: !4209, file: !3, line: 339, type: !1565)
!4227 = !DILocalVariable(name: "stmt1", scope: !4209, file: !3, line: 340, type: !1443)
!4228 = !DILocalVariable(name: "stmt2", scope: !4209, file: !3, line: 340, type: !1443)
!4229 = !DILocalVariable(name: "stmt3", scope: !4209, file: !3, line: 340, type: !1443)
!4230 = !DILocation(line: 0, scope: !4209)
!4231 = !DILocation(line: 342, column: 16, scope: !4209)
!4232 = !DILocation(line: 343, column: 29, scope: !4209)
!4233 = !DILocation(line: 343, column: 48, scope: !4209)
!4234 = !DILocation(line: 343, column: 14, scope: !4209)
!4235 = !DILocation(line: 344, column: 19, scope: !4209)
!4236 = !DILocation(line: 346, column: 10, scope: !4209)
!4237 = !DILocation(line: 347, column: 11, scope: !4209)
!4238 = !DILocation(line: 348, column: 11, scope: !4209)
!4239 = !DILocation(line: 349, column: 3, scope: !4209)
!4240 = !DILocation(line: 351, column: 27, scope: !4209)
!4241 = !DILocation(line: 351, column: 11, scope: !4209)
!4242 = !DILocation(line: 352, column: 11, scope: !4209)
!4243 = !DILocation(line: 356, column: 12, scope: !4209)
!4244 = !DILocation(line: 357, column: 3, scope: !4209)
!4245 = !DILocation(line: 359, column: 11, scope: !4209)
!4246 = !DILocation(line: 360, column: 3, scope: !4209)
!4247 = !DILocation(line: 361, column: 3, scope: !4209)
!4248 = !DILocation(line: 362, column: 3, scope: !4209)
!4249 = !DILocation(line: 363, column: 12, scope: !4209)
!4250 = !DILocation(line: 364, column: 1, scope: !4209)
