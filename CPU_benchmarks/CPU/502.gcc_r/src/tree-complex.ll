; ModuleID = 'tree-complex.bc'
source_filename = "tree-complex.c"
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
%struct.VEC_complex_lattice_t_heap = type { %struct.VEC_complex_lattice_t_base }
%struct.VEC_complex_lattice_t_base = type { i32, i32, [1 x i32] }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.real_value = type { i32, [3 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.var_ann_d = type { i8, i32, %union.tree_node* }
%struct.int_tree_map = type { i32, %union.tree_node* }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [10 x i8] c"cplxlower\00", align 1
@pass_lower_complex = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8 ()* null, i32 ()* @tree_lower_complex, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 32, i32 1024, i32 0, i32 0, i32 2067 } }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"cplxlower0\00", align 1
@pass_lower_complex_O0 = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8 ()* @gate_no_optimization, i32 ()* @tree_lower_complex, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 8, i32 1024, i32 0, i32 0, i32 2067 } }, align 8, !dbg !2713
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@complex_lattice_values = internal global %struct.VEC_complex_lattice_t_heap* null, align 8, !dbg !2741
@complex_variable_components = internal unnamed_addr global %struct.htab* null, align 8, !dbg !2743
@complex_ssa_name_components = internal global %struct.VEC_tree_heap* null, align 8, !dbg !2745
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"tree-complex.c\00", align 1
@flag_signed_zeros = external dso_local local_unnamed_addr global i32, align 4
@dconst0 = external dso_local global %struct.real_value, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"$imag\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"$real\00", align 1
@libiberty_concat_ptr = external dso_local local_unnamed_addr global i8*, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@dconst1 = external dso_local global %struct.real_value, align 8
@flag_complex_method = external dso_local local_unnamed_addr global i32, align 4
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@built_in_decls = external dso_local local_unnamed_addr global [721 x %union.tree_node*], align 16
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2751 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2764, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2765, metadata !DIExpression()), !dbg !2766
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2767
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2768
  ret i32 %call, !dbg !2769
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2770 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2774
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2775
  ret i32 %call, !dbg !2776
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2777 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2832, metadata !DIExpression()), !dbg !2833
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2834
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2834
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2834
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2834
  %cmp = icmp uge i8* %0, %1, !dbg !2834
  %conv1 = zext i1 %cmp to i64, !dbg !2834
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2834
  %tobool = icmp eq i64 %expval, 0, !dbg !2834
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2834

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2834
  br label %cond.end, !dbg !2834

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2834
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2834
  %2 = load i8, i8* %0, align 1, !dbg !2834
  %conv3 = zext i8 %2 to i32, !dbg !2834
  br label %cond.end, !dbg !2834

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2834
  ret i32 %cond, !dbg !2835
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2836 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2838, metadata !DIExpression()), !dbg !2839
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2840
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2840
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2840
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2840
  %cmp = icmp uge i8* %0, %1, !dbg !2840
  %conv1 = zext i1 %cmp to i64, !dbg !2840
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2840
  %tobool = icmp eq i64 %expval, 0, !dbg !2840
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2840

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2840
  br label %cond.end, !dbg !2840

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2840
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2840
  %2 = load i8, i8* %0, align 1, !dbg !2840
  %conv3 = zext i8 %2 to i32, !dbg !2840
  br label %cond.end, !dbg !2840

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2840
  ret i32 %cond, !dbg !2841
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2842 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2843
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2843
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2843
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2843
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2843
  %cmp = icmp uge i8* %1, %2, !dbg !2843
  %conv1 = zext i1 %cmp to i64, !dbg !2843
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2843
  %tobool = icmp eq i64 %expval, 0, !dbg !2843
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2843

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2843
  br label %cond.end, !dbg !2843

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2843
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2843
  %3 = load i8, i8* %1, align 1, !dbg !2843
  %conv3 = zext i8 %3 to i32, !dbg !2843
  br label %cond.end, !dbg !2843

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2843
  ret i32 %cond, !dbg !2844
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2845 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2849, metadata !DIExpression()), !dbg !2850
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2851
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2852
  ret i32 %call, !dbg !2853
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2854 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2858, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2859, metadata !DIExpression()), !dbg !2860
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2861
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2861
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2861
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2861
  %cmp = icmp uge i8* %0, %1, !dbg !2861
  %conv1 = zext i1 %cmp to i64, !dbg !2861
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2861
  %tobool = icmp eq i64 %expval, 0, !dbg !2861
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2861

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2861
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2861
  br label %cond.end, !dbg !2861

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2861
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2861
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2861
  store i8 %conv2, i8* %0, align 1, !dbg !2861
  %conv6 = and i32 %__c, 255, !dbg !2861
  br label %cond.end, !dbg !2861

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2861
  ret i32 %cond, !dbg !2862
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2863 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2865, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2866, metadata !DIExpression()), !dbg !2867
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2868
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2868
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2868
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2868
  %cmp = icmp uge i8* %0, %1, !dbg !2868
  %conv1 = zext i1 %cmp to i64, !dbg !2868
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2868
  %tobool = icmp eq i64 %expval, 0, !dbg !2868
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2868

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2868
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2868
  br label %cond.end, !dbg !2868

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2868
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2868
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2868
  store i8 %conv2, i8* %0, align 1, !dbg !2868
  %conv6 = and i32 %__c, 255, !dbg !2868
  br label %cond.end, !dbg !2868

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2868
  ret i32 %cond, !dbg !2869
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2870 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2872, metadata !DIExpression()), !dbg !2873
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2874
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2874
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2874
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2874
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2874
  %cmp = icmp uge i8* %1, %2, !dbg !2874
  %conv1 = zext i1 %cmp to i64, !dbg !2874
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2874
  %tobool = icmp eq i64 %expval, 0, !dbg !2874
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2874

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2874
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2874
  br label %cond.end, !dbg !2874

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2874
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2874
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2874
  store i8 %conv4, i8* %1, align 1, !dbg !2874
  %conv6 = and i32 %__c, 255, !dbg !2874
  br label %cond.end, !dbg !2874

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2874
  ret i32 %cond, !dbg !2875
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2876 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2882, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2883, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2884, metadata !DIExpression()), !dbg !2885
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2886
  ret i64 %call, !dbg !2887
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2888 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2890, metadata !DIExpression()), !dbg !2891
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2892
  %0 = load i32, i32* %_flags, align 8, !dbg !2892
  %and = lshr i32 %0, 4, !dbg !2892
  %and.lobit = and i32 %and, 1, !dbg !2892
  ret i32 %and.lobit, !dbg !2893
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2894 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2896, metadata !DIExpression()), !dbg !2897
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2898
  %0 = load i32, i32* %_flags, align 8, !dbg !2898
  %and = lshr i32 %0, 5, !dbg !2898
  %and.lobit = and i32 %and, 1, !dbg !2898
  ret i32 %and.lobit, !dbg !2899
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2900 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2903, metadata !DIExpression()), !dbg !2904
  %__c.off = add i32 %__c, 128, !dbg !2905
  %0 = icmp ult i32 %__c.off, 384, !dbg !2905
  br i1 %0, label %cond.true, label %cond.end, !dbg !2905

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2906
  %1 = load i32*, i32** %call, align 8, !dbg !2907
  %idxprom = sext i32 %__c to i64, !dbg !2908
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2908
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2908
  br label %cond.end, !dbg !2909

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2909
  ret i32 %cond, !dbg !2910
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2911 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2913, metadata !DIExpression()), !dbg !2914
  %__c.off = add i32 %__c, 128, !dbg !2915
  %0 = icmp ult i32 %__c.off, 384, !dbg !2915
  br i1 %0, label %cond.true, label %cond.end, !dbg !2915

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2916
  %1 = load i32*, i32** %call, align 8, !dbg !2917
  %idxprom = sext i32 %__c to i64, !dbg !2918
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2918
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2918
  br label %cond.end, !dbg !2919

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2919
  ret i32 %cond, !dbg !2920
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2921 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2926, metadata !DIExpression()), !dbg !2927
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2928
  %conv = trunc i64 %call to i32, !dbg !2929
  ret i32 %conv, !dbg !2930
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2931 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2935, metadata !DIExpression()), !dbg !2936
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2937
  ret i64 %call, !dbg !2938
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2939 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2944, metadata !DIExpression()), !dbg !2945
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2946
  ret i64 %call, !dbg !2947
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2948 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2954, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2955, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2956, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2957, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2958, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 0, metadata !2959, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2960, metadata !DIExpression()), !dbg !2964
  br label %while.cond, !dbg !2965

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2966
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2964
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2960, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2959, metadata !DIExpression()), !dbg !2964
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2967
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2965

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2968
  %div = lshr i64 %add, 1, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %div, metadata !2961, metadata !DIExpression()), !dbg !2964
  %mul = mul i64 %div, %__size, !dbg !2971
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2972
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2962, metadata !DIExpression()), !dbg !2964
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %call, metadata !2963, metadata !DIExpression()), !dbg !2964
  %cmp1 = icmp slt i32 %call, 0, !dbg !2974
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2976

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2977
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2979

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2959, metadata !DIExpression()), !dbg !2964
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2964
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2964
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2960, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2959, metadata !DIExpression()), !dbg !2964
  br label %while.cond, !dbg !2965, !llvm.loop !2981

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2964
  ret i8* %retval.0, !dbg !2983
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2984 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2990, metadata !DIExpression()), !dbg !2991
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2992
  ret double %call, !dbg !2993
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2994 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !3003, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 %base, metadata !3005, metadata !DIExpression()), !dbg !3006
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !3007
  ret i64 %call, !dbg !3008
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !3009 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !3015, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !3016, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 %base, metadata !3017, metadata !DIExpression()), !dbg !3018
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !3019
  ret i64 %call, !dbg !3020
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !3021 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !3032, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !3033, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i32 %base, metadata !3034, metadata !DIExpression()), !dbg !3035
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !3036
  ret i64 %call, !dbg !3037
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !3038 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !3043, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 %base, metadata !3044, metadata !DIExpression()), !dbg !3045
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !3046
  ret i64 %call, !dbg !3047
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !3048 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3088, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3089, metadata !DIExpression()), !dbg !3090
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !3091
  ret i32 %call, !dbg !3092
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !3093 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3095, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3096, metadata !DIExpression()), !dbg !3097
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !3098
  ret i32 %call, !dbg !3099
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !3100 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3104, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3105, metadata !DIExpression()), !dbg !3106
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !3107
  ret i32 %call, !dbg !3108
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !3109 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3113, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !3114, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !3116, metadata !DIExpression()), !dbg !3117
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !3118
  ret i32 %call, !dbg !3119
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !3120 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3124, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !3125, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !3126, metadata !DIExpression()), !dbg !3127
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !3126, metadata !DIExpression(DW_OP_deref)), !dbg !3127
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !3128
  ret i32 %call, !dbg !3129
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !3130 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3134, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3135, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !3136, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !3137, metadata !DIExpression()), !dbg !3138
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !3137, metadata !DIExpression(DW_OP_deref)), !dbg !3138
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !3139
  ret i32 %call, !dbg !3140
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3141 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3165, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3166, metadata !DIExpression()), !dbg !3167
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !3168
  ret i32 %call, !dbg !3169
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3170 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3172, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3173, metadata !DIExpression()), !dbg !3174
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !3175
  ret i32 %call, !dbg !3176
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3177 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3181, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3182, metadata !DIExpression()), !dbg !3183
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !3184
  ret i32 %call, !dbg !3185
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !3186 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3190, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !3191, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3192, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !3193, metadata !DIExpression()), !dbg !3194
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !3195
  ret i32 %call, !dbg !3196
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @tree_lower_complex() #5 !dbg !3197 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3208
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3208
  %call = tail call fastcc zeroext i8 @init_dont_simulate_again() #8, !dbg !3209
  %tobool = icmp eq i8 %call, 0, !dbg !3209
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3211

if.end:                                           ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3212
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 3, !dbg !3212
  %2 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3212
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %2, i64 0, i32 2, !dbg !3212
  %3 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !3212
  %tobool1 = icmp eq %struct.VEC_tree_gc* %3, null, !dbg !3212
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3212

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %3, i64 0, i32 0, !dbg !3212
  br label %cond.end, !dbg !3212

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !3212
  %call5 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #8, !dbg !3212
  %call6 = tail call fastcc %struct.VEC_complex_lattice_t_heap* @VEC_complex_lattice_t_heap_alloc(i32 %call5) #8, !dbg !3212
  store %struct.VEC_complex_lattice_t_heap* %call6, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !3213
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3214
  %gimple_df8 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 3, !dbg !3214
  %5 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df8, align 8, !dbg !3214
  %ssa_names9 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %5, i64 0, i32 2, !dbg !3214
  %6 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names9, align 8, !dbg !3214
  %tobool10 = icmp eq %struct.VEC_tree_gc* %6, null, !dbg !3214
  br i1 %tobool10, label %cond.end17, label %cond.true11, !dbg !3214

cond.true11:                                      ; preds = %cond.end
  %base15 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %6, i64 0, i32 0, !dbg !3214
  br label %cond.end17, !dbg !3214

cond.end17:                                       ; preds = %cond.end, %cond.true11
  %cond18 = phi %struct.VEC_tree_base* [ %base15, %cond.true11 ], [ null, %cond.end ], !dbg !3214
  %call19 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond18) #8, !dbg !3214
  tail call fastcc void @VEC_complex_lattice_t_heap_safe_grow_cleared(%struct.VEC_complex_lattice_t_heap** nonnull @complex_lattice_values, i32 %call19) #8, !dbg !3214
  tail call fastcc void @init_parameter_lattice_values() #8, !dbg !3215
  tail call void @ssa_propagate(i32 (%union.gimple_statement_d*, %struct.edge_def**, %union.tree_node**)* nonnull @complex_visit_stmt, i32 (%union.gimple_statement_d*)* nonnull @complex_visit_phi) #6, !dbg !3216
  %call20 = tail call %struct.htab* @htab_create(i64 10, i32 (i8*)* nonnull @int_tree_map_hash, i32 (i8*, i8*)* nonnull @int_tree_map_eq, void (i8*)* nonnull @free) #6, !dbg !3217
  store %struct.htab* %call20, %struct.htab** @complex_variable_components, align 8, !dbg !3218
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3219
  %gimple_df22 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 3, !dbg !3219
  %8 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df22, align 8, !dbg !3219
  %ssa_names23 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %8, i64 0, i32 2, !dbg !3219
  %9 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names23, align 8, !dbg !3219
  %tobool24 = icmp eq %struct.VEC_tree_gc* %9, null, !dbg !3219
  br i1 %tobool24, label %cond.end31, label %cond.true25, !dbg !3219

cond.true25:                                      ; preds = %cond.end17
  %base29 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %9, i64 0, i32 0, !dbg !3219
  br label %cond.end31, !dbg !3219

cond.end31:                                       ; preds = %cond.end17, %cond.true25
  %cond32 = phi %struct.VEC_tree_base* [ %base29, %cond.true25 ], [ null, %cond.end17 ], !dbg !3219
  %call33 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond32) #8, !dbg !3219
  %mul = shl i32 %call33, 1, !dbg !3219
  %call34 = tail call fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 %mul) #8, !dbg !3219
  store %struct.VEC_tree_heap* %call34, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !3220
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3221
  %gimple_df36 = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 3, !dbg !3221
  %11 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df36, align 8, !dbg !3221
  %ssa_names37 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %11, i64 0, i32 2, !dbg !3221
  %12 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names37, align 8, !dbg !3221
  %tobool38 = icmp eq %struct.VEC_tree_gc* %12, null, !dbg !3221
  br i1 %tobool38, label %cond.end45, label %cond.true39, !dbg !3221

cond.true39:                                      ; preds = %cond.end31
  %base43 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %12, i64 0, i32 0, !dbg !3221
  br label %cond.end45, !dbg !3221

cond.end45:                                       ; preds = %cond.end31, %cond.true39
  %cond46 = phi %struct.VEC_tree_base* [ %base43, %cond.true39 ], [ null, %cond.end31 ], !dbg !3221
  %call47 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond46) #8, !dbg !3221
  %mul48 = shl i32 %call47, 1, !dbg !3221
  tail call fastcc void @VEC_tree_heap_safe_grow_cleared(%struct.VEC_tree_heap** nonnull @complex_ssa_name_components, i32 %mul48) #8, !dbg !3221
  tail call fastcc void @update_parameter_components() #8, !dbg !3222
  %13 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3223
  %cfg = getelementptr inbounds %struct.function, %struct.function* %13, i64 0, i32 1, !dbg !3223
  %14 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3223
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %14, i64 0, i32 5, !dbg !3223
  %15 = load i32, i32* %x_last_basic_block, align 8, !dbg !3223
  call void @llvm.dbg.value(metadata i32 %15, metadata !3199, metadata !DIExpression()), !dbg !3224
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %14, i64 0, i32 0, !dbg !3225
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3225
  %17 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3227
  br label %for.cond, !dbg !3225

for.cond:                                         ; preds = %for.inc61, %cond.end45
  %.pre2 = phi %struct.function* [ %13, %cond.end45 ], [ %.pre, %for.inc61 ]
  %18 = phi %struct.control_flow_graph* [ %14, %cond.end45 ], [ %.pre1, %for.inc61 ], !dbg !3231
  %.pn = phi %struct.basic_block_def* [ %16, %cond.end45 ], [ %bb.0, %for.inc61 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3232
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3232
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3207, metadata !DIExpression()), !dbg !3224
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 1, !dbg !3231
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3231
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %19, !dbg !3231
  br i1 %cmp, label %for.end63, label %for.body, !dbg !3225

for.body:                                         ; preds = %for.cond
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3233
  %20 = load i32, i32* %index, align 8, !dbg !3233
  %cmp54 = icmp slt i32 %20, %15, !dbg !3235
  br i1 %cmp54, label %if.end56, label %for.inc61, !dbg !3236

if.end56:                                         ; preds = %for.body
  call fastcc void @update_phi_components(%struct.basic_block_def* %bb.0) #8, !dbg !3237
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #7, !dbg !3238
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #8, !dbg !3238
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %17, i64 24, i1 false), !dbg !3238
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #7, !dbg !3238
  br label %for.cond57, !dbg !3239

for.cond57:                                       ; preds = %for.body60, %if.end56
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3200, metadata !DIExpression(DW_OP_deref)), !dbg !3224
  %call58 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3240
  %tobool59 = icmp eq i8 %call58, 0, !dbg !3242
  br i1 %tobool59, label %for.body60, label %for.inc61.loopexit, !dbg !3243

for.body60:                                       ; preds = %for.cond57
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3200, metadata !DIExpression(DW_OP_deref)), !dbg !3224
  call fastcc void @expand_complex_operations_1(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !3244
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3200, metadata !DIExpression(DW_OP_deref)), !dbg !3224
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !3245
  br label %for.cond57, !dbg !3246, !llvm.loop !3247

for.inc61.loopexit:                               ; preds = %for.cond57
  %.pre.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3231
  br label %for.inc61, !dbg !3231

for.inc61:                                        ; preds = %for.inc61.loopexit, %for.body
  %.pre = phi %struct.function* [ %.pre.pre, %for.inc61.loopexit ], [ %.pre2, %for.body ], !dbg !3231
  %cfg53.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3249
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg53.phi.trans.insert, align 8, !dbg !3231
  br label %for.cond, !dbg !3231, !llvm.loop !3250

for.end63:                                        ; preds = %for.cond
  call void @gsi_commit_edge_inserts() #6, !dbg !3252
  %21 = load %struct.htab*, %struct.htab** @complex_variable_components, align 8, !dbg !3253
  call void @htab_delete(%struct.htab* %21) #6, !dbg !3254
  call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull @complex_ssa_name_components) #8, !dbg !3255
  call fastcc void @VEC_complex_lattice_t_heap_free(%struct.VEC_complex_lattice_t_heap** nonnull @complex_lattice_values) #8, !dbg !3256
  br label %cleanup, !dbg !3257

cleanup:                                          ; preds = %entry, %for.end63
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3258
  ret i32 0, !dbg !3258
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_no_optimization() #5 !dbg !3259 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3260
  %curr_properties = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 17, !dbg !3261
  %1 = load i32, i32* %curr_properties, align 8, !dbg !3261
  %and = lshr i32 %1, 10, !dbg !3262
  %2 = trunc i32 %and to i8, !dbg !3262
  %3 = and i8 %2, 1, !dbg !3262
  %4 = xor i8 %3, 1, !dbg !3262
  ret i8 %4, !dbg !3263
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @init_dont_simulate_again() unnamed_addr #5 !dbg !3264 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp8 = alloca %struct.gimple_stmt_iterator, align 8
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3280
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3280
  call void @llvm.dbg.value(metadata i8 0, metadata !3269, metadata !DIExpression()), !dbg !3281
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3282
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3282
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3282
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !3282
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3282
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3283
  %5 = bitcast %struct.gimple_stmt_iterator* %tmp8 to i8*, !dbg !3285
  br label %for.cond, !dbg !3282

for.cond:                                         ; preds = %for.inc82, %entry
  %6 = phi %struct.control_flow_graph* [ %2, %entry ], [ %.pre6, %for.inc82 ], !dbg !3286
  %saw_a_complex_op.0 = phi i8 [ 0, %entry ], [ %saw_a_complex_op.1.lcssa, %for.inc82 ], !dbg !3287
  %.pn = phi %struct.basic_block_def* [ %3, %entry ], [ %bb.0, %for.inc82 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3288
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3288
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3266, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 %saw_a_complex_op.0, metadata !3269, metadata !DIExpression()), !dbg !3281
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 1, !dbg !3286
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3286
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %7, !dbg !3286
  br i1 %cmp, label %for.end84, label %for.body, !dbg !3282

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !3289
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #6, !dbg !3289
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !3289
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !3289
  br label %for.cond3, !dbg !3290

for.cond3:                                        ; preds = %for.body4, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3267, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3291
  %tobool = icmp eq i8 %call, 0, !dbg !3293
  br i1 %tobool, label %for.body4, label %for.end, !dbg !3294

for.body4:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3267, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3295
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !3268, metadata !DIExpression()), !dbg !3281
  %call6 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call5) #8, !dbg !3297
  %call7 = call fastcc zeroext i8 @is_complex_reg(%union.tree_node* %call6) #8, !dbg !3298
  call fastcc void @prop_set_simulate_again(%union.gimple_statement_d* %call5, i8 zeroext %call7) #8, !dbg !3299
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3267, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !3300
  br label %for.cond3, !dbg !3301, !llvm.loop !3302

for.end:                                          ; preds = %for.cond3
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !3304
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp8, %struct.basic_block_def* %bb.0) #8, !dbg !3304
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !3304
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !3304
  br label %for.cond9, !dbg !3305

for.cond9:                                        ; preds = %if.end79, %for.end
  %saw_a_complex_op.1 = phi i8 [ %saw_a_complex_op.0, %for.end ], [ %saw_a_complex_op.6, %if.end79 ], !dbg !3287
  call void @llvm.dbg.value(metadata i8 %saw_a_complex_op.1, metadata !3269, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3267, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  %call10 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3306
  %tobool11 = icmp eq i8 %call10, 0, !dbg !3307
  br i1 %tobool11, label %for.body13, label %for.inc82, !dbg !3308

for.body13:                                       ; preds = %for.cond9
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3267, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  %call14 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3309
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call14, metadata !3270, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3278, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3277, metadata !DIExpression()), !dbg !3310
  %call15 = call zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d* %call14) #6, !dbg !3311
  call void @llvm.dbg.value(metadata i8 %call15, metadata !3279, metadata !DIExpression()), !dbg !3310
  %call16 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call14) #8, !dbg !3312
  switch i32 %call16, label %sw.epilog [
    i32 8, label %sw.bb
    i32 6, label %sw.bb21
    i32 1, label %sw.bb37
  ], !dbg !3313

sw.bb:                                            ; preds = %for.body13
  %call17 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call14) #8, !dbg !3314
  %tobool18 = icmp eq %union.tree_node* %call17, null, !dbg !3314
  br i1 %tobool18, label %sw.epilog, label %if.then, !dbg !3317

if.then:                                          ; preds = %sw.bb
  %call19 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call14) #8, !dbg !3318
  %call20 = call fastcc zeroext i8 @is_complex_reg(%union.tree_node* %call19) #8, !dbg !3319
  call void @llvm.dbg.value(metadata i8 %call20, metadata !3279, metadata !DIExpression()), !dbg !3310
  br label %sw.epilog, !dbg !3320

sw.bb21:                                          ; preds = %for.body13
  %call22 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call14) #8, !dbg !3321
  %call23 = call fastcc zeroext i8 @is_complex_reg(%union.tree_node* %call22) #8, !dbg !3322
  call void @llvm.dbg.value(metadata i8 %call23, metadata !3279, metadata !DIExpression()), !dbg !3310
  %call24 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call14) #8, !dbg !3323
  %cmp25 = icmp eq i32 %call24, 43, !dbg !3325
  br i1 %cmp25, label %if.then28, label %lor.lhs.false, !dbg !3326

lor.lhs.false:                                    ; preds = %sw.bb21
  %call26 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call14) #8, !dbg !3327
  %cmp27 = icmp eq i32 %call26, 44, !dbg !3328
  br i1 %cmp27, label %if.then28, label %if.else, !dbg !3329

if.then28:                                        ; preds = %lor.lhs.false, %sw.bb21
  %call29 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call14) #8, !dbg !3330
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call29, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3330
  %8 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3330
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !3277, metadata !DIExpression()), !dbg !3310
  br label %if.end31, !dbg !3331

if.else:                                          ; preds = %lor.lhs.false
  %call30 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call14) #8, !dbg !3332
  call void @llvm.dbg.value(metadata %union.tree_node* %call30, metadata !3277, metadata !DIExpression()), !dbg !3310
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  %op0.0 = phi %union.tree_node* [ %8, %if.then28 ], [ %call30, %if.else ], !dbg !3333
  call void @llvm.dbg.value(metadata %union.tree_node* %op0.0, metadata !3277, metadata !DIExpression()), !dbg !3310
  %call32 = call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %call14) #8, !dbg !3334
  %cmp33 = icmp ugt i32 %call32, 2, !dbg !3336
  br i1 %cmp33, label %if.then34, label %sw.epilog, !dbg !3337

if.then34:                                        ; preds = %if.end31
  %call35 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %call14) #8, !dbg !3338
  call void @llvm.dbg.value(metadata %union.tree_node* %call35, metadata !3278, metadata !DIExpression()), !dbg !3310
  br label %sw.epilog, !dbg !3339

sw.bb37:                                          ; preds = %for.body13
  %call38 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %call14) #8, !dbg !3340
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !3277, metadata !DIExpression()), !dbg !3310
  %call39 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call14) #8, !dbg !3341
  call void @llvm.dbg.value(metadata %union.tree_node* %call39, metadata !3278, metadata !DIExpression()), !dbg !3310
  br label %sw.epilog, !dbg !3342

sw.epilog:                                        ; preds = %sw.bb, %for.body13, %if.end31, %if.then34, %if.then, %sw.bb37
  %op0.1 = phi %union.tree_node* [ %call38, %sw.bb37 ], [ null, %if.then ], [ null, %sw.bb ], [ %op0.0, %if.then34 ], [ %op0.0, %if.end31 ], [ null, %for.body13 ], !dbg !3310
  %op1.1 = phi %union.tree_node* [ %call39, %sw.bb37 ], [ null, %if.then ], [ null, %sw.bb ], [ %call35, %if.then34 ], [ null, %if.end31 ], [ null, %for.body13 ], !dbg !3310
  %sim_again_p.1 = phi i8 [ %call15, %sw.bb37 ], [ %call20, %if.then ], [ %call15, %sw.bb ], [ %call23, %if.then34 ], [ %call23, %if.end31 ], [ %call15, %for.body13 ], !dbg !3310
  call void @llvm.dbg.value(metadata i8 %sim_again_p.1, metadata !3279, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata %union.tree_node* %op1.1, metadata !3278, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata %union.tree_node* %op0.1, metadata !3277, metadata !DIExpression()), !dbg !3310
  %tobool40 = icmp ne %union.tree_node* %op0.1, null, !dbg !3343
  %tobool42 = icmp ne %union.tree_node* %op1.1, null, !dbg !3345
  %or.cond = or i1 %tobool40, %tobool42, !dbg !3346
  br i1 %or.cond, label %if.then43, label %if.end79, !dbg !3346

if.then43:                                        ; preds = %sw.epilog
  %call44 = call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %call14) #8, !dbg !3347
  switch i32 %call44, label %if.end79 [
    i32 101, label %sw.bb45
    i32 102, label %sw.bb45
    i32 63, label %sw.bb45
    i32 64, label %sw.bb45
    i32 65, label %sw.bb45
    i32 67, label %sw.bb45
    i32 68, label %sw.bb45
    i32 69, label %sw.bb45
    i32 70, label %sw.bb45
    i32 75, label %sw.bb45
    i32 79, label %sw.bb57
    i32 124, label %sw.bb57
    i32 43, label %sw.bb67
    i32 44, label %sw.bb67
  ], !dbg !3348

sw.bb45:                                          ; preds = %if.then43, %if.then43, %if.then43, %if.then43, %if.then43, %if.then43, %if.then43, %if.then43, %if.then43, %if.then43
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %op0.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3349
  %9 = bitcast %union.tree_node** %type to i64**, !dbg !3349
  %10 = load i64*, i64** %9, align 8, !dbg !3349
  %bf.load = load i64, i64* %10, align 8, !dbg !3349
  %bf.cast4 = and i64 %bf.load, 65535, !dbg !3352
  %cmp46 = icmp eq i64 %bf.cast4, 13, !dbg !3352
  br i1 %cmp46, label %if.then55, label %lor.lhs.false47, !dbg !3353

lor.lhs.false47:                                  ; preds = %sw.bb45
  %type49 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3354
  %11 = bitcast %union.tree_node** %type49 to i64**, !dbg !3354
  %12 = load i64*, i64** %11, align 8, !dbg !3354
  %bf.load51 = load i64, i64* %12, align 8, !dbg !3354
  %bf.cast535 = and i64 %bf.load51, 65535, !dbg !3355
  %cmp54 = icmp eq i64 %bf.cast535, 13, !dbg !3355
  br i1 %cmp54, label %if.then55, label %if.end79, !dbg !3356

if.then55:                                        ; preds = %lor.lhs.false47, %sw.bb45
  call void @llvm.dbg.value(metadata i8 1, metadata !3269, metadata !DIExpression()), !dbg !3281
  br label %if.end79, !dbg !3357

sw.bb57:                                          ; preds = %if.then43, %if.then43
  %type59 = getelementptr inbounds %union.tree_node, %union.tree_node* %op0.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3358
  %13 = bitcast %union.tree_node** %type59 to i64**, !dbg !3358
  %14 = load i64*, i64** %13, align 8, !dbg !3358
  %bf.load61 = load i64, i64* %14, align 8, !dbg !3358
  %bf.cast633 = and i64 %bf.load61, 65535, !dbg !3360
  %cmp64 = icmp eq i64 %bf.cast633, 13, !dbg !3360
  %spec.select = select i1 %cmp64, i8 1, i8 %saw_a_complex_op.1, !dbg !3361
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !3269, metadata !DIExpression()), !dbg !3281
  br label %if.end79, !dbg !3362

sw.bb67:                                          ; preds = %if.then43, %if.then43
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %op0.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3363
  %bf.load69 = load i64, i64* %15, align 8, !dbg !3363
  %bf.cast712 = and i64 %bf.load69, 65535, !dbg !3365
  %cmp72 = icmp eq i64 %bf.cast712, 141, !dbg !3365
  br i1 %cmp72, label %land.lhs.true, label %if.end79, !dbg !3366

land.lhs.true:                                    ; preds = %sw.bb67
  %call73 = call zeroext i8 @ssa_undefined_value_p(%union.tree_node* %op0.1) #6, !dbg !3367
  %tobool74 = icmp eq i8 %call73, 0, !dbg !3367
  %spec.select1 = select i1 %tobool74, i8 %saw_a_complex_op.1, i8 1, !dbg !3368
  br label %if.end79, !dbg !3368

if.end79:                                         ; preds = %land.lhs.true, %sw.bb57, %if.then55, %lor.lhs.false47, %sw.bb67, %if.then43, %sw.epilog
  %saw_a_complex_op.6 = phi i8 [ %saw_a_complex_op.1, %sw.epilog ], [ %spec.select, %sw.bb57 ], [ 1, %if.then55 ], [ %saw_a_complex_op.1, %lor.lhs.false47 ], [ %saw_a_complex_op.1, %sw.bb67 ], [ %spec.select1, %land.lhs.true ], [ %saw_a_complex_op.1, %if.then43 ], !dbg !3287
  call void @llvm.dbg.value(metadata i8 %saw_a_complex_op.6, metadata !3269, metadata !DIExpression()), !dbg !3281
  call fastcc void @prop_set_simulate_again(%union.gimple_statement_d* %call14, i8 zeroext %sim_again_p.1) #8, !dbg !3369
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3267, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !3370
  br label %for.cond9, !dbg !3371, !llvm.loop !3372

for.inc82:                                        ; preds = %for.cond9
  %saw_a_complex_op.1.lcssa = phi i8 [ %saw_a_complex_op.1, %for.cond9 ], !dbg !3287
  call void @llvm.dbg.value(metadata i8 %saw_a_complex_op.1.lcssa, metadata !3269, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 %saw_a_complex_op.1.lcssa, metadata !3269, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 %saw_a_complex_op.1.lcssa, metadata !3269, metadata !DIExpression()), !dbg !3281
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3286
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3374
  %.pre6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3286
  br label %for.cond, !dbg !3286, !llvm.loop !3375

for.end84:                                        ; preds = %for.cond
  %saw_a_complex_op.0.lcssa = phi i8 [ %saw_a_complex_op.0, %for.cond ], !dbg !3287
  call void @llvm.dbg.value(metadata i8 %saw_a_complex_op.0.lcssa, metadata !3269, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 %saw_a_complex_op.0.lcssa, metadata !3269, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 %saw_a_complex_op.0.lcssa, metadata !3269, metadata !DIExpression()), !dbg !3281
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3377
  ret i8 %saw_a_complex_op.0.lcssa, !dbg !3378
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_complex_lattice_t_heap* @VEC_complex_lattice_t_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3379 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3383, metadata !DIExpression()), !dbg !3384
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !3385
  %0 = bitcast i8* %call to %struct.VEC_complex_lattice_t_heap*, !dbg !3385
  ret %struct.VEC_complex_lattice_t_heap* %0, !dbg !3385
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !3386 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3392, metadata !DIExpression()), !dbg !3393
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3394
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3394

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3394
  %0 = load i32, i32* %num, align 8, !dbg !3394
  br label %cond.end, !dbg !3394

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3394
  ret i32 %cond, !dbg !3394
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_complex_lattice_t_heap_safe_grow_cleared(%struct.VEC_complex_lattice_t_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !3395 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, metadata !3400, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 %size_, metadata !3401, metadata !DIExpression()), !dbg !3403
  %0 = load %struct.VEC_complex_lattice_t_heap*, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !3404
  %tobool = icmp eq %struct.VEC_complex_lattice_t_heap* %0, null, !dbg !3404
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3404

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_complex_lattice_t_heap, %struct.VEC_complex_lattice_t_heap* %0, i64 0, i32 0, !dbg !3404
  br label %cond.end, !dbg !3404

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_complex_lattice_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3404
  %call = tail call fastcc i32 @VEC_complex_lattice_t_base_length(%struct.VEC_complex_lattice_t_base* %cond) #8, !dbg !3404
  call void @llvm.dbg.value(metadata i32 %call, metadata !3402, metadata !DIExpression()), !dbg !3403
  tail call fastcc void @VEC_complex_lattice_t_heap_safe_grow(%struct.VEC_complex_lattice_t_heap** nonnull @complex_lattice_values, i32 %size_) #8, !dbg !3404
  %1 = load %struct.VEC_complex_lattice_t_heap*, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !3404
  %tobool1 = icmp eq %struct.VEC_complex_lattice_t_heap* %1, null, !dbg !3404
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3404

cond.true2:                                       ; preds = %cond.end
  %base3 = getelementptr inbounds %struct.VEC_complex_lattice_t_heap, %struct.VEC_complex_lattice_t_heap* %1, i64 0, i32 0, !dbg !3404
  br label %cond.end5, !dbg !3404

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_complex_lattice_t_base* [ %base3, %cond.true2 ], [ null, %cond.end ], !dbg !3404
  %call7 = tail call fastcc i32* @VEC_complex_lattice_t_base_address(%struct.VEC_complex_lattice_t_base* %cond6) #8, !dbg !3404
  %idxprom = sext i32 %call to i64, !dbg !3404
  %arrayidx = getelementptr inbounds i32, i32* %call7, i64 %idxprom, !dbg !3404
  %2 = bitcast i32* %arrayidx to i8*, !dbg !3404
  %sub = sub nsw i32 %size_, %call, !dbg !3404
  %conv = sext i32 %sub to i64, !dbg !3404
  %mul = shl nsw i64 %conv, 2, !dbg !3404
  %call8 = tail call i8* @memset(i8* %2, i32 0, i64 %mul) #6, !dbg !3404
  ret void, !dbg !3404
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_parameter_lattice_values() unnamed_addr #5 !dbg !3405 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3411
  %decl = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 6, !dbg !3411
  %1 = bitcast %union.tree_node** %decl to %struct.tree_decl_non_common**, !dbg !3411
  %2 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** %1, align 8, !dbg !3411
  %arguments = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %2, i64 0, i32 2, !dbg !3411
  br label %for.cond, !dbg !3413

for.cond:                                         ; preds = %for.inc, %entry
  %parm.0.in = phi %union.tree_node** [ %arguments, %entry ], [ %chain, %for.inc ]
  %parm.0 = load %union.tree_node*, %union.tree_node** %parm.0.in, align 8, !dbg !3414
  call void @llvm.dbg.value(metadata %union.tree_node* %parm.0, metadata !3409, metadata !DIExpression()), !dbg !3415
  %tobool = icmp eq %union.tree_node* %parm.0, null, !dbg !3416
  br i1 %tobool, label %for.end, label %for.body, !dbg !3416

for.body:                                         ; preds = %for.cond
  %call = tail call fastcc zeroext i8 @is_complex_reg(%union.tree_node* nonnull %parm.0) #8, !dbg !3417
  %tobool1 = icmp eq i8 %call, 0, !dbg !3417
  br i1 %tobool1, label %for.inc, label %land.lhs.true, !dbg !3420

land.lhs.true:                                    ; preds = %for.body
  %call2 = tail call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* nonnull %parm.0) #8, !dbg !3421
  %cmp = icmp eq %struct.var_ann_d* %call2, null, !dbg !3422
  br i1 %cmp, label %for.inc, label %land.lhs.true4, !dbg !3423

land.lhs.true4:                                   ; preds = %land.lhs.true
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3424
  %call6 = tail call %union.tree_node* @gimple_default_def(%struct.function* %3, %union.tree_node* nonnull %parm.0) #6, !dbg !3425
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !3410, metadata !DIExpression()), !dbg !3415
  %cmp7 = icmp eq %union.tree_node* %call6, null, !dbg !3426
  br i1 %cmp7, label %for.inc, label %if.then, !dbg !3427

if.then:                                          ; preds = %land.lhs.true4
  %4 = load %struct.VEC_complex_lattice_t_heap*, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !3428
  %base = getelementptr inbounds %struct.VEC_complex_lattice_t_heap, %struct.VEC_complex_lattice_t_heap* %4, i64 0, i32 0, !dbg !3428
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3428
  %5 = bitcast %union.tree_node** %version to i32*, !dbg !3428
  %6 = load i32, i32* %5, align 8, !dbg !3428
  %call11 = tail call fastcc i32 @VEC_complex_lattice_t_base_replace(%struct.VEC_complex_lattice_t_base* %base, i32 %6, i32 3) #8, !dbg !3428
  br label %for.inc, !dbg !3428

for.inc:                                          ; preds = %land.lhs.true4, %land.lhs.true, %for.body, %if.then
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %parm.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3429
  br label %for.cond, !dbg !3430, !llvm.loop !3431

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3433
}

declare dso_local void @ssa_propagate(i32 (%union.gimple_statement_d*, %struct.edge_def**, %union.tree_node**)*, i32 (%union.gimple_statement_d*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @complex_visit_stmt(%union.gimple_statement_d* %stmt, %struct.edge_def** %taken_edge_p, %union.tree_node** %result_p) #5 !dbg !3434 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3439, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata %struct.edge_def** %taken_edge_p, metadata !3440, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata %union.tree_node** %result_p, metadata !3441, metadata !DIExpression()), !dbg !3448
  %call = tail call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %stmt) #6, !dbg !3449
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3447, metadata !DIExpression()), !dbg !3448
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !3450
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3452

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3453
  %bf.load = load i64, i64* %0, align 8, !dbg !3453
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3453
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3453
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3453

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3453
  br label %cond.end, !dbg !3453

cond.end:                                         ; preds = %if.end, %cond.true
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3454
  %1 = bitcast %union.tree_node** %type to i64**, !dbg !3454
  %2 = load i64*, i64** %1, align 8, !dbg !3454
  %bf.load2 = load i64, i64* %2, align 8, !dbg !3454
  %bf.cast42 = and i64 %bf.load2, 65535, !dbg !3454
  %cmp5 = icmp eq i64 %bf.cast42, 13, !dbg !3454
  br i1 %cmp5, label %cond.end8, label %cond.true6, !dbg !3454

cond.true6:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 314, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3454
  br label %cond.end8, !dbg !3454

cond.end8:                                        ; preds = %cond.end, %cond.true6
  store %union.tree_node* %call, %union.tree_node** %result_p, align 8, !dbg !3455
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3456
  %3 = bitcast %union.tree_node** %version to i32*, !dbg !3456
  %4 = load i32, i32* %3, align 8, !dbg !3456
  call void @llvm.dbg.value(metadata i32 %4, metadata !3446, metadata !DIExpression()), !dbg !3448
  %5 = load %struct.VEC_complex_lattice_t_heap*, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !3457
  %base12 = getelementptr inbounds %struct.VEC_complex_lattice_t_heap, %struct.VEC_complex_lattice_t_heap* %5, i64 0, i32 0, !dbg !3457
  %call16 = tail call fastcc i32 @VEC_complex_lattice_t_base_index(%struct.VEC_complex_lattice_t_base* %base12, i32 %4) #8, !dbg !3457
  call void @llvm.dbg.value(metadata i32 %call16, metadata !3443, metadata !DIExpression()), !dbg !3448
  %call17 = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) #8, !dbg !3458
  switch i32 %call17, label %sw.epilog [
    i32 141, label %sw.bb
    i32 26, label %sw.bb
    i32 123, label %sw.bb20
    i32 63, label %sw.bb24
    i32 64, label %sw.bb24
    i32 65, label %sw.bb29
    i32 75, label %sw.bb29
    i32 67, label %sw.bb29
    i32 68, label %sw.bb29
    i32 69, label %sw.bb29
    i32 70, label %sw.bb29
    i32 79, label %sw.bb48
    i32 124, label %sw.bb48
  ], !dbg !3459

sw.bb:                                            ; preds = %cond.end8, %cond.end8
  %call18 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !3460
  %call19 = tail call fastcc i32 @find_lattice_value(%union.tree_node* %call18) #8, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %call19, metadata !3442, metadata !DIExpression()), !dbg !3448
  br label %sw.epilog, !dbg !3463

sw.bb20:                                          ; preds = %cond.end8
  %call21 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !3464
  %call22 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #8, !dbg !3465
  %call23 = tail call fastcc i32 @find_lattice_value_parts(%union.tree_node* %call21, %union.tree_node* %call22) #8, !dbg !3466
  call void @llvm.dbg.value(metadata i32 %call23, metadata !3442, metadata !DIExpression()), !dbg !3448
  br label %sw.epilog, !dbg !3467

sw.bb24:                                          ; preds = %cond.end8, %cond.end8
  %call25 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !3468
  %call26 = tail call fastcc i32 @find_lattice_value(%union.tree_node* %call25) #8, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %call26, metadata !3444, metadata !DIExpression()), !dbg !3448
  %call27 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #8, !dbg !3470
  %call28 = tail call fastcc i32 @find_lattice_value(%union.tree_node* %call27) #8, !dbg !3471
  call void @llvm.dbg.value(metadata i32 %call28, metadata !3445, metadata !DIExpression()), !dbg !3448
  %or = or i32 %call26, %call28, !dbg !3472
  call void @llvm.dbg.value(metadata i32 %or, metadata !3442, metadata !DIExpression()), !dbg !3448
  br label %sw.epilog, !dbg !3473

sw.bb29:                                          ; preds = %cond.end8, %cond.end8, %cond.end8, %cond.end8, %cond.end8, %cond.end8
  %call30 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !3474
  %call31 = tail call fastcc i32 @find_lattice_value(%union.tree_node* %call30) #8, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %call31, metadata !3444, metadata !DIExpression()), !dbg !3448
  %call32 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #8, !dbg !3476
  %call33 = tail call fastcc i32 @find_lattice_value(%union.tree_node* %call32) #8, !dbg !3477
  call void @llvm.dbg.value(metadata i32 %call33, metadata !3445, metadata !DIExpression()), !dbg !3448
  %cmp34 = icmp eq i32 %call31, 3, !dbg !3478
  %cmp35 = icmp eq i32 %call33, 3, !dbg !3480
  %or.cond = or i1 %cmp34, %cmp35, !dbg !3481
  br i1 %or.cond, label %sw.epilog, label %if.else, !dbg !3481

if.else:                                          ; preds = %sw.bb29
  %cmp37 = icmp eq i32 %call31, 0, !dbg !3482
  br i1 %cmp37, label %sw.epilog, label %if.else39, !dbg !3484

if.else39:                                        ; preds = %if.else
  %cmp40 = icmp eq i32 %call33, 0, !dbg !3485
  br i1 %cmp40, label %sw.epilog, label %if.else42, !dbg !3487

if.else42:                                        ; preds = %if.else39
  %sub = add nsw i32 %call31, -1, !dbg !3488
  %sub43 = add nsw i32 %call33, -1, !dbg !3490
  %xor = xor i32 %sub, %sub43, !dbg !3491
  %add = add nsw i32 %xor, 1, !dbg !3492
  call void @llvm.dbg.value(metadata i32 %add, metadata !3442, metadata !DIExpression()), !dbg !3448
  %or44 = or i32 %add, %call16, !dbg !3493
  call void @llvm.dbg.value(metadata i32 %or44, metadata !3442, metadata !DIExpression()), !dbg !3448
  br label %sw.epilog

sw.bb48:                                          ; preds = %cond.end8, %cond.end8
  %call49 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !3494
  %call50 = tail call fastcc i32 @find_lattice_value(%union.tree_node* %call49) #8, !dbg !3495
  call void @llvm.dbg.value(metadata i32 %call50, metadata !3442, metadata !DIExpression()), !dbg !3448
  br label %sw.epilog, !dbg !3496

sw.epilog:                                        ; preds = %cond.end8, %sw.bb29, %if.else42, %if.else39, %if.else, %sw.bb48, %sw.bb24, %sw.bb20, %sw.bb
  %new_l.3 = phi i32 [ %call50, %sw.bb48 ], [ %or, %sw.bb24 ], [ %call23, %sw.bb20 ], [ %call19, %sw.bb ], [ 3, %sw.bb29 ], [ %call33, %if.else ], [ %or44, %if.else42 ], [ %call31, %if.else39 ], [ 3, %cond.end8 ], !dbg !3497
  call void @llvm.dbg.value(metadata i32 %new_l.3, metadata !3442, metadata !DIExpression()), !dbg !3448
  %cmp51 = icmp eq i32 %new_l.3, %call16, !dbg !3498
  br i1 %cmp51, label %cleanup, label %if.end53, !dbg !3500

if.end53:                                         ; preds = %sw.epilog
  %6 = load %struct.VEC_complex_lattice_t_heap*, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !3501
  %base56 = getelementptr inbounds %struct.VEC_complex_lattice_t_heap, %struct.VEC_complex_lattice_t_heap* %6, i64 0, i32 0, !dbg !3501
  %call60 = tail call fastcc i32 @VEC_complex_lattice_t_base_replace(%struct.VEC_complex_lattice_t_base* %base56, i32 %4, i32 %new_l.3) #8, !dbg !3501
  %cmp61 = icmp eq i32 %new_l.3, 3, !dbg !3502
  %cond62 = select i1 %cmp61, i32 2, i32 1, !dbg !3503
  br label %cleanup, !dbg !3504

cleanup:                                          ; preds = %entry, %sw.epilog, %if.end53
  %retval.0 = phi i32 [ %cond62, %if.end53 ], [ 2, %entry ], [ 0, %sw.epilog ], !dbg !3448
  ret i32 %retval.0, !dbg !3505
}

; Function Attrs: nounwind uwtable
define internal i32 @complex_visit_phi(%union.gimple_statement_d* %phi) #5 !dbg !3506 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3510, metadata !DIExpression()), !dbg !3516
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #8, !dbg !3517
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3514, metadata !DIExpression()), !dbg !3516
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3518
  %0 = bitcast %union.tree_node** %type to i64**, !dbg !3518
  %1 = load i64*, i64** %0, align 8, !dbg !3518
  %bf.load = load i64, i64* %1, align 8, !dbg !3518
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3518
  %cmp = icmp eq i64 %bf.cast1, 13, !dbg !3518
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3518

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 405, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3518
  br label %cond.end, !dbg !3518

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !3511, metadata !DIExpression()), !dbg !3516
  %call1 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #8, !dbg !3519
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3515, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3516
  br label %for.cond, !dbg !3521

for.cond:                                         ; preds = %for.body, %cond.end
  %i.0.in = phi i32 [ %call1, %cond.end ], [ %i.0, %for.body ]
  %new_l.0 = phi i32 [ 0, %cond.end ], [ %or, %for.body ], !dbg !3516
  %i.0 = add i32 %i.0.in, -1, !dbg !3522
  call void @llvm.dbg.value(metadata i32 %new_l.0, metadata !3511, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3515, metadata !DIExpression()), !dbg !3516
  %cmp2 = icmp sgt i32 %i.0, -1, !dbg !3523
  br i1 %cmp2, label %for.body, label %for.end, !dbg !3525

for.body:                                         ; preds = %for.cond
  %conv = sext i32 %i.0 to i64, !dbg !3526
  %call3 = tail call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %phi, i64 %conv) #8, !dbg !3527
  %call4 = tail call fastcc i32 @find_lattice_value(%union.tree_node* %call3) #8, !dbg !3528
  %or = or i32 %new_l.0, %call4, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %or, metadata !3511, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3515, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3516
  br label %for.cond, !dbg !3530, !llvm.loop !3531

for.end:                                          ; preds = %for.cond
  %new_l.0.lcssa = phi i32 [ %new_l.0, %for.cond ], !dbg !3516
  call void @llvm.dbg.value(metadata i32 %new_l.0.lcssa, metadata !3511, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %new_l.0.lcssa, metadata !3511, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %new_l.0.lcssa, metadata !3511, metadata !DIExpression()), !dbg !3516
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3533
  %2 = bitcast %union.tree_node** %version to i32*, !dbg !3533
  %3 = load i32, i32* %2, align 8, !dbg !3533
  call void @llvm.dbg.value(metadata i32 %3, metadata !3513, metadata !DIExpression()), !dbg !3516
  %4 = load %struct.VEC_complex_lattice_t_heap*, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !3534
  %base6 = getelementptr inbounds %struct.VEC_complex_lattice_t_heap, %struct.VEC_complex_lattice_t_heap* %4, i64 0, i32 0, !dbg !3534
  %call10 = tail call fastcc i32 @VEC_complex_lattice_t_base_index(%struct.VEC_complex_lattice_t_base* %base6, i32 %3) #8, !dbg !3534
  call void @llvm.dbg.value(metadata i32 %call10, metadata !3512, metadata !DIExpression()), !dbg !3516
  %cmp11 = icmp eq i32 %new_l.0.lcssa, %call10, !dbg !3535
  br i1 %cmp11, label %cleanup, label %if.end, !dbg !3537

if.end:                                           ; preds = %for.end
  %5 = load %struct.VEC_complex_lattice_t_heap*, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !3538
  %base15 = getelementptr inbounds %struct.VEC_complex_lattice_t_heap, %struct.VEC_complex_lattice_t_heap* %5, i64 0, i32 0, !dbg !3538
  %call19 = tail call fastcc i32 @VEC_complex_lattice_t_base_replace(%struct.VEC_complex_lattice_t_base* %base15, i32 %3, i32 %new_l.0.lcssa) #8, !dbg !3538
  %cmp20 = icmp eq i32 %new_l.0.lcssa, 3, !dbg !3539
  %cond22 = select i1 %cmp20, i32 2, i32 1, !dbg !3540
  br label %cleanup, !dbg !3541

cleanup:                                          ; preds = %for.end, %if.end
  %retval.0 = phi i32 [ %cond22, %if.end ], [ 0, %for.end ], !dbg !3516
  ret i32 %retval.0, !dbg !3542
}

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #2

declare dso_local i32 @int_tree_map_hash(i8*) #2

declare dso_local i32 @int_tree_map_eq(i8*, i8*) #2

declare dso_local void @free(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3543 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3547, metadata !DIExpression()), !dbg !3548
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 %alloc_) #6, !dbg !3549
  %0 = bitcast i8* %call to %struct.VEC_tree_heap*, !dbg !3549
  ret %struct.VEC_tree_heap* %0, !dbg !3549
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_safe_grow_cleared(%struct.VEC_tree_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !3550 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** @complex_ssa_name_components, metadata !3555, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i32 %size_, metadata !3556, metadata !DIExpression()), !dbg !3558
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !3559
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3559
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3559

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3559
  br label %cond.end, !dbg !3559

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3559
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #8, !dbg !3559
  call void @llvm.dbg.value(metadata i32 %call, metadata !3557, metadata !DIExpression()), !dbg !3558
  tail call fastcc void @VEC_tree_heap_safe_grow(%struct.VEC_tree_heap** nonnull @complex_ssa_name_components, i32 %size_) #8, !dbg !3559
  %1 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !3559
  %tobool1 = icmp eq %struct.VEC_tree_heap* %1, null, !dbg !3559
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3559

cond.true2:                                       ; preds = %cond.end
  %base3 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %1, i64 0, i32 0, !dbg !3559
  br label %cond.end5, !dbg !3559

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_tree_base* [ %base3, %cond.true2 ], [ null, %cond.end ], !dbg !3559
  %call7 = tail call fastcc %union.tree_node** @VEC_tree_base_address(%struct.VEC_tree_base* %cond6) #8, !dbg !3559
  %idxprom = sext i32 %call to i64, !dbg !3559
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call7, i64 %idxprom, !dbg !3559
  %2 = bitcast %union.tree_node** %arrayidx to i8*, !dbg !3559
  %sub = sub nsw i32 %size_, %call, !dbg !3559
  %conv = sext i32 %sub to i64, !dbg !3559
  %mul = shl nsw i64 %conv, 3, !dbg !3559
  %call8 = tail call i8* @memset(i8* %2, i32 0, i64 %mul) #6, !dbg !3559
  ret void, !dbg !3559
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_parameter_components() unnamed_addr #5 !dbg !3560 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3571
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3571
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3571
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !3571
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3571
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %2) #8, !dbg !3572
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !3562, metadata !DIExpression()), !dbg !3573
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3574
  %decl = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 6, !dbg !3574
  %4 = bitcast %union.tree_node** %decl to %struct.tree_decl_non_common**, !dbg !3574
  %5 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** %4, align 8, !dbg !3574
  %arguments = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %5, i64 0, i32 2, !dbg !3574
  br label %for.cond, !dbg !3575

for.cond:                                         ; preds = %cleanup, %entry
  %parm.0.in = phi %union.tree_node** [ %arguments, %entry ], [ %chain, %cleanup ]
  %parm.0 = load %union.tree_node*, %union.tree_node** %parm.0.in, align 8, !dbg !3576
  call void @llvm.dbg.value(metadata %union.tree_node* %parm.0, metadata !3563, metadata !DIExpression()), !dbg !3573
  %tobool = icmp eq %union.tree_node* %parm.0, null, !dbg !3577
  br i1 %tobool, label %for.end, label %for.body, !dbg !3577

for.body:                                         ; preds = %for.cond
  %type2 = getelementptr inbounds %union.tree_node, %union.tree_node* %parm.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3578
  %6 = load %union.tree_node*, %union.tree_node** %type2, align 8, !dbg !3578
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !3564, metadata !DIExpression()), !dbg !3579
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3580
  %bf.load = load i64, i64* %7, align 8, !dbg !3580
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3582
  %cmp = icmp eq i64 %bf.cast1, 13, !dbg !3582
  br i1 %cmp, label %lor.lhs.false, label %cleanup, !dbg !3583

lor.lhs.false:                                    ; preds = %for.body
  %call3 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* nonnull %parm.0) #6, !dbg !3584
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3584
  br i1 %tobool4, label %cleanup, label %if.end, !dbg !3585

if.end:                                           ; preds = %lor.lhs.false
  %type6 = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3586
  %8 = load %union.tree_node*, %union.tree_node** %type6, align 8, !dbg !3586
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !3564, metadata !DIExpression()), !dbg !3579
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3587
  %call8 = tail call %union.tree_node* @gimple_default_def(%struct.function* %9, %union.tree_node* nonnull %parm.0) #6, !dbg !3588
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !3568, metadata !DIExpression()), !dbg !3579
  %tobool9 = icmp eq %union.tree_node* %call8, null, !dbg !3589
  br i1 %tobool9, label %cleanup, label %if.end11, !dbg !3591

if.end11:                                         ; preds = %if.end
  %call12 = tail call %union.tree_node* @build1_stat(i32 43, %union.tree_node* %8, %union.tree_node* nonnull %call8) #6, !dbg !3592
  call void @llvm.dbg.value(metadata %union.tree_node* %call12, metadata !3569, metadata !DIExpression()), !dbg !3579
  %call13 = tail call %union.tree_node* @build1_stat(i32 44, %union.tree_node* %8, %union.tree_node* nonnull %call8) #6, !dbg !3593
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !3570, metadata !DIExpression()), !dbg !3579
  tail call fastcc void @update_complex_components_on_edge(%struct.edge_def* %call, %union.tree_node* nonnull %call8, %union.tree_node* %call12, %union.tree_node* %call13) #8, !dbg !3594
  br label %cleanup, !dbg !3595

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %for.body, %if.end11
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %parm.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3596
  br label %for.cond, !dbg !3597, !llvm.loop !3598

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3600
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_phi_components(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !3601 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3605, metadata !DIExpression()), !dbg !3624
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3625
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3625
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3626
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3626
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb) #6, !dbg !3626
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !3626
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3626
  br label %for.cond, !dbg !3627

for.cond:                                         ; preds = %for.inc37, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3606, metadata !DIExpression(DW_OP_deref)), !dbg !3624
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3628
  %tobool = icmp eq i8 %call, 0, !dbg !3629
  br i1 %tobool, label %for.body, label %for.end38, !dbg !3630

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3606, metadata !DIExpression(DW_OP_deref)), !dbg !3624
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3631
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !3607, metadata !DIExpression()), !dbg !3632
  %call2 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call1) #8, !dbg !3633
  %call3 = call fastcc zeroext i8 @is_complex_reg(%union.tree_node* %call2) #8, !dbg !3634
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3634
  br i1 %tobool4, label %for.inc37, label %if.then, !dbg !3635

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !3615, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !3616, metadata !DIExpression()), !dbg !3636
  %call5 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call1) #8, !dbg !3637
  %call6 = call fastcc %union.tree_node* @get_component_ssa_name(%union.tree_node* %call5, i8 zeroext 0) #8, !dbg !3638
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !3611, metadata !DIExpression()), !dbg !3636
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3639
  %bf.load = load i64, i64* %2, align 8, !dbg !3639
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3641
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3641
  br i1 %cmp, label %if.then7, label %if.end, !dbg !3642

if.then7:                                         ; preds = %if.then
  %call8 = call %union.gimple_statement_d* @create_phi_node(%union.tree_node* %call6, %struct.basic_block_def* %bb) #6, !dbg !3643
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call8, metadata !3615, metadata !DIExpression()), !dbg !3636
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3645
  %3 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3645
  store %union.gimple_statement_d* %call8, %union.gimple_statement_d** %3, align 8, !dbg !3646
  br label %if.end, !dbg !3647

if.end:                                           ; preds = %if.then7, %if.then
  %pr.0 = phi %union.gimple_statement_d* [ %call8, %if.then7 ], [ null, %if.then ], !dbg !3636
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %pr.0, metadata !3615, metadata !DIExpression()), !dbg !3636
  %call9 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call1) #8, !dbg !3648
  %call10 = call fastcc %union.tree_node* @get_component_ssa_name(%union.tree_node* %call9, i8 zeroext 1) #8, !dbg !3649
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !3614, metadata !DIExpression()), !dbg !3636
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3650
  %bf.load12 = load i64, i64* %4, align 8, !dbg !3650
  %bf.cast142 = and i64 %bf.load12, 65535, !dbg !3652
  %cmp15 = icmp eq i64 %bf.cast142, 141, !dbg !3652
  br i1 %cmp15, label %if.then16, label %if.end20, !dbg !3653

if.then16:                                        ; preds = %if.end
  %call17 = call %union.gimple_statement_d* @create_phi_node(%union.tree_node* %call10, %struct.basic_block_def* %bb) #6, !dbg !3654
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call17, metadata !3616, metadata !DIExpression()), !dbg !3636
  %def_stmt19 = getelementptr inbounds %union.tree_node, %union.tree_node* %call10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3656
  %5 = bitcast %union.tree_node** %def_stmt19 to %union.gimple_statement_d**, !dbg !3656
  store %union.gimple_statement_d* %call17, %union.gimple_statement_d** %5, align 8, !dbg !3657
  br label %if.end20, !dbg !3658

if.end20:                                         ; preds = %if.then16, %if.end
  %pi.0 = phi %union.gimple_statement_d* [ %call17, %if.then16 ], [ null, %if.end ], !dbg !3636
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %pi.0, metadata !3616, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i32 0, metadata !3617, metadata !DIExpression()), !dbg !3636
  %call21 = call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %call1) #8, !dbg !3659
  call void @llvm.dbg.value(metadata i32 %call21, metadata !3618, metadata !DIExpression()), !dbg !3636
  %tobool26 = icmp eq %union.gimple_statement_d* %pr.0, null, !dbg !3660
  %tobool31 = icmp eq %union.gimple_statement_d* %pi.0, null, !dbg !3662
  br i1 %tobool26, label %if.end20.split.us, label %if.end20.if.end20.split_crit_edge, !dbg !3664

if.end20.if.end20.split_crit_edge:                ; preds = %if.end20
  %wide.trip.count = zext i32 %call21 to i64, !dbg !3665
  br label %for.cond22, !dbg !3664

if.end20.split.us:                                ; preds = %if.end20
  br i1 %tobool31, label %if.end20.split.us.split.us, label %if.end20.split.us.if.end20.split.us.split_crit_edge, !dbg !3664

if.end20.split.us.if.end20.split.us.split_crit_edge: ; preds = %if.end20.split.us
  %wide.trip.count5 = zext i32 %call21 to i64, !dbg !3665
  br label %for.cond22.us, !dbg !3664

if.end20.split.us.split.us:                       ; preds = %if.end20.split.us
  %wide.trip.count9 = zext i32 %call21 to i64, !dbg !3665
  br label %for.cond22.us.us, !dbg !3664

for.cond22.us.us:                                 ; preds = %for.body24.us.us, %if.end20.split.us.split.us
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.body24.us.us ], [ 0, %if.end20.split.us.split.us ], !dbg !3666
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !3617, metadata !DIExpression()), !dbg !3636
  %exitcond10 = icmp eq i64 %indvars.iv7, %wide.trip.count9, !dbg !3665
  br i1 %exitcond10, label %for.inc37.loopexit.us-lcssa.us.us-lcssa.us, label %for.body24.us.us, !dbg !3667

for.body24.us.us:                                 ; preds = %for.cond22.us.us
  %call25.us.us = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call1, i64 %indvars.iv7) #8, !dbg !3668
  call void @llvm.dbg.value(metadata %union.tree_node* %call25.us.us, metadata !3623, metadata !DIExpression()), !dbg !3669
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !3670
  br label %for.cond22.us.us, !dbg !3671, !llvm.loop !3672

for.inc37.loopexit.us-lcssa.us.us-lcssa.us:       ; preds = %for.cond22.us.us
  br label %for.inc37.loopexit.us-lcssa.us, !dbg !3674

for.cond22.us:                                    ; preds = %for.body24.us, %if.end20.split.us.if.end20.split.us.split_crit_edge
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.body24.us ], [ 0, %if.end20.split.us.if.end20.split.us.split_crit_edge ], !dbg !3666
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !3617, metadata !DIExpression()), !dbg !3636
  %exitcond6 = icmp eq i64 %indvars.iv3, %wide.trip.count5, !dbg !3665
  br i1 %exitcond6, label %for.inc37.loopexit.us-lcssa.us.us-lcssa, label %for.body24.us, !dbg !3667

for.body24.us:                                    ; preds = %for.cond22.us
  %call25.us = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call1, i64 %indvars.iv3) #8, !dbg !3668
  call void @llvm.dbg.value(metadata %union.tree_node* %call25.us, metadata !3623, metadata !DIExpression()), !dbg !3669
  %call33.us = call fastcc %union.tree_node* @extract_component(%struct.gimple_stmt_iterator* null, %union.tree_node* %call25.us, i8 zeroext 1, i8 zeroext 0) #8, !dbg !3675
  call void @llvm.dbg.value(metadata %union.tree_node* %call33.us, metadata !3619, metadata !DIExpression()), !dbg !3669
  %6 = trunc i64 %indvars.iv3 to i32, !dbg !3677
  %call34.us = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* nonnull %pi.0, i32 %6) #8, !dbg !3677
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %call34.us, %union.tree_node* %call33.us) #8, !dbg !3677
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !3670
  br label %for.cond22.us, !dbg !3671, !llvm.loop !3672

for.inc37.loopexit.us-lcssa.us.us-lcssa:          ; preds = %for.cond22.us
  br label %for.inc37.loopexit.us-lcssa.us, !dbg !3674

for.inc37.loopexit.us-lcssa.us:                   ; preds = %for.inc37.loopexit.us-lcssa.us.us-lcssa.us, %for.inc37.loopexit.us-lcssa.us.us-lcssa
  br label %for.inc37.loopexit, !dbg !3674

for.cond22:                                       ; preds = %for.inc, %if.end20.if.end20.split_crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end20.if.end20.split_crit_edge ], !dbg !3666
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3617, metadata !DIExpression()), !dbg !3636
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3665
  br i1 %exitcond, label %for.inc37.loopexit.us-lcssa, label %for.body24, !dbg !3667

for.body24:                                       ; preds = %for.cond22
  %call25 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call1, i64 %indvars.iv) #8, !dbg !3668
  call void @llvm.dbg.value(metadata %union.tree_node* %call25, metadata !3623, metadata !DIExpression()), !dbg !3669
  %call28 = call fastcc %union.tree_node* @extract_component(%struct.gimple_stmt_iterator* null, %union.tree_node* %call25, i8 zeroext 0, i8 zeroext 0) #8, !dbg !3678
  call void @llvm.dbg.value(metadata %union.tree_node* %call28, metadata !3619, metadata !DIExpression()), !dbg !3669
  %7 = trunc i64 %indvars.iv to i32, !dbg !3680
  %call29 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* nonnull %pr.0, i32 %7) #8, !dbg !3680
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %call29, %union.tree_node* %call28) #8, !dbg !3680
  br i1 %tobool31, label %for.inc, label %if.then32, !dbg !3681

if.then32:                                        ; preds = %for.body24
  %call33 = call fastcc %union.tree_node* @extract_component(%struct.gimple_stmt_iterator* null, %union.tree_node* %call25, i8 zeroext 1, i8 zeroext 0) #8, !dbg !3675
  call void @llvm.dbg.value(metadata %union.tree_node* %call33, metadata !3619, metadata !DIExpression()), !dbg !3669
  %8 = trunc i64 %indvars.iv to i32, !dbg !3677
  %call34 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* nonnull %pi.0, i32 %8) #8, !dbg !3677
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %call34, %union.tree_node* %call33) #8, !dbg !3677
  br label %for.inc, !dbg !3682

for.inc:                                          ; preds = %for.body24, %if.then32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3670
  br label %for.cond22, !dbg !3671, !llvm.loop !3672

for.inc37.loopexit.us-lcssa:                      ; preds = %for.cond22
  br label %for.inc37.loopexit, !dbg !3674

for.inc37.loopexit:                               ; preds = %for.inc37.loopexit.us-lcssa.us, %for.inc37.loopexit.us-lcssa
  br label %for.inc37, !dbg !3674

for.inc37:                                        ; preds = %for.inc37.loopexit, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3606, metadata !DIExpression(DW_OP_deref)), !dbg !3624
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !3674
  br label %for.cond, !dbg !3683, !llvm.loop !3684

for.end38:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3686
  ret void, !dbg !3686
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3687 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3691, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3692, metadata !DIExpression()), !dbg !3695
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !3696
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3693, metadata !DIExpression()), !dbg !3694
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !3697
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3698
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3699
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3700
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3701
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3702
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3703
  ret void, !dbg !3704
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3705 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3709, metadata !DIExpression()), !dbg !3710
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3711
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3711
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3712
  %conv1 = zext i1 %cmp to i8, !dbg !3713
  ret i8 %conv1, !dbg !3714
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_complex_operations_1(%struct.gimple_stmt_iterator* %gsi) unnamed_addr #5 !dbg !3715 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3720, metadata !DIExpression()), !dbg !3737
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3738
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3721, metadata !DIExpression()), !dbg !3737
  %call1 = tail call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %call) #6, !dbg !3739
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3724, metadata !DIExpression()), !dbg !3737
  %tobool = icmp eq %union.tree_node* %call1, null, !dbg !3740
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3742

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #8, !dbg !3743
  %cmp = icmp eq i32 %call2, 1, !dbg !3744
  br i1 %cmp, label %if.end, label %cleanup.cont131, !dbg !3745

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %call, i32 0) #8, !dbg !3746
  %type4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3746
  %0 = load %union.tree_node*, %union.tree_node** %type4, align 8, !dbg !3746
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3722, metadata !DIExpression()), !dbg !3737
  %call5 = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %call) #8, !dbg !3747
  call void @llvm.dbg.value(metadata i32 %call5, metadata !3733, metadata !DIExpression()), !dbg !3737
  switch i32 %call5, label %sw.default [
    i32 63, label %sw.bb
    i32 64, label %sw.bb
    i32 65, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
    i32 75, label %sw.bb
    i32 79, label %sw.bb
    i32 124, label %sw.bb
    i32 101, label %sw.bb11
    i32 102, label %sw.bb11
  ], !dbg !3748

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3749
  %bf.load = load i64, i64* %1, align 8, !dbg !3749
  %bf.cast4 = and i64 %bf.load, 65535, !dbg !3751
  %cmp6 = icmp eq i64 %bf.cast4, 13, !dbg !3751
  br i1 %cmp6, label %if.end8, label %cleanup.cont131, !dbg !3752

if.end8:                                          ; preds = %sw.bb
  %type10 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3753
  %2 = load %union.tree_node*, %union.tree_node** %type10, align 8, !dbg !3753
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3723, metadata !DIExpression()), !dbg !3737
  br label %sw.epilog, !dbg !3754

sw.bb11:                                          ; preds = %if.end, %if.end
  %call12 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %call, i32 1) #8, !dbg !3755
  %type14 = getelementptr inbounds %union.tree_node, %union.tree_node* %call12, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3755
  %3 = load %union.tree_node*, %union.tree_node** %type14, align 8, !dbg !3755
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3723, metadata !DIExpression()), !dbg !3737
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3756
  %bf.load16 = load i64, i64* %4, align 8, !dbg !3756
  %bf.cast183 = and i64 %bf.load16, 65535, !dbg !3758
  %cmp19 = icmp eq i64 %bf.cast183, 13, !dbg !3758
  br i1 %cmp19, label %sw.epilog, label %cleanup.cont131, !dbg !3759

sw.default:                                       ; preds = %if.end
  %call22 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #8, !dbg !3760
  %cmp23 = icmp eq i32 %call22, 1, !dbg !3762
  br i1 %cmp23, label %cleanup, label %if.end25, !dbg !3763

if.end25:                                         ; preds = %sw.default
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3764
  %bf.load27 = load i64, i64* %5, align 8, !dbg !3764
  %bf.cast295 = and i64 %bf.load27, 65535, !dbg !3766
  %cmp30 = icmp eq i64 %bf.cast295, 13, !dbg !3766
  br i1 %cmp30, label %if.then31, label %if.else, !dbg !3767

if.then31:                                        ; preds = %if.end25
  tail call fastcc void @expand_complex_move(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %0) #8, !dbg !3768
  br label %cleanup, !dbg !3768

if.else:                                          ; preds = %if.end25
  %call32 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call) #8, !dbg !3769
  %tobool33 = icmp eq i8 %call32, 0, !dbg !3769
  br i1 %tobool33, label %cleanup, label %land.lhs.true34, !dbg !3771

land.lhs.true34:                                  ; preds = %if.else
  %call35 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call) #8, !dbg !3772
  %cmp36 = icmp eq i32 %call35, 43, !dbg !3773
  br i1 %cmp36, label %land.lhs.true41, label %lor.lhs.false, !dbg !3774

lor.lhs.false:                                    ; preds = %land.lhs.true34
  %call38 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call) #8, !dbg !3775
  %cmp39 = icmp eq i32 %call38, 44, !dbg !3776
  br i1 %cmp39, label %land.lhs.true41, label %cleanup, !dbg !3777

land.lhs.true41:                                  ; preds = %lor.lhs.false, %land.lhs.true34
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3778
  %bf.load43 = load i64, i64* %6, align 8, !dbg !3778
  %bf.cast456 = and i64 %bf.load43, 65535, !dbg !3779
  %cmp46 = icmp eq i64 %bf.cast456, 141, !dbg !3779
  br i1 %cmp46, label %if.then48, label %cleanup, !dbg !3780

if.then48:                                        ; preds = %land.lhs.true41
  %call49 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call) #8, !dbg !3781
  call void @llvm.dbg.value(metadata %union.tree_node* %call49, metadata !3734, metadata !DIExpression()), !dbg !3783
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call49, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3784
  %7 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3784
  %call50 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call) #8, !dbg !3785
  %cmp51 = icmp eq i32 %call50, 44, !dbg !3786
  %conv53 = zext i1 %cmp51 to i8, !dbg !3785
  %call54 = tail call fastcc %union.tree_node* @extract_component(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %7, i8 zeroext %conv53, i8 zeroext 0) #8, !dbg !3787
  call void @llvm.dbg.value(metadata %union.tree_node* %call54, metadata !3734, metadata !DIExpression()), !dbg !3783
  tail call void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call54) #6, !dbg !3788
  %call55 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3789
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call55, metadata !3721, metadata !DIExpression()), !dbg !3737
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %call55) #8, !dbg !3790
  br label %cleanup, !dbg !3791

cleanup:                                          ; preds = %if.else, %if.then31, %if.then48, %land.lhs.true41, %lor.lhs.false, %sw.default
  ret void

sw.epilog:                                        ; preds = %sw.bb11, %if.end8
  %inner_type.0 = phi %union.tree_node* [ %2, %if.end8 ], [ %3, %sw.bb11 ], !dbg !3792
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_type.0, metadata !3723, metadata !DIExpression()), !dbg !3737
  %call58 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call) #8, !dbg !3793
  %tobool59 = icmp eq i8 %call58, 0, !dbg !3793
  br i1 %tobool59, label %if.else66, label %if.then60, !dbg !3795

if.then60:                                        ; preds = %sw.epilog
  %call61 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call) #8, !dbg !3796
  call void @llvm.dbg.value(metadata %union.tree_node* %call61, metadata !3725, metadata !DIExpression()), !dbg !3737
  %call62 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %call) #8, !dbg !3798
  %cmp63 = icmp ugt i32 %call62, 2, !dbg !3799
  br i1 %cmp63, label %cond.true, label %if.end69, !dbg !3800

cond.true:                                        ; preds = %if.then60
  %call65 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %call) #8, !dbg !3801
  br label %if.end69, !dbg !3800

if.else66:                                        ; preds = %sw.epilog
  %call67 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %call) #8, !dbg !3802
  call void @llvm.dbg.value(metadata %union.tree_node* %call67, metadata !3725, metadata !DIExpression()), !dbg !3737
  %call68 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call) #8, !dbg !3804
  call void @llvm.dbg.value(metadata %union.tree_node* %call68, metadata !3728, metadata !DIExpression()), !dbg !3737
  br label %if.end69

if.end69:                                         ; preds = %cond.true, %if.then60, %if.else66
  %bc.0 = phi %union.tree_node* [ %call68, %if.else66 ], [ %call65, %cond.true ], [ null, %if.then60 ], !dbg !3805
  %ac.0 = phi %union.tree_node* [ %call67, %if.else66 ], [ %call61, %cond.true ], [ %call61, %if.then60 ], !dbg !3805
  call void @llvm.dbg.value(metadata %union.tree_node* %ac.0, metadata !3725, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata %union.tree_node* %bc.0, metadata !3728, metadata !DIExpression()), !dbg !3737
  %call70 = tail call fastcc %union.tree_node* @extract_component(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %ac.0, i8 zeroext 0, i8 zeroext 1) #8, !dbg !3806
  call void @llvm.dbg.value(metadata %union.tree_node* %call70, metadata !3726, metadata !DIExpression()), !dbg !3737
  %call71 = tail call fastcc %union.tree_node* @extract_component(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %ac.0, i8 zeroext 1, i8 zeroext 1) #8, !dbg !3807
  call void @llvm.dbg.value(metadata %union.tree_node* %call71, metadata !3727, metadata !DIExpression()), !dbg !3737
  %cmp72 = icmp eq %union.tree_node* %ac.0, %bc.0, !dbg !3808
  br i1 %cmp72, label %if.end82, label %if.else75, !dbg !3810

if.else75:                                        ; preds = %if.end69
  %tobool76 = icmp eq %union.tree_node* %bc.0, null, !dbg !3811
  br i1 %tobool76, label %if.end82, label %if.then77, !dbg !3813

if.then77:                                        ; preds = %if.else75
  %call78 = tail call fastcc %union.tree_node* @extract_component(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* nonnull %bc.0, i8 zeroext 0, i8 zeroext 1) #8, !dbg !3814
  call void @llvm.dbg.value(metadata %union.tree_node* %call78, metadata !3729, metadata !DIExpression()), !dbg !3737
  %call79 = tail call fastcc %union.tree_node* @extract_component(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* nonnull %bc.0, i8 zeroext 1, i8 zeroext 1) #8, !dbg !3816
  call void @llvm.dbg.value(metadata %union.tree_node* %call79, metadata !3730, metadata !DIExpression()), !dbg !3737
  br label %if.end82, !dbg !3817

if.end82:                                         ; preds = %if.else75, %if.then77, %if.end69
  %br.1 = phi %union.tree_node* [ %call70, %if.end69 ], [ %call78, %if.then77 ], [ null, %if.else75 ], !dbg !3818
  %bi.1 = phi %union.tree_node* [ %call71, %if.end69 ], [ %call79, %if.then77 ], [ null, %if.else75 ], !dbg !3818
  call void @llvm.dbg.value(metadata %union.tree_node* %bi.1, metadata !3730, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata %union.tree_node* %br.1, metadata !3729, metadata !DIExpression()), !dbg !3737
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3819
  %call83 = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %8) #8, !dbg !3821
  %tobool84 = icmp eq i8 %call83, 0, !dbg !3821
  br i1 %tobool84, label %if.end108, label %if.then85, !dbg !3822

if.then85:                                        ; preds = %if.end82
  %call86 = tail call fastcc i32 @find_lattice_value(%union.tree_node* %ac.0) #8, !dbg !3823
  call void @llvm.dbg.value(metadata i32 %call86, metadata !3731, metadata !DIExpression()), !dbg !3737
  %cmp87 = icmp eq i32 %call86, 0, !dbg !3825
  %spec.select = select i1 %cmp87, i32 3, i32 %call86, !dbg !3827
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3731, metadata !DIExpression()), !dbg !3737
  %idxprom = sext i32 %call5 to i64, !dbg !3828
  %arrayidx91 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom, !dbg !3828
  %9 = load i32, i32* %arrayidx91, align 4, !dbg !3828
  %cmp92 = icmp eq i32 %9, 6, !dbg !3830
  br i1 %cmp92, label %if.end108, label %if.else95, !dbg !3831

if.else95:                                        ; preds = %if.then85
  br i1 %cmp72, label %if.end108, label %if.else99, !dbg !3832

if.else99:                                        ; preds = %if.else95
  %call100 = tail call fastcc i32 @find_lattice_value(%union.tree_node* %bc.0) #8, !dbg !3833
  call void @llvm.dbg.value(metadata i32 %call100, metadata !3732, metadata !DIExpression()), !dbg !3737
  %cmp101 = icmp eq i32 %call100, 0, !dbg !3836
  %spec.select2 = select i1 %cmp101, i32 3, i32 %call100, !dbg !3838
  call void @llvm.dbg.value(metadata i32 %spec.select2, metadata !3732, metadata !DIExpression()), !dbg !3737
  br label %if.end108

if.end108:                                        ; preds = %if.end82, %if.then85, %if.else95, %if.else99
  %al.1 = phi i32 [ %spec.select, %if.else99 ], [ %spec.select, %if.else95 ], [ %spec.select, %if.then85 ], [ 3, %if.end82 ], !dbg !3839
  %bl.3 = phi i32 [ %spec.select2, %if.else99 ], [ %spec.select, %if.else95 ], [ 0, %if.then85 ], [ 3, %if.end82 ], !dbg !3839
  call void @llvm.dbg.value(metadata i32 %bl.3, metadata !3732, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i32 %al.1, metadata !3731, metadata !DIExpression()), !dbg !3737
  switch i32 %call5, label %sw.default115 [
    i32 63, label %sw.bb109
    i32 64, label %sw.bb109
    i32 65, label %sw.bb110
    i32 67, label %sw.bb111
    i32 68, label %sw.bb111
    i32 69, label %sw.bb111
    i32 70, label %sw.bb111
    i32 75, label %sw.bb111
    i32 79, label %sw.bb112
    i32 124, label %sw.bb113
    i32 101, label %sw.bb114
    i32 102, label %sw.bb114
  ], !dbg !3840

sw.bb109:                                         ; preds = %if.end108, %if.end108
  tail call fastcc void @expand_complex_addition(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type.0, %union.tree_node* %call70, %union.tree_node* %call71, %union.tree_node* %br.1, %union.tree_node* %bi.1, i32 %call5, i32 %al.1, i32 %bl.3) #8, !dbg !3841
  br label %cleanup.cont131, !dbg !3843

sw.bb110:                                         ; preds = %if.end108
  tail call fastcc void @expand_complex_multiplication(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type.0, %union.tree_node* %call70, %union.tree_node* %call71, %union.tree_node* %br.1, %union.tree_node* %bi.1, i32 %al.1, i32 %bl.3) #8, !dbg !3844
  br label %cleanup.cont131, !dbg !3845

sw.bb111:                                         ; preds = %if.end108, %if.end108, %if.end108, %if.end108, %if.end108
  tail call fastcc void @expand_complex_division(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type.0, %union.tree_node* %call70, %union.tree_node* %call71, %union.tree_node* %br.1, %union.tree_node* %bi.1, i32 %call5, i32 %al.1, i32 %bl.3) #8, !dbg !3846
  br label %cleanup.cont131, !dbg !3847

sw.bb112:                                         ; preds = %if.end108
  tail call fastcc void @expand_complex_negation(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type.0, %union.tree_node* %call70, %union.tree_node* %call71) #8, !dbg !3848
  br label %cleanup.cont131, !dbg !3849

sw.bb113:                                         ; preds = %if.end108
  tail call fastcc void @expand_complex_conjugate(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type.0, %union.tree_node* %call70, %union.tree_node* %call71) #8, !dbg !3850
  br label %cleanup.cont131, !dbg !3851

sw.bb114:                                         ; preds = %if.end108, %if.end108
  tail call fastcc void @expand_complex_comparison(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call70, %union.tree_node* %call71, %union.tree_node* %br.1, %union.tree_node* %bi.1, i32 %call5) #8, !dbg !3852
  br label %cleanup.cont131, !dbg !3853

sw.default115:                                    ; preds = %if.end108
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 1563, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3854
  br label %cleanup.cont131, !dbg !3855

cleanup.cont131:                                  ; preds = %sw.bb, %sw.bb11, %land.lhs.true, %sw.default115, %sw.bb114, %sw.bb113, %sw.bb112, %sw.bb111, %sw.bb110, %sw.bb109
  ret void, !dbg !3856
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3857 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3859, metadata !DIExpression()), !dbg !3860
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3861
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3861
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3862
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3862
  %2 = load i64, i64* %1, align 8, !dbg !3862
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3863
  store i64 %2, i64* %3, align 8, !dbg !3863
  ret void, !dbg !3864
}

declare dso_local void @gsi_commit_edge_inserts() local_unnamed_addr #2

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !3865 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** @complex_ssa_name_components, metadata !3869, metadata !DIExpression()), !dbg !3870
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !3871
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3871
  br i1 %tobool, label %if.end, label %if.then, !dbg !3873

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !3873
  tail call void @free(i8* nonnull %1) #6, !dbg !3871
  br label %if.end, !dbg !3871

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !3873
  ret void, !dbg !3873
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_complex_lattice_t_heap_free(%struct.VEC_complex_lattice_t_heap** %vec_) unnamed_addr #0 !dbg !3874 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, metadata !3878, metadata !DIExpression()), !dbg !3879
  %0 = load %struct.VEC_complex_lattice_t_heap*, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !3880
  %tobool = icmp eq %struct.VEC_complex_lattice_t_heap* %0, null, !dbg !3880
  br i1 %tobool, label %if.end, label %if.then, !dbg !3882

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_complex_lattice_t_heap* %0 to i8*, !dbg !3882
  tail call void @free(i8* nonnull %1) #6, !dbg !3880
  br label %if.end, !dbg !3880

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_complex_lattice_t_heap* null, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !3882
  ret void, !dbg !3882
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3883 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3887, metadata !DIExpression()), !dbg !3888
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3889
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3889
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3890
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3890
  ret %union.gimple_statement_d* %1, !dbg !3891
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @prop_set_simulate_again(%union.gimple_statement_d* %s, i8 zeroext %visit_p) unnamed_addr #0 !dbg !3892 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3896, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8 %visit_p, metadata !3897, metadata !DIExpression()), !dbg !3898
  tail call fastcc void @gimple_set_visited(%union.gimple_statement_d* %s, i8 zeroext %visit_p) #8, !dbg !3899
  ret void, !dbg !3900
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @is_complex_reg(%union.tree_node* %lhs) unnamed_addr #5 !dbg !3901 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !3905, metadata !DIExpression()), !dbg !3906
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3907
  %0 = bitcast %union.tree_node** %type to i64**, !dbg !3907
  %1 = load i64*, i64** %0, align 8, !dbg !3907
  %bf.load = load i64, i64* %1, align 8, !dbg !3907
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3908
  %cmp = icmp eq i64 %bf.cast1, 13, !dbg !3908
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3909

land.rhs:                                         ; preds = %entry
  %call = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %lhs) #6, !dbg !3910
  %tobool = icmp ne i8 %call, 0, !dbg !3909
  %phitmp = zext i1 %tobool to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !3911
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3912 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3917, metadata !DIExpression()), !dbg !3918
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3919
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !3919
  ret %union.tree_node* %0, !dbg !3920
}

declare dso_local zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3921 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3925, metadata !DIExpression()), !dbg !3926
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3927
  %bf.load = load i32, i32* %0, align 8, !dbg !3927
  %bf.clear = and i32 %bf.load, 255, !dbg !3927
  ret i32 %bf.clear, !dbg !3928
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3929 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3931, metadata !DIExpression()), !dbg !3932
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3933
  ret %union.tree_node* %call, !dbg !3934
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3935 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3937, metadata !DIExpression()), !dbg !3938
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3939
  ret %union.tree_node* %call, !dbg !3940
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3941 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3945, metadata !DIExpression()), !dbg !3947
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #8, !dbg !3948
  call void @llvm.dbg.value(metadata i32 %call, metadata !3946, metadata !DIExpression()), !dbg !3947
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #8, !dbg !3949
  %cmp = icmp eq i32 %call1, 3, !dbg !3951
  br i1 %cmp, label %if.then, label %if.end, !dbg !3952

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #8, !dbg !3953
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3953
  %bf.load = load i64, i64* %0, align 8, !dbg !3953
  %1 = trunc i64 %bf.load to i32, !dbg !3953
  %bf.cast = and i32 %1, 65535, !dbg !3953
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3946, metadata !DIExpression()), !dbg !3947
  br label %if.end, !dbg !3954

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3947
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3946, metadata !DIExpression()), !dbg !3947
  ret i32 %code.0, !dbg !3955
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3956 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3958, metadata !DIExpression()), !dbg !3959
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !3960
  ret %union.tree_node* %call, !dbg !3961
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3962 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3966, metadata !DIExpression()), !dbg !3967
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3968
  %0 = load i32, i32* %num_ops, align 4, !dbg !3968
  ret i32 %0, !dbg !3969
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3970 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3972, metadata !DIExpression()), !dbg !3973
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !3974
  %cmp = icmp ugt i32 %call, 2, !dbg !3976
  br i1 %cmp, label %if.then, label %return, !dbg !3977

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #8, !dbg !3978
  br label %return, !dbg !3979

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %call1, %if.then ], [ null, %entry ], !dbg !3980
  ret %union.tree_node* %retval.0, !dbg !3981
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3982 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3984, metadata !DIExpression()), !dbg !3985
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3986
  ret %union.tree_node* %call, !dbg !3987
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3988 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3990, metadata !DIExpression()), !dbg !3991
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !3992
  ret %union.tree_node* %call, !dbg !3993
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3994 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3996, metadata !DIExpression()), !dbg !3998
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3999
  call void @llvm.dbg.value(metadata i32 %call, metadata !3997, metadata !DIExpression()), !dbg !3998
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !4000

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4002
  %bf.load = load i32, i32* %0, align 8, !dbg !4002
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4002
  br label %cleanup, !dbg !4003

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4004
  br label %cleanup, !dbg !4006

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3998
  ret i32 %retval.0, !dbg !4007
}

declare dso_local zeroext i8 @ssa_undefined_value_p(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_visited(%union.gimple_statement_d* %stmt, i8 zeroext %visited_p) unnamed_addr #0 !dbg !4008 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4010, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i8 %visited_p, metadata !4011, metadata !DIExpression()), !dbg !4012
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4013
  %bf.load = load i32, i32* %0, align 8, !dbg !4014
  %1 = and i8 %visited_p, 1, !dbg !4014
  %bf.value = zext i8 %1 to i32, !dbg !4014
  %bf.shl = shl nuw nsw i32 %bf.value, 9, !dbg !4014
  %bf.clear = and i32 %bf.load, -513, !dbg !4014
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !4014
  store i32 %bf.set, i32* %0, align 8, !dbg !4014
  ret void, !dbg !4015
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4016 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4020, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i32 %i, metadata !4021, metadata !DIExpression()), !dbg !4022
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !4023
  %tobool = icmp eq i8 %call, 0, !dbg !4023
  br i1 %tobool, label %return, label %if.then, !dbg !4025

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !4026
  %idxprom = zext i32 %i to i64, !dbg !4026
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !4026
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4026
  br label %return, !dbg !4028

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !4029
  ret %union.tree_node* %retval.0, !dbg !4030
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4031 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4035, metadata !DIExpression()), !dbg !4036
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4037
  %cmp = icmp eq i32 %call, 0, !dbg !4038
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !4039

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4040
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4041
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4042
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4043 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4047, metadata !DIExpression()), !dbg !4049
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !4050
  %idxprom = zext i32 %call to i64, !dbg !4051
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !4051
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4051
  call void @llvm.dbg.value(metadata i64 %0, metadata !4048, metadata !DIExpression()), !dbg !4049
  %cmp = icmp eq i64 %0, 0, !dbg !4052
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4052

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4052
  br label %cond.end, !dbg !4052

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !4053
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !4054
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !4055
  ret %union.tree_node** %2, !dbg !4056
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4057 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4061, metadata !DIExpression()), !dbg !4062
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !4063
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !4064
  ret i32 %call1, !dbg !4065
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !4066 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4070, metadata !DIExpression()), !dbg !4071
  %idxprom = zext i32 %code to i64, !dbg !4072
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !4072
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4072
  ret i32 %0, !dbg !4073
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !4074 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4078, metadata !DIExpression()), !dbg !4079
  %idxprom = sext i32 %code to i64, !dbg !4080
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !4080
  %0 = load i8, i8* %arrayidx, align 1, !dbg !4080
  %conv = zext i8 %0 to i32, !dbg !4081
  ret i32 %conv, !dbg !4082
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_complex_lattice_t_base_length(%struct.VEC_complex_lattice_t_base* %vec_) unnamed_addr #0 !dbg !4083 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_complex_lattice_t_base* %vec_, metadata !4089, metadata !DIExpression()), !dbg !4090
  %tobool = icmp eq %struct.VEC_complex_lattice_t_base* %vec_, null, !dbg !4091
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4091

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_complex_lattice_t_base, %struct.VEC_complex_lattice_t_base* %vec_, i64 0, i32 0, !dbg !4091
  %0 = load i32, i32* %num, align 4, !dbg !4091
  br label %cond.end, !dbg !4091

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4091
  ret i32 %cond, !dbg !4091
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_complex_lattice_t_heap_safe_grow(%struct.VEC_complex_lattice_t_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !4092 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, metadata !4094, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i32 %size_, metadata !4095, metadata !DIExpression()), !dbg !4096
  %cmp = icmp sgt i32 %size_, -1, !dbg !4097
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4097

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_complex_lattice_t_heap*, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !4097
  %tobool = icmp eq %struct.VEC_complex_lattice_t_heap* %0, null, !dbg !4097
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4097

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_complex_lattice_t_heap, %struct.VEC_complex_lattice_t_heap* %0, i64 0, i32 0, !dbg !4097
  br label %cond.end, !dbg !4097

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_complex_lattice_t_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !4097
  %call = tail call fastcc i32 @VEC_complex_lattice_t_base_length(%struct.VEC_complex_lattice_t_base* %cond) #8, !dbg !4097
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_complex_lattice_t_heap*, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !4097
  %tobool2 = icmp eq %struct.VEC_complex_lattice_t_heap* %1, null, !dbg !4097
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !4097

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_complex_lattice_t_heap, %struct.VEC_complex_lattice_t_heap* %1, i64 0, i32 0, i32 0, !dbg !4097
  %2 = load i32, i32* %num, align 4, !dbg !4097
  br label %cond.end11, !dbg !4097

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !4097
  %sub = sub nsw i32 %size_, %cond12, !dbg !4097
  %call13 = tail call fastcc i32 @VEC_complex_lattice_t_heap_reserve_exact(%struct.VEC_complex_lattice_t_heap** nonnull @complex_lattice_values, i32 %sub) #8, !dbg !4097
  %3 = load %struct.VEC_complex_lattice_t_heap*, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !4097
  %num20 = getelementptr inbounds %struct.VEC_complex_lattice_t_heap, %struct.VEC_complex_lattice_t_heap* %3, i64 0, i32 0, i32 0, !dbg !4097
  store i32 %size_, i32* %num20, align 4, !dbg !4097
  ret void, !dbg !4097
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_complex_lattice_t_base_address(%struct.VEC_complex_lattice_t_base* %vec_) unnamed_addr #0 !dbg !4098 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_complex_lattice_t_base* %vec_, metadata !4104, metadata !DIExpression()), !dbg !4105
  %tobool = icmp eq %struct.VEC_complex_lattice_t_base* %vec_, null, !dbg !4106
  %arraydecay = getelementptr inbounds %struct.VEC_complex_lattice_t_base, %struct.VEC_complex_lattice_t_base* %vec_, i64 0, i32 2, i64 0, !dbg !4106
  %cond = select i1 %tobool, i32* null, i32* %arraydecay, !dbg !4106
  ret i32* %cond, !dbg !4106
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_complex_lattice_t_heap_reserve_exact(%struct.VEC_complex_lattice_t_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4107 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, metadata !4111, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4112, metadata !DIExpression()), !dbg !4114
  %0 = load %struct.VEC_complex_lattice_t_heap*, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !4115
  %tobool = icmp eq %struct.VEC_complex_lattice_t_heap* %0, null, !dbg !4115
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4115

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_complex_lattice_t_heap, %struct.VEC_complex_lattice_t_heap* %0, i64 0, i32 0, !dbg !4115
  br label %cond.end, !dbg !4115

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_complex_lattice_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4115
  %call = tail call fastcc i32 @VEC_complex_lattice_t_base_space(%struct.VEC_complex_lattice_t_base* %cond, i32 %alloc_) #8, !dbg !4115
  %tobool1 = icmp eq i32 %call, 0, !dbg !4115
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4115
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4113, metadata !DIExpression()), !dbg !4114
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4115

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_complex_lattice_t_heap** @complex_lattice_values to i8**), align 8, !dbg !4116
  %call3 = tail call i8* @vec_heap_o_reserve_exact(i8* %1, i32 %alloc_, i64 8, i64 4) #6, !dbg !4116
  store i8* %call3, i8** bitcast (%struct.VEC_complex_lattice_t_heap** @complex_lattice_values to i8**), align 8, !dbg !4116
  br label %if.end, !dbg !4116

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4115
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_complex_lattice_t_base_space(%struct.VEC_complex_lattice_t_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4118 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_complex_lattice_t_base* %vec_, metadata !4122, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4123, metadata !DIExpression()), !dbg !4124
  %tobool = icmp eq %struct.VEC_complex_lattice_t_base* %vec_, null, !dbg !4125
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4125

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_complex_lattice_t_base, %struct.VEC_complex_lattice_t_base* %vec_, i64 0, i32 1, !dbg !4125
  %0 = load i32, i32* %alloc, align 4, !dbg !4125
  %num = getelementptr inbounds %struct.VEC_complex_lattice_t_base, %struct.VEC_complex_lattice_t_base* %vec_, i64 0, i32 0, !dbg !4125
  %1 = load i32, i32* %num, align 4, !dbg !4125
  %sub = sub i32 %0, %1, !dbg !4125
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !4125
  br label %cond.end, !dbg !4125

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !4125
  br label %cond.end, !dbg !4125

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !4125
  ret i32 %cond, !dbg !4125
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %t) unnamed_addr #0 !dbg !4126 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4133, metadata !DIExpression()), !dbg !4137
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4138
  %bf.load = load i64, i64* %0, align 8, !dbg !4138
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4138
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !4138
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4138

cond.true:                                        ; preds = %entry
  %ann = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 1, !dbg !4138
  %1 = bitcast %union.tree_node** %ann to %struct.var_ann_d**, !dbg !4138
  br label %cond.end19, !dbg !4138

cond.false:                                       ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !4138
  br i1 %cmp5, label %cond.true6, label %cond.false8, !dbg !4138

cond.true6:                                       ; preds = %cond.false
  %ann7 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !4138
  %2 = bitcast %union.tree_node** %ann7 to %struct.var_ann_d**, !dbg !4138
  br label %cond.end19, !dbg !4138

cond.false8:                                      ; preds = %cond.false
  %cmp13 = icmp eq i64 %bf.cast1, 36, !dbg !4138
  %ann15 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !4138
  %3 = bitcast %union.tree_node** %ann15 to %struct.var_ann_d**, !dbg !4138
  %cond = select i1 %cmp13, %struct.var_ann_d** %3, %struct.var_ann_d** null, !dbg !4138
  br label %cond.end19, !dbg !4138

cond.end19:                                       ; preds = %cond.true6, %cond.false8, %cond.true
  %cond20 = phi %struct.var_ann_d** [ %1, %cond.true ], [ %2, %cond.true6 ], [ %cond, %cond.false8 ], !dbg !4138
  call void @llvm.dbg.value(metadata %struct.var_ann_d** %cond20, metadata !4134, metadata !DIExpression()), !dbg !4137
  %tobool = icmp eq %struct.var_ann_d** %cond20, null, !dbg !4139
  br i1 %tobool, label %cond.end23, label %cond.true21, !dbg !4139

cond.true21:                                      ; preds = %cond.end19
  %4 = load %struct.var_ann_d*, %struct.var_ann_d** %cond20, align 8, !dbg !4140
  br label %cond.end23, !dbg !4139

cond.end23:                                       ; preds = %cond.end19, %cond.true21
  %cond24 = phi %struct.var_ann_d* [ %4, %cond.true21 ], [ null, %cond.end19 ], !dbg !4139
  ret %struct.var_ann_d* %cond24, !dbg !4141
}

declare dso_local %union.tree_node* @gimple_default_def(%struct.function*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_complex_lattice_t_base_replace(%struct.VEC_complex_lattice_t_base* %vec_, i32 %ix_, i32 %obj_) unnamed_addr #0 !dbg !4142 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_complex_lattice_t_base* %vec_, metadata !4146, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4147, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !4148, metadata !DIExpression()), !dbg !4150
  %idxprom = zext i32 %ix_ to i64, !dbg !4151
  %arrayidx = getelementptr inbounds %struct.VEC_complex_lattice_t_base, %struct.VEC_complex_lattice_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4151
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4151
  call void @llvm.dbg.value(metadata i32 %0, metadata !4149, metadata !DIExpression()), !dbg !4150
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !4151
  ret i32 %0, !dbg !4151
}

declare dso_local %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_complex_lattice_t_base_index(%struct.VEC_complex_lattice_t_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4152 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_complex_lattice_t_base* %vec_, metadata !4156, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4157, metadata !DIExpression()), !dbg !4158
  br label %land.end, !dbg !4159

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4159
  %arrayidx = getelementptr inbounds %struct.VEC_complex_lattice_t_base, %struct.VEC_complex_lattice_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4159
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4159
  ret i32 %0, !dbg !4159
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_lattice_value(%union.tree_node* %t) unnamed_addr #5 !dbg !4160 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4164, metadata !DIExpression()), !dbg !4167
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4168
  %bf.load = load i64, i64* %0, align 8, !dbg !4168
  %1 = trunc i64 %bf.load to i16, !dbg !4168
  switch i16 %1, label %sw.default [
    i16 141, label %sw.bb
    i16 26, label %sw.bb2
  ], !dbg !4169

sw.bb:                                            ; preds = %entry
  %2 = load %struct.VEC_complex_lattice_t_heap*, %struct.VEC_complex_lattice_t_heap** @complex_lattice_values, align 8, !dbg !4170
  %base1 = getelementptr inbounds %struct.VEC_complex_lattice_t_heap, %struct.VEC_complex_lattice_t_heap* %2, i64 0, i32 0, !dbg !4170
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4170
  %3 = bitcast %union.tree_node** %version to i32*, !dbg !4170
  %4 = load i32, i32* %3, align 8, !dbg !4170
  %call = tail call fastcc i32 @VEC_complex_lattice_t_base_index(%struct.VEC_complex_lattice_t_base* %base1, i32 %4) #8, !dbg !4170
  br label %cleanup, !dbg !4172

sw.bb2:                                           ; preds = %entry
  %real3 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4173
  %5 = bitcast i32* %real3 to %union.tree_node**, !dbg !4173
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8, !dbg !4173
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !4165, metadata !DIExpression()), !dbg !4167
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4174
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8, !dbg !4174
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !4166, metadata !DIExpression()), !dbg !4167
  br label %sw.epilog, !dbg !4175

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4176
  br label %sw.epilog, !dbg !4177

sw.epilog:                                        ; preds = %sw.default, %sw.bb2
  %imag.0 = phi %union.tree_node* [ undef, %sw.default ], [ %8, %sw.bb2 ]
  %real.0 = phi %union.tree_node* [ undef, %sw.default ], [ %6, %sw.bb2 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %real.0, metadata !4165, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata %union.tree_node* %imag.0, metadata !4166, metadata !DIExpression()), !dbg !4167
  %call6 = tail call fastcc i32 @find_lattice_value_parts(%union.tree_node* %real.0, %union.tree_node* %imag.0) #8, !dbg !4178
  br label %cleanup, !dbg !4179

cleanup:                                          ; preds = %sw.epilog, %sw.bb
  %retval.0 = phi i32 [ %call6, %sw.epilog ], [ %call, %sw.bb ], !dbg !4167
  ret i32 %retval.0, !dbg !4180
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_lattice_value_parts(%union.tree_node* %real, %union.tree_node* %imag) unnamed_addr #5 !dbg !4181 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %real, metadata !4185, metadata !DIExpression()), !dbg !4190
  call void @llvm.dbg.value(metadata %union.tree_node* %imag, metadata !4186, metadata !DIExpression()), !dbg !4190
  %call = tail call fastcc i32 @some_nonzerop(%union.tree_node* %real) #8, !dbg !4191
  call void @llvm.dbg.value(metadata i32 %call, metadata !4187, metadata !DIExpression()), !dbg !4190
  %call1 = tail call fastcc i32 @some_nonzerop(%union.tree_node* %imag) #8, !dbg !4192
  call void @llvm.dbg.value(metadata i32 %call1, metadata !4188, metadata !DIExpression()), !dbg !4190
  %mul2 = shl nsw i32 %call1, 1, !dbg !4193
  %add = add nsw i32 %call, %mul2, !dbg !4194
  call void @llvm.dbg.value(metadata i32 %add, metadata !4189, metadata !DIExpression()), !dbg !4190
  %cmp = icmp eq i32 %add, 0, !dbg !4195
  %spec.select = select i1 %cmp, i32 1, i32 %add, !dbg !4197
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4189, metadata !DIExpression()), !dbg !4190
  ret i32 %spec.select, !dbg !4198
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @some_nonzerop(%union.tree_node* %t) unnamed_addr #5 !dbg !4199 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4203, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32 0, metadata !4204, metadata !DIExpression()), !dbg !4205
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4206
  %bf.load = load i64, i64* %0, align 8, !dbg !4206
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4208
  %cmp = icmp ne i64 %bf.cast1, 24, !dbg !4208
  %1 = load i32, i32* @flag_signed_zeros, align 4, !dbg !4209
  %tobool = icmp ne i32 %1, 0, !dbg !4209
  %or.cond = or i1 %cmp, %tobool, !dbg !4210
  br i1 %or.cond, label %if.else, label %if.then, !dbg !4210

if.then:                                          ; preds = %entry
  %real_cst_ptr = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4211
  %2 = bitcast i32* %real_cst_ptr to %struct.real_value**, !dbg !4211
  %3 = load %struct.real_value*, %struct.real_value** %2, align 8, !dbg !4211
  %call = tail call zeroext i8 @real_identical(%struct.real_value* %3, %struct.real_value* nonnull @dconst0) #6, !dbg !4211
  %conv = zext i8 %call to i32, !dbg !4211
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4204, metadata !DIExpression()), !dbg !4205
  br label %if.end19, !dbg !4212

if.else:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 25, !dbg !4213
  br i1 %cmp5, label %if.then7, label %if.else9, !dbg !4215

if.then7:                                         ; preds = %if.else
  %call8 = tail call i32 @fixed_zerop(%union.tree_node* %t) #6, !dbg !4216
  call void @llvm.dbg.value(metadata i32 %call8, metadata !4204, metadata !DIExpression()), !dbg !4205
  br label %if.end19, !dbg !4217

if.else9:                                         ; preds = %if.else
  %cmp14 = icmp eq i64 %bf.cast1, 23, !dbg !4218
  br i1 %cmp14, label %if.then16, label %if.end19, !dbg !4220

if.then16:                                        ; preds = %if.else9
  %call17 = tail call i32 @integer_zerop(%union.tree_node* %t) #6, !dbg !4221
  call void @llvm.dbg.value(metadata i32 %call17, metadata !4204, metadata !DIExpression()), !dbg !4205
  br label %if.end19, !dbg !4222

if.end19:                                         ; preds = %if.then7, %if.then16, %if.else9, %if.then
  %zerop.2 = phi i32 [ %conv, %if.then ], [ %call8, %if.then7 ], [ %call17, %if.then16 ], [ 0, %if.else9 ], !dbg !4223
  call void @llvm.dbg.value(metadata i32 %zerop.2, metadata !4204, metadata !DIExpression()), !dbg !4205
  %tobool20 = icmp eq i32 %zerop.2, 0, !dbg !4224
  %lnot.ext = zext i1 %tobool20 to i32, !dbg !4224
  ret i32 %lnot.ext, !dbg !4225
}

declare dso_local zeroext i8 @real_identical(%struct.real_value*, %struct.real_value*) local_unnamed_addr #2

declare dso_local i32 @fixed_zerop(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4226 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4228, metadata !DIExpression()), !dbg !4229
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !4230
  %0 = load i32, i32* %nargs, align 4, !dbg !4230
  ret i32 %0, !dbg !4231
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !4232 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4236, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i64 %index, metadata !4237, metadata !DIExpression()), !dbg !4240
  %conv = trunc i64 %index to i32, !dbg !4241
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #8, !dbg !4242
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !4238, metadata !DIExpression()), !dbg !4240
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4243
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #8, !dbg !4244
  ret %union.tree_node* %call1, !dbg !4245
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4246 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4250, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 %index, metadata !4251, metadata !DIExpression()), !dbg !4252
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !4253
  %0 = load i32, i32* %capacity, align 8, !dbg !4253
  %cmp = icmp ult i32 %0, %index, !dbg !4253
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4253

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4253
  br label %cond.end, !dbg !4253

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !4254
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !4254
  ret %struct.phi_arg_d* %arrayidx, !dbg !4255
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !4256 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !4263, metadata !DIExpression()), !dbg !4264
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !4265
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !4265
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4266
  ret %union.tree_node* %1, !dbg !4267
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_safe_grow(%struct.VEC_tree_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !4268 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** @complex_ssa_name_components, metadata !4270, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i32 %size_, metadata !4271, metadata !DIExpression()), !dbg !4272
  %cmp = icmp sgt i32 %size_, -1, !dbg !4273
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4273

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !4273
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !4273
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4273

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !4273
  br label %cond.end, !dbg !4273

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !4273
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #8, !dbg !4273
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !4273
  %tobool2 = icmp eq %struct.VEC_tree_heap* %1, null, !dbg !4273
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !4273

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %1, i64 0, i32 0, i32 0, !dbg !4273
  %2 = load i32, i32* %num, align 8, !dbg !4273
  br label %cond.end11, !dbg !4273

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !4273
  %sub = sub nsw i32 %size_, %cond12, !dbg !4273
  %call13 = tail call fastcc i32 @VEC_tree_heap_reserve_exact(%struct.VEC_tree_heap** nonnull @complex_ssa_name_components, i32 %sub) #8, !dbg !4273
  %3 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !4273
  %num20 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %3, i64 0, i32 0, i32 0, !dbg !4273
  store i32 %size_, i32* %num20, align 8, !dbg !4273
  ret void, !dbg !4273
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_address(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !4274 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4279, metadata !DIExpression()), !dbg !4280
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !4281
  %arraydecay = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 0, !dbg !4281
  %cond = select i1 %tobool, %union.tree_node** null, %union.tree_node** %arraydecay, !dbg !4281
  ret %union.tree_node** %cond, !dbg !4281
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_heap_reserve_exact(%struct.VEC_tree_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4282 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** @complex_ssa_name_components, metadata !4286, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4287, metadata !DIExpression()), !dbg !4289
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !4290
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !4290
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4290

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !4290
  br label %cond.end, !dbg !4290

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4290
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 %alloc_) #8, !dbg !4290
  %tobool1 = icmp eq i32 %call, 0, !dbg !4290
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4290
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4288, metadata !DIExpression()), !dbg !4289
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4290

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_tree_heap** @complex_ssa_name_components to i8**), align 8, !dbg !4291
  %call3 = tail call i8* @vec_heap_p_reserve_exact(i8* %1, i32 %alloc_) #6, !dbg !4291
  store i8* %call3, i8** bitcast (%struct.VEC_tree_heap** @complex_ssa_name_components to i8**), align 8, !dbg !4291
  br label %if.end, !dbg !4291

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4290
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4293 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4297, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4298, metadata !DIExpression()), !dbg !4299
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !4300
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4300

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !4300
  %0 = load i32, i32* %alloc, align 4, !dbg !4300
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !4300
  %1 = load i32, i32* %num, align 8, !dbg !4300
  %sub = sub i32 %0, %1, !dbg !4300
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !4300
  br label %cond.end, !dbg !4300

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !4300
  br label %cond.end, !dbg !4300

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !4300
  ret i32 %cond, !dbg !4300
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4301 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4308, metadata !DIExpression()), !dbg !4309
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #8, !dbg !4310
  %tobool = icmp eq i8 %call, 0, !dbg !4310
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4310

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4310
  br label %cond.end, !dbg !4310

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4311
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4311
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4311
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !4311

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4311
  br label %cond.end5, !dbg !4311

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !4311
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !4311
  ret %struct.edge_def* %call7, !dbg !4312
}

declare dso_local %union.tree_node* @build1_stat(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_complex_components_on_edge(%struct.edge_def* %e, %union.tree_node* %lhs, %union.tree_node* %r, %union.tree_node* %i) unnamed_addr #5 !dbg !4313 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !4317, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !4318, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata %union.tree_node* %r, metadata !4319, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata %union.tree_node* %i, metadata !4320, metadata !DIExpression()), !dbg !4322
  %call = tail call fastcc %struct.gimple_seq_d* @set_component_ssa_name(%union.tree_node* %lhs, i8 zeroext 0, %union.tree_node* %r) #8, !dbg !4323
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !4321, metadata !DIExpression()), !dbg !4322
  %tobool = icmp eq %struct.gimple_seq_d* %call, null, !dbg !4324
  br i1 %tobool, label %if.end, label %if.then, !dbg !4326

if.then:                                          ; preds = %entry
  tail call void @gsi_insert_seq_on_edge(%struct.edge_def* %e, %struct.gimple_seq_d* nonnull %call) #6, !dbg !4327
  br label %if.end, !dbg !4327

if.end:                                           ; preds = %entry, %if.then
  %call1 = tail call fastcc %struct.gimple_seq_d* @set_component_ssa_name(%union.tree_node* %lhs, i8 zeroext 1, %union.tree_node* %i) #8, !dbg !4328
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call1, metadata !4321, metadata !DIExpression()), !dbg !4322
  %tobool2 = icmp eq %struct.gimple_seq_d* %call1, null, !dbg !4329
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4331

if.then3:                                         ; preds = %if.end
  tail call void @gsi_insert_seq_on_edge(%struct.edge_def* %e, %struct.gimple_seq_d* nonnull %call1) #6, !dbg !4332
  br label %if.end4, !dbg !4332

if.end4:                                          ; preds = %if.end, %if.then3
  ret void, !dbg !4333
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4334 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4338, metadata !DIExpression()), !dbg !4339
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4340
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4340
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4340
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4340

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4340
  br label %cond.end, !dbg !4340

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4340
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4340
  %cmp = icmp eq i32 %call, 1, !dbg !4341
  %conv2 = zext i1 %cmp to i8, !dbg !4340
  ret i8 %conv2, !dbg !4342
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4343 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4349, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4350, metadata !DIExpression()), !dbg !4351
  br label %land.end, !dbg !4352

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4352
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4352
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4352
  ret %struct.edge_def* %0, !dbg !4352
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !4353 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4357, metadata !DIExpression()), !dbg !4358
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4359
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4359

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4359
  %0 = load i32, i32* %num, align 8, !dbg !4359
  br label %cond.end, !dbg !4359

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4359
  ret i32 %cond, !dbg !4359
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @set_component_ssa_name(%union.tree_node* %ssa_name, i8 zeroext %imag_p, %union.tree_node* %value) unnamed_addr #5 !dbg !4360 {
entry:
  %list = alloca %struct.gimple_seq_d*, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %ssa_name, metadata !4364, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i8 %imag_p, metadata !4365, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata %union.tree_node* %value, metadata !4366, metadata !DIExpression()), !dbg !4372
  %call = tail call fastcc i32 @find_lattice_value(%union.tree_node* %ssa_name) #8, !dbg !4373
  call void @llvm.dbg.value(metadata i32 %call, metadata !4367, metadata !DIExpression()), !dbg !4372
  %0 = bitcast %struct.gimple_seq_d** %list to i8*, !dbg !4374
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4374
  %tobool = icmp eq i8 %imag_p, 0, !dbg !4375
  %cond = select i1 %tobool, i32 2, i32 1, !dbg !4375
  %cmp = icmp eq i32 %call, %cond, !dbg !4377
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4378

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %ssa_name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4379
  %1 = bitcast %union.tree_node** %version to i32*, !dbg !4379
  %2 = load i32, i32* %1, align 8, !dbg !4379
  %mul = shl i32 %2, 1, !dbg !4380
  %conv3 = zext i8 %imag_p to i32, !dbg !4381
  %add = add i32 %mul, %conv3, !dbg !4382
  call void @llvm.dbg.value(metadata i32 %add, metadata !4368, metadata !DIExpression()), !dbg !4372
  %3 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !4383
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %3, i64 0, i32 0, !dbg !4383
  %call8 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base, i32 %add) #8, !dbg !4383
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !4369, metadata !DIExpression()), !dbg !4372
  %tobool9 = icmp eq %union.tree_node* %call8, null, !dbg !4384
  br i1 %tobool9, label %if.else, label %if.end73, !dbg !4386

if.else:                                          ; preds = %if.end
  %call11 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %value) #6, !dbg !4387
  %tobool13 = icmp eq i8 %call11, 0, !dbg !4387
  br i1 %tobool13, label %if.else25, label %land.lhs.true, !dbg !4389

land.lhs.true:                                    ; preds = %if.else
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %ssa_name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4390
  %bf.load = load i64, i64* %4, align 8, !dbg !4390
  %bf.cast5 = and i64 %bf.load, 4194304, !dbg !4390
  %tobool15 = icmp eq i64 %bf.cast5, 0, !dbg !4390
  br i1 %tobool15, label %if.then16, label %if.else25, !dbg !4391

if.then16:                                        ; preds = %land.lhs.true
  %5 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !4392
  %base19 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %5, i64 0, i32 0, !dbg !4392
  %call24 = tail call fastcc %union.tree_node* @VEC_tree_base_replace(%struct.VEC_tree_base* %base19, i32 %add, %union.tree_node* %value) #8, !dbg !4392
  br label %cleanup, !dbg !4394

if.else25:                                        ; preds = %land.lhs.true, %if.else
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %value, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4395
  %bf.load27 = load i64, i64* %6, align 8, !dbg !4395
  %bf.cast291 = and i64 %bf.load27, 65535, !dbg !4397
  %cmp30 = icmp eq i64 %bf.cast291, 141, !dbg !4397
  br i1 %cmp30, label %land.lhs.true32, label %if.else69, !dbg !4398

land.lhs.true32:                                  ; preds = %if.else25
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %ssa_name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4399
  %bf.load34 = load i64, i64* %7, align 8, !dbg !4399
  %bf.cast372 = and i64 %bf.load34, 4194304, !dbg !4399
  %tobool38 = icmp eq i64 %bf.cast372, 0, !dbg !4399
  br i1 %tobool38, label %if.then39, label %if.else69, !dbg !4400

if.then39:                                        ; preds = %land.lhs.true32
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %value, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4401
  %8 = bitcast i32* %var to %struct.tree_decl_common**, !dbg !4401
  %9 = load %struct.tree_decl_common*, %struct.tree_decl_common** %8, align 8, !dbg !4401
  %ignored_flag = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %9, i64 0, i32 2, !dbg !4401
  %10 = bitcast i40* %ignored_flag to i64*, !dbg !4401
  %bf.load41 = load i64, i64* %10, align 8, !dbg !4401
  %bf.cast443 = and i64 %bf.load41, 1024, !dbg !4401
  %tobool45 = icmp eq i64 %bf.cast443, 0, !dbg !4401
  br i1 %tobool45, label %if.end60, label %land.lhs.true46, !dbg !4404

land.lhs.true46:                                  ; preds = %if.then39
  %var48 = getelementptr inbounds %union.tree_node, %union.tree_node* %ssa_name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4405
  %11 = bitcast i32* %var48 to %struct.tree_decl_common**, !dbg !4405
  %12 = load %struct.tree_decl_common*, %struct.tree_decl_common** %11, align 8, !dbg !4405
  %ignored_flag50 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %12, i64 0, i32 2, !dbg !4405
  %13 = bitcast i40* %ignored_flag50 to i64*, !dbg !4405
  %bf.load51 = load i64, i64* %13, align 8, !dbg !4405
  %bf.cast544 = and i64 %bf.load51, 1024, !dbg !4405
  %tobool55 = icmp eq i64 %bf.cast544, 0, !dbg !4405
  br i1 %tobool55, label %if.then56, label %if.end60, !dbg !4406

if.then56:                                        ; preds = %land.lhs.true46
  %14 = bitcast %struct.tree_decl_common* %12 to %union.tree_node*, !dbg !4406
  %call59 = tail call fastcc %union.tree_node* @get_component_var(%union.tree_node* %14, i8 zeroext %imag_p) #8, !dbg !4407
  call void @llvm.dbg.value(metadata %union.tree_node* %call59, metadata !4369, metadata !DIExpression()), !dbg !4372
  tail call void @replace_ssa_name_symbol(%union.tree_node* %value, %union.tree_node* %call59) #6, !dbg !4409
  br label %if.end60, !dbg !4410

if.end60:                                         ; preds = %land.lhs.true46, %if.then39, %if.then56
  %15 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !4411
  %base63 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %15, i64 0, i32 0, !dbg !4411
  %call68 = tail call fastcc %union.tree_node* @VEC_tree_base_replace(%struct.VEC_tree_base* %base63, i32 %add, %union.tree_node* %value) #8, !dbg !4411
  br label %cleanup, !dbg !4412

if.else69:                                        ; preds = %land.lhs.true32, %if.else25
  %call70 = tail call fastcc %union.tree_node* @get_component_ssa_name(%union.tree_node* %ssa_name, i8 zeroext %imag_p) #8, !dbg !4413
  call void @llvm.dbg.value(metadata %union.tree_node* %call70, metadata !4369, metadata !DIExpression()), !dbg !4372
  br label %if.end73

if.end73:                                         ; preds = %if.end, %if.else69
  %comp.0 = phi %union.tree_node* [ %call70, %if.else69 ], [ %call8, %if.end ], !dbg !4372
  call void @llvm.dbg.value(metadata %union.tree_node* %comp.0, metadata !4369, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* null, metadata !4371, metadata !DIExpression()), !dbg !4372
  store %struct.gimple_seq_d* null, %struct.gimple_seq_d** %list, align 8, !dbg !4414
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %list, metadata !4371, metadata !DIExpression(DW_OP_deref)), !dbg !4372
  %call74 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %value, %struct.gimple_seq_d** nonnull %list, i8 zeroext 0, %union.tree_node* null) #6, !dbg !4415
  call void @llvm.dbg.value(metadata %union.tree_node* %call74, metadata !4366, metadata !DIExpression()), !dbg !4372
  %call75 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %comp.0, %union.tree_node* %call74) #6, !dbg !4416
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call75, metadata !4370, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %list, metadata !4371, metadata !DIExpression(DW_OP_deref)), !dbg !4372
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %list, %union.gimple_statement_d* %call75) #6, !dbg !4417
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %comp.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4418
  %16 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4418
  %17 = load %union.gimple_statement_d*, %union.gimple_statement_d** %16, align 8, !dbg !4418
  %cmp77 = icmp eq %union.gimple_statement_d* %17, %call75, !dbg !4418
  br i1 %cmp77, label %cond.end81, label %cond.true79, !dbg !4418

cond.true79:                                      ; preds = %if.end73
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 578, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4418
  br label %cond.end81, !dbg !4418

cond.end81:                                       ; preds = %if.end73, %cond.true79
  %18 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %list, align 8, !dbg !4419
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %18, metadata !4371, metadata !DIExpression()), !dbg !4372
  br label %cleanup, !dbg !4420

cleanup:                                          ; preds = %entry, %cond.end81, %if.end60, %if.then16
  %retval.0 = phi %struct.gimple_seq_d* [ %18, %cond.end81 ], [ null, %if.end60 ], [ null, %if.then16 ], [ null, %entry ], !dbg !4372
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4421
  ret %struct.gimple_seq_d* %retval.0, !dbg !4421
}

declare dso_local void @gsi_insert_seq_on_edge(%struct.edge_def*, %struct.gimple_seq_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4422 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4426, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4427, metadata !DIExpression()), !dbg !4428
  br label %land.end, !dbg !4429

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4429
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4429
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4429
  ret %union.tree_node* %0, !dbg !4429
}

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_replace(%struct.VEC_tree_base* %vec_, i32 %ix_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !4430 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4434, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4435, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !4436, metadata !DIExpression()), !dbg !4438
  %idxprom = zext i32 %ix_ to i64, !dbg !4439
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4439
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4439
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4437, metadata !DIExpression()), !dbg !4438
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !4439
  ret %union.tree_node* %0, !dbg !4439
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @get_component_var(%union.tree_node* %var, i8 zeroext %imag_p) unnamed_addr #5 !dbg !4440 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4444, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i8 %imag_p, metadata !4445, metadata !DIExpression()), !dbg !4448
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4449
  %0 = load i32, i32* %uid, align 4, !dbg !4449
  %mul = shl i32 %0, 1, !dbg !4450
  %conv = zext i8 %imag_p to i32, !dbg !4451
  %add = add i32 %mul, %conv, !dbg !4452
  call void @llvm.dbg.value(metadata i32 %add, metadata !4446, metadata !DIExpression()), !dbg !4448
  %call = tail call fastcc %union.tree_node* @cvc_lookup(i32 %add) #8, !dbg !4453
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4447, metadata !DIExpression()), !dbg !4448
  %cmp = icmp eq %union.tree_node* %call, null, !dbg !4454
  br i1 %cmp, label %if.then, label %if.end, !dbg !4456

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %add, metadata !4446, metadata !DIExpression()), !dbg !4448
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4457
  %1 = bitcast %union.tree_node** %type to %struct.tree_common**, !dbg !4457
  %2 = load %struct.tree_common*, %struct.tree_common** %1, align 8, !dbg !4457
  %type5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %2, i64 0, i32 2, !dbg !4457
  %3 = load %union.tree_node*, %union.tree_node** %type5, align 8, !dbg !4457
  %tobool = icmp eq i8 %imag_p, 0, !dbg !4459
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), !dbg !4459
  %cond9 = select i1 %tobool, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), !dbg !4460
  %cond12 = select i1 %tobool, i32 43, i32 44, !dbg !4461
  %call13 = tail call fastcc %union.tree_node* @create_one_component_var(%union.tree_node* %3, %union.tree_node* %var, i8* %cond, i8* %cond9, i32 %cond12) #8, !dbg !4462
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !4447, metadata !DIExpression()), !dbg !4448
  tail call fastcc void @cvc_insert(i32 %add, %union.tree_node* %call13) #8, !dbg !4463
  br label %if.end, !dbg !4464

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi %union.tree_node* [ %call13, %if.then ], [ %call, %entry ], !dbg !4448
  call void @llvm.dbg.value(metadata %union.tree_node* %ret.0, metadata !4447, metadata !DIExpression()), !dbg !4448
  ret %union.tree_node* %ret.0, !dbg !4465
}

declare dso_local void @replace_ssa_name_symbol(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @get_component_ssa_name(%union.tree_node* %ssa_name, i8 zeroext %imag_p) unnamed_addr #5 !dbg !4466 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ssa_name, metadata !4468, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i8 %imag_p, metadata !4469, metadata !DIExpression()), !dbg !4476
  %call = tail call fastcc i32 @find_lattice_value(%union.tree_node* %ssa_name) #8, !dbg !4477
  call void @llvm.dbg.value(metadata i32 %call, metadata !4470, metadata !DIExpression()), !dbg !4476
  %tobool = icmp eq i8 %imag_p, 0, !dbg !4478
  %cond = select i1 %tobool, i32 2, i32 1, !dbg !4478
  %cmp = icmp eq i32 %call, %cond, !dbg !4479
  br i1 %cmp, label %if.then, label %if.end, !dbg !4480

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %ssa_name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4481
  %0 = bitcast %union.tree_node** %type to %struct.tree_common**, !dbg !4481
  %1 = load %struct.tree_common*, %struct.tree_common** %0, align 8, !dbg !4481
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1, i64 0, i32 2, !dbg !4481
  %2 = load %union.tree_node*, %union.tree_node** %type3, align 8, !dbg !4481
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !4473, metadata !DIExpression()), !dbg !4482
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4483
  %bf.load = load i64, i64* %3, align 8, !dbg !4483
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !4483
  %cmp4 = icmp eq i64 %bf.cast2, 9, !dbg !4483
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !4485

if.then6:                                         ; preds = %if.then
  %call7 = tail call %union.tree_node* @build_real(%union.tree_node* %2, %struct.real_value* nonnull byval(%struct.real_value) align 8 @dconst0) #6, !dbg !4486
  br label %cleanup59, !dbg !4487

if.else:                                          ; preds = %if.then
  %call8 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %2, i64 0) #6, !dbg !4488
  br label %cleanup59, !dbg !4489

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %ssa_name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4490
  %4 = bitcast %union.tree_node** %version to i32*, !dbg !4490
  %5 = load i32, i32* %4, align 8, !dbg !4490
  %mul = shl i32 %5, 1, !dbg !4491
  %conv10 = zext i8 %imag_p to i32, !dbg !4492
  %add = add i32 %mul, %conv10, !dbg !4493
  call void @llvm.dbg.value(metadata i32 %add, metadata !4471, metadata !DIExpression()), !dbg !4476
  %6 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !4494
  %base13 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %6, i64 0, i32 0, !dbg !4494
  %call16 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base13, i32 %add) #8, !dbg !4494
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !4472, metadata !DIExpression()), !dbg !4476
  %cmp17 = icmp eq %union.tree_node* %call16, null, !dbg !4495
  br i1 %cmp17, label %if.then19, label %cleanup59, !dbg !4497

if.then19:                                        ; preds = %if.end
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %ssa_name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4498
  %7 = bitcast i32* %var to %union.tree_node**, !dbg !4498
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8, !dbg !4498
  %call21 = tail call fastcc %union.tree_node* @get_component_var(%union.tree_node* %8, i8 zeroext %imag_p) #8, !dbg !4500
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !4472, metadata !DIExpression()), !dbg !4476
  %call22 = tail call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call21, %union.gimple_statement_d* null) #8, !dbg !4501
  call void @llvm.dbg.value(metadata %union.tree_node* %call22, metadata !4472, metadata !DIExpression()), !dbg !4476
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %ssa_name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4502
  %bf.load24 = load i64, i64* %9, align 8, !dbg !4502
  %bf.cast26 = and i64 %bf.load24, 4194304, !dbg !4502
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4503
  %bf.load28 = load i64, i64* %10, align 8, !dbg !4504
  %bf.clear29 = and i64 %bf.load28, -4194305, !dbg !4504
  %bf.set = or i64 %bf.clear29, %bf.cast26, !dbg !4504
  store i64 %bf.set, i64* %10, align 8, !dbg !4504
  %11 = bitcast i32* %var to i64**, !dbg !4505
  %12 = load i64*, i64** %11, align 8, !dbg !4505
  %bf.load33 = load i64, i64* %12, align 8, !dbg !4505
  %bf.cast351 = and i64 %bf.load33, 65535, !dbg !4507
  %cmp36 = icmp eq i64 %bf.cast351, 32, !dbg !4507
  br i1 %cmp36, label %land.lhs.true, label %if.end49, !dbg !4508

land.lhs.true:                                    ; preds = %if.then19
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %ssa_name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4509
  %13 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4509
  %14 = load %union.gimple_statement_d*, %union.gimple_statement_d** %13, align 8, !dbg !4509
  %call39 = tail call fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %14) #8, !dbg !4510
  %tobool41 = icmp eq i8 %call39, 0, !dbg !4510
  br i1 %tobool41, label %if.end49, label %if.then42, !dbg !4511

if.then42:                                        ; preds = %land.lhs.true
  %15 = bitcast %union.tree_node** %def_stmt to i64*, !dbg !4512
  %16 = load i64, i64* %15, align 8, !dbg !4512
  %def_stmt46 = getelementptr inbounds %union.tree_node, %union.tree_node* %call22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4514
  %17 = bitcast %union.tree_node** %def_stmt46 to i64*, !dbg !4515
  store i64 %16, i64* %17, align 8, !dbg !4515
  %var48 = getelementptr inbounds %union.tree_node, %union.tree_node* %call22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4516
  %18 = bitcast i32* %var48 to %union.tree_node**, !dbg !4516
  %19 = load %union.tree_node*, %union.tree_node** %18, align 8, !dbg !4516
  tail call void @set_default_def(%union.tree_node* %19, %union.tree_node* %call22) #6, !dbg !4517
  br label %if.end49, !dbg !4518

if.end49:                                         ; preds = %land.lhs.true, %if.then42, %if.then19
  %20 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** @complex_ssa_name_components, align 8, !dbg !4519
  %base52 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %20, i64 0, i32 0, !dbg !4519
  %call57 = tail call fastcc %union.tree_node* @VEC_tree_base_replace(%struct.VEC_tree_base* %base52, i32 %add, %union.tree_node* %call22) #8, !dbg !4519
  br label %cleanup59, !dbg !4520

cleanup59:                                        ; preds = %if.end, %if.end49, %if.then6, %if.else
  %retval.1 = phi %union.tree_node* [ %call7, %if.then6 ], [ %call8, %if.else ], [ %call22, %if.end49 ], [ %call16, %if.end ], !dbg !4476
  ret %union.tree_node* %retval.1, !dbg !4521
}

declare dso_local %union.tree_node* @force_gimple_operand(%union.tree_node*, %struct.gimple_seq_d**, i8 zeroext, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @gimple_seq_add_stmt(%struct.gimple_seq_d**, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @cvc_lookup(i32 %uid) unnamed_addr #5 !dbg !4522 {
entry:
  %in = alloca %struct.int_tree_map, align 8
  call void @llvm.dbg.value(metadata i32 %uid, metadata !4526, metadata !DIExpression()), !dbg !4529
  %0 = bitcast %struct.int_tree_map* %in to i8*, !dbg !4530
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !4530
  %uid1 = getelementptr inbounds %struct.int_tree_map, %struct.int_tree_map* %in, i64 0, i32 0, !dbg !4531
  store i32 %uid, i32* %uid1, align 8, !dbg !4532
  %1 = load %struct.htab*, %struct.htab** @complex_variable_components, align 8, !dbg !4533
  %call = call i8* @htab_find_with_hash(%struct.htab* %1, i8* nonnull %0, i32 %uid) #6, !dbg !4534
  call void @llvm.dbg.value(metadata i8* %call, metadata !4527, metadata !DIExpression()), !dbg !4529
  %tobool = icmp eq i8* %call, null, !dbg !4535
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4535

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %call, metadata !4527, metadata !DIExpression()), !dbg !4529
  %to = getelementptr inbounds i8, i8* %call, i64 8, !dbg !4536
  %2 = bitcast i8* %to to %union.tree_node**, !dbg !4536
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !4536
  br label %cond.end, !dbg !4535

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %union.tree_node* [ %3, %cond.true ], [ null, %entry ], !dbg !4535
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !4537
  ret %union.tree_node* %cond, !dbg !4538
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @create_one_component_var(%union.tree_node* %type, %union.tree_node* %orig, i8* %prefix, i8* %suffix, i32 %code) unnamed_addr #5 !dbg !4539 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4543, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata %union.tree_node* %orig, metadata !4544, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i8* %prefix, metadata !4545, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i8* %suffix, metadata !4546, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i32 %code, metadata !4547, metadata !DIExpression()), !dbg !4552
  %call = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %type, i8* %prefix) #6, !dbg !4553
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4548, metadata !DIExpression()), !dbg !4552
  %call1 = tail call zeroext i8 @add_referenced_var(%union.tree_node* %call) #6, !dbg !4554
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %orig, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4555
  %0 = load i32, i32* %locus, align 8, !dbg !4555
  %locus3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4556
  store i32 %0, i32* %locus3, align 8, !dbg !4557
  %artificial_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4558
  %1 = bitcast i40* %artificial_flag to i64*, !dbg !4558
  %bf.load = load i64, i64* %1, align 8, !dbg !4559
  %bf.set = or i64 %bf.load, 4096, !dbg !4559
  store i64 %bf.set, i64* %1, align 8, !dbg !4559
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %orig, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4560
  %2 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !4560
  %tobool = icmp eq %union.tree_node* %2, null, !dbg !4560
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4561

land.lhs.true:                                    ; preds = %entry
  %ignored_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %orig, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4562
  %3 = bitcast i40* %ignored_flag to i64*, !dbg !4562
  %bf.load6 = load i64, i64* %3, align 8, !dbg !4562
  %bf.cast1 = and i64 %bf.load6, 1024, !dbg !4562
  %tobool8 = icmp eq i64 %bf.cast1, 0, !dbg !4562
  br i1 %tobool8, label %if.then, label %if.else, !dbg !4563

if.then:                                          ; preds = %land.lhs.true
  %str = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4564
  %4 = bitcast i32* %str to i8**, !dbg !4564
  %5 = load i8*, i8** %4, align 8, !dbg !4564
  call void @llvm.dbg.value(metadata i8* %5, metadata !4549, metadata !DIExpression()), !dbg !4565
  %call12 = tail call i64 (i8*, ...) @concat_length(i8* %5, i8* %suffix, i8* null) #6, !dbg !4566
  %add = add i64 %call12, 1, !dbg !4566
  %6 = alloca i8, i64 %add, align 16, !dbg !4566
  store i8* %6, i8** @libiberty_concat_ptr, align 8, !dbg !4566
  %call13 = call i8* (i8*, ...) @concat_copy2(i8* %5, i8* %suffix, i8* null) #6, !dbg !4566
  %call14 = call %union.tree_node* @get_identifier(i8* %call13) #6, !dbg !4567
  %name16 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4568
  store %union.tree_node* %call14, %union.tree_node** %name16, align 8, !dbg !4569
  %call17 = call %union.tree_node* @build1_stat(i32 %code, %union.tree_node* %type, %union.tree_node* %orig) #6, !dbg !4570
  call void @decl_debug_expr_insert(%union.tree_node* %call, %union.tree_node* %call17) #6, !dbg !4570
  %bf.load19 = load i64, i64* %1, align 8, !dbg !4571
  %bf.set21 = and i64 %bf.load19, -17409, !dbg !4572
  %bf.clear25 = or i64 %bf.set21, 16384, !dbg !4572
  store i64 %bf.clear25, i64* %1, align 8, !dbg !4572
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %orig, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4573
  %bf.load26 = load i64, i64* %7, align 8, !dbg !4573
  %bf.cast29 = and i64 %bf.load26, 8388608, !dbg !4573
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4574
  %bf.load31 = load i64, i64* %8, align 8, !dbg !4575
  %bf.clear32 = and i64 %bf.load31, -8388609, !dbg !4575
  %bf.set33 = or i64 %bf.clear32, %bf.cast29, !dbg !4575
  store i64 %bf.set33, i64* %8, align 8, !dbg !4575
  br label %if.end, !dbg !4576

if.else:                                          ; preds = %land.lhs.true, %entry
  %bf.set38 = or i64 %bf.load, 5120, !dbg !4577
  store i64 %bf.set38, i64* %1, align 8, !dbg !4577
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4579
  %bf.load40 = load i64, i64* %9, align 8, !dbg !4580
  %bf.set42 = or i64 %bf.load40, 8388608, !dbg !4580
  store i64 %bf.set42, i64* %9, align 8, !dbg !4580
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %union.tree_node* %call, !dbg !4581
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cvc_insert(i32 %uid, %union.tree_node* %to) unnamed_addr #5 !dbg !4582 {
entry:
  call void @llvm.dbg.value(metadata i32 %uid, metadata !4586, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.value(metadata %union.tree_node* %to, metadata !4587, metadata !DIExpression()), !dbg !4590
  %call = tail call i8* @xmalloc(i64 16) #6, !dbg !4591
  call void @llvm.dbg.value(metadata i8* %call, metadata !4588, metadata !DIExpression()), !dbg !4590
  %uid1 = bitcast i8* %call to i32*, !dbg !4592
  store i32 %uid, i32* %uid1, align 8, !dbg !4593
  %to2 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !4594
  %0 = bitcast i8* %to2 to %union.tree_node**, !dbg !4594
  store %union.tree_node* %to, %union.tree_node** %0, align 8, !dbg !4595
  %1 = load %struct.htab*, %struct.htab** @complex_variable_components, align 8, !dbg !4596
  %call3 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %1, i8* %call, i32 %uid, i32 1) #6, !dbg !4597
  call void @llvm.dbg.value(metadata i8** %call3, metadata !4589, metadata !DIExpression()), !dbg !4590
  store i8* %call, i8** %call3, align 8, !dbg !4598
  ret void, !dbg !4599
}

declare dso_local i8* @htab_find_with_hash(%struct.htab*, i8*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @add_referenced_var(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_identifier(i8*) local_unnamed_addr #2

declare dso_local i64 @concat_length(i8*, ...) local_unnamed_addr #2

declare dso_local i8* @concat_copy2(i8*, ...) local_unnamed_addr #2

declare dso_local void @decl_debug_expr_insert(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_real(%union.tree_node*, %struct.real_value* byval(%struct.real_value) align 8) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4600 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4604, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4605, metadata !DIExpression()), !dbg !4606
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4607
  %call = tail call %union.tree_node* @make_ssa_name_fn(%struct.function* %0, %union.tree_node* %var, %union.gimple_statement_d* %stmt) #6, !dbg !4608
  ret %union.tree_node* %call, !dbg !4609
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4610 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4612, metadata !DIExpression()), !dbg !4613
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4614
  %cmp = icmp eq i32 %call, 18, !dbg !4615
  %conv1 = zext i1 %cmp to i8, !dbg !4614
  ret i8 %conv1, !dbg !4616
}

declare dso_local void @set_default_def(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @make_ssa_name_fn(%struct.function*, %union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @create_phi_node(%union.tree_node*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @extract_component(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %t, i8 zeroext %imagpart_p, i8 zeroext %gimple_p) unnamed_addr #5 !dbg !4617 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4621, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4622, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i8 %imagpart_p, metadata !4623, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i8 %gimple_p, metadata !4624, metadata !DIExpression()), !dbg !4628
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4629
  %bf.load = load i64, i64* %0, align 8, !dbg !4629
  %1 = trunc i64 %bf.load to i16, !dbg !4629
  switch i16 %1, label %sw.default [
    i16 26, label %sw.bb
    i16 123, label %sw.bb2
    i16 32, label %sw.bb3
    i16 36, label %sw.bb3
    i16 34, label %sw.bb3
    i16 47, label %sw.bb3
    i16 41, label %sw.bb3
    i16 45, label %sw.bb3
    i16 118, label %sw.bb3
    i16 141, label %sw.bb12
  ], !dbg !4630

sw.bb:                                            ; preds = %entry
  %tobool = icmp eq i8 %imagpart_p, 0, !dbg !4631
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4631

cond.true:                                        ; preds = %sw.bb
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4632
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !4632
  br label %return, !dbg !4631

cond.false:                                       ; preds = %sw.bb
  %real = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4633
  %4 = bitcast i32* %real to %union.tree_node**, !dbg !4633
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8, !dbg !4633
  br label %return, !dbg !4631

sw.bb2:                                           ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 597, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4634
  br label %sw.bb3, !dbg !4634

sw.bb3:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.bb2
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4635
  %6 = bitcast %union.tree_node** %type to %struct.tree_common**, !dbg !4635
  %7 = load %struct.tree_common*, %struct.tree_common** %6, align 8, !dbg !4635
  %type5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %7, i64 0, i32 2, !dbg !4635
  %8 = load %union.tree_node*, %union.tree_node** %type5, align 8, !dbg !4635
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !4625, metadata !DIExpression()), !dbg !4636
  %tobool7 = icmp eq i8 %imagpart_p, 0, !dbg !4637
  %cond8 = select i1 %tobool7, i32 43, i32 44, !dbg !4637
  %call = tail call %union.tree_node* @unshare_expr(%union.tree_node* %t) #6, !dbg !4637
  %call9 = tail call %union.tree_node* @build1_stat(i32 %cond8, %union.tree_node* %8, %union.tree_node* %call) #6, !dbg !4637
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !4622, metadata !DIExpression()), !dbg !4628
  %tobool10 = icmp eq i8 %gimple_p, 0, !dbg !4638
  br i1 %tobool10, label %return, label %if.then, !dbg !4640

if.then:                                          ; preds = %sw.bb3
  %call11 = tail call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call9, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !4641
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !4622, metadata !DIExpression()), !dbg !4628
  br label %return, !dbg !4642

sw.bb12:                                          ; preds = %entry
  %call13 = tail call fastcc %union.tree_node* @get_component_ssa_name(%union.tree_node* %t, i8 zeroext %imagpart_p) #8, !dbg !4643
  br label %return, !dbg !4644

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 623, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4645
  br label %return, !dbg !4646

return:                                           ; preds = %sw.bb3, %if.then, %cond.true, %cond.false, %sw.default, %sw.bb12
  %retval.0 = phi %union.tree_node* [ null, %sw.default ], [ %call13, %sw.bb12 ], [ %3, %cond.true ], [ %5, %cond.false ], [ %call11, %if.then ], [ %call9, %sw.bb3 ], !dbg !4628
  ret %union.tree_node* %retval.0, !dbg !4647
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) unnamed_addr #0 !dbg !4648 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !4652, metadata !DIExpression()), !dbg !4654
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !4653, metadata !DIExpression()), !dbg !4654
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use) #8, !dbg !4655
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !4656
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !4656
  store %union.tree_node* %val, %union.tree_node** %0, align 8, !dbg !4657
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) #8, !dbg !4658
  ret void, !dbg !4659
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4660 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4664, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i32 %i, metadata !4665, metadata !DIExpression()), !dbg !4666
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #8, !dbg !4667
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4668
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !4669
}

declare dso_local %union.tree_node* @unshare_expr(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator*, %union.tree_node*, i8 zeroext, %union.tree_node*, i8 zeroext, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !4670 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4674, metadata !DIExpression()), !dbg !4675
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4676
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4676
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !4678
  br i1 %cmp, label %return, label %if.end, !dbg !4679

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !4680
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4680
  %2 = load i64, i64* %1, align 8, !dbg !4680
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !4681
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !4682
  store i64 %2, i64* %3, align 8, !dbg !4682
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !4683
  %5 = load i64, i64* %4, align 8, !dbg !4683
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !4684
  %7 = load i64*, i64** %6, align 8, !dbg !4684
  store i64 %5, i64* %7, align 8, !dbg !4685
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4686
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !4687
  br label %return, !dbg !4688

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !4688
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def) unnamed_addr #0 !dbg !4689 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4693, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !4694, metadata !DIExpression()), !dbg !4696
  %tobool = icmp eq %union.tree_node* %def, null, !dbg !4697
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4699

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4700
  %bf.load = load i64, i64* %0, align 8, !dbg !4700
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4701
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4701
  br i1 %cmp, label %if.else, label %if.then, !dbg !4702

if.then:                                          ; preds = %lor.lhs.false, %entry
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4703
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4704
  br label %if.end, !dbg !4705

if.else:                                          ; preds = %lor.lhs.false
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4706
  %1 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !4706
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !4695, metadata !DIExpression()), !dbg !4696
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* nonnull %1) #8, !dbg !4708
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4709
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !4710 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4714, metadata !DIExpression()), !dbg !4716
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !4715, metadata !DIExpression()), !dbg !4716
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4717
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4718
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !4719
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4719
  %1 = load i64, i64* %0, align 8, !dbg !4719
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !4720
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !4721
  store i64 %1, i64* %2, align 8, !dbg !4721
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !4722
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !4723
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !4724
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !4725
  ret void, !dbg !4726
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4727 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4731, metadata !DIExpression()), !dbg !4732
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4733
  %0 = load i32, i32* %flags, align 8, !dbg !4733
  %and = and i32 %0, 512, !dbg !4734
  %tobool = icmp eq i32 %and, 0, !dbg !4734
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4735

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4736
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4736
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4737
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4738

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4739
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4739
  br label %cond.end, !dbg !4738

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4738
  ret %struct.gimple_seq_d* %cond, !dbg !4740
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4741 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4748, metadata !DIExpression()), !dbg !4749
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4750
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4750

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4751
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4751
  br label %cond.end, !dbg !4750

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4750
  ret %struct.gimple_seq_node_d* %cond, !dbg !4752
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_complex_move(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %type) unnamed_addr #5 !dbg !4753 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4757, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4758, metadata !DIExpression()), !dbg !4782
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4783
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !4783
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4759, metadata !DIExpression()), !dbg !4782
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !4784
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !4764, metadata !DIExpression()), !dbg !4782
  %call2 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call) #8, !dbg !4785
  %tobool = icmp eq i8 %call2, 0, !dbg !4785
  br i1 %tobool, label %if.else7, label %if.then, !dbg !4787

if.then:                                          ; preds = %entry
  %call3 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call) #8, !dbg !4788
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !4762, metadata !DIExpression()), !dbg !4782
  %call4 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %call) #8, !dbg !4790
  %cmp = icmp eq i32 %call4, 2, !dbg !4792
  br i1 %cmp, label %if.then5, label %if.end14, !dbg !4793

if.then5:                                         ; preds = %if.then
  %call6 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call) #8, !dbg !4794
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !4763, metadata !DIExpression()), !dbg !4782
  br label %if.end14, !dbg !4795

if.else7:                                         ; preds = %entry
  %call8 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call) #8, !dbg !4796
  %tobool9 = icmp eq i8 %call8, 0, !dbg !4796
  br i1 %tobool9, label %if.else12, label %if.then10, !dbg !4798

if.then10:                                        ; preds = %if.else7
  %call11 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call) #8, !dbg !4799
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !4762, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !4763, metadata !DIExpression()), !dbg !4782
  br label %if.end14, !dbg !4801

if.else12:                                        ; preds = %if.else7
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 781, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4802
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.else12, %if.then5, %if.then
  %rhs.2 = phi %union.tree_node* [ %call6, %if.then5 ], [ null, %if.then ], [ null, %if.else12 ], [ null, %if.then10 ], !dbg !4803
  %lhs.1 = phi %union.tree_node* [ %call3, %if.then5 ], [ %call3, %if.then ], [ undef, %if.else12 ], [ %call11, %if.then10 ], !dbg !4803
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs.1, metadata !4762, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs.2, metadata !4763, metadata !DIExpression()), !dbg !4782
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4804
  %bf.load = load i64, i64* %1, align 8, !dbg !4804
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4805
  %cmp15 = icmp eq i64 %bf.cast1, 141, !dbg !4805
  br i1 %cmp15, label %if.then16, label %if.else55, !dbg !4806

if.then16:                                        ; preds = %if.end14
  %call17 = tail call zeroext i8 @is_ctrl_altering_stmt(%union.gimple_statement_d* %call) #6, !dbg !4807
  %tobool18 = icmp eq i8 %call17, 0, !dbg !4807
  br i1 %tobool18, label %if.else29, label %if.then19, !dbg !4808

if.then19:                                        ; preds = %if.then16
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4809
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4809
  %3 = bitcast %struct.edge_def** %e to i8*, !dbg !4810
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !4810
  %4 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4811
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4811
  %call20 = tail call fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !4811
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call20, i64 0, i32 1, !dbg !4811
  %call21 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !4811
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4811
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call21, 0, !dbg !4811
  store i32 %6, i32* %5, align 8, !dbg !4811
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4811
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call21, 1, !dbg !4811
  store %struct.VEC_edge_gc** %8, %struct.VEC_edge_gc*** %7, align 8, !dbg !4811
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !4811
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4811
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4813
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4813
  br label %for.cond, !dbg !4811

for.cond:                                         ; preds = %for.inc, %if.then19
  %11 = load i32, i32* %9, align 8, !dbg !4815
  %12 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %10, align 8, !dbg !4815
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4776, metadata !DIExpression(DW_OP_deref)), !dbg !4816
  %call22 = call fastcc zeroext i8 @ei_cond(i32 %11, %struct.VEC_edge_gc** %12, %struct.edge_def** nonnull %e) #8, !dbg !4815
  %tobool23 = icmp eq i8 %call22, 0, !dbg !4811
  br i1 %tobool23, label %for.end, label %for.body, !dbg !4811

for.body:                                         ; preds = %for.cond
  %13 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4817
  call void @llvm.dbg.value(metadata %struct.edge_def* %13, metadata !4776, metadata !DIExpression()), !dbg !4816
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i64 0, i32 7, !dbg !4819
  %14 = load i32, i32* %flags, align 8, !dbg !4819
  %and = and i32 %14, 1, !dbg !4820
  %tobool24 = icmp eq i32 %and, 0, !dbg !4820
  br i1 %tobool24, label %for.inc, label %found_fallthru.loopexit, !dbg !4821

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4765, metadata !DIExpression(DW_OP_deref)), !dbg !4816
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4815
  br label %for.cond, !dbg !4815, !llvm.loop !4822

for.end:                                          ; preds = %for.cond
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 796, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4824
  br label %found_fallthru, !dbg !4824

found_fallthru.loopexit:                          ; preds = %for.body
  br label %found_fallthru, !dbg !4825

found_fallthru:                                   ; preds = %found_fallthru.loopexit, %for.end
  call void @llvm.dbg.label(metadata !4781), !dbg !4826
  %call27 = call %union.tree_node* @build1_stat(i32 43, %union.tree_node* %0, %union.tree_node* %lhs.1) #6, !dbg !4825
  call void @llvm.dbg.value(metadata %union.tree_node* %call27, metadata !4760, metadata !DIExpression()), !dbg !4782
  %call28 = call %union.tree_node* @build1_stat(i32 44, %union.tree_node* %0, %union.tree_node* %lhs.1) #6, !dbg !4827
  call void @llvm.dbg.value(metadata %union.tree_node* %call28, metadata !4761, metadata !DIExpression()), !dbg !4782
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4828
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4776, metadata !DIExpression()), !dbg !4816
  call fastcc void @update_complex_components_on_edge(%struct.edge_def* %15, %union.tree_node* %lhs.1, %union.tree_node* %call27, %union.tree_node* %call28) #8, !dbg !4829
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !4830
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4830
  br label %if.end91, !dbg !4831

if.else29:                                        ; preds = %if.then16
  %call30 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call) #8, !dbg !4832
  %tobool31 = icmp eq i8 %call30, 0, !dbg !4832
  br i1 %tobool31, label %lor.lhs.false, label %if.then39, !dbg !4834

lor.lhs.false:                                    ; preds = %if.else29
  %call32 = tail call zeroext i8 @gimple_has_side_effects(%union.gimple_statement_d* %call) #6, !dbg !4835
  %tobool34 = icmp eq i8 %call32, 0, !dbg !4835
  br i1 %tobool34, label %lor.lhs.false35, label %if.then39, !dbg !4836

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %call36 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call) #8, !dbg !4837
  %cmp37 = icmp eq i32 %call36, 112, !dbg !4838
  br i1 %cmp37, label %if.then39, label %if.else42, !dbg !4839

if.then39:                                        ; preds = %lor.lhs.false, %if.else29, %lor.lhs.false35
  %call40 = tail call %union.tree_node* @build1_stat(i32 43, %union.tree_node* %0, %union.tree_node* %lhs.1) #6, !dbg !4840
  call void @llvm.dbg.value(metadata %union.tree_node* %call40, metadata !4760, metadata !DIExpression()), !dbg !4782
  %call41 = tail call %union.tree_node* @build1_stat(i32 44, %union.tree_node* %0, %union.tree_node* %lhs.1) #6, !dbg !4842
  call void @llvm.dbg.value(metadata %union.tree_node* %call41, metadata !4761, metadata !DIExpression()), !dbg !4782
  tail call fastcc void @update_complex_components(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call, %union.tree_node* %call40, %union.tree_node* %call41) #8, !dbg !4843
  br label %if.end91, !dbg !4844

if.else42:                                        ; preds = %lor.lhs.false35
  %call43 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call) #8, !dbg !4845
  %cmp44 = icmp eq i32 %call43, 123, !dbg !4848
  br i1 %cmp44, label %if.else49, label %if.then46, !dbg !4849

if.then46:                                        ; preds = %if.else42
  %call47 = tail call fastcc %union.tree_node* @extract_component(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %rhs.2, i8 zeroext 0, i8 zeroext 1) #8, !dbg !4850
  call void @llvm.dbg.value(metadata %union.tree_node* %call47, metadata !4760, metadata !DIExpression()), !dbg !4782
  %call48 = tail call fastcc %union.tree_node* @extract_component(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %rhs.2, i8 zeroext 1, i8 zeroext 1) #8, !dbg !4852
  call void @llvm.dbg.value(metadata %union.tree_node* %call48, metadata !4761, metadata !DIExpression()), !dbg !4782
  br label %if.end52, !dbg !4853

if.else49:                                        ; preds = %if.else42
  %call50 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call) #8, !dbg !4854
  call void @llvm.dbg.value(metadata %union.tree_node* %call50, metadata !4760, metadata !DIExpression()), !dbg !4782
  %call51 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %call) #8, !dbg !4856
  call void @llvm.dbg.value(metadata %union.tree_node* %call51, metadata !4761, metadata !DIExpression()), !dbg !4782
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then46
  %i.0 = phi %union.tree_node* [ %call48, %if.then46 ], [ %call51, %if.else49 ], !dbg !4857
  %r.0 = phi %union.tree_node* [ %call47, %if.then46 ], [ %call50, %if.else49 ], !dbg !4857
  call void @llvm.dbg.value(metadata %union.tree_node* %r.0, metadata !4760, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata %union.tree_node* %i.0, metadata !4761, metadata !DIExpression()), !dbg !4782
  tail call fastcc void @update_complex_assignment(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %r.0, %union.tree_node* %i.0) #8, !dbg !4858
  br label %if.end91

if.else55:                                        ; preds = %if.end14
  %tobool56 = icmp eq %union.tree_node* %rhs.2, null, !dbg !4859
  br i1 %tobool56, label %if.end91, label %land.lhs.true, !dbg !4860

land.lhs.true:                                    ; preds = %if.else55
  %16 = getelementptr inbounds %union.tree_node, %union.tree_node* %rhs.2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4861
  %bf.load58 = load i64, i64* %16, align 8, !dbg !4861
  %bf.cast602 = and i64 %bf.load58, 65535, !dbg !4862
  %cmp61 = icmp eq i64 %bf.cast602, 141, !dbg !4862
  br i1 %cmp61, label %land.lhs.true63, label %if.end91, !dbg !4863

land.lhs.true63:                                  ; preds = %land.lhs.true
  %bf.cast673 = and i64 %bf.load, 65536, !dbg !4864
  %tobool68 = icmp eq i64 %bf.cast673, 0, !dbg !4864
  br i1 %tobool68, label %if.then69, label %if.end91, !dbg !4865

if.then69:                                        ; preds = %land.lhs.true63
  %call70 = tail call fastcc %union.tree_node* @extract_component(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* nonnull %rhs.2, i8 zeroext 0, i8 zeroext 0) #8, !dbg !4866
  call void @llvm.dbg.value(metadata %union.tree_node* %call70, metadata !4760, metadata !DIExpression()), !dbg !4782
  %call71 = tail call fastcc %union.tree_node* @extract_component(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* nonnull %rhs.2, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4867
  call void @llvm.dbg.value(metadata %union.tree_node* %call71, metadata !4761, metadata !DIExpression()), !dbg !4782
  %call72 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %lhs.1) #6, !dbg !4868
  %call73 = tail call %union.tree_node* @build1_stat(i32 43, %union.tree_node* %0, %union.tree_node* %call72) #6, !dbg !4868
  call void @llvm.dbg.value(metadata %union.tree_node* %call73, metadata !4777, metadata !DIExpression()), !dbg !4869
  %call74 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call73, %union.tree_node* %call70) #6, !dbg !4870
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call74, metadata !4780, metadata !DIExpression()), !dbg !4869
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call74, i32 1) #6, !dbg !4871
  %call75 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !4872
  %cmp76 = icmp eq %union.gimple_statement_d* %call, %call75, !dbg !4874
  %call79 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %lhs.1) #6, !dbg !4875
  %call80 = tail call %union.tree_node* @build1_stat(i32 44, %union.tree_node* %0, %union.tree_node* %call79) #6, !dbg !4875
  call void @llvm.dbg.value(metadata %union.tree_node* %call80, metadata !4777, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata %union.tree_node* %call80, metadata !4777, metadata !DIExpression()), !dbg !4869
  br i1 %cmp76, label %if.then78, label %if.else81, !dbg !4876

if.then78:                                        ; preds = %if.then69
  tail call fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %call, %union.tree_node* %call80) #8, !dbg !4877
  tail call fastcc void @gimple_assign_set_rhs1(%union.gimple_statement_d* %call, %union.tree_node* %call71) #8, !dbg !4879
  br label %if.end89, !dbg !4880

if.else81:                                        ; preds = %if.then69
  %call84 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call80, %union.tree_node* %call71) #6, !dbg !4881
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call84, metadata !4780, metadata !DIExpression()), !dbg !4869
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call84, i32 1) #6, !dbg !4883
  %call85 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !4884
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call85, metadata !4764, metadata !DIExpression()), !dbg !4782
  %call86 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call85) #8, !dbg !4885
  %cmp87 = icmp eq i32 %call86, 9, !dbg !4885
  br i1 %cmp87, label %cond.end, label %cond.true, !dbg !4885

cond.true:                                        ; preds = %if.else81
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 851, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4885
  br label %cond.end, !dbg !4885

cond.end:                                         ; preds = %if.else81, %cond.true
  tail call fastcc void @gimple_return_set_retval(%union.gimple_statement_d* %call85, %union.tree_node* %lhs.1) #8, !dbg !4886
  br label %if.end89

if.end89:                                         ; preds = %cond.end, %if.then78
  %stmt.0 = phi %union.gimple_statement_d* [ %call, %if.then78 ], [ %call85, %cond.end ], !dbg !4782
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt.0, metadata !4764, metadata !DIExpression()), !dbg !4782
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %stmt.0) #8, !dbg !4887
  br label %if.end91, !dbg !4888

if.end91:                                         ; preds = %land.lhs.true63, %if.else55, %land.lhs.true, %if.end89, %found_fallthru, %if.end52, %if.then39
  ret void, !dbg !4889
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4890 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4892, metadata !DIExpression()), !dbg !4893
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !4894
  %cmp = icmp eq i32 %call, 6, !dbg !4895
  %conv1 = zext i1 %cmp to i8, !dbg !4894
  ret i8 %conv1, !dbg !4896
}

declare dso_local void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !4897 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !4901, metadata !DIExpression()), !dbg !4902
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #8, !dbg !4903
  %tobool = icmp eq i8 %call, 0, !dbg !4903
  br i1 %tobool, label %if.end, label %if.then, !dbg !4905

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !4906
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !4908
  br label %if.end, !dbg !4909

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !4910
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %fun) unnamed_addr #0 !dbg !4911 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !4917, metadata !DIExpression()), !dbg !4918
  %tobool = icmp eq %struct.function* %fun, null, !dbg !4919
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !4920

land.lhs.true:                                    ; preds = %entry
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !4921
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !4921
  %tobool1 = icmp eq %struct.gimple_df* %0, null, !dbg !4922
  br i1 %tobool1, label %land.end, label %land.rhs, !dbg !4923

land.rhs:                                         ; preds = %land.lhs.true
  %in_ssa_p = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %0, i64 0, i32 10, !dbg !4924
  %bf.load = load i8, i8* %in_ssa_p, align 8, !dbg !4924
  %bf.clear = and i8 %bf.load, 1, !dbg !4924
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry, %land.rhs
  %1 = phi i8 [ 0, %land.lhs.true ], [ 0, %entry ], [ %bf.clear, %land.rhs ]
  ret i8 %1, !dbg !4925
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_complex_addition(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %ai, %union.tree_node* %br, %union.tree_node* %bi, i32 %code, i32 %al, i32 %bl) unnamed_addr #5 !dbg !4926 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4930, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_type, metadata !4931, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !4932, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !4933, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata %union.tree_node* %br, metadata !4934, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata %union.tree_node* %bi, metadata !4935, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata i32 %code, metadata !4936, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata i32 %al, metadata !4937, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata i32 %bl, metadata !4938, metadata !DIExpression()), !dbg !4943
  %shl = shl i32 %al, 2, !dbg !4944
  %or = or i32 %shl, %bl, !dbg !4944
  switch i32 %or, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb1
    i32 9, label %sw.bb3
    i32 10, label %sw.bb9
    i32 13, label %sw.bb11
    i32 14, label %sw.bb13
    i32 7, label %sw.bb15
    i32 11, label %sw.bb20
    i32 15, label %general
  ], !dbg !4945

sw.bb:                                            ; preds = %entry
  %call = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %br) #6, !dbg !4946
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4939, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !4940, metadata !DIExpression()), !dbg !4943
  br label %sw.epilog, !dbg !4947

sw.bb1:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !4939, metadata !DIExpression()), !dbg !4943
  %cmp = icmp eq i32 %code, 64, !dbg !4948
  br i1 %cmp, label %if.then, label %sw.epilog, !dbg !4950

if.then:                                          ; preds = %sw.bb1
  %call2 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 64, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %bi) #6, !dbg !4951
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !4940, metadata !DIExpression()), !dbg !4943
  br label %sw.epilog, !dbg !4952

sw.bb3:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %code, 64, !dbg !4953
  br i1 %cmp4, label %if.then5, label %sw.epilog, !dbg !4955

if.then5:                                         ; preds = %sw.bb3
  %call6 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 64, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %br) #6, !dbg !4956
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !4939, metadata !DIExpression()), !dbg !4943
  br label %sw.epilog, !dbg !4957

sw.bb9:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !4939, metadata !DIExpression()), !dbg !4943
  %call10 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %bi) #6, !dbg !4958
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !4940, metadata !DIExpression()), !dbg !4943
  br label %sw.epilog, !dbg !4959

sw.bb11:                                          ; preds = %entry
  %call12 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %br) #6, !dbg !4960
  call void @llvm.dbg.value(metadata %union.tree_node* %call12, metadata !4939, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !4940, metadata !DIExpression()), !dbg !4943
  br label %sw.epilog, !dbg !4961

sw.bb13:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !4939, metadata !DIExpression()), !dbg !4943
  %call14 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %bi) #6, !dbg !4962
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !4940, metadata !DIExpression()), !dbg !4943
  br label %sw.epilog, !dbg !4963

sw.bb15:                                          ; preds = %entry
  %cmp16 = icmp eq i32 %code, 64, !dbg !4964
  br i1 %cmp16, label %general, label %if.end18, !dbg !4966

if.end18:                                         ; preds = %sw.bb15
  %call19 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %br) #6, !dbg !4967
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !4939, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata %union.tree_node* %bi, metadata !4940, metadata !DIExpression()), !dbg !4943
  br label %sw.epilog, !dbg !4968

sw.bb20:                                          ; preds = %entry
  %cmp21 = icmp eq i32 %code, 64, !dbg !4969
  br i1 %cmp21, label %general, label %if.end23, !dbg !4971

if.end23:                                         ; preds = %sw.bb20
  call void @llvm.dbg.value(metadata %union.tree_node* %br, metadata !4939, metadata !DIExpression()), !dbg !4943
  %call24 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %bi) #6, !dbg !4972
  call void @llvm.dbg.value(metadata %union.tree_node* %call24, metadata !4940, metadata !DIExpression()), !dbg !4943
  br label %sw.epilog, !dbg !4973

general:                                          ; preds = %entry, %sw.bb20, %sw.bb15
  call void @llvm.dbg.label(metadata !4941), !dbg !4974
  %call26 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %br) #6, !dbg !4975
  call void @llvm.dbg.value(metadata %union.tree_node* %call26, metadata !4939, metadata !DIExpression()), !dbg !4943
  %call27 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %bi) #6, !dbg !4976
  call void @llvm.dbg.value(metadata %union.tree_node* %call27, metadata !4940, metadata !DIExpression()), !dbg !4943
  br label %sw.epilog, !dbg !4977

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 931, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4978
  br label %sw.epilog, !dbg !4979

sw.epilog:                                        ; preds = %if.then5, %sw.bb3, %if.then, %sw.bb1, %sw.default, %general, %if.end23, %if.end18, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb
  %rr.1 = phi %union.tree_node* [ undef, %sw.default ], [ %call26, %general ], [ %br, %if.end23 ], [ %call19, %if.end18 ], [ %ar, %sw.bb13 ], [ %call12, %sw.bb11 ], [ %ar, %sw.bb9 ], [ %call, %sw.bb ], [ %ar, %sw.bb1 ], [ %ar, %if.then ], [ %call6, %if.then5 ], [ %br, %sw.bb3 ]
  %ri.1 = phi %union.tree_node* [ undef, %sw.default ], [ %call27, %general ], [ %call24, %if.end23 ], [ %bi, %if.end18 ], [ %call14, %sw.bb13 ], [ %ai, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %ai, %sw.bb ], [ %bi, %sw.bb1 ], [ %call2, %if.then ], [ %ai, %if.then5 ], [ %ai, %sw.bb3 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %ri.1, metadata !4940, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata %union.tree_node* %rr.1, metadata !4939, metadata !DIExpression()), !dbg !4943
  tail call fastcc void @update_complex_assignment(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %rr.1, %union.tree_node* %ri.1) #8, !dbg !4980
  ret void, !dbg !4981
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_complex_multiplication(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %ai, %union.tree_node* %br, %union.tree_node* %bi, i32 %al, i32 %bl) unnamed_addr #5 !dbg !4982 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4986, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_type, metadata !4987, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !4988, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !4989, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %br, metadata !4990, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %bi, metadata !4991, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata i32 %al, metadata !4992, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata i32 %bl, metadata !4993, metadata !DIExpression()), !dbg !5006
  %cmp = icmp slt i32 %al, %bl, !dbg !5007
  %spec.select = select i1 %cmp, i32 %al, i32 %bl, !dbg !5008
  %spec.select1 = select i1 %cmp, i32 %bl, i32 %al, !dbg !5008
  %spec.select2 = select i1 %cmp, %union.tree_node* %ai, %union.tree_node* %bi, !dbg !5008
  %spec.select3 = select i1 %cmp, %union.tree_node* %ar, %union.tree_node* %br, !dbg !5008
  %spec.select4 = select i1 %cmp, %union.tree_node* %bi, %union.tree_node* %ai, !dbg !5008
  %spec.select5 = select i1 %cmp, %union.tree_node* %br, %union.tree_node* %ar, !dbg !5008
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select5, metadata !4988, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select4, metadata !4989, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select3, metadata !4990, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select2, metadata !4991, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !4992, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4993, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !4994, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !4995, metadata !DIExpression()), !dbg !5006
  %shl = shl i32 %spec.select1, 2, !dbg !5009
  %or = or i32 %shl, %spec.select, !dbg !5009
  switch i32 %or, label %sw.default [
    i32 5, label %sw.bb
    i32 9, label %sw.bb1
    i32 10, label %sw.bb7
    i32 13, label %sw.bb10
    i32 14, label %sw.bb13
    i32 15, label %sw.bb17
  ], !dbg !5010

sw.bb:                                            ; preds = %entry
  %call = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %spec.select5, %union.tree_node* %spec.select3) #6, !dbg !5011
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4994, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select4, metadata !4995, metadata !DIExpression()), !dbg !5006
  br label %sw.epilog, !dbg !5012

sw.bb1:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select5, metadata !4994, metadata !DIExpression()), !dbg !5006
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %spec.select4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5013
  %bf.load = load i64, i64* %0, align 8, !dbg !5013
  %bf.cast7 = and i64 %bf.load, 65535, !dbg !5015
  %cmp2 = icmp eq i64 %bf.cast7, 24, !dbg !5015
  br i1 %cmp2, label %land.lhs.true, label %if.else, !dbg !5016

land.lhs.true:                                    ; preds = %sw.bb1
  %real_cst_ptr = getelementptr inbounds %union.tree_node, %union.tree_node* %spec.select4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5017
  %1 = bitcast i32* %real_cst_ptr to %struct.real_value**, !dbg !5017
  %2 = load %struct.real_value*, %struct.real_value** %1, align 8, !dbg !5017
  %call3 = tail call zeroext i8 @real_identical(%struct.real_value* %2, %struct.real_value* nonnull @dconst1) #6, !dbg !5017
  %tobool = icmp eq i8 %call3, 0, !dbg !5017
  br i1 %tobool, label %if.else, label %sw.epilog, !dbg !5018

if.else:                                          ; preds = %land.lhs.true, %sw.bb1
  %call5 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %spec.select4, %union.tree_node* %spec.select3) #6, !dbg !5019
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !4995, metadata !DIExpression()), !dbg !5006
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %call8 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %spec.select4, %union.tree_node* %spec.select2) #6, !dbg !5020
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !4994, metadata !DIExpression()), !dbg !5006
  %call9 = tail call %union.tree_node* @gimplify_build1(%struct.gimple_stmt_iterator* %gsi, i32 79, %union.tree_node* %inner_type, %union.tree_node* %call8) #6, !dbg !5021
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !4994, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select5, metadata !4995, metadata !DIExpression()), !dbg !5006
  br label %sw.epilog, !dbg !5022

sw.bb10:                                          ; preds = %entry
  %call11 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %spec.select5, %union.tree_node* %spec.select3) #6, !dbg !5023
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !4994, metadata !DIExpression()), !dbg !5006
  %call12 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %spec.select4, %union.tree_node* %spec.select3) #6, !dbg !5024
  call void @llvm.dbg.value(metadata %union.tree_node* %call12, metadata !4995, metadata !DIExpression()), !dbg !5006
  br label %sw.epilog, !dbg !5025

sw.bb13:                                          ; preds = %entry
  %call14 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %spec.select4, %union.tree_node* %spec.select2) #6, !dbg !5026
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !4994, metadata !DIExpression()), !dbg !5006
  %call15 = tail call %union.tree_node* @gimplify_build1(%struct.gimple_stmt_iterator* %gsi, i32 79, %union.tree_node* %inner_type, %union.tree_node* %call14) #6, !dbg !5027
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !4994, metadata !DIExpression()), !dbg !5006
  %call16 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %spec.select5, %union.tree_node* %spec.select2) #6, !dbg !5028
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !4995, metadata !DIExpression()), !dbg !5006
  br label %sw.epilog, !dbg !5029

sw.bb17:                                          ; preds = %entry
  %3 = load i32, i32* @flag_complex_method, align 4, !dbg !5030
  %cmp18 = icmp eq i32 %3, 2, !dbg !5031
  br i1 %cmp18, label %land.lhs.true20, label %if.else28, !dbg !5032

land.lhs.true20:                                  ; preds = %sw.bb17
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %inner_type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5033
  %bf.load22 = load i64, i64* %4, align 8, !dbg !5033
  %bf.cast246 = and i64 %bf.load22, 65535, !dbg !5033
  %cmp25 = icmp eq i64 %bf.cast246, 9, !dbg !5033
  br i1 %cmp25, label %if.then27, label %if.else28, !dbg !5034

if.then27:                                        ; preds = %land.lhs.true20
  tail call fastcc void @expand_complex_libcall(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %spec.select5, %union.tree_node* %spec.select4, %union.tree_node* %spec.select3, %union.tree_node* %spec.select2, i32 65) #8, !dbg !5035
  br label %cleanup.cont, !dbg !5037

if.else28:                                        ; preds = %land.lhs.true20, %sw.bb17
  %call29 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %spec.select5, %union.tree_node* %spec.select3) #6, !dbg !5038
  call void @llvm.dbg.value(metadata %union.tree_node* %call29, metadata !4999, metadata !DIExpression()), !dbg !5039
  %call30 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %spec.select4, %union.tree_node* %spec.select2) #6, !dbg !5040
  call void @llvm.dbg.value(metadata %union.tree_node* %call30, metadata !5003, metadata !DIExpression()), !dbg !5039
  %call31 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %spec.select5, %union.tree_node* %spec.select2) #6, !dbg !5041
  call void @llvm.dbg.value(metadata %union.tree_node* %call31, metadata !5004, metadata !DIExpression()), !dbg !5039
  %cmp32 = icmp eq %union.tree_node* %spec.select5, %spec.select3, !dbg !5042
  %cmp35 = icmp eq %union.tree_node* %spec.select4, %spec.select2, !dbg !5044
  %or.cond = and i1 %cmp32, %cmp35, !dbg !5045
  br i1 %or.cond, label %if.end40, label %if.else38, !dbg !5045

if.else38:                                        ; preds = %if.else28
  %call39 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %spec.select4, %union.tree_node* %spec.select3) #6, !dbg !5046
  call void @llvm.dbg.value(metadata %union.tree_node* %call39, metadata !5005, metadata !DIExpression()), !dbg !5039
  br label %if.end40

if.end40:                                         ; preds = %if.else28, %if.else38
  %t4.0 = phi %union.tree_node* [ %call39, %if.else38 ], [ %call31, %if.else28 ], !dbg !5047
  call void @llvm.dbg.value(metadata %union.tree_node* %t4.0, metadata !5005, metadata !DIExpression()), !dbg !5039
  %call41 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 64, %union.tree_node* %inner_type, %union.tree_node* %call29, %union.tree_node* %call30) #6, !dbg !5048
  call void @llvm.dbg.value(metadata %union.tree_node* %call41, metadata !4994, metadata !DIExpression()), !dbg !5006
  %call42 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 63, %union.tree_node* %inner_type, %union.tree_node* %call31, %union.tree_node* %t4.0) #6, !dbg !5049
  call void @llvm.dbg.value(metadata %union.tree_node* %call42, metadata !4995, metadata !DIExpression()), !dbg !5006
  br label %sw.epilog, !dbg !5050

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 1063, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5051
  br label %sw.epilog, !dbg !5052

sw.epilog:                                        ; preds = %land.lhs.true, %if.else, %sw.default, %if.end40, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb
  %ri.2 = phi %union.tree_node* [ %ai, %sw.default ], [ %call42, %if.end40 ], [ %call16, %sw.bb13 ], [ %call12, %sw.bb10 ], [ %spec.select5, %sw.bb7 ], [ %spec.select4, %sw.bb ], [ %call5, %if.else ], [ %spec.select3, %land.lhs.true ], !dbg !5006
  %rr.1 = phi %union.tree_node* [ %ar, %sw.default ], [ %call41, %if.end40 ], [ %call15, %sw.bb13 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb7 ], [ %call, %sw.bb ], [ %spec.select5, %if.else ], [ %spec.select5, %land.lhs.true ], !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %rr.1, metadata !4994, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata %union.tree_node* %ri.2, metadata !4995, metadata !DIExpression()), !dbg !5006
  tail call fastcc void @update_complex_assignment(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %rr.1, %union.tree_node* %ri.2) #8, !dbg !5053
  br label %cleanup.cont, !dbg !5054

cleanup.cont:                                     ; preds = %if.then27, %sw.epilog
  ret void, !dbg !5054
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_complex_division(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %ai, %union.tree_node* %br, %union.tree_node* %bi, i32 %code, i32 %al, i32 %bl) unnamed_addr #5 !dbg !5055 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5057, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_type, metadata !5058, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !5059, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !5060, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata %union.tree_node* %br, metadata !5061, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata %union.tree_node* %bi, metadata !5062, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata i32 %code, metadata !5063, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata i32 %al, metadata !5064, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata i32 %bl, metadata !5065, metadata !DIExpression()), !dbg !5068
  %shl = shl i32 %al, 2, !dbg !5069
  %or = or i32 %shl, %bl, !dbg !5069
  switch i32 %or, label %sw.default19 [
    i32 5, label %sw.bb
    i32 6, label %sw.bb1
    i32 9, label %sw.bb4
    i32 10, label %sw.bb6
    i32 13, label %sw.bb8
    i32 14, label %sw.bb11
    i32 7, label %sw.bb15
    i32 11, label %sw.bb15
    i32 15, label %sw.bb15
  ], !dbg !5070

sw.bb:                                            ; preds = %entry
  %call = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %br) #6, !dbg !5071
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5066, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !5067, metadata !DIExpression()), !dbg !5068
  br label %sw.epilog20, !dbg !5073

sw.bb1:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !5066, metadata !DIExpression()), !dbg !5068
  %call2 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %bi) #6, !dbg !5074
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !5067, metadata !DIExpression()), !dbg !5068
  %call3 = tail call %union.tree_node* @gimplify_build1(%struct.gimple_stmt_iterator* %gsi, i32 79, %union.tree_node* %inner_type, %union.tree_node* %call2) #6, !dbg !5075
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !5067, metadata !DIExpression()), !dbg !5068
  br label %sw.epilog20, !dbg !5076

sw.bb4:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !5066, metadata !DIExpression()), !dbg !5068
  %call5 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %br) #6, !dbg !5077
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !5067, metadata !DIExpression()), !dbg !5068
  br label %sw.epilog20, !dbg !5078

sw.bb6:                                           ; preds = %entry
  %call7 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %bi) #6, !dbg !5079
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !5066, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !5067, metadata !DIExpression()), !dbg !5068
  br label %sw.epilog20, !dbg !5080

sw.bb8:                                           ; preds = %entry
  %call9 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %br) #6, !dbg !5081
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !5066, metadata !DIExpression()), !dbg !5068
  %call10 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %br) #6, !dbg !5082
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !5067, metadata !DIExpression()), !dbg !5068
  br label %sw.epilog20, !dbg !5083

sw.bb11:                                          ; preds = %entry
  %call12 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %bi) #6, !dbg !5084
  call void @llvm.dbg.value(metadata %union.tree_node* %call12, metadata !5066, metadata !DIExpression()), !dbg !5068
  %call13 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %bi) #6, !dbg !5085
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !5067, metadata !DIExpression()), !dbg !5068
  %call14 = tail call %union.tree_node* @gimplify_build1(%struct.gimple_stmt_iterator* %gsi, i32 79, %union.tree_node* %inner_type, %union.tree_node* %call13) #6, !dbg !5086
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !5067, metadata !DIExpression()), !dbg !5068
  br label %sw.bb15, !dbg !5087

sw.bb15:                                          ; preds = %entry, %entry, %entry, %sw.bb11
  %0 = load i32, i32* @flag_complex_method, align 4, !dbg !5088
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb16
    i32 2, label %sw.bb17
    i32 1, label %sw.bb18
  ], !dbg !5089

sw.bb16:                                          ; preds = %sw.bb15
  tail call fastcc void @expand_complex_div_straight(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %ai, %union.tree_node* %br, %union.tree_node* %bi, i32 %code) #8, !dbg !5090
  br label %cleanup.cont, !dbg !5092

sw.bb17:                                          ; preds = %sw.bb15
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %inner_type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5093
  %bf.load = load i64, i64* %1, align 8, !dbg !5093
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5093
  %cmp = icmp eq i64 %bf.cast1, 9, !dbg !5093
  br i1 %cmp, label %if.then, label %sw.bb18, !dbg !5095

if.then:                                          ; preds = %sw.bb17
  tail call fastcc void @expand_complex_libcall(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %ar, %union.tree_node* %ai, %union.tree_node* %br, %union.tree_node* %bi, i32 %code) #8, !dbg !5096
  br label %cleanup.cont, !dbg !5098

sw.bb18:                                          ; preds = %sw.bb17, %sw.bb15
  tail call fastcc void @expand_complex_div_wide(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %ai, %union.tree_node* %br, %union.tree_node* %bi, i32 %code) #8, !dbg !5099
  br label %cleanup.cont, !dbg !5100

sw.default:                                       ; preds = %sw.bb15
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 1323, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5101
  br label %cleanup.cont, !dbg !5102

sw.default19:                                     ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 1328, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5103
  br label %sw.epilog20, !dbg !5104

sw.epilog20:                                      ; preds = %sw.default19, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb1, %sw.bb
  %rr.0 = phi %union.tree_node* [ undef, %sw.default19 ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %ar, %sw.bb4 ], [ %ai, %sw.bb1 ], [ %call, %sw.bb ]
  %ri.0 = phi %union.tree_node* [ undef, %sw.default19 ], [ %call10, %sw.bb8 ], [ %ar, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb1 ], [ %ai, %sw.bb ]
  call void @llvm.dbg.value(metadata %union.tree_node* %ri.0, metadata !5067, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata %union.tree_node* %rr.0, metadata !5066, metadata !DIExpression()), !dbg !5068
  tail call fastcc void @update_complex_assignment(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %rr.0, %union.tree_node* %ri.0) #8, !dbg !5105
  br label %cleanup.cont, !dbg !5106

cleanup.cont:                                     ; preds = %sw.epilog20, %sw.default, %sw.bb18, %if.then, %sw.bb16
  ret void, !dbg !5106
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_complex_negation(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %ai) unnamed_addr #5 !dbg !5107 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5111, metadata !DIExpression()), !dbg !5117
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_type, metadata !5112, metadata !DIExpression()), !dbg !5117
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !5113, metadata !DIExpression()), !dbg !5117
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !5114, metadata !DIExpression()), !dbg !5117
  %call = tail call %union.tree_node* @gimplify_build1(%struct.gimple_stmt_iterator* %gsi, i32 79, %union.tree_node* %inner_type, %union.tree_node* %ar) #6, !dbg !5118
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5115, metadata !DIExpression()), !dbg !5117
  %call1 = tail call %union.tree_node* @gimplify_build1(%struct.gimple_stmt_iterator* %gsi, i32 79, %union.tree_node* %inner_type, %union.tree_node* %ai) #6, !dbg !5119
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !5116, metadata !DIExpression()), !dbg !5117
  tail call fastcc void @update_complex_assignment(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call, %union.tree_node* %call1) #8, !dbg !5120
  ret void, !dbg !5121
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_complex_conjugate(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %ai) unnamed_addr #5 !dbg !5122 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5124, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_type, metadata !5125, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !5126, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !5127, metadata !DIExpression()), !dbg !5129
  %call = tail call %union.tree_node* @gimplify_build1(%struct.gimple_stmt_iterator* %gsi, i32 79, %union.tree_node* %inner_type, %union.tree_node* %ai) #6, !dbg !5130
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5128, metadata !DIExpression()), !dbg !5129
  tail call fastcc void @update_complex_assignment(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %ar, %union.tree_node* %call) #8, !dbg !5131
  ret void, !dbg !5132
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_complex_comparison(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %ar, %union.tree_node* %ai, %union.tree_node* %br, %union.tree_node* %bi, i32 %code) unnamed_addr #5 !dbg !5133 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5137, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !5138, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !5139, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.value(metadata %union.tree_node* %br, metadata !5140, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.value(metadata %union.tree_node* %bi, metadata !5141, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.value(metadata i32 %code, metadata !5142, metadata !DIExpression()), !dbg !5148
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !5149
  %call = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %0, %union.tree_node* %ar, %union.tree_node* %br) #6, !dbg !5150
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5143, metadata !DIExpression()), !dbg !5148
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !5151
  %call1 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %1, %union.tree_node* %ai, %union.tree_node* %bi) #6, !dbg !5152
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !5144, metadata !DIExpression()), !dbg !5148
  %cmp = icmp eq i32 %code, 101, !dbg !5153
  %cond = select i1 %cmp, i32 93, i32 94, !dbg !5154
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !5155
  %call2 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %cond, %union.tree_node* %2, %union.tree_node* %call, %union.tree_node* %call1) #6, !dbg !5156
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !5145, metadata !DIExpression()), !dbg !5148
  %call3 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !5157
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call3, metadata !5147, metadata !DIExpression()), !dbg !5148
  %call4 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call3) #8, !dbg !5158
  switch i32 %call4, label %sw.default [
    i32 9, label %sw.bb
    i32 6, label %sw.bb8
    i32 1, label %sw.bb14
  ], !dbg !5159

sw.bb:                                            ; preds = %entry
  %call5 = tail call fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %call3) #8, !dbg !5160
  %type6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5160
  %3 = load %union.tree_node*, %union.tree_node** %type6, align 8, !dbg !5160
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !5146, metadata !DIExpression()), !dbg !5148
  %call7 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %3, %union.tree_node* %call2) #6, !dbg !5162
  tail call fastcc void @gimple_return_set_retval(%union.gimple_statement_d* %call3, %union.tree_node* %call7) #8, !dbg !5163
  br label %sw.epilog, !dbg !5164

sw.bb8:                                           ; preds = %entry
  %call9 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call3) #8, !dbg !5165
  %type11 = getelementptr inbounds %union.tree_node, %union.tree_node* %call9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5165
  %4 = load %union.tree_node*, %union.tree_node** %type11, align 8, !dbg !5165
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !5146, metadata !DIExpression()), !dbg !5148
  %call12 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %4, %union.tree_node* %call2) #6, !dbg !5166
  tail call void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call12) #6, !dbg !5167
  %call13 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !5168
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call13, metadata !5147, metadata !DIExpression()), !dbg !5148
  br label %sw.epilog, !dbg !5169

sw.bb14:                                          ; preds = %entry
  tail call fastcc void @gimple_cond_set_code(%union.gimple_statement_d* %call3, i32 101) #8, !dbg !5170
  tail call fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %call3, %union.tree_node* %call2) #8, !dbg !5171
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !5172
  tail call fastcc void @gimple_cond_set_rhs(%union.gimple_statement_d* %call3, %union.tree_node* %5) #8, !dbg !5173
  br label %sw.epilog, !dbg !5174

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 1402, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5175
  br label %sw.epilog, !dbg !5176

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb8, %sw.bb
  %stmt.0 = phi %union.gimple_statement_d* [ %call3, %sw.default ], [ %call3, %sw.bb14 ], [ %call13, %sw.bb8 ], [ %call3, %sw.bb ], !dbg !5148
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt.0, metadata !5147, metadata !DIExpression()), !dbg !5148
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %stmt.0) #8, !dbg !5177
  ret void, !dbg !5178
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5179 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5181, metadata !DIExpression()), !dbg !5182
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !5183
  %cmp = icmp eq i32 %call, 8, !dbg !5184
  %conv1 = zext i1 %cmp to i8, !dbg !5183
  ret i8 %conv1, !dbg !5185
}

declare dso_local zeroext i8 @is_ctrl_altering_stmt(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !5186 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !5190, metadata !DIExpression()), !dbg !5192
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !5193
  store i32 0, i32* %index, align 8, !dbg !5194
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !5195
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !5196
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !5197
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !5197
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !5197
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !5198 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !5202, metadata !DIExpression()), !dbg !5203
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 2, !dbg !5204
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !5204
  ret %struct.basic_block_def* %0, !dbg !5205
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !5206 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !5211, metadata !DIExpression()), !dbg !5212
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !5213
  %tobool = icmp eq i8 %call, 0, !dbg !5213
  br i1 %tobool, label %if.then, label %if.else, !dbg !5215

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !5216
  br label %return, !dbg !5218

if.else:                                          ; preds = %entry
  br label %return, !dbg !5219

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !5221
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !5221
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !5221
  ret i8 %retval.0, !dbg !5222
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !5223 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !5228, metadata !DIExpression()), !dbg !5229
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !5230
  %0 = load i32, i32* %index, align 8, !dbg !5230
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !5230
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !5230
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !5230
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !5230
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5230

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !5230
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !5230
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !5230
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !5230
  br label %cond.end, !dbg !5230

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5230
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !5230
  %cmp = icmp ult i32 %0, %call2, !dbg !5230
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !5230

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5230
  br label %cond.end5, !dbg !5230

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !5231
  %inc = add i32 %5, 1, !dbg !5231
  store i32 %inc, i32* %index, align 8, !dbg !5231
  ret void, !dbg !5232
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local zeroext i8 @gimple_has_side_effects(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_complex_components(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %stmt, %union.tree_node* %r, %union.tree_node* %i) unnamed_addr #5 !dbg !5233 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5237, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5238, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.value(metadata %union.tree_node* %r, metadata !5239, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.value(metadata %union.tree_node* %i, metadata !5240, metadata !DIExpression()), !dbg !5243
  %call = tail call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %stmt) #6, !dbg !5244
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5241, metadata !DIExpression()), !dbg !5243
  %call1 = tail call fastcc %struct.gimple_seq_d* @set_component_ssa_name(%union.tree_node* %call, i8 zeroext 0, %union.tree_node* %r) #8, !dbg !5245
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call1, metadata !5242, metadata !DIExpression()), !dbg !5243
  %tobool = icmp eq %struct.gimple_seq_d* %call1, null, !dbg !5246
  br i1 %tobool, label %if.end, label %if.then, !dbg !5248

if.then:                                          ; preds = %entry
  tail call void @gsi_insert_seq_after(%struct.gimple_stmt_iterator* %gsi, %struct.gimple_seq_d* nonnull %call1, i32 2) #6, !dbg !5249
  br label %if.end, !dbg !5249

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call fastcc %struct.gimple_seq_d* @set_component_ssa_name(%union.tree_node* %call, i8 zeroext 1, %union.tree_node* %i) #8, !dbg !5250
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call2, metadata !5242, metadata !DIExpression()), !dbg !5243
  %tobool3 = icmp eq %struct.gimple_seq_d* %call2, null, !dbg !5251
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5253

if.then4:                                         ; preds = %if.end
  tail call void @gsi_insert_seq_after(%struct.gimple_stmt_iterator* %gsi, %struct.gimple_seq_d* nonnull %call2, i32 2) #6, !dbg !5254
  br label %if.end5, !dbg !5254

if.end5:                                          ; preds = %if.end, %if.then4
  ret void, !dbg !5255
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_complex_assignment(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %r, %union.tree_node* %i) unnamed_addr #5 !dbg !5256 {
entry:
  %orig_si = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5260, metadata !DIExpression()), !dbg !5264
  call void @llvm.dbg.value(metadata %union.tree_node* %r, metadata !5261, metadata !DIExpression()), !dbg !5264
  call void @llvm.dbg.value(metadata %union.tree_node* %i, metadata !5262, metadata !DIExpression()), !dbg !5264
  %0 = bitcast %struct.gimple_stmt_iterator* %orig_si to i8*, !dbg !5265
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !5265
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !5266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %1, i64 24, i1 false), !dbg !5266
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5267
  %call = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %2) #8, !dbg !5269
  %tobool = icmp eq i8 %call, 0, !dbg !5269
  br i1 %tobool, label %if.end, label %if.then, !dbg !5270

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !5271
  tail call fastcc void @update_complex_components(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call1, %union.tree_node* %r, %union.tree_node* %i) #8, !dbg !5272
  br label %if.end, !dbg !5272

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %orig_si, metadata !5263, metadata !DIExpression(DW_OP_deref)), !dbg !5264
  call void @gimple_assign_set_rhs_with_ops(%struct.gimple_stmt_iterator* nonnull %orig_si, i32 123, %union.tree_node* %r, %union.tree_node* %i) #6, !dbg !5273
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %orig_si, metadata !5263, metadata !DIExpression(DW_OP_deref)), !dbg !5264
  %call2 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %orig_si) #8, !dbg !5274
  call fastcc void @update_stmt(%union.gimple_statement_d* %call2) #8, !dbg !5275
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !5276
  ret void, !dbg !5276
}

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !5277 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5281, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !5282, metadata !DIExpression()), !dbg !5283
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #8, !dbg !5284
  %tobool = icmp eq %union.tree_node* %lhs, null, !dbg !5285
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5287

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5288
  %bf.load = load i64, i64* %0, align 8, !dbg !5288
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5289
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !5289
  br i1 %cmp, label %if.then, label %if.end, !dbg !5290

if.then:                                          ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5291
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !5291
  store %union.gimple_statement_d* %gs, %union.gimple_statement_d** %1, align 8, !dbg !5292
  br label %if.end, !dbg !5291

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !5293
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_assign_set_rhs1(%union.gimple_statement_d* %gs, %union.tree_node* %rhs) unnamed_addr #0 !dbg !5294 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5296, metadata !DIExpression()), !dbg !5298
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !5297, metadata !DIExpression()), !dbg !5298
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 1, %union.tree_node* %rhs) #8, !dbg !5299
  ret void, !dbg !5300
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_return_set_retval(%union.gimple_statement_d* %gs, %union.tree_node* %retval) unnamed_addr #0 !dbg !5301 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5303, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.value(metadata %union.tree_node* %retval, metadata !5304, metadata !DIExpression()), !dbg !5305
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %retval) #8, !dbg !5306
  ret void, !dbg !5307
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !5308 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !5313
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !5313
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5313

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !5313
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !5313
  br label %cond.end, !dbg !5313

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5313
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !5313
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !5314
  %conv3 = zext i1 %cmp to i8, !dbg !5315
  ret i8 %conv3, !dbg !5316
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !5317 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !5322
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !5322
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5322

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !5322
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !5322
  br label %cond.end, !dbg !5322

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5322
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !5322
  ret %struct.edge_def* %call2, !dbg !5323
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !5324 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !5329
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !5329

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5329
  br label %cond.end, !dbg !5329

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !5330
  ret %struct.VEC_edge_gc* %0, !dbg !5331
}

declare dso_local void @gsi_insert_seq_after(%struct.gimple_stmt_iterator*, %struct.gimple_seq_d*, i32) local_unnamed_addr #2

declare dso_local void @gimple_assign_set_rhs_with_ops(%struct.gimple_stmt_iterator*, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !5332 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5336, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.value(metadata i32 %i, metadata !5337, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !5338, metadata !DIExpression()), !dbg !5339
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !5340
  %tobool = icmp eq i8 %call, 0, !dbg !5340
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !5340

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !5340
  %cmp = icmp ugt i32 %call1, %i, !dbg !5340
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !5340

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5340
  br label %cond.end, !dbg !5340

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !5341
  %idxprom = zext i32 %i to i64, !dbg !5341
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call3, i64 %idxprom, !dbg !5341
  store %union.tree_node* %op, %union.tree_node** %arrayidx, align 8, !dbg !5342
  ret void, !dbg !5343
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator*, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @gimplify_build1(%struct.gimple_stmt_iterator*, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_complex_libcall(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %ar, %union.tree_node* %ai, %union.tree_node* %br, %union.tree_node* %bi, i32 %code) unnamed_addr #5 !dbg !5344 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5346, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !5347, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !5348, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.value(metadata %union.tree_node* %br, metadata !5349, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.value(metadata %union.tree_node* %bi, metadata !5350, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.value(metadata i32 %code, metadata !5351, metadata !DIExpression()), !dbg !5359
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !5360
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !5357, metadata !DIExpression()), !dbg !5359
  %call1 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call) #8, !dbg !5361
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !5356, metadata !DIExpression()), !dbg !5359
  %type2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5362
  %0 = load %union.tree_node*, %union.tree_node** %type2, align 8, !dbg !5362
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !5355, metadata !DIExpression()), !dbg !5359
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5363
  %bf.load = load i64, i64* %1, align 8, !dbg !5363
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5363
  %cmp = icmp eq i64 %bf.cast1, 14, !dbg !5363
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5363

cond.true:                                        ; preds = %entry
  %call3 = tail call i32 @vector_type_mode(%union.tree_node* %0) #6, !dbg !5363
  br label %cond.end, !dbg !5363

cond.false:                                       ; preds = %entry
  %type4 = bitcast %union.tree_node* %0 to %struct.tree_type*, !dbg !5363
  %mode5 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type4, i64 0, i32 6, !dbg !5363
  %bf.load6 = load i32, i32* %mode5, align 4, !dbg !5363
  %bf.lshr = lshr i32 %bf.load6, 16, !dbg !5363
  %bf.clear7 = and i32 %bf.lshr, 255, !dbg !5363
  br label %cond.end, !dbg !5363

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call3, %cond.true ], [ %bf.clear7, %cond.false ], !dbg !5363
  call void @llvm.dbg.value(metadata i32 %cond, metadata !5352, metadata !DIExpression()), !dbg !5359
  %idxprom = zext i32 %cond to i64, !dbg !5364
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !5364
  %2 = load i8, i8* %arrayidx, align 1, !dbg !5364
  %cmp8 = icmp eq i8 %2, 11, !dbg !5364
  br i1 %cmp8, label %cond.end12, label %cond.true10, !dbg !5364

cond.true10:                                      ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 954, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5364
  br label %cond.end12, !dbg !5364

cond.end12:                                       ; preds = %cond.end, %cond.true10
  switch i32 %code, label %if.else21 [
    i32 65, label %if.then
    i32 75, label %if.then18
  ], !dbg !5365

if.then:                                          ; preds = %cond.end12
  %sub = add i32 %cond, 662, !dbg !5366
  call void @llvm.dbg.value(metadata i32 %sub, metadata !5353, metadata !DIExpression()), !dbg !5359
  br label %if.end22, !dbg !5368

if.then18:                                        ; preds = %cond.end12
  %sub20 = add i32 %cond, 666, !dbg !5369
  call void @llvm.dbg.value(metadata i32 %sub20, metadata !5353, metadata !DIExpression()), !dbg !5359
  br label %if.end22, !dbg !5371

if.else21:                                        ; preds = %cond.end12
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 963, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5372
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.else21, %if.then
  %bcode.1 = phi i32 [ %sub, %if.then ], [ %sub20, %if.then18 ], [ undef, %if.else21 ], !dbg !5373
  call void @llvm.dbg.value(metadata i32 %bcode.1, metadata !5353, metadata !DIExpression()), !dbg !5359
  %idxprom23 = zext i32 %bcode.1 to i64, !dbg !5374
  %arrayidx24 = getelementptr inbounds [721 x %union.tree_node*], [721 x %union.tree_node*]* @built_in_decls, i64 0, i64 %idxprom23, !dbg !5374
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx24, align 8, !dbg !5374
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !5354, metadata !DIExpression()), !dbg !5359
  %call25 = tail call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %3, i32 4, %union.tree_node* %ar, %union.tree_node* %ai, %union.tree_node* %br, %union.tree_node* %bi) #6, !dbg !5375
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call25, metadata !5358, metadata !DIExpression()), !dbg !5359
  tail call fastcc void @gimple_call_set_lhs(%union.gimple_statement_d* %call25, %union.tree_node* %call1) #8, !dbg !5376
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %call25) #8, !dbg !5377
  tail call void @gsi_replace(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call25, i8 zeroext 0) #6, !dbg !5378
  %call26 = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(%union.gimple_statement_d* %call, %union.gimple_statement_d* %call25) #6, !dbg !5379
  %tobool = icmp eq i8 %call26, 0, !dbg !5379
  br i1 %tobool, label %if.end30, label %if.then27, !dbg !5381

if.then27:                                        ; preds = %if.end22
  %call28 = tail call fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !5382
  %call29 = tail call zeroext i8 @gimple_purge_dead_eh_edges(%struct.basic_block_def* %call28) #6, !dbg !5383
  br label %if.end30, !dbg !5383

if.end30:                                         ; preds = %if.end22, %if.then27
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5384
  %call31 = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %4) #8, !dbg !5386
  %tobool32 = icmp eq i8 %call31, 0, !dbg !5386
  br i1 %tobool32, label %if.end38, label %if.then33, !dbg !5387

if.then33:                                        ; preds = %if.end30
  %type35 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5388
  %5 = load %union.tree_node*, %union.tree_node** %type35, align 8, !dbg !5388
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !5355, metadata !DIExpression()), !dbg !5359
  %call36 = tail call %union.tree_node* @build1_stat(i32 43, %union.tree_node* %5, %union.tree_node* %call1) #6, !dbg !5390
  %call37 = tail call %union.tree_node* @build1_stat(i32 44, %union.tree_node* %5, %union.tree_node* %call1) #6, !dbg !5391
  tail call fastcc void @update_complex_components(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call25, %union.tree_node* %call36, %union.tree_node* %call37) #8, !dbg !5392
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5393
  %6 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !5393
  store %union.gimple_statement_d* %call25, %union.gimple_statement_d** %6, align 8, !dbg !5394
  br label %if.end38, !dbg !5395

if.end38:                                         ; preds = %if.end30, %if.then33
  ret void, !dbg !5396
}

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_call(%union.tree_node*, i32, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !5397 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5399, metadata !DIExpression()), !dbg !5401
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !5400, metadata !DIExpression()), !dbg !5401
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #8, !dbg !5402
  %tobool = icmp eq %union.tree_node* %lhs, null, !dbg !5403
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5405

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5406
  %bf.load = load i64, i64* %0, align 8, !dbg !5406
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5407
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !5407
  br i1 %cmp, label %if.then, label %if.end, !dbg !5408

if.then:                                          ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5409
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !5409
  store %union.gimple_statement_d* %gs, %union.gimple_statement_d** %1, align 8, !dbg !5410
  br label %if.end, !dbg !5409

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !5411
}

declare dso_local void @gsi_replace(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local zeroext i8 @maybe_clean_or_replace_eh_stmt(%union.gimple_statement_d*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local zeroext i8 @gimple_purge_dead_eh_edges(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_complex_div_straight(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %ai, %union.tree_node* %br, %union.tree_node* %bi, i32 %code) unnamed_addr #5 !dbg !5412 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5416, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_type, metadata !5417, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !5418, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !5419, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.value(metadata %union.tree_node* %br, metadata !5420, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.value(metadata %union.tree_node* %bi, metadata !5421, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.value(metadata i32 %code, metadata !5422, metadata !DIExpression()), !dbg !5429
  %call = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %br, %union.tree_node* %br) #6, !dbg !5430
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5426, metadata !DIExpression()), !dbg !5429
  %call1 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %bi, %union.tree_node* %bi) #6, !dbg !5431
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !5427, metadata !DIExpression()), !dbg !5429
  %call2 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 63, %union.tree_node* %inner_type, %union.tree_node* %call, %union.tree_node* %call1) #6, !dbg !5432
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !5425, metadata !DIExpression()), !dbg !5429
  %call3 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %br) #6, !dbg !5433
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !5426, metadata !DIExpression()), !dbg !5429
  %call4 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %bi) #6, !dbg !5434
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !5427, metadata !DIExpression()), !dbg !5429
  %call5 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 63, %union.tree_node* %inner_type, %union.tree_node* %call3, %union.tree_node* %call4) #6, !dbg !5435
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !5428, metadata !DIExpression()), !dbg !5429
  %call6 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %call5, %union.tree_node* %call2) #6, !dbg !5436
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !5423, metadata !DIExpression()), !dbg !5429
  %call7 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %br) #6, !dbg !5437
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !5426, metadata !DIExpression()), !dbg !5429
  %call8 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %bi) #6, !dbg !5438
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !5427, metadata !DIExpression()), !dbg !5429
  %call9 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 64, %union.tree_node* %inner_type, %union.tree_node* %call7, %union.tree_node* %call8) #6, !dbg !5439
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !5428, metadata !DIExpression()), !dbg !5429
  %call10 = tail call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %call9, %union.tree_node* %call2) #6, !dbg !5440
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !5424, metadata !DIExpression()), !dbg !5429
  tail call fastcc void @update_complex_assignment(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call6, %union.tree_node* %call10) #8, !dbg !5441
  ret void, !dbg !5442
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_complex_div_wide(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %ai, %union.tree_node* %br, %union.tree_node* %bi, i32 %code) unnamed_addr #5 !dbg !5443 {
entry:
  %tmp35 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp60 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp80 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5445, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* %inner_type, metadata !5446, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* %ar, metadata !5447, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* %ai, metadata !5448, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* %br, metadata !5449, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* %bi, metadata !5450, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata i32 %code, metadata !5451, metadata !DIExpression()), !dbg !5472
  %call = tail call %union.tree_node* @gimplify_build1(%struct.gimple_stmt_iterator* %gsi, i32 82, %union.tree_node* %inner_type, %union.tree_node* %br) #6, !dbg !5473
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5456, metadata !DIExpression()), !dbg !5472
  %call1 = tail call %union.tree_node* @gimplify_build1(%struct.gimple_stmt_iterator* %gsi, i32 82, %union.tree_node* %inner_type, %union.tree_node* %bi) #6, !dbg !5474
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !5457, metadata !DIExpression()), !dbg !5472
  %call2 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !5475
  %call3 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %call2) #8, !dbg !5475
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !5475
  %call4 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %call3, i32 97, %union.tree_node* %0, %union.tree_node* %call, %union.tree_node* %call1) #6, !dbg !5475
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !5460, metadata !DIExpression()), !dbg !5472
  %call5 = tail call %union.tree_node* @tree_strip_nop_conversions(%union.tree_node* %call4) #6, !dbg !5476
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !5460, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !5464, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !5463, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !5462, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !5461, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5459, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5458, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5453, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5452, metadata !DIExpression()), !dbg !5472
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5477
  %bf.load = load i64, i64* %1, align 8, !dbg !5477
  %bf.cast3 = and i64 %bf.load, 65535, !dbg !5478
  %cmp = icmp eq i64 %bf.cast3, 23, !dbg !5478
  br i1 %cmp, label %if.end28, label %if.then, !dbg !5479

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !5480
  %call7 = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %2, i8* null) #6, !dbg !5481
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !5471, metadata !DIExpression()), !dbg !5482
  %call8 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call7, %union.tree_node* %call5) #6, !dbg !5483
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call8, metadata !5469, metadata !DIExpression()), !dbg !5482
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5484
  %call9 = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %3) #8, !dbg !5486
  %tobool = icmp eq i8 %call9, 0, !dbg !5486
  br i1 %tobool, label %if.end, label %if.then10, !dbg !5487

if.then10:                                        ; preds = %if.then
  %call11 = tail call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call7, %union.gimple_statement_d* %call8) #8, !dbg !5488
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !5471, metadata !DIExpression()), !dbg !5482
  tail call fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %call8, %union.tree_node* %call11) #8, !dbg !5490
  br label %if.end, !dbg !5491

if.end:                                           ; preds = %if.then, %if.then10
  %tmp.0 = phi %union.tree_node* [ %call11, %if.then10 ], [ %call7, %if.then ], !dbg !5482
  call void @llvm.dbg.value(metadata %union.tree_node* %tmp.0, metadata !5471, metadata !DIExpression()), !dbg !5482
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call8, i32 1) #6, !dbg !5492
  %call12 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %call8) #8, !dbg !5493
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !5493
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !5493
  %call13 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %call12, i32 101, %union.tree_node* %4, %union.tree_node* %tmp.0, %union.tree_node* %5) #6, !dbg !5493
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !5470, metadata !DIExpression()), !dbg !5482
  %call14 = tail call %union.gimple_statement_d* @gimple_build_cond_from_tree(%union.tree_node* %call13, %union.tree_node* null, %union.tree_node* null) #6, !dbg !5494
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call14, metadata !5469, metadata !DIExpression()), !dbg !5482
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call14, i32 1) #6, !dbg !5495
  %call15 = tail call fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !5496
  %6 = bitcast %union.gimple_statement_d* %call14 to i8*, !dbg !5497
  %call16 = tail call %struct.edge_def* @split_block(%struct.basic_block_def* %call15, i8* %6) #6, !dbg !5498
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !5466, metadata !DIExpression()), !dbg !5482
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 0, !dbg !5499
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !5499
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %7, metadata !5461, metadata !DIExpression()), !dbg !5472
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 1, !dbg !5500
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !5500
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %8, metadata !5464, metadata !DIExpression()), !dbg !5472
  %call17 = tail call %struct.basic_block_def* @create_empty_bb(%struct.basic_block_def* %7) #6, !dbg !5501
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call17, metadata !5462, metadata !DIExpression()), !dbg !5472
  %call18 = tail call %struct.basic_block_def* @create_empty_bb(%struct.basic_block_def* %call17) #6, !dbg !5502
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call18, metadata !5463, metadata !DIExpression()), !dbg !5472
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 7, !dbg !5503
  store i32 1024, i32* %flags, align 8, !dbg !5504
  tail call void @redirect_edge_succ(%struct.edge_def* %call16, %struct.basic_block_def* %call17) #6, !dbg !5505
  %call19 = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %7, %struct.basic_block_def* %call18, i32 2048) #6, !dbg !5506
  %call20 = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %call17, %struct.basic_block_def* %8, i32 1) #6, !dbg !5507
  %call21 = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %call18, %struct.basic_block_def* %8, i32 1) #6, !dbg !5508
  %call22 = tail call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !5509
  %tobool23 = icmp eq i8 %call22, 0, !dbg !5509
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !5511

if.then24:                                        ; preds = %if.end
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call17, %struct.basic_block_def* %7) #6, !dbg !5512
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call18, %struct.basic_block_def* %7) #6, !dbg !5514
  br label %if.end25, !dbg !5515

if.end25:                                         ; preds = %if.end, %if.then24
  %call26 = tail call %union.tree_node* @make_rename_temp(%union.tree_node* %inner_type, i8* null) #6, !dbg !5516
  call void @llvm.dbg.value(metadata %union.tree_node* %call26, metadata !5452, metadata !DIExpression()), !dbg !5472
  %call27 = tail call %union.tree_node* @make_rename_temp(%union.tree_node* %inner_type, i8* null) #6, !dbg !5517
  call void @llvm.dbg.value(metadata %union.tree_node* %call27, metadata !5453, metadata !DIExpression()), !dbg !5472
  br label %if.end28, !dbg !5518

if.end28:                                         ; preds = %entry, %if.end25
  %ri.0 = phi %union.tree_node* [ %call27, %if.end25 ], [ null, %entry ], !dbg !5472
  %rr.0 = phi %union.tree_node* [ %call26, %if.end25 ], [ null, %entry ], !dbg !5472
  %bb_true.0 = phi %struct.basic_block_def* [ %call17, %if.end25 ], [ null, %entry ], !dbg !5472
  %bb_false.0 = phi %struct.basic_block_def* [ %call18, %if.end25 ], [ null, %entry ], !dbg !5472
  %bb_join.0 = phi %struct.basic_block_def* [ %8, %if.end25 ], [ null, %entry ], !dbg !5472
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb_join.0, metadata !5464, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb_false.0, metadata !5463, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb_true.0, metadata !5462, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* %rr.0, metadata !5452, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* %ri.0, metadata !5453, metadata !DIExpression()), !dbg !5472
  %cond = icmp eq %struct.basic_block_def* %bb_true.0, null, !dbg !5519
  br i1 %cond, label %lor.lhs.false, label %if.then34, !dbg !5519

lor.lhs.false:                                    ; preds = %if.end28
  %call30 = tail call i32 @integer_nonzerop(%union.tree_node* %call5) #6, !dbg !5521
  %tobool31 = icmp eq i32 %call30, 0, !dbg !5521
  br i1 %tobool31, label %if.end52, label %if.then32, !dbg !5522

if.then32:                                        ; preds = %lor.lhs.false
  br i1 true, label %if.end37, label %if.then32.if.then34_crit_edge, !dbg !5523

if.then32.if.then34_crit_edge:                    ; preds = %if.then32
  br label %if.then34, !dbg !5523

if.then34:                                        ; preds = %if.then32.if.then34_crit_edge, %if.end28
  %9 = bitcast %struct.gimple_stmt_iterator* %tmp35 to i8*, !dbg !5525
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #7, !dbg !5525
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp35, %struct.basic_block_def* %bb_true.0) #8, !dbg !5525
  %10 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !5525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !5525
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #7, !dbg !5525
  %call36 = call %union.gimple_statement_d* @gimple_build_nop() #6, !dbg !5528
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call36, i32 0) #6, !dbg !5529
  br label %if.end37, !dbg !5530

if.end37:                                         ; preds = %if.then32, %if.then34
  %call38 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %br, %union.tree_node* %bi) #6, !dbg !5531
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !5454, metadata !DIExpression()), !dbg !5472
  %call39 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %br, %union.tree_node* %call38) #6, !dbg !5532
  call void @llvm.dbg.value(metadata %union.tree_node* %call39, metadata !5456, metadata !DIExpression()), !dbg !5472
  %call40 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 63, %union.tree_node* %inner_type, %union.tree_node* %call39, %union.tree_node* %bi) #6, !dbg !5533
  call void @llvm.dbg.value(metadata %union.tree_node* %call40, metadata !5455, metadata !DIExpression()), !dbg !5472
  %call41 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %call38) #6, !dbg !5534
  call void @llvm.dbg.value(metadata %union.tree_node* %call41, metadata !5456, metadata !DIExpression()), !dbg !5472
  %call42 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 63, %union.tree_node* %inner_type, %union.tree_node* %call41, %union.tree_node* %ai) #6, !dbg !5535
  call void @llvm.dbg.value(metadata %union.tree_node* %call42, metadata !5458, metadata !DIExpression()), !dbg !5472
  %call43 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %call38) #6, !dbg !5536
  call void @llvm.dbg.value(metadata %union.tree_node* %call43, metadata !5456, metadata !DIExpression()), !dbg !5472
  %call44 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 64, %union.tree_node* %inner_type, %union.tree_node* %call43, %union.tree_node* %ar) #6, !dbg !5537
  call void @llvm.dbg.value(metadata %union.tree_node* %call44, metadata !5459, metadata !DIExpression()), !dbg !5472
  %call45 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %call42, %union.tree_node* %call40) #6, !dbg !5538
  call void @llvm.dbg.value(metadata %union.tree_node* %call45, metadata !5458, metadata !DIExpression()), !dbg !5472
  %call46 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %call44, %union.tree_node* %call40) #6, !dbg !5539
  call void @llvm.dbg.value(metadata %union.tree_node* %call46, metadata !5459, metadata !DIExpression()), !dbg !5472
  br i1 %cond, label %if.end52, label %if.then48, !dbg !5540

if.then48:                                        ; preds = %if.end37
  %call49 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %rr.0, %union.tree_node* %call45) #6, !dbg !5541
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call49, metadata !5465, metadata !DIExpression()), !dbg !5472
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call49, i32 1) #6, !dbg !5544
  %call50 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %ri.0, %union.tree_node* %call46) #6, !dbg !5545
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call50, metadata !5465, metadata !DIExpression()), !dbg !5472
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call50, i32 1) #6, !dbg !5546
  call void @gsi_remove(%struct.gimple_stmt_iterator* %gsi, i8 zeroext 1) #6, !dbg !5547
  br label %if.end52, !dbg !5548

if.end52:                                         ; preds = %lor.lhs.false, %if.end37, %if.then48
  %ti.0 = phi %union.tree_node* [ null, %lor.lhs.false ], [ %call46, %if.then48 ], [ %call46, %if.end37 ], !dbg !5472
  %tr.0 = phi %union.tree_node* [ null, %lor.lhs.false ], [ %call45, %if.then48 ], [ %call45, %if.end37 ], !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* %tr.0, metadata !5458, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* %ti.0, metadata !5459, metadata !DIExpression()), !dbg !5472
  %cond2 = icmp eq %struct.basic_block_def* %bb_false.0, null, !dbg !5549
  br i1 %cond2, label %lor.lhs.false54, label %if.then59, !dbg !5549

lor.lhs.false54:                                  ; preds = %if.end52
  %call55 = call i32 @integer_zerop(%union.tree_node* %call5) #6, !dbg !5551
  %tobool56 = icmp eq i32 %call55, 0, !dbg !5551
  br i1 %tobool56, label %if.end77, label %if.then57, !dbg !5552

if.then57:                                        ; preds = %lor.lhs.false54
  br i1 true, label %if.end62, label %if.then57.if.then59_crit_edge, !dbg !5553

if.then57.if.then59_crit_edge:                    ; preds = %if.then57
  br label %if.then59, !dbg !5553

if.then59:                                        ; preds = %if.then57.if.then59_crit_edge, %if.end52
  %11 = bitcast %struct.gimple_stmt_iterator* %tmp60 to i8*, !dbg !5555
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #7, !dbg !5555
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp60, %struct.basic_block_def* %bb_false.0) #8, !dbg !5555
  %12 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !5555
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* nonnull align 8 %11, i64 24, i1 false), !dbg !5555
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #7, !dbg !5555
  %call61 = call %union.gimple_statement_d* @gimple_build_nop() #6, !dbg !5558
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call61, i32 0) #6, !dbg !5559
  br label %if.end62, !dbg !5560

if.end62:                                         ; preds = %if.then57, %if.then59
  %call63 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %bi, %union.tree_node* %br) #6, !dbg !5561
  call void @llvm.dbg.value(metadata %union.tree_node* %call63, metadata !5454, metadata !DIExpression()), !dbg !5472
  %call64 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %bi, %union.tree_node* %call63) #6, !dbg !5562
  call void @llvm.dbg.value(metadata %union.tree_node* %call64, metadata !5456, metadata !DIExpression()), !dbg !5472
  %call65 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 63, %union.tree_node* %inner_type, %union.tree_node* %call64, %union.tree_node* %br) #6, !dbg !5563
  call void @llvm.dbg.value(metadata %union.tree_node* %call65, metadata !5455, metadata !DIExpression()), !dbg !5472
  %call66 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %call63) #6, !dbg !5564
  call void @llvm.dbg.value(metadata %union.tree_node* %call66, metadata !5456, metadata !DIExpression()), !dbg !5472
  %call67 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 63, %union.tree_node* %inner_type, %union.tree_node* %call66, %union.tree_node* %ar) #6, !dbg !5565
  call void @llvm.dbg.value(metadata %union.tree_node* %call67, metadata !5458, metadata !DIExpression()), !dbg !5472
  %call68 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 65, %union.tree_node* %inner_type, %union.tree_node* %ar, %union.tree_node* %call63) #6, !dbg !5566
  call void @llvm.dbg.value(metadata %union.tree_node* %call68, metadata !5456, metadata !DIExpression()), !dbg !5472
  %call69 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 64, %union.tree_node* %inner_type, %union.tree_node* %ai, %union.tree_node* %call68) #6, !dbg !5567
  call void @llvm.dbg.value(metadata %union.tree_node* %call69, metadata !5459, metadata !DIExpression()), !dbg !5472
  %call70 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %call67, %union.tree_node* %call65) #6, !dbg !5568
  call void @llvm.dbg.value(metadata %union.tree_node* %call70, metadata !5458, metadata !DIExpression()), !dbg !5472
  %call71 = call %union.tree_node* @gimplify_build2(%struct.gimple_stmt_iterator* %gsi, i32 %code, %union.tree_node* %inner_type, %union.tree_node* %call69, %union.tree_node* %call65) #6, !dbg !5569
  call void @llvm.dbg.value(metadata %union.tree_node* %call71, metadata !5459, metadata !DIExpression()), !dbg !5472
  br i1 %cond2, label %if.end77, label %if.then73, !dbg !5570

if.then73:                                        ; preds = %if.end62
  %call74 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %rr.0, %union.tree_node* %call70) #6, !dbg !5571
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call74, metadata !5465, metadata !DIExpression()), !dbg !5472
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call74, i32 1) #6, !dbg !5574
  %call75 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %ri.0, %union.tree_node* %call71) #6, !dbg !5575
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call75, metadata !5465, metadata !DIExpression()), !dbg !5472
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call75, i32 1) #6, !dbg !5576
  call void @gsi_remove(%struct.gimple_stmt_iterator* %gsi, i8 zeroext 1) #6, !dbg !5577
  br label %if.end77, !dbg !5578

if.end77:                                         ; preds = %lor.lhs.false54, %if.end62, %if.then73
  %ti.1 = phi %union.tree_node* [ %ti.0, %lor.lhs.false54 ], [ %call71, %if.then73 ], [ %call71, %if.end62 ], !dbg !5472
  %tr.1 = phi %union.tree_node* [ %tr.0, %lor.lhs.false54 ], [ %call70, %if.then73 ], [ %call70, %if.end62 ], !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* %tr.1, metadata !5458, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* %ti.1, metadata !5459, metadata !DIExpression()), !dbg !5472
  %tobool78 = icmp eq %struct.basic_block_def* %bb_join.0, null, !dbg !5579
  br i1 %tobool78, label %if.end81, label %if.then79, !dbg !5581

if.then79:                                        ; preds = %if.end77
  %13 = bitcast %struct.gimple_stmt_iterator* %tmp80 to i8*, !dbg !5582
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #7, !dbg !5582
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp80, %struct.basic_block_def* nonnull %bb_join.0) #8, !dbg !5582
  %14 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !5582
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* nonnull align 8 %13, i64 24, i1 false), !dbg !5582
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #7, !dbg !5582
  br label %if.end81, !dbg !5583

if.end81:                                         ; preds = %if.end77, %if.then79
  %ri.1 = phi %union.tree_node* [ %ri.0, %if.then79 ], [ %ti.1, %if.end77 ], !dbg !5472
  %rr.1 = phi %union.tree_node* [ %rr.0, %if.then79 ], [ %tr.1, %if.end77 ], !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* %rr.1, metadata !5452, metadata !DIExpression()), !dbg !5472
  call void @llvm.dbg.value(metadata %union.tree_node* %ri.1, metadata !5453, metadata !DIExpression()), !dbg !5472
  call fastcc void @update_complex_assignment(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %rr.1, %union.tree_node* %ri.1) #8, !dbg !5584
  ret void, !dbg !5585
}

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5586 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5590, metadata !DIExpression()), !dbg !5591
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !5592
  %0 = load i32, i32* %location, align 8, !dbg !5592
  ret i32 %0, !dbg !5593
}

declare dso_local %union.tree_node* @tree_strip_nop_conversions(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_cond_from_tree(%union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @split_block(%struct.basic_block_def*, i8*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @create_empty_bb(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @redirect_edge_succ(%struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @dom_info_available_p(i32) local_unnamed_addr #2

declare dso_local void @set_immediate_dominator(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %union.tree_node* @make_rename_temp(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local i32 @integer_nonzerop(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5594 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5596, metadata !DIExpression()), !dbg !5599
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !5597, metadata !DIExpression()), !dbg !5600
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !5601
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !5598, metadata !DIExpression()), !dbg !5599
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #8, !dbg !5602
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !5603
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !5604
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !5605
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !5606
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !5607
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !5608
  ret void, !dbg !5609
}

declare dso_local void @gsi_insert_after(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_nop() local_unnamed_addr #2

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !5610 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !5612, metadata !DIExpression()), !dbg !5613
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !5614
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5614

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !5615
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !5615
  br label %cond.end, !dbg !5614

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !5614
  ret %struct.gimple_seq_node_d* %cond, !dbg !5616
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5617 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5619, metadata !DIExpression()), !dbg !5620
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !5621
  ret %union.tree_node* %call, !dbg !5622
}

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_code(%union.gimple_statement_d* %gs, i32 %code) unnamed_addr #0 !dbg !5623 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5627, metadata !DIExpression()), !dbg !5629
  call void @llvm.dbg.value(metadata i32 101, metadata !5628, metadata !DIExpression()), !dbg !5629
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !5630
  %bf.load = load i32, i32* %0, align 8, !dbg !5631
  %bf.clear = and i32 %bf.load, 65535, !dbg !5631
  %bf.set = or i32 %bf.clear, 6619136, !dbg !5631
  store i32 %bf.set, i32* %0, align 8, !dbg !5631
  ret void, !dbg !5632
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !5633 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5635, metadata !DIExpression()), !dbg !5637
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !5636, metadata !DIExpression()), !dbg !5637
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #8, !dbg !5638
  ret void, !dbg !5639
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_rhs(%union.gimple_statement_d* %gs, %union.tree_node* %rhs) unnamed_addr #0 !dbg !5640 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5642, metadata !DIExpression()), !dbg !5644
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !5643, metadata !DIExpression()), !dbg !5644
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 1, %union.tree_node* %rhs) #8, !dbg !5645
  ret void, !dbg !5646
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
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2747, !2748, !2749}
!llvm.ident = !{!2750}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_lower_complex", scope: !2, file: !3, line: 1616, type: !2715, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1379, globals: !2712, nameTableKind: None)
!3 = !DIFile(filename: "tree-complex.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !599, !625, !631, !637, !1357}
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
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !561, line: 80, baseType: !7, size: 32, elements: !626)
!626 = !{!627, !628, !629, !630}
!627 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!628 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!629 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!630 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!631 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_prop_result", file: !632, line: 44, baseType: !7, size: 32, elements: !633)
!632 = !DIFile(filename: "./tree-ssa-propagate.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!633 = !{!634, !635, !636}
!634 = !DIEnumerator(name: "SSA_PROP_NOT_INTERESTING", value: 0, isUnsigned: true)
!635 = !DIEnumerator(name: "SSA_PROP_INTERESTING", value: 1, isUnsigned: true)
!636 = !DIEnumerator(name: "SSA_PROP_VARYING", value: 2, isUnsigned: true)
!637 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "built_in_function", file: !334, line: 220, baseType: !7, size: 32, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!639 = !DIEnumerator(name: "BUILT_IN_ACOS", value: 0, isUnsigned: true)
!640 = !DIEnumerator(name: "BUILT_IN_ACOSF", value: 1, isUnsigned: true)
!641 = !DIEnumerator(name: "BUILT_IN_ACOSH", value: 2, isUnsigned: true)
!642 = !DIEnumerator(name: "BUILT_IN_ACOSHF", value: 3, isUnsigned: true)
!643 = !DIEnumerator(name: "BUILT_IN_ACOSHL", value: 4, isUnsigned: true)
!644 = !DIEnumerator(name: "BUILT_IN_ACOSL", value: 5, isUnsigned: true)
!645 = !DIEnumerator(name: "BUILT_IN_ASIN", value: 6, isUnsigned: true)
!646 = !DIEnumerator(name: "BUILT_IN_ASINF", value: 7, isUnsigned: true)
!647 = !DIEnumerator(name: "BUILT_IN_ASINH", value: 8, isUnsigned: true)
!648 = !DIEnumerator(name: "BUILT_IN_ASINHF", value: 9, isUnsigned: true)
!649 = !DIEnumerator(name: "BUILT_IN_ASINHL", value: 10, isUnsigned: true)
!650 = !DIEnumerator(name: "BUILT_IN_ASINL", value: 11, isUnsigned: true)
!651 = !DIEnumerator(name: "BUILT_IN_ATAN", value: 12, isUnsigned: true)
!652 = !DIEnumerator(name: "BUILT_IN_ATAN2", value: 13, isUnsigned: true)
!653 = !DIEnumerator(name: "BUILT_IN_ATAN2F", value: 14, isUnsigned: true)
!654 = !DIEnumerator(name: "BUILT_IN_ATAN2L", value: 15, isUnsigned: true)
!655 = !DIEnumerator(name: "BUILT_IN_ATANF", value: 16, isUnsigned: true)
!656 = !DIEnumerator(name: "BUILT_IN_ATANH", value: 17, isUnsigned: true)
!657 = !DIEnumerator(name: "BUILT_IN_ATANHF", value: 18, isUnsigned: true)
!658 = !DIEnumerator(name: "BUILT_IN_ATANHL", value: 19, isUnsigned: true)
!659 = !DIEnumerator(name: "BUILT_IN_ATANL", value: 20, isUnsigned: true)
!660 = !DIEnumerator(name: "BUILT_IN_CBRT", value: 21, isUnsigned: true)
!661 = !DIEnumerator(name: "BUILT_IN_CBRTF", value: 22, isUnsigned: true)
!662 = !DIEnumerator(name: "BUILT_IN_CBRTL", value: 23, isUnsigned: true)
!663 = !DIEnumerator(name: "BUILT_IN_CEIL", value: 24, isUnsigned: true)
!664 = !DIEnumerator(name: "BUILT_IN_CEILF", value: 25, isUnsigned: true)
!665 = !DIEnumerator(name: "BUILT_IN_CEILL", value: 26, isUnsigned: true)
!666 = !DIEnumerator(name: "BUILT_IN_COPYSIGN", value: 27, isUnsigned: true)
!667 = !DIEnumerator(name: "BUILT_IN_COPYSIGNF", value: 28, isUnsigned: true)
!668 = !DIEnumerator(name: "BUILT_IN_COPYSIGNL", value: 29, isUnsigned: true)
!669 = !DIEnumerator(name: "BUILT_IN_COS", value: 30, isUnsigned: true)
!670 = !DIEnumerator(name: "BUILT_IN_COSF", value: 31, isUnsigned: true)
!671 = !DIEnumerator(name: "BUILT_IN_COSH", value: 32, isUnsigned: true)
!672 = !DIEnumerator(name: "BUILT_IN_COSHF", value: 33, isUnsigned: true)
!673 = !DIEnumerator(name: "BUILT_IN_COSHL", value: 34, isUnsigned: true)
!674 = !DIEnumerator(name: "BUILT_IN_COSL", value: 35, isUnsigned: true)
!675 = !DIEnumerator(name: "BUILT_IN_DREM", value: 36, isUnsigned: true)
!676 = !DIEnumerator(name: "BUILT_IN_DREMF", value: 37, isUnsigned: true)
!677 = !DIEnumerator(name: "BUILT_IN_DREML", value: 38, isUnsigned: true)
!678 = !DIEnumerator(name: "BUILT_IN_ERF", value: 39, isUnsigned: true)
!679 = !DIEnumerator(name: "BUILT_IN_ERFC", value: 40, isUnsigned: true)
!680 = !DIEnumerator(name: "BUILT_IN_ERFCF", value: 41, isUnsigned: true)
!681 = !DIEnumerator(name: "BUILT_IN_ERFCL", value: 42, isUnsigned: true)
!682 = !DIEnumerator(name: "BUILT_IN_ERFF", value: 43, isUnsigned: true)
!683 = !DIEnumerator(name: "BUILT_IN_ERFL", value: 44, isUnsigned: true)
!684 = !DIEnumerator(name: "BUILT_IN_EXP", value: 45, isUnsigned: true)
!685 = !DIEnumerator(name: "BUILT_IN_EXP10", value: 46, isUnsigned: true)
!686 = !DIEnumerator(name: "BUILT_IN_EXP10F", value: 47, isUnsigned: true)
!687 = !DIEnumerator(name: "BUILT_IN_EXP10L", value: 48, isUnsigned: true)
!688 = !DIEnumerator(name: "BUILT_IN_EXP2", value: 49, isUnsigned: true)
!689 = !DIEnumerator(name: "BUILT_IN_EXP2F", value: 50, isUnsigned: true)
!690 = !DIEnumerator(name: "BUILT_IN_EXP2L", value: 51, isUnsigned: true)
!691 = !DIEnumerator(name: "BUILT_IN_EXPF", value: 52, isUnsigned: true)
!692 = !DIEnumerator(name: "BUILT_IN_EXPL", value: 53, isUnsigned: true)
!693 = !DIEnumerator(name: "BUILT_IN_EXPM1", value: 54, isUnsigned: true)
!694 = !DIEnumerator(name: "BUILT_IN_EXPM1F", value: 55, isUnsigned: true)
!695 = !DIEnumerator(name: "BUILT_IN_EXPM1L", value: 56, isUnsigned: true)
!696 = !DIEnumerator(name: "BUILT_IN_FABS", value: 57, isUnsigned: true)
!697 = !DIEnumerator(name: "BUILT_IN_FABSF", value: 58, isUnsigned: true)
!698 = !DIEnumerator(name: "BUILT_IN_FABSL", value: 59, isUnsigned: true)
!699 = !DIEnumerator(name: "BUILT_IN_FDIM", value: 60, isUnsigned: true)
!700 = !DIEnumerator(name: "BUILT_IN_FDIMF", value: 61, isUnsigned: true)
!701 = !DIEnumerator(name: "BUILT_IN_FDIML", value: 62, isUnsigned: true)
!702 = !DIEnumerator(name: "BUILT_IN_FLOOR", value: 63, isUnsigned: true)
!703 = !DIEnumerator(name: "BUILT_IN_FLOORF", value: 64, isUnsigned: true)
!704 = !DIEnumerator(name: "BUILT_IN_FLOORL", value: 65, isUnsigned: true)
!705 = !DIEnumerator(name: "BUILT_IN_FMA", value: 66, isUnsigned: true)
!706 = !DIEnumerator(name: "BUILT_IN_FMAF", value: 67, isUnsigned: true)
!707 = !DIEnumerator(name: "BUILT_IN_FMAL", value: 68, isUnsigned: true)
!708 = !DIEnumerator(name: "BUILT_IN_FMAX", value: 69, isUnsigned: true)
!709 = !DIEnumerator(name: "BUILT_IN_FMAXF", value: 70, isUnsigned: true)
!710 = !DIEnumerator(name: "BUILT_IN_FMAXL", value: 71, isUnsigned: true)
!711 = !DIEnumerator(name: "BUILT_IN_FMIN", value: 72, isUnsigned: true)
!712 = !DIEnumerator(name: "BUILT_IN_FMINF", value: 73, isUnsigned: true)
!713 = !DIEnumerator(name: "BUILT_IN_FMINL", value: 74, isUnsigned: true)
!714 = !DIEnumerator(name: "BUILT_IN_FMOD", value: 75, isUnsigned: true)
!715 = !DIEnumerator(name: "BUILT_IN_FMODF", value: 76, isUnsigned: true)
!716 = !DIEnumerator(name: "BUILT_IN_FMODL", value: 77, isUnsigned: true)
!717 = !DIEnumerator(name: "BUILT_IN_FREXP", value: 78, isUnsigned: true)
!718 = !DIEnumerator(name: "BUILT_IN_FREXPF", value: 79, isUnsigned: true)
!719 = !DIEnumerator(name: "BUILT_IN_FREXPL", value: 80, isUnsigned: true)
!720 = !DIEnumerator(name: "BUILT_IN_GAMMA", value: 81, isUnsigned: true)
!721 = !DIEnumerator(name: "BUILT_IN_GAMMAF", value: 82, isUnsigned: true)
!722 = !DIEnumerator(name: "BUILT_IN_GAMMAL", value: 83, isUnsigned: true)
!723 = !DIEnumerator(name: "BUILT_IN_GAMMA_R", value: 84, isUnsigned: true)
!724 = !DIEnumerator(name: "BUILT_IN_GAMMAF_R", value: 85, isUnsigned: true)
!725 = !DIEnumerator(name: "BUILT_IN_GAMMAL_R", value: 86, isUnsigned: true)
!726 = !DIEnumerator(name: "BUILT_IN_HUGE_VAL", value: 87, isUnsigned: true)
!727 = !DIEnumerator(name: "BUILT_IN_HUGE_VALF", value: 88, isUnsigned: true)
!728 = !DIEnumerator(name: "BUILT_IN_HUGE_VALL", value: 89, isUnsigned: true)
!729 = !DIEnumerator(name: "BUILT_IN_HYPOT", value: 90, isUnsigned: true)
!730 = !DIEnumerator(name: "BUILT_IN_HYPOTF", value: 91, isUnsigned: true)
!731 = !DIEnumerator(name: "BUILT_IN_HYPOTL", value: 92, isUnsigned: true)
!732 = !DIEnumerator(name: "BUILT_IN_ILOGB", value: 93, isUnsigned: true)
!733 = !DIEnumerator(name: "BUILT_IN_ILOGBF", value: 94, isUnsigned: true)
!734 = !DIEnumerator(name: "BUILT_IN_ILOGBL", value: 95, isUnsigned: true)
!735 = !DIEnumerator(name: "BUILT_IN_INF", value: 96, isUnsigned: true)
!736 = !DIEnumerator(name: "BUILT_IN_INFF", value: 97, isUnsigned: true)
!737 = !DIEnumerator(name: "BUILT_IN_INFL", value: 98, isUnsigned: true)
!738 = !DIEnumerator(name: "BUILT_IN_INFD32", value: 99, isUnsigned: true)
!739 = !DIEnumerator(name: "BUILT_IN_INFD64", value: 100, isUnsigned: true)
!740 = !DIEnumerator(name: "BUILT_IN_INFD128", value: 101, isUnsigned: true)
!741 = !DIEnumerator(name: "BUILT_IN_J0", value: 102, isUnsigned: true)
!742 = !DIEnumerator(name: "BUILT_IN_J0F", value: 103, isUnsigned: true)
!743 = !DIEnumerator(name: "BUILT_IN_J0L", value: 104, isUnsigned: true)
!744 = !DIEnumerator(name: "BUILT_IN_J1", value: 105, isUnsigned: true)
!745 = !DIEnumerator(name: "BUILT_IN_J1F", value: 106, isUnsigned: true)
!746 = !DIEnumerator(name: "BUILT_IN_J1L", value: 107, isUnsigned: true)
!747 = !DIEnumerator(name: "BUILT_IN_JN", value: 108, isUnsigned: true)
!748 = !DIEnumerator(name: "BUILT_IN_JNF", value: 109, isUnsigned: true)
!749 = !DIEnumerator(name: "BUILT_IN_JNL", value: 110, isUnsigned: true)
!750 = !DIEnumerator(name: "BUILT_IN_LCEIL", value: 111, isUnsigned: true)
!751 = !DIEnumerator(name: "BUILT_IN_LCEILF", value: 112, isUnsigned: true)
!752 = !DIEnumerator(name: "BUILT_IN_LCEILL", value: 113, isUnsigned: true)
!753 = !DIEnumerator(name: "BUILT_IN_LDEXP", value: 114, isUnsigned: true)
!754 = !DIEnumerator(name: "BUILT_IN_LDEXPF", value: 115, isUnsigned: true)
!755 = !DIEnumerator(name: "BUILT_IN_LDEXPL", value: 116, isUnsigned: true)
!756 = !DIEnumerator(name: "BUILT_IN_LFLOOR", value: 117, isUnsigned: true)
!757 = !DIEnumerator(name: "BUILT_IN_LFLOORF", value: 118, isUnsigned: true)
!758 = !DIEnumerator(name: "BUILT_IN_LFLOORL", value: 119, isUnsigned: true)
!759 = !DIEnumerator(name: "BUILT_IN_LGAMMA", value: 120, isUnsigned: true)
!760 = !DIEnumerator(name: "BUILT_IN_LGAMMAF", value: 121, isUnsigned: true)
!761 = !DIEnumerator(name: "BUILT_IN_LGAMMAL", value: 122, isUnsigned: true)
!762 = !DIEnumerator(name: "BUILT_IN_LGAMMA_R", value: 123, isUnsigned: true)
!763 = !DIEnumerator(name: "BUILT_IN_LGAMMAF_R", value: 124, isUnsigned: true)
!764 = !DIEnumerator(name: "BUILT_IN_LGAMMAL_R", value: 125, isUnsigned: true)
!765 = !DIEnumerator(name: "BUILT_IN_LLCEIL", value: 126, isUnsigned: true)
!766 = !DIEnumerator(name: "BUILT_IN_LLCEILF", value: 127, isUnsigned: true)
!767 = !DIEnumerator(name: "BUILT_IN_LLCEILL", value: 128, isUnsigned: true)
!768 = !DIEnumerator(name: "BUILT_IN_LLFLOOR", value: 129, isUnsigned: true)
!769 = !DIEnumerator(name: "BUILT_IN_LLFLOORF", value: 130, isUnsigned: true)
!770 = !DIEnumerator(name: "BUILT_IN_LLFLOORL", value: 131, isUnsigned: true)
!771 = !DIEnumerator(name: "BUILT_IN_LLRINT", value: 132, isUnsigned: true)
!772 = !DIEnumerator(name: "BUILT_IN_LLRINTF", value: 133, isUnsigned: true)
!773 = !DIEnumerator(name: "BUILT_IN_LLRINTL", value: 134, isUnsigned: true)
!774 = !DIEnumerator(name: "BUILT_IN_LLROUND", value: 135, isUnsigned: true)
!775 = !DIEnumerator(name: "BUILT_IN_LLROUNDF", value: 136, isUnsigned: true)
!776 = !DIEnumerator(name: "BUILT_IN_LLROUNDL", value: 137, isUnsigned: true)
!777 = !DIEnumerator(name: "BUILT_IN_LOG", value: 138, isUnsigned: true)
!778 = !DIEnumerator(name: "BUILT_IN_LOG10", value: 139, isUnsigned: true)
!779 = !DIEnumerator(name: "BUILT_IN_LOG10F", value: 140, isUnsigned: true)
!780 = !DIEnumerator(name: "BUILT_IN_LOG10L", value: 141, isUnsigned: true)
!781 = !DIEnumerator(name: "BUILT_IN_LOG1P", value: 142, isUnsigned: true)
!782 = !DIEnumerator(name: "BUILT_IN_LOG1PF", value: 143, isUnsigned: true)
!783 = !DIEnumerator(name: "BUILT_IN_LOG1PL", value: 144, isUnsigned: true)
!784 = !DIEnumerator(name: "BUILT_IN_LOG2", value: 145, isUnsigned: true)
!785 = !DIEnumerator(name: "BUILT_IN_LOG2F", value: 146, isUnsigned: true)
!786 = !DIEnumerator(name: "BUILT_IN_LOG2L", value: 147, isUnsigned: true)
!787 = !DIEnumerator(name: "BUILT_IN_LOGB", value: 148, isUnsigned: true)
!788 = !DIEnumerator(name: "BUILT_IN_LOGBF", value: 149, isUnsigned: true)
!789 = !DIEnumerator(name: "BUILT_IN_LOGBL", value: 150, isUnsigned: true)
!790 = !DIEnumerator(name: "BUILT_IN_LOGF", value: 151, isUnsigned: true)
!791 = !DIEnumerator(name: "BUILT_IN_LOGL", value: 152, isUnsigned: true)
!792 = !DIEnumerator(name: "BUILT_IN_LRINT", value: 153, isUnsigned: true)
!793 = !DIEnumerator(name: "BUILT_IN_LRINTF", value: 154, isUnsigned: true)
!794 = !DIEnumerator(name: "BUILT_IN_LRINTL", value: 155, isUnsigned: true)
!795 = !DIEnumerator(name: "BUILT_IN_LROUND", value: 156, isUnsigned: true)
!796 = !DIEnumerator(name: "BUILT_IN_LROUNDF", value: 157, isUnsigned: true)
!797 = !DIEnumerator(name: "BUILT_IN_LROUNDL", value: 158, isUnsigned: true)
!798 = !DIEnumerator(name: "BUILT_IN_MODF", value: 159, isUnsigned: true)
!799 = !DIEnumerator(name: "BUILT_IN_MODFF", value: 160, isUnsigned: true)
!800 = !DIEnumerator(name: "BUILT_IN_MODFL", value: 161, isUnsigned: true)
!801 = !DIEnumerator(name: "BUILT_IN_NAN", value: 162, isUnsigned: true)
!802 = !DIEnumerator(name: "BUILT_IN_NANF", value: 163, isUnsigned: true)
!803 = !DIEnumerator(name: "BUILT_IN_NANL", value: 164, isUnsigned: true)
!804 = !DIEnumerator(name: "BUILT_IN_NAND32", value: 165, isUnsigned: true)
!805 = !DIEnumerator(name: "BUILT_IN_NAND64", value: 166, isUnsigned: true)
!806 = !DIEnumerator(name: "BUILT_IN_NAND128", value: 167, isUnsigned: true)
!807 = !DIEnumerator(name: "BUILT_IN_NANS", value: 168, isUnsigned: true)
!808 = !DIEnumerator(name: "BUILT_IN_NANSF", value: 169, isUnsigned: true)
!809 = !DIEnumerator(name: "BUILT_IN_NANSL", value: 170, isUnsigned: true)
!810 = !DIEnumerator(name: "BUILT_IN_NEARBYINT", value: 171, isUnsigned: true)
!811 = !DIEnumerator(name: "BUILT_IN_NEARBYINTF", value: 172, isUnsigned: true)
!812 = !DIEnumerator(name: "BUILT_IN_NEARBYINTL", value: 173, isUnsigned: true)
!813 = !DIEnumerator(name: "BUILT_IN_NEXTAFTER", value: 174, isUnsigned: true)
!814 = !DIEnumerator(name: "BUILT_IN_NEXTAFTERF", value: 175, isUnsigned: true)
!815 = !DIEnumerator(name: "BUILT_IN_NEXTAFTERL", value: 176, isUnsigned: true)
!816 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARD", value: 177, isUnsigned: true)
!817 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARDF", value: 178, isUnsigned: true)
!818 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARDL", value: 179, isUnsigned: true)
!819 = !DIEnumerator(name: "BUILT_IN_POW", value: 180, isUnsigned: true)
!820 = !DIEnumerator(name: "BUILT_IN_POW10", value: 181, isUnsigned: true)
!821 = !DIEnumerator(name: "BUILT_IN_POW10F", value: 182, isUnsigned: true)
!822 = !DIEnumerator(name: "BUILT_IN_POW10L", value: 183, isUnsigned: true)
!823 = !DIEnumerator(name: "BUILT_IN_POWF", value: 184, isUnsigned: true)
!824 = !DIEnumerator(name: "BUILT_IN_POWI", value: 185, isUnsigned: true)
!825 = !DIEnumerator(name: "BUILT_IN_POWIF", value: 186, isUnsigned: true)
!826 = !DIEnumerator(name: "BUILT_IN_POWIL", value: 187, isUnsigned: true)
!827 = !DIEnumerator(name: "BUILT_IN_POWL", value: 188, isUnsigned: true)
!828 = !DIEnumerator(name: "BUILT_IN_REMAINDER", value: 189, isUnsigned: true)
!829 = !DIEnumerator(name: "BUILT_IN_REMAINDERF", value: 190, isUnsigned: true)
!830 = !DIEnumerator(name: "BUILT_IN_REMAINDERL", value: 191, isUnsigned: true)
!831 = !DIEnumerator(name: "BUILT_IN_REMQUO", value: 192, isUnsigned: true)
!832 = !DIEnumerator(name: "BUILT_IN_REMQUOF", value: 193, isUnsigned: true)
!833 = !DIEnumerator(name: "BUILT_IN_REMQUOL", value: 194, isUnsigned: true)
!834 = !DIEnumerator(name: "BUILT_IN_RINT", value: 195, isUnsigned: true)
!835 = !DIEnumerator(name: "BUILT_IN_RINTF", value: 196, isUnsigned: true)
!836 = !DIEnumerator(name: "BUILT_IN_RINTL", value: 197, isUnsigned: true)
!837 = !DIEnumerator(name: "BUILT_IN_ROUND", value: 198, isUnsigned: true)
!838 = !DIEnumerator(name: "BUILT_IN_ROUNDF", value: 199, isUnsigned: true)
!839 = !DIEnumerator(name: "BUILT_IN_ROUNDL", value: 200, isUnsigned: true)
!840 = !DIEnumerator(name: "BUILT_IN_SCALB", value: 201, isUnsigned: true)
!841 = !DIEnumerator(name: "BUILT_IN_SCALBF", value: 202, isUnsigned: true)
!842 = !DIEnumerator(name: "BUILT_IN_SCALBL", value: 203, isUnsigned: true)
!843 = !DIEnumerator(name: "BUILT_IN_SCALBLN", value: 204, isUnsigned: true)
!844 = !DIEnumerator(name: "BUILT_IN_SCALBLNF", value: 205, isUnsigned: true)
!845 = !DIEnumerator(name: "BUILT_IN_SCALBLNL", value: 206, isUnsigned: true)
!846 = !DIEnumerator(name: "BUILT_IN_SCALBN", value: 207, isUnsigned: true)
!847 = !DIEnumerator(name: "BUILT_IN_SCALBNF", value: 208, isUnsigned: true)
!848 = !DIEnumerator(name: "BUILT_IN_SCALBNL", value: 209, isUnsigned: true)
!849 = !DIEnumerator(name: "BUILT_IN_SIGNBIT", value: 210, isUnsigned: true)
!850 = !DIEnumerator(name: "BUILT_IN_SIGNBITF", value: 211, isUnsigned: true)
!851 = !DIEnumerator(name: "BUILT_IN_SIGNBITL", value: 212, isUnsigned: true)
!852 = !DIEnumerator(name: "BUILT_IN_SIGNBITD32", value: 213, isUnsigned: true)
!853 = !DIEnumerator(name: "BUILT_IN_SIGNBITD64", value: 214, isUnsigned: true)
!854 = !DIEnumerator(name: "BUILT_IN_SIGNBITD128", value: 215, isUnsigned: true)
!855 = !DIEnumerator(name: "BUILT_IN_SIGNIFICAND", value: 216, isUnsigned: true)
!856 = !DIEnumerator(name: "BUILT_IN_SIGNIFICANDF", value: 217, isUnsigned: true)
!857 = !DIEnumerator(name: "BUILT_IN_SIGNIFICANDL", value: 218, isUnsigned: true)
!858 = !DIEnumerator(name: "BUILT_IN_SIN", value: 219, isUnsigned: true)
!859 = !DIEnumerator(name: "BUILT_IN_SINCOS", value: 220, isUnsigned: true)
!860 = !DIEnumerator(name: "BUILT_IN_SINCOSF", value: 221, isUnsigned: true)
!861 = !DIEnumerator(name: "BUILT_IN_SINCOSL", value: 222, isUnsigned: true)
!862 = !DIEnumerator(name: "BUILT_IN_SINF", value: 223, isUnsigned: true)
!863 = !DIEnumerator(name: "BUILT_IN_SINH", value: 224, isUnsigned: true)
!864 = !DIEnumerator(name: "BUILT_IN_SINHF", value: 225, isUnsigned: true)
!865 = !DIEnumerator(name: "BUILT_IN_SINHL", value: 226, isUnsigned: true)
!866 = !DIEnumerator(name: "BUILT_IN_SINL", value: 227, isUnsigned: true)
!867 = !DIEnumerator(name: "BUILT_IN_SQRT", value: 228, isUnsigned: true)
!868 = !DIEnumerator(name: "BUILT_IN_SQRTF", value: 229, isUnsigned: true)
!869 = !DIEnumerator(name: "BUILT_IN_SQRTL", value: 230, isUnsigned: true)
!870 = !DIEnumerator(name: "BUILT_IN_TAN", value: 231, isUnsigned: true)
!871 = !DIEnumerator(name: "BUILT_IN_TANF", value: 232, isUnsigned: true)
!872 = !DIEnumerator(name: "BUILT_IN_TANH", value: 233, isUnsigned: true)
!873 = !DIEnumerator(name: "BUILT_IN_TANHF", value: 234, isUnsigned: true)
!874 = !DIEnumerator(name: "BUILT_IN_TANHL", value: 235, isUnsigned: true)
!875 = !DIEnumerator(name: "BUILT_IN_TANL", value: 236, isUnsigned: true)
!876 = !DIEnumerator(name: "BUILT_IN_TGAMMA", value: 237, isUnsigned: true)
!877 = !DIEnumerator(name: "BUILT_IN_TGAMMAF", value: 238, isUnsigned: true)
!878 = !DIEnumerator(name: "BUILT_IN_TGAMMAL", value: 239, isUnsigned: true)
!879 = !DIEnumerator(name: "BUILT_IN_TRUNC", value: 240, isUnsigned: true)
!880 = !DIEnumerator(name: "BUILT_IN_TRUNCF", value: 241, isUnsigned: true)
!881 = !DIEnumerator(name: "BUILT_IN_TRUNCL", value: 242, isUnsigned: true)
!882 = !DIEnumerator(name: "BUILT_IN_Y0", value: 243, isUnsigned: true)
!883 = !DIEnumerator(name: "BUILT_IN_Y0F", value: 244, isUnsigned: true)
!884 = !DIEnumerator(name: "BUILT_IN_Y0L", value: 245, isUnsigned: true)
!885 = !DIEnumerator(name: "BUILT_IN_Y1", value: 246, isUnsigned: true)
!886 = !DIEnumerator(name: "BUILT_IN_Y1F", value: 247, isUnsigned: true)
!887 = !DIEnumerator(name: "BUILT_IN_Y1L", value: 248, isUnsigned: true)
!888 = !DIEnumerator(name: "BUILT_IN_YN", value: 249, isUnsigned: true)
!889 = !DIEnumerator(name: "BUILT_IN_YNF", value: 250, isUnsigned: true)
!890 = !DIEnumerator(name: "BUILT_IN_YNL", value: 251, isUnsigned: true)
!891 = !DIEnumerator(name: "BUILT_IN_CABS", value: 252, isUnsigned: true)
!892 = !DIEnumerator(name: "BUILT_IN_CABSF", value: 253, isUnsigned: true)
!893 = !DIEnumerator(name: "BUILT_IN_CABSL", value: 254, isUnsigned: true)
!894 = !DIEnumerator(name: "BUILT_IN_CACOS", value: 255, isUnsigned: true)
!895 = !DIEnumerator(name: "BUILT_IN_CACOSF", value: 256, isUnsigned: true)
!896 = !DIEnumerator(name: "BUILT_IN_CACOSH", value: 257, isUnsigned: true)
!897 = !DIEnumerator(name: "BUILT_IN_CACOSHF", value: 258, isUnsigned: true)
!898 = !DIEnumerator(name: "BUILT_IN_CACOSHL", value: 259, isUnsigned: true)
!899 = !DIEnumerator(name: "BUILT_IN_CACOSL", value: 260, isUnsigned: true)
!900 = !DIEnumerator(name: "BUILT_IN_CARG", value: 261, isUnsigned: true)
!901 = !DIEnumerator(name: "BUILT_IN_CARGF", value: 262, isUnsigned: true)
!902 = !DIEnumerator(name: "BUILT_IN_CARGL", value: 263, isUnsigned: true)
!903 = !DIEnumerator(name: "BUILT_IN_CASIN", value: 264, isUnsigned: true)
!904 = !DIEnumerator(name: "BUILT_IN_CASINF", value: 265, isUnsigned: true)
!905 = !DIEnumerator(name: "BUILT_IN_CASINH", value: 266, isUnsigned: true)
!906 = !DIEnumerator(name: "BUILT_IN_CASINHF", value: 267, isUnsigned: true)
!907 = !DIEnumerator(name: "BUILT_IN_CASINHL", value: 268, isUnsigned: true)
!908 = !DIEnumerator(name: "BUILT_IN_CASINL", value: 269, isUnsigned: true)
!909 = !DIEnumerator(name: "BUILT_IN_CATAN", value: 270, isUnsigned: true)
!910 = !DIEnumerator(name: "BUILT_IN_CATANF", value: 271, isUnsigned: true)
!911 = !DIEnumerator(name: "BUILT_IN_CATANH", value: 272, isUnsigned: true)
!912 = !DIEnumerator(name: "BUILT_IN_CATANHF", value: 273, isUnsigned: true)
!913 = !DIEnumerator(name: "BUILT_IN_CATANHL", value: 274, isUnsigned: true)
!914 = !DIEnumerator(name: "BUILT_IN_CATANL", value: 275, isUnsigned: true)
!915 = !DIEnumerator(name: "BUILT_IN_CCOS", value: 276, isUnsigned: true)
!916 = !DIEnumerator(name: "BUILT_IN_CCOSF", value: 277, isUnsigned: true)
!917 = !DIEnumerator(name: "BUILT_IN_CCOSH", value: 278, isUnsigned: true)
!918 = !DIEnumerator(name: "BUILT_IN_CCOSHF", value: 279, isUnsigned: true)
!919 = !DIEnumerator(name: "BUILT_IN_CCOSHL", value: 280, isUnsigned: true)
!920 = !DIEnumerator(name: "BUILT_IN_CCOSL", value: 281, isUnsigned: true)
!921 = !DIEnumerator(name: "BUILT_IN_CEXP", value: 282, isUnsigned: true)
!922 = !DIEnumerator(name: "BUILT_IN_CEXPF", value: 283, isUnsigned: true)
!923 = !DIEnumerator(name: "BUILT_IN_CEXPL", value: 284, isUnsigned: true)
!924 = !DIEnumerator(name: "BUILT_IN_CEXPI", value: 285, isUnsigned: true)
!925 = !DIEnumerator(name: "BUILT_IN_CEXPIF", value: 286, isUnsigned: true)
!926 = !DIEnumerator(name: "BUILT_IN_CEXPIL", value: 287, isUnsigned: true)
!927 = !DIEnumerator(name: "BUILT_IN_CIMAG", value: 288, isUnsigned: true)
!928 = !DIEnumerator(name: "BUILT_IN_CIMAGF", value: 289, isUnsigned: true)
!929 = !DIEnumerator(name: "BUILT_IN_CIMAGL", value: 290, isUnsigned: true)
!930 = !DIEnumerator(name: "BUILT_IN_CLOG", value: 291, isUnsigned: true)
!931 = !DIEnumerator(name: "BUILT_IN_CLOGF", value: 292, isUnsigned: true)
!932 = !DIEnumerator(name: "BUILT_IN_CLOGL", value: 293, isUnsigned: true)
!933 = !DIEnumerator(name: "BUILT_IN_CLOG10", value: 294, isUnsigned: true)
!934 = !DIEnumerator(name: "BUILT_IN_CLOG10F", value: 295, isUnsigned: true)
!935 = !DIEnumerator(name: "BUILT_IN_CLOG10L", value: 296, isUnsigned: true)
!936 = !DIEnumerator(name: "BUILT_IN_CONJ", value: 297, isUnsigned: true)
!937 = !DIEnumerator(name: "BUILT_IN_CONJF", value: 298, isUnsigned: true)
!938 = !DIEnumerator(name: "BUILT_IN_CONJL", value: 299, isUnsigned: true)
!939 = !DIEnumerator(name: "BUILT_IN_CPOW", value: 300, isUnsigned: true)
!940 = !DIEnumerator(name: "BUILT_IN_CPOWF", value: 301, isUnsigned: true)
!941 = !DIEnumerator(name: "BUILT_IN_CPOWL", value: 302, isUnsigned: true)
!942 = !DIEnumerator(name: "BUILT_IN_CPROJ", value: 303, isUnsigned: true)
!943 = !DIEnumerator(name: "BUILT_IN_CPROJF", value: 304, isUnsigned: true)
!944 = !DIEnumerator(name: "BUILT_IN_CPROJL", value: 305, isUnsigned: true)
!945 = !DIEnumerator(name: "BUILT_IN_CREAL", value: 306, isUnsigned: true)
!946 = !DIEnumerator(name: "BUILT_IN_CREALF", value: 307, isUnsigned: true)
!947 = !DIEnumerator(name: "BUILT_IN_CREALL", value: 308, isUnsigned: true)
!948 = !DIEnumerator(name: "BUILT_IN_CSIN", value: 309, isUnsigned: true)
!949 = !DIEnumerator(name: "BUILT_IN_CSINF", value: 310, isUnsigned: true)
!950 = !DIEnumerator(name: "BUILT_IN_CSINH", value: 311, isUnsigned: true)
!951 = !DIEnumerator(name: "BUILT_IN_CSINHF", value: 312, isUnsigned: true)
!952 = !DIEnumerator(name: "BUILT_IN_CSINHL", value: 313, isUnsigned: true)
!953 = !DIEnumerator(name: "BUILT_IN_CSINL", value: 314, isUnsigned: true)
!954 = !DIEnumerator(name: "BUILT_IN_CSQRT", value: 315, isUnsigned: true)
!955 = !DIEnumerator(name: "BUILT_IN_CSQRTF", value: 316, isUnsigned: true)
!956 = !DIEnumerator(name: "BUILT_IN_CSQRTL", value: 317, isUnsigned: true)
!957 = !DIEnumerator(name: "BUILT_IN_CTAN", value: 318, isUnsigned: true)
!958 = !DIEnumerator(name: "BUILT_IN_CTANF", value: 319, isUnsigned: true)
!959 = !DIEnumerator(name: "BUILT_IN_CTANH", value: 320, isUnsigned: true)
!960 = !DIEnumerator(name: "BUILT_IN_CTANHF", value: 321, isUnsigned: true)
!961 = !DIEnumerator(name: "BUILT_IN_CTANHL", value: 322, isUnsigned: true)
!962 = !DIEnumerator(name: "BUILT_IN_CTANL", value: 323, isUnsigned: true)
!963 = !DIEnumerator(name: "BUILT_IN_BCMP", value: 324, isUnsigned: true)
!964 = !DIEnumerator(name: "BUILT_IN_BCOPY", value: 325, isUnsigned: true)
!965 = !DIEnumerator(name: "BUILT_IN_BZERO", value: 326, isUnsigned: true)
!966 = !DIEnumerator(name: "BUILT_IN_INDEX", value: 327, isUnsigned: true)
!967 = !DIEnumerator(name: "BUILT_IN_MEMCHR", value: 328, isUnsigned: true)
!968 = !DIEnumerator(name: "BUILT_IN_MEMCMP", value: 329, isUnsigned: true)
!969 = !DIEnumerator(name: "BUILT_IN_MEMCPY", value: 330, isUnsigned: true)
!970 = !DIEnumerator(name: "BUILT_IN_MEMMOVE", value: 331, isUnsigned: true)
!971 = !DIEnumerator(name: "BUILT_IN_MEMPCPY", value: 332, isUnsigned: true)
!972 = !DIEnumerator(name: "BUILT_IN_MEMSET", value: 333, isUnsigned: true)
!973 = !DIEnumerator(name: "BUILT_IN_RINDEX", value: 334, isUnsigned: true)
!974 = !DIEnumerator(name: "BUILT_IN_STPCPY", value: 335, isUnsigned: true)
!975 = !DIEnumerator(name: "BUILT_IN_STPNCPY", value: 336, isUnsigned: true)
!976 = !DIEnumerator(name: "BUILT_IN_STRCASECMP", value: 337, isUnsigned: true)
!977 = !DIEnumerator(name: "BUILT_IN_STRCAT", value: 338, isUnsigned: true)
!978 = !DIEnumerator(name: "BUILT_IN_STRCHR", value: 339, isUnsigned: true)
!979 = !DIEnumerator(name: "BUILT_IN_STRCMP", value: 340, isUnsigned: true)
!980 = !DIEnumerator(name: "BUILT_IN_STRCPY", value: 341, isUnsigned: true)
!981 = !DIEnumerator(name: "BUILT_IN_STRCSPN", value: 342, isUnsigned: true)
!982 = !DIEnumerator(name: "BUILT_IN_STRDUP", value: 343, isUnsigned: true)
!983 = !DIEnumerator(name: "BUILT_IN_STRNDUP", value: 344, isUnsigned: true)
!984 = !DIEnumerator(name: "BUILT_IN_STRLEN", value: 345, isUnsigned: true)
!985 = !DIEnumerator(name: "BUILT_IN_STRNCASECMP", value: 346, isUnsigned: true)
!986 = !DIEnumerator(name: "BUILT_IN_STRNCAT", value: 347, isUnsigned: true)
!987 = !DIEnumerator(name: "BUILT_IN_STRNCMP", value: 348, isUnsigned: true)
!988 = !DIEnumerator(name: "BUILT_IN_STRNCPY", value: 349, isUnsigned: true)
!989 = !DIEnumerator(name: "BUILT_IN_STRPBRK", value: 350, isUnsigned: true)
!990 = !DIEnumerator(name: "BUILT_IN_STRRCHR", value: 351, isUnsigned: true)
!991 = !DIEnumerator(name: "BUILT_IN_STRSPN", value: 352, isUnsigned: true)
!992 = !DIEnumerator(name: "BUILT_IN_STRSTR", value: 353, isUnsigned: true)
!993 = !DIEnumerator(name: "BUILT_IN_FPRINTF", value: 354, isUnsigned: true)
!994 = !DIEnumerator(name: "BUILT_IN_FPRINTF_UNLOCKED", value: 355, isUnsigned: true)
!995 = !DIEnumerator(name: "BUILT_IN_PUTC", value: 356, isUnsigned: true)
!996 = !DIEnumerator(name: "BUILT_IN_PUTC_UNLOCKED", value: 357, isUnsigned: true)
!997 = !DIEnumerator(name: "BUILT_IN_FPUTC", value: 358, isUnsigned: true)
!998 = !DIEnumerator(name: "BUILT_IN_FPUTC_UNLOCKED", value: 359, isUnsigned: true)
!999 = !DIEnumerator(name: "BUILT_IN_FPUTS", value: 360, isUnsigned: true)
!1000 = !DIEnumerator(name: "BUILT_IN_FPUTS_UNLOCKED", value: 361, isUnsigned: true)
!1001 = !DIEnumerator(name: "BUILT_IN_FSCANF", value: 362, isUnsigned: true)
!1002 = !DIEnumerator(name: "BUILT_IN_FWRITE", value: 363, isUnsigned: true)
!1003 = !DIEnumerator(name: "BUILT_IN_FWRITE_UNLOCKED", value: 364, isUnsigned: true)
!1004 = !DIEnumerator(name: "BUILT_IN_PRINTF", value: 365, isUnsigned: true)
!1005 = !DIEnumerator(name: "BUILT_IN_PRINTF_UNLOCKED", value: 366, isUnsigned: true)
!1006 = !DIEnumerator(name: "BUILT_IN_PUTCHAR", value: 367, isUnsigned: true)
!1007 = !DIEnumerator(name: "BUILT_IN_PUTCHAR_UNLOCKED", value: 368, isUnsigned: true)
!1008 = !DIEnumerator(name: "BUILT_IN_PUTS", value: 369, isUnsigned: true)
!1009 = !DIEnumerator(name: "BUILT_IN_PUTS_UNLOCKED", value: 370, isUnsigned: true)
!1010 = !DIEnumerator(name: "BUILT_IN_SCANF", value: 371, isUnsigned: true)
!1011 = !DIEnumerator(name: "BUILT_IN_SNPRINTF", value: 372, isUnsigned: true)
!1012 = !DIEnumerator(name: "BUILT_IN_SPRINTF", value: 373, isUnsigned: true)
!1013 = !DIEnumerator(name: "BUILT_IN_SSCANF", value: 374, isUnsigned: true)
!1014 = !DIEnumerator(name: "BUILT_IN_VFPRINTF", value: 375, isUnsigned: true)
!1015 = !DIEnumerator(name: "BUILT_IN_VFSCANF", value: 376, isUnsigned: true)
!1016 = !DIEnumerator(name: "BUILT_IN_VPRINTF", value: 377, isUnsigned: true)
!1017 = !DIEnumerator(name: "BUILT_IN_VSCANF", value: 378, isUnsigned: true)
!1018 = !DIEnumerator(name: "BUILT_IN_VSNPRINTF", value: 379, isUnsigned: true)
!1019 = !DIEnumerator(name: "BUILT_IN_VSPRINTF", value: 380, isUnsigned: true)
!1020 = !DIEnumerator(name: "BUILT_IN_VSSCANF", value: 381, isUnsigned: true)
!1021 = !DIEnumerator(name: "BUILT_IN_ISALNUM", value: 382, isUnsigned: true)
!1022 = !DIEnumerator(name: "BUILT_IN_ISALPHA", value: 383, isUnsigned: true)
!1023 = !DIEnumerator(name: "BUILT_IN_ISASCII", value: 384, isUnsigned: true)
!1024 = !DIEnumerator(name: "BUILT_IN_ISBLANK", value: 385, isUnsigned: true)
!1025 = !DIEnumerator(name: "BUILT_IN_ISCNTRL", value: 386, isUnsigned: true)
!1026 = !DIEnumerator(name: "BUILT_IN_ISDIGIT", value: 387, isUnsigned: true)
!1027 = !DIEnumerator(name: "BUILT_IN_ISGRAPH", value: 388, isUnsigned: true)
!1028 = !DIEnumerator(name: "BUILT_IN_ISLOWER", value: 389, isUnsigned: true)
!1029 = !DIEnumerator(name: "BUILT_IN_ISPRINT", value: 390, isUnsigned: true)
!1030 = !DIEnumerator(name: "BUILT_IN_ISPUNCT", value: 391, isUnsigned: true)
!1031 = !DIEnumerator(name: "BUILT_IN_ISSPACE", value: 392, isUnsigned: true)
!1032 = !DIEnumerator(name: "BUILT_IN_ISUPPER", value: 393, isUnsigned: true)
!1033 = !DIEnumerator(name: "BUILT_IN_ISXDIGIT", value: 394, isUnsigned: true)
!1034 = !DIEnumerator(name: "BUILT_IN_TOASCII", value: 395, isUnsigned: true)
!1035 = !DIEnumerator(name: "BUILT_IN_TOLOWER", value: 396, isUnsigned: true)
!1036 = !DIEnumerator(name: "BUILT_IN_TOUPPER", value: 397, isUnsigned: true)
!1037 = !DIEnumerator(name: "BUILT_IN_ISWALNUM", value: 398, isUnsigned: true)
!1038 = !DIEnumerator(name: "BUILT_IN_ISWALPHA", value: 399, isUnsigned: true)
!1039 = !DIEnumerator(name: "BUILT_IN_ISWBLANK", value: 400, isUnsigned: true)
!1040 = !DIEnumerator(name: "BUILT_IN_ISWCNTRL", value: 401, isUnsigned: true)
!1041 = !DIEnumerator(name: "BUILT_IN_ISWDIGIT", value: 402, isUnsigned: true)
!1042 = !DIEnumerator(name: "BUILT_IN_ISWGRAPH", value: 403, isUnsigned: true)
!1043 = !DIEnumerator(name: "BUILT_IN_ISWLOWER", value: 404, isUnsigned: true)
!1044 = !DIEnumerator(name: "BUILT_IN_ISWPRINT", value: 405, isUnsigned: true)
!1045 = !DIEnumerator(name: "BUILT_IN_ISWPUNCT", value: 406, isUnsigned: true)
!1046 = !DIEnumerator(name: "BUILT_IN_ISWSPACE", value: 407, isUnsigned: true)
!1047 = !DIEnumerator(name: "BUILT_IN_ISWUPPER", value: 408, isUnsigned: true)
!1048 = !DIEnumerator(name: "BUILT_IN_ISWXDIGIT", value: 409, isUnsigned: true)
!1049 = !DIEnumerator(name: "BUILT_IN_TOWLOWER", value: 410, isUnsigned: true)
!1050 = !DIEnumerator(name: "BUILT_IN_TOWUPPER", value: 411, isUnsigned: true)
!1051 = !DIEnumerator(name: "BUILT_IN_ABORT", value: 412, isUnsigned: true)
!1052 = !DIEnumerator(name: "BUILT_IN_ABS", value: 413, isUnsigned: true)
!1053 = !DIEnumerator(name: "BUILT_IN_AGGREGATE_INCOMING_ADDRESS", value: 414, isUnsigned: true)
!1054 = !DIEnumerator(name: "BUILT_IN_ALLOCA", value: 415, isUnsigned: true)
!1055 = !DIEnumerator(name: "BUILT_IN_APPLY", value: 416, isUnsigned: true)
!1056 = !DIEnumerator(name: "BUILT_IN_APPLY_ARGS", value: 417, isUnsigned: true)
!1057 = !DIEnumerator(name: "BUILT_IN_ARGS_INFO", value: 418, isUnsigned: true)
!1058 = !DIEnumerator(name: "BUILT_IN_BSWAP32", value: 419, isUnsigned: true)
!1059 = !DIEnumerator(name: "BUILT_IN_BSWAP64", value: 420, isUnsigned: true)
!1060 = !DIEnumerator(name: "BUILT_IN_CLEAR_CACHE", value: 421, isUnsigned: true)
!1061 = !DIEnumerator(name: "BUILT_IN_CALLOC", value: 422, isUnsigned: true)
!1062 = !DIEnumerator(name: "BUILT_IN_CLASSIFY_TYPE", value: 423, isUnsigned: true)
!1063 = !DIEnumerator(name: "BUILT_IN_CLZ", value: 424, isUnsigned: true)
!1064 = !DIEnumerator(name: "BUILT_IN_CLZIMAX", value: 425, isUnsigned: true)
!1065 = !DIEnumerator(name: "BUILT_IN_CLZL", value: 426, isUnsigned: true)
!1066 = !DIEnumerator(name: "BUILT_IN_CLZLL", value: 427, isUnsigned: true)
!1067 = !DIEnumerator(name: "BUILT_IN_CONSTANT_P", value: 428, isUnsigned: true)
!1068 = !DIEnumerator(name: "BUILT_IN_CTZ", value: 429, isUnsigned: true)
!1069 = !DIEnumerator(name: "BUILT_IN_CTZIMAX", value: 430, isUnsigned: true)
!1070 = !DIEnumerator(name: "BUILT_IN_CTZL", value: 431, isUnsigned: true)
!1071 = !DIEnumerator(name: "BUILT_IN_CTZLL", value: 432, isUnsigned: true)
!1072 = !DIEnumerator(name: "BUILT_IN_DCGETTEXT", value: 433, isUnsigned: true)
!1073 = !DIEnumerator(name: "BUILT_IN_DGETTEXT", value: 434, isUnsigned: true)
!1074 = !DIEnumerator(name: "BUILT_IN_DWARF_CFA", value: 435, isUnsigned: true)
!1075 = !DIEnumerator(name: "BUILT_IN_DWARF_SP_COLUMN", value: 436, isUnsigned: true)
!1076 = !DIEnumerator(name: "BUILT_IN_EH_RETURN", value: 437, isUnsigned: true)
!1077 = !DIEnumerator(name: "BUILT_IN_EH_RETURN_DATA_REGNO", value: 438, isUnsigned: true)
!1078 = !DIEnumerator(name: "BUILT_IN_EXECL", value: 439, isUnsigned: true)
!1079 = !DIEnumerator(name: "BUILT_IN_EXECLP", value: 440, isUnsigned: true)
!1080 = !DIEnumerator(name: "BUILT_IN_EXECLE", value: 441, isUnsigned: true)
!1081 = !DIEnumerator(name: "BUILT_IN_EXECV", value: 442, isUnsigned: true)
!1082 = !DIEnumerator(name: "BUILT_IN_EXECVP", value: 443, isUnsigned: true)
!1083 = !DIEnumerator(name: "BUILT_IN_EXECVE", value: 444, isUnsigned: true)
!1084 = !DIEnumerator(name: "BUILT_IN_EXIT", value: 445, isUnsigned: true)
!1085 = !DIEnumerator(name: "BUILT_IN_EXPECT", value: 446, isUnsigned: true)
!1086 = !DIEnumerator(name: "BUILT_IN_EXTEND_POINTER", value: 447, isUnsigned: true)
!1087 = !DIEnumerator(name: "BUILT_IN_EXTRACT_RETURN_ADDR", value: 448, isUnsigned: true)
!1088 = !DIEnumerator(name: "BUILT_IN_FFS", value: 449, isUnsigned: true)
!1089 = !DIEnumerator(name: "BUILT_IN_FFSIMAX", value: 450, isUnsigned: true)
!1090 = !DIEnumerator(name: "BUILT_IN_FFSL", value: 451, isUnsigned: true)
!1091 = !DIEnumerator(name: "BUILT_IN_FFSLL", value: 452, isUnsigned: true)
!1092 = !DIEnumerator(name: "BUILT_IN_FORK", value: 453, isUnsigned: true)
!1093 = !DIEnumerator(name: "BUILT_IN_FRAME_ADDRESS", value: 454, isUnsigned: true)
!1094 = !DIEnumerator(name: "BUILT_IN_FREE", value: 455, isUnsigned: true)
!1095 = !DIEnumerator(name: "BUILT_IN_FROB_RETURN_ADDR", value: 456, isUnsigned: true)
!1096 = !DIEnumerator(name: "BUILT_IN_GETTEXT", value: 457, isUnsigned: true)
!1097 = !DIEnumerator(name: "BUILT_IN_IMAXABS", value: 458, isUnsigned: true)
!1098 = !DIEnumerator(name: "BUILT_IN_INIT_DWARF_REG_SIZES", value: 459, isUnsigned: true)
!1099 = !DIEnumerator(name: "BUILT_IN_FINITE", value: 460, isUnsigned: true)
!1100 = !DIEnumerator(name: "BUILT_IN_FINITEF", value: 461, isUnsigned: true)
!1101 = !DIEnumerator(name: "BUILT_IN_FINITEL", value: 462, isUnsigned: true)
!1102 = !DIEnumerator(name: "BUILT_IN_FINITED32", value: 463, isUnsigned: true)
!1103 = !DIEnumerator(name: "BUILT_IN_FINITED64", value: 464, isUnsigned: true)
!1104 = !DIEnumerator(name: "BUILT_IN_FINITED128", value: 465, isUnsigned: true)
!1105 = !DIEnumerator(name: "BUILT_IN_FPCLASSIFY", value: 466, isUnsigned: true)
!1106 = !DIEnumerator(name: "BUILT_IN_ISFINITE", value: 467, isUnsigned: true)
!1107 = !DIEnumerator(name: "BUILT_IN_ISINF_SIGN", value: 468, isUnsigned: true)
!1108 = !DIEnumerator(name: "BUILT_IN_ISINF", value: 469, isUnsigned: true)
!1109 = !DIEnumerator(name: "BUILT_IN_ISINFF", value: 470, isUnsigned: true)
!1110 = !DIEnumerator(name: "BUILT_IN_ISINFL", value: 471, isUnsigned: true)
!1111 = !DIEnumerator(name: "BUILT_IN_ISINFD32", value: 472, isUnsigned: true)
!1112 = !DIEnumerator(name: "BUILT_IN_ISINFD64", value: 473, isUnsigned: true)
!1113 = !DIEnumerator(name: "BUILT_IN_ISINFD128", value: 474, isUnsigned: true)
!1114 = !DIEnumerator(name: "BUILT_IN_ISNAN", value: 475, isUnsigned: true)
!1115 = !DIEnumerator(name: "BUILT_IN_ISNANF", value: 476, isUnsigned: true)
!1116 = !DIEnumerator(name: "BUILT_IN_ISNANL", value: 477, isUnsigned: true)
!1117 = !DIEnumerator(name: "BUILT_IN_ISNAND32", value: 478, isUnsigned: true)
!1118 = !DIEnumerator(name: "BUILT_IN_ISNAND64", value: 479, isUnsigned: true)
!1119 = !DIEnumerator(name: "BUILT_IN_ISNAND128", value: 480, isUnsigned: true)
!1120 = !DIEnumerator(name: "BUILT_IN_ISNORMAL", value: 481, isUnsigned: true)
!1121 = !DIEnumerator(name: "BUILT_IN_ISGREATER", value: 482, isUnsigned: true)
!1122 = !DIEnumerator(name: "BUILT_IN_ISGREATEREQUAL", value: 483, isUnsigned: true)
!1123 = !DIEnumerator(name: "BUILT_IN_ISLESS", value: 484, isUnsigned: true)
!1124 = !DIEnumerator(name: "BUILT_IN_ISLESSEQUAL", value: 485, isUnsigned: true)
!1125 = !DIEnumerator(name: "BUILT_IN_ISLESSGREATER", value: 486, isUnsigned: true)
!1126 = !DIEnumerator(name: "BUILT_IN_ISUNORDERED", value: 487, isUnsigned: true)
!1127 = !DIEnumerator(name: "BUILT_IN_LABS", value: 488, isUnsigned: true)
!1128 = !DIEnumerator(name: "BUILT_IN_LLABS", value: 489, isUnsigned: true)
!1129 = !DIEnumerator(name: "BUILT_IN_LONGJMP", value: 490, isUnsigned: true)
!1130 = !DIEnumerator(name: "BUILT_IN_MALLOC", value: 491, isUnsigned: true)
!1131 = !DIEnumerator(name: "BUILT_IN_NEXT_ARG", value: 492, isUnsigned: true)
!1132 = !DIEnumerator(name: "BUILT_IN_PARITY", value: 493, isUnsigned: true)
!1133 = !DIEnumerator(name: "BUILT_IN_PARITYIMAX", value: 494, isUnsigned: true)
!1134 = !DIEnumerator(name: "BUILT_IN_PARITYL", value: 495, isUnsigned: true)
!1135 = !DIEnumerator(name: "BUILT_IN_PARITYLL", value: 496, isUnsigned: true)
!1136 = !DIEnumerator(name: "BUILT_IN_POPCOUNT", value: 497, isUnsigned: true)
!1137 = !DIEnumerator(name: "BUILT_IN_POPCOUNTIMAX", value: 498, isUnsigned: true)
!1138 = !DIEnumerator(name: "BUILT_IN_POPCOUNTL", value: 499, isUnsigned: true)
!1139 = !DIEnumerator(name: "BUILT_IN_POPCOUNTLL", value: 500, isUnsigned: true)
!1140 = !DIEnumerator(name: "BUILT_IN_PREFETCH", value: 501, isUnsigned: true)
!1141 = !DIEnumerator(name: "BUILT_IN_REALLOC", value: 502, isUnsigned: true)
!1142 = !DIEnumerator(name: "BUILT_IN_RETURN", value: 503, isUnsigned: true)
!1143 = !DIEnumerator(name: "BUILT_IN_RETURN_ADDRESS", value: 504, isUnsigned: true)
!1144 = !DIEnumerator(name: "BUILT_IN_SAVEREGS", value: 505, isUnsigned: true)
!1145 = !DIEnumerator(name: "BUILT_IN_SETJMP", value: 506, isUnsigned: true)
!1146 = !DIEnumerator(name: "BUILT_IN_STRFMON", value: 507, isUnsigned: true)
!1147 = !DIEnumerator(name: "BUILT_IN_STRFTIME", value: 508, isUnsigned: true)
!1148 = !DIEnumerator(name: "BUILT_IN_TRAP", value: 509, isUnsigned: true)
!1149 = !DIEnumerator(name: "BUILT_IN_UNREACHABLE", value: 510, isUnsigned: true)
!1150 = !DIEnumerator(name: "BUILT_IN_UNWIND_INIT", value: 511, isUnsigned: true)
!1151 = !DIEnumerator(name: "BUILT_IN_UPDATE_SETJMP_BUF", value: 512, isUnsigned: true)
!1152 = !DIEnumerator(name: "BUILT_IN_VA_COPY", value: 513, isUnsigned: true)
!1153 = !DIEnumerator(name: "BUILT_IN_VA_END", value: 514, isUnsigned: true)
!1154 = !DIEnumerator(name: "BUILT_IN_VA_START", value: 515, isUnsigned: true)
!1155 = !DIEnumerator(name: "BUILT_IN_VA_ARG_PACK", value: 516, isUnsigned: true)
!1156 = !DIEnumerator(name: "BUILT_IN_VA_ARG_PACK_LEN", value: 517, isUnsigned: true)
!1157 = !DIEnumerator(name: "BUILT_IN__EXIT", value: 518, isUnsigned: true)
!1158 = !DIEnumerator(name: "BUILT_IN__EXIT2", value: 519, isUnsigned: true)
!1159 = !DIEnumerator(name: "BUILT_IN_INIT_TRAMPOLINE", value: 520, isUnsigned: true)
!1160 = !DIEnumerator(name: "BUILT_IN_ADJUST_TRAMPOLINE", value: 521, isUnsigned: true)
!1161 = !DIEnumerator(name: "BUILT_IN_NONLOCAL_GOTO", value: 522, isUnsigned: true)
!1162 = !DIEnumerator(name: "BUILT_IN_SETJMP_SETUP", value: 523, isUnsigned: true)
!1163 = !DIEnumerator(name: "BUILT_IN_SETJMP_DISPATCHER", value: 524, isUnsigned: true)
!1164 = !DIEnumerator(name: "BUILT_IN_SETJMP_RECEIVER", value: 525, isUnsigned: true)
!1165 = !DIEnumerator(name: "BUILT_IN_STACK_SAVE", value: 526, isUnsigned: true)
!1166 = !DIEnumerator(name: "BUILT_IN_STACK_RESTORE", value: 527, isUnsigned: true)
!1167 = !DIEnumerator(name: "BUILT_IN_OBJECT_SIZE", value: 528, isUnsigned: true)
!1168 = !DIEnumerator(name: "BUILT_IN_MEMCPY_CHK", value: 529, isUnsigned: true)
!1169 = !DIEnumerator(name: "BUILT_IN_MEMMOVE_CHK", value: 530, isUnsigned: true)
!1170 = !DIEnumerator(name: "BUILT_IN_MEMPCPY_CHK", value: 531, isUnsigned: true)
!1171 = !DIEnumerator(name: "BUILT_IN_MEMSET_CHK", value: 532, isUnsigned: true)
!1172 = !DIEnumerator(name: "BUILT_IN_STPCPY_CHK", value: 533, isUnsigned: true)
!1173 = !DIEnumerator(name: "BUILT_IN_STRCAT_CHK", value: 534, isUnsigned: true)
!1174 = !DIEnumerator(name: "BUILT_IN_STRCPY_CHK", value: 535, isUnsigned: true)
!1175 = !DIEnumerator(name: "BUILT_IN_STRNCAT_CHK", value: 536, isUnsigned: true)
!1176 = !DIEnumerator(name: "BUILT_IN_STRNCPY_CHK", value: 537, isUnsigned: true)
!1177 = !DIEnumerator(name: "BUILT_IN_SNPRINTF_CHK", value: 538, isUnsigned: true)
!1178 = !DIEnumerator(name: "BUILT_IN_SPRINTF_CHK", value: 539, isUnsigned: true)
!1179 = !DIEnumerator(name: "BUILT_IN_VSNPRINTF_CHK", value: 540, isUnsigned: true)
!1180 = !DIEnumerator(name: "BUILT_IN_VSPRINTF_CHK", value: 541, isUnsigned: true)
!1181 = !DIEnumerator(name: "BUILT_IN_FPRINTF_CHK", value: 542, isUnsigned: true)
!1182 = !DIEnumerator(name: "BUILT_IN_PRINTF_CHK", value: 543, isUnsigned: true)
!1183 = !DIEnumerator(name: "BUILT_IN_VFPRINTF_CHK", value: 544, isUnsigned: true)
!1184 = !DIEnumerator(name: "BUILT_IN_VPRINTF_CHK", value: 545, isUnsigned: true)
!1185 = !DIEnumerator(name: "BUILT_IN_PROFILE_FUNC_ENTER", value: 546, isUnsigned: true)
!1186 = !DIEnumerator(name: "BUILT_IN_PROFILE_FUNC_EXIT", value: 547, isUnsigned: true)
!1187 = !DIEnumerator(name: "BUILT_IN_EMUTLS_GET_ADDRESS", value: 548, isUnsigned: true)
!1188 = !DIEnumerator(name: "BUILT_IN_EMUTLS_REGISTER_COMMON", value: 549, isUnsigned: true)
!1189 = !DIEnumerator(name: "BUILT_IN_UNWIND_RESUME", value: 550, isUnsigned: true)
!1190 = !DIEnumerator(name: "BUILT_IN_CXA_END_CLEANUP", value: 551, isUnsigned: true)
!1191 = !DIEnumerator(name: "BUILT_IN_EH_POINTER", value: 552, isUnsigned: true)
!1192 = !DIEnumerator(name: "BUILT_IN_EH_FILTER", value: 553, isUnsigned: true)
!1193 = !DIEnumerator(name: "BUILT_IN_EH_COPY_VALUES", value: 554, isUnsigned: true)
!1194 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_N", value: 555, isUnsigned: true)
!1195 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_1", value: 556, isUnsigned: true)
!1196 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_2", value: 557, isUnsigned: true)
!1197 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_4", value: 558, isUnsigned: true)
!1198 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_8", value: 559, isUnsigned: true)
!1199 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_16", value: 560, isUnsigned: true)
!1200 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_N", value: 561, isUnsigned: true)
!1201 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_1", value: 562, isUnsigned: true)
!1202 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_2", value: 563, isUnsigned: true)
!1203 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_4", value: 564, isUnsigned: true)
!1204 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_8", value: 565, isUnsigned: true)
!1205 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_16", value: 566, isUnsigned: true)
!1206 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_N", value: 567, isUnsigned: true)
!1207 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_1", value: 568, isUnsigned: true)
!1208 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_2", value: 569, isUnsigned: true)
!1209 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_4", value: 570, isUnsigned: true)
!1210 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_8", value: 571, isUnsigned: true)
!1211 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_16", value: 572, isUnsigned: true)
!1212 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_N", value: 573, isUnsigned: true)
!1213 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_1", value: 574, isUnsigned: true)
!1214 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_2", value: 575, isUnsigned: true)
!1215 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_4", value: 576, isUnsigned: true)
!1216 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_8", value: 577, isUnsigned: true)
!1217 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_16", value: 578, isUnsigned: true)
!1218 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_N", value: 579, isUnsigned: true)
!1219 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_1", value: 580, isUnsigned: true)
!1220 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_2", value: 581, isUnsigned: true)
!1221 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_4", value: 582, isUnsigned: true)
!1222 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_8", value: 583, isUnsigned: true)
!1223 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_16", value: 584, isUnsigned: true)
!1224 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_N", value: 585, isUnsigned: true)
!1225 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_1", value: 586, isUnsigned: true)
!1226 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_2", value: 587, isUnsigned: true)
!1227 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_4", value: 588, isUnsigned: true)
!1228 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_8", value: 589, isUnsigned: true)
!1229 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_16", value: 590, isUnsigned: true)
!1230 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_N", value: 591, isUnsigned: true)
!1231 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_1", value: 592, isUnsigned: true)
!1232 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_2", value: 593, isUnsigned: true)
!1233 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_4", value: 594, isUnsigned: true)
!1234 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_8", value: 595, isUnsigned: true)
!1235 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_16", value: 596, isUnsigned: true)
!1236 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_N", value: 597, isUnsigned: true)
!1237 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_1", value: 598, isUnsigned: true)
!1238 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_2", value: 599, isUnsigned: true)
!1239 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_4", value: 600, isUnsigned: true)
!1240 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_8", value: 601, isUnsigned: true)
!1241 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_16", value: 602, isUnsigned: true)
!1242 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_N", value: 603, isUnsigned: true)
!1243 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_1", value: 604, isUnsigned: true)
!1244 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_2", value: 605, isUnsigned: true)
!1245 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_4", value: 606, isUnsigned: true)
!1246 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_8", value: 607, isUnsigned: true)
!1247 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_16", value: 608, isUnsigned: true)
!1248 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_N", value: 609, isUnsigned: true)
!1249 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_1", value: 610, isUnsigned: true)
!1250 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_2", value: 611, isUnsigned: true)
!1251 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_4", value: 612, isUnsigned: true)
!1252 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_8", value: 613, isUnsigned: true)
!1253 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_16", value: 614, isUnsigned: true)
!1254 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_N", value: 615, isUnsigned: true)
!1255 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_1", value: 616, isUnsigned: true)
!1256 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_2", value: 617, isUnsigned: true)
!1257 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_4", value: 618, isUnsigned: true)
!1258 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_8", value: 619, isUnsigned: true)
!1259 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_16", value: 620, isUnsigned: true)
!1260 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_N", value: 621, isUnsigned: true)
!1261 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_1", value: 622, isUnsigned: true)
!1262 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_2", value: 623, isUnsigned: true)
!1263 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_4", value: 624, isUnsigned: true)
!1264 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_8", value: 625, isUnsigned: true)
!1265 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_16", value: 626, isUnsigned: true)
!1266 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_N", value: 627, isUnsigned: true)
!1267 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_1", value: 628, isUnsigned: true)
!1268 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_2", value: 629, isUnsigned: true)
!1269 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_4", value: 630, isUnsigned: true)
!1270 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_8", value: 631, isUnsigned: true)
!1271 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_16", value: 632, isUnsigned: true)
!1272 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_N", value: 633, isUnsigned: true)
!1273 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_1", value: 634, isUnsigned: true)
!1274 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_2", value: 635, isUnsigned: true)
!1275 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_4", value: 636, isUnsigned: true)
!1276 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_8", value: 637, isUnsigned: true)
!1277 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_16", value: 638, isUnsigned: true)
!1278 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_N", value: 639, isUnsigned: true)
!1279 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_1", value: 640, isUnsigned: true)
!1280 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_2", value: 641, isUnsigned: true)
!1281 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_4", value: 642, isUnsigned: true)
!1282 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_8", value: 643, isUnsigned: true)
!1283 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_16", value: 644, isUnsigned: true)
!1284 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_N", value: 645, isUnsigned: true)
!1285 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_1", value: 646, isUnsigned: true)
!1286 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_2", value: 647, isUnsigned: true)
!1287 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_4", value: 648, isUnsigned: true)
!1288 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_8", value: 649, isUnsigned: true)
!1289 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_16", value: 650, isUnsigned: true)
!1290 = !DIEnumerator(name: "BUILT_IN_SYNCHRONIZE", value: 651, isUnsigned: true)
!1291 = !DIEnumerator(name: "BUILT_IN_OMP_GET_THREAD_NUM", value: 652, isUnsigned: true)
!1292 = !DIEnumerator(name: "BUILT_IN_OMP_GET_NUM_THREADS", value: 653, isUnsigned: true)
!1293 = !DIEnumerator(name: "BUILT_IN_GOMP_ATOMIC_START", value: 654, isUnsigned: true)
!1294 = !DIEnumerator(name: "BUILT_IN_GOMP_ATOMIC_END", value: 655, isUnsigned: true)
!1295 = !DIEnumerator(name: "BUILT_IN_GOMP_BARRIER", value: 656, isUnsigned: true)
!1296 = !DIEnumerator(name: "BUILT_IN_GOMP_TASKWAIT", value: 657, isUnsigned: true)
!1297 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_START", value: 658, isUnsigned: true)
!1298 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_END", value: 659, isUnsigned: true)
!1299 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_NAME_START", value: 660, isUnsigned: true)
!1300 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_NAME_END", value: 661, isUnsigned: true)
!1301 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_STATIC_START", value: 662, isUnsigned: true)
!1302 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_DYNAMIC_START", value: 663, isUnsigned: true)
!1303 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_GUIDED_START", value: 664, isUnsigned: true)
!1304 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_RUNTIME_START", value: 665, isUnsigned: true)
!1305 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_STATIC_START", value: 666, isUnsigned: true)
!1306 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_START", value: 667, isUnsigned: true)
!1307 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_START", value: 668, isUnsigned: true)
!1308 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_START", value: 669, isUnsigned: true)
!1309 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_STATIC_NEXT", value: 670, isUnsigned: true)
!1310 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_DYNAMIC_NEXT", value: 671, isUnsigned: true)
!1311 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_GUIDED_NEXT", value: 672, isUnsigned: true)
!1312 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_RUNTIME_NEXT", value: 673, isUnsigned: true)
!1313 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_STATIC_NEXT", value: 674, isUnsigned: true)
!1314 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_NEXT", value: 675, isUnsigned: true)
!1315 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_NEXT", value: 676, isUnsigned: true)
!1316 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_NEXT", value: 677, isUnsigned: true)
!1317 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_STATIC_START", value: 678, isUnsigned: true)
!1318 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_START", value: 679, isUnsigned: true)
!1319 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_GUIDED_START", value: 680, isUnsigned: true)
!1320 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_RUNTIME_START", value: 681, isUnsigned: true)
!1321 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_START", value: 682, isUnsigned: true)
!1322 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_START", value: 683, isUnsigned: true)
!1323 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_START", value: 684, isUnsigned: true)
!1324 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_START", value: 685, isUnsigned: true)
!1325 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_STATIC_NEXT", value: 686, isUnsigned: true)
!1326 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_NEXT", value: 687, isUnsigned: true)
!1327 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_GUIDED_NEXT", value: 688, isUnsigned: true)
!1328 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_RUNTIME_NEXT", value: 689, isUnsigned: true)
!1329 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_NEXT", value: 690, isUnsigned: true)
!1330 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_NEXT", value: 691, isUnsigned: true)
!1331 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_NEXT", value: 692, isUnsigned: true)
!1332 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_NEXT", value: 693, isUnsigned: true)
!1333 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START", value: 694, isUnsigned: true)
!1334 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_DYNAMIC_START", value: 695, isUnsigned: true)
!1335 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_GUIDED_START", value: 696, isUnsigned: true)
!1336 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_RUNTIME_START", value: 697, isUnsigned: true)
!1337 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_END", value: 698, isUnsigned: true)
!1338 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_END_NOWAIT", value: 699, isUnsigned: true)
!1339 = !DIEnumerator(name: "BUILT_IN_GOMP_ORDERED_START", value: 700, isUnsigned: true)
!1340 = !DIEnumerator(name: "BUILT_IN_GOMP_ORDERED_END", value: 701, isUnsigned: true)
!1341 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_START", value: 702, isUnsigned: true)
!1342 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_END", value: 703, isUnsigned: true)
!1343 = !DIEnumerator(name: "BUILT_IN_GOMP_TASK", value: 704, isUnsigned: true)
!1344 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_START", value: 705, isUnsigned: true)
!1345 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_NEXT", value: 706, isUnsigned: true)
!1346 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_SECTIONS_START", value: 707, isUnsigned: true)
!1347 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_END", value: 708, isUnsigned: true)
!1348 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_END_NOWAIT", value: 709, isUnsigned: true)
!1349 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_START", value: 710, isUnsigned: true)
!1350 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_COPY_START", value: 711, isUnsigned: true)
!1351 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_COPY_END", value: 712, isUnsigned: true)
!1352 = !DIEnumerator(name: "BUILT_IN_COMPLEX_MUL_MIN", value: 713, isUnsigned: true)
!1353 = !DIEnumerator(name: "BUILT_IN_COMPLEX_MUL_MAX", value: 716, isUnsigned: true)
!1354 = !DIEnumerator(name: "BUILT_IN_COMPLEX_DIV_MIN", value: 717, isUnsigned: true)
!1355 = !DIEnumerator(name: "BUILT_IN_COMPLEX_DIV_MAX", value: 720, isUnsigned: true)
!1356 = !DIEnumerator(name: "END_BUILTINS", value: 721, isUnsigned: true)
!1357 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !1358, line: 36, baseType: !7, size: 32, elements: !1359)
!1358 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378}
!1360 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!1361 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!1362 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!1363 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!1364 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!1365 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!1366 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!1367 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!1368 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!1369 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!1370 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!1371 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!1372 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!1373 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!1374 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!1375 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!1376 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!1377 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!1378 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!1379 = !{!1380, !1381, !1382, !1383, !1386, !1387, !1389, !366, !7, !1714, !2684, !1748, !1384, !625, !2686, !2699, !2704, !2709, !1357, !637, !1391, !2710, !1516}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1382 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !1390, line: 56, baseType: !1391)
!1390 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !1393)
!1393 = !{!1394, !1427, !1433, !1446, !1465, !1476, !1481, !1490, !1496, !1509, !1521, !1559, !2017, !2045, !2062, !2063, !2068, !2077, !2083, !2088, !2092, !2096, !2335, !2382, !2388, !2394, !2401, !2414, !2428, !2445, !2457, !2479, !2494, !2666}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1392, file: !334, line: 3372, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1395, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !1395, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !1395, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !1395, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !1395, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !1395, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !1395, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !1395, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !1395, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !1395, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !1395, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !1395, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !1395, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !1395, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !1395, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !1395, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !1395, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !1395, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1395, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1395, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1395, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1395, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1395, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1395, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1395, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1395, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !1395, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !1395, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !1395, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1395, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1392, file: !334, line: 3373, baseType: !1428, size: 192)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !1429)
!1429 = !{!1430, !1431, !1432}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1428, file: !334, line: 403, baseType: !1395, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1428, file: !334, line: 404, baseType: !1389, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1428, file: !334, line: 405, baseType: !1389, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1392, file: !334, line: 3374, baseType: !1434, size: 320)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1434, file: !334, line: 1385, baseType: !1428, size: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1434, file: !334, line: 1386, baseType: !1438, size: 128, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !1439, line: 58, baseType: !1440)
!1439 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1439, line: 54, size: 128, elements: !1441)
!1441 = !{!1442, !1444}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1440, file: !1439, line: 56, baseType: !1443, size: 64)
!1443 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1440, file: !1439, line: 57, baseType: !1445, size: 64, offset: 64)
!1445 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !1392, file: !334, line: 3375, baseType: !1447, size: 256)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1447, file: !334, line: 1398, baseType: !1428, size: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !1447, file: !334, line: 1399, baseType: !1451, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !1453, line: 52, size: 256, elements: !1454)
!1453 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460, !1461}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1452, file: !1453, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !1452, file: !1453, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1452, file: !1453, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !1452, file: !1453, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1452, file: !1453, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !1452, file: !1453, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1452, file: !1453, line: 62, baseType: !1462, size: 192, offset: 64)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1443, size: 192, elements: !1463)
!1463 = !{!1464}
!1464 = !DISubrange(count: 3)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !1392, file: !334, line: 3376, baseType: !1466, size: 256)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1466, file: !334, line: 1409, baseType: !1428, size: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1466, file: !334, line: 1410, baseType: !1470, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !1472, line: 27, size: 192, elements: !1473)
!1472 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1471, file: !1472, line: 29, baseType: !1438, size: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1471, file: !1472, line: 30, baseType: !189, size: 32, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1392, file: !334, line: 3377, baseType: !1477, size: 256)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1477, file: !334, line: 1438, baseType: !1428, size: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1477, file: !334, line: 1439, baseType: !1389, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1392, file: !334, line: 3378, baseType: !1482, size: 256)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !1483)
!1483 = !{!1484, !1485, !1486}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1482, file: !334, line: 1419, baseType: !1428, size: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1482, file: !334, line: 1420, baseType: !1382, size: 32, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1482, file: !334, line: 1421, baseType: !1487, size: 8, offset: 224)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1385, size: 8, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 1)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !1392, file: !334, line: 3379, baseType: !1491, size: 320)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !1492)
!1492 = !{!1493, !1494, !1495}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1491, file: !334, line: 1429, baseType: !1428, size: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1491, file: !334, line: 1430, baseType: !1389, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1491, file: !334, line: 1431, baseType: !1389, size: 64, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !1392, file: !334, line: 3380, baseType: !1497, size: 320)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1497, file: !334, line: 1461, baseType: !1428, size: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1497, file: !334, line: 1462, baseType: !1501, size: 128, offset: 192)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1502, line: 31, size: 128, elements: !1503)
!1502 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1503 = !{!1504, !1507, !1508}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1501, file: !1502, line: 32, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1381)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1501, file: !1502, line: 33, baseType: !7, size: 32, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1501, file: !1502, line: 34, baseType: !7, size: 32, offset: 96)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !1392, file: !334, line: 3381, baseType: !1510, size: 384)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !1511)
!1511 = !{!1512, !1513, !1518, !1519, !1520}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1510, file: !334, line: 2508, baseType: !1428, size: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1510, file: !334, line: 2509, baseType: !1514, size: 32, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1515, line: 58, baseType: !1516)
!1515 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1517, line: 44, baseType: !7)
!1517 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1510, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1510, file: !334, line: 2511, baseType: !1389, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1510, file: !334, line: 2512, baseType: !1389, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !1392, file: !334, line: 3382, baseType: !1522, size: 896)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !1523)
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1522, file: !334, line: 2653, baseType: !1510, size: 384)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1522, file: !334, line: 2654, baseType: !1389, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1522, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1522, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1522, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1522, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1522, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1522, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1522, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1522, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1522, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1522, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1522, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1522, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1522, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1522, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1522, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1522, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1522, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1522, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1522, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1522, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1522, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1522, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1522, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1522, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1522, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1522, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1522, file: !334, line: 2705, baseType: !1389, size: 64, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1522, file: !334, line: 2706, baseType: !1389, size: 64, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1522, file: !334, line: 2707, baseType: !1389, size: 64, offset: 704)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1522, file: !334, line: 2708, baseType: !1389, size: 64, offset: 768)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1522, file: !334, line: 2711, baseType: !1557, size: 64, offset: 832)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !1392, file: !334, line: 3383, baseType: !1560, size: 960)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1560, file: !334, line: 2757, baseType: !1522, size: 896)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1560, file: !334, line: 2758, baseType: !1564, size: 64, offset: 896)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !1390, line: 50, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !1567, line: 240, size: 384, elements: !1568)
!1567 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1566, file: !1567, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1566, file: !1567, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !1566, file: !1567, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !1566, file: !1567, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !1566, file: !1567, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !1566, file: !1567, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !1566, file: !1567, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1566, file: !1567, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !1566, file: !1567, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !1566, file: !1567, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1566, file: !1567, line: 321, baseType: !1580, size: 320, offset: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !1567, line: 315, size: 320, elements: !1581)
!1581 = !{!1582, !1984, !1986, !2015, !2016}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1580, file: !1567, line: 316, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1584, size: 64, elements: !1488)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !1567, line: 183, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !1567, line: 166, size: 64, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1590, !1591, !1599, !1600, !1612, !1615, !1675, !1676, !1961, !1974, !1981}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !1585, file: !1567, line: 168, baseType: !1382, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !1585, file: !1567, line: 169, baseType: !7, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !1585, file: !1567, line: 170, baseType: !1387, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !1585, file: !1567, line: 171, baseType: !1564, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !1585, file: !1567, line: 172, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !1390, line: 53, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !1567, line: 359, size: 128, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !1594, file: !1567, line: 360, baseType: !1382, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1594, file: !1567, line: 361, baseType: !1598, size: 64, offset: 64)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1564, size: 64, elements: !1488)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !1585, file: !1567, line: 173, baseType: !189, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !1585, file: !1567, line: 174, baseType: !1601, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !1567, line: 133, baseType: !1602)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1567, line: 115, size: 32, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !1602, file: !1567, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !1602, file: !1567, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !1602, file: !1567, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !1602, file: !1567, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !1602, file: !1567, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !1602, file: !1567, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !1602, file: !1567, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1602, file: !1567, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !1585, file: !1567, line: 175, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !1567, line: 175, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !1585, file: !1567, line: 176, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1618, line: 75, size: 256, elements: !1619)
!1618 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1619 = !{!1620, !1634, !1635, !1636}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1617, file: !1618, line: 76, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1618, line: 68, baseType: !1623)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1618, line: 63, size: 320, elements: !1624)
!1624 = !{!1625, !1627, !1628, !1629}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1623, file: !1618, line: 64, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1623, file: !1618, line: 65, baseType: !1626, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1623, file: !1618, line: 66, baseType: !7, size: 32, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1623, file: !1618, line: 67, baseType: !1630, size: 128, offset: 192)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1631, size: 128, elements: !1632)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1618, line: 29, baseType: !1443)
!1632 = !{!1633}
!1633 = !DISubrange(count: 2)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1617, file: !1618, line: 77, baseType: !1621, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1617, file: !1618, line: 78, baseType: !7, size: 32, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1617, file: !1618, line: 79, baseType: !1637, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1618, line: 49, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1618, line: 45, size: 832, elements: !1640)
!1640 = !{!1641, !1642, !1643}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1639, file: !1618, line: 46, baseType: !1626, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1639, file: !1618, line: 47, baseType: !1616, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1639, file: !1618, line: 48, baseType: !1644, size: 704, offset: 128)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1645, line: 164, size: 704, elements: !1646)
!1645 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1646 = !{!1647, !1648, !1658, !1659, !1660, !1661, !1662, !1663, !1667, !1671, !1672, !1673, !1674}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1644, file: !1645, line: 166, baseType: !1445, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1644, file: !1645, line: 167, baseType: !1649, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1645, line: 157, size: 192, elements: !1651)
!1651 = !{!1652, !1653, !1654}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1650, file: !1645, line: 159, baseType: !1384, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1650, file: !1645, line: 160, baseType: !1649, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1650, file: !1645, line: 161, baseType: !1655, size: 32, offset: 128)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1385, size: 32, elements: !1656)
!1656 = !{!1657}
!1657 = !DISubrange(count: 4)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1644, file: !1645, line: 168, baseType: !1384, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1644, file: !1645, line: 169, baseType: !1384, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1644, file: !1645, line: 170, baseType: !1384, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1644, file: !1645, line: 171, baseType: !1445, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1644, file: !1645, line: 172, baseType: !1382, size: 32, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1644, file: !1645, line: 176, baseType: !1664, size: 64, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!1649, !1386, !1445}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1644, file: !1645, line: 177, baseType: !1668, size: 64, offset: 512)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1386, !1649}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1644, file: !1645, line: 178, baseType: !1386, size: 64, offset: 576)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1644, file: !1645, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1644, file: !1645, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1644, file: !1645, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !1585, file: !1567, line: 177, baseType: !1389, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !1585, file: !1567, line: 178, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !1679)
!1679 = !{!1680, !1926, !1927, !1928, !1931, !1935, !1936, !1937, !1955, !1956, !1957, !1958, !1959, !1960}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1678, file: !318, line: 219, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !1683)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !1684)
!1684 = !{!1685}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1683, file: !318, line: 151, baseType: !1686, size: 128)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !1687)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !1688)
!1688 = !{!1689, !1690, !1691}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1687, file: !318, line: 150, baseType: !7, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1687, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1687, file: !318, line: 150, baseType: !1692, size: 64, offset: 64)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1693, size: 64, elements: !1488)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !1390, line: 108, baseType: !1694)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !1696)
!1696 = !{!1697, !1698, !1699, !1918, !1919, !1920, !1921, !1922, !1923, !1924}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1695, file: !318, line: 124, baseType: !1677, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1695, file: !318, line: 125, baseType: !1677, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1695, file: !318, line: 131, baseType: !1700, size: 64, offset: 128)
!1700 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !1701)
!1701 = !{!1702, !1917}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1700, file: !318, line: 129, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !1390, line: 66, baseType: !1704)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !561, line: 143, size: 192, elements: !1706)
!1706 = !{!1707, !1915, !1916}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1705, file: !561, line: 145, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !1390, line: 69, baseType: !1709)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !561, line: 136, size: 192, elements: !1711)
!1711 = !{!1712, !1913, !1914}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1710, file: !561, line: 137, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !1390, line: 58, baseType: !1714)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !561, line: 737, size: 768, elements: !1716)
!1716 = !{!1717, !1734, !1768, !1774, !1779, !1784, !1791, !1797, !1803, !1808, !1822, !1827, !1833, !1838, !1848, !1853, !1871, !1878, !1885, !1891, !1896, !1902, !1908}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1715, file: !561, line: 738, baseType: !1718, size: 256)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !561, line: 271, size: 256, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1718, file: !561, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !1718, file: !561, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1718, file: !561, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !1718, file: !561, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !1718, file: !561, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1718, file: !561, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !1718, file: !561, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1718, file: !561, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1718, file: !561, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1718, file: !561, line: 312, baseType: !7, size: 32, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1718, file: !561, line: 316, baseType: !1514, size: 32, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !1718, file: !561, line: 319, baseType: !7, size: 32, offset: 96)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1718, file: !561, line: 323, baseType: !1677, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1718, file: !561, line: 327, baseType: !1389, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !1715, file: !561, line: 739, baseType: !1735, size: 448)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !561, line: 350, size: 448, elements: !1736)
!1736 = !{!1737, !1766}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1735, file: !561, line: 353, baseType: !1738, size: 384)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !561, line: 333, size: 384, elements: !1739)
!1739 = !{!1740, !1741, !1749}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1738, file: !561, line: 336, baseType: !1718, size: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1738, file: !561, line: 343, baseType: !1742, size: 64, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1744, line: 37, size: 128, elements: !1745)
!1744 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1745 = !{!1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1743, file: !1744, line: 39, baseType: !1742, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1743, file: !1744, line: 40, baseType: !1748, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1738, file: !561, line: 344, baseType: !1750, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1744, line: 45, size: 320, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1751, file: !1744, line: 47, baseType: !1750, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1751, file: !1744, line: 48, baseType: !1755, size: 256, offset: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !1756)
!1756 = !{!1757, !1759, !1760, !1765}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1755, file: !334, line: 1884, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1755, file: !334, line: 1885, baseType: !1758, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1755, file: !334, line: 1891, baseType: !1761, size: 64, offset: 128)
!1761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1755, file: !334, line: 1891, size: 64, elements: !1762)
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1761, file: !334, line: 1891, baseType: !1713, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1761, file: !334, line: 1891, baseType: !1389, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1755, file: !334, line: 1892, baseType: !1748, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1735, file: !561, line: 359, baseType: !1767, size: 64, offset: 384)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1389, size: 64, elements: !1488)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !1715, file: !561, line: 740, baseType: !1769, size: 512)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !561, line: 365, size: 512, elements: !1770)
!1770 = !{!1771, !1772, !1773}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1769, file: !561, line: 368, baseType: !1738, size: 384)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1769, file: !561, line: 373, baseType: !1389, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1769, file: !561, line: 374, baseType: !1389, size: 64, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !1715, file: !561, line: 741, baseType: !1775, size: 576)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !561, line: 380, size: 576, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1775, file: !561, line: 383, baseType: !1769, size: 512)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1775, file: !561, line: 389, baseType: !1767, size: 64, offset: 512)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1715, file: !561, line: 742, baseType: !1780, size: 320)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !561, line: 395, size: 320, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1780, file: !561, line: 397, baseType: !1718, size: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1780, file: !561, line: 400, baseType: !1703, size: 64, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !1715, file: !561, line: 743, baseType: !1785, size: 448)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !561, line: 406, size: 448, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1790}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1785, file: !561, line: 408, baseType: !1718, size: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1785, file: !561, line: 412, baseType: !1389, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1785, file: !561, line: 420, baseType: !1389, size: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1785, file: !561, line: 423, baseType: !1703, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !1715, file: !561, line: 744, baseType: !1792, size: 384)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !561, line: 429, size: 384, elements: !1793)
!1793 = !{!1794, !1795, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1792, file: !561, line: 431, baseType: !1718, size: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1792, file: !561, line: 434, baseType: !1389, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1792, file: !561, line: 437, baseType: !1703, size: 64, offset: 320)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !1715, file: !561, line: 745, baseType: !1798, size: 384)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !561, line: 443, size: 384, elements: !1799)
!1799 = !{!1800, !1801, !1802}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1798, file: !561, line: 445, baseType: !1718, size: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1798, file: !561, line: 449, baseType: !1389, size: 64, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1798, file: !561, line: 453, baseType: !1703, size: 64, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !1715, file: !561, line: 746, baseType: !1804, size: 320)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !561, line: 459, size: 320, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1804, file: !561, line: 461, baseType: !1718, size: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1804, file: !561, line: 464, baseType: !1389, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !1715, file: !561, line: 747, baseType: !1809, size: 768)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !561, line: 469, size: 768, elements: !1810)
!1810 = !{!1811, !1812, !1813, !1814, !1815}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1809, file: !561, line: 471, baseType: !1718, size: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1809, file: !561, line: 474, baseType: !7, size: 32, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1809, file: !561, line: 475, baseType: !7, size: 32, offset: 288)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1809, file: !561, line: 478, baseType: !1389, size: 64, offset: 320)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1809, file: !561, line: 481, baseType: !1816, size: 384, offset: 384)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1817, size: 384, elements: !1488)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !334, line: 1917, size: 384, elements: !1818)
!1818 = !{!1819, !1820, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1817, file: !334, line: 1920, baseType: !1755, size: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1817, file: !334, line: 1921, baseType: !1389, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1817, file: !334, line: 1922, baseType: !1514, size: 32, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !1715, file: !561, line: 748, baseType: !1823, size: 320)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !561, line: 487, size: 320, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1823, file: !561, line: 490, baseType: !1718, size: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1823, file: !561, line: 494, baseType: !1382, size: 32, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !1715, file: !561, line: 749, baseType: !1828, size: 384)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !561, line: 500, size: 384, elements: !1829)
!1829 = !{!1830, !1831, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1828, file: !561, line: 502, baseType: !1718, size: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1828, file: !561, line: 506, baseType: !1703, size: 64, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1828, file: !561, line: 510, baseType: !1703, size: 64, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !1715, file: !561, line: 750, baseType: !1834, size: 320)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !561, line: 529, size: 320, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1834, file: !561, line: 531, baseType: !1718, size: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1834, file: !561, line: 540, baseType: !1703, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !1715, file: !561, line: 751, baseType: !1839, size: 704)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !561, line: 546, size: 704, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1839, file: !561, line: 549, baseType: !1769, size: 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1839, file: !561, line: 553, baseType: !1387, size: 64, offset: 512)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1839, file: !561, line: 557, baseType: !1381, size: 8, offset: 576)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1839, file: !561, line: 558, baseType: !1381, size: 8, offset: 584)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1839, file: !561, line: 559, baseType: !1381, size: 8, offset: 592)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1839, file: !561, line: 560, baseType: !1381, size: 8, offset: 600)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1839, file: !561, line: 566, baseType: !1767, size: 64, offset: 640)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !1715, file: !561, line: 752, baseType: !1849, size: 384)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !561, line: 571, size: 384, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1849, file: !561, line: 573, baseType: !1780, size: 320)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1849, file: !561, line: 577, baseType: !1389, size: 64, offset: 320)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !1715, file: !561, line: 753, baseType: !1854, size: 576)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !561, line: 600, size: 576, elements: !1855)
!1855 = !{!1856, !1857, !1858, !1861, !1870}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1854, file: !561, line: 602, baseType: !1780, size: 320)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1854, file: !561, line: 605, baseType: !1389, size: 64, offset: 320)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1854, file: !561, line: 609, baseType: !1859, size: 64, offset: 384)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1860, line: 46, baseType: !1443)
!1860 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1854, file: !561, line: 612, baseType: !1862, size: 64, offset: 448)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !561, line: 581, size: 320, elements: !1864)
!1864 = !{!1865, !1866, !1867, !1868, !1869}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1863, file: !561, line: 583, baseType: !366, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1863, file: !561, line: 586, baseType: !1389, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1863, file: !561, line: 589, baseType: !1389, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1863, file: !561, line: 592, baseType: !1389, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1863, file: !561, line: 595, baseType: !1389, size: 64, offset: 256)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1854, file: !561, line: 616, baseType: !1703, size: 64, offset: 512)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !1715, file: !561, line: 754, baseType: !1872, size: 512)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !561, line: 622, size: 512, elements: !1873)
!1873 = !{!1874, !1875, !1876, !1877}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1872, file: !561, line: 624, baseType: !1780, size: 320)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1872, file: !561, line: 628, baseType: !1389, size: 64, offset: 320)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1872, file: !561, line: 632, baseType: !1389, size: 64, offset: 384)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1872, file: !561, line: 636, baseType: !1389, size: 64, offset: 448)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !1715, file: !561, line: 755, baseType: !1879, size: 704)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !561, line: 642, size: 704, elements: !1880)
!1880 = !{!1881, !1882, !1883, !1884}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1879, file: !561, line: 644, baseType: !1872, size: 512)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1879, file: !561, line: 648, baseType: !1389, size: 64, offset: 512)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1879, file: !561, line: 652, baseType: !1389, size: 64, offset: 576)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1879, file: !561, line: 653, baseType: !1389, size: 64, offset: 640)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !1715, file: !561, line: 756, baseType: !1886, size: 448)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !561, line: 663, size: 448, elements: !1887)
!1887 = !{!1888, !1889, !1890}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1886, file: !561, line: 665, baseType: !1780, size: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1886, file: !561, line: 668, baseType: !1389, size: 64, offset: 320)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1886, file: !561, line: 673, baseType: !1389, size: 64, offset: 384)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !1715, file: !561, line: 757, baseType: !1892, size: 384)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !561, line: 694, size: 384, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1892, file: !561, line: 696, baseType: !1780, size: 320)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1892, file: !561, line: 699, baseType: !1389, size: 64, offset: 320)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !1715, file: !561, line: 758, baseType: !1897, size: 384)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !561, line: 681, size: 384, elements: !1898)
!1898 = !{!1899, !1900, !1901}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1897, file: !561, line: 683, baseType: !1718, size: 256)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1897, file: !561, line: 686, baseType: !1389, size: 64, offset: 256)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1897, file: !561, line: 689, baseType: !1389, size: 64, offset: 320)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !1715, file: !561, line: 759, baseType: !1903, size: 384)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !561, line: 707, size: 384, elements: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1903, file: !561, line: 709, baseType: !1718, size: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1903, file: !561, line: 712, baseType: !1389, size: 64, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1903, file: !561, line: 712, baseType: !1389, size: 64, offset: 320)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !1715, file: !561, line: 760, baseType: !1909, size: 320)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !561, line: 718, size: 320, elements: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1909, file: !561, line: 720, baseType: !1718, size: 256)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1909, file: !561, line: 723, baseType: !1389, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1710, file: !561, line: 138, baseType: !1709, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1710, file: !561, line: 139, baseType: !1709, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1705, file: !561, line: 146, baseType: !1708, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1705, file: !561, line: 152, baseType: !1703, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1700, file: !318, line: 130, baseType: !1564, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1695, file: !318, line: 134, baseType: !1386, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1695, file: !318, line: 137, baseType: !1389, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1695, file: !318, line: 138, baseType: !1514, size: 32, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1695, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1695, file: !318, line: 144, baseType: !1382, size: 32, offset: 384)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1695, file: !318, line: 145, baseType: !1382, size: 32, offset: 416)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1695, file: !318, line: 146, baseType: !1925, size: 64, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !1445)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1678, file: !318, line: 220, baseType: !1681, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1678, file: !318, line: 223, baseType: !1386, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1678, file: !318, line: 226, baseType: !1929, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !318, line: 185, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1678, file: !318, line: 229, baseType: !1932, size: 128, offset: 256)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1933, size: 128, elements: !1632)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1678, file: !318, line: 232, baseType: !1677, size: 64, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1678, file: !318, line: 233, baseType: !1677, size: 64, offset: 448)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1678, file: !318, line: 238, baseType: !1938, size: 64, offset: 512)
!1938 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !1939)
!1939 = !{!1940, !1946}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1938, file: !318, line: 236, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1942, file: !318, line: 275, baseType: !1703, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1942, file: !318, line: 278, baseType: !1703, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1938, file: !318, line: 237, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1953, !1954}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1948, file: !318, line: 261, baseType: !1564, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1948, file: !318, line: 262, baseType: !1564, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1948, file: !318, line: 266, baseType: !1564, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1948, file: !318, line: 267, baseType: !1564, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1948, file: !318, line: 270, baseType: !1382, size: 32, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1678, file: !318, line: 241, baseType: !1925, size: 64, offset: 576)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1678, file: !318, line: 244, baseType: !1382, size: 32, offset: 640)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1678, file: !318, line: 247, baseType: !1382, size: 32, offset: 672)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1678, file: !318, line: 250, baseType: !1382, size: 32, offset: 704)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1678, file: !318, line: 253, baseType: !1382, size: 32, offset: 736)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1678, file: !318, line: 256, baseType: !1382, size: 32, offset: 768)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !1585, file: !1567, line: 179, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !1567, line: 150, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !1567, line: 142, size: 320, elements: !1965)
!1965 = !{!1966, !1967, !1968, !1969, !1972, !1973}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1964, file: !1567, line: 144, baseType: !1389, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1964, file: !1567, line: 145, baseType: !1564, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1964, file: !1567, line: 146, baseType: !1564, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1964, file: !1567, line: 147, baseType: !1970, size: 32, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1971, line: 31, baseType: !1382)
!1971 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1964, file: !1567, line: 148, baseType: !7, size: 32, offset: 224)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1964, file: !1567, line: 149, baseType: !1381, size: 8, offset: 256)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !1585, file: !1567, line: 180, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !1567, line: 162, baseType: !1977)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !1567, line: 159, size: 128, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1977, file: !1567, line: 160, baseType: !1389, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1977, file: !1567, line: 161, baseType: !1445, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !1585, file: !1567, line: 181, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !1567, line: 181, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !1580, file: !1567, line: 317, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1445, size: 64, elements: !1488)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !1580, file: !1567, line: 318, baseType: !1987, size: 320)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !1567, line: 188, size: 320, elements: !1988)
!1988 = !{!1989, !1991, !2014}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1987, file: !1567, line: 190, baseType: !1990, size: 192)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1584, size: 192, elements: !1463)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1987, file: !1567, line: 193, baseType: !1992, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !1567, line: 206, size: 320, elements: !1994)
!1994 = !{!1995, !1999, !2000, !2001, !2013}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1993, file: !1567, line: 208, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !1390, line: 62, baseType: !1998)
!1998 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1390, line: 61, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1993, file: !1567, line: 211, baseType: !7, size: 32, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1993, file: !1567, line: 214, baseType: !1445, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1993, file: !1567, line: 224, baseType: !2002, size: 64, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !1567, line: 202, baseType: !2004)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !1567, line: 202, size: 128, elements: !2005)
!2005 = !{!2006}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2004, file: !1567, line: 202, baseType: !2007, size: 128)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !1567, line: 200, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !1567, line: 200, size: 128, elements: !2009)
!2009 = !{!2010, !2011, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2008, file: !1567, line: 200, baseType: !7, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2008, file: !1567, line: 200, baseType: !7, size: 32, offset: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2008, file: !1567, line: 200, baseType: !1598, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1993, file: !1567, line: 234, baseType: !2002, size: 64, offset: 256)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1987, file: !1567, line: 197, baseType: !1445, size: 64, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !1580, file: !1567, line: 319, baseType: !1452, size: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !1580, file: !1567, line: 320, baseType: !1471, size: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !1392, file: !334, line: 3384, baseType: !2018, size: 1472)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !2019)
!2019 = !{!2020, !2041, !2042, !2043, !2044}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2018, file: !334, line: 3115, baseType: !2021, size: 1216)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !2022)
!2022 = !{!2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2021, file: !334, line: 2985, baseType: !1560, size: 960)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !2021, file: !334, line: 2986, baseType: !1389, size: 64, offset: 960)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !2021, file: !334, line: 2987, baseType: !1389, size: 64, offset: 1024)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !2021, file: !334, line: 2988, baseType: !1389, size: 64, offset: 1088)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !2021, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !2021, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !2021, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !2021, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !2021, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !2021, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !2021, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !2021, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !2021, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !2021, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !2021, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !2021, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !2021, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !2021, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !2018, file: !334, line: 3117, baseType: !1389, size: 64, offset: 1216)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !2018, file: !334, line: 3119, baseType: !1389, size: 64, offset: 1280)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !2018, file: !334, line: 3121, baseType: !1389, size: 64, offset: 1344)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !2018, file: !334, line: 3123, baseType: !1389, size: 64, offset: 1408)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !1392, file: !334, line: 3385, baseType: !2046, size: 1088)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !2047)
!2047 = !{!2048, !2049, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2046, file: !334, line: 2875, baseType: !1560, size: 960)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !2046, file: !334, line: 2876, baseType: !1564, size: 64, offset: 960)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !2046, file: !334, line: 2877, baseType: !2051, size: 64, offset: 1024)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !2053, line: 172, size: 128, elements: !2054)
!2053 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2060, !2061}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !2052, file: !2053, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2052, file: !2053, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !2052, file: !2053, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !2052, file: !2053, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !2052, file: !2053, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !2052, file: !2053, line: 195, baseType: !7, size: 32, offset: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !2052, file: !2053, line: 199, baseType: !1389, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !1392, file: !334, line: 3386, baseType: !2021, size: 1216)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !1392, file: !334, line: 3387, baseType: !2064, size: 1280)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !2065)
!2065 = !{!2066, !2067}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2064, file: !334, line: 3094, baseType: !2021, size: 1216)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !2064, file: !334, line: 3095, baseType: !2051, size: 64, offset: 1216)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !1392, file: !334, line: 3388, baseType: !2069, size: 1216)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !2070)
!2070 = !{!2071, !2072, !2073, !2074, !2075, !2076}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2069, file: !334, line: 2825, baseType: !1522, size: 896)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2069, file: !334, line: 2827, baseType: !1389, size: 64, offset: 896)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !2069, file: !334, line: 2828, baseType: !1389, size: 64, offset: 960)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !2069, file: !334, line: 2829, baseType: !1389, size: 64, offset: 1024)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !2069, file: !334, line: 2830, baseType: !1389, size: 64, offset: 1088)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !2069, file: !334, line: 2831, baseType: !1389, size: 64, offset: 1152)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !1392, file: !334, line: 3389, baseType: !2078, size: 1024)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !2079)
!2079 = !{!2080, !2081, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2078, file: !334, line: 2851, baseType: !1560, size: 960)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !2078, file: !334, line: 2852, baseType: !1382, size: 32, offset: 960)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !2078, file: !334, line: 2853, baseType: !1382, size: 32, offset: 992)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !1392, file: !334, line: 3390, baseType: !2084, size: 1024)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !2085)
!2085 = !{!2086, !2087}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2084, file: !334, line: 2858, baseType: !1560, size: 960)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !2084, file: !334, line: 2859, baseType: !2051, size: 64, offset: 960)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !1392, file: !334, line: 3391, baseType: !2089, size: 960)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !2090)
!2090 = !{!2091}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2089, file: !334, line: 2863, baseType: !1560, size: 960)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1392, file: !334, line: 3392, baseType: !2093, size: 1472)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !2094)
!2094 = !{!2095}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2093, file: !334, line: 3305, baseType: !2018, size: 1472)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1392, file: !334, line: 3393, baseType: !2097, size: 1792)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !2098)
!2098 = !{!2099, !2100, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2097, file: !334, line: 3249, baseType: !2018, size: 1472)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !2097, file: !334, line: 3251, baseType: !2101, size: 64, offset: 1472)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !2103, line: 463, size: 1152, elements: !2104)
!2103 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2104 = !{!2105, !2108, !2139, !2140, !2255, !2258, !2259, !2260, !2261, !2262, !2263, !2287, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !2102, file: !2103, line: 464, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !2103, line: 464, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !2102, file: !2103, line: 467, baseType: !2109, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !2111)
!2111 = !{!2112, !2114, !2115, !2128, !2129, !2130, !2131, !2132, !2133, !2135, !2137, !2138}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !2110, file: !318, line: 377, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !1390, line: 111, baseType: !1677)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !2110, file: !318, line: 378, baseType: !2113, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !2110, file: !318, line: 381, baseType: !2116, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !2118)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !2119)
!2119 = !{!2120}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2118, file: !318, line: 282, baseType: !2121, size: 128)
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !2122)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !2123)
!2123 = !{!2124, !2125, !2126}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2122, file: !318, line: 281, baseType: !7, size: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2122, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2122, file: !318, line: 281, baseType: !2127, size: 64, offset: 64)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2113, size: 64, elements: !1488)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !2110, file: !318, line: 384, baseType: !1382, size: 32, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !2110, file: !318, line: 387, baseType: !1382, size: 32, offset: 224)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !2110, file: !318, line: 390, baseType: !1382, size: 32, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !2110, file: !318, line: 394, baseType: !2116, size: 64, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !2110, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !2110, file: !318, line: 399, baseType: !2134, size: 64, offset: 416)
!2134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !1632)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !2110, file: !318, line: 402, baseType: !2136, size: 64, offset: 480)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1632)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !2110, file: !318, line: 406, baseType: !1382, size: 32, offset: 544)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !2110, file: !318, line: 409, baseType: !1382, size: 32, offset: 576)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !2102, file: !2103, line: 470, baseType: !1704, size: 64, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !2102, file: !2103, line: 473, baseType: !2141, size: 64, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !2053, line: 39, size: 1152, elements: !2143)
!2143 = !{!2144, !2194, !2207, !2219, !2220, !2232, !2233, !2237, !2238, !2239, !2240, !2241}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !2142, file: !2053, line: 41, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !2146, line: 144, baseType: !2147)
!2146 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !2146, line: 100, size: 896, elements: !2149)
!2149 = !{!2150, !2158, !2163, !2168, !2170, !2171, !2172, !2173, !2174, !2175, !2180, !2182, !2183, !2188, !2193}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !2148, file: !2146, line: 102, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !2146, line: 52, baseType: !2152)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !2146, line: 47, baseType: !7)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !2148, file: !2146, line: 105, baseType: !2159, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !2146, line: 59, baseType: !2160)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!1382, !2156, !2156}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !2148, file: !2146, line: 108, baseType: !2164, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !2146, line: 63, baseType: !2165)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{null, !1386}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2148, file: !2146, line: 111, baseType: !2169, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2148, file: !2146, line: 114, baseType: !1859, size: 64, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !2148, file: !2146, line: 117, baseType: !1859, size: 64, offset: 320)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !2148, file: !2146, line: 120, baseType: !1859, size: 64, offset: 384)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !2148, file: !2146, line: 124, baseType: !7, size: 32, offset: 448)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !2148, file: !2146, line: 128, baseType: !7, size: 32, offset: 480)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !2148, file: !2146, line: 131, baseType: !2176, size: 64, offset: 512)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !2146, line: 75, baseType: !2177)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!1386, !1859, !1859}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !2148, file: !2146, line: 132, baseType: !2181, size: 64, offset: 576)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !2146, line: 78, baseType: !2165)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !2148, file: !2146, line: 135, baseType: !1386, size: 64, offset: 640)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !2148, file: !2146, line: 136, baseType: !2184, size: 64, offset: 704)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !2146, line: 82, baseType: !2185)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!1386, !1386, !1859, !1859}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !2148, file: !2146, line: 137, baseType: !2189, size: 64, offset: 768)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !2146, line: 83, baseType: !2190)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{null, !1386, !1386}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !2148, file: !2146, line: 141, baseType: !7, size: 32, offset: 832)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !2142, file: !2053, line: 48, baseType: !2195, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !561, line: 35, baseType: !2197)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !561, line: 35, size: 128, elements: !2198)
!2198 = !{!2199}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2197, file: !561, line: 35, baseType: !2200, size: 128)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !561, line: 33, baseType: !2201)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !561, line: 33, size: 128, elements: !2202)
!2202 = !{!2203, !2204, !2205}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2201, file: !561, line: 33, baseType: !7, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2201, file: !561, line: 33, baseType: !7, size: 32, offset: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2201, file: !561, line: 33, baseType: !2206, size: 64, offset: 64)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1713, size: 64, elements: !1488)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !2142, file: !2053, line: 51, baseType: !2208, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !2210)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !2211)
!2211 = !{!2212}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2210, file: !334, line: 183, baseType: !2213, size: 128)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !2214)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !2215)
!2215 = !{!2216, !2217, !2218}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2214, file: !334, line: 182, baseType: !7, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2214, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2214, file: !334, line: 182, baseType: !1767, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !2142, file: !2053, line: 54, baseType: !1389, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !2142, file: !2053, line: 57, baseType: !2221, size: 128, offset: 256)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !2222, line: 31, size: 128, elements: !2223)
!2222 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !2221, file: !2222, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !2221, file: !2222, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !2221, file: !2222, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !2221, file: !2222, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !2221, file: !2222, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !2221, file: !2222, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !2221, file: !2222, line: 56, baseType: !2231, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !1390, line: 47, baseType: !1616)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !2142, file: !2053, line: 60, baseType: !2221, size: 128, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !2142, file: !2053, line: 64, baseType: !2234, size: 64, offset: 512)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !2236, line: 33, flags: DIFlagFwdDecl)
!2236 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !2142, file: !2053, line: 67, baseType: !1389, size: 64, offset: 576)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !2142, file: !2053, line: 73, baseType: !2145, size: 64, offset: 640)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !2142, file: !2053, line: 77, baseType: !2231, size: 64, offset: 704)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !2142, file: !2053, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !2142, file: !2053, line: 82, baseType: !2242, size: 320, offset: 832)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1744, line: 62, size: 320, elements: !2243)
!2243 = !{!2244, !2250, !2251, !2252, !2253, !2254}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !2242, file: !1744, line: 63, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1744, line: 56, size: 128, elements: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2246, file: !1744, line: 57, baseType: !2245, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2246, file: !1744, line: 58, baseType: !1487, size: 8, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !2242, file: !1744, line: 64, baseType: !7, size: 32, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !2242, file: !1744, line: 66, baseType: !7, size: 32, offset: 96)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !2242, file: !1744, line: 68, baseType: !1381, size: 8, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !2242, file: !1744, line: 70, baseType: !1742, size: 64, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !2242, file: !1744, line: 71, baseType: !1750, size: 64, offset: 256)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !2102, file: !2103, line: 476, baseType: !2256, size: 64, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !2103, line: 476, flags: DIFlagFwdDecl)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !2102, file: !2103, line: 479, baseType: !2145, size: 64, offset: 320)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2102, file: !2103, line: 484, baseType: !1389, size: 64, offset: 384)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !2102, file: !2103, line: 488, baseType: !1389, size: 64, offset: 448)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !2102, file: !2103, line: 493, baseType: !1389, size: 64, offset: 512)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !2102, file: !2103, line: 496, baseType: !1389, size: 64, offset: 576)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !2102, file: !2103, line: 501, baseType: !2264, size: 64, offset: 640)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !2266)
!2266 = !{!2267, !2270, !2271, !2272, !2273, !2275, !2276, !2281, !2282, !2283, !2284, !2285, !2286}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !2265, file: !329, line: 2356, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !2265, file: !329, line: 2357, baseType: !1387, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !2265, file: !329, line: 2358, baseType: !1382, size: 32, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !2265, file: !329, line: 2359, baseType: !1382, size: 32, offset: 160)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !2265, file: !329, line: 2360, baseType: !2274, size: 128, offset: 192)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1382, size: 128, elements: !1656)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !2265, file: !329, line: 2364, baseType: !1382, size: 32, offset: 320)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !2265, file: !329, line: 2367, baseType: !2277, size: 128, offset: 384)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !2278)
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2277, file: !329, line: 2351, baseType: !1564, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2277, file: !329, line: 2352, baseType: !1445, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !2265, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !2265, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !2265, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !2265, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !2265, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !2265, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !2102, file: !2103, line: 504, baseType: !2288, size: 64, offset: 704)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !2103, line: 504, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !2102, file: !2103, line: 507, baseType: !2145, size: 64, offset: 768)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !2102, file: !2103, line: 510, baseType: !1382, size: 32, offset: 832)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !2102, file: !2103, line: 513, baseType: !1382, size: 32, offset: 864)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !2102, file: !2103, line: 516, baseType: !1514, size: 32, offset: 896)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !2102, file: !2103, line: 519, baseType: !1514, size: 32, offset: 928)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !2102, file: !2103, line: 522, baseType: !7, size: 32, offset: 960)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !2102, file: !2103, line: 523, baseType: !7, size: 32, offset: 992)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !2102, file: !2103, line: 528, baseType: !1387, size: 64, offset: 1024)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !2102, file: !2103, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !2102, file: !2103, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !2102, file: !2103, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !2102, file: !2103, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !2102, file: !2103, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !2102, file: !2103, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !2102, file: !2103, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !2102, file: !2103, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !2102, file: !2103, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !2102, file: !2103, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !2102, file: !2103, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !2102, file: !2103, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !2102, file: !2103, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !2102, file: !2103, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !2102, file: !2103, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !2102, file: !2103, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2097, file: !334, line: 3254, baseType: !1389, size: 64, offset: 1536)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !2097, file: !334, line: 3257, baseType: !1389, size: 64, offset: 1600)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !2097, file: !334, line: 3258, baseType: !1389, size: 64, offset: 1664)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !2097, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !2097, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !2097, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !2097, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !2097, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !2097, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !2097, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !2097, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !2097, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !2097, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !2097, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !2097, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !2097, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !2097, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !2097, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2097, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !2097, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !2097, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1392, file: !334, line: 3394, baseType: !2336, size: 1344)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2336, file: !334, line: 2280, baseType: !1428, size: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2336, file: !334, line: 2281, baseType: !1389, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2336, file: !334, line: 2282, baseType: !1389, size: 64, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !2336, file: !334, line: 2283, baseType: !1389, size: 64, offset: 320)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2336, file: !334, line: 2284, baseType: !1389, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2336, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !2336, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !2336, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !2336, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !2336, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !2336, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !2336, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2336, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !2336, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !2336, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !2336, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !2336, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !2336, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !2336, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !2336, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !2336, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2336, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !2336, file: !334, line: 2306, baseType: !1970, size: 32, offset: 544)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !2336, file: !334, line: 2307, baseType: !1389, size: 64, offset: 576)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !2336, file: !334, line: 2308, baseType: !1389, size: 64, offset: 640)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2336, file: !334, line: 2314, baseType: !2364, size: 64, offset: 704)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !2365)
!2365 = !{!2366, !2367, !2368}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2364, file: !334, line: 2310, baseType: !1382, size: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2364, file: !334, line: 2311, baseType: !1387, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !2364, file: !334, line: 2312, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2336, file: !334, line: 2315, baseType: !1389, size: 64, offset: 768)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !2336, file: !334, line: 2316, baseType: !1389, size: 64, offset: 832)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !2336, file: !334, line: 2317, baseType: !1389, size: 64, offset: 896)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !2336, file: !334, line: 2318, baseType: !1389, size: 64, offset: 960)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !2336, file: !334, line: 2319, baseType: !1389, size: 64, offset: 1024)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !2336, file: !334, line: 2320, baseType: !1389, size: 64, offset: 1088)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2336, file: !334, line: 2321, baseType: !1389, size: 64, offset: 1152)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !2336, file: !334, line: 2322, baseType: !1389, size: 64, offset: 1216)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !2336, file: !334, line: 2324, baseType: !2380, size: 64, offset: 1280)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1392, file: !334, line: 3395, baseType: !2383, size: 320)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !2384)
!2384 = !{!2385, !2386, !2387}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2383, file: !334, line: 1470, baseType: !1428, size: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !2383, file: !334, line: 1471, baseType: !1389, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2383, file: !334, line: 1472, baseType: !1389, size: 64, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1392, file: !334, line: 3396, baseType: !2389, size: 320)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !2390)
!2390 = !{!2391, !2392, !2393}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2389, file: !334, line: 1483, baseType: !1428, size: 192)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2389, file: !334, line: 1484, baseType: !1382, size: 32, offset: 192)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2389, file: !334, line: 1485, baseType: !1767, size: 64, offset: 256)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !1392, file: !334, line: 3397, baseType: !2395, size: 384)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !2396)
!2396 = !{!2397, !2398, !2399, !2400}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2395, file: !334, line: 1830, baseType: !1428, size: 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2395, file: !334, line: 1831, baseType: !1514, size: 32, offset: 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2395, file: !334, line: 1832, baseType: !1389, size: 64, offset: 256)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !2395, file: !334, line: 1835, baseType: !1767, size: 64, offset: 320)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1392, file: !334, line: 3398, baseType: !2402, size: 704)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !2403)
!2403 = !{!2404, !2405, !2406, !2407, !2408, !2413}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2402, file: !334, line: 1899, baseType: !1428, size: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !2402, file: !334, line: 1902, baseType: !1389, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !2402, file: !334, line: 1905, baseType: !1713, size: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2402, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !2402, file: !334, line: 1911, baseType: !2409, size: 64, offset: 384)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !2053, line: 117, size: 128, elements: !2411)
!2411 = !{!2412}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !2410, file: !2053, line: 120, baseType: !2221, size: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !2402, file: !334, line: 1914, baseType: !1755, size: 256, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1392, file: !334, line: 3399, baseType: !2415, size: 704)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !2416)
!2416 = !{!2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2415, file: !334, line: 2009, baseType: !1428, size: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !2415, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !2415, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2415, file: !334, line: 2014, baseType: !1514, size: 32, offset: 224)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !2415, file: !334, line: 2016, baseType: !1389, size: 64, offset: 256)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !2415, file: !334, line: 2017, baseType: !2208, size: 64, offset: 320)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !2415, file: !334, line: 2019, baseType: !1389, size: 64, offset: 384)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !2415, file: !334, line: 2020, baseType: !1389, size: 64, offset: 448)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !2415, file: !334, line: 2021, baseType: !1389, size: 64, offset: 512)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !2415, file: !334, line: 2022, baseType: !1389, size: 64, offset: 576)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !2415, file: !334, line: 2023, baseType: !1389, size: 64, offset: 640)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1392, file: !334, line: 3400, baseType: !2429, size: 832)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !2430)
!2430 = !{!2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2429, file: !334, line: 2431, baseType: !1428, size: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2429, file: !334, line: 2433, baseType: !1389, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !2429, file: !334, line: 2434, baseType: !1389, size: 64, offset: 256)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !2429, file: !334, line: 2435, baseType: !1389, size: 64, offset: 320)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !2429, file: !334, line: 2436, baseType: !1389, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !2429, file: !334, line: 2437, baseType: !2208, size: 64, offset: 448)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !2429, file: !334, line: 2438, baseType: !1389, size: 64, offset: 512)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !2429, file: !334, line: 2440, baseType: !1389, size: 64, offset: 576)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !2429, file: !334, line: 2441, baseType: !1389, size: 64, offset: 640)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !2429, file: !334, line: 2443, baseType: !2441, size: 128, offset: 704)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !2442)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !2443)
!2443 = !{!2444}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2442, file: !334, line: 182, baseType: !2213, size: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !1392, file: !334, line: 3401, baseType: !2446, size: 320)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !2447)
!2447 = !{!2448, !2449, !2456}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2446, file: !334, line: 3329, baseType: !1428, size: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2446, file: !334, line: 3330, baseType: !2450, size: 64, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !2452)
!2452 = !{!2453, !2454, !2455}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2451, file: !334, line: 3322, baseType: !2450, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2451, file: !334, line: 3323, baseType: !2450, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2451, file: !334, line: 3324, baseType: !1389, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2446, file: !334, line: 3331, baseType: !2450, size: 64, offset: 256)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1392, file: !334, line: 3402, baseType: !2458, size: 256)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !2459)
!2459 = !{!2460, !2461}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2458, file: !334, line: 1541, baseType: !1428, size: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !2458, file: !334, line: 1542, baseType: !2462, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !2464)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !2465)
!2465 = !{!2466}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2464, file: !334, line: 1538, baseType: !2467, size: 192)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !2468)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !2469)
!2469 = !{!2470, !2471, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2468, file: !334, line: 1537, baseType: !7, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2468, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2468, file: !334, line: 1537, baseType: !2473, size: 128, offset: 64)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2474, size: 128, elements: !1488)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !2475)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !2476)
!2476 = !{!2477, !2478}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2475, file: !334, line: 1533, baseType: !1389, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2475, file: !334, line: 1534, baseType: !1389, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !1392, file: !334, line: 3403, baseType: !2480, size: 512)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !2481)
!2481 = !{!2482, !2483, !2484, !2485, !2491, !2492, !2493}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2480, file: !334, line: 1939, baseType: !1428, size: 192)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2480, file: !334, line: 1940, baseType: !1514, size: 32, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2480, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !2480, file: !334, line: 1946, baseType: !2486, size: 32, offset: 256)
!2486 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !2487)
!2487 = !{!2488, !2489, !2490}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !2486, file: !334, line: 1943, baseType: !352, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !2486, file: !334, line: 1944, baseType: !359, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !2486, file: !334, line: 1945, baseType: !366, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !2480, file: !334, line: 1950, baseType: !1703, size: 64, offset: 320)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !2480, file: !334, line: 1951, baseType: !1703, size: 64, offset: 384)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2480, file: !334, line: 1953, baseType: !1767, size: 64, offset: 448)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !1392, file: !334, line: 3404, baseType: !2495, size: 1664)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !2496)
!2496 = !{!2497, !2498}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2495, file: !334, line: 3338, baseType: !1428, size: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2495, file: !334, line: 3341, baseType: !2499, size: 1472, offset: 192)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !2500, line: 410, size: 1472, elements: !2501)
!2500 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !2499, file: !2500, line: 412, baseType: !1382, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !2499, file: !2500, line: 413, baseType: !1382, size: 32, offset: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !2499, file: !2500, line: 414, baseType: !1382, size: 32, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !2499, file: !2500, line: 415, baseType: !1382, size: 32, offset: 96)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !2499, file: !2500, line: 416, baseType: !1382, size: 32, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !2499, file: !2500, line: 417, baseType: !1382, size: 32, offset: 160)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !2499, file: !2500, line: 418, baseType: !1381, size: 8, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !2499, file: !2500, line: 419, baseType: !1381, size: 8, offset: 200)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !2499, file: !2500, line: 420, baseType: !2511, size: 8, offset: 208)
!2511 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !2499, file: !2500, line: 421, baseType: !2511, size: 8, offset: 216)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !2499, file: !2500, line: 422, baseType: !2511, size: 8, offset: 224)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !2499, file: !2500, line: 423, baseType: !2511, size: 8, offset: 232)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !2499, file: !2500, line: 424, baseType: !2511, size: 8, offset: 240)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !2499, file: !2500, line: 425, baseType: !2511, size: 8, offset: 248)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !2499, file: !2500, line: 426, baseType: !2511, size: 8, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !2499, file: !2500, line: 427, baseType: !2511, size: 8, offset: 264)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !2499, file: !2500, line: 428, baseType: !2511, size: 8, offset: 272)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !2499, file: !2500, line: 429, baseType: !2511, size: 8, offset: 280)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !2499, file: !2500, line: 430, baseType: !2511, size: 8, offset: 288)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !2499, file: !2500, line: 431, baseType: !2511, size: 8, offset: 296)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !2499, file: !2500, line: 432, baseType: !2511, size: 8, offset: 304)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !2499, file: !2500, line: 433, baseType: !2511, size: 8, offset: 312)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !2499, file: !2500, line: 434, baseType: !2511, size: 8, offset: 320)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !2499, file: !2500, line: 435, baseType: !2511, size: 8, offset: 328)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !2499, file: !2500, line: 436, baseType: !2511, size: 8, offset: 336)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !2499, file: !2500, line: 437, baseType: !2511, size: 8, offset: 344)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !2499, file: !2500, line: 438, baseType: !2511, size: 8, offset: 352)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !2499, file: !2500, line: 439, baseType: !2511, size: 8, offset: 360)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !2499, file: !2500, line: 440, baseType: !2511, size: 8, offset: 368)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !2499, file: !2500, line: 441, baseType: !2511, size: 8, offset: 376)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !2499, file: !2500, line: 442, baseType: !2511, size: 8, offset: 384)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !2499, file: !2500, line: 443, baseType: !2511, size: 8, offset: 392)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !2499, file: !2500, line: 444, baseType: !2511, size: 8, offset: 400)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !2499, file: !2500, line: 445, baseType: !2511, size: 8, offset: 408)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !2499, file: !2500, line: 446, baseType: !2511, size: 8, offset: 416)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !2499, file: !2500, line: 447, baseType: !2511, size: 8, offset: 424)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !2499, file: !2500, line: 448, baseType: !2511, size: 8, offset: 432)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !2499, file: !2500, line: 449, baseType: !2511, size: 8, offset: 440)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !2499, file: !2500, line: 450, baseType: !2511, size: 8, offset: 448)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !2499, file: !2500, line: 451, baseType: !2511, size: 8, offset: 456)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !2499, file: !2500, line: 452, baseType: !2511, size: 8, offset: 464)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !2499, file: !2500, line: 453, baseType: !2511, size: 8, offset: 472)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !2499, file: !2500, line: 454, baseType: !2511, size: 8, offset: 480)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !2499, file: !2500, line: 455, baseType: !2511, size: 8, offset: 488)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !2499, file: !2500, line: 456, baseType: !2511, size: 8, offset: 496)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !2499, file: !2500, line: 457, baseType: !2511, size: 8, offset: 504)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !2499, file: !2500, line: 458, baseType: !2511, size: 8, offset: 512)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !2499, file: !2500, line: 459, baseType: !2511, size: 8, offset: 520)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !2499, file: !2500, line: 460, baseType: !2511, size: 8, offset: 528)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !2499, file: !2500, line: 461, baseType: !2511, size: 8, offset: 536)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !2499, file: !2500, line: 462, baseType: !2511, size: 8, offset: 544)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !2499, file: !2500, line: 463, baseType: !2511, size: 8, offset: 552)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !2499, file: !2500, line: 464, baseType: !2511, size: 8, offset: 560)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !2499, file: !2500, line: 465, baseType: !2511, size: 8, offset: 568)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !2499, file: !2500, line: 466, baseType: !2511, size: 8, offset: 576)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !2499, file: !2500, line: 467, baseType: !2511, size: 8, offset: 584)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !2499, file: !2500, line: 468, baseType: !2511, size: 8, offset: 592)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !2499, file: !2500, line: 469, baseType: !2511, size: 8, offset: 600)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !2499, file: !2500, line: 470, baseType: !2511, size: 8, offset: 608)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !2499, file: !2500, line: 471, baseType: !2511, size: 8, offset: 616)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !2499, file: !2500, line: 472, baseType: !2511, size: 8, offset: 624)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !2499, file: !2500, line: 473, baseType: !2511, size: 8, offset: 632)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !2499, file: !2500, line: 474, baseType: !2511, size: 8, offset: 640)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !2499, file: !2500, line: 475, baseType: !2511, size: 8, offset: 648)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !2499, file: !2500, line: 476, baseType: !2511, size: 8, offset: 656)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !2499, file: !2500, line: 477, baseType: !2511, size: 8, offset: 664)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !2499, file: !2500, line: 478, baseType: !2511, size: 8, offset: 672)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !2499, file: !2500, line: 479, baseType: !2511, size: 8, offset: 680)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !2499, file: !2500, line: 480, baseType: !2511, size: 8, offset: 688)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !2499, file: !2500, line: 481, baseType: !2511, size: 8, offset: 696)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !2499, file: !2500, line: 482, baseType: !2511, size: 8, offset: 704)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !2499, file: !2500, line: 483, baseType: !2511, size: 8, offset: 712)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !2499, file: !2500, line: 484, baseType: !2511, size: 8, offset: 720)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !2499, file: !2500, line: 485, baseType: !2511, size: 8, offset: 728)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !2499, file: !2500, line: 486, baseType: !2511, size: 8, offset: 736)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !2499, file: !2500, line: 487, baseType: !2511, size: 8, offset: 744)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !2499, file: !2500, line: 488, baseType: !2511, size: 8, offset: 752)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !2499, file: !2500, line: 489, baseType: !2511, size: 8, offset: 760)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !2499, file: !2500, line: 490, baseType: !2511, size: 8, offset: 768)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !2499, file: !2500, line: 491, baseType: !2511, size: 8, offset: 776)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !2499, file: !2500, line: 492, baseType: !2511, size: 8, offset: 784)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !2499, file: !2500, line: 493, baseType: !2511, size: 8, offset: 792)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !2499, file: !2500, line: 494, baseType: !2511, size: 8, offset: 800)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !2499, file: !2500, line: 495, baseType: !2511, size: 8, offset: 808)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !2499, file: !2500, line: 496, baseType: !2511, size: 8, offset: 816)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !2499, file: !2500, line: 497, baseType: !2511, size: 8, offset: 824)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !2499, file: !2500, line: 498, baseType: !2511, size: 8, offset: 832)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !2499, file: !2500, line: 499, baseType: !2511, size: 8, offset: 840)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !2499, file: !2500, line: 500, baseType: !2511, size: 8, offset: 848)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !2499, file: !2500, line: 501, baseType: !2511, size: 8, offset: 856)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !2499, file: !2500, line: 502, baseType: !2511, size: 8, offset: 864)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !2499, file: !2500, line: 503, baseType: !2511, size: 8, offset: 872)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !2499, file: !2500, line: 504, baseType: !2511, size: 8, offset: 880)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !2499, file: !2500, line: 505, baseType: !2511, size: 8, offset: 888)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !2499, file: !2500, line: 506, baseType: !2511, size: 8, offset: 896)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !2499, file: !2500, line: 507, baseType: !2511, size: 8, offset: 904)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !2499, file: !2500, line: 508, baseType: !2511, size: 8, offset: 912)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !2499, file: !2500, line: 509, baseType: !2511, size: 8, offset: 920)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !2499, file: !2500, line: 510, baseType: !2511, size: 8, offset: 928)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !2499, file: !2500, line: 511, baseType: !2511, size: 8, offset: 936)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !2499, file: !2500, line: 512, baseType: !2511, size: 8, offset: 944)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !2499, file: !2500, line: 513, baseType: !2511, size: 8, offset: 952)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !2499, file: !2500, line: 514, baseType: !2511, size: 8, offset: 960)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !2499, file: !2500, line: 515, baseType: !2511, size: 8, offset: 968)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !2499, file: !2500, line: 516, baseType: !2511, size: 8, offset: 976)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !2499, file: !2500, line: 517, baseType: !2511, size: 8, offset: 984)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !2499, file: !2500, line: 518, baseType: !2511, size: 8, offset: 992)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !2499, file: !2500, line: 519, baseType: !2511, size: 8, offset: 1000)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !2499, file: !2500, line: 520, baseType: !2511, size: 8, offset: 1008)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !2499, file: !2500, line: 521, baseType: !2511, size: 8, offset: 1016)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !2499, file: !2500, line: 522, baseType: !2511, size: 8, offset: 1024)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !2499, file: !2500, line: 523, baseType: !2511, size: 8, offset: 1032)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !2499, file: !2500, line: 524, baseType: !2511, size: 8, offset: 1040)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !2499, file: !2500, line: 525, baseType: !2511, size: 8, offset: 1048)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !2499, file: !2500, line: 526, baseType: !2511, size: 8, offset: 1056)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !2499, file: !2500, line: 527, baseType: !2511, size: 8, offset: 1064)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !2499, file: !2500, line: 528, baseType: !2511, size: 8, offset: 1072)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !2499, file: !2500, line: 529, baseType: !2511, size: 8, offset: 1080)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !2499, file: !2500, line: 530, baseType: !2511, size: 8, offset: 1088)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !2499, file: !2500, line: 531, baseType: !2511, size: 8, offset: 1096)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !2499, file: !2500, line: 532, baseType: !2511, size: 8, offset: 1104)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !2499, file: !2500, line: 533, baseType: !2511, size: 8, offset: 1112)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !2499, file: !2500, line: 534, baseType: !2511, size: 8, offset: 1120)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !2499, file: !2500, line: 535, baseType: !2511, size: 8, offset: 1128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !2499, file: !2500, line: 536, baseType: !2511, size: 8, offset: 1136)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !2499, file: !2500, line: 537, baseType: !2511, size: 8, offset: 1144)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !2499, file: !2500, line: 538, baseType: !2511, size: 8, offset: 1152)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !2499, file: !2500, line: 539, baseType: !2511, size: 8, offset: 1160)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !2499, file: !2500, line: 540, baseType: !2511, size: 8, offset: 1168)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !2499, file: !2500, line: 541, baseType: !2511, size: 8, offset: 1176)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !2499, file: !2500, line: 542, baseType: !2511, size: 8, offset: 1184)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !2499, file: !2500, line: 543, baseType: !2511, size: 8, offset: 1192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !2499, file: !2500, line: 544, baseType: !2511, size: 8, offset: 1200)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !2499, file: !2500, line: 545, baseType: !2511, size: 8, offset: 1208)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !2499, file: !2500, line: 546, baseType: !2511, size: 8, offset: 1216)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !2499, file: !2500, line: 547, baseType: !2511, size: 8, offset: 1224)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !2499, file: !2500, line: 548, baseType: !2511, size: 8, offset: 1232)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !2499, file: !2500, line: 549, baseType: !2511, size: 8, offset: 1240)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !2499, file: !2500, line: 550, baseType: !2511, size: 8, offset: 1248)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !2499, file: !2500, line: 551, baseType: !2511, size: 8, offset: 1256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !2499, file: !2500, line: 552, baseType: !2511, size: 8, offset: 1264)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !2499, file: !2500, line: 553, baseType: !2511, size: 8, offset: 1272)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !2499, file: !2500, line: 554, baseType: !2511, size: 8, offset: 1280)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !2499, file: !2500, line: 555, baseType: !2511, size: 8, offset: 1288)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !2499, file: !2500, line: 556, baseType: !2511, size: 8, offset: 1296)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !2499, file: !2500, line: 557, baseType: !2511, size: 8, offset: 1304)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !2499, file: !2500, line: 558, baseType: !2511, size: 8, offset: 1312)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !2499, file: !2500, line: 559, baseType: !2511, size: 8, offset: 1320)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !2499, file: !2500, line: 560, baseType: !2511, size: 8, offset: 1328)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !2499, file: !2500, line: 561, baseType: !2511, size: 8, offset: 1336)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !2499, file: !2500, line: 562, baseType: !2511, size: 8, offset: 1344)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !2499, file: !2500, line: 563, baseType: !2511, size: 8, offset: 1352)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !2499, file: !2500, line: 564, baseType: !2511, size: 8, offset: 1360)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !2499, file: !2500, line: 565, baseType: !2511, size: 8, offset: 1368)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !2499, file: !2500, line: 566, baseType: !2511, size: 8, offset: 1376)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !2499, file: !2500, line: 567, baseType: !2511, size: 8, offset: 1384)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !2499, file: !2500, line: 568, baseType: !2511, size: 8, offset: 1392)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !2499, file: !2500, line: 569, baseType: !2511, size: 8, offset: 1400)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !2499, file: !2500, line: 570, baseType: !2511, size: 8, offset: 1408)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !2499, file: !2500, line: 571, baseType: !2511, size: 8, offset: 1416)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !2499, file: !2500, line: 572, baseType: !2511, size: 8, offset: 1424)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !2499, file: !2500, line: 573, baseType: !2511, size: 8, offset: 1432)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !2499, file: !2500, line: 574, baseType: !2511, size: 8, offset: 1440)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !1392, file: !334, line: 3405, baseType: !2667, size: 384)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !2668)
!2668 = !{!2669, !2670}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2667, file: !334, line: 3353, baseType: !1428, size: 192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2667, file: !334, line: 3356, baseType: !2671, size: 192, offset: 192)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !2500, line: 578, size: 192, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2671, file: !2500, line: 580, baseType: !1382, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2671, file: !2500, line: 581, baseType: !1382, size: 32, offset: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2671, file: !2500, line: 582, baseType: !1382, size: 32, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2671, file: !2500, line: 583, baseType: !1382, size: 32, offset: 96)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2671, file: !2500, line: 584, baseType: !1381, size: 8, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2671, file: !2500, line: 585, baseType: !1381, size: 8, offset: 136)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2671, file: !2500, line: 586, baseType: !1381, size: 8, offset: 144)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2671, file: !2500, line: 587, baseType: !1381, size: 8, offset: 152)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2671, file: !2500, line: 588, baseType: !1381, size: 8, offset: 160)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2671, file: !2500, line: 589, baseType: !1381, size: 8, offset: 168)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2671, file: !2500, line: 590, baseType: !1381, size: 8, offset: 176)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_complex_lattice_t_heap", file: !3, line: 56, baseType: !2688)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_complex_lattice_t_heap", file: !3, line: 56, size: 96, elements: !2689)
!2689 = !{!2690}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2688, file: !3, line: 56, baseType: !2691, size: 96)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_complex_lattice_t_base", file: !3, line: 55, baseType: !2692)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_complex_lattice_t_base", file: !3, line: 55, size: 96, elements: !2693)
!2693 = !{!2694, !2695, !2696}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2692, file: !3, line: 55, baseType: !7, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2692, file: !3, line: 55, baseType: !7, size: 32, offset: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2692, file: !3, line: 55, baseType: !2697, size: 32, offset: 64)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2698, size: 32, elements: !1488)
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex_lattice_t", file: !3, line: 51, baseType: !1382)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !334, line: 184, baseType: !2701)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !334, line: 184, size: 128, elements: !2702)
!2702 = !{!2703}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2701, file: !334, line: 184, baseType: !2213, size: 128)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int_tree_map", file: !2053, line: 321, size: 128, elements: !2706)
!2706 = !{!2707, !2708}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2705, file: !2053, line: 323, baseType: !7, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !2705, file: !2053, line: 324, baseType: !1389, size: 64, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!2712 = !{!0, !2713, !2741, !2743, !2745}
!2713 = !DIGlobalVariableExpression(var: !2714, expr: !DIExpression())
!2714 = distinct !DIGlobalVariable(name: "pass_lower_complex_O0", scope: !2, file: !3, line: 1647, type: !2715, isLocal: false, isDefinition: true)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !2716)
!2716 = !{!2717}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2715, file: !6, line: 158, baseType: !2718, size: 640)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2719)
!2719 = !{!2720, !2721, !2722, !2726, !2730, !2732, !2733, !2734, !2736, !2737, !2738, !2739, !2740}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2718, file: !6, line: 117, baseType: !5, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2718, file: !6, line: 121, baseType: !1387, size: 64, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2718, file: !6, line: 125, baseType: !2723, size: 64, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!1381}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2718, file: !6, line: 130, baseType: !2727, size: 64, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!7}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2718, file: !6, line: 133, baseType: !2731, size: 64, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2718, file: !6, line: 136, baseType: !2731, size: 64, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2718, file: !6, line: 139, baseType: !1382, size: 32, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2718, file: !6, line: 143, baseType: !2735, size: 32, offset: 416)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2718, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2718, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2718, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2718, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2718, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2741 = !DIGlobalVariableExpression(var: !2742, expr: !DIExpression())
!2742 = distinct !DIGlobalVariable(name: "complex_lattice_values", scope: !2, file: !3, line: 58, type: !2686, isLocal: true, isDefinition: true)
!2743 = !DIGlobalVariableExpression(var: !2744, expr: !DIExpression())
!2744 = distinct !DIGlobalVariable(name: "complex_variable_components", scope: !2, file: !3, line: 62, type: !2145, isLocal: true, isDefinition: true)
!2745 = !DIGlobalVariableExpression(var: !2746, expr: !DIExpression())
!2746 = distinct !DIGlobalVariable(name: "complex_ssa_name_components", scope: !2, file: !3, line: 65, type: !2699, isLocal: true, isDefinition: true)
!2747 = !{i32 2, !"Dwarf Version", i32 4}
!2748 = !{i32 2, !"Debug Info Version", i32 3}
!2749 = !{i32 1, !"wchar_size", i32 4}
!2750 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2751 = distinct !DISubprogram(name: "vprintf", scope: !2752, file: !2752, line: 39, type: !2753, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2763)
!2752 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!1382, !2755, !2756}
!2755 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1387)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2758)
!2758 = !{!2759, !2760, !2761, !2762}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2757, file: !3, baseType: !7, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2757, file: !3, baseType: !7, size: 32, offset: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2757, file: !3, baseType: !1386, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2757, file: !3, baseType: !1386, size: 64, offset: 128)
!2763 = !{!2764, !2765}
!2764 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2751, file: !2752, line: 39, type: !2755)
!2765 = !DILocalVariable(name: "__arg", arg: 2, scope: !2751, file: !2752, line: 39, type: !2756)
!2766 = !DILocation(line: 0, scope: !2751)
!2767 = !DILocation(line: 41, column: 20, scope: !2751)
!2768 = !DILocation(line: 41, column: 10, scope: !2751)
!2769 = !DILocation(line: 41, column: 3, scope: !2751)
!2770 = distinct !DISubprogram(name: "getchar", scope: !2752, file: !2752, line: 47, type: !2771, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!1382}
!2773 = !{}
!2774 = !DILocation(line: 49, column: 16, scope: !2770)
!2775 = !DILocation(line: 49, column: 10, scope: !2770)
!2776 = !DILocation(line: 49, column: 3, scope: !2770)
!2777 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2752, file: !2752, line: 56, type: !2778, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2831)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!1382, !2780}
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2782, line: 7, baseType: !2783)
!2782 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2784, line: 49, size: 1728, elements: !2785)
!2784 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2785 = !{!2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2801, !2803, !2804, !2805, !2808, !2810, !2811, !2812, !2815, !2817, !2820, !2823, !2824, !2825, !2826, !2827}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2783, file: !2784, line: 51, baseType: !1382, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2783, file: !2784, line: 54, baseType: !1384, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2783, file: !2784, line: 55, baseType: !1384, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2783, file: !2784, line: 56, baseType: !1384, size: 64, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2783, file: !2784, line: 57, baseType: !1384, size: 64, offset: 256)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2783, file: !2784, line: 58, baseType: !1384, size: 64, offset: 320)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2783, file: !2784, line: 59, baseType: !1384, size: 64, offset: 384)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2783, file: !2784, line: 60, baseType: !1384, size: 64, offset: 448)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2783, file: !2784, line: 61, baseType: !1384, size: 64, offset: 512)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2783, file: !2784, line: 64, baseType: !1384, size: 64, offset: 576)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2783, file: !2784, line: 65, baseType: !1384, size: 64, offset: 640)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2783, file: !2784, line: 66, baseType: !1384, size: 64, offset: 704)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2783, file: !2784, line: 68, baseType: !2799, size: 64, offset: 768)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2784, line: 36, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2783, file: !2784, line: 70, baseType: !2802, size: 64, offset: 832)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2783, file: !2784, line: 72, baseType: !1382, size: 32, offset: 896)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2783, file: !2784, line: 73, baseType: !1382, size: 32, offset: 928)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2783, file: !2784, line: 74, baseType: !2806, size: 64, offset: 960)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2807, line: 152, baseType: !1445)
!2807 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2783, file: !2784, line: 77, baseType: !2809, size: 16, offset: 1024)
!2809 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2783, file: !2784, line: 78, baseType: !2511, size: 8, offset: 1040)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2783, file: !2784, line: 79, baseType: !1487, size: 8, offset: 1048)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2783, file: !2784, line: 81, baseType: !2813, size: 64, offset: 1088)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2784, line: 43, baseType: null)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2783, file: !2784, line: 89, baseType: !2816, size: 64, offset: 1152)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2807, line: 153, baseType: !1445)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2783, file: !2784, line: 91, baseType: !2818, size: 64, offset: 1216)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2784, line: 37, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2783, file: !2784, line: 92, baseType: !2821, size: 64, offset: 1280)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2784, line: 38, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2783, file: !2784, line: 93, baseType: !2802, size: 64, offset: 1344)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2783, file: !2784, line: 94, baseType: !1386, size: 64, offset: 1408)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2783, file: !2784, line: 95, baseType: !1859, size: 64, offset: 1472)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2783, file: !2784, line: 96, baseType: !1382, size: 32, offset: 1536)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2783, file: !2784, line: 98, baseType: !2828, size: 160, offset: 1568)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1385, size: 160, elements: !2829)
!2829 = !{!2830}
!2830 = !DISubrange(count: 20)
!2831 = !{!2832}
!2832 = !DILocalVariable(name: "__fp", arg: 1, scope: !2777, file: !2752, line: 56, type: !2780)
!2833 = !DILocation(line: 0, scope: !2777)
!2834 = !DILocation(line: 58, column: 10, scope: !2777)
!2835 = !DILocation(line: 58, column: 3, scope: !2777)
!2836 = distinct !DISubprogram(name: "getc_unlocked", scope: !2752, file: !2752, line: 66, type: !2778, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2837)
!2837 = !{!2838}
!2838 = !DILocalVariable(name: "__fp", arg: 1, scope: !2836, file: !2752, line: 66, type: !2780)
!2839 = !DILocation(line: 0, scope: !2836)
!2840 = !DILocation(line: 68, column: 10, scope: !2836)
!2841 = !DILocation(line: 68, column: 3, scope: !2836)
!2842 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2752, file: !2752, line: 73, type: !2771, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2773)
!2843 = !DILocation(line: 75, column: 10, scope: !2842)
!2844 = !DILocation(line: 75, column: 3, scope: !2842)
!2845 = distinct !DISubprogram(name: "putchar", scope: !2752, file: !2752, line: 82, type: !2846, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!1382, !1382}
!2848 = !{!2849}
!2849 = !DILocalVariable(name: "__c", arg: 1, scope: !2845, file: !2752, line: 82, type: !1382)
!2850 = !DILocation(line: 0, scope: !2845)
!2851 = !DILocation(line: 84, column: 21, scope: !2845)
!2852 = !DILocation(line: 84, column: 10, scope: !2845)
!2853 = !DILocation(line: 84, column: 3, scope: !2845)
!2854 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2752, file: !2752, line: 91, type: !2855, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!1382, !1382, !2780}
!2857 = !{!2858, !2859}
!2858 = !DILocalVariable(name: "__c", arg: 1, scope: !2854, file: !2752, line: 91, type: !1382)
!2859 = !DILocalVariable(name: "__stream", arg: 2, scope: !2854, file: !2752, line: 91, type: !2780)
!2860 = !DILocation(line: 0, scope: !2854)
!2861 = !DILocation(line: 93, column: 10, scope: !2854)
!2862 = !DILocation(line: 93, column: 3, scope: !2854)
!2863 = distinct !DISubprogram(name: "putc_unlocked", scope: !2752, file: !2752, line: 101, type: !2855, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2864)
!2864 = !{!2865, !2866}
!2865 = !DILocalVariable(name: "__c", arg: 1, scope: !2863, file: !2752, line: 101, type: !1382)
!2866 = !DILocalVariable(name: "__stream", arg: 2, scope: !2863, file: !2752, line: 101, type: !2780)
!2867 = !DILocation(line: 0, scope: !2863)
!2868 = !DILocation(line: 103, column: 10, scope: !2863)
!2869 = !DILocation(line: 103, column: 3, scope: !2863)
!2870 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2752, file: !2752, line: 108, type: !2846, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2871)
!2871 = !{!2872}
!2872 = !DILocalVariable(name: "__c", arg: 1, scope: !2870, file: !2752, line: 108, type: !1382)
!2873 = !DILocation(line: 0, scope: !2870)
!2874 = !DILocation(line: 110, column: 10, scope: !2870)
!2875 = !DILocation(line: 110, column: 3, scope: !2870)
!2876 = distinct !DISubprogram(name: "getline", scope: !2752, file: !2752, line: 118, type: !2877, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2881)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!2879, !1383, !2880, !2780}
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2807, line: 193, baseType: !1445)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!2881 = !{!2882, !2883, !2884}
!2882 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2876, file: !2752, line: 118, type: !1383)
!2883 = !DILocalVariable(name: "__n", arg: 2, scope: !2876, file: !2752, line: 118, type: !2880)
!2884 = !DILocalVariable(name: "__stream", arg: 3, scope: !2876, file: !2752, line: 118, type: !2780)
!2885 = !DILocation(line: 0, scope: !2876)
!2886 = !DILocation(line: 120, column: 10, scope: !2876)
!2887 = !DILocation(line: 120, column: 3, scope: !2876)
!2888 = distinct !DISubprogram(name: "feof_unlocked", scope: !2752, file: !2752, line: 128, type: !2778, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2889)
!2889 = !{!2890}
!2890 = !DILocalVariable(name: "__stream", arg: 1, scope: !2888, file: !2752, line: 128, type: !2780)
!2891 = !DILocation(line: 0, scope: !2888)
!2892 = !DILocation(line: 130, column: 10, scope: !2888)
!2893 = !DILocation(line: 130, column: 3, scope: !2888)
!2894 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2752, file: !2752, line: 135, type: !2778, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2895)
!2895 = !{!2896}
!2896 = !DILocalVariable(name: "__stream", arg: 1, scope: !2894, file: !2752, line: 135, type: !2780)
!2897 = !DILocation(line: 0, scope: !2894)
!2898 = !DILocation(line: 137, column: 10, scope: !2894)
!2899 = !DILocation(line: 137, column: 3, scope: !2894)
!2900 = distinct !DISubprogram(name: "tolower", scope: !2901, file: !2901, line: 207, type: !2846, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2902)
!2901 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2902 = !{!2903}
!2903 = !DILocalVariable(name: "__c", arg: 1, scope: !2900, file: !2901, line: 207, type: !1382)
!2904 = !DILocation(line: 0, scope: !2900)
!2905 = !DILocation(line: 209, column: 22, scope: !2900)
!2906 = !DILocation(line: 209, column: 39, scope: !2900)
!2907 = !DILocation(line: 209, column: 38, scope: !2900)
!2908 = !DILocation(line: 209, column: 37, scope: !2900)
!2909 = !DILocation(line: 209, column: 10, scope: !2900)
!2910 = !DILocation(line: 209, column: 3, scope: !2900)
!2911 = distinct !DISubprogram(name: "toupper", scope: !2901, file: !2901, line: 213, type: !2846, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2912)
!2912 = !{!2913}
!2913 = !DILocalVariable(name: "__c", arg: 1, scope: !2911, file: !2901, line: 213, type: !1382)
!2914 = !DILocation(line: 0, scope: !2911)
!2915 = !DILocation(line: 215, column: 22, scope: !2911)
!2916 = !DILocation(line: 215, column: 39, scope: !2911)
!2917 = !DILocation(line: 215, column: 38, scope: !2911)
!2918 = !DILocation(line: 215, column: 37, scope: !2911)
!2919 = !DILocation(line: 215, column: 10, scope: !2911)
!2920 = !DILocation(line: 215, column: 3, scope: !2911)
!2921 = distinct !DISubprogram(name: "atoi", scope: !2922, file: !2922, line: 361, type: !2923, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2925)
!2922 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!1382, !1387}
!2925 = !{!2926}
!2926 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2921, file: !2922, line: 361, type: !1387)
!2927 = !DILocation(line: 0, scope: !2921)
!2928 = !DILocation(line: 363, column: 16, scope: !2921)
!2929 = !DILocation(line: 363, column: 10, scope: !2921)
!2930 = !DILocation(line: 363, column: 3, scope: !2921)
!2931 = distinct !DISubprogram(name: "atol", scope: !2922, file: !2922, line: 366, type: !2932, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!1445, !1387}
!2934 = !{!2935}
!2935 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2931, file: !2922, line: 366, type: !1387)
!2936 = !DILocation(line: 0, scope: !2931)
!2937 = !DILocation(line: 368, column: 10, scope: !2931)
!2938 = !DILocation(line: 368, column: 3, scope: !2931)
!2939 = distinct !DISubprogram(name: "atoll", scope: !2922, file: !2922, line: 373, type: !2940, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2943)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!2942, !1387}
!2942 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2939, file: !2922, line: 373, type: !1387)
!2945 = !DILocation(line: 0, scope: !2939)
!2946 = !DILocation(line: 375, column: 10, scope: !2939)
!2947 = !DILocation(line: 375, column: 3, scope: !2939)
!2948 = distinct !DISubprogram(name: "bsearch", scope: !2949, file: !2949, line: 20, type: !2950, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2953)
!2949 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!1386, !2156, !2156, !1859, !1859, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2922, line: 808, baseType: !2160)
!2953 = !{!2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963}
!2954 = !DILocalVariable(name: "__key", arg: 1, scope: !2948, file: !2949, line: 20, type: !2156)
!2955 = !DILocalVariable(name: "__base", arg: 2, scope: !2948, file: !2949, line: 20, type: !2156)
!2956 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2948, file: !2949, line: 20, type: !1859)
!2957 = !DILocalVariable(name: "__size", arg: 4, scope: !2948, file: !2949, line: 20, type: !1859)
!2958 = !DILocalVariable(name: "__compar", arg: 5, scope: !2948, file: !2949, line: 21, type: !2952)
!2959 = !DILocalVariable(name: "__l", scope: !2948, file: !2949, line: 23, type: !1859)
!2960 = !DILocalVariable(name: "__u", scope: !2948, file: !2949, line: 23, type: !1859)
!2961 = !DILocalVariable(name: "__idx", scope: !2948, file: !2949, line: 23, type: !1859)
!2962 = !DILocalVariable(name: "__p", scope: !2948, file: !2949, line: 24, type: !2156)
!2963 = !DILocalVariable(name: "__comparison", scope: !2948, file: !2949, line: 25, type: !1382)
!2964 = !DILocation(line: 0, scope: !2948)
!2965 = !DILocation(line: 29, column: 3, scope: !2948)
!2966 = !DILocation(line: 27, column: 7, scope: !2948)
!2967 = !DILocation(line: 29, column: 14, scope: !2948)
!2968 = !DILocation(line: 31, column: 20, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2948, file: !2949, line: 30, column: 5)
!2970 = !DILocation(line: 31, column: 27, scope: !2969)
!2971 = !DILocation(line: 32, column: 56, scope: !2969)
!2972 = !DILocation(line: 32, column: 47, scope: !2969)
!2973 = !DILocation(line: 33, column: 22, scope: !2969)
!2974 = !DILocation(line: 34, column: 24, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2969, file: !2949, line: 34, column: 11)
!2976 = !DILocation(line: 34, column: 11, scope: !2969)
!2977 = !DILocation(line: 36, column: 29, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !2949, line: 36, column: 16)
!2979 = !DILocation(line: 36, column: 16, scope: !2975)
!2980 = !DILocation(line: 37, column: 14, scope: !2978)
!2981 = distinct !{!2981, !2965, !2982}
!2982 = !DILocation(line: 40, column: 5, scope: !2948)
!2983 = !DILocation(line: 43, column: 1, scope: !2948)
!2984 = distinct !DISubprogram(name: "atof", scope: !2985, file: !2985, line: 25, type: !2986, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2989)
!2985 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!2988, !1387}
!2988 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2989 = !{!2990}
!2990 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2984, file: !2985, line: 25, type: !1387)
!2991 = !DILocation(line: 0, scope: !2984)
!2992 = !DILocation(line: 27, column: 10, scope: !2984)
!2993 = !DILocation(line: 27, column: 3, scope: !2984)
!2994 = distinct !DISubprogram(name: "strtoimax", scope: !2995, file: !2995, line: 324, type: !2996, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3002)
!2995 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!2998, !2755, !3001, !1382}
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2999, line: 101, baseType: !3000)
!2999 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2807, line: 72, baseType: !1445)
!3001 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1383)
!3002 = !{!3003, !3004, !3005}
!3003 = !DILocalVariable(name: "nptr", arg: 1, scope: !2994, file: !2995, line: 324, type: !2755)
!3004 = !DILocalVariable(name: "endptr", arg: 2, scope: !2994, file: !2995, line: 324, type: !3001)
!3005 = !DILocalVariable(name: "base", arg: 3, scope: !2994, file: !2995, line: 324, type: !1382)
!3006 = !DILocation(line: 0, scope: !2994)
!3007 = !DILocation(line: 327, column: 10, scope: !2994)
!3008 = !DILocation(line: 327, column: 3, scope: !2994)
!3009 = distinct !DISubprogram(name: "strtoumax", scope: !2995, file: !2995, line: 336, type: !3010, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3014)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!3012, !2755, !3001, !1382}
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2999, line: 102, baseType: !3013)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2807, line: 73, baseType: !1443)
!3014 = !{!3015, !3016, !3017}
!3015 = !DILocalVariable(name: "nptr", arg: 1, scope: !3009, file: !2995, line: 336, type: !2755)
!3016 = !DILocalVariable(name: "endptr", arg: 2, scope: !3009, file: !2995, line: 336, type: !3001)
!3017 = !DILocalVariable(name: "base", arg: 3, scope: !3009, file: !2995, line: 336, type: !1382)
!3018 = !DILocation(line: 0, scope: !3009)
!3019 = !DILocation(line: 339, column: 10, scope: !3009)
!3020 = !DILocation(line: 339, column: 3, scope: !3009)
!3021 = distinct !DISubprogram(name: "wcstoimax", scope: !2995, file: !2995, line: 348, type: !3022, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3031)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!2998, !3024, !3028, !1382}
!3024 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3025)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3027)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2995, line: 34, baseType: !1382)
!3028 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3029)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3031 = !{!3032, !3033, !3034}
!3032 = !DILocalVariable(name: "nptr", arg: 1, scope: !3021, file: !2995, line: 348, type: !3024)
!3033 = !DILocalVariable(name: "endptr", arg: 2, scope: !3021, file: !2995, line: 348, type: !3028)
!3034 = !DILocalVariable(name: "base", arg: 3, scope: !3021, file: !2995, line: 348, type: !1382)
!3035 = !DILocation(line: 0, scope: !3021)
!3036 = !DILocation(line: 351, column: 10, scope: !3021)
!3037 = !DILocation(line: 351, column: 3, scope: !3021)
!3038 = distinct !DISubprogram(name: "wcstoumax", scope: !2995, file: !2995, line: 362, type: !3039, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!3012, !3024, !3028, !1382}
!3041 = !{!3042, !3043, !3044}
!3042 = !DILocalVariable(name: "nptr", arg: 1, scope: !3038, file: !2995, line: 362, type: !3024)
!3043 = !DILocalVariable(name: "endptr", arg: 2, scope: !3038, file: !2995, line: 362, type: !3028)
!3044 = !DILocalVariable(name: "base", arg: 3, scope: !3038, file: !2995, line: 362, type: !1382)
!3045 = !DILocation(line: 0, scope: !3038)
!3046 = !DILocation(line: 365, column: 10, scope: !3038)
!3047 = !DILocation(line: 365, column: 3, scope: !3038)
!3048 = distinct !DISubprogram(name: "stat", scope: !3049, file: !3049, line: 453, type: !3050, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3087)
!3049 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!1382, !1387, !3052}
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3054, line: 46, size: 1152, elements: !3055)
!3054 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!3055 = !{!3056, !3058, !3060, !3062, !3064, !3066, !3068, !3069, !3070, !3071, !3073, !3075, !3083, !3084, !3085}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3053, file: !3054, line: 48, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2807, line: 145, baseType: !1443)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3053, file: !3054, line: 53, baseType: !3059, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2807, line: 148, baseType: !1443)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3053, file: !3054, line: 61, baseType: !3061, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2807, line: 151, baseType: !1443)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3053, file: !3054, line: 62, baseType: !3063, size: 32, offset: 192)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2807, line: 150, baseType: !7)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3053, file: !3054, line: 64, baseType: !3065, size: 32, offset: 224)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2807, line: 146, baseType: !7)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3053, file: !3054, line: 65, baseType: !3067, size: 32, offset: 256)
!3067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2807, line: 147, baseType: !7)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3053, file: !3054, line: 67, baseType: !1382, size: 32, offset: 288)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3053, file: !3054, line: 69, baseType: !3057, size: 64, offset: 320)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3053, file: !3054, line: 74, baseType: !2806, size: 64, offset: 384)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3053, file: !3054, line: 78, baseType: !3072, size: 64, offset: 448)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2807, line: 174, baseType: !1445)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3053, file: !3054, line: 80, baseType: !3074, size: 64, offset: 512)
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2807, line: 179, baseType: !1445)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3053, file: !3054, line: 91, baseType: !3076, size: 128, offset: 576)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3077, line: 10, size: 128, elements: !3078)
!3077 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!3078 = !{!3079, !3081}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3076, file: !3077, line: 12, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2807, line: 160, baseType: !1445)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3076, file: !3077, line: 16, baseType: !3082, size: 64, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2807, line: 196, baseType: !1445)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3053, file: !3054, line: 92, baseType: !3076, size: 128, offset: 704)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3053, file: !3054, line: 93, baseType: !3076, size: 128, offset: 832)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3053, file: !3054, line: 106, baseType: !3086, size: 192, offset: 960)
!3086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3082, size: 192, elements: !1463)
!3087 = !{!3088, !3089}
!3088 = !DILocalVariable(name: "__path", arg: 1, scope: !3048, file: !3049, line: 453, type: !1387)
!3089 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3048, file: !3049, line: 453, type: !3052)
!3090 = !DILocation(line: 0, scope: !3048)
!3091 = !DILocation(line: 455, column: 10, scope: !3048)
!3092 = !DILocation(line: 455, column: 3, scope: !3048)
!3093 = distinct !DISubprogram(name: "lstat", scope: !3049, file: !3049, line: 460, type: !3050, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3094 = !{!3095, !3096}
!3095 = !DILocalVariable(name: "__path", arg: 1, scope: !3093, file: !3049, line: 460, type: !1387)
!3096 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3093, file: !3049, line: 460, type: !3052)
!3097 = !DILocation(line: 0, scope: !3093)
!3098 = !DILocation(line: 462, column: 10, scope: !3093)
!3099 = !DILocation(line: 462, column: 3, scope: !3093)
!3100 = distinct !DISubprogram(name: "fstat", scope: !3049, file: !3049, line: 467, type: !3101, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!1382, !1382, !3052}
!3103 = !{!3104, !3105}
!3104 = !DILocalVariable(name: "__fd", arg: 1, scope: !3100, file: !3049, line: 467, type: !1382)
!3105 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3100, file: !3049, line: 467, type: !3052)
!3106 = !DILocation(line: 0, scope: !3100)
!3107 = !DILocation(line: 469, column: 10, scope: !3100)
!3108 = !DILocation(line: 469, column: 3, scope: !3100)
!3109 = distinct !DISubprogram(name: "fstatat", scope: !3049, file: !3049, line: 474, type: !3110, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3112)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!1382, !1382, !1387, !3052, !1382}
!3112 = !{!3113, !3114, !3115, !3116}
!3113 = !DILocalVariable(name: "__fd", arg: 1, scope: !3109, file: !3049, line: 474, type: !1382)
!3114 = !DILocalVariable(name: "__filename", arg: 2, scope: !3109, file: !3049, line: 474, type: !1387)
!3115 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !3109, file: !3049, line: 474, type: !3052)
!3116 = !DILocalVariable(name: "__flag", arg: 4, scope: !3109, file: !3049, line: 474, type: !1382)
!3117 = !DILocation(line: 0, scope: !3109)
!3118 = !DILocation(line: 477, column: 10, scope: !3109)
!3119 = !DILocation(line: 477, column: 3, scope: !3109)
!3120 = distinct !DISubprogram(name: "mknod", scope: !3049, file: !3049, line: 483, type: !3121, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!1382, !1387, !3063, !3057}
!3123 = !{!3124, !3125, !3126}
!3124 = !DILocalVariable(name: "__path", arg: 1, scope: !3120, file: !3049, line: 483, type: !1387)
!3125 = !DILocalVariable(name: "__mode", arg: 2, scope: !3120, file: !3049, line: 483, type: !3063)
!3126 = !DILocalVariable(name: "__dev", arg: 3, scope: !3120, file: !3049, line: 483, type: !3057)
!3127 = !DILocation(line: 0, scope: !3120)
!3128 = !DILocation(line: 485, column: 10, scope: !3120)
!3129 = !DILocation(line: 485, column: 3, scope: !3120)
!3130 = distinct !DISubprogram(name: "mknodat", scope: !3049, file: !3049, line: 491, type: !3131, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!1382, !1382, !1387, !3063, !3057}
!3133 = !{!3134, !3135, !3136, !3137}
!3134 = !DILocalVariable(name: "__fd", arg: 1, scope: !3130, file: !3049, line: 491, type: !1382)
!3135 = !DILocalVariable(name: "__path", arg: 2, scope: !3130, file: !3049, line: 491, type: !1387)
!3136 = !DILocalVariable(name: "__mode", arg: 3, scope: !3130, file: !3049, line: 491, type: !3063)
!3137 = !DILocalVariable(name: "__dev", arg: 4, scope: !3130, file: !3049, line: 491, type: !3057)
!3138 = !DILocation(line: 0, scope: !3130)
!3139 = !DILocation(line: 494, column: 10, scope: !3130)
!3140 = !DILocation(line: 494, column: 3, scope: !3130)
!3141 = distinct !DISubprogram(name: "stat64", scope: !3049, file: !3049, line: 502, type: !3142, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3164)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!1382, !1387, !3144}
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !3054, line: 119, size: 1152, elements: !3146)
!3146 = !{!3147, !3148, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3160, !3161, !3162, !3163}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3145, file: !3054, line: 121, baseType: !3057, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3145, file: !3054, line: 123, baseType: !3149, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2807, line: 149, baseType: !1443)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3145, file: !3054, line: 124, baseType: !3061, size: 64, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3145, file: !3054, line: 125, baseType: !3063, size: 32, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3145, file: !3054, line: 132, baseType: !3065, size: 32, offset: 224)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3145, file: !3054, line: 133, baseType: !3067, size: 32, offset: 256)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3145, file: !3054, line: 135, baseType: !1382, size: 32, offset: 288)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3145, file: !3054, line: 136, baseType: !3057, size: 64, offset: 320)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3145, file: !3054, line: 137, baseType: !2806, size: 64, offset: 384)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3145, file: !3054, line: 143, baseType: !3072, size: 64, offset: 448)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3145, file: !3054, line: 144, baseType: !3159, size: 64, offset: 512)
!3159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2807, line: 180, baseType: !1445)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3145, file: !3054, line: 152, baseType: !3076, size: 128, offset: 576)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3145, file: !3054, line: 153, baseType: !3076, size: 128, offset: 704)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3145, file: !3054, line: 154, baseType: !3076, size: 128, offset: 832)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3145, file: !3054, line: 164, baseType: !3086, size: 192, offset: 960)
!3164 = !{!3165, !3166}
!3165 = !DILocalVariable(name: "__path", arg: 1, scope: !3141, file: !3049, line: 502, type: !1387)
!3166 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3141, file: !3049, line: 502, type: !3144)
!3167 = !DILocation(line: 0, scope: !3141)
!3168 = !DILocation(line: 504, column: 10, scope: !3141)
!3169 = !DILocation(line: 504, column: 3, scope: !3141)
!3170 = distinct !DISubprogram(name: "lstat64", scope: !3049, file: !3049, line: 509, type: !3142, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3171)
!3171 = !{!3172, !3173}
!3172 = !DILocalVariable(name: "__path", arg: 1, scope: !3170, file: !3049, line: 509, type: !1387)
!3173 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3170, file: !3049, line: 509, type: !3144)
!3174 = !DILocation(line: 0, scope: !3170)
!3175 = !DILocation(line: 511, column: 10, scope: !3170)
!3176 = !DILocation(line: 511, column: 3, scope: !3170)
!3177 = distinct !DISubprogram(name: "fstat64", scope: !3049, file: !3049, line: 516, type: !3178, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!1382, !1382, !3144}
!3180 = !{!3181, !3182}
!3181 = !DILocalVariable(name: "__fd", arg: 1, scope: !3177, file: !3049, line: 516, type: !1382)
!3182 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3177, file: !3049, line: 516, type: !3144)
!3183 = !DILocation(line: 0, scope: !3177)
!3184 = !DILocation(line: 518, column: 10, scope: !3177)
!3185 = !DILocation(line: 518, column: 3, scope: !3177)
!3186 = distinct !DISubprogram(name: "fstatat64", scope: !3049, file: !3049, line: 523, type: !3187, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!1382, !1382, !1387, !3144, !1382}
!3189 = !{!3190, !3191, !3192, !3193}
!3190 = !DILocalVariable(name: "__fd", arg: 1, scope: !3186, file: !3049, line: 523, type: !1382)
!3191 = !DILocalVariable(name: "__filename", arg: 2, scope: !3186, file: !3049, line: 523, type: !1387)
!3192 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !3186, file: !3049, line: 523, type: !3144)
!3193 = !DILocalVariable(name: "__flag", arg: 4, scope: !3186, file: !3049, line: 523, type: !1382)
!3194 = !DILocation(line: 0, scope: !3186)
!3195 = !DILocation(line: 526, column: 10, scope: !3186)
!3196 = !DILocation(line: 526, column: 3, scope: !3186)
!3197 = distinct !DISubprogram(name: "tree_lower_complex", scope: !3, file: !3, line: 1571, type: !2728, scopeLine: 1572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3198)
!3198 = !{!3199, !3200, !3207}
!3199 = !DILocalVariable(name: "old_last_basic_block", scope: !3197, file: !3, line: 1573, type: !1382)
!3200 = !DILocalVariable(name: "gsi", scope: !3197, file: !3, line: 1574, type: !3201)
!3201 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !561, line: 265, baseType: !3202)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 254, size: 192, elements: !3203)
!3203 = !{!3204, !3205, !3206}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3202, file: !561, line: 257, baseType: !1708, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3202, file: !561, line: 263, baseType: !1703, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3202, file: !561, line: 264, baseType: !2113, size: 64, offset: 128)
!3207 = !DILocalVariable(name: "bb", scope: !3197, file: !3, line: 1575, type: !2113)
!3208 = !DILocation(line: 1574, column: 3, scope: !3197)
!3209 = !DILocation(line: 1577, column: 8, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 1577, column: 7)
!3211 = !DILocation(line: 1577, column: 7, scope: !3197)
!3212 = !DILocation(line: 1580, column: 28, scope: !3197)
!3213 = !DILocation(line: 1580, column: 26, scope: !3197)
!3214 = !DILocation(line: 1581, column: 3, scope: !3197)
!3215 = !DILocation(line: 1584, column: 3, scope: !3197)
!3216 = !DILocation(line: 1585, column: 3, scope: !3197)
!3217 = !DILocation(line: 1587, column: 33, scope: !3197)
!3218 = !DILocation(line: 1587, column: 31, scope: !3197)
!3219 = !DILocation(line: 1590, column: 33, scope: !3197)
!3220 = !DILocation(line: 1590, column: 31, scope: !3197)
!3221 = !DILocation(line: 1591, column: 3, scope: !3197)
!3222 = !DILocation(line: 1594, column: 3, scope: !3197)
!3223 = !DILocation(line: 1597, column: 26, scope: !3197)
!3224 = !DILocation(line: 0, scope: !3197)
!3225 = !DILocation(line: 1598, column: 3, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 1598, column: 3)
!3227 = !DILocation(line: 0, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 1604, column: 7)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1599, column: 5)
!3230 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 1598, column: 3)
!3231 = !DILocation(line: 1598, column: 3, scope: !3230)
!3232 = !DILocation(line: 0, scope: !3226)
!3233 = !DILocation(line: 1600, column: 15, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 1600, column: 11)
!3235 = !DILocation(line: 1600, column: 21, scope: !3234)
!3236 = !DILocation(line: 1600, column: 11, scope: !3229)
!3237 = !DILocation(line: 1603, column: 7, scope: !3229)
!3238 = !DILocation(line: 1604, column: 18, scope: !3228)
!3239 = !DILocation(line: 1604, column: 12, scope: !3228)
!3240 = !DILocation(line: 1604, column: 38, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 1604, column: 7)
!3242 = !DILocation(line: 1604, column: 37, scope: !3241)
!3243 = !DILocation(line: 1604, column: 7, scope: !3228)
!3244 = !DILocation(line: 1605, column: 2, scope: !3241)
!3245 = !DILocation(line: 1604, column: 55, scope: !3241)
!3246 = !DILocation(line: 1604, column: 7, scope: !3241)
!3247 = distinct !{!3247, !3243, !3248}
!3248 = !DILocation(line: 1605, column: 35, scope: !3228)
!3249 = !DILocation(line: 0, scope: !3230)
!3250 = distinct !{!3250, !3225, !3251}
!3251 = !DILocation(line: 1606, column: 5, scope: !3226)
!3252 = !DILocation(line: 1608, column: 3, scope: !3197)
!3253 = !DILocation(line: 1610, column: 16, scope: !3197)
!3254 = !DILocation(line: 1610, column: 3, scope: !3197)
!3255 = !DILocation(line: 1611, column: 3, scope: !3197)
!3256 = !DILocation(line: 1612, column: 3, scope: !3197)
!3257 = !DILocation(line: 1613, column: 3, scope: !3197)
!3258 = !DILocation(line: 1614, column: 1, scope: !3197)
!3259 = distinct !DISubprogram(name: "gate_no_optimization", scope: !3, file: !3, line: 1640, type: !2724, scopeLine: 1641, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2773)
!3260 = !DILocation(line: 1644, column: 12, scope: !3259)
!3261 = !DILocation(line: 1644, column: 18, scope: !3259)
!3262 = !DILocation(line: 1644, column: 10, scope: !3259)
!3263 = !DILocation(line: 1644, column: 3, scope: !3259)
!3264 = distinct !DISubprogram(name: "init_dont_simulate_again", scope: !3, file: !3, line: 193, type: !2724, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3265)
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3277, !3278, !3279}
!3266 = !DILocalVariable(name: "bb", scope: !3264, file: !3, line: 195, type: !2113)
!3267 = !DILocalVariable(name: "gsi", scope: !3264, file: !3, line: 196, type: !3201)
!3268 = !DILocalVariable(name: "phi", scope: !3264, file: !3, line: 197, type: !1713)
!3269 = !DILocalVariable(name: "saw_a_complex_op", scope: !3264, file: !3, line: 198, type: !1381)
!3270 = !DILocalVariable(name: "stmt", scope: !3271, file: !3, line: 211, type: !1713)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 210, column: 2)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 209, column: 7)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 209, column: 7)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 201, column: 5)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 200, column: 3)
!3276 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 200, column: 3)
!3277 = !DILocalVariable(name: "op0", scope: !3271, file: !3, line: 212, type: !1389)
!3278 = !DILocalVariable(name: "op1", scope: !3271, file: !3, line: 212, type: !1389)
!3279 = !DILocalVariable(name: "sim_again_p", scope: !3271, file: !3, line: 213, type: !1381)
!3280 = !DILocation(line: 196, column: 3, scope: !3264)
!3281 = !DILocation(line: 0, scope: !3264)
!3282 = !DILocation(line: 200, column: 3, scope: !3276)
!3283 = !DILocation(line: 0, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 202, column: 7)
!3285 = !DILocation(line: 0, scope: !3273)
!3286 = !DILocation(line: 200, column: 3, scope: !3275)
!3287 = !DILocation(line: 198, column: 8, scope: !3264)
!3288 = !DILocation(line: 0, scope: !3276)
!3289 = !DILocation(line: 202, column: 18, scope: !3284)
!3290 = !DILocation(line: 202, column: 12, scope: !3284)
!3291 = !DILocation(line: 202, column: 40, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 202, column: 7)
!3293 = !DILocation(line: 202, column: 39, scope: !3292)
!3294 = !DILocation(line: 202, column: 7, scope: !3284)
!3295 = !DILocation(line: 204, column: 10, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 203, column: 2)
!3297 = !DILocation(line: 206, column: 24, scope: !3296)
!3298 = !DILocation(line: 206, column: 8, scope: !3296)
!3299 = !DILocation(line: 205, column: 4, scope: !3296)
!3300 = !DILocation(line: 202, column: 57, scope: !3292)
!3301 = !DILocation(line: 202, column: 7, scope: !3292)
!3302 = distinct !{!3302, !3294, !3303}
!3303 = !DILocation(line: 207, column: 2, scope: !3284)
!3304 = !DILocation(line: 209, column: 18, scope: !3273)
!3305 = !DILocation(line: 209, column: 12, scope: !3273)
!3306 = !DILocation(line: 209, column: 38, scope: !3272)
!3307 = !DILocation(line: 209, column: 37, scope: !3272)
!3308 = !DILocation(line: 209, column: 7, scope: !3273)
!3309 = !DILocation(line: 215, column: 11, scope: !3271)
!3310 = !DILocation(line: 0, scope: !3271)
!3311 = !DILocation(line: 220, column: 18, scope: !3271)
!3312 = !DILocation(line: 222, column: 12, scope: !3271)
!3313 = !DILocation(line: 222, column: 4, scope: !3271)
!3314 = !DILocation(line: 225, column: 12, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 225, column: 12)
!3316 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 223, column: 6)
!3317 = !DILocation(line: 225, column: 12, scope: !3316)
!3318 = !DILocation(line: 226, column: 40, scope: !3315)
!3319 = !DILocation(line: 226, column: 24, scope: !3315)
!3320 = !DILocation(line: 226, column: 10, scope: !3315)
!3321 = !DILocation(line: 230, column: 38, scope: !3316)
!3322 = !DILocation(line: 230, column: 22, scope: !3316)
!3323 = !DILocation(line: 231, column: 12, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 231, column: 12)
!3325 = !DILocation(line: 231, column: 42, scope: !3324)
!3326 = !DILocation(line: 232, column: 5, scope: !3324)
!3327 = !DILocation(line: 232, column: 8, scope: !3324)
!3328 = !DILocation(line: 232, column: 38, scope: !3324)
!3329 = !DILocation(line: 231, column: 12, scope: !3316)
!3330 = !DILocation(line: 233, column: 9, scope: !3324)
!3331 = !DILocation(line: 233, column: 3, scope: !3324)
!3332 = !DILocation(line: 235, column: 9, scope: !3324)
!3333 = !DILocation(line: 0, scope: !3324)
!3334 = !DILocation(line: 236, column: 12, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 236, column: 12)
!3336 = !DILocation(line: 236, column: 34, scope: !3335)
!3337 = !DILocation(line: 236, column: 12, scope: !3316)
!3338 = !DILocation(line: 237, column: 9, scope: !3335)
!3339 = !DILocation(line: 237, column: 3, scope: !3335)
!3340 = !DILocation(line: 241, column: 14, scope: !3316)
!3341 = !DILocation(line: 242, column: 14, scope: !3316)
!3342 = !DILocation(line: 243, column: 8, scope: !3316)
!3343 = !DILocation(line: 249, column: 8, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 249, column: 8)
!3345 = !DILocation(line: 249, column: 15, scope: !3344)
!3346 = !DILocation(line: 249, column: 12, scope: !3344)
!3347 = !DILocation(line: 250, column: 14, scope: !3344)
!3348 = !DILocation(line: 250, column: 6, scope: !3344)
!3349 = !DILocation(line: 262, column: 7, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !3, line: 262, column: 7)
!3351 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 251, column: 8)
!3352 = !DILocation(line: 262, column: 35, scope: !3350)
!3353 = !DILocation(line: 263, column: 7, scope: !3350)
!3354 = !DILocation(line: 263, column: 10, scope: !3350)
!3355 = !DILocation(line: 263, column: 38, scope: !3350)
!3356 = !DILocation(line: 262, column: 7, scope: !3351)
!3357 = !DILocation(line: 264, column: 5, scope: !3350)
!3358 = !DILocation(line: 269, column: 7, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3351, file: !3, line: 269, column: 7)
!3360 = !DILocation(line: 269, column: 35, scope: !3359)
!3361 = !DILocation(line: 269, column: 7, scope: !3351)
!3362 = !DILocation(line: 271, column: 3, scope: !3351)
!3363 = !DILocation(line: 279, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3351, file: !3, line: 279, column: 7)
!3365 = !DILocation(line: 279, column: 23, scope: !3364)
!3366 = !DILocation(line: 280, column: 7, scope: !3364)
!3367 = !DILocation(line: 280, column: 10, scope: !3364)
!3368 = !DILocation(line: 279, column: 7, scope: !3351)
!3369 = !DILocation(line: 288, column: 4, scope: !3271)
!3370 = !DILocation(line: 209, column: 55, scope: !3272)
!3371 = !DILocation(line: 209, column: 7, scope: !3272)
!3372 = distinct !{!3372, !3308, !3373}
!3373 = !DILocation(line: 289, column: 2, scope: !3273)
!3374 = !DILocation(line: 0, scope: !3275)
!3375 = distinct !{!3375, !3282, !3376}
!3376 = !DILocation(line: 290, column: 5, scope: !3276)
!3377 = !DILocation(line: 293, column: 1, scope: !3264)
!3378 = !DILocation(line: 292, column: 3, scope: !3264)
!3379 = distinct !DISubprogram(name: "VEC_complex_lattice_t_heap_alloc", scope: !3, file: !3, line: 56, type: !3380, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!2686, !1382}
!3382 = !{!3383}
!3383 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3379, file: !3, line: 56, type: !1382)
!3384 = !DILocation(line: 0, scope: !3379)
!3385 = !DILocation(line: 56, column: 1, scope: !3379)
!3386 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !334, file: !334, line: 182, type: !3387, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3391)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!7, !3389}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2213)
!3391 = !{!3392}
!3392 = !DILocalVariable(name: "vec_", arg: 1, scope: !3386, file: !334, line: 182, type: !3389)
!3393 = !DILocation(line: 0, scope: !3386)
!3394 = !DILocation(line: 182, column: 1, scope: !3386)
!3395 = distinct !DISubprogram(name: "VEC_complex_lattice_t_heap_safe_grow_cleared", scope: !3, file: !3, line: 56, type: !3396, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3399)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !3398, !1382}
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!3399 = !{!3400, !3401, !3402}
!3400 = !DILocalVariable(name: "vec_", arg: 1, scope: !3395, file: !3, line: 56, type: !3398)
!3401 = !DILocalVariable(name: "size_", arg: 2, scope: !3395, file: !3, line: 56, type: !1382)
!3402 = !DILocalVariable(name: "oldsize", scope: !3395, file: !3, line: 56, type: !1382)
!3403 = !DILocation(line: 0, scope: !3395)
!3404 = !DILocation(line: 56, column: 1, scope: !3395)
!3405 = distinct !DISubprogram(name: "init_parameter_lattice_values", scope: !3, file: !3, line: 176, type: !3406, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null}
!3408 = !{!3409, !3410}
!3409 = !DILocalVariable(name: "parm", scope: !3405, file: !3, line: 178, type: !1389)
!3410 = !DILocalVariable(name: "ssa_name", scope: !3405, file: !3, line: 178, type: !1389)
!3411 = !DILocation(line: 180, column: 15, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 180, column: 3)
!3413 = !DILocation(line: 180, column: 8, scope: !3412)
!3414 = !DILocation(line: 0, scope: !3412)
!3415 = !DILocation(line: 0, scope: !3405)
!3416 = !DILocation(line: 180, column: 3, scope: !3412)
!3417 = !DILocation(line: 181, column: 9, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 181, column: 9)
!3419 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 180, column: 3)
!3420 = !DILocation(line: 182, column: 2, scope: !3418)
!3421 = !DILocation(line: 182, column: 5, scope: !3418)
!3422 = !DILocation(line: 182, column: 20, scope: !3418)
!3423 = !DILocation(line: 183, column: 2, scope: !3418)
!3424 = !DILocation(line: 183, column: 37, scope: !3418)
!3425 = !DILocation(line: 183, column: 17, scope: !3418)
!3426 = !DILocation(line: 183, column: 50, scope: !3418)
!3427 = !DILocation(line: 181, column: 9, scope: !3419)
!3428 = !DILocation(line: 184, column: 7, scope: !3418)
!3429 = !DILocation(line: 180, column: 58, scope: !3419)
!3430 = !DILocation(line: 180, column: 3, scope: !3419)
!3431 = distinct !{!3431, !3416, !3432}
!3432 = !DILocation(line: 184, column: 7, scope: !3412)
!3433 = !DILocation(line: 186, column: 1, scope: !3405)
!3434 = distinct !DISubprogram(name: "complex_visit_stmt", scope: !3, file: !3, line: 299, type: !3435, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3438)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!631, !1713, !3437, !1748}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447}
!3439 = !DILocalVariable(name: "stmt", arg: 1, scope: !3434, file: !3, line: 299, type: !1713)
!3440 = !DILocalVariable(name: "taken_edge_p", arg: 2, scope: !3434, file: !3, line: 299, type: !3437)
!3441 = !DILocalVariable(name: "result_p", arg: 3, scope: !3434, file: !3, line: 300, type: !1748)
!3442 = !DILocalVariable(name: "new_l", scope: !3434, file: !3, line: 302, type: !2698)
!3443 = !DILocalVariable(name: "old_l", scope: !3434, file: !3, line: 302, type: !2698)
!3444 = !DILocalVariable(name: "op1_l", scope: !3434, file: !3, line: 302, type: !2698)
!3445 = !DILocalVariable(name: "op2_l", scope: !3434, file: !3, line: 302, type: !2698)
!3446 = !DILocalVariable(name: "ver", scope: !3434, file: !3, line: 303, type: !7)
!3447 = !DILocalVariable(name: "lhs", scope: !3434, file: !3, line: 304, type: !1389)
!3448 = !DILocation(line: 0, scope: !3434)
!3449 = !DILocation(line: 306, column: 9, scope: !3434)
!3450 = !DILocation(line: 308, column: 8, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 308, column: 7)
!3452 = !DILocation(line: 308, column: 7, scope: !3434)
!3453 = !DILocation(line: 313, column: 3, scope: !3434)
!3454 = !DILocation(line: 314, column: 3, scope: !3434)
!3455 = !DILocation(line: 316, column: 13, scope: !3434)
!3456 = !DILocation(line: 317, column: 9, scope: !3434)
!3457 = !DILocation(line: 318, column: 11, scope: !3434)
!3458 = !DILocation(line: 320, column: 11, scope: !3434)
!3459 = !DILocation(line: 320, column: 3, scope: !3434)
!3460 = !DILocation(line: 324, column: 35, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 321, column: 5)
!3462 = !DILocation(line: 324, column: 15, scope: !3461)
!3463 = !DILocation(line: 325, column: 7, scope: !3461)
!3464 = !DILocation(line: 328, column: 41, scope: !3461)
!3465 = !DILocation(line: 329, column: 13, scope: !3461)
!3466 = !DILocation(line: 328, column: 15, scope: !3461)
!3467 = !DILocation(line: 330, column: 7, scope: !3461)
!3468 = !DILocation(line: 334, column: 35, scope: !3461)
!3469 = !DILocation(line: 334, column: 15, scope: !3461)
!3470 = !DILocation(line: 335, column: 35, scope: !3461)
!3471 = !DILocation(line: 335, column: 15, scope: !3461)
!3472 = !DILocation(line: 339, column: 21, scope: !3461)
!3473 = !DILocation(line: 340, column: 7, scope: !3461)
!3474 = !DILocation(line: 348, column: 35, scope: !3461)
!3475 = !DILocation(line: 348, column: 15, scope: !3461)
!3476 = !DILocation(line: 349, column: 35, scope: !3461)
!3477 = !DILocation(line: 349, column: 15, scope: !3461)
!3478 = !DILocation(line: 352, column: 17, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 352, column: 11)
!3480 = !DILocation(line: 352, column: 37, scope: !3479)
!3481 = !DILocation(line: 352, column: 28, scope: !3479)
!3482 = !DILocation(line: 356, column: 22, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 356, column: 16)
!3484 = !DILocation(line: 356, column: 16, scope: !3479)
!3485 = !DILocation(line: 358, column: 22, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 358, column: 16)
!3487 = !DILocation(line: 358, column: 16, scope: !3483)
!3488 = !DILocation(line: 366, column: 20, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 361, column: 2)
!3490 = !DILocation(line: 366, column: 42, scope: !3489)
!3491 = !DILocation(line: 366, column: 33, scope: !3489)
!3492 = !DILocation(line: 366, column: 56, scope: !3489)
!3493 = !DILocation(line: 369, column: 10, scope: !3489)
!3494 = !DILocation(line: 375, column: 35, scope: !3461)
!3495 = !DILocation(line: 375, column: 15, scope: !3461)
!3496 = !DILocation(line: 376, column: 7, scope: !3461)
!3497 = !DILocation(line: 0, scope: !3461)
!3498 = !DILocation(line: 384, column: 13, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 384, column: 7)
!3500 = !DILocation(line: 384, column: 7, scope: !3434)
!3501 = !DILocation(line: 387, column: 3, scope: !3434)
!3502 = !DILocation(line: 388, column: 16, scope: !3434)
!3503 = !DILocation(line: 388, column: 10, scope: !3434)
!3504 = !DILocation(line: 388, column: 3, scope: !3434)
!3505 = !DILocation(line: 389, column: 1, scope: !3434)
!3506 = distinct !DISubprogram(name: "complex_visit_phi", scope: !3, file: !3, line: 394, type: !3507, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!631, !1713}
!3509 = !{!3510, !3511, !3512, !3513, !3514, !3515}
!3510 = !DILocalVariable(name: "phi", arg: 1, scope: !3506, file: !3, line: 394, type: !1713)
!3511 = !DILocalVariable(name: "new_l", scope: !3506, file: !3, line: 396, type: !2698)
!3512 = !DILocalVariable(name: "old_l", scope: !3506, file: !3, line: 396, type: !2698)
!3513 = !DILocalVariable(name: "ver", scope: !3506, file: !3, line: 397, type: !7)
!3514 = !DILocalVariable(name: "lhs", scope: !3506, file: !3, line: 398, type: !1389)
!3515 = !DILocalVariable(name: "i", scope: !3506, file: !3, line: 399, type: !1382)
!3516 = !DILocation(line: 0, scope: !3506)
!3517 = !DILocation(line: 401, column: 9, scope: !3506)
!3518 = !DILocation(line: 405, column: 3, scope: !3506)
!3519 = !DILocation(line: 409, column: 12, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 409, column: 3)
!3521 = !DILocation(line: 409, column: 8, scope: !3520)
!3522 = !DILocation(line: 0, scope: !3520)
!3523 = !DILocation(line: 409, column: 45, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3520, file: !3, line: 409, column: 3)
!3525 = !DILocation(line: 409, column: 3, scope: !3520)
!3526 = !DILocation(line: 410, column: 59, scope: !3524)
!3527 = !DILocation(line: 410, column: 34, scope: !3524)
!3528 = !DILocation(line: 410, column: 14, scope: !3524)
!3529 = !DILocation(line: 410, column: 11, scope: !3524)
!3530 = !DILocation(line: 409, column: 3, scope: !3524)
!3531 = distinct !{!3531, !3525, !3532}
!3532 = !DILocation(line: 410, column: 61, scope: !3520)
!3533 = !DILocation(line: 412, column: 9, scope: !3506)
!3534 = !DILocation(line: 413, column: 11, scope: !3506)
!3535 = !DILocation(line: 415, column: 13, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 415, column: 7)
!3537 = !DILocation(line: 415, column: 7, scope: !3506)
!3538 = !DILocation(line: 418, column: 3, scope: !3506)
!3539 = !DILocation(line: 419, column: 16, scope: !3506)
!3540 = !DILocation(line: 419, column: 10, scope: !3506)
!3541 = !DILocation(line: 419, column: 3, scope: !3506)
!3542 = !DILocation(line: 420, column: 1, scope: !3506)
!3543 = distinct !DISubprogram(name: "VEC_tree_heap_alloc", scope: !334, file: !334, line: 184, type: !3544, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!2699, !1382}
!3546 = !{!3547}
!3547 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3543, file: !334, line: 184, type: !1382)
!3548 = !DILocation(line: 0, scope: !3543)
!3549 = !DILocation(line: 184, column: 1, scope: !3543)
!3550 = distinct !DISubprogram(name: "VEC_tree_heap_safe_grow_cleared", scope: !334, file: !334, line: 184, type: !3551, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3554)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{null, !3553, !1382}
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!3554 = !{!3555, !3556, !3557}
!3555 = !DILocalVariable(name: "vec_", arg: 1, scope: !3550, file: !334, line: 184, type: !3553)
!3556 = !DILocalVariable(name: "size_", arg: 2, scope: !3550, file: !334, line: 184, type: !1382)
!3557 = !DILocalVariable(name: "oldsize", scope: !3550, file: !334, line: 184, type: !1382)
!3558 = !DILocation(line: 0, scope: !3550)
!3559 = !DILocation(line: 184, column: 1, scope: !3550)
!3560 = distinct !DISubprogram(name: "update_parameter_components", scope: !3, file: !3, line: 684, type: !3406, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3561)
!3561 = !{!3562, !3563, !3564, !3568, !3569, !3570}
!3562 = !DILocalVariable(name: "entry_edge", scope: !3560, file: !3, line: 686, type: !1693)
!3563 = !DILocalVariable(name: "parm", scope: !3560, file: !3, line: 687, type: !1389)
!3564 = !DILocalVariable(name: "type", scope: !3565, file: !3, line: 691, type: !1389)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 690, column: 5)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 689, column: 3)
!3567 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 689, column: 3)
!3568 = !DILocalVariable(name: "ssa_name", scope: !3565, file: !3, line: 692, type: !1389)
!3569 = !DILocalVariable(name: "r", scope: !3565, file: !3, line: 692, type: !1389)
!3570 = !DILocalVariable(name: "i", scope: !3565, file: !3, line: 692, type: !1389)
!3571 = !DILocation(line: 686, column: 39, scope: !3560)
!3572 = !DILocation(line: 686, column: 21, scope: !3560)
!3573 = !DILocation(line: 0, scope: !3560)
!3574 = !DILocation(line: 689, column: 15, scope: !3567)
!3575 = !DILocation(line: 689, column: 8, scope: !3567)
!3576 = !DILocation(line: 0, scope: !3567)
!3577 = !DILocation(line: 689, column: 3, scope: !3567)
!3578 = !DILocation(line: 691, column: 19, scope: !3565)
!3579 = !DILocation(line: 0, scope: !3565)
!3580 = !DILocation(line: 694, column: 11, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 694, column: 11)
!3582 = !DILocation(line: 694, column: 28, scope: !3581)
!3583 = !DILocation(line: 694, column: 44, scope: !3581)
!3584 = !DILocation(line: 694, column: 48, scope: !3581)
!3585 = !DILocation(line: 694, column: 11, scope: !3565)
!3586 = !DILocation(line: 697, column: 14, scope: !3565)
!3587 = !DILocation(line: 698, column: 38, scope: !3565)
!3588 = !DILocation(line: 698, column: 18, scope: !3565)
!3589 = !DILocation(line: 699, column: 12, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 699, column: 11)
!3591 = !DILocation(line: 699, column: 11, scope: !3565)
!3592 = !DILocation(line: 702, column: 11, scope: !3565)
!3593 = !DILocation(line: 703, column: 11, scope: !3565)
!3594 = !DILocation(line: 704, column: 7, scope: !3565)
!3595 = !DILocation(line: 705, column: 5, scope: !3566)
!3596 = !DILocation(line: 689, column: 58, scope: !3566)
!3597 = !DILocation(line: 689, column: 3, scope: !3566)
!3598 = distinct !{!3598, !3577, !3599}
!3599 = !DILocation(line: 705, column: 5, scope: !3567)
!3600 = !DILocation(line: 706, column: 1, scope: !3560)
!3601 = distinct !DISubprogram(name: "update_phi_components", scope: !3, file: !3, line: 712, type: !3602, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !2113}
!3604 = !{!3605, !3606, !3607, !3611, !3614, !3615, !3616, !3617, !3618, !3619, !3623}
!3605 = !DILocalVariable(name: "bb", arg: 1, scope: !3601, file: !3, line: 712, type: !2113)
!3606 = !DILocalVariable(name: "gsi", scope: !3601, file: !3, line: 714, type: !3201)
!3607 = !DILocalVariable(name: "phi", scope: !3608, file: !3, line: 718, type: !1713)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 717, column: 5)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 716, column: 3)
!3610 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 716, column: 3)
!3611 = !DILocalVariable(name: "lr", scope: !3612, file: !3, line: 722, type: !1389)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 721, column: 2)
!3613 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 720, column: 11)
!3614 = !DILocalVariable(name: "li", scope: !3612, file: !3, line: 722, type: !1389)
!3615 = !DILocalVariable(name: "pr", scope: !3612, file: !3, line: 723, type: !1713)
!3616 = !DILocalVariable(name: "pi", scope: !3612, file: !3, line: 723, type: !1713)
!3617 = !DILocalVariable(name: "i", scope: !3612, file: !3, line: 724, type: !7)
!3618 = !DILocalVariable(name: "n", scope: !3612, file: !3, line: 724, type: !7)
!3619 = !DILocalVariable(name: "comp", scope: !3620, file: !3, line: 742, type: !1389)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 741, column: 6)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 740, column: 4)
!3622 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 740, column: 4)
!3623 = !DILocalVariable(name: "arg", scope: !3620, file: !3, line: 742, type: !1389)
!3624 = !DILocation(line: 0, scope: !3601)
!3625 = !DILocation(line: 714, column: 3, scope: !3601)
!3626 = !DILocation(line: 716, column: 14, scope: !3610)
!3627 = !DILocation(line: 716, column: 8, scope: !3610)
!3628 = !DILocation(line: 716, column: 36, scope: !3609)
!3629 = !DILocation(line: 716, column: 35, scope: !3609)
!3630 = !DILocation(line: 716, column: 3, scope: !3610)
!3631 = !DILocation(line: 718, column: 20, scope: !3608)
!3632 = !DILocation(line: 0, scope: !3608)
!3633 = !DILocation(line: 720, column: 27, scope: !3613)
!3634 = !DILocation(line: 720, column: 11, scope: !3613)
!3635 = !DILocation(line: 720, column: 11, scope: !3608)
!3636 = !DILocation(line: 0, scope: !3612)
!3637 = !DILocation(line: 726, column: 33, scope: !3612)
!3638 = !DILocation(line: 726, column: 9, scope: !3612)
!3639 = !DILocation(line: 727, column: 8, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 727, column: 8)
!3641 = !DILocation(line: 727, column: 23, scope: !3640)
!3642 = !DILocation(line: 727, column: 8, scope: !3612)
!3643 = !DILocation(line: 729, column: 13, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 728, column: 6)
!3645 = !DILocation(line: 730, column: 8, scope: !3644)
!3646 = !DILocation(line: 730, column: 31, scope: !3644)
!3647 = !DILocation(line: 731, column: 6, scope: !3644)
!3648 = !DILocation(line: 733, column: 33, scope: !3612)
!3649 = !DILocation(line: 733, column: 9, scope: !3612)
!3650 = !DILocation(line: 734, column: 8, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 734, column: 8)
!3652 = !DILocation(line: 734, column: 23, scope: !3651)
!3653 = !DILocation(line: 734, column: 8, scope: !3612)
!3654 = !DILocation(line: 736, column: 13, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 735, column: 6)
!3656 = !DILocation(line: 737, column: 8, scope: !3655)
!3657 = !DILocation(line: 737, column: 31, scope: !3655)
!3658 = !DILocation(line: 738, column: 6, scope: !3655)
!3659 = !DILocation(line: 740, column: 20, scope: !3622)
!3660 = !DILocation(line: 0, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 743, column: 12)
!3662 = !DILocation(line: 0, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 748, column: 12)
!3664 = !DILocation(line: 740, column: 9, scope: !3622)
!3665 = !DILocation(line: 740, column: 49, scope: !3621)
!3666 = !DILocation(line: 0, scope: !3622)
!3667 = !DILocation(line: 740, column: 4, scope: !3622)
!3668 = !DILocation(line: 742, column: 25, scope: !3620)
!3669 = !DILocation(line: 0, scope: !3620)
!3670 = !DILocation(line: 740, column: 54, scope: !3621)
!3671 = !DILocation(line: 740, column: 4, scope: !3621)
!3672 = distinct !{!3672, !3667, !3673}
!3673 = !DILocation(line: 753, column: 6, scope: !3622)
!3674 = !DILocation(line: 716, column: 53, scope: !3609)
!3675 = !DILocation(line: 750, column: 12, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 749, column: 3)
!3677 = !DILocation(line: 751, column: 5, scope: !3676)
!3678 = !DILocation(line: 745, column: 12, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 744, column: 3)
!3680 = !DILocation(line: 746, column: 5, scope: !3679)
!3681 = !DILocation(line: 748, column: 12, scope: !3620)
!3682 = !DILocation(line: 752, column: 3, scope: !3676)
!3683 = !DILocation(line: 716, column: 3, scope: !3609)
!3684 = distinct !{!3684, !3630, !3685}
!3685 = !DILocation(line: 755, column: 5, scope: !3610)
!3686 = !DILocation(line: 756, column: 1, scope: !3601)
!3687 = distinct !DISubprogram(name: "gsi_start_bb", scope: !561, file: !561, line: 4418, type: !3688, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!3201, !2113}
!3690 = !{!3691, !3692, !3693}
!3691 = !DILocalVariable(name: "bb", arg: 1, scope: !3687, file: !561, line: 4418, type: !2113)
!3692 = !DILocalVariable(name: "i", scope: !3687, file: !561, line: 4420, type: !3201)
!3693 = !DILocalVariable(name: "seq", scope: !3687, file: !561, line: 4421, type: !1703)
!3694 = !DILocation(line: 0, scope: !3687)
!3695 = !DILocation(line: 4420, column: 24, scope: !3687)
!3696 = !DILocation(line: 4423, column: 9, scope: !3687)
!3697 = !DILocation(line: 4424, column: 11, scope: !3687)
!3698 = !DILocation(line: 4424, column: 5, scope: !3687)
!3699 = !DILocation(line: 4424, column: 9, scope: !3687)
!3700 = !DILocation(line: 4425, column: 5, scope: !3687)
!3701 = !DILocation(line: 4425, column: 9, scope: !3687)
!3702 = !DILocation(line: 4426, column: 5, scope: !3687)
!3703 = !DILocation(line: 4426, column: 8, scope: !3687)
!3704 = !DILocation(line: 4429, column: 1, scope: !3687)
!3705 = distinct !DISubprogram(name: "gsi_end_p", scope: !561, file: !561, line: 4467, type: !3706, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3708)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!1381, !3201}
!3708 = !{!3709}
!3709 = !DILocalVariable(name: "i", arg: 1, scope: !3705, file: !561, line: 4467, type: !3201)
!3710 = !DILocation(line: 4467, column: 33, scope: !3705)
!3711 = !DILocation(line: 4469, column: 12, scope: !3705)
!3712 = !DILocation(line: 4469, column: 16, scope: !3705)
!3713 = !DILocation(line: 4469, column: 10, scope: !3705)
!3714 = !DILocation(line: 4469, column: 3, scope: !3705)
!3715 = distinct !DISubprogram(name: "expand_complex_operations_1", scope: !3, file: !3, line: 1412, type: !3716, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3719)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{null, !3718}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734}
!3720 = !DILocalVariable(name: "gsi", arg: 1, scope: !3715, file: !3, line: 1412, type: !3718)
!3721 = !DILocalVariable(name: "stmt", scope: !3715, file: !3, line: 1414, type: !1713)
!3722 = !DILocalVariable(name: "type", scope: !3715, file: !3, line: 1415, type: !1389)
!3723 = !DILocalVariable(name: "inner_type", scope: !3715, file: !3, line: 1415, type: !1389)
!3724 = !DILocalVariable(name: "lhs", scope: !3715, file: !3, line: 1415, type: !1389)
!3725 = !DILocalVariable(name: "ac", scope: !3715, file: !3, line: 1416, type: !1389)
!3726 = !DILocalVariable(name: "ar", scope: !3715, file: !3, line: 1416, type: !1389)
!3727 = !DILocalVariable(name: "ai", scope: !3715, file: !3, line: 1416, type: !1389)
!3728 = !DILocalVariable(name: "bc", scope: !3715, file: !3, line: 1416, type: !1389)
!3729 = !DILocalVariable(name: "br", scope: !3715, file: !3, line: 1416, type: !1389)
!3730 = !DILocalVariable(name: "bi", scope: !3715, file: !3, line: 1416, type: !1389)
!3731 = !DILocalVariable(name: "al", scope: !3715, file: !3, line: 1417, type: !2698)
!3732 = !DILocalVariable(name: "bl", scope: !3715, file: !3, line: 1417, type: !2698)
!3733 = !DILocalVariable(name: "code", scope: !3715, file: !3, line: 1418, type: !366)
!3734 = !DILocalVariable(name: "rhs", scope: !3735, file: !3, line: 1456, type: !1389)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 1455, column: 7)
!3736 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 1429, column: 5)
!3737 = !DILocation(line: 0, scope: !3715)
!3738 = !DILocation(line: 1414, column: 17, scope: !3715)
!3739 = !DILocation(line: 1420, column: 9, scope: !3715)
!3740 = !DILocation(line: 1421, column: 8, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 1421, column: 7)
!3742 = !DILocation(line: 1421, column: 12, scope: !3741)
!3743 = !DILocation(line: 1421, column: 15, scope: !3741)
!3744 = !DILocation(line: 1421, column: 34, scope: !3741)
!3745 = !DILocation(line: 1421, column: 7, scope: !3715)
!3746 = !DILocation(line: 1424, column: 10, scope: !3715)
!3747 = !DILocation(line: 1425, column: 10, scope: !3715)
!3748 = !DILocation(line: 1428, column: 3, scope: !3715)
!3749 = !DILocation(line: 1440, column: 11, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 1440, column: 11)
!3751 = !DILocation(line: 1440, column: 28, scope: !3750)
!3752 = !DILocation(line: 1440, column: 11, scope: !3736)
!3753 = !DILocation(line: 1442, column: 20, scope: !3736)
!3754 = !DILocation(line: 1443, column: 7, scope: !3736)
!3755 = !DILocation(line: 1449, column: 20, scope: !3736)
!3756 = !DILocation(line: 1450, column: 11, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 1450, column: 11)
!3758 = !DILocation(line: 1450, column: 34, scope: !3757)
!3759 = !DILocation(line: 1450, column: 11, scope: !3736)
!3760 = !DILocation(line: 1460, column: 6, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 1460, column: 6)
!3762 = !DILocation(line: 1460, column: 25, scope: !3761)
!3763 = !DILocation(line: 1460, column: 6, scope: !3735)
!3764 = !DILocation(line: 1463, column: 6, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 1463, column: 6)
!3766 = !DILocation(line: 1463, column: 23, scope: !3765)
!3767 = !DILocation(line: 1463, column: 6, scope: !3735)
!3768 = !DILocation(line: 1464, column: 4, scope: !3765)
!3769 = !DILocation(line: 1465, column: 11, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 1465, column: 11)
!3771 = !DILocation(line: 1466, column: 4, scope: !3770)
!3772 = !DILocation(line: 1466, column: 8, scope: !3770)
!3773 = !DILocation(line: 1466, column: 38, scope: !3770)
!3774 = !DILocation(line: 1467, column: 8, scope: !3770)
!3775 = !DILocation(line: 1467, column: 11, scope: !3770)
!3776 = !DILocation(line: 1467, column: 41, scope: !3770)
!3777 = !DILocation(line: 1468, column: 4, scope: !3770)
!3778 = !DILocation(line: 1468, column: 7, scope: !3770)
!3779 = !DILocation(line: 1468, column: 23, scope: !3770)
!3780 = !DILocation(line: 1465, column: 11, scope: !3765)
!3781 = !DILocation(line: 1470, column: 12, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 1469, column: 4)
!3783 = !DILocation(line: 0, scope: !3735)
!3784 = !DILocation(line: 1471, column: 36, scope: !3782)
!3785 = !DILocation(line: 1472, column: 24, scope: !3782)
!3786 = !DILocation(line: 1473, column: 12, scope: !3782)
!3787 = !DILocation(line: 1471, column: 12, scope: !3782)
!3788 = !DILocation(line: 1475, column: 6, scope: !3782)
!3789 = !DILocation(line: 1476, column: 13, scope: !3782)
!3790 = !DILocation(line: 1477, column: 6, scope: !3782)
!3791 = !DILocation(line: 1478, column: 4, scope: !3782)
!3792 = !DILocation(line: 0, scope: !3736)
!3793 = !DILocation(line: 1485, column: 7, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 1485, column: 7)
!3795 = !DILocation(line: 1485, column: 7, scope: !3715)
!3796 = !DILocation(line: 1487, column: 12, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3794, file: !3, line: 1486, column: 5)
!3798 = !DILocation(line: 1488, column: 13, scope: !3797)
!3799 = !DILocation(line: 1488, column: 35, scope: !3797)
!3800 = !DILocation(line: 1488, column: 12, scope: !3797)
!3801 = !DILocation(line: 1488, column: 42, scope: !3797)
!3802 = !DILocation(line: 1493, column: 12, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3794, file: !3, line: 1492, column: 5)
!3804 = !DILocation(line: 1494, column: 12, scope: !3803)
!3805 = !DILocation(line: 0, scope: !3794)
!3806 = !DILocation(line: 1497, column: 8, scope: !3715)
!3807 = !DILocation(line: 1498, column: 8, scope: !3715)
!3808 = !DILocation(line: 1500, column: 10, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 1500, column: 7)
!3810 = !DILocation(line: 1500, column: 7, scope: !3715)
!3811 = !DILocation(line: 1502, column: 12, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3809, file: !3, line: 1502, column: 12)
!3813 = !DILocation(line: 1502, column: 12, scope: !3809)
!3814 = !DILocation(line: 1504, column: 12, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 1503, column: 5)
!3816 = !DILocation(line: 1505, column: 12, scope: !3815)
!3817 = !DILocation(line: 1506, column: 5, scope: !3815)
!3818 = !DILocation(line: 0, scope: !3809)
!3819 = !DILocation(line: 1510, column: 24, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 1510, column: 7)
!3821 = !DILocation(line: 1510, column: 7, scope: !3820)
!3822 = !DILocation(line: 1510, column: 7, scope: !3715)
!3823 = !DILocation(line: 1512, column: 12, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3820, file: !3, line: 1511, column: 5)
!3825 = !DILocation(line: 1513, column: 14, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 1513, column: 11)
!3827 = !DILocation(line: 1513, column: 11, scope: !3824)
!3828 = !DILocation(line: 1516, column: 11, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 1516, column: 11)
!3830 = !DILocation(line: 1516, column: 34, scope: !3829)
!3831 = !DILocation(line: 1516, column: 11, scope: !3824)
!3832 = !DILocation(line: 1518, column: 16, scope: !3829)
!3833 = !DILocation(line: 1522, column: 9, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 1521, column: 2)
!3835 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 1518, column: 16)
!3836 = !DILocation(line: 1523, column: 11, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 1523, column: 8)
!3838 = !DILocation(line: 1523, column: 8, scope: !3834)
!3839 = !DILocation(line: 0, scope: !3820)
!3840 = !DILocation(line: 1530, column: 3, scope: !3715)
!3841 = !DILocation(line: 1534, column: 7, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 1531, column: 5)
!3843 = !DILocation(line: 1535, column: 7, scope: !3842)
!3844 = !DILocation(line: 1538, column: 7, scope: !3842)
!3845 = !DILocation(line: 1539, column: 7, scope: !3842)
!3846 = !DILocation(line: 1546, column: 7, scope: !3842)
!3847 = !DILocation(line: 1547, column: 7, scope: !3842)
!3848 = !DILocation(line: 1550, column: 7, scope: !3842)
!3849 = !DILocation(line: 1551, column: 7, scope: !3842)
!3850 = !DILocation(line: 1554, column: 7, scope: !3842)
!3851 = !DILocation(line: 1555, column: 7, scope: !3842)
!3852 = !DILocation(line: 1559, column: 7, scope: !3842)
!3853 = !DILocation(line: 1560, column: 7, scope: !3842)
!3854 = !DILocation(line: 1563, column: 7, scope: !3842)
!3855 = !DILocation(line: 1564, column: 5, scope: !3842)
!3856 = !DILocation(line: 1565, column: 1, scope: !3715)
!3857 = distinct !DISubprogram(name: "gsi_next", scope: !561, file: !561, line: 4485, type: !3716, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3858)
!3858 = !{!3859}
!3859 = !DILocalVariable(name: "i", arg: 1, scope: !3857, file: !561, line: 4485, type: !3718)
!3860 = !DILocation(line: 0, scope: !3857)
!3861 = !DILocation(line: 4487, column: 15, scope: !3857)
!3862 = !DILocation(line: 4487, column: 20, scope: !3857)
!3863 = !DILocation(line: 4487, column: 10, scope: !3857)
!3864 = !DILocation(line: 4488, column: 1, scope: !3857)
!3865 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !334, file: !334, line: 184, type: !3866, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !3553}
!3868 = !{!3869}
!3869 = !DILocalVariable(name: "vec_", arg: 1, scope: !3865, file: !334, line: 184, type: !3553)
!3870 = !DILocation(line: 0, scope: !3865)
!3871 = !DILocation(line: 184, column: 1, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3865, file: !334, line: 184, column: 1)
!3873 = !DILocation(line: 184, column: 1, scope: !3865)
!3874 = distinct !DISubprogram(name: "VEC_complex_lattice_t_heap_free", scope: !3, file: !3, line: 56, type: !3875, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3877)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{null, !3398}
!3877 = !{!3878}
!3878 = !DILocalVariable(name: "vec_", arg: 1, scope: !3874, file: !3, line: 56, type: !3398)
!3879 = !DILocation(line: 0, scope: !3874)
!3880 = !DILocation(line: 56, column: 1, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 56, column: 1)
!3882 = !DILocation(line: 56, column: 1, scope: !3874)
!3883 = distinct !DISubprogram(name: "gsi_stmt", scope: !561, file: !561, line: 4501, type: !3884, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3886)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!1713, !3201}
!3886 = !{!3887}
!3887 = !DILocalVariable(name: "i", arg: 1, scope: !3883, file: !561, line: 4501, type: !3201)
!3888 = !DILocation(line: 4501, column: 32, scope: !3883)
!3889 = !DILocation(line: 4503, column: 12, scope: !3883)
!3890 = !DILocation(line: 4503, column: 17, scope: !3883)
!3891 = !DILocation(line: 4503, column: 3, scope: !3883)
!3892 = distinct !DISubprogram(name: "prop_set_simulate_again", scope: !632, file: !632, line: 28, type: !3893, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3895)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{null, !1713, !1381}
!3895 = !{!3896, !3897}
!3896 = !DILocalVariable(name: "s", arg: 1, scope: !3892, file: !632, line: 28, type: !1713)
!3897 = !DILocalVariable(name: "visit_p", arg: 2, scope: !3892, file: !632, line: 28, type: !1381)
!3898 = !DILocation(line: 0, scope: !3892)
!3899 = !DILocation(line: 30, column: 3, scope: !3892)
!3900 = !DILocation(line: 31, column: 1, scope: !3892)
!3901 = distinct !DISubprogram(name: "is_complex_reg", scope: !3, file: !3, line: 168, type: !3902, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3904)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!1381, !1389}
!3904 = !{!3905}
!3905 = !DILocalVariable(name: "lhs", arg: 1, scope: !3901, file: !3, line: 168, type: !1389)
!3906 = !DILocation(line: 0, scope: !3901)
!3907 = !DILocation(line: 170, column: 10, scope: !3901)
!3908 = !DILocation(line: 170, column: 38, scope: !3901)
!3909 = !DILocation(line: 170, column: 54, scope: !3901)
!3910 = !DILocation(line: 170, column: 57, scope: !3901)
!3911 = !DILocation(line: 170, column: 3, scope: !3901)
!3912 = distinct !DISubprogram(name: "gimple_phi_result", scope: !561, file: !561, line: 3071, type: !3913, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3916)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!1389, !3915}
!3915 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !1390, line: 60, baseType: !2684)
!3916 = !{!3917}
!3917 = !DILocalVariable(name: "gs", arg: 1, scope: !3912, file: !561, line: 3071, type: !3915)
!3918 = !DILocation(line: 0, scope: !3912)
!3919 = !DILocation(line: 3074, column: 25, scope: !3912)
!3920 = !DILocation(line: 3074, column: 3, scope: !3912)
!3921 = distinct !DISubprogram(name: "gimple_code", scope: !561, file: !561, line: 1052, type: !3922, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3924)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!560, !3915}
!3924 = !{!3925}
!3925 = !DILocalVariable(name: "g", arg: 1, scope: !3921, file: !561, line: 1052, type: !3915)
!3926 = !DILocation(line: 0, scope: !3921)
!3927 = !DILocation(line: 1054, column: 20, scope: !3921)
!3928 = !DILocation(line: 1054, column: 3, scope: !3921)
!3929 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !561, file: !561, line: 1878, type: !3913, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3930)
!3930 = !{!3931}
!3931 = !DILocalVariable(name: "gs", arg: 1, scope: !3929, file: !561, line: 1878, type: !3915)
!3932 = !DILocation(line: 0, scope: !3929)
!3933 = !DILocation(line: 1881, column: 10, scope: !3929)
!3934 = !DILocation(line: 1881, column: 3, scope: !3929)
!3935 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !561, file: !561, line: 1694, type: !3913, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3936)
!3936 = !{!3937}
!3937 = !DILocalVariable(name: "gs", arg: 1, scope: !3935, file: !561, line: 1694, type: !3915)
!3938 = !DILocation(line: 0, scope: !3935)
!3939 = !DILocation(line: 1697, column: 10, scope: !3935)
!3940 = !DILocation(line: 1697, column: 3, scope: !3935)
!3941 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !561, file: !561, line: 1815, type: !3942, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3944)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!366, !3915}
!3944 = !{!3945, !3946}
!3945 = !DILocalVariable(name: "gs", arg: 1, scope: !3941, file: !561, line: 1815, type: !3915)
!3946 = !DILocalVariable(name: "code", scope: !3941, file: !561, line: 1817, type: !366)
!3947 = !DILocation(line: 0, scope: !3941)
!3948 = !DILocation(line: 1820, column: 10, scope: !3941)
!3949 = !DILocation(line: 1821, column: 7, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3941, file: !561, line: 1821, column: 7)
!3951 = !DILocation(line: 1821, column: 35, scope: !3950)
!3952 = !DILocation(line: 1821, column: 7, scope: !3941)
!3953 = !DILocation(line: 1822, column: 12, scope: !3950)
!3954 = !DILocation(line: 1822, column: 5, scope: !3950)
!3955 = !DILocation(line: 1824, column: 3, scope: !3941)
!3956 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !561, file: !561, line: 1727, type: !3913, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3957)
!3957 = !{!3958}
!3958 = !DILocalVariable(name: "gs", arg: 1, scope: !3956, file: !561, line: 1727, type: !3915)
!3959 = !DILocation(line: 0, scope: !3956)
!3960 = !DILocation(line: 1730, column: 10, scope: !3956)
!3961 = !DILocation(line: 1730, column: 3, scope: !3956)
!3962 = distinct !DISubprogram(name: "gimple_num_ops", scope: !561, file: !561, line: 1596, type: !3963, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3965)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!7, !3915}
!3965 = !{!3966}
!3966 = !DILocalVariable(name: "gs", arg: 1, scope: !3962, file: !561, line: 1596, type: !3915)
!3967 = !DILocation(line: 0, scope: !3962)
!3968 = !DILocation(line: 1598, column: 21, scope: !3962)
!3969 = !DILocation(line: 1598, column: 3, scope: !3962)
!3970 = distinct !DISubprogram(name: "gimple_assign_rhs2", scope: !561, file: !561, line: 1759, type: !3913, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3971)
!3971 = !{!3972}
!3972 = !DILocalVariable(name: "gs", arg: 1, scope: !3970, file: !561, line: 1759, type: !3915)
!3973 = !DILocation(line: 0, scope: !3970)
!3974 = !DILocation(line: 1763, column: 7, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3970, file: !561, line: 1763, column: 7)
!3976 = !DILocation(line: 1763, column: 27, scope: !3975)
!3977 = !DILocation(line: 1763, column: 7, scope: !3970)
!3978 = !DILocation(line: 1764, column: 12, scope: !3975)
!3979 = !DILocation(line: 1764, column: 5, scope: !3975)
!3980 = !DILocation(line: 0, scope: !3975)
!3981 = !DILocation(line: 1767, column: 1, scope: !3970)
!3982 = distinct !DISubprogram(name: "gimple_cond_lhs", scope: !561, file: !561, line: 2241, type: !3913, scopeLine: 2242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3983)
!3983 = !{!3984}
!3984 = !DILocalVariable(name: "gs", arg: 1, scope: !3982, file: !561, line: 2241, type: !3915)
!3985 = !DILocation(line: 0, scope: !3982)
!3986 = !DILocation(line: 2244, column: 10, scope: !3982)
!3987 = !DILocation(line: 2244, column: 3, scope: !3982)
!3988 = distinct !DISubprogram(name: "gimple_cond_rhs", scope: !561, file: !561, line: 2271, type: !3913, scopeLine: 2272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3989)
!3989 = !{!3990}
!3990 = !DILocalVariable(name: "gs", arg: 1, scope: !3988, file: !561, line: 2271, type: !3915)
!3991 = !DILocation(line: 0, scope: !3988)
!3992 = !DILocation(line: 2274, column: 10, scope: !3988)
!3993 = !DILocation(line: 2274, column: 3, scope: !3988)
!3994 = distinct !DISubprogram(name: "gimple_expr_code", scope: !561, file: !561, line: 1438, type: !3942, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3995)
!3995 = !{!3996, !3997}
!3996 = !DILocalVariable(name: "stmt", arg: 1, scope: !3994, file: !561, line: 1438, type: !3915)
!3997 = !DILocalVariable(name: "code", scope: !3994, file: !561, line: 1440, type: !560)
!3998 = !DILocation(line: 0, scope: !3994)
!3999 = !DILocation(line: 1440, column: 27, scope: !3994)
!4000 = !DILocation(line: 1441, column: 29, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3994, file: !561, line: 1441, column: 7)
!4002 = !DILocation(line: 1442, column: 42, scope: !4001)
!4003 = !DILocation(line: 1442, column: 5, scope: !4001)
!4004 = !DILocation(line: 1446, column: 5, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4001, file: !561, line: 1443, column: 12)
!4006 = !DILocation(line: 1448, column: 5, scope: !3994)
!4007 = !DILocation(line: 1450, column: 1, scope: !3994)
!4008 = distinct !DISubprogram(name: "gimple_set_visited", scope: !561, file: !561, line: 1217, type: !3893, scopeLine: 1218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4009)
!4009 = !{!4010, !4011}
!4010 = !DILocalVariable(name: "stmt", arg: 1, scope: !4008, file: !561, line: 1217, type: !1713)
!4011 = !DILocalVariable(name: "visited_p", arg: 2, scope: !4008, file: !561, line: 1217, type: !1381)
!4012 = !DILocation(line: 0, scope: !4008)
!4013 = !DILocation(line: 1219, column: 16, scope: !4008)
!4014 = !DILocation(line: 1219, column: 24, scope: !4008)
!4015 = !DILocation(line: 1220, column: 1, scope: !4008)
!4016 = distinct !DISubprogram(name: "gimple_op", scope: !561, file: !561, line: 1631, type: !4017, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4019)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!1389, !3915, !7}
!4019 = !{!4020, !4021}
!4020 = !DILocalVariable(name: "gs", arg: 1, scope: !4016, file: !561, line: 1631, type: !3915)
!4021 = !DILocalVariable(name: "i", arg: 2, scope: !4016, file: !561, line: 1631, type: !7)
!4022 = !DILocation(line: 0, scope: !4016)
!4023 = !DILocation(line: 1633, column: 7, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4016, file: !561, line: 1633, column: 7)
!4025 = !DILocation(line: 1633, column: 7, scope: !4016)
!4026 = !DILocation(line: 1638, column: 14, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4024, file: !561, line: 1634, column: 5)
!4028 = !DILocation(line: 1638, column: 7, scope: !4027)
!4029 = !DILocation(line: 0, scope: !4024)
!4030 = !DILocation(line: 1642, column: 1, scope: !4016)
!4031 = distinct !DISubprogram(name: "gimple_has_ops", scope: !561, file: !561, line: 1274, type: !4032, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4034)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!1381, !3915}
!4034 = !{!4035}
!4035 = !DILocalVariable(name: "g", arg: 1, scope: !4031, file: !561, line: 1274, type: !3915)
!4036 = !DILocation(line: 0, scope: !4031)
!4037 = !DILocation(line: 1276, column: 10, scope: !4031)
!4038 = !DILocation(line: 1276, column: 26, scope: !4031)
!4039 = !DILocation(line: 1276, column: 41, scope: !4031)
!4040 = !DILocation(line: 1276, column: 44, scope: !4031)
!4041 = !DILocation(line: 1276, column: 60, scope: !4031)
!4042 = !DILocation(line: 1276, column: 3, scope: !4031)
!4043 = distinct !DISubprogram(name: "gimple_ops", scope: !561, file: !561, line: 1614, type: !4044, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4046)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!1748, !1713}
!4046 = !{!4047, !4048}
!4047 = !DILocalVariable(name: "gs", arg: 1, scope: !4043, file: !561, line: 1614, type: !1713)
!4048 = !DILocalVariable(name: "off", scope: !4043, file: !561, line: 1616, type: !1859)
!4049 = !DILocation(line: 0, scope: !4043)
!4050 = !DILocation(line: 1621, column: 28, scope: !4043)
!4051 = !DILocation(line: 1621, column: 9, scope: !4043)
!4052 = !DILocation(line: 1622, column: 3, scope: !4043)
!4053 = !DILocation(line: 1624, column: 20, scope: !4043)
!4054 = !DILocation(line: 1624, column: 32, scope: !4043)
!4055 = !DILocation(line: 1624, column: 10, scope: !4043)
!4056 = !DILocation(line: 1624, column: 3, scope: !4043)
!4057 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !561, file: !561, line: 1073, type: !4058, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4060)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!599, !1713}
!4060 = !{!4061}
!4061 = !DILocalVariable(name: "gs", arg: 1, scope: !4057, file: !561, line: 1073, type: !1713)
!4062 = !DILocation(line: 0, scope: !4057)
!4063 = !DILocation(line: 1075, column: 24, scope: !4057)
!4064 = !DILocation(line: 1075, column: 10, scope: !4057)
!4065 = !DILocation(line: 1075, column: 3, scope: !4057)
!4066 = distinct !DISubprogram(name: "gss_for_code", scope: !561, file: !561, line: 1061, type: !4067, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4069)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!599, !560}
!4069 = !{!4070}
!4070 = !DILocalVariable(name: "code", arg: 1, scope: !4066, file: !561, line: 1061, type: !560)
!4071 = !DILocation(line: 0, scope: !4066)
!4072 = !DILocation(line: 1066, column: 10, scope: !4066)
!4073 = !DILocation(line: 1066, column: 3, scope: !4066)
!4074 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !561, file: !561, line: 1686, type: !4075, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4077)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!625, !366}
!4077 = !{!4078}
!4078 = !DILocalVariable(name: "code", arg: 1, scope: !4074, file: !561, line: 1686, type: !366)
!4079 = !DILocation(line: 0, scope: !4074)
!4080 = !DILocation(line: 1688, column: 34, scope: !4074)
!4081 = !DILocation(line: 1688, column: 10, scope: !4074)
!4082 = !DILocation(line: 1688, column: 3, scope: !4074)
!4083 = distinct !DISubprogram(name: "VEC_complex_lattice_t_base_length", scope: !3, file: !3, line: 55, type: !4084, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4088)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!7, !4086}
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2691)
!4088 = !{!4089}
!4089 = !DILocalVariable(name: "vec_", arg: 1, scope: !4083, file: !3, line: 55, type: !4086)
!4090 = !DILocation(line: 0, scope: !4083)
!4091 = !DILocation(line: 55, column: 1, scope: !4083)
!4092 = distinct !DISubprogram(name: "VEC_complex_lattice_t_heap_safe_grow", scope: !3, file: !3, line: 56, type: !3396, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4093)
!4093 = !{!4094, !4095}
!4094 = !DILocalVariable(name: "vec_", arg: 1, scope: !4092, file: !3, line: 56, type: !3398)
!4095 = !DILocalVariable(name: "size_", arg: 2, scope: !4092, file: !3, line: 56, type: !1382)
!4096 = !DILocation(line: 0, scope: !4092)
!4097 = !DILocation(line: 56, column: 1, scope: !4092)
!4098 = distinct !DISubprogram(name: "VEC_complex_lattice_t_base_address", scope: !3, file: !3, line: 55, type: !4099, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4103)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!4101, !4102}
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!4103 = !{!4104}
!4104 = !DILocalVariable(name: "vec_", arg: 1, scope: !4098, file: !3, line: 55, type: !4102)
!4105 = !DILocation(line: 0, scope: !4098)
!4106 = !DILocation(line: 55, column: 1, scope: !4098)
!4107 = distinct !DISubprogram(name: "VEC_complex_lattice_t_heap_reserve_exact", scope: !3, file: !3, line: 56, type: !4108, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4110)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!1382, !3398, !1382}
!4110 = !{!4111, !4112, !4113}
!4111 = !DILocalVariable(name: "vec_", arg: 1, scope: !4107, file: !3, line: 56, type: !3398)
!4112 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4107, file: !3, line: 56, type: !1382)
!4113 = !DILocalVariable(name: "extend", scope: !4107, file: !3, line: 56, type: !1382)
!4114 = !DILocation(line: 0, scope: !4107)
!4115 = !DILocation(line: 56, column: 1, scope: !4107)
!4116 = !DILocation(line: 56, column: 1, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 56, column: 1)
!4118 = distinct !DISubprogram(name: "VEC_complex_lattice_t_base_space", scope: !3, file: !3, line: 55, type: !4119, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4121)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!1382, !4102, !1382}
!4121 = !{!4122, !4123}
!4122 = !DILocalVariable(name: "vec_", arg: 1, scope: !4118, file: !3, line: 55, type: !4102)
!4123 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4118, file: !3, line: 55, type: !1382)
!4124 = !DILocation(line: 0, scope: !4118)
!4125 = !DILocation(line: 55, column: 1, scope: !4118)
!4126 = distinct !DISubprogram(name: "var_ann", scope: !4127, file: !4127, line: 132, type: !4128, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4132)
!4127 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!4130, !4131}
!4130 = !DIDerivedType(tag: DW_TAG_typedef, name: "var_ann_t", file: !2053, line: 297, baseType: !2051)
!4131 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !1390, line: 59, baseType: !2710)
!4132 = !{!4133, !4134}
!4133 = !DILocalVariable(name: "t", arg: 1, scope: !4126, file: !4127, line: 132, type: !4131)
!4134 = !DILocalVariable(name: "p", scope: !4126, file: !4127, line: 134, type: !4135)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4130)
!4137 = !DILocation(line: 0, scope: !4126)
!4138 = !DILocation(line: 134, column: 24, scope: !4126)
!4139 = !DILocation(line: 135, column: 10, scope: !4126)
!4140 = !DILocation(line: 135, column: 14, scope: !4126)
!4141 = !DILocation(line: 135, column: 3, scope: !4126)
!4142 = distinct !DISubprogram(name: "VEC_complex_lattice_t_base_replace", scope: !3, file: !3, line: 55, type: !4143, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4145)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!2698, !4102, !7, !2698}
!4145 = !{!4146, !4147, !4148, !4149}
!4146 = !DILocalVariable(name: "vec_", arg: 1, scope: !4142, file: !3, line: 55, type: !4102)
!4147 = !DILocalVariable(name: "ix_", arg: 2, scope: !4142, file: !3, line: 55, type: !7)
!4148 = !DILocalVariable(name: "obj_", arg: 3, scope: !4142, file: !3, line: 55, type: !2698)
!4149 = !DILocalVariable(name: "old_obj_", scope: !4142, file: !3, line: 55, type: !2698)
!4150 = !DILocation(line: 0, scope: !4142)
!4151 = !DILocation(line: 55, column: 1, scope: !4142)
!4152 = distinct !DISubprogram(name: "VEC_complex_lattice_t_base_index", scope: !3, file: !3, line: 55, type: !4153, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4155)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!2698, !4086, !7}
!4155 = !{!4156, !4157}
!4156 = !DILocalVariable(name: "vec_", arg: 1, scope: !4152, file: !3, line: 55, type: !4086)
!4157 = !DILocalVariable(name: "ix_", arg: 2, scope: !4152, file: !3, line: 55, type: !7)
!4158 = !DILocation(line: 0, scope: !4152)
!4159 = !DILocation(line: 55, column: 1, scope: !4152)
!4160 = distinct !DISubprogram(name: "find_lattice_value", scope: !3, file: !3, line: 142, type: !4161, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4163)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!2698, !1389}
!4163 = !{!4164, !4165, !4166}
!4164 = !DILocalVariable(name: "t", arg: 1, scope: !4160, file: !3, line: 142, type: !1389)
!4165 = !DILocalVariable(name: "real", scope: !4160, file: !3, line: 144, type: !1389)
!4166 = !DILocalVariable(name: "imag", scope: !4160, file: !3, line: 144, type: !1389)
!4167 = !DILocation(line: 0, scope: !4160)
!4168 = !DILocation(line: 146, column: 11, scope: !4160)
!4169 = !DILocation(line: 146, column: 3, scope: !4160)
!4170 = !DILocation(line: 149, column: 14, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4160, file: !3, line: 147, column: 5)
!4172 = !DILocation(line: 149, column: 7, scope: !4171)
!4173 = !DILocation(line: 153, column: 14, scope: !4171)
!4174 = !DILocation(line: 154, column: 14, scope: !4171)
!4175 = !DILocation(line: 155, column: 7, scope: !4171)
!4176 = !DILocation(line: 158, column: 7, scope: !4171)
!4177 = !DILocation(line: 159, column: 5, scope: !4171)
!4178 = !DILocation(line: 161, column: 10, scope: !4160)
!4179 = !DILocation(line: 161, column: 3, scope: !4160)
!4180 = !DILocation(line: 162, column: 1, scope: !4160)
!4181 = distinct !DISubprogram(name: "find_lattice_value_parts", scope: !3, file: !3, line: 120, type: !4182, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4184)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!2698, !1389, !1389}
!4184 = !{!4185, !4186, !4187, !4188, !4189}
!4185 = !DILocalVariable(name: "real", arg: 1, scope: !4181, file: !3, line: 120, type: !1389)
!4186 = !DILocalVariable(name: "imag", arg: 2, scope: !4181, file: !3, line: 120, type: !1389)
!4187 = !DILocalVariable(name: "r", scope: !4181, file: !3, line: 122, type: !1382)
!4188 = !DILocalVariable(name: "i", scope: !4181, file: !3, line: 122, type: !1382)
!4189 = !DILocalVariable(name: "ret", scope: !4181, file: !3, line: 123, type: !2698)
!4190 = !DILocation(line: 0, scope: !4181)
!4191 = !DILocation(line: 125, column: 7, scope: !4181)
!4192 = !DILocation(line: 126, column: 7, scope: !4181)
!4193 = !DILocation(line: 127, column: 27, scope: !4181)
!4194 = !DILocation(line: 127, column: 23, scope: !4181)
!4195 = !DILocation(line: 132, column: 11, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 132, column: 7)
!4197 = !DILocation(line: 132, column: 7, scope: !4181)
!4198 = !DILocation(line: 135, column: 3, scope: !4181)
!4199 = distinct !DISubprogram(name: "some_nonzerop", scope: !3, file: !3, line: 98, type: !4200, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4202)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!1382, !1389}
!4202 = !{!4203, !4204}
!4203 = !DILocalVariable(name: "t", arg: 1, scope: !4199, file: !3, line: 98, type: !1389)
!4204 = !DILocalVariable(name: "zerop", scope: !4199, file: !3, line: 100, type: !1382)
!4205 = !DILocation(line: 0, scope: !4199)
!4206 = !DILocation(line: 105, column: 7, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4199, file: !3, line: 105, column: 7)
!4208 = !DILocation(line: 105, column: 21, scope: !4207)
!4209 = !DILocation(line: 105, column: 37, scope: !4207)
!4210 = !DILocation(line: 105, column: 33, scope: !4207)
!4211 = !DILocation(line: 106, column: 13, scope: !4207)
!4212 = !DILocation(line: 106, column: 5, scope: !4207)
!4213 = !DILocation(line: 107, column: 26, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 107, column: 12)
!4215 = !DILocation(line: 107, column: 12, scope: !4207)
!4216 = !DILocation(line: 108, column: 13, scope: !4214)
!4217 = !DILocation(line: 108, column: 5, scope: !4214)
!4218 = !DILocation(line: 109, column: 26, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 109, column: 12)
!4220 = !DILocation(line: 109, column: 12, scope: !4214)
!4221 = !DILocation(line: 110, column: 13, scope: !4219)
!4222 = !DILocation(line: 110, column: 5, scope: !4219)
!4223 = !DILocation(line: 0, scope: !4207)
!4224 = !DILocation(line: 112, column: 10, scope: !4199)
!4225 = !DILocation(line: 112, column: 3, scope: !4199)
!4226 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !561, file: !561, line: 3061, type: !3963, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4227)
!4227 = !{!4228}
!4228 = !DILocalVariable(name: "gs", arg: 1, scope: !4226, file: !561, line: 3061, type: !3915)
!4229 = !DILocation(line: 0, scope: !4226)
!4230 = !DILocation(line: 3064, column: 25, scope: !4226)
!4231 = !DILocation(line: 3064, column: 3, scope: !4226)
!4232 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !4127, file: !4127, line: 450, type: !4233, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!1389, !1713, !1859}
!4235 = !{!4236, !4237, !4238}
!4236 = !DILocalVariable(name: "gs", arg: 1, scope: !4232, file: !4127, line: 450, type: !1713)
!4237 = !DILocalVariable(name: "index", arg: 2, scope: !4232, file: !4127, line: 450, type: !1859)
!4238 = !DILocalVariable(name: "pd", scope: !4232, file: !4127, line: 452, type: !4239)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!4240 = !DILocation(line: 0, scope: !4232)
!4241 = !DILocation(line: 452, column: 46, scope: !4232)
!4242 = !DILocation(line: 452, column: 26, scope: !4232)
!4243 = !DILocation(line: 453, column: 33, scope: !4232)
!4244 = !DILocation(line: 453, column: 10, scope: !4232)
!4245 = !DILocation(line: 453, column: 3, scope: !4232)
!4246 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !561, file: !561, line: 3100, type: !4247, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4249)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!4239, !1713, !7}
!4249 = !{!4250, !4251}
!4250 = !DILocalVariable(name: "gs", arg: 1, scope: !4246, file: !561, line: 3100, type: !1713)
!4251 = !DILocalVariable(name: "index", arg: 2, scope: !4246, file: !561, line: 3100, type: !7)
!4252 = !DILocation(line: 0, scope: !4246)
!4253 = !DILocation(line: 3103, column: 3, scope: !4246)
!4254 = !DILocation(line: 3104, column: 12, scope: !4246)
!4255 = !DILocation(line: 3104, column: 3, scope: !4246)
!4256 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !4127, file: !4127, line: 427, type: !4257, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4262)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!1389, !4259}
!4259 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !1744, line: 30, baseType: !4260)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !334, line: 1893, baseType: !1755)
!4262 = !{!4263}
!4263 = !DILocalVariable(name: "use", arg: 1, scope: !4256, file: !4127, line: 427, type: !4259)
!4264 = !DILocation(line: 0, scope: !4256)
!4265 = !DILocation(line: 429, column: 17, scope: !4256)
!4266 = !DILocation(line: 429, column: 10, scope: !4256)
!4267 = !DILocation(line: 429, column: 3, scope: !4256)
!4268 = distinct !DISubprogram(name: "VEC_tree_heap_safe_grow", scope: !334, file: !334, line: 184, type: !3551, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4269)
!4269 = !{!4270, !4271}
!4270 = !DILocalVariable(name: "vec_", arg: 1, scope: !4268, file: !334, line: 184, type: !3553)
!4271 = !DILocalVariable(name: "size_", arg: 2, scope: !4268, file: !334, line: 184, type: !1382)
!4272 = !DILocation(line: 0, scope: !4268)
!4273 = !DILocation(line: 184, column: 1, scope: !4268)
!4274 = distinct !DISubprogram(name: "VEC_tree_base_address", scope: !334, file: !334, line: 182, type: !4275, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4278)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!1748, !4277}
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!4278 = !{!4279}
!4279 = !DILocalVariable(name: "vec_", arg: 1, scope: !4274, file: !334, line: 182, type: !4277)
!4280 = !DILocation(line: 0, scope: !4274)
!4281 = !DILocation(line: 182, column: 1, scope: !4274)
!4282 = distinct !DISubprogram(name: "VEC_tree_heap_reserve_exact", scope: !334, file: !334, line: 184, type: !4283, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!1382, !3553, !1382}
!4285 = !{!4286, !4287, !4288}
!4286 = !DILocalVariable(name: "vec_", arg: 1, scope: !4282, file: !334, line: 184, type: !3553)
!4287 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4282, file: !334, line: 184, type: !1382)
!4288 = !DILocalVariable(name: "extend", scope: !4282, file: !334, line: 184, type: !1382)
!4289 = !DILocation(line: 0, scope: !4282)
!4290 = !DILocation(line: 184, column: 1, scope: !4282)
!4291 = !DILocation(line: 184, column: 1, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4282, file: !334, line: 184, column: 1)
!4293 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !334, file: !334, line: 182, type: !4294, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4296)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!1382, !4277, !1382}
!4296 = !{!4297, !4298}
!4297 = !DILocalVariable(name: "vec_", arg: 1, scope: !4293, file: !334, line: 182, type: !4277)
!4298 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4293, file: !334, line: 182, type: !1382)
!4299 = !DILocation(line: 0, scope: !4293)
!4300 = !DILocation(line: 182, column: 1, scope: !4293)
!4301 = distinct !DISubprogram(name: "single_succ_edge", scope: !318, file: !318, line: 643, type: !4302, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4307)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!1693, !4304}
!4304 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !1390, line: 112, baseType: !4305)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1678)
!4307 = !{!4308}
!4308 = !DILocalVariable(name: "bb", arg: 1, scope: !4301, file: !318, line: 643, type: !4304)
!4309 = !DILocation(line: 0, scope: !4301)
!4310 = !DILocation(line: 645, column: 3, scope: !4301)
!4311 = !DILocation(line: 646, column: 10, scope: !4301)
!4312 = !DILocation(line: 646, column: 3, scope: !4301)
!4313 = distinct !DISubprogram(name: "update_complex_components_on_edge", scope: !3, file: !3, line: 651, type: !4314, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4316)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{null, !1693, !1389, !1389, !1389}
!4316 = !{!4317, !4318, !4319, !4320, !4321}
!4317 = !DILocalVariable(name: "e", arg: 1, scope: !4313, file: !3, line: 651, type: !1693)
!4318 = !DILocalVariable(name: "lhs", arg: 2, scope: !4313, file: !3, line: 651, type: !1389)
!4319 = !DILocalVariable(name: "r", arg: 3, scope: !4313, file: !3, line: 651, type: !1389)
!4320 = !DILocalVariable(name: "i", arg: 4, scope: !4313, file: !3, line: 651, type: !1389)
!4321 = !DILocalVariable(name: "list", scope: !4313, file: !3, line: 653, type: !1703)
!4322 = !DILocation(line: 0, scope: !4313)
!4323 = !DILocation(line: 655, column: 10, scope: !4313)
!4324 = !DILocation(line: 656, column: 7, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 656, column: 7)
!4326 = !DILocation(line: 656, column: 7, scope: !4313)
!4327 = !DILocation(line: 657, column: 5, scope: !4325)
!4328 = !DILocation(line: 659, column: 10, scope: !4313)
!4329 = !DILocation(line: 660, column: 7, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 660, column: 7)
!4331 = !DILocation(line: 660, column: 7, scope: !4313)
!4332 = !DILocation(line: 661, column: 5, scope: !4330)
!4333 = !DILocation(line: 662, column: 1, scope: !4313)
!4334 = distinct !DISubprogram(name: "single_succ_p", scope: !318, file: !318, line: 626, type: !4335, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4337)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!1381, !4304}
!4337 = !{!4338}
!4338 = !DILocalVariable(name: "bb", arg: 1, scope: !4334, file: !318, line: 626, type: !4304)
!4339 = !DILocation(line: 0, scope: !4334)
!4340 = !DILocation(line: 628, column: 10, scope: !4334)
!4341 = !DILocation(line: 628, column: 33, scope: !4334)
!4342 = !DILocation(line: 628, column: 3, scope: !4334)
!4343 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !318, file: !318, line: 150, type: !4344, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4348)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!1693, !4346, !7}
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!4348 = !{!4349, !4350}
!4349 = !DILocalVariable(name: "vec_", arg: 1, scope: !4343, file: !318, line: 150, type: !4346)
!4350 = !DILocalVariable(name: "ix_", arg: 2, scope: !4343, file: !318, line: 150, type: !7)
!4351 = !DILocation(line: 0, scope: !4343)
!4352 = !DILocation(line: 150, column: 1, scope: !4343)
!4353 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !318, file: !318, line: 150, type: !4354, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4356)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!7, !4346}
!4356 = !{!4357}
!4357 = !DILocalVariable(name: "vec_", arg: 1, scope: !4353, file: !318, line: 150, type: !4346)
!4358 = !DILocation(line: 0, scope: !4353)
!4359 = !DILocation(line: 150, column: 1, scope: !4353)
!4360 = distinct !DISubprogram(name: "set_component_ssa_name", scope: !3, file: !3, line: 520, type: !4361, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4363)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!1703, !1389, !1381, !1389}
!4363 = !{!4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371}
!4364 = !DILocalVariable(name: "ssa_name", arg: 1, scope: !4360, file: !3, line: 520, type: !1389)
!4365 = !DILocalVariable(name: "imag_p", arg: 2, scope: !4360, file: !3, line: 520, type: !1381)
!4366 = !DILocalVariable(name: "value", arg: 3, scope: !4360, file: !3, line: 520, type: !1389)
!4367 = !DILocalVariable(name: "lattice", scope: !4360, file: !3, line: 522, type: !2698)
!4368 = !DILocalVariable(name: "ssa_name_index", scope: !4360, file: !3, line: 523, type: !1859)
!4369 = !DILocalVariable(name: "comp", scope: !4360, file: !3, line: 524, type: !1389)
!4370 = !DILocalVariable(name: "last", scope: !4360, file: !3, line: 525, type: !1713)
!4371 = !DILocalVariable(name: "list", scope: !4360, file: !3, line: 526, type: !1703)
!4372 = !DILocation(line: 0, scope: !4360)
!4373 = !DILocation(line: 522, column: 31, scope: !4360)
!4374 = !DILocation(line: 526, column: 3, scope: !4360)
!4375 = !DILocation(line: 531, column: 19, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 531, column: 7)
!4377 = !DILocation(line: 531, column: 15, scope: !4376)
!4378 = !DILocation(line: 531, column: 7, scope: !4360)
!4379 = !DILocation(line: 538, column: 20, scope: !4360)
!4380 = !DILocation(line: 538, column: 48, scope: !4360)
!4381 = !DILocation(line: 538, column: 54, scope: !4360)
!4382 = !DILocation(line: 538, column: 52, scope: !4360)
!4383 = !DILocation(line: 539, column: 10, scope: !4360)
!4384 = !DILocation(line: 540, column: 7, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 540, column: 7)
!4386 = !DILocation(line: 540, column: 7, scope: !4360)
!4387 = !DILocation(line: 546, column: 12, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4385, file: !3, line: 546, column: 12)
!4389 = !DILocation(line: 547, column: 5, scope: !4388)
!4390 = !DILocation(line: 547, column: 9, scope: !4388)
!4391 = !DILocation(line: 546, column: 12, scope: !4385)
!4392 = !DILocation(line: 549, column: 7, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 548, column: 5)
!4394 = !DILocation(line: 550, column: 7, scope: !4393)
!4395 = !DILocation(line: 552, column: 12, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 552, column: 12)
!4397 = !DILocation(line: 552, column: 30, scope: !4396)
!4398 = !DILocation(line: 553, column: 5, scope: !4396)
!4399 = !DILocation(line: 553, column: 9, scope: !4396)
!4400 = !DILocation(line: 552, column: 12, scope: !4388)
!4401 = !DILocation(line: 557, column: 11, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 557, column: 11)
!4403 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 554, column: 5)
!4404 = !DILocation(line: 558, column: 4, scope: !4402)
!4405 = !DILocation(line: 558, column: 8, scope: !4402)
!4406 = !DILocation(line: 557, column: 11, scope: !4403)
!4407 = !DILocation(line: 560, column: 11, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4402, file: !3, line: 559, column: 2)
!4409 = !DILocation(line: 561, column: 4, scope: !4408)
!4410 = !DILocation(line: 562, column: 2, scope: !4408)
!4411 = !DILocation(line: 564, column: 7, scope: !4403)
!4412 = !DILocation(line: 565, column: 7, scope: !4403)
!4413 = !DILocation(line: 571, column: 12, scope: !4396)
!4414 = !DILocation(line: 574, column: 8, scope: !4360)
!4415 = !DILocation(line: 575, column: 11, scope: !4360)
!4416 = !DILocation(line: 576, column: 11, scope: !4360)
!4417 = !DILocation(line: 577, column: 3, scope: !4360)
!4418 = !DILocation(line: 578, column: 3, scope: !4360)
!4419 = !DILocation(line: 580, column: 10, scope: !4360)
!4420 = !DILocation(line: 580, column: 3, scope: !4360)
!4421 = !DILocation(line: 581, column: 1, scope: !4360)
!4422 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !334, file: !334, line: 182, type: !4423, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4425)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!1389, !3389, !7}
!4425 = !{!4426, !4427}
!4426 = !DILocalVariable(name: "vec_", arg: 1, scope: !4422, file: !334, line: 182, type: !3389)
!4427 = !DILocalVariable(name: "ix_", arg: 2, scope: !4422, file: !334, line: 182, type: !7)
!4428 = !DILocation(line: 0, scope: !4422)
!4429 = !DILocation(line: 182, column: 1, scope: !4422)
!4430 = distinct !DISubprogram(name: "VEC_tree_base_replace", scope: !334, file: !334, line: 182, type: !4431, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4433)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!1389, !4277, !7, !1389}
!4433 = !{!4434, !4435, !4436, !4437}
!4434 = !DILocalVariable(name: "vec_", arg: 1, scope: !4430, file: !334, line: 182, type: !4277)
!4435 = !DILocalVariable(name: "ix_", arg: 2, scope: !4430, file: !334, line: 182, type: !7)
!4436 = !DILocalVariable(name: "obj_", arg: 3, scope: !4430, file: !334, line: 182, type: !1389)
!4437 = !DILocalVariable(name: "old_obj_", scope: !4430, file: !334, line: 182, type: !1389)
!4438 = !DILocation(line: 0, scope: !4430)
!4439 = !DILocation(line: 182, column: 1, scope: !4430)
!4440 = distinct !DISubprogram(name: "get_component_var", scope: !3, file: !3, line: 457, type: !4441, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4443)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!1389, !1389, !1381}
!4443 = !{!4444, !4445, !4446, !4447}
!4444 = !DILocalVariable(name: "var", arg: 1, scope: !4440, file: !3, line: 457, type: !1389)
!4445 = !DILocalVariable(name: "imag_p", arg: 2, scope: !4440, file: !3, line: 457, type: !1381)
!4446 = !DILocalVariable(name: "decl_index", scope: !4440, file: !3, line: 459, type: !1859)
!4447 = !DILocalVariable(name: "ret", scope: !4440, file: !3, line: 460, type: !1389)
!4448 = !DILocation(line: 0, scope: !4440)
!4449 = !DILocation(line: 459, column: 23, scope: !4440)
!4450 = !DILocation(line: 459, column: 38, scope: !4440)
!4451 = !DILocation(line: 459, column: 44, scope: !4440)
!4452 = !DILocation(line: 459, column: 42, scope: !4440)
!4453 = !DILocation(line: 460, column: 14, scope: !4440)
!4454 = !DILocation(line: 462, column: 11, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 462, column: 7)
!4456 = !DILocation(line: 462, column: 7, scope: !4440)
!4457 = !DILocation(line: 464, column: 39, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 463, column: 5)
!4459 = !DILocation(line: 465, column: 11, scope: !4458)
!4460 = !DILocation(line: 466, column: 11, scope: !4458)
!4461 = !DILocation(line: 467, column: 11, scope: !4458)
!4462 = !DILocation(line: 464, column: 13, scope: !4458)
!4463 = !DILocation(line: 468, column: 7, scope: !4458)
!4464 = !DILocation(line: 469, column: 5, scope: !4458)
!4465 = !DILocation(line: 471, column: 3, scope: !4440)
!4466 = distinct !DISubprogram(name: "get_component_ssa_name", scope: !3, file: !3, line: 477, type: !4441, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4467)
!4467 = !{!4468, !4469, !4470, !4471, !4472, !4473}
!4468 = !DILocalVariable(name: "ssa_name", arg: 1, scope: !4466, file: !3, line: 477, type: !1389)
!4469 = !DILocalVariable(name: "imag_p", arg: 2, scope: !4466, file: !3, line: 477, type: !1381)
!4470 = !DILocalVariable(name: "lattice", scope: !4466, file: !3, line: 479, type: !2698)
!4471 = !DILocalVariable(name: "ssa_name_index", scope: !4466, file: !3, line: 480, type: !1859)
!4472 = !DILocalVariable(name: "ret", scope: !4466, file: !3, line: 481, type: !1389)
!4473 = !DILocalVariable(name: "inner_type", scope: !4474, file: !3, line: 485, type: !1389)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 484, column: 5)
!4475 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 483, column: 7)
!4476 = !DILocation(line: 0, scope: !4466)
!4477 = !DILocation(line: 479, column: 31, scope: !4466)
!4478 = !DILocation(line: 483, column: 19, scope: !4475)
!4479 = !DILocation(line: 483, column: 15, scope: !4475)
!4480 = !DILocation(line: 483, column: 7, scope: !4466)
!4481 = !DILocation(line: 485, column: 25, scope: !4474)
!4482 = !DILocation(line: 0, scope: !4474)
!4483 = !DILocation(line: 486, column: 11, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 486, column: 11)
!4485 = !DILocation(line: 486, column: 11, scope: !4474)
!4486 = !DILocation(line: 487, column: 9, scope: !4484)
!4487 = !DILocation(line: 487, column: 2, scope: !4484)
!4488 = !DILocation(line: 489, column: 9, scope: !4484)
!4489 = !DILocation(line: 489, column: 2, scope: !4484)
!4490 = !DILocation(line: 492, column: 20, scope: !4466)
!4491 = !DILocation(line: 492, column: 48, scope: !4466)
!4492 = !DILocation(line: 492, column: 54, scope: !4466)
!4493 = !DILocation(line: 492, column: 52, scope: !4466)
!4494 = !DILocation(line: 493, column: 9, scope: !4466)
!4495 = !DILocation(line: 494, column: 11, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 494, column: 7)
!4497 = !DILocation(line: 494, column: 7, scope: !4466)
!4498 = !DILocation(line: 496, column: 32, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 495, column: 5)
!4500 = !DILocation(line: 496, column: 13, scope: !4499)
!4501 = !DILocation(line: 497, column: 13, scope: !4499)
!4502 = !DILocation(line: 502, column: 4, scope: !4499)
!4503 = !DILocation(line: 501, column: 7, scope: !4499)
!4504 = !DILocation(line: 502, column: 2, scope: !4499)
!4505 = !DILocation(line: 503, column: 11, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 503, column: 11)
!4507 = !DILocation(line: 503, column: 47, scope: !4506)
!4508 = !DILocation(line: 504, column: 4, scope: !4506)
!4509 = !DILocation(line: 504, column: 21, scope: !4506)
!4510 = !DILocation(line: 504, column: 7, scope: !4506)
!4511 = !DILocation(line: 503, column: 11, scope: !4499)
!4512 = !DILocation(line: 506, column: 30, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4506, file: !3, line: 505, column: 2)
!4514 = !DILocation(line: 506, column: 4, scope: !4513)
!4515 = !DILocation(line: 506, column: 28, scope: !4513)
!4516 = !DILocation(line: 507, column: 21, scope: !4513)
!4517 = !DILocation(line: 507, column: 4, scope: !4513)
!4518 = !DILocation(line: 508, column: 2, scope: !4513)
!4519 = !DILocation(line: 510, column: 7, scope: !4499)
!4520 = !DILocation(line: 511, column: 5, scope: !4499)
!4521 = !DILocation(line: 514, column: 1, scope: !4466)
!4522 = distinct !DISubprogram(name: "cvc_lookup", scope: !3, file: !3, line: 70, type: !4523, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4525)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!1389, !7}
!4525 = !{!4526, !4527, !4528}
!4526 = !DILocalVariable(name: "uid", arg: 1, scope: !4522, file: !3, line: 70, type: !7)
!4527 = !DILocalVariable(name: "h", scope: !4522, file: !3, line: 72, type: !2704)
!4528 = !DILocalVariable(name: "in", scope: !4522, file: !3, line: 72, type: !2705)
!4529 = !DILocation(line: 0, scope: !4522)
!4530 = !DILocation(line: 72, column: 3, scope: !4522)
!4531 = !DILocation(line: 73, column: 6, scope: !4522)
!4532 = !DILocation(line: 73, column: 10, scope: !4522)
!4533 = !DILocation(line: 74, column: 52, scope: !4522)
!4534 = !DILocation(line: 74, column: 31, scope: !4522)
!4535 = !DILocation(line: 75, column: 10, scope: !4522)
!4536 = !DILocation(line: 75, column: 17, scope: !4522)
!4537 = !DILocation(line: 76, column: 1, scope: !4522)
!4538 = !DILocation(line: 75, column: 3, scope: !4522)
!4539 = distinct !DISubprogram(name: "create_one_component_var", scope: !3, file: !3, line: 425, type: !4540, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4542)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!1389, !1389, !1389, !1387, !1387, !366}
!4542 = !{!4543, !4544, !4545, !4546, !4547, !4548, !4549}
!4543 = !DILocalVariable(name: "type", arg: 1, scope: !4539, file: !3, line: 425, type: !1389)
!4544 = !DILocalVariable(name: "orig", arg: 2, scope: !4539, file: !3, line: 425, type: !1389)
!4545 = !DILocalVariable(name: "prefix", arg: 3, scope: !4539, file: !3, line: 425, type: !1387)
!4546 = !DILocalVariable(name: "suffix", arg: 4, scope: !4539, file: !3, line: 426, type: !1387)
!4547 = !DILocalVariable(name: "code", arg: 5, scope: !4539, file: !3, line: 426, type: !366)
!4548 = !DILocalVariable(name: "r", scope: !4539, file: !3, line: 428, type: !1389)
!4549 = !DILocalVariable(name: "name", scope: !4550, file: !3, line: 436, type: !1387)
!4550 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 435, column: 5)
!4551 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 434, column: 7)
!4552 = !DILocation(line: 0, scope: !4539)
!4553 = !DILocation(line: 428, column: 12, scope: !4539)
!4554 = !DILocation(line: 429, column: 3, scope: !4539)
!4555 = !DILocation(line: 431, column: 30, scope: !4539)
!4556 = !DILocation(line: 431, column: 3, scope: !4539)
!4557 = !DILocation(line: 431, column: 28, scope: !4539)
!4558 = !DILocation(line: 432, column: 3, scope: !4539)
!4559 = !DILocation(line: 432, column: 23, scope: !4539)
!4560 = !DILocation(line: 434, column: 7, scope: !4551)
!4561 = !DILocation(line: 434, column: 24, scope: !4551)
!4562 = !DILocation(line: 434, column: 28, scope: !4551)
!4563 = !DILocation(line: 434, column: 7, scope: !4539)
!4564 = !DILocation(line: 436, column: 26, scope: !4550)
!4565 = !DILocation(line: 0, scope: !4550)
!4566 = !DILocation(line: 438, column: 39, scope: !4550)
!4567 = !DILocation(line: 438, column: 23, scope: !4550)
!4568 = !DILocation(line: 438, column: 7, scope: !4550)
!4569 = !DILocation(line: 438, column: 21, scope: !4550)
!4570 = !DILocation(line: 440, column: 7, scope: !4550)
!4571 = !DILocation(line: 441, column: 35, scope: !4550)
!4572 = !DILocation(line: 442, column: 26, scope: !4550)
!4573 = !DILocation(line: 443, column: 29, scope: !4550)
!4574 = !DILocation(line: 443, column: 7, scope: !4550)
!4575 = !DILocation(line: 443, column: 27, scope: !4550)
!4576 = !DILocation(line: 444, column: 5, scope: !4550)
!4577 = !DILocation(line: 447, column: 26, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 446, column: 5)
!4579 = !DILocation(line: 448, column: 7, scope: !4578)
!4580 = !DILocation(line: 448, column: 27, scope: !4578)
!4581 = !DILocation(line: 451, column: 3, scope: !4539)
!4582 = distinct !DISubprogram(name: "cvc_insert", scope: !3, file: !3, line: 81, type: !4583, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4585)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{null, !7, !1389}
!4585 = !{!4586, !4587, !4588, !4589}
!4586 = !DILocalVariable(name: "uid", arg: 1, scope: !4582, file: !3, line: 81, type: !7)
!4587 = !DILocalVariable(name: "to", arg: 2, scope: !4582, file: !3, line: 81, type: !1389)
!4588 = !DILocalVariable(name: "h", scope: !4582, file: !3, line: 83, type: !2704)
!4589 = !DILocalVariable(name: "loc", scope: !4582, file: !3, line: 84, type: !2169)
!4590 = !DILocation(line: 0, scope: !4582)
!4591 = !DILocation(line: 86, column: 7, scope: !4582)
!4592 = !DILocation(line: 87, column: 6, scope: !4582)
!4593 = !DILocation(line: 87, column: 10, scope: !4582)
!4594 = !DILocation(line: 88, column: 6, scope: !4582)
!4595 = !DILocation(line: 88, column: 9, scope: !4582)
!4596 = !DILocation(line: 89, column: 35, scope: !4582)
!4597 = !DILocation(line: 89, column: 9, scope: !4582)
!4598 = !DILocation(line: 91, column: 33, scope: !4582)
!4599 = !DILocation(line: 92, column: 1, scope: !4582)
!4600 = distinct !DISubprogram(name: "make_ssa_name", scope: !4127, file: !4127, line: 1245, type: !4601, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4603)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!1389, !1389, !1713}
!4603 = !{!4604, !4605}
!4604 = !DILocalVariable(name: "var", arg: 1, scope: !4600, file: !4127, line: 1245, type: !1389)
!4605 = !DILocalVariable(name: "stmt", arg: 2, scope: !4600, file: !4127, line: 1245, type: !1713)
!4606 = !DILocation(line: 0, scope: !4600)
!4607 = !DILocation(line: 1247, column: 28, scope: !4600)
!4608 = !DILocation(line: 1247, column: 10, scope: !4600)
!4609 = !DILocation(line: 1247, column: 3, scope: !4600)
!4610 = distinct !DISubprogram(name: "gimple_nop_p", scope: !561, file: !561, line: 4304, type: !4032, scopeLine: 4305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4611)
!4611 = !{!4612}
!4612 = !DILocalVariable(name: "g", arg: 1, scope: !4610, file: !561, line: 4304, type: !3915)
!4613 = !DILocation(line: 0, scope: !4610)
!4614 = !DILocation(line: 4306, column: 10, scope: !4610)
!4615 = !DILocation(line: 4306, column: 26, scope: !4610)
!4616 = !DILocation(line: 4306, column: 3, scope: !4610)
!4617 = distinct !DISubprogram(name: "extract_component", scope: !3, file: !3, line: 588, type: !4618, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4620)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!1389, !3718, !1389, !1381, !1381}
!4620 = !{!4621, !4622, !4623, !4624, !4625}
!4621 = !DILocalVariable(name: "gsi", arg: 1, scope: !4617, file: !3, line: 588, type: !3718)
!4622 = !DILocalVariable(name: "t", arg: 2, scope: !4617, file: !3, line: 588, type: !1389)
!4623 = !DILocalVariable(name: "imagpart_p", arg: 3, scope: !4617, file: !3, line: 588, type: !1381)
!4624 = !DILocalVariable(name: "gimple_p", arg: 4, scope: !4617, file: !3, line: 589, type: !1381)
!4625 = !DILocalVariable(name: "inner_type", scope: !4626, file: !3, line: 607, type: !1389)
!4626 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 606, column: 7)
!4627 = distinct !DILexicalBlock(scope: !4617, file: !3, line: 592, column: 5)
!4628 = !DILocation(line: 0, scope: !4617)
!4629 = !DILocation(line: 591, column: 11, scope: !4617)
!4630 = !DILocation(line: 591, column: 3, scope: !4617)
!4631 = !DILocation(line: 594, column: 14, scope: !4627)
!4632 = !DILocation(line: 594, column: 27, scope: !4627)
!4633 = !DILocation(line: 594, column: 47, scope: !4627)
!4634 = !DILocation(line: 597, column: 7, scope: !4627)
!4635 = !DILocation(line: 607, column: 20, scope: !4626)
!4636 = !DILocation(line: 0, scope: !4626)
!4637 = !DILocation(line: 609, column: 6, scope: !4626)
!4638 = !DILocation(line: 612, column: 6, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 612, column: 6)
!4640 = !DILocation(line: 612, column: 6, scope: !4626)
!4641 = !DILocation(line: 613, column: 8, scope: !4639)
!4642 = !DILocation(line: 613, column: 4, scope: !4639)
!4643 = !DILocation(line: 620, column: 14, scope: !4627)
!4644 = !DILocation(line: 620, column: 7, scope: !4627)
!4645 = !DILocation(line: 623, column: 7, scope: !4627)
!4646 = !DILocation(line: 626, column: 5, scope: !4617)
!4647 = !DILocation(line: 628, column: 1, scope: !4617)
!4648 = distinct !DISubprogram(name: "set_ssa_use_from_ptr", scope: !4127, file: !4127, line: 233, type: !4649, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4651)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{null, !4259, !1389}
!4651 = !{!4652, !4653}
!4652 = !DILocalVariable(name: "use", arg: 1, scope: !4648, file: !4127, line: 233, type: !4259)
!4653 = !DILocalVariable(name: "val", arg: 2, scope: !4648, file: !4127, line: 233, type: !1389)
!4654 = !DILocation(line: 0, scope: !4648)
!4655 = !DILocation(line: 235, column: 3, scope: !4648)
!4656 = !DILocation(line: 236, column: 10, scope: !4648)
!4657 = !DILocation(line: 236, column: 15, scope: !4648)
!4658 = !DILocation(line: 237, column: 3, scope: !4648)
!4659 = !DILocation(line: 238, column: 1, scope: !4648)
!4660 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !4127, file: !4127, line: 442, type: !4661, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4663)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!4259, !1713, !1382}
!4663 = !{!4664, !4665}
!4664 = !DILocalVariable(name: "gs", arg: 1, scope: !4660, file: !4127, line: 442, type: !1713)
!4665 = !DILocalVariable(name: "i", arg: 2, scope: !4660, file: !4127, line: 442, type: !1382)
!4666 = !DILocation(line: 0, scope: !4660)
!4667 = !DILocation(line: 444, column: 11, scope: !4660)
!4668 = !DILocation(line: 444, column: 35, scope: !4660)
!4669 = !DILocation(line: 444, column: 3, scope: !4660)
!4670 = distinct !DISubprogram(name: "delink_imm_use", scope: !4127, file: !4127, line: 188, type: !4671, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4673)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{null, !4260}
!4673 = !{!4674}
!4674 = !DILocalVariable(name: "linknode", arg: 1, scope: !4670, file: !4127, line: 188, type: !4260)
!4675 = !DILocation(line: 0, scope: !4670)
!4676 = !DILocation(line: 191, column: 17, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4670, file: !4127, line: 191, column: 7)
!4678 = !DILocation(line: 191, column: 22, scope: !4677)
!4679 = !DILocation(line: 191, column: 7, scope: !4670)
!4680 = !DILocation(line: 194, column: 36, scope: !4670)
!4681 = !DILocation(line: 194, column: 19, scope: !4670)
!4682 = !DILocation(line: 194, column: 24, scope: !4670)
!4683 = !DILocation(line: 195, column: 36, scope: !4670)
!4684 = !DILocation(line: 195, column: 13, scope: !4670)
!4685 = !DILocation(line: 195, column: 24, scope: !4670)
!4686 = !DILocation(line: 196, column: 18, scope: !4670)
!4687 = !DILocation(line: 197, column: 18, scope: !4670)
!4688 = !DILocation(line: 198, column: 1, scope: !4670)
!4689 = distinct !DISubprogram(name: "link_imm_use", scope: !4127, file: !4127, line: 214, type: !4690, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4692)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{null, !4260, !1389}
!4692 = !{!4693, !4694, !4695}
!4693 = !DILocalVariable(name: "linknode", arg: 1, scope: !4689, file: !4127, line: 214, type: !4260)
!4694 = !DILocalVariable(name: "def", arg: 2, scope: !4689, file: !4127, line: 214, type: !1389)
!4695 = !DILocalVariable(name: "root", scope: !4689, file: !4127, line: 216, type: !4260)
!4696 = !DILocation(line: 0, scope: !4689)
!4697 = !DILocation(line: 218, column: 8, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4689, file: !4127, line: 218, column: 7)
!4699 = !DILocation(line: 218, column: 12, scope: !4698)
!4700 = !DILocation(line: 218, column: 15, scope: !4698)
!4701 = !DILocation(line: 218, column: 31, scope: !4698)
!4702 = !DILocation(line: 218, column: 7, scope: !4689)
!4703 = !DILocation(line: 219, column: 15, scope: !4698)
!4704 = !DILocation(line: 219, column: 20, scope: !4698)
!4705 = !DILocation(line: 219, column: 5, scope: !4698)
!4706 = !DILocation(line: 222, column: 16, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4698, file: !4127, line: 221, column: 5)
!4708 = !DILocation(line: 227, column: 7, scope: !4707)
!4709 = !DILocation(line: 229, column: 1, scope: !4689)
!4710 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !4127, file: !4127, line: 202, type: !4711, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4713)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{null, !4260, !4260}
!4713 = !{!4714, !4715}
!4714 = !DILocalVariable(name: "linknode", arg: 1, scope: !4710, file: !4127, line: 202, type: !4260)
!4715 = !DILocalVariable(name: "list", arg: 2, scope: !4710, file: !4127, line: 202, type: !4260)
!4716 = !DILocation(line: 0, scope: !4710)
!4717 = !DILocation(line: 206, column: 13, scope: !4710)
!4718 = !DILocation(line: 206, column: 18, scope: !4710)
!4719 = !DILocation(line: 207, column: 26, scope: !4710)
!4720 = !DILocation(line: 207, column: 13, scope: !4710)
!4721 = !DILocation(line: 207, column: 18, scope: !4710)
!4722 = !DILocation(line: 208, column: 9, scope: !4710)
!4723 = !DILocation(line: 208, column: 15, scope: !4710)
!4724 = !DILocation(line: 208, column: 20, scope: !4710)
!4725 = !DILocation(line: 209, column: 14, scope: !4710)
!4726 = !DILocation(line: 210, column: 1, scope: !4710)
!4727 = distinct !DISubprogram(name: "bb_seq", scope: !561, file: !561, line: 237, type: !4728, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4730)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!1703, !4304}
!4730 = !{!4731}
!4731 = !DILocalVariable(name: "bb", arg: 1, scope: !4727, file: !561, line: 237, type: !4304)
!4732 = !DILocation(line: 0, scope: !4727)
!4733 = !DILocation(line: 239, column: 17, scope: !4727)
!4734 = !DILocation(line: 239, column: 23, scope: !4727)
!4735 = !DILocation(line: 239, column: 33, scope: !4727)
!4736 = !DILocation(line: 239, column: 43, scope: !4727)
!4737 = !DILocation(line: 239, column: 36, scope: !4727)
!4738 = !DILocation(line: 239, column: 10, scope: !4727)
!4739 = !DILocation(line: 239, column: 68, scope: !4727)
!4740 = !DILocation(line: 239, column: 3, scope: !4727)
!4741 = distinct !DISubprogram(name: "gimple_seq_first", scope: !561, file: !561, line: 159, type: !4742, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4747)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!1708, !4744}
!4744 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !1390, line: 67, baseType: !4745)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1705)
!4747 = !{!4748}
!4748 = !DILocalVariable(name: "s", arg: 1, scope: !4741, file: !561, line: 159, type: !4744)
!4749 = !DILocation(line: 0, scope: !4741)
!4750 = !DILocation(line: 161, column: 10, scope: !4741)
!4751 = !DILocation(line: 161, column: 17, scope: !4741)
!4752 = !DILocation(line: 161, column: 3, scope: !4741)
!4753 = distinct !DISubprogram(name: "expand_complex_move", scope: !3, file: !3, line: 761, type: !4754, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4756)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{null, !3718, !1389}
!4756 = !{!4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4776, !4777, !4780, !4781}
!4757 = !DILocalVariable(name: "gsi", arg: 1, scope: !4753, file: !3, line: 761, type: !3718)
!4758 = !DILocalVariable(name: "type", arg: 2, scope: !4753, file: !3, line: 761, type: !1389)
!4759 = !DILocalVariable(name: "inner_type", scope: !4753, file: !3, line: 763, type: !1389)
!4760 = !DILocalVariable(name: "r", scope: !4753, file: !3, line: 764, type: !1389)
!4761 = !DILocalVariable(name: "i", scope: !4753, file: !3, line: 764, type: !1389)
!4762 = !DILocalVariable(name: "lhs", scope: !4753, file: !3, line: 764, type: !1389)
!4763 = !DILocalVariable(name: "rhs", scope: !4753, file: !3, line: 764, type: !1389)
!4764 = !DILocalVariable(name: "stmt", scope: !4753, file: !3, line: 765, type: !1713)
!4765 = !DILocalVariable(name: "ei", scope: !4766, file: !3, line: 787, type: !4770)
!4766 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 786, column: 2)
!4767 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 785, column: 11)
!4768 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 784, column: 5)
!4769 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 783, column: 7)
!4770 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !318, line: 682, baseType: !4771)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !318, line: 679, size: 128, elements: !4772)
!4772 = !{!4773, !4774}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4771, file: !318, line: 680, baseType: !7, size: 32)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !4771, file: !318, line: 681, baseType: !4775, size: 64, offset: 64)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!4776 = !DILocalVariable(name: "e", scope: !4766, file: !3, line: 788, type: !1693)
!4777 = !DILocalVariable(name: "x", scope: !4778, file: !3, line: 828, type: !1389)
!4778 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 827, column: 5)
!4779 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 826, column: 12)
!4780 = !DILocalVariable(name: "t", scope: !4778, file: !3, line: 829, type: !1713)
!4781 = !DILabel(scope: !4766, name: "found_fallthru", file: !3, line: 797)
!4782 = !DILocation(line: 0, scope: !4753)
!4783 = !DILocation(line: 763, column: 21, scope: !4753)
!4784 = !DILocation(line: 765, column: 17, scope: !4753)
!4785 = !DILocation(line: 767, column: 7, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 767, column: 7)
!4787 = !DILocation(line: 767, column: 7, scope: !4753)
!4788 = !DILocation(line: 769, column: 13, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4786, file: !3, line: 768, column: 5)
!4790 = !DILocation(line: 770, column: 11, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 770, column: 11)
!4792 = !DILocation(line: 770, column: 33, scope: !4791)
!4793 = !DILocation(line: 770, column: 11, scope: !4789)
!4794 = !DILocation(line: 771, column: 8, scope: !4791)
!4795 = !DILocation(line: 771, column: 2, scope: !4791)
!4796 = !DILocation(line: 775, column: 12, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4786, file: !3, line: 775, column: 12)
!4798 = !DILocation(line: 775, column: 12, scope: !4786)
!4799 = !DILocation(line: 777, column: 13, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 776, column: 5)
!4801 = !DILocation(line: 779, column: 5, scope: !4800)
!4802 = !DILocation(line: 781, column: 5, scope: !4797)
!4803 = !DILocation(line: 0, scope: !4786)
!4804 = !DILocation(line: 783, column: 7, scope: !4769)
!4805 = !DILocation(line: 783, column: 23, scope: !4769)
!4806 = !DILocation(line: 783, column: 7, scope: !4753)
!4807 = !DILocation(line: 785, column: 11, scope: !4767)
!4808 = !DILocation(line: 785, column: 11, scope: !4768)
!4809 = !DILocation(line: 787, column: 4, scope: !4766)
!4810 = !DILocation(line: 788, column: 4, scope: !4766)
!4811 = !DILocation(line: 793, column: 4, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 793, column: 4)
!4813 = !DILocation(line: 0, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 793, column: 4)
!4815 = !DILocation(line: 793, column: 4, scope: !4814)
!4816 = !DILocation(line: 0, scope: !4766)
!4817 = !DILocation(line: 794, column: 10, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 794, column: 10)
!4819 = !DILocation(line: 794, column: 13, scope: !4818)
!4820 = !DILocation(line: 794, column: 19, scope: !4818)
!4821 = !DILocation(line: 794, column: 10, scope: !4814)
!4822 = distinct !{!4822, !4811, !4823}
!4823 = !DILocation(line: 795, column: 13, scope: !4812)
!4824 = !DILocation(line: 796, column: 4, scope: !4766)
!4825 = !DILocation(line: 799, column: 8, scope: !4766)
!4826 = !DILocation(line: 797, column: 2, scope: !4766)
!4827 = !DILocation(line: 800, column: 8, scope: !4766)
!4828 = !DILocation(line: 801, column: 39, scope: !4766)
!4829 = !DILocation(line: 801, column: 4, scope: !4766)
!4830 = !DILocation(line: 802, column: 2, scope: !4767)
!4831 = !DILocation(line: 802, column: 2, scope: !4766)
!4832 = !DILocation(line: 803, column: 16, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 803, column: 16)
!4834 = !DILocation(line: 804, column: 9, scope: !4833)
!4835 = !DILocation(line: 804, column: 12, scope: !4833)
!4836 = !DILocation(line: 805, column: 9, scope: !4833)
!4837 = !DILocation(line: 805, column: 12, scope: !4833)
!4838 = !DILocation(line: 805, column: 42, scope: !4833)
!4839 = !DILocation(line: 803, column: 16, scope: !4767)
!4840 = !DILocation(line: 807, column: 8, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 806, column: 2)
!4842 = !DILocation(line: 808, column: 8, scope: !4841)
!4843 = !DILocation(line: 809, column: 4, scope: !4841)
!4844 = !DILocation(line: 810, column: 2, scope: !4841)
!4845 = !DILocation(line: 813, column: 8, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 813, column: 8)
!4847 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 812, column: 2)
!4848 = !DILocation(line: 813, column: 38, scope: !4846)
!4849 = !DILocation(line: 813, column: 8, scope: !4847)
!4850 = !DILocation(line: 815, column: 12, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4846, file: !3, line: 814, column: 6)
!4852 = !DILocation(line: 816, column: 12, scope: !4851)
!4853 = !DILocation(line: 817, column: 6, scope: !4851)
!4854 = !DILocation(line: 820, column: 12, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4846, file: !3, line: 819, column: 6)
!4856 = !DILocation(line: 821, column: 12, scope: !4855)
!4857 = !DILocation(line: 0, scope: !4846)
!4858 = !DILocation(line: 823, column: 4, scope: !4847)
!4859 = !DILocation(line: 826, column: 12, scope: !4779)
!4860 = !DILocation(line: 826, column: 16, scope: !4779)
!4861 = !DILocation(line: 826, column: 19, scope: !4779)
!4862 = !DILocation(line: 826, column: 35, scope: !4779)
!4863 = !DILocation(line: 826, column: 47, scope: !4779)
!4864 = !DILocation(line: 826, column: 51, scope: !4779)
!4865 = !DILocation(line: 826, column: 12, scope: !4769)
!4866 = !DILocation(line: 831, column: 11, scope: !4778)
!4867 = !DILocation(line: 832, column: 11, scope: !4778)
!4868 = !DILocation(line: 834, column: 11, scope: !4778)
!4869 = !DILocation(line: 0, scope: !4778)
!4870 = !DILocation(line: 835, column: 11, scope: !4778)
!4871 = !DILocation(line: 836, column: 7, scope: !4778)
!4872 = !DILocation(line: 838, column: 19, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 838, column: 11)
!4874 = !DILocation(line: 838, column: 16, scope: !4873)
!4875 = !DILocation(line: 0, scope: !4873)
!4876 = !DILocation(line: 838, column: 11, scope: !4778)
!4877 = !DILocation(line: 841, column: 4, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 839, column: 2)
!4879 = !DILocation(line: 842, column: 4, scope: !4878)
!4880 = !DILocation(line: 843, column: 2, scope: !4878)
!4881 = !DILocation(line: 847, column: 8, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 845, column: 2)
!4883 = !DILocation(line: 848, column: 4, scope: !4882)
!4884 = !DILocation(line: 850, column: 11, scope: !4882)
!4885 = !DILocation(line: 851, column: 4, scope: !4882)
!4886 = !DILocation(line: 852, column: 4, scope: !4882)
!4887 = !DILocation(line: 855, column: 7, scope: !4778)
!4888 = !DILocation(line: 856, column: 5, scope: !4778)
!4889 = !DILocation(line: 857, column: 1, scope: !4753)
!4890 = distinct !DISubprogram(name: "is_gimple_assign", scope: !561, file: !561, line: 1677, type: !4032, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4891)
!4891 = !{!4892}
!4892 = !DILocalVariable(name: "gs", arg: 1, scope: !4890, file: !561, line: 1677, type: !3915)
!4893 = !DILocation(line: 0, scope: !4890)
!4894 = !DILocation(line: 1679, column: 10, scope: !4890)
!4895 = !DILocation(line: 1679, column: 27, scope: !4890)
!4896 = !DILocation(line: 1679, column: 3, scope: !4890)
!4897 = distinct !DISubprogram(name: "update_stmt", scope: !561, file: !561, line: 1456, type: !4898, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4900)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{null, !1713}
!4900 = !{!4901}
!4901 = !DILocalVariable(name: "s", arg: 1, scope: !4897, file: !561, line: 1456, type: !1713)
!4902 = !DILocation(line: 0, scope: !4897)
!4903 = !DILocation(line: 1458, column: 7, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4897, file: !561, line: 1458, column: 7)
!4905 = !DILocation(line: 1458, column: 7, scope: !4897)
!4906 = !DILocation(line: 1460, column: 7, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4904, file: !561, line: 1459, column: 5)
!4908 = !DILocation(line: 1461, column: 7, scope: !4907)
!4909 = !DILocation(line: 1462, column: 5, scope: !4907)
!4910 = !DILocation(line: 1463, column: 1, scope: !4897)
!4911 = distinct !DISubprogram(name: "gimple_in_ssa_p", scope: !4127, file: !4127, line: 33, type: !4912, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4916)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!1381, !4914}
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!4916 = !{!4917}
!4917 = !DILocalVariable(name: "fun", arg: 1, scope: !4911, file: !4127, line: 33, type: !4914)
!4918 = !DILocation(line: 0, scope: !4911)
!4919 = !DILocation(line: 35, column: 10, scope: !4911)
!4920 = !DILocation(line: 35, column: 14, scope: !4911)
!4921 = !DILocation(line: 35, column: 22, scope: !4911)
!4922 = !DILocation(line: 35, column: 17, scope: !4911)
!4923 = !DILocation(line: 35, column: 32, scope: !4911)
!4924 = !DILocation(line: 35, column: 51, scope: !4911)
!4925 = !DILocation(line: 35, column: 3, scope: !4911)
!4926 = distinct !DISubprogram(name: "expand_complex_addition", scope: !3, file: !3, line: 865, type: !4927, scopeLine: 869, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4929)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{null, !3718, !1389, !1389, !1389, !1389, !1389, !366, !2698, !2698}
!4929 = !{!4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941}
!4930 = !DILocalVariable(name: "gsi", arg: 1, scope: !4926, file: !3, line: 865, type: !3718)
!4931 = !DILocalVariable(name: "inner_type", arg: 2, scope: !4926, file: !3, line: 865, type: !1389)
!4932 = !DILocalVariable(name: "ar", arg: 3, scope: !4926, file: !3, line: 866, type: !1389)
!4933 = !DILocalVariable(name: "ai", arg: 4, scope: !4926, file: !3, line: 866, type: !1389)
!4934 = !DILocalVariable(name: "br", arg: 5, scope: !4926, file: !3, line: 866, type: !1389)
!4935 = !DILocalVariable(name: "bi", arg: 6, scope: !4926, file: !3, line: 866, type: !1389)
!4936 = !DILocalVariable(name: "code", arg: 7, scope: !4926, file: !3, line: 867, type: !366)
!4937 = !DILocalVariable(name: "al", arg: 8, scope: !4926, file: !3, line: 868, type: !2698)
!4938 = !DILocalVariable(name: "bl", arg: 9, scope: !4926, file: !3, line: 868, type: !2698)
!4939 = !DILocalVariable(name: "rr", scope: !4926, file: !3, line: 870, type: !1389)
!4940 = !DILocalVariable(name: "ri", scope: !4926, file: !3, line: 870, type: !1389)
!4941 = !DILabel(scope: !4942, name: "general", file: !3, line: 925)
!4942 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 873, column: 5)
!4943 = !DILocation(line: 0, scope: !4926)
!4944 = !DILocation(line: 872, column: 11, scope: !4926)
!4945 = !DILocation(line: 872, column: 3, scope: !4926)
!4946 = !DILocation(line: 875, column: 12, scope: !4942)
!4947 = !DILocation(line: 877, column: 7, scope: !4942)
!4948 = !DILocation(line: 881, column: 16, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 881, column: 11)
!4950 = !DILocation(line: 881, column: 11, scope: !4942)
!4951 = !DILocation(line: 882, column: 7, scope: !4949)
!4952 = !DILocation(line: 882, column: 2, scope: !4949)
!4953 = !DILocation(line: 888, column: 16, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 888, column: 11)
!4955 = !DILocation(line: 888, column: 11, scope: !4942)
!4956 = !DILocation(line: 889, column: 7, scope: !4954)
!4957 = !DILocation(line: 889, column: 2, scope: !4954)
!4958 = !DILocation(line: 897, column: 12, scope: !4942)
!4959 = !DILocation(line: 898, column: 7, scope: !4942)
!4960 = !DILocation(line: 901, column: 12, scope: !4942)
!4961 = !DILocation(line: 903, column: 7, scope: !4942)
!4962 = !DILocation(line: 907, column: 12, scope: !4942)
!4963 = !DILocation(line: 908, column: 7, scope: !4942)
!4964 = !DILocation(line: 911, column: 16, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 911, column: 11)
!4966 = !DILocation(line: 911, column: 11, scope: !4942)
!4967 = !DILocation(line: 913, column: 12, scope: !4942)
!4968 = !DILocation(line: 915, column: 7, scope: !4942)
!4969 = !DILocation(line: 918, column: 16, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 918, column: 11)
!4971 = !DILocation(line: 918, column: 11, scope: !4942)
!4972 = !DILocation(line: 921, column: 12, scope: !4942)
!4973 = !DILocation(line: 922, column: 7, scope: !4942)
!4974 = !DILocation(line: 925, column: 5, scope: !4942)
!4975 = !DILocation(line: 926, column: 12, scope: !4942)
!4976 = !DILocation(line: 927, column: 12, scope: !4942)
!4977 = !DILocation(line: 928, column: 7, scope: !4942)
!4978 = !DILocation(line: 931, column: 7, scope: !4942)
!4979 = !DILocation(line: 932, column: 5, scope: !4942)
!4980 = !DILocation(line: 934, column: 3, scope: !4926)
!4981 = !DILocation(line: 935, column: 1, scope: !4926)
!4982 = distinct !DISubprogram(name: "expand_complex_multiplication", scope: !3, file: !3, line: 989, type: !4983, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4985)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{null, !3718, !1389, !1389, !1389, !1389, !1389, !2698, !2698}
!4985 = !{!4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4999, !5003, !5004, !5005}
!4986 = !DILocalVariable(name: "gsi", arg: 1, scope: !4982, file: !3, line: 989, type: !3718)
!4987 = !DILocalVariable(name: "inner_type", arg: 2, scope: !4982, file: !3, line: 989, type: !1389)
!4988 = !DILocalVariable(name: "ar", arg: 3, scope: !4982, file: !3, line: 990, type: !1389)
!4989 = !DILocalVariable(name: "ai", arg: 4, scope: !4982, file: !3, line: 990, type: !1389)
!4990 = !DILocalVariable(name: "br", arg: 5, scope: !4982, file: !3, line: 990, type: !1389)
!4991 = !DILocalVariable(name: "bi", arg: 6, scope: !4982, file: !3, line: 990, type: !1389)
!4992 = !DILocalVariable(name: "al", arg: 7, scope: !4982, file: !3, line: 991, type: !2698)
!4993 = !DILocalVariable(name: "bl", arg: 8, scope: !4982, file: !3, line: 991, type: !2698)
!4994 = !DILocalVariable(name: "rr", scope: !4982, file: !3, line: 993, type: !1389)
!4995 = !DILocalVariable(name: "ri", scope: !4982, file: !3, line: 993, type: !1389)
!4996 = !DILocalVariable(name: "tl", scope: !4997, file: !3, line: 997, type: !2698)
!4997 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 996, column: 5)
!4998 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 995, column: 7)
!4999 = !DILocalVariable(name: "t1", scope: !5000, file: !3, line: 1044, type: !1389)
!5000 = distinct !DILexicalBlock(scope: !5001, file: !3, line: 1043, column: 2)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1037, column: 11)
!5002 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 1004, column: 5)
!5003 = !DILocalVariable(name: "t2", scope: !5000, file: !3, line: 1044, type: !1389)
!5004 = !DILocalVariable(name: "t3", scope: !5000, file: !3, line: 1044, type: !1389)
!5005 = !DILocalVariable(name: "t4", scope: !5000, file: !3, line: 1044, type: !1389)
!5006 = !DILocation(line: 0, scope: !4982)
!5007 = !DILocation(line: 995, column: 10, scope: !4998)
!5008 = !DILocation(line: 995, column: 7, scope: !4982)
!5009 = !DILocation(line: 1003, column: 11, scope: !4982)
!5010 = !DILocation(line: 1003, column: 3, scope: !4982)
!5011 = !DILocation(line: 1006, column: 12, scope: !5002)
!5012 = !DILocation(line: 1008, column: 7, scope: !5002)
!5013 = !DILocation(line: 1012, column: 11, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 1012, column: 11)
!5015 = !DILocation(line: 1012, column: 26, scope: !5014)
!5016 = !DILocation(line: 1013, column: 4, scope: !5014)
!5017 = !DILocation(line: 1013, column: 7, scope: !5014)
!5018 = !DILocation(line: 1012, column: 11, scope: !5002)
!5019 = !DILocation(line: 1016, column: 7, scope: !5014)
!5020 = !DILocation(line: 1020, column: 12, scope: !5002)
!5021 = !DILocation(line: 1021, column: 12, scope: !5002)
!5022 = !DILocation(line: 1023, column: 7, scope: !5002)
!5023 = !DILocation(line: 1026, column: 12, scope: !5002)
!5024 = !DILocation(line: 1027, column: 12, scope: !5002)
!5025 = !DILocation(line: 1028, column: 7, scope: !5002)
!5026 = !DILocation(line: 1031, column: 12, scope: !5002)
!5027 = !DILocation(line: 1032, column: 12, scope: !5002)
!5028 = !DILocation(line: 1033, column: 12, scope: !5002)
!5029 = !DILocation(line: 1034, column: 7, scope: !5002)
!5030 = !DILocation(line: 1037, column: 11, scope: !5001)
!5031 = !DILocation(line: 1037, column: 31, scope: !5001)
!5032 = !DILocation(line: 1037, column: 36, scope: !5001)
!5033 = !DILocation(line: 1037, column: 39, scope: !5001)
!5034 = !DILocation(line: 1037, column: 11, scope: !5002)
!5035 = !DILocation(line: 1039, column: 4, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5001, file: !3, line: 1038, column: 2)
!5037 = !DILocation(line: 1040, column: 4, scope: !5036)
!5038 = !DILocation(line: 1046, column: 9, scope: !5000)
!5039 = !DILocation(line: 0, scope: !5000)
!5040 = !DILocation(line: 1047, column: 9, scope: !5000)
!5041 = !DILocation(line: 1048, column: 9, scope: !5000)
!5042 = !DILocation(line: 1052, column: 11, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 1052, column: 8)
!5044 = !DILocation(line: 1052, column: 23, scope: !5043)
!5045 = !DILocation(line: 1052, column: 17, scope: !5043)
!5046 = !DILocation(line: 1055, column: 11, scope: !5043)
!5047 = !DILocation(line: 0, scope: !5043)
!5048 = !DILocation(line: 1057, column: 9, scope: !5000)
!5049 = !DILocation(line: 1058, column: 9, scope: !5000)
!5050 = !DILocation(line: 1060, column: 7, scope: !5002)
!5051 = !DILocation(line: 1063, column: 7, scope: !5002)
!5052 = !DILocation(line: 1064, column: 5, scope: !5002)
!5053 = !DILocation(line: 1066, column: 3, scope: !4982)
!5054 = !DILocation(line: 1067, column: 1, scope: !4982)
!5055 = distinct !DISubprogram(name: "expand_complex_division", scope: !3, file: !3, line: 1259, type: !4927, scopeLine: 1263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5056)
!5056 = !{!5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067}
!5057 = !DILocalVariable(name: "gsi", arg: 1, scope: !5055, file: !3, line: 1259, type: !3718)
!5058 = !DILocalVariable(name: "inner_type", arg: 2, scope: !5055, file: !3, line: 1259, type: !1389)
!5059 = !DILocalVariable(name: "ar", arg: 3, scope: !5055, file: !3, line: 1260, type: !1389)
!5060 = !DILocalVariable(name: "ai", arg: 4, scope: !5055, file: !3, line: 1260, type: !1389)
!5061 = !DILocalVariable(name: "br", arg: 5, scope: !5055, file: !3, line: 1260, type: !1389)
!5062 = !DILocalVariable(name: "bi", arg: 6, scope: !5055, file: !3, line: 1260, type: !1389)
!5063 = !DILocalVariable(name: "code", arg: 7, scope: !5055, file: !3, line: 1261, type: !366)
!5064 = !DILocalVariable(name: "al", arg: 8, scope: !5055, file: !3, line: 1262, type: !2698)
!5065 = !DILocalVariable(name: "bl", arg: 9, scope: !5055, file: !3, line: 1262, type: !2698)
!5066 = !DILocalVariable(name: "rr", scope: !5055, file: !3, line: 1264, type: !1389)
!5067 = !DILocalVariable(name: "ri", scope: !5055, file: !3, line: 1264, type: !1389)
!5068 = !DILocation(line: 0, scope: !5055)
!5069 = !DILocation(line: 1266, column: 11, scope: !5055)
!5070 = !DILocation(line: 1266, column: 3, scope: !5055)
!5071 = !DILocation(line: 1269, column: 12, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 1267, column: 5)
!5073 = !DILocation(line: 1271, column: 7, scope: !5072)
!5074 = !DILocation(line: 1275, column: 12, scope: !5072)
!5075 = !DILocation(line: 1276, column: 12, scope: !5072)
!5076 = !DILocation(line: 1277, column: 7, scope: !5072)
!5077 = !DILocation(line: 1281, column: 12, scope: !5072)
!5078 = !DILocation(line: 1282, column: 7, scope: !5072)
!5079 = !DILocation(line: 1285, column: 12, scope: !5072)
!5080 = !DILocation(line: 1287, column: 7, scope: !5072)
!5081 = !DILocation(line: 1290, column: 12, scope: !5072)
!5082 = !DILocation(line: 1291, column: 12, scope: !5072)
!5083 = !DILocation(line: 1292, column: 7, scope: !5072)
!5084 = !DILocation(line: 1295, column: 12, scope: !5072)
!5085 = !DILocation(line: 1296, column: 12, scope: !5072)
!5086 = !DILocation(line: 1297, column: 12, scope: !5072)
!5087 = !DILocation(line: 1297, column: 7, scope: !5072)
!5088 = !DILocation(line: 1302, column: 15, scope: !5072)
!5089 = !DILocation(line: 1302, column: 7, scope: !5072)
!5090 = !DILocation(line: 1306, column: 4, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 1303, column: 2)
!5092 = !DILocation(line: 1307, column: 4, scope: !5091)
!5093 = !DILocation(line: 1310, column: 8, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 1310, column: 8)
!5095 = !DILocation(line: 1310, column: 8, scope: !5091)
!5096 = !DILocation(line: 1312, column: 8, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 1311, column: 6)
!5098 = !DILocation(line: 1313, column: 8, scope: !5097)
!5099 = !DILocation(line: 1319, column: 4, scope: !5091)
!5100 = !DILocation(line: 1320, column: 4, scope: !5091)
!5101 = !DILocation(line: 1323, column: 4, scope: !5091)
!5102 = !DILocation(line: 1324, column: 2, scope: !5091)
!5103 = !DILocation(line: 1328, column: 7, scope: !5072)
!5104 = !DILocation(line: 1329, column: 5, scope: !5072)
!5105 = !DILocation(line: 1331, column: 3, scope: !5055)
!5106 = !DILocation(line: 1332, column: 1, scope: !5055)
!5107 = distinct !DISubprogram(name: "expand_complex_negation", scope: !3, file: !3, line: 1339, type: !5108, scopeLine: 1341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5110)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{null, !3718, !1389, !1389, !1389}
!5110 = !{!5111, !5112, !5113, !5114, !5115, !5116}
!5111 = !DILocalVariable(name: "gsi", arg: 1, scope: !5107, file: !3, line: 1339, type: !3718)
!5112 = !DILocalVariable(name: "inner_type", arg: 2, scope: !5107, file: !3, line: 1339, type: !1389)
!5113 = !DILocalVariable(name: "ar", arg: 3, scope: !5107, file: !3, line: 1340, type: !1389)
!5114 = !DILocalVariable(name: "ai", arg: 4, scope: !5107, file: !3, line: 1340, type: !1389)
!5115 = !DILocalVariable(name: "rr", scope: !5107, file: !3, line: 1342, type: !1389)
!5116 = !DILocalVariable(name: "ri", scope: !5107, file: !3, line: 1342, type: !1389)
!5117 = !DILocation(line: 0, scope: !5107)
!5118 = !DILocation(line: 1344, column: 8, scope: !5107)
!5119 = !DILocation(line: 1345, column: 8, scope: !5107)
!5120 = !DILocation(line: 1347, column: 3, scope: !5107)
!5121 = !DILocation(line: 1348, column: 1, scope: !5107)
!5122 = distinct !DISubprogram(name: "expand_complex_conjugate", scope: !3, file: !3, line: 1355, type: !5108, scopeLine: 1357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5123)
!5123 = !{!5124, !5125, !5126, !5127, !5128}
!5124 = !DILocalVariable(name: "gsi", arg: 1, scope: !5122, file: !3, line: 1355, type: !3718)
!5125 = !DILocalVariable(name: "inner_type", arg: 2, scope: !5122, file: !3, line: 1355, type: !1389)
!5126 = !DILocalVariable(name: "ar", arg: 3, scope: !5122, file: !3, line: 1356, type: !1389)
!5127 = !DILocalVariable(name: "ai", arg: 4, scope: !5122, file: !3, line: 1356, type: !1389)
!5128 = !DILocalVariable(name: "ri", scope: !5122, file: !3, line: 1358, type: !1389)
!5129 = !DILocation(line: 0, scope: !5122)
!5130 = !DILocation(line: 1360, column: 8, scope: !5122)
!5131 = !DILocation(line: 1362, column: 3, scope: !5122)
!5132 = !DILocation(line: 1363, column: 1, scope: !5122)
!5133 = distinct !DISubprogram(name: "expand_complex_comparison", scope: !3, file: !3, line: 1368, type: !5134, scopeLine: 1370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5136)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{null, !3718, !1389, !1389, !1389, !1389, !366}
!5136 = !{!5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147}
!5137 = !DILocalVariable(name: "gsi", arg: 1, scope: !5133, file: !3, line: 1368, type: !3718)
!5138 = !DILocalVariable(name: "ar", arg: 2, scope: !5133, file: !3, line: 1368, type: !1389)
!5139 = !DILocalVariable(name: "ai", arg: 3, scope: !5133, file: !3, line: 1368, type: !1389)
!5140 = !DILocalVariable(name: "br", arg: 4, scope: !5133, file: !3, line: 1369, type: !1389)
!5141 = !DILocalVariable(name: "bi", arg: 5, scope: !5133, file: !3, line: 1369, type: !1389)
!5142 = !DILocalVariable(name: "code", arg: 6, scope: !5133, file: !3, line: 1369, type: !366)
!5143 = !DILocalVariable(name: "cr", scope: !5133, file: !3, line: 1371, type: !1389)
!5144 = !DILocalVariable(name: "ci", scope: !5133, file: !3, line: 1371, type: !1389)
!5145 = !DILocalVariable(name: "cc", scope: !5133, file: !3, line: 1371, type: !1389)
!5146 = !DILocalVariable(name: "type", scope: !5133, file: !3, line: 1371, type: !1389)
!5147 = !DILocalVariable(name: "stmt", scope: !5133, file: !3, line: 1372, type: !1713)
!5148 = !DILocation(line: 0, scope: !5133)
!5149 = !DILocation(line: 1374, column: 36, scope: !5133)
!5150 = !DILocation(line: 1374, column: 8, scope: !5133)
!5151 = !DILocation(line: 1375, column: 36, scope: !5133)
!5152 = !DILocation(line: 1375, column: 8, scope: !5133)
!5153 = !DILocation(line: 1377, column: 10, scope: !5133)
!5154 = !DILocation(line: 1377, column: 5, scope: !5133)
!5155 = !DILocation(line: 1378, column: 4, scope: !5133)
!5156 = !DILocation(line: 1376, column: 8, scope: !5133)
!5157 = !DILocation(line: 1380, column: 10, scope: !5133)
!5158 = !DILocation(line: 1382, column: 11, scope: !5133)
!5159 = !DILocation(line: 1382, column: 3, scope: !5133)
!5160 = !DILocation(line: 1385, column: 14, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 1383, column: 5)
!5162 = !DILocation(line: 1386, column: 39, scope: !5161)
!5163 = !DILocation(line: 1386, column: 7, scope: !5161)
!5164 = !DILocation(line: 1387, column: 7, scope: !5161)
!5165 = !DILocation(line: 1390, column: 14, scope: !5161)
!5166 = !DILocation(line: 1391, column: 45, scope: !5161)
!5167 = !DILocation(line: 1391, column: 7, scope: !5161)
!5168 = !DILocation(line: 1392, column: 14, scope: !5161)
!5169 = !DILocation(line: 1393, column: 7, scope: !5161)
!5170 = !DILocation(line: 1396, column: 7, scope: !5161)
!5171 = !DILocation(line: 1397, column: 7, scope: !5161)
!5172 = !DILocation(line: 1398, column: 34, scope: !5161)
!5173 = !DILocation(line: 1398, column: 7, scope: !5161)
!5174 = !DILocation(line: 1399, column: 7, scope: !5161)
!5175 = !DILocation(line: 1402, column: 7, scope: !5161)
!5176 = !DILocation(line: 1403, column: 5, scope: !5161)
!5177 = !DILocation(line: 1405, column: 3, scope: !5133)
!5178 = !DILocation(line: 1406, column: 1, scope: !5133)
!5179 = distinct !DISubprogram(name: "is_gimple_call", scope: !561, file: !561, line: 1870, type: !4032, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5180)
!5180 = !{!5181}
!5181 = !DILocalVariable(name: "gs", arg: 1, scope: !5179, file: !561, line: 1870, type: !3915)
!5182 = !DILocation(line: 0, scope: !5179)
!5183 = !DILocation(line: 1872, column: 10, scope: !5179)
!5184 = !DILocation(line: 1872, column: 27, scope: !5179)
!5185 = !DILocation(line: 1872, column: 3, scope: !5179)
!5186 = distinct !DISubprogram(name: "ei_start_1", scope: !318, file: !318, line: 696, type: !5187, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5189)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!4770, !4775}
!5189 = !{!5190, !5191}
!5190 = !DILocalVariable(name: "ev", arg: 1, scope: !5186, file: !318, line: 696, type: !4775)
!5191 = !DILocalVariable(name: "i", scope: !5186, file: !318, line: 698, type: !4770)
!5192 = !DILocation(line: 0, scope: !5186)
!5193 = !DILocation(line: 700, column: 5, scope: !5186)
!5194 = !DILocation(line: 700, column: 11, scope: !5186)
!5195 = !DILocation(line: 701, column: 5, scope: !5186)
!5196 = !DILocation(line: 701, column: 15, scope: !5186)
!5197 = !DILocation(line: 703, column: 3, scope: !5186)
!5198 = distinct !DISubprogram(name: "gsi_bb", scope: !561, file: !561, line: 4588, type: !5199, scopeLine: 4589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5201)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!2113, !3201}
!5201 = !{!5202}
!5202 = !DILocalVariable(name: "i", arg: 1, scope: !5198, file: !561, line: 4588, type: !3201)
!5203 = !DILocation(line: 4588, column: 30, scope: !5198)
!5204 = !DILocation(line: 4590, column: 12, scope: !5198)
!5205 = !DILocation(line: 4590, column: 3, scope: !5198)
!5206 = distinct !DISubprogram(name: "ei_cond", scope: !318, file: !318, line: 771, type: !5207, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5209)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!1381, !4770, !3437}
!5209 = !{!5210, !5211}
!5210 = !DILocalVariable(name: "ei", arg: 1, scope: !5206, file: !318, line: 771, type: !4770)
!5211 = !DILocalVariable(name: "p", arg: 2, scope: !5206, file: !318, line: 771, type: !3437)
!5212 = !DILocation(line: 0, scope: !5206)
!5213 = !DILocation(line: 773, column: 8, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5206, file: !318, line: 773, column: 7)
!5215 = !DILocation(line: 773, column: 7, scope: !5206)
!5216 = !DILocation(line: 775, column: 12, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5214, file: !318, line: 774, column: 5)
!5218 = !DILocation(line: 776, column: 7, scope: !5217)
!5219 = !DILocation(line: 781, column: 7, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5214, file: !318, line: 779, column: 5)
!5221 = !DILocation(line: 0, scope: !5214)
!5222 = !DILocation(line: 783, column: 1, scope: !5206)
!5223 = distinct !DISubprogram(name: "ei_next", scope: !318, file: !318, line: 736, type: !5224, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5227)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{null, !5226}
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!5227 = !{!5228}
!5228 = !DILocalVariable(name: "i", arg: 1, scope: !5223, file: !318, line: 736, type: !5226)
!5229 = !DILocation(line: 0, scope: !5223)
!5230 = !DILocation(line: 738, column: 3, scope: !5223)
!5231 = !DILocation(line: 739, column: 11, scope: !5223)
!5232 = !DILocation(line: 740, column: 1, scope: !5223)
!5233 = distinct !DISubprogram(name: "update_complex_components", scope: !3, file: !3, line: 633, type: !5234, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5236)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{null, !3718, !1713, !1389, !1389}
!5236 = !{!5237, !5238, !5239, !5240, !5241, !5242}
!5237 = !DILocalVariable(name: "gsi", arg: 1, scope: !5233, file: !3, line: 633, type: !3718)
!5238 = !DILocalVariable(name: "stmt", arg: 2, scope: !5233, file: !3, line: 633, type: !1713)
!5239 = !DILocalVariable(name: "r", arg: 3, scope: !5233, file: !3, line: 633, type: !1389)
!5240 = !DILocalVariable(name: "i", arg: 4, scope: !5233, file: !3, line: 634, type: !1389)
!5241 = !DILocalVariable(name: "lhs", scope: !5233, file: !3, line: 636, type: !1389)
!5242 = !DILocalVariable(name: "list", scope: !5233, file: !3, line: 637, type: !1703)
!5243 = !DILocation(line: 0, scope: !5233)
!5244 = !DILocation(line: 639, column: 9, scope: !5233)
!5245 = !DILocation(line: 641, column: 10, scope: !5233)
!5246 = !DILocation(line: 642, column: 7, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 642, column: 7)
!5248 = !DILocation(line: 642, column: 7, scope: !5233)
!5249 = !DILocation(line: 643, column: 5, scope: !5247)
!5250 = !DILocation(line: 645, column: 10, scope: !5233)
!5251 = !DILocation(line: 646, column: 7, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 646, column: 7)
!5253 = !DILocation(line: 646, column: 7, scope: !5233)
!5254 = !DILocation(line: 647, column: 5, scope: !5252)
!5255 = !DILocation(line: 648, column: 1, scope: !5233)
!5256 = distinct !DISubprogram(name: "update_complex_assignment", scope: !3, file: !3, line: 668, type: !5257, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5259)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{null, !3718, !1389, !1389}
!5259 = !{!5260, !5261, !5262, !5263}
!5260 = !DILocalVariable(name: "gsi", arg: 1, scope: !5256, file: !3, line: 668, type: !3718)
!5261 = !DILocalVariable(name: "r", arg: 2, scope: !5256, file: !3, line: 668, type: !1389)
!5262 = !DILocalVariable(name: "i", arg: 3, scope: !5256, file: !3, line: 668, type: !1389)
!5263 = !DILocalVariable(name: "orig_si", scope: !5256, file: !3, line: 670, type: !3201)
!5264 = !DILocation(line: 0, scope: !5256)
!5265 = !DILocation(line: 670, column: 3, scope: !5256)
!5266 = !DILocation(line: 670, column: 34, scope: !5256)
!5267 = !DILocation(line: 672, column: 24, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 672, column: 7)
!5269 = !DILocation(line: 672, column: 7, scope: !5268)
!5270 = !DILocation(line: 672, column: 7, scope: !5256)
!5271 = !DILocation(line: 673, column: 37, scope: !5268)
!5272 = !DILocation(line: 673, column: 5, scope: !5268)
!5273 = !DILocation(line: 675, column: 3, scope: !5256)
!5274 = !DILocation(line: 676, column: 16, scope: !5256)
!5275 = !DILocation(line: 676, column: 3, scope: !5256)
!5276 = !DILocation(line: 677, column: 1, scope: !5256)
!5277 = distinct !DISubprogram(name: "gimple_assign_set_lhs", scope: !561, file: !561, line: 1714, type: !5278, scopeLine: 1715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5280)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{null, !1713, !1389}
!5280 = !{!5281, !5282}
!5281 = !DILocalVariable(name: "gs", arg: 1, scope: !5277, file: !561, line: 1714, type: !1713)
!5282 = !DILocalVariable(name: "lhs", arg: 2, scope: !5277, file: !561, line: 1714, type: !1389)
!5283 = !DILocation(line: 0, scope: !5277)
!5284 = !DILocation(line: 1717, column: 3, scope: !5277)
!5285 = !DILocation(line: 1719, column: 7, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5277, file: !561, line: 1719, column: 7)
!5287 = !DILocation(line: 1719, column: 11, scope: !5286)
!5288 = !DILocation(line: 1719, column: 14, scope: !5286)
!5289 = !DILocation(line: 1719, column: 30, scope: !5286)
!5290 = !DILocation(line: 1719, column: 7, scope: !5277)
!5291 = !DILocation(line: 1720, column: 5, scope: !5286)
!5292 = !DILocation(line: 1720, column: 29, scope: !5286)
!5293 = !DILocation(line: 1721, column: 1, scope: !5277)
!5294 = distinct !DISubprogram(name: "gimple_assign_set_rhs1", scope: !561, file: !561, line: 1747, type: !5278, scopeLine: 1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5295)
!5295 = !{!5296, !5297}
!5296 = !DILocalVariable(name: "gs", arg: 1, scope: !5294, file: !561, line: 1747, type: !1713)
!5297 = !DILocalVariable(name: "rhs", arg: 2, scope: !5294, file: !561, line: 1747, type: !1389)
!5298 = !DILocation(line: 0, scope: !5294)
!5299 = !DILocation(line: 1751, column: 3, scope: !5294)
!5300 = !DILocation(line: 1752, column: 1, scope: !5294)
!5301 = distinct !DISubprogram(name: "gimple_return_set_retval", scope: !561, file: !561, line: 4263, type: !5278, scopeLine: 4264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5302)
!5302 = !{!5303, !5304}
!5303 = !DILocalVariable(name: "gs", arg: 1, scope: !5301, file: !561, line: 4263, type: !1713)
!5304 = !DILocalVariable(name: "retval", arg: 2, scope: !5301, file: !561, line: 4263, type: !1389)
!5305 = !DILocation(line: 0, scope: !5301)
!5306 = !DILocation(line: 4266, column: 3, scope: !5301)
!5307 = !DILocation(line: 4267, column: 1, scope: !5301)
!5308 = distinct !DISubprogram(name: "ei_end_p", scope: !318, file: !318, line: 721, type: !5309, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5311)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!1381, !4770}
!5311 = !{!5312}
!5312 = !DILocalVariable(name: "i", arg: 1, scope: !5308, file: !318, line: 721, type: !4770)
!5313 = !DILocation(line: 723, column: 22, scope: !5308)
!5314 = !DILocation(line: 723, column: 19, scope: !5308)
!5315 = !DILocation(line: 723, column: 10, scope: !5308)
!5316 = !DILocation(line: 723, column: 3, scope: !5308)
!5317 = distinct !DISubprogram(name: "ei_edge", scope: !318, file: !318, line: 752, type: !5318, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5320)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!1693, !4770}
!5320 = !{!5321}
!5321 = !DILocalVariable(name: "i", arg: 1, scope: !5317, file: !318, line: 752, type: !4770)
!5322 = !DILocation(line: 754, column: 10, scope: !5317)
!5323 = !DILocation(line: 754, column: 3, scope: !5317)
!5324 = distinct !DISubprogram(name: "ei_container", scope: !318, file: !318, line: 685, type: !5325, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5327)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{!1681, !4770}
!5327 = !{!5328}
!5328 = !DILocalVariable(name: "i", arg: 1, scope: !5324, file: !318, line: 685, type: !4770)
!5329 = !DILocation(line: 687, column: 3, scope: !5324)
!5330 = !DILocation(line: 688, column: 10, scope: !5324)
!5331 = !DILocation(line: 688, column: 3, scope: !5324)
!5332 = distinct !DISubprogram(name: "gimple_set_op", scope: !561, file: !561, line: 1663, type: !5333, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5335)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{null, !1713, !7, !1389}
!5335 = !{!5336, !5337, !5338}
!5336 = !DILocalVariable(name: "gs", arg: 1, scope: !5332, file: !561, line: 1663, type: !1713)
!5337 = !DILocalVariable(name: "i", arg: 2, scope: !5332, file: !561, line: 1663, type: !7)
!5338 = !DILocalVariable(name: "op", arg: 3, scope: !5332, file: !561, line: 1663, type: !1389)
!5339 = !DILocation(line: 0, scope: !5332)
!5340 = !DILocation(line: 1665, column: 3, scope: !5332)
!5341 = !DILocation(line: 1671, column: 3, scope: !5332)
!5342 = !DILocation(line: 1671, column: 22, scope: !5332)
!5343 = !DILocation(line: 1672, column: 1, scope: !5332)
!5344 = distinct !DISubprogram(name: "expand_complex_libcall", scope: !3, file: !3, line: 941, type: !5134, scopeLine: 943, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5345)
!5345 = !{!5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358}
!5346 = !DILocalVariable(name: "gsi", arg: 1, scope: !5344, file: !3, line: 941, type: !3718)
!5347 = !DILocalVariable(name: "ar", arg: 2, scope: !5344, file: !3, line: 941, type: !1389)
!5348 = !DILocalVariable(name: "ai", arg: 3, scope: !5344, file: !3, line: 941, type: !1389)
!5349 = !DILocalVariable(name: "br", arg: 4, scope: !5344, file: !3, line: 942, type: !1389)
!5350 = !DILocalVariable(name: "bi", arg: 5, scope: !5344, file: !3, line: 942, type: !1389)
!5351 = !DILocalVariable(name: "code", arg: 6, scope: !5344, file: !3, line: 942, type: !366)
!5352 = !DILocalVariable(name: "mode", scope: !5344, file: !3, line: 944, type: !189)
!5353 = !DILocalVariable(name: "bcode", scope: !5344, file: !3, line: 945, type: !637)
!5354 = !DILocalVariable(name: "fn", scope: !5344, file: !3, line: 946, type: !1389)
!5355 = !DILocalVariable(name: "type", scope: !5344, file: !3, line: 946, type: !1389)
!5356 = !DILocalVariable(name: "lhs", scope: !5344, file: !3, line: 946, type: !1389)
!5357 = !DILocalVariable(name: "old_stmt", scope: !5344, file: !3, line: 947, type: !1713)
!5358 = !DILocalVariable(name: "stmt", scope: !5344, file: !3, line: 947, type: !1713)
!5359 = !DILocation(line: 0, scope: !5344)
!5360 = !DILocation(line: 949, column: 14, scope: !5344)
!5361 = !DILocation(line: 950, column: 9, scope: !5344)
!5362 = !DILocation(line: 951, column: 10, scope: !5344)
!5363 = !DILocation(line: 953, column: 10, scope: !5344)
!5364 = !DILocation(line: 954, column: 3, scope: !5344)
!5365 = !DILocation(line: 956, column: 7, scope: !5344)
!5366 = !DILocation(line: 958, column: 40, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 956, column: 7)
!5368 = !DILocation(line: 957, column: 5, scope: !5367)
!5369 = !DILocation(line: 961, column: 40, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 959, column: 12)
!5371 = !DILocation(line: 960, column: 5, scope: !5370)
!5372 = !DILocation(line: 963, column: 5, scope: !5370)
!5373 = !DILocation(line: 0, scope: !5367)
!5374 = !DILocation(line: 964, column: 8, scope: !5344)
!5375 = !DILocation(line: 966, column: 10, scope: !5344)
!5376 = !DILocation(line: 967, column: 3, scope: !5344)
!5377 = !DILocation(line: 968, column: 3, scope: !5344)
!5378 = !DILocation(line: 969, column: 3, scope: !5344)
!5379 = !DILocation(line: 971, column: 7, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 971, column: 7)
!5381 = !DILocation(line: 971, column: 7, scope: !5344)
!5382 = !DILocation(line: 972, column: 33, scope: !5380)
!5383 = !DILocation(line: 972, column: 5, scope: !5380)
!5384 = !DILocation(line: 974, column: 24, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 974, column: 7)
!5386 = !DILocation(line: 974, column: 7, scope: !5385)
!5387 = !DILocation(line: 974, column: 7, scope: !5344)
!5388 = !DILocation(line: 976, column: 14, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 975, column: 5)
!5390 = !DILocation(line: 978, column: 6, scope: !5389)
!5391 = !DILocation(line: 979, column: 6, scope: !5389)
!5392 = !DILocation(line: 977, column: 7, scope: !5389)
!5393 = !DILocation(line: 980, column: 7, scope: !5389)
!5394 = !DILocation(line: 980, column: 31, scope: !5389)
!5395 = !DILocation(line: 981, column: 5, scope: !5389)
!5396 = !DILocation(line: 982, column: 1, scope: !5344)
!5397 = distinct !DISubprogram(name: "gimple_call_set_lhs", scope: !561, file: !561, line: 1898, type: !5278, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5398)
!5398 = !{!5399, !5400}
!5399 = !DILocalVariable(name: "gs", arg: 1, scope: !5397, file: !561, line: 1898, type: !1713)
!5400 = !DILocalVariable(name: "lhs", arg: 2, scope: !5397, file: !561, line: 1898, type: !1389)
!5401 = !DILocation(line: 0, scope: !5397)
!5402 = !DILocation(line: 1901, column: 3, scope: !5397)
!5403 = !DILocation(line: 1902, column: 7, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5397, file: !561, line: 1902, column: 7)
!5405 = !DILocation(line: 1902, column: 11, scope: !5404)
!5406 = !DILocation(line: 1902, column: 14, scope: !5404)
!5407 = !DILocation(line: 1902, column: 30, scope: !5404)
!5408 = !DILocation(line: 1902, column: 7, scope: !5397)
!5409 = !DILocation(line: 1903, column: 5, scope: !5404)
!5410 = !DILocation(line: 1903, column: 29, scope: !5404)
!5411 = !DILocation(line: 1904, column: 1, scope: !5397)
!5412 = distinct !DISubprogram(name: "expand_complex_div_straight", scope: !3, file: !3, line: 1077, type: !5413, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5415)
!5413 = !DISubroutineType(types: !5414)
!5414 = !{null, !3718, !1389, !1389, !1389, !1389, !1389, !366}
!5415 = !{!5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428}
!5416 = !DILocalVariable(name: "gsi", arg: 1, scope: !5412, file: !3, line: 1077, type: !3718)
!5417 = !DILocalVariable(name: "inner_type", arg: 2, scope: !5412, file: !3, line: 1077, type: !1389)
!5418 = !DILocalVariable(name: "ar", arg: 3, scope: !5412, file: !3, line: 1078, type: !1389)
!5419 = !DILocalVariable(name: "ai", arg: 4, scope: !5412, file: !3, line: 1078, type: !1389)
!5420 = !DILocalVariable(name: "br", arg: 5, scope: !5412, file: !3, line: 1078, type: !1389)
!5421 = !DILocalVariable(name: "bi", arg: 6, scope: !5412, file: !3, line: 1078, type: !1389)
!5422 = !DILocalVariable(name: "code", arg: 7, scope: !5412, file: !3, line: 1079, type: !366)
!5423 = !DILocalVariable(name: "rr", scope: !5412, file: !3, line: 1081, type: !1389)
!5424 = !DILocalVariable(name: "ri", scope: !5412, file: !3, line: 1081, type: !1389)
!5425 = !DILocalVariable(name: "div", scope: !5412, file: !3, line: 1081, type: !1389)
!5426 = !DILocalVariable(name: "t1", scope: !5412, file: !3, line: 1081, type: !1389)
!5427 = !DILocalVariable(name: "t2", scope: !5412, file: !3, line: 1081, type: !1389)
!5428 = !DILocalVariable(name: "t3", scope: !5412, file: !3, line: 1081, type: !1389)
!5429 = !DILocation(line: 0, scope: !5412)
!5430 = !DILocation(line: 1083, column: 8, scope: !5412)
!5431 = !DILocation(line: 1084, column: 8, scope: !5412)
!5432 = !DILocation(line: 1085, column: 9, scope: !5412)
!5433 = !DILocation(line: 1087, column: 8, scope: !5412)
!5434 = !DILocation(line: 1088, column: 8, scope: !5412)
!5435 = !DILocation(line: 1089, column: 8, scope: !5412)
!5436 = !DILocation(line: 1090, column: 8, scope: !5412)
!5437 = !DILocation(line: 1092, column: 8, scope: !5412)
!5438 = !DILocation(line: 1093, column: 8, scope: !5412)
!5439 = !DILocation(line: 1094, column: 8, scope: !5412)
!5440 = !DILocation(line: 1095, column: 8, scope: !5412)
!5441 = !DILocation(line: 1097, column: 3, scope: !5412)
!5442 = !DILocation(line: 1098, column: 1, scope: !5412)
!5443 = distinct !DISubprogram(name: "expand_complex_div_wide", scope: !3, file: !3, line: 1106, type: !5413, scopeLine: 1109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5444)
!5444 = !{!5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5469, !5470, !5471}
!5445 = !DILocalVariable(name: "gsi", arg: 1, scope: !5443, file: !3, line: 1106, type: !3718)
!5446 = !DILocalVariable(name: "inner_type", arg: 2, scope: !5443, file: !3, line: 1106, type: !1389)
!5447 = !DILocalVariable(name: "ar", arg: 3, scope: !5443, file: !3, line: 1107, type: !1389)
!5448 = !DILocalVariable(name: "ai", arg: 4, scope: !5443, file: !3, line: 1107, type: !1389)
!5449 = !DILocalVariable(name: "br", arg: 5, scope: !5443, file: !3, line: 1107, type: !1389)
!5450 = !DILocalVariable(name: "bi", arg: 6, scope: !5443, file: !3, line: 1107, type: !1389)
!5451 = !DILocalVariable(name: "code", arg: 7, scope: !5443, file: !3, line: 1108, type: !366)
!5452 = !DILocalVariable(name: "rr", scope: !5443, file: !3, line: 1110, type: !1389)
!5453 = !DILocalVariable(name: "ri", scope: !5443, file: !3, line: 1110, type: !1389)
!5454 = !DILocalVariable(name: "ratio", scope: !5443, file: !3, line: 1110, type: !1389)
!5455 = !DILocalVariable(name: "div", scope: !5443, file: !3, line: 1110, type: !1389)
!5456 = !DILocalVariable(name: "t1", scope: !5443, file: !3, line: 1110, type: !1389)
!5457 = !DILocalVariable(name: "t2", scope: !5443, file: !3, line: 1110, type: !1389)
!5458 = !DILocalVariable(name: "tr", scope: !5443, file: !3, line: 1110, type: !1389)
!5459 = !DILocalVariable(name: "ti", scope: !5443, file: !3, line: 1110, type: !1389)
!5460 = !DILocalVariable(name: "compare", scope: !5443, file: !3, line: 1110, type: !1389)
!5461 = !DILocalVariable(name: "bb_cond", scope: !5443, file: !3, line: 1111, type: !2113)
!5462 = !DILocalVariable(name: "bb_true", scope: !5443, file: !3, line: 1111, type: !2113)
!5463 = !DILocalVariable(name: "bb_false", scope: !5443, file: !3, line: 1111, type: !2113)
!5464 = !DILocalVariable(name: "bb_join", scope: !5443, file: !3, line: 1111, type: !2113)
!5465 = !DILocalVariable(name: "stmt", scope: !5443, file: !3, line: 1112, type: !1713)
!5466 = !DILocalVariable(name: "e", scope: !5467, file: !3, line: 1125, type: !1693)
!5467 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 1124, column: 5)
!5468 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 1123, column: 7)
!5469 = !DILocalVariable(name: "stmt", scope: !5467, file: !3, line: 1126, type: !1713)
!5470 = !DILocalVariable(name: "cond", scope: !5467, file: !3, line: 1127, type: !1389)
!5471 = !DILocalVariable(name: "tmp", scope: !5467, file: !3, line: 1127, type: !1389)
!5472 = !DILocation(line: 0, scope: !5443)
!5473 = !DILocation(line: 1115, column: 8, scope: !5443)
!5474 = !DILocation(line: 1116, column: 8, scope: !5443)
!5475 = !DILocation(line: 1117, column: 13, scope: !5443)
!5476 = !DILocation(line: 1119, column: 3, scope: !5443)
!5477 = !DILocation(line: 1123, column: 7, scope: !5468)
!5478 = !DILocation(line: 1123, column: 27, scope: !5468)
!5479 = !DILocation(line: 1123, column: 7, scope: !5443)
!5480 = !DILocation(line: 1129, column: 29, scope: !5467)
!5481 = !DILocation(line: 1129, column: 13, scope: !5467)
!5482 = !DILocation(line: 0, scope: !5467)
!5483 = !DILocation(line: 1130, column: 14, scope: !5467)
!5484 = !DILocation(line: 1131, column: 28, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 1131, column: 11)
!5486 = !DILocation(line: 1131, column: 11, scope: !5485)
!5487 = !DILocation(line: 1131, column: 11, scope: !5467)
!5488 = !DILocation(line: 1133, column: 10, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 1132, column: 2)
!5490 = !DILocation(line: 1134, column: 4, scope: !5489)
!5491 = !DILocation(line: 1135, column: 2, scope: !5489)
!5492 = !DILocation(line: 1137, column: 7, scope: !5467)
!5493 = !DILocation(line: 1139, column: 14, scope: !5467)
!5494 = !DILocation(line: 1141, column: 14, scope: !5467)
!5495 = !DILocation(line: 1142, column: 7, scope: !5467)
!5496 = !DILocation(line: 1145, column: 24, scope: !5467)
!5497 = !DILocation(line: 1145, column: 39, scope: !5467)
!5498 = !DILocation(line: 1145, column: 11, scope: !5467)
!5499 = !DILocation(line: 1146, column: 20, scope: !5467)
!5500 = !DILocation(line: 1147, column: 20, scope: !5467)
!5501 = !DILocation(line: 1148, column: 17, scope: !5467)
!5502 = !DILocation(line: 1149, column: 18, scope: !5467)
!5503 = !DILocation(line: 1152, column: 10, scope: !5467)
!5504 = !DILocation(line: 1152, column: 16, scope: !5467)
!5505 = !DILocation(line: 1153, column: 7, scope: !5467)
!5506 = !DILocation(line: 1154, column: 7, scope: !5467)
!5507 = !DILocation(line: 1155, column: 7, scope: !5467)
!5508 = !DILocation(line: 1156, column: 7, scope: !5467)
!5509 = !DILocation(line: 1160, column: 11, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 1160, column: 11)
!5511 = !DILocation(line: 1160, column: 11, scope: !5467)
!5512 = !DILocation(line: 1162, column: 11, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 1161, column: 9)
!5514 = !DILocation(line: 1163, column: 11, scope: !5513)
!5515 = !DILocation(line: 1164, column: 9, scope: !5513)
!5516 = !DILocation(line: 1166, column: 12, scope: !5467)
!5517 = !DILocation(line: 1167, column: 12, scope: !5467)
!5518 = !DILocation(line: 1168, column: 5, scope: !5467)
!5519 = !DILocation(line: 1177, column: 15, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 1177, column: 7)
!5521 = !DILocation(line: 1177, column: 18, scope: !5520)
!5522 = !DILocation(line: 1177, column: 7, scope: !5443)
!5523 = !DILocation(line: 1179, column: 11, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5520, file: !3, line: 1178, column: 5)
!5525 = !DILocation(line: 1181, column: 11, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 1180, column: 2)
!5527 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 1179, column: 11)
!5528 = !DILocation(line: 1182, column: 27, scope: !5526)
!5529 = !DILocation(line: 1182, column: 4, scope: !5526)
!5530 = !DILocation(line: 1183, column: 2, scope: !5526)
!5531 = !DILocation(line: 1185, column: 15, scope: !5524)
!5532 = !DILocation(line: 1187, column: 12, scope: !5524)
!5533 = !DILocation(line: 1188, column: 13, scope: !5524)
!5534 = !DILocation(line: 1190, column: 12, scope: !5524)
!5535 = !DILocation(line: 1191, column: 12, scope: !5524)
!5536 = !DILocation(line: 1193, column: 12, scope: !5524)
!5537 = !DILocation(line: 1194, column: 12, scope: !5524)
!5538 = !DILocation(line: 1196, column: 12, scope: !5524)
!5539 = !DILocation(line: 1197, column: 12, scope: !5524)
!5540 = !DILocation(line: 1199, column: 10, scope: !5524)
!5541 = !DILocation(line: 1201, column: 10, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 1200, column: 8)
!5543 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 1199, column: 10)
!5544 = !DILocation(line: 1202, column: 3, scope: !5542)
!5545 = !DILocation(line: 1203, column: 10, scope: !5542)
!5546 = !DILocation(line: 1204, column: 3, scope: !5542)
!5547 = !DILocation(line: 1205, column: 3, scope: !5542)
!5548 = !DILocation(line: 1206, column: 8, scope: !5542)
!5549 = !DILocation(line: 1216, column: 16, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 1216, column: 7)
!5551 = !DILocation(line: 1216, column: 19, scope: !5550)
!5552 = !DILocation(line: 1216, column: 7, scope: !5443)
!5553 = !DILocation(line: 1218, column: 11, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 1217, column: 5)
!5555 = !DILocation(line: 1220, column: 11, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 1219, column: 2)
!5557 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 1218, column: 11)
!5558 = !DILocation(line: 1221, column: 27, scope: !5556)
!5559 = !DILocation(line: 1221, column: 4, scope: !5556)
!5560 = !DILocation(line: 1222, column: 2, scope: !5556)
!5561 = !DILocation(line: 1224, column: 15, scope: !5554)
!5562 = !DILocation(line: 1226, column: 12, scope: !5554)
!5563 = !DILocation(line: 1227, column: 13, scope: !5554)
!5564 = !DILocation(line: 1229, column: 12, scope: !5554)
!5565 = !DILocation(line: 1230, column: 12, scope: !5554)
!5566 = !DILocation(line: 1232, column: 12, scope: !5554)
!5567 = !DILocation(line: 1233, column: 12, scope: !5554)
!5568 = !DILocation(line: 1235, column: 12, scope: !5554)
!5569 = !DILocation(line: 1236, column: 12, scope: !5554)
!5570 = !DILocation(line: 1238, column: 10, scope: !5554)
!5571 = !DILocation(line: 1240, column: 10, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 1239, column: 8)
!5573 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 1238, column: 10)
!5574 = !DILocation(line: 1241, column: 3, scope: !5572)
!5575 = !DILocation(line: 1242, column: 10, scope: !5572)
!5576 = !DILocation(line: 1243, column: 3, scope: !5572)
!5577 = !DILocation(line: 1244, column: 3, scope: !5572)
!5578 = !DILocation(line: 1245, column: 8, scope: !5572)
!5579 = !DILocation(line: 1248, column: 7, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 1248, column: 7)
!5581 = !DILocation(line: 1248, column: 7, scope: !5443)
!5582 = !DILocation(line: 1249, column: 12, scope: !5580)
!5583 = !DILocation(line: 1249, column: 5, scope: !5580)
!5584 = !DILocation(line: 1253, column: 3, scope: !5443)
!5585 = !DILocation(line: 1254, column: 1, scope: !5443)
!5586 = distinct !DISubprogram(name: "gimple_location", scope: !561, file: !561, line: 1139, type: !5587, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5589)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!1514, !3915}
!5589 = !{!5590}
!5590 = !DILocalVariable(name: "g", arg: 1, scope: !5586, file: !561, line: 1139, type: !3915)
!5591 = !DILocation(line: 0, scope: !5586)
!5592 = !DILocation(line: 1141, column: 20, scope: !5586)
!5593 = !DILocation(line: 1141, column: 3, scope: !5586)
!5594 = distinct !DISubprogram(name: "gsi_last_bb", scope: !561, file: !561, line: 4450, type: !3688, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5595)
!5595 = !{!5596, !5597, !5598}
!5596 = !DILocalVariable(name: "bb", arg: 1, scope: !5594, file: !561, line: 4450, type: !2113)
!5597 = !DILocalVariable(name: "i", scope: !5594, file: !561, line: 4452, type: !3201)
!5598 = !DILocalVariable(name: "seq", scope: !5594, file: !561, line: 4453, type: !1703)
!5599 = !DILocation(line: 0, scope: !5594)
!5600 = !DILocation(line: 4452, column: 24, scope: !5594)
!5601 = !DILocation(line: 4455, column: 9, scope: !5594)
!5602 = !DILocation(line: 4456, column: 11, scope: !5594)
!5603 = !DILocation(line: 4456, column: 5, scope: !5594)
!5604 = !DILocation(line: 4456, column: 9, scope: !5594)
!5605 = !DILocation(line: 4457, column: 5, scope: !5594)
!5606 = !DILocation(line: 4457, column: 9, scope: !5594)
!5607 = !DILocation(line: 4458, column: 5, scope: !5594)
!5608 = !DILocation(line: 4458, column: 8, scope: !5594)
!5609 = !DILocation(line: 4461, column: 1, scope: !5594)
!5610 = distinct !DISubprogram(name: "gimple_seq_last", scope: !561, file: !561, line: 178, type: !4742, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5611)
!5611 = !{!5612}
!5612 = !DILocalVariable(name: "s", arg: 1, scope: !5610, file: !561, line: 178, type: !4744)
!5613 = !DILocation(line: 0, scope: !5610)
!5614 = !DILocation(line: 180, column: 10, scope: !5610)
!5615 = !DILocation(line: 180, column: 17, scope: !5610)
!5616 = !DILocation(line: 180, column: 3, scope: !5610)
!5617 = distinct !DISubprogram(name: "gimple_return_retval", scope: !561, file: !561, line: 4253, type: !3913, scopeLine: 4254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5618)
!5618 = !{!5619}
!5619 = !DILocalVariable(name: "gs", arg: 1, scope: !5617, file: !561, line: 4253, type: !3915)
!5620 = !DILocation(line: 0, scope: !5617)
!5621 = !DILocation(line: 4256, column: 10, scope: !5617)
!5622 = !DILocation(line: 4256, column: 3, scope: !5617)
!5623 = distinct !DISubprogram(name: "gimple_cond_set_code", scope: !561, file: !561, line: 2231, type: !5624, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5626)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{null, !1713, !366}
!5626 = !{!5627, !5628}
!5627 = !DILocalVariable(name: "gs", arg: 1, scope: !5623, file: !561, line: 2231, type: !1713)
!5628 = !DILocalVariable(name: "code", arg: 2, scope: !5623, file: !561, line: 2231, type: !366)
!5629 = !DILocation(line: 0, scope: !5623)
!5630 = !DILocation(line: 2234, column: 14, scope: !5623)
!5631 = !DILocation(line: 2234, column: 22, scope: !5623)
!5632 = !DILocation(line: 2235, column: 1, scope: !5623)
!5633 = distinct !DISubprogram(name: "gimple_cond_set_lhs", scope: !561, file: !561, line: 2261, type: !5278, scopeLine: 2262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5634)
!5634 = !{!5635, !5636}
!5635 = !DILocalVariable(name: "gs", arg: 1, scope: !5633, file: !561, line: 2261, type: !1713)
!5636 = !DILocalVariable(name: "lhs", arg: 2, scope: !5633, file: !561, line: 2261, type: !1389)
!5637 = !DILocation(line: 0, scope: !5633)
!5638 = !DILocation(line: 2264, column: 3, scope: !5633)
!5639 = !DILocation(line: 2265, column: 1, scope: !5633)
!5640 = distinct !DISubprogram(name: "gimple_cond_set_rhs", scope: !561, file: !561, line: 2292, type: !5278, scopeLine: 2293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5641)
!5641 = !{!5642, !5643}
!5642 = !DILocalVariable(name: "gs", arg: 1, scope: !5640, file: !561, line: 2292, type: !1713)
!5643 = !DILocalVariable(name: "rhs", arg: 2, scope: !5640, file: !561, line: 2292, type: !1389)
!5644 = !DILocation(line: 0, scope: !5640)
!5645 = !DILocation(line: 2295, column: 3, scope: !5640)
!5646 = !DILocation(line: 2296, column: 1, scope: !5640)
