; ModuleID = 'value-prof.bc'
source_filename = "value-prof.c"
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
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cgraph_node_set_def = type { %struct.htab*, %struct.VEC_cgraph_node_ptr_gc*, i8* }
%struct.VEC_cgraph_node_ptr_gc = type { %struct.VEC_cgraph_node_ptr_base }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x %struct.cgraph_node*] }
%struct.varpool_node = type { %union.tree_node*, %struct.varpool_node*, %struct.varpool_node*, %struct.varpool_node*, i32, i8 }
%struct.cgraph_local_info = type { %struct.lto_file_decl_data*, %struct.inline_summary, i8 }
%struct.lto_file_decl_data = type opaque
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, %struct.cgraph_node*, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { %struct.VEC_ipa_replace_map_p_gc*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.VEC_ipa_replace_map_p_gc = type { %struct.VEC_ipa_replace_map_p_base }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x %struct.ipa_replace_map*] }
%struct.ipa_replace_map = type { %union.tree_node*, %union.tree_node*, i8, i8 }
%struct.cgraph_thunk_info = type { i64, i64, %union.tree_node*, i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.histogram_value_t = type { %struct.anon, i32, i32, %union.anon.0 }
%struct.anon = type { %union.tree_node*, %union.gimple_statement_d*, i64*, %struct.histogram_value_t* }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32, i32 }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.pointer_set_t = type opaque
%struct.VEC_histogram_value_heap = type { %struct.VEC_histogram_value_base }
%struct.VEC_histogram_value_base = type { i32, i32, [1 x %struct.histogram_value_t*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@htab_hash_pointer = external dso_local local_unnamed_addr global i32 (i8*)*, align 8
@error_found = internal unnamed_addr global i1 false, align 1, !dbg !0
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str = private unnamed_addr constant [85 x i8] c"Histogram value statement does not correspond to the statement it is associated with\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"verify_histograms failed\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"value-prof.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Interval counter range %d -- %d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" %d:%ld\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c" ] outside range:%ld\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Pow2 counter \00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"pow2:%ld nonpow2:%ld\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Single value \00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"value:%ld match:%ld wrong:%ld\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Average value \00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"sum:%ld times:%ld\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"IOR value \00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"ior:%ld\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Constant delta \00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Indirect call \00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"value:%ld match:%ld all:%ld\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Dead histogram\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"Stmt \00", align 1
@flag_value_profile_transformations = external dso_local local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Trying transformations on stmt \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@flag_profile_correction = external dso_local local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [37 x i8] c"Mod subtract transformation on insn \00", align 1
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@.str.26 = private unnamed_addr constant [99 x i8] c"Correcting inconsistent value profile: %s profiler overall count (%d) does not match BB count (%d)\00", align 1
@.str.27 = private unnamed_addr constant [85 x i8] c"Corrupted value profile: %s profiler overall count (%d) does not match BB count (%d)\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"PROF\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Div/mod by constant \00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c" transformation on insn \00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"Mod power of 2 transformation on insn \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"pow2\00", align 1
@ix86_isa_flags = external dso_local local_unnamed_addr global i32, align 4
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.35 = private unnamed_addr constant [44 x i8] c"Single value %i stringop transformation on \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"ic\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Indirect call -> direct call \00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"=> \00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"hist->count %ld hist->all %ld\0A\00", align 1
@pid_map = internal unnamed_addr global %struct.cgraph_node** null, align 8, !dbg !3010
@cgraph_max_pid = external dso_local local_unnamed_addr global i32, align 4
@cgraph_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !3016 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !3029, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !3030, metadata !DIExpression()), !dbg !3031
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3032
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !3033
  ret i32 %call, !dbg !3034
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !3035 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !3039
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !3040
  ret i32 %call, !dbg !3041
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !3042 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !3096, metadata !DIExpression()), !dbg !3097
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !3098
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !3098
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !3098
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !3098
  %cmp = icmp uge i8* %0, %1, !dbg !3098
  %conv1 = zext i1 %cmp to i64, !dbg !3098
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !3098
  %tobool = icmp eq i64 %expval, 0, !dbg !3098
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3098

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !3098
  br label %cond.end, !dbg !3098

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3098
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !3098
  %2 = load i8, i8* %0, align 1, !dbg !3098
  %conv3 = zext i8 %2 to i32, !dbg !3098
  br label %cond.end, !dbg !3098

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !3098
  ret i32 %cond, !dbg !3099
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !3100 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !3102, metadata !DIExpression()), !dbg !3103
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !3104
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !3104
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !3104
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !3104
  %cmp = icmp uge i8* %0, %1, !dbg !3104
  %conv1 = zext i1 %cmp to i64, !dbg !3104
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !3104
  %tobool = icmp eq i64 %expval, 0, !dbg !3104
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3104

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !3104
  br label %cond.end, !dbg !3104

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3104
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !3104
  %2 = load i8, i8* %0, align 1, !dbg !3104
  %conv3 = zext i8 %2 to i32, !dbg !3104
  br label %cond.end, !dbg !3104

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !3104
  ret i32 %cond, !dbg !3105
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !3106 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !3107
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3107
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !3107
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3107
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !3107
  %cmp = icmp uge i8* %1, %2, !dbg !3107
  %conv1 = zext i1 %cmp to i64, !dbg !3107
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !3107
  %tobool = icmp eq i64 %expval, 0, !dbg !3107
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3107

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !3107
  br label %cond.end, !dbg !3107

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3107
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !3107
  %3 = load i8, i8* %1, align 1, !dbg !3107
  %conv3 = zext i8 %3 to i32, !dbg !3107
  br label %cond.end, !dbg !3107

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !3107
  ret i32 %cond, !dbg !3108
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !3109 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !3113, metadata !DIExpression()), !dbg !3114
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3115
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !3116
  ret i32 %call, !dbg !3117
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !3118 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !3122, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !3123, metadata !DIExpression()), !dbg !3124
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !3125
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !3125
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !3125
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !3125
  %cmp = icmp uge i8* %0, %1, !dbg !3125
  %conv1 = zext i1 %cmp to i64, !dbg !3125
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !3125
  %tobool = icmp eq i64 %expval, 0, !dbg !3125
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3125

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !3125
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !3125
  br label %cond.end, !dbg !3125

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !3125
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3125
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !3125
  store i8 %conv2, i8* %0, align 1, !dbg !3125
  %conv6 = and i32 %__c, 255, !dbg !3125
  br label %cond.end, !dbg !3125

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !3125
  ret i32 %cond, !dbg !3126
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !3127 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !3129, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !3130, metadata !DIExpression()), !dbg !3131
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !3132
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !3132
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !3132
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !3132
  %cmp = icmp uge i8* %0, %1, !dbg !3132
  %conv1 = zext i1 %cmp to i64, !dbg !3132
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !3132
  %tobool = icmp eq i64 %expval, 0, !dbg !3132
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3132

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !3132
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !3132
  br label %cond.end, !dbg !3132

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !3132
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3132
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !3132
  store i8 %conv2, i8* %0, align 1, !dbg !3132
  %conv6 = and i32 %__c, 255, !dbg !3132
  br label %cond.end, !dbg !3132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !3132
  ret i32 %cond, !dbg !3133
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !3134 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !3136, metadata !DIExpression()), !dbg !3137
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3138
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3138
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !3138
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !3138
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !3138
  %cmp = icmp uge i8* %1, %2, !dbg !3138
  %conv1 = zext i1 %cmp to i64, !dbg !3138
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !3138
  %tobool = icmp eq i64 %expval, 0, !dbg !3138
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3138

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !3138
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !3138
  br label %cond.end, !dbg !3138

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !3138
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3138
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !3138
  store i8 %conv4, i8* %1, align 1, !dbg !3138
  %conv6 = and i32 %__c, 255, !dbg !3138
  br label %cond.end, !dbg !3138

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !3138
  ret i32 %cond, !dbg !3139
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !3140 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !3146, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64* %__n, metadata !3147, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !3148, metadata !DIExpression()), !dbg !3149
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !3150
  ret i64 %call, !dbg !3151
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !3152 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !3154, metadata !DIExpression()), !dbg !3155
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !3156
  %0 = load i32, i32* %_flags, align 8, !dbg !3156
  %and = lshr i32 %0, 4, !dbg !3156
  %and.lobit = and i32 %and, 1, !dbg !3156
  ret i32 %and.lobit, !dbg !3157
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !3158 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !3160, metadata !DIExpression()), !dbg !3161
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !3162
  %0 = load i32, i32* %_flags, align 8, !dbg !3162
  %and = lshr i32 %0, 5, !dbg !3162
  %and.lobit = and i32 %and, 1, !dbg !3162
  ret i32 %and.lobit, !dbg !3163
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !3164 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !3167, metadata !DIExpression()), !dbg !3168
  %__c.off = add i32 %__c, 128, !dbg !3169
  %0 = icmp ult i32 %__c.off, 384, !dbg !3169
  br i1 %0, label %cond.true, label %cond.end, !dbg !3169

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !3170
  %1 = load i32*, i32** %call, align 8, !dbg !3171
  %idxprom = sext i32 %__c to i64, !dbg !3172
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !3172
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3172
  br label %cond.end, !dbg !3173

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !3173
  ret i32 %cond, !dbg !3174
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !3175 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !3177, metadata !DIExpression()), !dbg !3178
  %__c.off = add i32 %__c, 128, !dbg !3179
  %0 = icmp ult i32 %__c.off, 384, !dbg !3179
  br i1 %0, label %cond.true, label %cond.end, !dbg !3179

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !3180
  %1 = load i32*, i32** %call, align 8, !dbg !3181
  %idxprom = sext i32 %__c to i64, !dbg !3182
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !3182
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3182
  br label %cond.end, !dbg !3183

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !3183
  ret i32 %cond, !dbg !3184
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !3185 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !3190, metadata !DIExpression()), !dbg !3191
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !3192
  %conv = trunc i64 %call to i32, !dbg !3193
  ret i32 %conv, !dbg !3194
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !3195 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !3199, metadata !DIExpression()), !dbg !3200
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !3201
  ret i64 %call, !dbg !3202
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !3203 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !3208, metadata !DIExpression()), !dbg !3209
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !3210
  ret i64 %call, !dbg !3211
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !3212 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !3218, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i8* %__base, metadata !3219, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !3220, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %__size, metadata !3221, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !3222, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 0, metadata !3223, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !3224, metadata !DIExpression()), !dbg !3228
  br label %while.cond, !dbg !3229

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !3230
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !3228
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !3224, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !3223, metadata !DIExpression()), !dbg !3228
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !3231
  br i1 %cmp, label %while.body, label %cleanup, !dbg !3229

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !3232
  %div = lshr i64 %add, 1, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %div, metadata !3225, metadata !DIExpression()), !dbg !3228
  %mul = mul i64 %div, %__size, !dbg !3235
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3226, metadata !DIExpression()), !dbg !3228
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !3237
  call void @llvm.dbg.value(metadata i32 %call, metadata !3227, metadata !DIExpression()), !dbg !3228
  %cmp1 = icmp slt i32 %call, 0, !dbg !3238
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !3240

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !3241
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !3243

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !3244
  call void @llvm.dbg.value(metadata i64 %add4, metadata !3223, metadata !DIExpression()), !dbg !3228
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !3228
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !3228
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !3224, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !3223, metadata !DIExpression()), !dbg !3228
  br label %while.cond, !dbg !3229, !llvm.loop !3245

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !3228
  ret i8* %retval.0, !dbg !3247
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !3248 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !3254, metadata !DIExpression()), !dbg !3255
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !3256
  ret double %call, !dbg !3257
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !3258 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !3267, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !3268, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i32 %base, metadata !3269, metadata !DIExpression()), !dbg !3270
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !3271
  ret i64 %call, !dbg !3272
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !3273 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !3279, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i32 %base, metadata !3281, metadata !DIExpression()), !dbg !3282
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !3283
  ret i64 %call, !dbg !3284
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !3285 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !3296, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !3297, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 %base, metadata !3298, metadata !DIExpression()), !dbg !3299
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !3300
  ret i64 %call, !dbg !3301
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !3302 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !3306, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !3307, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 %base, metadata !3308, metadata !DIExpression()), !dbg !3309
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !3310
  ret i64 %call, !dbg !3311
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !3312 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3353, metadata !DIExpression()), !dbg !3354
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !3355
  ret i32 %call, !dbg !3356
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !3357 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3359, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3360, metadata !DIExpression()), !dbg !3361
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !3362
  ret i32 %call, !dbg !3363
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !3364 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3368, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3369, metadata !DIExpression()), !dbg !3370
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !3371
  ret i32 %call, !dbg !3372
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !3373 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3377, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !3378, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3379, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !3380, metadata !DIExpression()), !dbg !3381
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !3382
  ret i32 %call, !dbg !3383
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !3384 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3388, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !3389, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !3390, metadata !DIExpression()), !dbg !3391
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !3390, metadata !DIExpression(DW_OP_deref)), !dbg !3391
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !3392
  ret i32 %call, !dbg !3393
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !3394 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3398, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3399, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !3400, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !3401, metadata !DIExpression()), !dbg !3402
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !3401, metadata !DIExpression(DW_OP_deref)), !dbg !3402
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !3403
  ret i32 %call, !dbg !3404
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3405 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3429, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3430, metadata !DIExpression()), !dbg !3431
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !3432
  ret i32 %call, !dbg !3433
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3434 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3436, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3437, metadata !DIExpression()), !dbg !3438
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !3439
  ret i32 %call, !dbg !3440
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3441 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3445, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3446, metadata !DIExpression()), !dbg !3447
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !3448
  ret i32 %call, !dbg !3449
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !3450 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3454, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !3455, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3456, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !3457, metadata !DIExpression()), !dbg !3458
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !3459
  ret i32 %call, !dbg !3460
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.histogram_value_t* @gimple_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !3461 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3465, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3466, metadata !DIExpression()), !dbg !3467
  %value_histograms = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 5, !dbg !3468
  %0 = load %struct.htab*, %struct.htab** %value_histograms, align 8, !dbg !3468
  %tobool = icmp eq %struct.htab* %0, null, !dbg !3468
  br i1 %tobool, label %return, label %if.end, !dbg !3470

if.end:                                           ; preds = %entry
  %1 = bitcast %union.gimple_statement_d* %stmt to i8*, !dbg !3471
  %2 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !3472
  %call = tail call i32 %2(i8* %1) #6, !dbg !3472
  %call2 = tail call i8* @htab_find_with_hash(%struct.htab* nonnull %0, i8* %1, i32 %call) #6, !dbg !3473
  %3 = bitcast i8* %call2 to %struct.histogram_value_t*, !dbg !3474
  br label %return, !dbg !3475

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.histogram_value_t* [ %3, %if.end ], [ null, %entry ], !dbg !3467
  ret %struct.histogram_value_t* %retval.0, !dbg !3476
}

declare dso_local i8* @htab_find_with_hash(%struct.htab*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gimple_add_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt, %struct.histogram_value_t* %hist) local_unnamed_addr #5 !dbg !3477 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3481, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3482, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %hist, metadata !3483, metadata !DIExpression()), !dbg !3484
  %call = tail call %struct.histogram_value_t* @gimple_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt) #7, !dbg !3485
  %next = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 0, i32 3, !dbg !3486
  store %struct.histogram_value_t* %call, %struct.histogram_value_t** %next, align 8, !dbg !3487
  tail call fastcc void @set_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt, %struct.histogram_value_t* %hist) #7, !dbg !3488
  ret void, !dbg !3489
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt, %struct.histogram_value_t* %hist) unnamed_addr #5 !dbg !3490 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3492, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3493, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %hist, metadata !3494, metadata !DIExpression()), !dbg !3496
  %tobool = icmp eq %struct.histogram_value_t* %hist, null, !dbg !3497
  br i1 %tobool, label %land.lhs.true, label %entry.if.end_crit_edge, !dbg !3499

entry.if.end_crit_edge:                           ; preds = %entry
  %value_histograms2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 5, !dbg !3500
  %.pre = load %struct.htab*, %struct.htab** %value_histograms2.phi.trans.insert, align 8, !dbg !3502
  br label %if.end, !dbg !3499

land.lhs.true:                                    ; preds = %entry
  %value_histograms = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 5, !dbg !3503
  %0 = load %struct.htab*, %struct.htab** %value_histograms, align 8, !dbg !3503
  %tobool1 = icmp eq %struct.htab* %0, null, !dbg !3503
  br i1 %tobool1, label %cleanup.cont, label %if.end, !dbg !3504

if.end:                                           ; preds = %entry.if.end_crit_edge, %land.lhs.true
  %1 = phi %struct.htab* [ %.pre, %entry.if.end_crit_edge ], [ %0, %land.lhs.true ], !dbg !3502
  %value_histograms2 = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 5, !dbg !3502
  %tobool3 = icmp eq %struct.htab* %1, null, !dbg !3502
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !3505

if.then4:                                         ; preds = %if.end
  %call = tail call %struct.htab* @htab_create(i64 1, i32 (i8*)* nonnull @histogram_hash, i32 (i8*, i8*)* nonnull @histogram_eq, void (i8*)* null) #6, !dbg !3506
  store %struct.htab* %call, %struct.htab** %value_histograms2, align 8, !dbg !3507
  br label %if.end6, !dbg !3508

if.end6:                                          ; preds = %if.end, %if.then4
  %2 = phi %struct.htab* [ %1, %if.end ], [ %call, %if.then4 ], !dbg !3509
  %3 = bitcast %union.gimple_statement_d* %stmt to i8*, !dbg !3510
  %4 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !3511
  %call8 = tail call i32 %4(i8* %3) #6, !dbg !3511
  %tobool9 = icmp ne %struct.histogram_value_t* %hist, null, !dbg !3512
  %cond = zext i1 %tobool9 to i32, !dbg !3512
  %call10 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %2, i8* %3, i32 %call8, i32 %cond) #6, !dbg !3513
  call void @llvm.dbg.value(metadata i8** %call10, metadata !3495, metadata !DIExpression()), !dbg !3496
  br i1 %tobool, label %if.then12, label %if.end17, !dbg !3514

if.then12:                                        ; preds = %if.end6
  %tobool13 = icmp eq i8** %call10, null, !dbg !3515
  br i1 %tobool13, label %cleanup.cont, label %if.then14, !dbg !3519

if.then14:                                        ; preds = %if.then12
  %5 = load %struct.htab*, %struct.htab** %value_histograms2, align 8, !dbg !3520
  tail call void @htab_clear_slot(%struct.htab* %5, i8** nonnull %call10) #6, !dbg !3521
  br label %cleanup.cont, !dbg !3521

if.end17:                                         ; preds = %if.end6
  %6 = bitcast i8** %call10 to %struct.histogram_value_t**, !dbg !3522
  store %struct.histogram_value_t* %hist, %struct.histogram_value_t** %6, align 8, !dbg !3522
  br label %cleanup.cont, !dbg !3523

cleanup.cont:                                     ; preds = %if.then12, %land.lhs.true, %if.end17, %if.then14
  ret void, !dbg !3523
}

; Function Attrs: nounwind uwtable
define dso_local void @gimple_remove_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt, %struct.histogram_value_t* %hist) local_unnamed_addr #5 !dbg !3524 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3526, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3527, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %hist, metadata !3528, metadata !DIExpression()), !dbg !3530
  %call = tail call %struct.histogram_value_t* @gimple_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt) #7, !dbg !3531
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call, metadata !3529, metadata !DIExpression()), !dbg !3530
  %cmp = icmp eq %struct.histogram_value_t* %call, %hist, !dbg !3532
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !3534

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !3535

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 0, i32 3, !dbg !3537
  %0 = load %struct.histogram_value_t*, %struct.histogram_value_t** %next, align 8, !dbg !3537
  tail call fastcc void @set_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt, %struct.histogram_value_t* %0) #7, !dbg !3539
  br label %if.end, !dbg !3540

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %hist2.0 = phi %struct.histogram_value_t* [ %1, %while.body ], [ %call, %while.cond.preheader ], !dbg !3530
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %hist2.0, metadata !3529, metadata !DIExpression()), !dbg !3530
  %next2 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist2.0, i64 0, i32 0, i32 3, !dbg !3541
  %1 = load %struct.histogram_value_t*, %struct.histogram_value_t** %next2, align 8, !dbg !3541
  %cmp3 = icmp eq %struct.histogram_value_t* %1, %hist, !dbg !3542
  br i1 %cmp3, label %while.end, label %while.body, !dbg !3535

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %1, metadata !3529, metadata !DIExpression()), !dbg !3530
  br label %while.cond, !dbg !3535, !llvm.loop !3543

while.end:                                        ; preds = %while.cond
  %next2.lcssa = phi %struct.histogram_value_t** [ %next2, %while.cond ], !dbg !3541
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %hist2.0, metadata !3529, metadata !DIExpression()), !dbg !3530
  %next7 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 0, i32 3, !dbg !3545
  %2 = bitcast %struct.histogram_value_t** %next7 to i64*, !dbg !3545
  %3 = load i64, i64* %2, align 8, !dbg !3545
  %4 = bitcast %struct.histogram_value_t** %next2.lcssa to i64*, !dbg !3546
  store i64 %3, i64* %4, align 8, !dbg !3546
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 0, i32 2, !dbg !3547
  %5 = bitcast i64** %counters to i8**, !dbg !3547
  %6 = load i8*, i8** %5, align 8, !dbg !3547
  tail call void @free(i8* %6) #6, !dbg !3548
  %7 = bitcast %struct.histogram_value_t* %hist to i8*, !dbg !3549
  tail call void @free(i8* %7) #6, !dbg !3550
  ret void, !dbg !3551
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.histogram_value_t* @gimple_histogram_value_of_type(%struct.function* %fun, %union.gimple_statement_d* %stmt, i32 %type) local_unnamed_addr #5 !dbg !3552 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3556, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3557, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i32 %type, metadata !3558, metadata !DIExpression()), !dbg !3560
  %call = tail call %struct.histogram_value_t* @gimple_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt) #7, !dbg !3561
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call, metadata !3559, metadata !DIExpression()), !dbg !3560
  br label %for.cond, !dbg !3563

for.cond:                                         ; preds = %for.inc, %entry
  %hist.0 = phi %struct.histogram_value_t* [ %call, %entry ], [ %1, %for.inc ], !dbg !3564
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %hist.0, metadata !3559, metadata !DIExpression()), !dbg !3560
  %tobool = icmp eq %struct.histogram_value_t* %hist.0, null, !dbg !3565
  br i1 %tobool, label %cleanup, label %for.body, !dbg !3565

for.body:                                         ; preds = %for.cond
  %type1 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist.0, i64 0, i32 1, !dbg !3566
  %0 = load i32, i32* %type1, align 8, !dbg !3566
  %cmp = icmp eq i32 %0, %type, !dbg !3569
  br i1 %cmp, label %cleanup, label %for.inc, !dbg !3570

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist.0, i64 0, i32 0, i32 3, !dbg !3571
  %1 = load %struct.histogram_value_t*, %struct.histogram_value_t** %next, align 8, !dbg !3571
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %1, metadata !3559, metadata !DIExpression()), !dbg !3560
  br label %for.cond, !dbg !3572, !llvm.loop !3573

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi %struct.histogram_value_t* [ %hist.0, %for.body ], [ null, %for.cond ], !dbg !3560
  ret %struct.histogram_value_t* %retval.0, !dbg !3575
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_histograms_for_stmt(%struct.function* %fun, %struct._IO_FILE* %dump_file, %union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !3576 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3580, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %dump_file, metadata !3581, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3582, metadata !DIExpression()), !dbg !3584
  %call = tail call %struct.histogram_value_t* @gimple_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt) #7, !dbg !3585
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call, metadata !3583, metadata !DIExpression()), !dbg !3584
  br label %for.cond, !dbg !3587

for.cond:                                         ; preds = %for.body, %entry
  %hist.0 = phi %struct.histogram_value_t* [ %call, %entry ], [ %0, %for.body ], !dbg !3588
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %hist.0, metadata !3583, metadata !DIExpression()), !dbg !3584
  %tobool = icmp eq %struct.histogram_value_t* %hist.0, null, !dbg !3589
  br i1 %tobool, label %for.end, label %for.body, !dbg !3589

for.body:                                         ; preds = %for.cond
  tail call fastcc void @dump_histogram_value(%struct._IO_FILE* %dump_file, %struct.histogram_value_t* nonnull %hist.0) #7, !dbg !3590
  %next = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist.0, i64 0, i32 0, i32 3, !dbg !3592
  %0 = load %struct.histogram_value_t*, %struct.histogram_value_t** %next, align 8, !dbg !3592
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %0, metadata !3583, metadata !DIExpression()), !dbg !3584
  br label %for.cond, !dbg !3593, !llvm.loop !3594

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3596
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_histogram_value(%struct._IO_FILE* %dump_file, %struct.histogram_value_t* %hist) unnamed_addr #5 !dbg !3597 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %dump_file, metadata !3601, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %hist, metadata !3602, metadata !DIExpression()), !dbg !3607
  %type = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 1, !dbg !3608
  %0 = load i32, i32* %type, align 8, !dbg !3608
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
    i32 2, label %sw.bb38
    i32 5, label %sw.bb56
    i32 6, label %sw.bb71
    i32 3, label %sw.bb83
    i32 4, label %sw.bb101
  ], !dbg !3609

sw.bb:                                            ; preds = %entry
  %int_start = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 3, i32 0, i32 0, !dbg !3610
  %1 = load i32, i32* %int_start, align 8, !dbg !3610
  %steps = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 3, i32 0, i32 1, !dbg !3611
  %2 = load i32, i32* %steps, align 4, !dbg !3611
  %add = add i32 %1, %2, !dbg !3612
  %sub = add i32 %add, -1, !dbg !3613
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %1, i32 %sub) #6, !dbg !3614
  %counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 0, i32 2, !dbg !3615
  %3 = load i64*, i64** %counters, align 8, !dbg !3615
  %tobool = icmp eq i64* %3, null, !dbg !3616
  br i1 %tobool, label %if.end, label %if.then, !dbg !3617

if.then:                                          ; preds = %sw.bb
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3618
  call void @llvm.dbg.value(metadata i32 0, metadata !3603, metadata !DIExpression()), !dbg !3619
  br label %for.cond, !dbg !3620

for.cond:                                         ; preds = %for.body, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ], !dbg !3622
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3603, metadata !DIExpression()), !dbg !3619
  %4 = load i32, i32* %steps, align 4, !dbg !3623
  %5 = zext i32 %4 to i64, !dbg !3625
  %cmp = icmp ult i64 %indvars.iv, %5, !dbg !3625
  br i1 %cmp, label %for.body, label %for.end, !dbg !3626

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %int_start, align 8, !dbg !3627
  %7 = trunc i64 %indvars.iv to i32, !dbg !3628
  %add13 = add i32 %6, %7, !dbg !3628
  %8 = load i64*, i64** %counters, align 8, !dbg !3629
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %indvars.iv, !dbg !3630
  %9 = load i64, i64* %arrayidx, align 8, !dbg !3630
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %add13, i64 %9) #6, !dbg !3631
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3632
  br label %for.cond, !dbg !3633, !llvm.loop !3634

for.end:                                          ; preds = %for.cond
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond ], !dbg !3622
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !3603, metadata !DIExpression()), !dbg !3619
  %10 = load i64*, i64** %counters, align 8, !dbg !3636
  %idxprom19 = and i64 %indvars.iv.lcssa, 4294967295, !dbg !3637
  %arrayidx20 = getelementptr inbounds i64, i64* %10, i64 %idxprom19, !dbg !3637
  %11 = load i64, i64* %arrayidx20, align 8, !dbg !3637
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 %11) #6, !dbg !3638
  br label %if.end, !dbg !3639

if.end:                                           ; preds = %sw.bb, %for.end
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3640
  br label %sw.epilog, !dbg !3641

sw.bb23:                                          ; preds = %entry
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3642
  %counters26 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 0, i32 2, !dbg !3643
  %12 = load i64*, i64** %counters26, align 8, !dbg !3643
  %tobool27 = icmp eq i64* %12, null, !dbg !3645
  br i1 %tobool27, label %if.end36, label %if.then28, !dbg !3646

if.then28:                                        ; preds = %sw.bb23
  %13 = load i64, i64* %12, align 8, !dbg !3647
  %arrayidx34 = getelementptr inbounds i64, i64* %12, i64 1, !dbg !3649
  %14 = load i64, i64* %arrayidx34, align 8, !dbg !3649
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i64 %13, i64 %14) #6, !dbg !3650
  br label %if.end36, !dbg !3651

if.end36:                                         ; preds = %sw.bb23, %if.then28
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3652
  br label %sw.epilog, !dbg !3653

sw.bb38:                                          ; preds = %entry
  %call39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3654
  %counters41 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 0, i32 2, !dbg !3655
  %15 = load i64*, i64** %counters41, align 8, !dbg !3655
  %tobool42 = icmp eq i64* %15, null, !dbg !3657
  br i1 %tobool42, label %if.end54, label %if.then43, !dbg !3658

if.then43:                                        ; preds = %sw.bb38
  %16 = load i64, i64* %15, align 8, !dbg !3659
  %arrayidx49 = getelementptr inbounds i64, i64* %15, i64 1, !dbg !3661
  %17 = load i64, i64* %arrayidx49, align 8, !dbg !3661
  %arrayidx52 = getelementptr inbounds i64, i64* %15, i64 2, !dbg !3662
  %18 = load i64, i64* %arrayidx52, align 8, !dbg !3662
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i64 %16, i64 %17, i64 %18) #6, !dbg !3663
  br label %if.end54, !dbg !3664

if.end54:                                         ; preds = %sw.bb38, %if.then43
  %call55 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3665
  br label %sw.epilog, !dbg !3666

sw.bb56:                                          ; preds = %entry
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !3667
  %counters59 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 0, i32 2, !dbg !3668
  %19 = load i64*, i64** %counters59, align 8, !dbg !3668
  %tobool60 = icmp eq i64* %19, null, !dbg !3670
  br i1 %tobool60, label %if.end69, label %if.then61, !dbg !3671

if.then61:                                        ; preds = %sw.bb56
  %20 = load i64, i64* %19, align 8, !dbg !3672
  %arrayidx67 = getelementptr inbounds i64, i64* %19, i64 1, !dbg !3674
  %21 = load i64, i64* %arrayidx67, align 8, !dbg !3674
  %call68 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i64 %20, i64 %21) #6, !dbg !3675
  br label %if.end69, !dbg !3676

if.end69:                                         ; preds = %sw.bb56, %if.then61
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3677
  br label %sw.epilog, !dbg !3678

sw.bb71:                                          ; preds = %entry
  %call72 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !3679
  %counters74 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 0, i32 2, !dbg !3680
  %22 = load i64*, i64** %counters74, align 8, !dbg !3680
  %tobool75 = icmp eq i64* %22, null, !dbg !3682
  br i1 %tobool75, label %if.end81, label %if.then76, !dbg !3683

if.then76:                                        ; preds = %sw.bb71
  %23 = load i64, i64* %22, align 8, !dbg !3684
  %call80 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i64 %23) #6, !dbg !3686
  br label %if.end81, !dbg !3687

if.end81:                                         ; preds = %sw.bb71, %if.then76
  %call82 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3688
  br label %sw.epilog, !dbg !3689

sw.bb83:                                          ; preds = %entry
  %call84 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3690
  %counters86 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 0, i32 2, !dbg !3691
  %24 = load i64*, i64** %counters86, align 8, !dbg !3691
  %tobool87 = icmp eq i64* %24, null, !dbg !3693
  br i1 %tobool87, label %if.end99, label %if.then88, !dbg !3694

if.then88:                                        ; preds = %sw.bb83
  %25 = load i64, i64* %24, align 8, !dbg !3695
  %arrayidx94 = getelementptr inbounds i64, i64* %24, i64 1, !dbg !3697
  %26 = load i64, i64* %arrayidx94, align 8, !dbg !3697
  %arrayidx97 = getelementptr inbounds i64, i64* %24, i64 2, !dbg !3698
  %27 = load i64, i64* %arrayidx97, align 8, !dbg !3698
  %call98 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i64 %25, i64 %26, i64 %27) #6, !dbg !3699
  br label %if.end99, !dbg !3700

if.end99:                                         ; preds = %sw.bb83, %if.then88
  %call100 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3701
  br label %sw.epilog, !dbg !3702

sw.bb101:                                         ; preds = %entry
  %call102 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !3703
  %counters104 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist, i64 0, i32 0, i32 2, !dbg !3704
  %28 = load i64*, i64** %counters104, align 8, !dbg !3704
  %tobool105 = icmp eq i64* %28, null, !dbg !3706
  br i1 %tobool105, label %if.end117, label %if.then106, !dbg !3707

if.then106:                                       ; preds = %sw.bb101
  %29 = load i64, i64* %28, align 8, !dbg !3708
  %arrayidx112 = getelementptr inbounds i64, i64* %28, i64 1, !dbg !3710
  %30 = load i64, i64* %arrayidx112, align 8, !dbg !3710
  %arrayidx115 = getelementptr inbounds i64, i64* %28, i64 2, !dbg !3711
  %31 = load i64, i64* %arrayidx115, align 8, !dbg !3711
  %call116 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i64 %29, i64 %30, i64 %31) #6, !dbg !3712
  br label %if.end117, !dbg !3713

if.end117:                                        ; preds = %sw.bb101, %if.then106
  %call118 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump_file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3714
  br label %sw.epilog, !dbg !3715

sw.epilog:                                        ; preds = %entry, %if.end117, %if.end99, %if.end81, %if.end69, %if.end54, %if.end36, %if.end
  ret void, !dbg !3716
}

; Function Attrs: nounwind uwtable
define dso_local void @gimple_remove_stmt_histograms(%struct.function* %fun, %union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !3717 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3721, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3722, metadata !DIExpression()), !dbg !3724
  br label %while.cond, !dbg !3725

while.cond:                                       ; preds = %while.body, %entry
  %call = tail call %struct.histogram_value_t* @gimple_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt) #7, !dbg !3726
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call, metadata !3723, metadata !DIExpression()), !dbg !3724
  %cmp = icmp eq %struct.histogram_value_t* %call, null, !dbg !3727
  br i1 %cmp, label %while.end, label %while.body, !dbg !3725

while.body:                                       ; preds = %while.cond
  tail call void @gimple_remove_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt, %struct.histogram_value_t* nonnull %call) #7, !dbg !3728
  br label %while.cond, !dbg !3725, !llvm.loop !3729

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3731
}

; Function Attrs: nounwind uwtable
define dso_local void @gimple_duplicate_stmt_histograms(%struct.function* %fun, %union.gimple_statement_d* %stmt, %struct.function* %ofun, %union.gimple_statement_d* %ostmt) local_unnamed_addr #5 !dbg !3732 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3736, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3737, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata %struct.function* %ofun, metadata !3738, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %ostmt, metadata !3739, metadata !DIExpression()), !dbg !3745
  %call = tail call %struct.histogram_value_t* @gimple_histogram_value(%struct.function* %ofun, %union.gimple_statement_d* %ostmt) #7, !dbg !3746
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call, metadata !3740, metadata !DIExpression()), !dbg !3745
  br label %for.cond, !dbg !3747

for.cond:                                         ; preds = %for.body, %entry
  %val.0 = phi %struct.histogram_value_t* [ %call, %entry ], [ %8, %for.body ], !dbg !3748
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %val.0, metadata !3740, metadata !DIExpression()), !dbg !3745
  %cmp = icmp eq %struct.histogram_value_t* %val.0, null, !dbg !3749
  br i1 %cmp, label %for.end, label %for.body, !dbg !3750

for.body:                                         ; preds = %for.cond
  %type = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %val.0, i64 0, i32 1, !dbg !3751
  %0 = load i32, i32* %type, align 8, !dbg !3751
  %call1 = tail call fastcc %struct.histogram_value_t* @gimple_alloc_histogram_value(%struct.function* %fun, i32 %0, %union.gimple_statement_d* null, %union.tree_node* null) #7, !dbg !3752
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call1, metadata !3741, metadata !DIExpression()), !dbg !3753
  %1 = bitcast %struct.histogram_value_t* %call1 to i8*, !dbg !3754
  %2 = bitcast %struct.histogram_value_t* %val.0 to i8*, !dbg !3755
  %call2 = tail call i8* @memcpy(i8* %1, i8* nonnull %2, i64 48) #6, !dbg !3756
  %stmt3 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call1, i64 0, i32 0, i32 1, !dbg !3757
  store %union.gimple_statement_d* %stmt, %union.gimple_statement_d** %stmt3, align 8, !dbg !3758
  %n_counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call1, i64 0, i32 2, !dbg !3759
  %3 = load i32, i32* %n_counters, align 4, !dbg !3759
  %conv = zext i32 %3 to i64, !dbg !3759
  %mul = shl nuw nsw i64 %conv, 3, !dbg !3759
  %call4 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3759
  %counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call1, i64 0, i32 0, i32 2, !dbg !3760
  %4 = bitcast i64** %counters to i8**, !dbg !3761
  store i8* %call4, i8** %4, align 8, !dbg !3761
  %counters9 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %val.0, i64 0, i32 0, i32 2, !dbg !3762
  %5 = bitcast i64** %counters9 to i8**, !dbg !3762
  %6 = load i8*, i8** %5, align 8, !dbg !3762
  %7 = load i32, i32* %n_counters, align 4, !dbg !3763
  %conv11 = zext i32 %7 to i64, !dbg !3764
  %mul12 = shl nuw nsw i64 %conv11, 3, !dbg !3765
  %call13 = tail call i8* @memcpy(i8* %call4, i8* %6, i64 %mul12) #6, !dbg !3766
  tail call void @gimple_add_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt, %struct.histogram_value_t* %call1) #7, !dbg !3767
  %next = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %val.0, i64 0, i32 0, i32 3, !dbg !3768
  %8 = load %struct.histogram_value_t*, %struct.histogram_value_t** %next, align 8, !dbg !3768
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %8, metadata !3740, metadata !DIExpression()), !dbg !3745
  br label %for.cond, !dbg !3769, !llvm.loop !3770

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3772
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.histogram_value_t* @gimple_alloc_histogram_value(%struct.function* %fun, i32 %type, %union.gimple_statement_d* %stmt, %union.tree_node* %value) unnamed_addr #5 !dbg !3773 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3777, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i32 %type, metadata !3778, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3779, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata %union.tree_node* %value, metadata !3780, metadata !DIExpression()), !dbg !3782
  %call = tail call i8* @xcalloc(i64 1, i64 48) #6, !dbg !3783
  %0 = bitcast i8* %call to %struct.histogram_value_t*, !dbg !3784
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %0, metadata !3781, metadata !DIExpression()), !dbg !3782
  %value1 = bitcast i8* %call to %union.tree_node**, !dbg !3785
  store %union.tree_node* %value, %union.tree_node** %value1, align 8, !dbg !3786
  %stmt3 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3787
  %1 = bitcast i8* %stmt3 to %union.gimple_statement_d**, !dbg !3787
  store %union.gimple_statement_d* %stmt, %union.gimple_statement_d** %1, align 8, !dbg !3788
  %type4 = getelementptr inbounds i8, i8* %call, i64 32, !dbg !3789
  %2 = bitcast i8* %type4 to i32*, !dbg !3789
  store i32 %type, i32* %2, align 8, !dbg !3790
  ret %struct.histogram_value_t* %0, !dbg !3791
}

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gimple_move_stmt_histograms(%struct.function* %fun, %union.gimple_statement_d* %stmt, %union.gimple_statement_d* %ostmt) local_unnamed_addr #5 !dbg !3792 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3796, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3797, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %ostmt, metadata !3798, metadata !DIExpression()), !dbg !3800
  %call = tail call %struct.histogram_value_t* @gimple_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %ostmt) #7, !dbg !3801
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call, metadata !3799, metadata !DIExpression()), !dbg !3800
  %tobool = icmp eq %struct.histogram_value_t* %call, null, !dbg !3802
  br i1 %tobool, label %if.end, label %if.then, !dbg !3804

if.then:                                          ; preds = %entry
  tail call fastcc void @set_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %ostmt, %struct.histogram_value_t* null) #7, !dbg !3805
  br label %for.cond, !dbg !3807

for.cond:                                         ; preds = %for.body, %if.then
  %val.0 = phi %struct.histogram_value_t* [ %call, %if.then ], [ %0, %for.body ], !dbg !3800
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %val.0, metadata !3799, metadata !DIExpression()), !dbg !3800
  %cmp = icmp eq %struct.histogram_value_t* %val.0, null, !dbg !3808
  br i1 %cmp, label %for.end, label %for.body, !dbg !3811

for.body:                                         ; preds = %for.cond
  %stmt1 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %val.0, i64 0, i32 0, i32 1, !dbg !3812
  store %union.gimple_statement_d* %stmt, %union.gimple_statement_d** %stmt1, align 8, !dbg !3813
  %next = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %val.0, i64 0, i32 0, i32 3, !dbg !3814
  %0 = load %struct.histogram_value_t*, %struct.histogram_value_t** %next, align 8, !dbg !3814
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %0, metadata !3799, metadata !DIExpression()), !dbg !3800
  br label %for.cond, !dbg !3815, !llvm.loop !3816

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %val.0, metadata !3799, metadata !DIExpression()), !dbg !3800
  tail call fastcc void @set_histogram_value(%struct.function* %fun, %union.gimple_statement_d* %stmt, %struct.histogram_value_t* null) #7, !dbg !3818
  br label %if.end, !dbg !3819

if.end:                                           ; preds = %entry, %for.end
  ret void, !dbg !3820
}

; Function Attrs: nounwind uwtable
define dso_local void @verify_histograms() local_unnamed_addr #5 !dbg !3821 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3839
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3839
  store i1 false, i1* @error_found, align 1, !dbg !3840
  %call = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !3841
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %call, metadata !3832, metadata !DIExpression()), !dbg !3842
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3843
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3843
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3843
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !3843
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3843
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3844
  br label %for.cond, !dbg !3843

for.cond:                                         ; preds = %for.inc18, %entry
  %5 = phi %struct.control_flow_graph* [ %2, %entry ], [ %.pre1, %for.inc18 ], !dbg !3845
  %6 = phi %struct.function* [ %1, %entry ], [ %.pre, %for.inc18 ], !dbg !3845
  %.pn = phi %struct.basic_block_def* [ %3, %entry ], [ %bb.0, %for.inc18 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3846
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3846
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3823, metadata !DIExpression()), !dbg !3842
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !3845
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3845
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %7, !dbg !3845
  br i1 %cmp, label %for.end20, label %for.body, !dbg !3843

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3847
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !3847
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !3847
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3847
  br label %for.cond3, !dbg !3848

for.cond3:                                        ; preds = %for.inc16, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3824, metadata !DIExpression(DW_OP_deref)), !dbg !3842
  %call4 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3849
  %tobool = icmp eq i8 %call4, 0, !dbg !3850
  br i1 %tobool, label %for.body5, label %for.inc18, !dbg !3851

for.body5:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3824, metadata !DIExpression(DW_OP_deref)), !dbg !3842
  %call6 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3852
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call6, metadata !3833, metadata !DIExpression()), !dbg !3853
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3854
  %call8 = call %struct.histogram_value_t* @gimple_histogram_value(%struct.function* %8, %union.gimple_statement_d* %call6) #7, !dbg !3856
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call8, metadata !3831, metadata !DIExpression()), !dbg !3842
  br label %for.cond9, !dbg !3857

for.cond9:                                        ; preds = %if.end, %for.body5
  %hist.0 = phi %struct.histogram_value_t* [ %call8, %for.body5 ], [ %12, %if.end ], !dbg !3858
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %hist.0, metadata !3831, metadata !DIExpression()), !dbg !3842
  %tobool10 = icmp eq %struct.histogram_value_t* %hist.0, null, !dbg !3859
  br i1 %tobool10, label %for.inc16, label %for.body11, !dbg !3859

for.body11:                                       ; preds = %for.cond9
  %stmt12 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist.0, i64 0, i32 0, i32 1, !dbg !3860
  %9 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt12, align 8, !dbg !3860
  %cmp13 = icmp eq %union.gimple_statement_d* %9, %call6, !dbg !3864
  br i1 %cmp13, label %if.end, label %if.then, !dbg !3865

if.then:                                          ; preds = %for.body11
  call void (i8*, ...) @error(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0)) #6, !dbg !3866
  call void @debug_gimple_stmt(%union.gimple_statement_d* %call6) #6, !dbg !3868
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3869
  call fastcc void @dump_histogram_value(%struct._IO_FILE* %10, %struct.histogram_value_t* nonnull %hist.0) #7, !dbg !3870
  store i1 true, i1* @error_found, align 1, !dbg !3871
  br label %if.end, !dbg !3872

if.end:                                           ; preds = %for.body11, %if.then
  %11 = bitcast %struct.histogram_value_t* %hist.0 to i8*, !dbg !3873
  %call14 = call i32 @pointer_set_insert(%struct.pointer_set_t* %call, i8* nonnull %11) #6, !dbg !3874
  %next = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %hist.0, i64 0, i32 0, i32 3, !dbg !3875
  %12 = load %struct.histogram_value_t*, %struct.histogram_value_t** %next, align 8, !dbg !3875
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %12, metadata !3831, metadata !DIExpression()), !dbg !3842
  br label %for.cond9, !dbg !3876, !llvm.loop !3877

for.inc16:                                        ; preds = %for.cond9
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3824, metadata !DIExpression(DW_OP_deref)), !dbg !3842
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3879
  br label %for.cond3, !dbg !3880, !llvm.loop !3881

for.inc18:                                        ; preds = %for.cond3
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3845
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3883
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3845
  br label %for.cond, !dbg !3845, !llvm.loop !3884

for.end20:                                        ; preds = %for.cond
  %.lcssa = phi %struct.function* [ %6, %for.cond ], !dbg !3845
  %value_histograms = getelementptr inbounds %struct.function, %struct.function* %.lcssa, i64 0, i32 5, !dbg !3886
  %13 = load %struct.htab*, %struct.htab** %value_histograms, align 8, !dbg !3886
  %tobool22 = icmp eq %struct.htab* %13, null, !dbg !3886
  br i1 %tobool22, label %if.end26, label %if.then23, !dbg !3888

if.then23:                                        ; preds = %for.end20
  %14 = bitcast %struct.pointer_set_t* %call to i8*, !dbg !3889
  call void @htab_traverse(%struct.htab* nonnull %13, i32 (i8**, i8*)* nonnull @visit_hist, i8* %14) #6, !dbg !3890
  br label %if.end26, !dbg !3890

if.end26:                                         ; preds = %for.end20, %if.then23
  call void @pointer_set_destroy(%struct.pointer_set_t* %call) #6, !dbg !3891
  %.b = load i1, i1* @error_found, align 1, !dbg !3892
  br i1 %.b, label %if.then28, label %if.end29, !dbg !3894

if.then28:                                        ; preds = %if.end26
  call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3895
  br label %if.end29, !dbg !3895

if.end29:                                         ; preds = %if.end26, %if.then28
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3896
  ret void, !dbg !3896
}

declare dso_local %struct.pointer_set_t* @pointer_set_create() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3897 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3901, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3902, metadata !DIExpression()), !dbg !3905
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3906
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3903, metadata !DIExpression()), !dbg !3904
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !3907
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3908
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3909
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3910
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3911
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3912
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3913
  ret void, !dbg !3914
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3915 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3919, metadata !DIExpression()), !dbg !3920
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3921
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3921
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3922
  %conv1 = zext i1 %cmp to i8, !dbg !3923
  ret i8 %conv1, !dbg !3924
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3925 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3929, metadata !DIExpression()), !dbg !3930
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3931
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3931
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3932
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3932
  ret %union.gimple_statement_d* %1, !dbg !3933
}

declare dso_local void @error(i8*, ...) local_unnamed_addr #2

declare dso_local void @debug_gimple_stmt(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local i32 @pointer_set_insert(%struct.pointer_set_t*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3934 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3939, metadata !DIExpression()), !dbg !3940
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3941
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3941
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3942
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3942
  %2 = load i64, i64* %1, align 8, !dbg !3942
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3943
  store i64 %2, i64* %3, align 8, !dbg !3943
  ret void, !dbg !3944
}

declare dso_local void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @visit_hist(i8** %slot, i8* %data) #5 !dbg !3945 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !3949, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %data, metadata !3950, metadata !DIExpression()), !dbg !3953
  %0 = bitcast i8* %data to %struct.pointer_set_t*, !dbg !3954
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %0, metadata !3951, metadata !DIExpression()), !dbg !3953
  %1 = bitcast i8** %slot to %struct.histogram_value_t**, !dbg !3955
  %2 = load %struct.histogram_value_t*, %struct.histogram_value_t** %1, align 8, !dbg !3955
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %2, metadata !3952, metadata !DIExpression()), !dbg !3953
  %3 = bitcast %struct.histogram_value_t* %2 to i8*, !dbg !3956
  %call = tail call i32 @pointer_set_contains(%struct.pointer_set_t* %0, i8* %3) #6, !dbg !3958
  %tobool = icmp eq i32 %call, 0, !dbg !3958
  br i1 %tobool, label %if.then, label %if.end, !dbg !3959

if.then:                                          ; preds = %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !3960
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3962
  tail call fastcc void @dump_histogram_value(%struct._IO_FILE* %4, %struct.histogram_value_t* %2) #7, !dbg !3963
  %stmt = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %2, i64 0, i32 0, i32 1, !dbg !3964
  %5 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3964
  tail call void @debug_gimple_stmt(%union.gimple_statement_d* %5) #6, !dbg !3965
  store i1 true, i1* @error_found, align 1, !dbg !3966
  br label %if.end, !dbg !3967

if.end:                                           ; preds = %entry, %if.then
  ret i32 1, !dbg !3968
}

declare dso_local void @pointer_set_destroy(%struct.pointer_set_t*) local_unnamed_addr #2

declare dso_local void @internal_error(i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @free_histograms() local_unnamed_addr #5 !dbg !3969 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3970
  %value_histograms = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 5, !dbg !3970
  %1 = load %struct.htab*, %struct.htab** %value_histograms, align 8, !dbg !3970
  %tobool = icmp eq %struct.htab* %1, null, !dbg !3970
  br i1 %tobool, label %if.end, label %if.then, !dbg !3972

if.then:                                          ; preds = %entry
  tail call void @htab_traverse(%struct.htab* nonnull %1, i32 (i8**, i8*)* nonnull @free_hist, i8* null) #6, !dbg !3973
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3975
  %value_histograms4 = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 5, !dbg !3975
  %3 = load %struct.htab*, %struct.htab** %value_histograms4, align 8, !dbg !3975
  tail call void @htab_delete(%struct.htab* %3) #6, !dbg !3976
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3977
  %value_histograms6 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 5, !dbg !3977
  store %struct.htab* null, %struct.htab** %value_histograms6, align 8, !dbg !3978
  br label %if.end, !dbg !3979

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3980
}

; Function Attrs: nounwind uwtable
define internal i32 @free_hist(i8** %slot, i8* %data) #5 !dbg !3981 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !3983, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i8* %data, metadata !3984, metadata !DIExpression()), !dbg !3986
  %0 = bitcast i8** %slot to %struct.histogram_value_t**, !dbg !3987
  %1 = load %struct.histogram_value_t*, %struct.histogram_value_t** %0, align 8, !dbg !3987
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %1, metadata !3985, metadata !DIExpression()), !dbg !3986
  %counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %1, i64 0, i32 0, i32 2, !dbg !3988
  %2 = bitcast i64** %counters to i8**, !dbg !3988
  %3 = load i8*, i8** %2, align 8, !dbg !3988
  tail call void @free(i8* %3) #6, !dbg !3989
  %4 = bitcast %struct.histogram_value_t* %1 to i8*, !dbg !3990
  tail call void @free(i8* %4) #6, !dbg !3991
  ret i32 1, !dbg !3992
}

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @stringop_block_profile(%union.gimple_statement_d* %stmt, i32* %expected_align, i64* %expected_size) local_unnamed_addr #5 !dbg !3993 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3999, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i32* %expected_align, metadata !4000, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i64* %expected_size, metadata !4001, metadata !DIExpression()), !dbg !4012
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4013
  %call = tail call %struct.histogram_value_t* @gimple_histogram_value_of_type(%struct.function* %0, %union.gimple_statement_d* %stmt, i32 5) #7, !dbg !4014
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call, metadata !4002, metadata !DIExpression()), !dbg !4012
  %tobool = icmp eq %struct.histogram_value_t* %call, null, !dbg !4015
  br i1 %tobool, label %if.then, label %if.else, !dbg !4016

if.then:                                          ; preds = %entry
  store i64 -1, i64* %expected_size, align 8, !dbg !4017
  br label %if.end18, !dbg !4018

if.else:                                          ; preds = %entry
  %counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call, i64 0, i32 0, i32 2, !dbg !4019
  %1 = load i64*, i64** %counters, align 8, !dbg !4019
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 1, !dbg !4020
  %2 = load i64, i64* %arrayidx, align 8, !dbg !4020
  %tobool1 = icmp eq i64 %2, 0, !dbg !4020
  br i1 %tobool1, label %if.then2, label %if.else4, !dbg !4021

if.then2:                                         ; preds = %if.else
  store i64 -1, i64* %expected_size, align 8, !dbg !4022
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4024
  tail call void @gimple_remove_histogram_value(%struct.function* %3, %union.gimple_statement_d* %stmt, %struct.histogram_value_t* nonnull %call) #7, !dbg !4025
  br label %if.end18, !dbg !4026

if.else4:                                         ; preds = %if.else
  %4 = load i64, i64* %1, align 8, !dbg !4027
  %div = sdiv i64 %2, 2, !dbg !4028
  %add = add nsw i64 %4, %div, !dbg !4029
  %div14 = sdiv i64 %add, %2, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %div14, metadata !4003, metadata !DIExpression()), !dbg !4031
  %5 = icmp slt i64 %div14, 2147483647, !dbg !4032
  %spec.select = select i1 %5, i64 %div14, i64 2147483647, !dbg !4032
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !4003, metadata !DIExpression()), !dbg !4031
  store i64 %spec.select, i64* %expected_size, align 8, !dbg !4033
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4034
  tail call void @gimple_remove_histogram_value(%struct.function* %6, %union.gimple_statement_d* %stmt, %struct.histogram_value_t* nonnull %call) #7, !dbg !4035
  br label %if.end18

if.end18:                                         ; preds = %if.then2, %if.else4, %if.then
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4036
  %call20 = tail call %struct.histogram_value_t* @gimple_histogram_value_of_type(%struct.function* %7, %union.gimple_statement_d* %stmt, i32 6) #7, !dbg !4037
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call20, metadata !4002, metadata !DIExpression()), !dbg !4012
  %tobool21 = icmp eq %struct.histogram_value_t* %call20, null, !dbg !4038
  br i1 %tobool21, label %if.then22, label %if.else23, !dbg !4039

if.then22:                                        ; preds = %if.end18
  store i32 0, i32* %expected_align, align 4, !dbg !4040
  br label %if.end40, !dbg !4041

if.else23:                                        ; preds = %if.end18
  %counters25 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call20, i64 0, i32 0, i32 2, !dbg !4042
  %8 = load i64*, i64** %counters25, align 8, !dbg !4042
  %9 = load i64, i64* %8, align 8, !dbg !4043
  %tobool27 = icmp eq i64 %9, 0, !dbg !4043
  br i1 %tobool27, label %if.then28, label %if.else30, !dbg !4044

if.then28:                                        ; preds = %if.else23
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4045
  tail call void @gimple_remove_histogram_value(%struct.function* %10, %union.gimple_statement_d* %stmt, %struct.histogram_value_t* nonnull %call20) #7, !dbg !4047
  store i32 0, i32* %expected_align, align 4, !dbg !4048
  br label %if.end40, !dbg !4049

if.else30:                                        ; preds = %if.else23
  call void @llvm.dbg.value(metadata i64 %9, metadata !4007, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i32 1, metadata !4011, metadata !DIExpression()), !dbg !4050
  br label %while.cond, !dbg !4051

while.cond:                                       ; preds = %while.body, %if.else30
  %alignment.0 = phi i32 [ 1, %if.else30 ], [ %shl, %while.body ], !dbg !4050
  call void @llvm.dbg.value(metadata i32 %alignment.0, metadata !4011, metadata !DIExpression()), !dbg !4050
  %conv = sext i32 %alignment.0 to i64, !dbg !4052
  %and = and i64 %9, %conv, !dbg !4053
  %tobool34 = icmp ne i64 %and, 0, !dbg !4053
  %tobool36 = icmp eq i32 %alignment.0, 0, !dbg !4054
  %or.cond = or i1 %tobool34, %tobool36, !dbg !4054
  br i1 %or.cond, label %while.end, label %while.body, !dbg !4054

while.body:                                       ; preds = %while.cond
  %shl = shl i32 %alignment.0, 1, !dbg !4055
  call void @llvm.dbg.value(metadata i32 %shl, metadata !4011, metadata !DIExpression()), !dbg !4050
  br label %while.cond, !dbg !4051, !llvm.loop !4056

while.end:                                        ; preds = %while.cond
  %alignment.0.lcssa = phi i32 [ %alignment.0, %while.cond ], !dbg !4050
  call void @llvm.dbg.value(metadata i32 %alignment.0.lcssa, metadata !4011, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i32 %alignment.0.lcssa, metadata !4011, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i32 %alignment.0.lcssa, metadata !4011, metadata !DIExpression()), !dbg !4050
  %mul37 = shl nsw i32 %alignment.0.lcssa, 3, !dbg !4058
  store i32 %mul37, i32* %expected_align, align 4, !dbg !4059
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4060
  tail call void @gimple_remove_histogram_value(%struct.function* %11, %union.gimple_statement_d* %stmt, %struct.histogram_value_t* nonnull %call20) #7, !dbg !4061
  br label %if.end40

if.end40:                                         ; preds = %if.then28, %while.end, %if.then22
  ret void, !dbg !4062
}

; Function Attrs: nounwind uwtable
define dso_local void @gimple_register_value_prof_hooks() local_unnamed_addr #5 !dbg !4063 {
entry:
  %call = tail call i32 @current_ir_type() #6, !dbg !4064
  %cmp = icmp eq i32 %call, 0, !dbg !4064
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4064

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 1704, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4064
  br label %cond.end, !dbg !4064

cond.end:                                         ; preds = %entry, %cond.true
  ret void, !dbg !4065
}

declare dso_local i32 @current_ir_type() local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @find_values_to_profile(%struct.VEC_histogram_value_heap** %values) local_unnamed_addr #5 !dbg !4066 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap** %values, metadata !4068, metadata !DIExpression()), !dbg !4069
  tail call fastcc void @gimple_find_values_to_profile(%struct.VEC_histogram_value_heap** %values) #6, !dbg !4070
  ret void, !dbg !4071
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @value_profile_transformations() local_unnamed_addr #5 !dbg !4072 {
entry:
  %call = tail call fastcc zeroext i8 @gimple_value_profile_transformations() #6, !dbg !4073
  ret i8 %call, !dbg !4074
}

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @histogram_hash(i8* %x) #5 !dbg !4075 {
entry:
  call void @llvm.dbg.value(metadata i8* %x, metadata !4077, metadata !DIExpression()), !dbg !4078
  %0 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !4079
  %stmt = getelementptr inbounds i8, i8* %x, i64 8, !dbg !4080
  %1 = bitcast i8* %stmt to i8**, !dbg !4080
  %2 = load i8*, i8** %1, align 8, !dbg !4080
  %call = tail call i32 %0(i8* %2) #6, !dbg !4079
  ret i32 %call, !dbg !4081
}

; Function Attrs: nounwind uwtable
define internal i32 @histogram_eq(i8* %x, i8* %y) #5 !dbg !4082 {
entry:
  call void @llvm.dbg.value(metadata i8* %x, metadata !4084, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i8* %y, metadata !4085, metadata !DIExpression()), !dbg !4086
  %stmt = getelementptr inbounds i8, i8* %x, i64 8, !dbg !4087
  %0 = bitcast i8* %stmt to %union.gimple_statement_d**, !dbg !4087
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %0, align 8, !dbg !4087
  %2 = bitcast i8* %y to %union.gimple_statement_d*, !dbg !4088
  %cmp = icmp eq %union.gimple_statement_d* %1, %2, !dbg !4089
  %conv = zext i1 %cmp to i32, !dbg !4089
  ret i32 %conv, !dbg !4090
}

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #2

declare dso_local void @htab_clear_slot(%struct.htab*, i8**) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4091 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4098, metadata !DIExpression()), !dbg !4099
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4100
  %0 = load i32, i32* %flags, align 8, !dbg !4100
  %and = and i32 %0, 512, !dbg !4101
  %tobool = icmp eq i32 %and, 0, !dbg !4101
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4102

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4103
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4103
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4104
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4105

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4106
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4106
  br label %cond.end, !dbg !4105

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4105
  ret %struct.gimple_seq_d* %cond, !dbg !4107
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4108 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4115, metadata !DIExpression()), !dbg !4116
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4117
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4117

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4118
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4118
  br label %cond.end, !dbg !4117

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4117
  ret %struct.gimple_seq_node_d* %cond, !dbg !4119
}

declare dso_local i32 @pointer_set_contains(%struct.pointer_set_t*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gimple_find_values_to_profile(%struct.VEC_histogram_value_heap** %values) unnamed_addr #5 !dbg !4120 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %hist = alloca %struct.histogram_value_t*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap** %values, metadata !4122, metadata !DIExpression()), !dbg !4127
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4128
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4128
  %1 = bitcast %struct.histogram_value_t** %hist to i8*, !dbg !4129
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4129
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* null, metadata !4126, metadata !DIExpression()), !dbg !4127
  store %struct.histogram_value_t* null, %struct.histogram_value_t** %hist, align 8, !dbg !4130
  store %struct.VEC_histogram_value_heap* null, %struct.VEC_histogram_value_heap** %values, align 8, !dbg !4131
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4132
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !4132
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4132
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !4132
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4132
  %5 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4134
  br label %for.cond, !dbg !4132

for.cond:                                         ; preds = %for.inc6, %entry
  %6 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre1, %for.inc6 ], !dbg !4137
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %bb.0, %for.inc6 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !4138
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4138
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4123, metadata !DIExpression()), !dbg !4127
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 1, !dbg !4137
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4137
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %7, !dbg !4137
  br i1 %cmp, label %for.cond9.preheader, label %for.body, !dbg !4132

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !4139

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8, !dbg !4141
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !4141
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !4141
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8, !dbg !4141
  br label %for.cond3, !dbg !4142

for.cond3:                                        ; preds = %for.body4, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4124, metadata !DIExpression(DW_OP_deref)), !dbg !4127
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4143
  %tobool = icmp eq i8 %call, 0, !dbg !4145
  br i1 %tobool, label %for.body4, label %for.inc6, !dbg !4146

for.body4:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4124, metadata !DIExpression(DW_OP_deref)), !dbg !4127
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4147
  call fastcc void @gimple_values_to_profile(%union.gimple_statement_d* %call5, %struct.VEC_histogram_value_heap** %values) #7, !dbg !4148
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4124, metadata !DIExpression(DW_OP_deref)), !dbg !4127
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4149
  br label %for.cond3, !dbg !4150, !llvm.loop !4151

for.inc6:                                         ; preds = %for.cond3
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4137
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !4153
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !4137
  br label %for.cond, !dbg !4137, !llvm.loop !4154

for.cond9:                                        ; preds = %for.cond9.preheader, %for.inc28
  %i.0 = phi i32 [ %inc, %for.inc28 ], [ 0, %for.cond9.preheader ], !dbg !4156
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4125, metadata !DIExpression()), !dbg !4127
  %8 = load %struct.VEC_histogram_value_heap*, %struct.VEC_histogram_value_heap** %values, align 8, !dbg !4157
  %tobool10 = icmp eq %struct.VEC_histogram_value_heap* %8, null, !dbg !4157
  br i1 %tobool10, label %cond.end, label %cond.true, !dbg !4157

cond.true:                                        ; preds = %for.cond9
  %base = getelementptr inbounds %struct.VEC_histogram_value_heap, %struct.VEC_histogram_value_heap* %8, i64 0, i32 0, !dbg !4157
  br label %cond.end, !dbg !4157

cond.end:                                         ; preds = %for.cond9, %cond.true
  %cond = phi %struct.VEC_histogram_value_base* [ %base, %cond.true ], [ null, %for.cond9 ], !dbg !4157
  call void @llvm.dbg.value(metadata %struct.histogram_value_t** %hist, metadata !4126, metadata !DIExpression(DW_OP_deref)), !dbg !4127
  %call11 = call fastcc i32 @VEC_histogram_value_base_iterate(%struct.VEC_histogram_value_base* %cond, i32 %i.0, %struct.histogram_value_t** nonnull %hist) #7, !dbg !4157
  %tobool12 = icmp eq i32 %call11, 0, !dbg !4139
  br i1 %tobool12, label %for.end29, label %for.body13, !dbg !4139

for.body13:                                       ; preds = %cond.end
  %9 = load %struct.histogram_value_t*, %struct.histogram_value_t** %hist, align 8, !dbg !4159
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %9, metadata !4126, metadata !DIExpression()), !dbg !4127
  %type = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %9, i64 0, i32 1, !dbg !4161
  %10 = load i32, i32* %type, align 8, !dbg !4161
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb16
    i32 3, label %sw.bb18
    i32 4, label %sw.bb20
    i32 5, label %sw.bb22
    i32 6, label %sw.bb24
  ], !dbg !4162

sw.bb:                                            ; preds = %for.body13
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %9, metadata !4126, metadata !DIExpression()), !dbg !4127
  %steps = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %9, i64 0, i32 3, i32 0, i32 1, !dbg !4163
  %11 = load i32, i32* %steps, align 4, !dbg !4163
  %add = add i32 %11, 2, !dbg !4165
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %9, metadata !4126, metadata !DIExpression()), !dbg !4127
  %n_counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %9, i64 0, i32 2, !dbg !4166
  store i32 %add, i32* %n_counters, align 4, !dbg !4167
  br label %sw.epilog, !dbg !4168

sw.bb14:                                          ; preds = %for.body13
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %9, metadata !4126, metadata !DIExpression()), !dbg !4127
  %n_counters15 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %9, i64 0, i32 2, !dbg !4169
  store i32 2, i32* %n_counters15, align 4, !dbg !4170
  br label %sw.epilog, !dbg !4171

sw.bb16:                                          ; preds = %for.body13
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %9, metadata !4126, metadata !DIExpression()), !dbg !4127
  %n_counters17 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %9, i64 0, i32 2, !dbg !4172
  store i32 3, i32* %n_counters17, align 4, !dbg !4173
  br label %sw.epilog, !dbg !4174

sw.bb18:                                          ; preds = %for.body13
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %9, metadata !4126, metadata !DIExpression()), !dbg !4127
  %n_counters19 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %9, i64 0, i32 2, !dbg !4175
  store i32 4, i32* %n_counters19, align 4, !dbg !4176
  br label %sw.epilog, !dbg !4177

sw.bb20:                                          ; preds = %for.body13
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %9, metadata !4126, metadata !DIExpression()), !dbg !4127
  %n_counters21 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %9, i64 0, i32 2, !dbg !4178
  store i32 3, i32* %n_counters21, align 4, !dbg !4179
  br label %sw.epilog, !dbg !4180

sw.bb22:                                          ; preds = %for.body13
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %9, metadata !4126, metadata !DIExpression()), !dbg !4127
  %n_counters23 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %9, i64 0, i32 2, !dbg !4181
  store i32 2, i32* %n_counters23, align 4, !dbg !4182
  br label %sw.epilog, !dbg !4183

sw.bb24:                                          ; preds = %for.body13
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %9, metadata !4126, metadata !DIExpression()), !dbg !4127
  %n_counters25 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %9, i64 0, i32 2, !dbg !4184
  store i32 1, i32* %n_counters25, align 4, !dbg !4185
  br label %sw.epilog, !dbg !4186

sw.default:                                       ; preds = %for.body13
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 1685, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4187
  br label %sw.epilog, !dbg !4188

sw.epilog:                                        ; preds = %sw.default, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4189
  %tobool26 = icmp eq %struct._IO_FILE* %12, null, !dbg !4189
  br i1 %tobool26, label %for.inc28, label %if.then, !dbg !4191

if.then:                                          ; preds = %sw.epilog
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !4192
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4194
  %14 = load %struct.histogram_value_t*, %struct.histogram_value_t** %hist, align 8, !dbg !4195
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %14, metadata !4126, metadata !DIExpression()), !dbg !4127
  %stmt = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %14, i64 0, i32 0, i32 1, !dbg !4196
  %15 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4196
  call void @print_gimple_stmt(%struct._IO_FILE* %13, %union.gimple_statement_d* %15, i32 0, i32 2) #6, !dbg !4197
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4198
  %17 = load %struct.histogram_value_t*, %struct.histogram_value_t** %hist, align 8, !dbg !4199
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %17, metadata !4126, metadata !DIExpression()), !dbg !4127
  call fastcc void @dump_histogram_value(%struct._IO_FILE* %16, %struct.histogram_value_t* %17) #7, !dbg !4200
  br label %for.inc28, !dbg !4201

for.inc28:                                        ; preds = %sw.epilog, %if.then
  %inc = add i32 %i.0, 1, !dbg !4202
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4125, metadata !DIExpression()), !dbg !4127
  br label %for.cond9, !dbg !4203, !llvm.loop !4204

for.end29:                                        ; preds = %cond.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4206
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4206
  ret void, !dbg !4206
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @gimple_value_profile_transformations() unnamed_addr #5 !dbg !4207 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp39 = alloca %struct.gimple_stmt_iterator, align 8
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4220
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4220
  call void @llvm.dbg.value(metadata i8 0, metadata !4211, metadata !DIExpression()), !dbg !4221
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4222
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !4222
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4222
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !4222
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4222
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4223
  %5 = bitcast %struct.gimple_stmt_iterator* %tmp39 to i8*, !dbg !4224
  br label %for.cond, !dbg !4222

for.cond:                                         ; preds = %for.inc43, %entry
  %6 = phi %struct.control_flow_graph* [ %2, %entry ], [ %.pre1, %for.inc43 ], !dbg !4229
  %changed.0 = phi i8 [ 0, %entry ], [ %changed.1.lcssa, %for.inc43 ], !dbg !4230
  %.pn = phi %struct.basic_block_def* [ %3, %entry ], [ %bb.1.lcssa, %for.inc43 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !4231
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4231
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4209, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !4211, metadata !DIExpression()), !dbg !4221
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 1, !dbg !4229
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4229
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %7, !dbg !4229
  br i1 %cmp, label %for.end45, label %for.body, !dbg !4222

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !4232
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !4232
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !4232
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !4232
  br label %for.cond3, !dbg !4233

for.cond3:                                        ; preds = %cleanup, %for.body
  %changed.1 = phi i8 [ %changed.0, %for.body ], [ %changed.3, %cleanup ], !dbg !4221
  %bb.1 = phi %struct.basic_block_def* [ %bb.0, %for.body ], [ %bb.4, %cleanup ], !dbg !4231
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !4209, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !4211, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4210, metadata !DIExpression(DW_OP_deref)), !dbg !4221
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4234
  %tobool = icmp eq i8 %call, 0, !dbg !4235
  br i1 %tobool, label %for.body4, label %for.inc43, !dbg !4236

for.body4:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4210, metadata !DIExpression(DW_OP_deref)), !dbg !4221
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4237
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !4212, metadata !DIExpression()), !dbg !4238
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4239
  %call7 = call %struct.histogram_value_t* @gimple_histogram_value(%struct.function* %8, %union.gimple_statement_d* %call5) #7, !dbg !4240
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call7, metadata !4219, metadata !DIExpression()), !dbg !4238
  %tobool8 = icmp eq %struct.histogram_value_t* %call7, null, !dbg !4241
  br i1 %tobool8, label %cleanup, label %if.end, !dbg !4243

if.end:                                           ; preds = %for.body4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4244
  %tobool9 = icmp eq %struct._IO_FILE* %9, null, !dbg !4244
  br i1 %tobool9, label %if.end13, label %if.then10, !dbg !4246

if.then10:                                        ; preds = %if.end
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !4247
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4249
  call void @print_gimple_stmt(%struct._IO_FILE* %10, %union.gimple_statement_d* %call5, i32 0, i32 2) #6, !dbg !4250
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4251
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4252
  call void @dump_histograms_for_stmt(%struct.function* %11, %struct._IO_FILE* %12, %union.gimple_statement_d* %call5) #7, !dbg !4253
  br label %if.end13, !dbg !4254

if.end13:                                         ; preds = %if.end, %if.then10
  %13 = load i32, i32* @flag_value_profile_transformations, align 4, !dbg !4255
  %tobool14 = icmp eq i32 %13, 0, !dbg !4255
  br i1 %tobool14, label %cleanup, label %land.lhs.true, !dbg !4256

land.lhs.true:                                    ; preds = %if.end13
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4210, metadata !DIExpression(DW_OP_deref)), !dbg !4221
  %call15 = call fastcc zeroext i8 @gimple_mod_subtract_transform(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4257
  %tobool16 = icmp eq i8 %call15, 0, !dbg !4257
  br i1 %tobool16, label %lor.lhs.false, label %if.then32, !dbg !4258

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4210, metadata !DIExpression(DW_OP_deref)), !dbg !4221
  %call17 = call fastcc zeroext i8 @gimple_divmod_fixed_value_transform(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4259
  %tobool19 = icmp eq i8 %call17, 0, !dbg !4259
  br i1 %tobool19, label %lor.lhs.false20, label %if.then32, !dbg !4260

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4210, metadata !DIExpression(DW_OP_deref)), !dbg !4221
  %call21 = call fastcc zeroext i8 @gimple_mod_pow2_value_transform(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4261
  %tobool23 = icmp eq i8 %call21, 0, !dbg !4261
  br i1 %tobool23, label %lor.lhs.false24, label %if.then32, !dbg !4262

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4210, metadata !DIExpression(DW_OP_deref)), !dbg !4221
  %call25 = call fastcc zeroext i8 @gimple_stringops_transform(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4263
  %tobool27 = icmp eq i8 %call25, 0, !dbg !4263
  br i1 %tobool27, label %lor.lhs.false28, label %if.then32, !dbg !4264

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %call29 = call fastcc zeroext i8 @gimple_ic_transform(%union.gimple_statement_d* %call5) #7, !dbg !4265
  %tobool31 = icmp eq i8 %call29, 0, !dbg !4265
  br i1 %tobool31, label %cleanup, label %if.then32, !dbg !4266

if.then32:                                        ; preds = %lor.lhs.false28, %lor.lhs.false24, %lor.lhs.false20, %lor.lhs.false, %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4210, metadata !DIExpression(DW_OP_deref)), !dbg !4221
  %call33 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4267
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call33, metadata !4212, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i8 1, metadata !4211, metadata !DIExpression()), !dbg !4221
  %call34 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call33) #7, !dbg !4268
  %cmp35 = icmp eq %struct.basic_block_def* %bb.1, %call34, !dbg !4269
  br i1 %cmp35, label %cleanup, label %if.then37, !dbg !4270

if.then37:                                        ; preds = %if.then32
  %call38 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call33) #7, !dbg !4271
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call38, metadata !4209, metadata !DIExpression()), !dbg !4221
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8, !dbg !4272
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp39, %union.gimple_statement_d* %call33) #6, !dbg !4272
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !4272
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8, !dbg !4272
  br label %cleanup, !dbg !4273

cleanup:                                          ; preds = %if.then32, %lor.lhs.false28, %if.end13, %for.body4, %if.then37
  %changed.3 = phi i8 [ %changed.1, %for.body4 ], [ %changed.1, %lor.lhs.false28 ], [ %changed.1, %if.end13 ], [ 1, %if.then37 ], [ 1, %if.then32 ], !dbg !4221
  %bb.4 = phi %struct.basic_block_def* [ %bb.1, %for.body4 ], [ %bb.1, %lor.lhs.false28 ], [ %bb.1, %if.end13 ], [ %call38, %if.then37 ], [ %bb.1, %if.then32 ], !dbg !4231
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.4, metadata !4209, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i8 %changed.3, metadata !4211, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4210, metadata !DIExpression(DW_OP_deref)), !dbg !4221
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4274
  br label %for.cond3, !dbg !4275, !llvm.loop !4276

for.inc43:                                        ; preds = %for.cond3
  %changed.1.lcssa = phi i8 [ %changed.1, %for.cond3 ], !dbg !4221
  %bb.1.lcssa = phi %struct.basic_block_def* [ %bb.1, %for.cond3 ], !dbg !4231
  call void @llvm.dbg.value(metadata i8 %changed.1.lcssa, metadata !4211, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1.lcssa, metadata !4209, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i8 %changed.1.lcssa, metadata !4211, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1.lcssa, metadata !4209, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i8 %changed.1.lcssa, metadata !4211, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1.lcssa, metadata !4209, metadata !DIExpression()), !dbg !4221
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4229
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !4278
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !4229
  br label %for.cond, !dbg !4229, !llvm.loop !4279

for.end45:                                        ; preds = %for.cond
  %changed.0.lcssa = phi i8 [ %changed.0, %for.cond ], !dbg !4230
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !4211, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !4211, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !4211, metadata !DIExpression()), !dbg !4221
  %tobool46 = icmp eq i8 %changed.0.lcssa, 0, !dbg !4281
  br i1 %tobool46, label %if.end49, label %if.then47, !dbg !4283

if.then47:                                        ; preds = %for.end45
  %call48 = call i32 @counts_to_freqs() #6, !dbg !4284
  br label %if.end49, !dbg !4286

if.end49:                                         ; preds = %for.end45, %if.then47
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4287
  ret i8 %changed.0.lcssa, !dbg !4288
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gimple_values_to_profile(%union.gimple_statement_d* %stmt, %struct.VEC_histogram_value_heap** %values) unnamed_addr #5 !dbg !4289 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4293, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap** %values, metadata !4294, metadata !DIExpression()), !dbg !4295
  %0 = load i32, i32* @flag_value_profile_transformations, align 4, !dbg !4296
  %tobool = icmp eq i32 %0, 0, !dbg !4296
  br i1 %tobool, label %if.end, label %if.then, !dbg !4298

if.then:                                          ; preds = %entry
  tail call fastcc void @gimple_divmod_values_to_profile(%union.gimple_statement_d* %stmt, %struct.VEC_histogram_value_heap** %values) #7, !dbg !4299
  tail call fastcc void @gimple_stringops_values_to_profile(%union.gimple_statement_d* %stmt, %struct.VEC_histogram_value_heap** %values) #7, !dbg !4301
  tail call fastcc void @gimple_indirect_call_to_profile(%union.gimple_statement_d* %stmt, %struct.VEC_histogram_value_heap** %values) #7, !dbg !4302
  br label %if.end, !dbg !4303

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !4304
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_histogram_value_base_iterate(%struct.VEC_histogram_value_base* %vec_, i32 %ix_, %struct.histogram_value_t** %ptr) unnamed_addr #0 !dbg !4305 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_base* %vec_, metadata !4311, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4312, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata %struct.histogram_value_t** %ptr, metadata !4313, metadata !DIExpression()), !dbg !4314
  %tobool = icmp eq %struct.VEC_histogram_value_base* %vec_, null, !dbg !4315
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4315

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_histogram_value_base, %struct.VEC_histogram_value_base* %vec_, i64 0, i32 0, !dbg !4315
  %0 = load i32, i32* %num, align 8, !dbg !4315
  %cmp = icmp ugt i32 %0, %ix_, !dbg !4315
  br i1 %cmp, label %if.then, label %if.else, !dbg !4317

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !4318
  %arrayidx = getelementptr inbounds %struct.VEC_histogram_value_base, %struct.VEC_histogram_value_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4318
  %1 = load %struct.histogram_value_t*, %struct.histogram_value_t** %arrayidx, align 8, !dbg !4318
  br label %return, !dbg !4318

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !4320

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.histogram_value_t* [ null, %if.else ], [ %1, %if.then ], !dbg !4322
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !4322
  store %struct.histogram_value_t* %storemerge, %struct.histogram_value_t** %ptr, align 8, !dbg !4322
  ret i32 %retval.0, !dbg !4317
}

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gimple_divmod_values_to_profile(%union.gimple_statement_d* %stmt, %struct.VEC_histogram_value_heap** %values) unnamed_addr #5 !dbg !4323 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4325, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap** %values, metadata !4326, metadata !DIExpression()), !dbg !4336
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !4337
  %cmp = icmp eq i32 %call, 6, !dbg !4339
  br i1 %cmp, label %if.end, label %cleanup, !dbg !4340

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !4341
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !4327, metadata !DIExpression()), !dbg !4336
  %type2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4342
  %0 = load %union.tree_node*, %union.tree_node** %type2, align 8, !dbg !4342
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4330, metadata !DIExpression()), !dbg !4336
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4343
  %bf.load = load i64, i64* %1, align 8, !dbg !4343
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4343
  %cmp3 = icmp eq i64 %bf.cast1, 6, !dbg !4343
  br i1 %cmp3, label %if.end16, label %lor.lhs.false, !dbg !4343

lor.lhs.false:                                    ; preds = %if.end
  %cmp8 = icmp eq i64 %bf.cast1, 7, !dbg !4343
  br i1 %cmp8, label %if.end16, label %lor.lhs.false9, !dbg !4343

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %cmp14 = icmp eq i64 %bf.cast1, 8, !dbg !4343
  br i1 %cmp14, label %if.end16, label %cleanup, !dbg !4345

if.end16:                                         ; preds = %lor.lhs.false9, %lor.lhs.false, %if.end
  %call17 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !4346
  switch i32 %call17, label %cleanup [
    i32 67, label %sw.bb
    i32 71, label %sw.bb
  ], !dbg !4347

sw.bb:                                            ; preds = %if.end16, %if.end16
  %call18 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #7, !dbg !4348
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !4328, metadata !DIExpression()), !dbg !4336
  %call19 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !4349
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !4329, metadata !DIExpression()), !dbg !4336
  %call20 = tail call fastcc i32 @VEC_histogram_value_heap_reserve(%struct.VEC_histogram_value_heap** %values, i32 3) #7, !dbg !4350
  %call21 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call18) #6, !dbg !4351
  %tobool = icmp eq i8 %call21, 0, !dbg !4351
  br i1 %tobool, label %if.end27, label %if.then22, !dbg !4353

if.then22:                                        ; preds = %sw.bb
  %2 = load %struct.VEC_histogram_value_heap*, %struct.VEC_histogram_value_heap** %values, align 8, !dbg !4354
  %tobool23 = icmp eq %struct.VEC_histogram_value_heap* %2, null, !dbg !4354
  br i1 %tobool23, label %cond.end, label %cond.true, !dbg !4354

cond.true:                                        ; preds = %if.then22
  %base24 = getelementptr inbounds %struct.VEC_histogram_value_heap, %struct.VEC_histogram_value_heap* %2, i64 0, i32 0, !dbg !4354
  br label %cond.end, !dbg !4354

cond.end:                                         ; preds = %if.then22, %cond.true
  %cond = phi %struct.VEC_histogram_value_base* [ %base24, %cond.true ], [ null, %if.then22 ], !dbg !4354
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4354
  %call25 = tail call fastcc %struct.histogram_value_t* @gimple_alloc_histogram_value(%struct.function* %3, i32 2, %union.gimple_statement_d* %stmt, %union.tree_node* %call18) #7, !dbg !4354
  %call26 = tail call fastcc %struct.histogram_value_t** @VEC_histogram_value_base_quick_push(%struct.VEC_histogram_value_base* %cond, %struct.histogram_value_t* %call25) #7, !dbg !4354
  br label %if.end27, !dbg !4354

if.end27:                                         ; preds = %sw.bb, %cond.end
  %call28 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !4355
  %cmp29 = icmp eq i32 %call28, 71, !dbg !4356
  br i1 %cmp29, label %land.lhs.true, label %cleanup, !dbg !4357

land.lhs.true:                                    ; preds = %if.end27
  %bf.load31 = load i64, i64* %1, align 8, !dbg !4358
  %bf.cast334 = and i64 %bf.load31, 2097152, !dbg !4358
  %tobool34 = icmp eq i64 %bf.cast334, 0, !dbg !4358
  br i1 %tobool34, label %cleanup, label %if.then35, !dbg !4359

if.then35:                                        ; preds = %land.lhs.true
  %4 = load %struct.VEC_histogram_value_heap*, %struct.VEC_histogram_value_heap** %values, align 8, !dbg !4360
  %tobool36 = icmp eq %struct.VEC_histogram_value_heap* %4, null, !dbg !4360
  br i1 %tobool36, label %cond.end40, label %cond.true37, !dbg !4360

cond.true37:                                      ; preds = %if.then35
  %base38 = getelementptr inbounds %struct.VEC_histogram_value_heap, %struct.VEC_histogram_value_heap* %4, i64 0, i32 0, !dbg !4360
  br label %cond.end40, !dbg !4360

cond.end40:                                       ; preds = %if.then35, %cond.true37
  %cond41 = phi %struct.VEC_histogram_value_base* [ %base38, %cond.true37 ], [ null, %if.then35 ], !dbg !4360
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4360
  %call43 = tail call fastcc %struct.histogram_value_t* @gimple_alloc_histogram_value(%struct.function* %5, i32 1, %union.gimple_statement_d* %stmt, %union.tree_node* %call18) #7, !dbg !4360
  %call44 = tail call fastcc %struct.histogram_value_t** @VEC_histogram_value_base_quick_push(%struct.VEC_histogram_value_base* %cond41, %struct.histogram_value_t* %call43) #7, !dbg !4360
  %call45 = tail call %union.tree_node* @build2_stat(i32 67, %union.tree_node* %0, %union.tree_node* %call19, %union.tree_node* %call18) #6, !dbg !4361
  call void @llvm.dbg.value(metadata %union.tree_node* %call45, metadata !4332, metadata !DIExpression()), !dbg !4362
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4363
  %call47 = tail call fastcc %struct.histogram_value_t* @gimple_alloc_histogram_value(%struct.function* %6, i32 0, %union.gimple_statement_d* %stmt, %union.tree_node* %call45) #7, !dbg !4364
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call47, metadata !4331, metadata !DIExpression()), !dbg !4336
  %int_start = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call47, i64 0, i32 3, i32 0, i32 0, !dbg !4365
  store i32 0, i32* %int_start, align 8, !dbg !4366
  %steps = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call47, i64 0, i32 3, i32 0, i32 1, !dbg !4367
  store i32 2, i32* %steps, align 4, !dbg !4368
  %7 = load %struct.VEC_histogram_value_heap*, %struct.VEC_histogram_value_heap** %values, align 8, !dbg !4369
  %tobool50 = icmp eq %struct.VEC_histogram_value_heap* %7, null, !dbg !4369
  br i1 %tobool50, label %cond.end54, label %cond.true51, !dbg !4369

cond.true51:                                      ; preds = %cond.end40
  %base52 = getelementptr inbounds %struct.VEC_histogram_value_heap, %struct.VEC_histogram_value_heap* %7, i64 0, i32 0, !dbg !4369
  br label %cond.end54, !dbg !4369

cond.end54:                                       ; preds = %cond.end40, %cond.true51
  %cond55 = phi %struct.VEC_histogram_value_base* [ %base52, %cond.true51 ], [ null, %cond.end40 ], !dbg !4369
  %call56 = tail call fastcc %struct.histogram_value_t** @VEC_histogram_value_base_quick_push(%struct.VEC_histogram_value_base* %cond55, %struct.histogram_value_t* %call47) #7, !dbg !4369
  br label %cleanup, !dbg !4370

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end16, %if.end27, %cond.end54, %lor.lhs.false9
  ret void, !dbg !4371
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gimple_stringops_values_to_profile(%union.gimple_statement_d* %stmt, %struct.VEC_histogram_value_heap** %values) unnamed_addr #5 !dbg !4372 {
entry:
  %size_arg = alloca i32, align 4
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4374, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap** %values, metadata !4375, metadata !DIExpression()), !dbg !4380
  %0 = bitcast i32* %size_arg to i8*, !dbg !4381
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4381
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !4382
  %cmp = icmp eq i32 %call, 8, !dbg !4384
  br i1 %cmp, label %if.end, label %cleanup, !dbg !4385

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %stmt) #7, !dbg !4386
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !4376, metadata !DIExpression()), !dbg !4380
  %tobool = icmp eq %union.tree_node* %call1, null, !dbg !4387
  br i1 %tobool, label %cleanup, label %if.end3, !dbg !4389

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32* %size_arg, metadata !4379, metadata !DIExpression(DW_OP_deref)), !dbg !4380
  %call4 = call fastcc zeroext i8 @interesting_stringop_to_profile_p(%union.tree_node* nonnull %call1, %union.gimple_statement_d* %stmt, i32* nonnull %size_arg) #7, !dbg !4390
  %tobool5 = icmp eq i8 %call4, 0, !dbg !4390
  br i1 %tobool5, label %cleanup, label %if.end7, !dbg !4392

if.end7:                                          ; preds = %if.end3
  %call8 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %stmt, i32 0) #7, !dbg !4393
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !4378, metadata !DIExpression()), !dbg !4380
  %1 = load i32, i32* %size_arg, align 4, !dbg !4394
  call void @llvm.dbg.value(metadata i32 %1, metadata !4379, metadata !DIExpression()), !dbg !4380
  %call9 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %stmt, i32 %1) #7, !dbg !4395
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !4377, metadata !DIExpression()), !dbg !4380
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4396
  %bf.load = load i64, i64* %2, align 8, !dbg !4396
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4398
  %cmp10 = icmp eq i64 %bf.cast1, 23, !dbg !4398
  br i1 %cmp10, label %if.end17, label %if.then11, !dbg !4399

if.then11:                                        ; preds = %if.end7
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4400
  %call12 = call fastcc %struct.histogram_value_t* @gimple_alloc_histogram_value(%struct.function* %3, i32 2, %union.gimple_statement_d* %stmt, %union.tree_node* %call9) #7, !dbg !4400
  %call13 = call fastcc %struct.histogram_value_t** @VEC_histogram_value_heap_safe_push(%struct.VEC_histogram_value_heap** %values, %struct.histogram_value_t* %call12) #7, !dbg !4400
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4402
  %call15 = call fastcc %struct.histogram_value_t* @gimple_alloc_histogram_value(%struct.function* %4, i32 5, %union.gimple_statement_d* %stmt, %union.tree_node* %call9) #7, !dbg !4402
  %call16 = call fastcc %struct.histogram_value_t** @VEC_histogram_value_heap_safe_push(%struct.VEC_histogram_value_heap** %values, %struct.histogram_value_t* %call15) #7, !dbg !4402
  %bf.load19.pre = load i64, i64* %2, align 8, !dbg !4403
  %.pre = and i64 %bf.load19.pre, 65535, !dbg !4405
  br label %if.end17, !dbg !4406

if.end17:                                         ; preds = %if.end7, %if.then11
  %bf.cast212.pre-phi = phi i64 [ %bf.cast1, %if.end7 ], [ %.pre, %if.then11 ], !dbg !4405
  %cmp22 = icmp eq i64 %bf.cast212.pre-phi, 23, !dbg !4405
  br i1 %cmp22, label %cleanup, label %if.then23, !dbg !4407

if.then23:                                        ; preds = %if.end17
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4408
  %call25 = call fastcc %struct.histogram_value_t* @gimple_alloc_histogram_value(%struct.function* %5, i32 6, %union.gimple_statement_d* %stmt, %union.tree_node* %call8) #7, !dbg !4408
  %call26 = call fastcc %struct.histogram_value_t** @VEC_histogram_value_heap_safe_push(%struct.VEC_histogram_value_heap** %values, %struct.histogram_value_t* %call25) #7, !dbg !4408
  br label %cleanup, !dbg !4408

cleanup:                                          ; preds = %if.end17, %if.end3, %if.end, %entry, %if.then23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4409
  ret void, !dbg !4409
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gimple_indirect_call_to_profile(%union.gimple_statement_d* %stmt, %struct.VEC_histogram_value_heap** %values) unnamed_addr #5 !dbg !4410 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4412, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap** %values, metadata !4413, metadata !DIExpression()), !dbg !4415
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !4416
  %cmp = icmp eq i32 %call, 8, !dbg !4418
  br i1 %cmp, label %lor.lhs.false, label %cleanup, !dbg !4419

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %stmt) #7, !dbg !4420
  %cmp2 = icmp eq %union.tree_node* %call1, null, !dbg !4421
  br i1 %cmp2, label %if.end, label %cleanup, !dbg !4422

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %stmt) #7, !dbg !4423
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !4414, metadata !DIExpression()), !dbg !4415
  %call4 = tail call fastcc i32 @VEC_histogram_value_heap_reserve(%struct.VEC_histogram_value_heap** %values, i32 3) #7, !dbg !4424
  %0 = load %struct.VEC_histogram_value_heap*, %struct.VEC_histogram_value_heap** %values, align 8, !dbg !4425
  %tobool = icmp eq %struct.VEC_histogram_value_heap* %0, null, !dbg !4425
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4425

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_histogram_value_heap, %struct.VEC_histogram_value_heap* %0, i64 0, i32 0, !dbg !4425
  br label %cond.end, !dbg !4425

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_histogram_value_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !4425
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4425
  %call5 = tail call fastcc %struct.histogram_value_t* @gimple_alloc_histogram_value(%struct.function* %1, i32 4, %union.gimple_statement_d* %stmt, %union.tree_node* %call3) #7, !dbg !4425
  %call6 = tail call fastcc %struct.histogram_value_t** @VEC_histogram_value_base_quick_push(%struct.VEC_histogram_value_base* %cond, %struct.histogram_value_t* %call5) #7, !dbg !4425
  br label %cleanup, !dbg !4426

cleanup:                                          ; preds = %lor.lhs.false, %entry, %cond.end
  ret void, !dbg !4427
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4428 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4432, metadata !DIExpression()), !dbg !4433
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !4434
  %bf.load = load i32, i32* %0, align 8, !dbg !4434
  %bf.clear = and i32 %bf.load, 255, !dbg !4434
  ret i32 %bf.clear, !dbg !4435
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4436 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4440, metadata !DIExpression()), !dbg !4441
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !4442
  ret %union.tree_node* %call, !dbg !4443
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4444 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4448, metadata !DIExpression()), !dbg !4450
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !4451
  call void @llvm.dbg.value(metadata i32 %call, metadata !4449, metadata !DIExpression()), !dbg !4450
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !4452
  %cmp = icmp eq i32 %call1, 3, !dbg !4454
  br i1 %cmp, label %if.then, label %if.end, !dbg !4455

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !4456
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4456
  %bf.load = load i64, i64* %0, align 8, !dbg !4456
  %1 = trunc i64 %bf.load to i32, !dbg !4456
  %bf.cast = and i32 %1, 65535, !dbg !4456
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !4449, metadata !DIExpression()), !dbg !4450
  br label %if.end, !dbg !4457

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !4450
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !4449, metadata !DIExpression()), !dbg !4450
  ret i32 %code.0, !dbg !4458
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4459 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4461, metadata !DIExpression()), !dbg !4462
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !4463
  %cmp = icmp ugt i32 %call, 2, !dbg !4465
  br i1 %cmp, label %if.then, label %return, !dbg !4466

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #7, !dbg !4467
  br label %return, !dbg !4468

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %call1, %if.then ], [ null, %entry ], !dbg !4469
  ret %union.tree_node* %retval.0, !dbg !4470
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4471 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4473, metadata !DIExpression()), !dbg !4474
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !4475
  ret %union.tree_node* %call, !dbg !4476
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_histogram_value_heap_reserve(%struct.VEC_histogram_value_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4477 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap** %vec_, metadata !4482, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4483, metadata !DIExpression()), !dbg !4485
  %0 = load %struct.VEC_histogram_value_heap*, %struct.VEC_histogram_value_heap** %vec_, align 8, !dbg !4486
  %tobool = icmp eq %struct.VEC_histogram_value_heap* %0, null, !dbg !4486
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4486

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_histogram_value_heap, %struct.VEC_histogram_value_heap* %0, i64 0, i32 0, !dbg !4486
  br label %cond.end, !dbg !4486

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_histogram_value_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4486
  %call = tail call fastcc i32 @VEC_histogram_value_base_space(%struct.VEC_histogram_value_base* %cond, i32 %alloc_) #7, !dbg !4486
  %tobool1 = icmp eq i32 %call, 0, !dbg !4486
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4486
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4484, metadata !DIExpression()), !dbg !4485
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4486

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_histogram_value_heap** %vec_ to i8**, !dbg !4487
  %2 = load i8*, i8** %1, align 8, !dbg !4487
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 %alloc_) #6, !dbg !4487
  store i8* %call3, i8** %1, align 8, !dbg !4487
  br label %if.end, !dbg !4487

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4486
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.histogram_value_t** @VEC_histogram_value_base_quick_push(%struct.VEC_histogram_value_base* %vec_, %struct.histogram_value_t* %obj_) unnamed_addr #0 !dbg !4489 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_base* %vec_, metadata !4494, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %obj_, metadata !4495, metadata !DIExpression()), !dbg !4497
  %num1 = getelementptr inbounds %struct.VEC_histogram_value_base, %struct.VEC_histogram_value_base* %vec_, i64 0, i32 0, !dbg !4498
  %0 = load i32, i32* %num1, align 8, !dbg !4498
  %inc = add i32 %0, 1, !dbg !4498
  store i32 %inc, i32* %num1, align 8, !dbg !4498
  %idxprom = zext i32 %0 to i64, !dbg !4498
  %arrayidx = getelementptr inbounds %struct.VEC_histogram_value_base, %struct.VEC_histogram_value_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4498
  call void @llvm.dbg.value(metadata %struct.histogram_value_t** %arrayidx, metadata !4496, metadata !DIExpression()), !dbg !4497
  store %struct.histogram_value_t* %obj_, %struct.histogram_value_t** %arrayidx, align 8, !dbg !4498
  ret %struct.histogram_value_t** %arrayidx, !dbg !4498
}

declare dso_local %union.tree_node* @build2_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4499 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4503, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i32 %i, metadata !4504, metadata !DIExpression()), !dbg !4505
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !4506
  %tobool = icmp eq i8 %call, 0, !dbg !4506
  br i1 %tobool, label %return, label %if.then, !dbg !4508

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !4509
  %idxprom = zext i32 %i to i64, !dbg !4509
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !4509
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4509
  br label %return, !dbg !4511

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !4512
  ret %union.tree_node* %retval.0, !dbg !4513
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4514 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4518, metadata !DIExpression()), !dbg !4519
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4520
  %cmp = icmp eq i32 %call, 0, !dbg !4521
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !4522

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4523
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4524
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4525
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4526 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4530, metadata !DIExpression()), !dbg !4532
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !4533
  %idxprom = zext i32 %call to i64, !dbg !4534
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !4534
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4534
  call void @llvm.dbg.value(metadata i64 %0, metadata !4531, metadata !DIExpression()), !dbg !4532
  %cmp = icmp eq i64 %0, 0, !dbg !4535
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4535

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4535
  br label %cond.end, !dbg !4535

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !4536
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !4537
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !4538
  ret %union.tree_node** %2, !dbg !4539
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4540 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4544, metadata !DIExpression()), !dbg !4545
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4546
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !4547
  ret i32 %call1, !dbg !4548
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !4549 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4553, metadata !DIExpression()), !dbg !4554
  %idxprom = zext i32 %code to i64, !dbg !4555
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !4555
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4555
  ret i32 %0, !dbg !4556
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4557 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4559, metadata !DIExpression()), !dbg !4561
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !4562
  call void @llvm.dbg.value(metadata i32 %call, metadata !4560, metadata !DIExpression()), !dbg !4561
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !4563

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4565
  %bf.load = load i32, i32* %0, align 8, !dbg !4565
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4565
  br label %cleanup, !dbg !4566

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4567
  br label %cleanup, !dbg !4569

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !4561
  ret i32 %retval.0, !dbg !4570
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !4571 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4575, metadata !DIExpression()), !dbg !4576
  %idxprom = sext i32 %code to i64, !dbg !4577
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !4577
  %0 = load i8, i8* %arrayidx, align 1, !dbg !4577
  %conv = zext i8 %0 to i32, !dbg !4578
  ret i32 %conv, !dbg !4579
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4580 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4584, metadata !DIExpression()), !dbg !4585
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !4586
  %0 = load i32, i32* %num_ops, align 4, !dbg !4586
  ret i32 %0, !dbg !4587
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_histogram_value_base_space(%struct.VEC_histogram_value_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4588 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_base* %vec_, metadata !4592, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4593, metadata !DIExpression()), !dbg !4594
  %tobool = icmp eq %struct.VEC_histogram_value_base* %vec_, null, !dbg !4595
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4595

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_histogram_value_base, %struct.VEC_histogram_value_base* %vec_, i64 0, i32 1, !dbg !4595
  %0 = load i32, i32* %alloc, align 4, !dbg !4595
  %num = getelementptr inbounds %struct.VEC_histogram_value_base, %struct.VEC_histogram_value_base* %vec_, i64 0, i32 0, !dbg !4595
  %1 = load i32, i32* %num, align 8, !dbg !4595
  %sub = sub i32 %0, %1, !dbg !4595
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !4595
  br label %cond.end, !dbg !4595

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !4595
  br label %cond.end, !dbg !4595

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !4595
  ret i32 %cond, !dbg !4595
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4596 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4598, metadata !DIExpression()), !dbg !4600
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !4601
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4599, metadata !DIExpression()), !dbg !4600
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4602
  %bf.load = load i64, i64* %0, align 8, !dbg !4602
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4604
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !4604
  br i1 %cmp, label %if.then, label %cleanup, !dbg !4605

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4606
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !4606
  br label %cleanup, !dbg !4607

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !4600
  ret %union.tree_node* %retval.0, !dbg !4608
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @interesting_stringop_to_profile_p(%union.tree_node* %fndecl, %union.gimple_statement_d* %call, i32* %size_arg) unnamed_addr #5 !dbg !4609 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl, metadata !4614, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !4615, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.value(metadata i32* %size_arg, metadata !4616, metadata !DIExpression()), !dbg !4618
  %function_code = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 5, !dbg !4619
  %bf.load = load i32, i32* %function_code, align 8, !dbg !4619
  %bf.clear = and i32 %bf.load, 2047, !dbg !4619
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4617, metadata !DIExpression()), !dbg !4618
  switch i32 %bf.clear, label %cleanup [
    i32 330, label %sw.bb
    i32 332, label %sw.bb
    i32 333, label %sw.bb7
    i32 326, label %sw.bb9
  ], !dbg !4620

sw.bb:                                            ; preds = %entry, %entry
  store i32 2, i32* %size_arg, align 4, !dbg !4622
  %call6 = tail call zeroext i8 (%union.gimple_statement_d*, ...) @validate_gimple_arglist(%union.gimple_statement_d* %call, i32 10, i32 10, i32 8, i32 19) #6, !dbg !4624
  br label %cleanup, !dbg !4625

sw.bb7:                                           ; preds = %entry
  store i32 2, i32* %size_arg, align 4, !dbg !4626
  %call8 = tail call zeroext i8 (%union.gimple_statement_d*, ...) @validate_gimple_arglist(%union.gimple_statement_d* %call, i32 10, i32 8, i32 8, i32 19) #6, !dbg !4627
  br label %cleanup, !dbg !4628

sw.bb9:                                           ; preds = %entry
  store i32 1, i32* %size_arg, align 4, !dbg !4629
  %call10 = tail call zeroext i8 (%union.gimple_statement_d*, ...) @validate_gimple_arglist(%union.gimple_statement_d* %call, i32 10, i32 8, i32 19) #6, !dbg !4630
  br label %cleanup, !dbg !4631

cleanup:                                          ; preds = %entry, %sw.bb9, %sw.bb7, %sw.bb
  %retval.0 = phi i8 [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb ], [ 0, %entry ], !dbg !4618
  ret i8 %retval.0, !dbg !4632
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4633 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4635, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata i32 %index, metadata !4636, metadata !DIExpression()), !dbg !4637
  %add = add i32 %index, 3, !dbg !4638
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add) #7, !dbg !4639
  ret %union.tree_node* %call, !dbg !4640
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.histogram_value_t** @VEC_histogram_value_heap_safe_push(%struct.VEC_histogram_value_heap** %vec_, %struct.histogram_value_t* %obj_) unnamed_addr #0 !dbg !4641 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_histogram_value_heap** %vec_, metadata !4645, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %obj_, metadata !4646, metadata !DIExpression()), !dbg !4647
  %call = tail call fastcc i32 @VEC_histogram_value_heap_reserve(%struct.VEC_histogram_value_heap** %vec_, i32 1) #7, !dbg !4648
  %0 = load %struct.VEC_histogram_value_heap*, %struct.VEC_histogram_value_heap** %vec_, align 8, !dbg !4648
  %tobool = icmp eq %struct.VEC_histogram_value_heap* %0, null, !dbg !4648
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4648

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_histogram_value_heap, %struct.VEC_histogram_value_heap* %0, i64 0, i32 0, !dbg !4648
  br label %cond.end, !dbg !4648

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_histogram_value_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4648
  %call1 = tail call fastcc %struct.histogram_value_t** @VEC_histogram_value_base_quick_push(%struct.VEC_histogram_value_base* %cond, %struct.histogram_value_t* %obj_) #7, !dbg !4648
  ret %struct.histogram_value_t** %call1, !dbg !4648
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4649 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4651, metadata !DIExpression()), !dbg !4652
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !4653
  ret %union.tree_node* %call, !dbg !4654
}

declare dso_local zeroext i8 @validate_gimple_arglist(%union.gimple_statement_d*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @gimple_mod_subtract_transform(%struct.gimple_stmt_iterator* %si) unnamed_addr #5 !dbg !4655 {
entry:
  %all = alloca i64, align 8
  %count1 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !4659, metadata !DIExpression()), !dbg !4674
  %0 = bitcast i64* %all to i8*, !dbg !4675
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4675
  %1 = bitcast i64* %count1 to i8*, !dbg !4676
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4676
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %si) #7, !dbg !4677
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !4673, metadata !DIExpression()), !dbg !4674
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #7, !dbg !4678
  %cmp = icmp eq i32 %call1, 6, !dbg !4680
  br i1 %cmp, label %if.end, label %cleanup, !dbg !4681

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call) #7, !dbg !4682
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4682
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4682
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !4665, metadata !DIExpression()), !dbg !4674
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4683
  %bf.load = load i64, i64* %3, align 8, !dbg !4683
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4683
  %cmp3 = icmp eq i64 %bf.cast1, 6, !dbg !4683
  br i1 %cmp3, label %if.end16, label %lor.lhs.false, !dbg !4683

lor.lhs.false:                                    ; preds = %if.end
  %cmp8 = icmp eq i64 %bf.cast1, 7, !dbg !4683
  br i1 %cmp8, label %if.end16, label %lor.lhs.false9, !dbg !4683

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %cmp14 = icmp eq i64 %bf.cast1, 8, !dbg !4683
  br i1 %cmp14, label %if.end16, label %cleanup, !dbg !4685

if.end16:                                         ; preds = %lor.lhs.false9, %lor.lhs.false, %if.end
  %call17 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call) #7, !dbg !4686
  call void @llvm.dbg.value(metadata i32 %call17, metadata !4661, metadata !DIExpression()), !dbg !4674
  %cmp18 = icmp eq i32 %call17, 71, !dbg !4687
  br i1 %cmp18, label %lor.lhs.false19, label %cleanup, !dbg !4689

lor.lhs.false19:                                  ; preds = %if.end16
  %bf.load21 = load i64, i64* %3, align 8, !dbg !4690
  %bf.cast234 = and i64 %bf.load21, 2097152, !dbg !4690
  %tobool = icmp eq i64 %bf.cast234, 0, !dbg !4690
  br i1 %tobool, label %cleanup, label %if.end25, !dbg !4691

if.end25:                                         ; preds = %lor.lhs.false19
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4692
  %call26 = tail call %struct.histogram_value_t* @gimple_histogram_value_of_type(%struct.function* %4, %union.gimple_statement_d* %call, i32 0) #7, !dbg !4693
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call26, metadata !4660, metadata !DIExpression()), !dbg !4674
  %tobool27 = icmp eq %struct.histogram_value_t* %call26, null, !dbg !4694
  br i1 %tobool27, label %cleanup, label %if.end29, !dbg !4696

if.end29:                                         ; preds = %if.end25
  call void @llvm.dbg.value(metadata i64 0, metadata !4664, metadata !DIExpression()), !dbg !4674
  store i64 0, i64* %all, align 8, !dbg !4697
  call void @llvm.dbg.value(metadata i64 0, metadata !4663, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 0, metadata !4669, metadata !DIExpression()), !dbg !4674
  %steps30 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call26, i64 0, i32 3, i32 0, i32 1, !dbg !4698
  %counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call26, i64 0, i32 0, i32 2, !dbg !4674
  %.pre = load i32, i32* %steps30, align 4, !dbg !4701
  %.pre6 = load i64*, i64** %counters, align 8, !dbg !4674
  %wide.trip.count = zext i32 %.pre to i64, !dbg !4702
  br label %for.cond, !dbg !4703

for.cond:                                         ; preds = %for.body, %if.end29
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end29 ]
  %5 = phi i64 [ %add, %for.body ], [ 0, %if.end29 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4669, metadata !DIExpression()), !dbg !4674
  %arrayidx = getelementptr inbounds i64, i64* %.pre6, i64 %indvars.iv, !dbg !4674
  %6 = load i64, i64* %arrayidx, align 8, !dbg !4674
  %exitcond13 = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !4702
  br i1 %exitcond13, label %for.end, label %for.body, !dbg !4704

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64 %5, metadata !4664, metadata !DIExpression()), !dbg !4674
  %add = add nsw i64 %5, %6, !dbg !4705
  call void @llvm.dbg.value(metadata i64 %add, metadata !4664, metadata !DIExpression()), !dbg !4674
  store i64 %add, i64* %all, align 8, !dbg !4705
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4706
  br label %for.cond, !dbg !4707, !llvm.loop !4708

for.end:                                          ; preds = %for.cond
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond ]
  %.lcssa14 = phi i64 [ %5, %for.cond ]
  %.lcssa = phi i64 [ %6, %for.cond ], !dbg !4674
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !4669, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %.lcssa, metadata !4663, metadata !DIExpression()), !dbg !4674
  %add39 = add nuw i64 %indvars.iv.lcssa, 1, !dbg !4710
  %idxprom40 = and i64 %add39, 4294967295, !dbg !4711
  %arrayidx41 = getelementptr inbounds i64, i64* %.pre6, i64 %idxprom40, !dbg !4711
  %7 = load i64, i64* %arrayidx41, align 8, !dbg !4711
  %add42 = add nsw i64 %.lcssa, %7, !dbg !4712
  call void @llvm.dbg.value(metadata i64 %add42, metadata !4663, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 %.pre, metadata !4670, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %.lcssa14, metadata !4664, metadata !DIExpression()), !dbg !4674
  %add46 = add nsw i64 %.lcssa14, %add42, !dbg !4713
  call void @llvm.dbg.value(metadata i64 %add46, metadata !4664, metadata !DIExpression()), !dbg !4674
  store i64 %add46, i64* %all, align 8, !dbg !4713
  %8 = load i64, i64* %.pre6, align 8, !dbg !4714
  call void @llvm.dbg.value(metadata i64 %8, metadata !4671, metadata !DIExpression()), !dbg !4674
  store i64 %8, i64* %count1, align 8, !dbg !4715
  %arrayidx52 = getelementptr inbounds i64, i64* %.pre6, i64 1, !dbg !4716
  %9 = load i64, i64* %arrayidx52, align 8, !dbg !4716
  call void @llvm.dbg.value(metadata i64 %9, metadata !4672, metadata !DIExpression()), !dbg !4674
  %call53 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call) #7, !dbg !4717
  %count54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call53, i64 0, i32 8, !dbg !4719
  %10 = load i64, i64* %count54, align 8, !dbg !4719
  call void @llvm.dbg.value(metadata i64* %all, metadata !4664, metadata !DIExpression(DW_OP_deref)), !dbg !4674
  call void @llvm.dbg.value(metadata i64* %count1, metadata !4671, metadata !DIExpression(DW_OP_deref)), !dbg !4674
  %call55 = call fastcc zeroext i8 @check_counter(%union.gimple_statement_d* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i64* nonnull %count1, i64* nonnull %all, i64 %10) #7, !dbg !4720
  %tobool56 = icmp eq i8 %call55, 0, !dbg !4720
  br i1 %tobool56, label %if.end59, label %if.then57, !dbg !4721

if.then57:                                        ; preds = %for.end
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4722
  call void @gimple_remove_histogram_value(%struct.function* %11, %union.gimple_statement_d* %call, %struct.histogram_value_t* nonnull %call26) #7, !dbg !4724
  br label %cleanup, !dbg !4725

if.end59:                                         ; preds = %for.end
  %12 = load i32, i32* @flag_profile_correction, align 4, !dbg !4726
  %tobool60 = icmp eq i32 %12, 0, !dbg !4726
  br i1 %tobool60, label %if.end59.if.end65_crit_edge, label %land.lhs.true, !dbg !4728

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  %.pre7 = load i64, i64* %count1, align 8, !dbg !4729
  %.pre8 = load i64, i64* %all, align 8, !dbg !4729
  %.pre11 = add nsw i64 %.pre7, %9, !dbg !4729
  br label %if.end65, !dbg !4728

land.lhs.true:                                    ; preds = %if.end59
  %13 = load i64, i64* %count1, align 8, !dbg !4730
  call void @llvm.dbg.value(metadata i64 %13, metadata !4671, metadata !DIExpression()), !dbg !4674
  %add61 = add nsw i64 %13, %9, !dbg !4731
  %14 = load i64, i64* %all, align 8, !dbg !4732
  call void @llvm.dbg.value(metadata i64 %14, metadata !4664, metadata !DIExpression()), !dbg !4674
  %cmp62 = icmp sgt i64 %add61, %14, !dbg !4733
  br i1 %cmp62, label %if.then63, label %if.end65, !dbg !4734

if.then63:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i64 %13, metadata !4671, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %add61, metadata !4664, metadata !DIExpression()), !dbg !4674
  store i64 %add61, i64* %all, align 8, !dbg !4735
  br label %if.end65, !dbg !4736

if.end65:                                         ; preds = %if.end59.if.end65_crit_edge, %if.then63, %land.lhs.true
  %add66.pre-phi = phi i64 [ %.pre11, %if.end59.if.end65_crit_edge ], [ %add61, %if.then63 ], [ %add61, %land.lhs.true ], !dbg !4729
  %15 = phi i64 [ %.pre8, %if.end59.if.end65_crit_edge ], [ %add61, %if.then63 ], [ %14, %land.lhs.true ], !dbg !4729
  call void @llvm.dbg.value(metadata i64 %15, metadata !4664, metadata !DIExpression()), !dbg !4674
  %cmp67 = icmp sgt i64 %add66.pre-phi, %15, !dbg !4729
  br i1 %cmp67, label %cond.true, label %cond.end, !dbg !4729

cond.true:                                        ; preds = %if.end65
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 1007, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4729
  %.pre9 = load i64, i64* %all, align 8, !dbg !4737
  br label %cond.end, !dbg !4729

cond.end:                                         ; preds = %if.end65, %cond.true
  %16 = phi i64 [ %15, %if.end65 ], [ %.pre9, %cond.true ], !dbg !4737
  call void @llvm.dbg.value(metadata i64 0, metadata !4662, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 0, metadata !4669, metadata !DIExpression()), !dbg !4674
  %17 = load i32, i32* %steps30, align 4, !dbg !4742
  br label %for.cond68, !dbg !4743

for.cond68:                                       ; preds = %for.inc82, %cond.end
  %count.0 = phi i64 [ 0, %cond.end ], [ %add78, %for.inc82 ], !dbg !4674
  %i.1 = phi i32 [ 0, %cond.end ], [ %inc83, %for.inc82 ], !dbg !4744
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !4669, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4662, metadata !DIExpression()), !dbg !4674
  %exitcond = icmp eq i32 %i.1, %17, !dbg !4745
  br i1 %exitcond, label %for.end84, label %for.body73, !dbg !4746

for.body73:                                       ; preds = %for.cond68
  %18 = load i64*, i64** %counters, align 8, !dbg !4747
  %idxprom76 = zext i32 %i.1 to i64, !dbg !4748
  %arrayidx77 = getelementptr inbounds i64, i64* %18, i64 %idxprom76, !dbg !4748
  %19 = load i64, i64* %arrayidx77, align 8, !dbg !4748
  %add78 = add nsw i64 %count.0, %19, !dbg !4749
  call void @llvm.dbg.value(metadata i64 %add78, metadata !4662, metadata !DIExpression()), !dbg !4674
  %mul = shl nsw i64 %add78, 1, !dbg !4750
  call void @llvm.dbg.value(metadata i64 %16, metadata !4664, metadata !DIExpression()), !dbg !4674
  %cmp79 = icmp slt i64 %mul, %16, !dbg !4751
  br i1 %cmp79, label %for.inc82, label %for.end84, !dbg !4752

for.inc82:                                        ; preds = %for.body73
  %inc83 = add i32 %i.1, 1, !dbg !4753
  call void @llvm.dbg.value(metadata i32 %inc83, metadata !4669, metadata !DIExpression()), !dbg !4674
  br label %for.cond68, !dbg !4754, !llvm.loop !4755

for.end84:                                        ; preds = %for.cond68, %for.body73
  %i.1.lcssa = phi i32 [ %i.1, %for.cond68 ], [ %i.1, %for.body73 ], !dbg !4744
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !4669, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !4669, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !4669, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !4669, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !4669, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !4669, metadata !DIExpression()), !dbg !4674
  %cmp85 = icmp eq i32 %i.1.lcssa, %.pre, !dbg !4757
  br i1 %cmp85, label %cleanup, label %lor.lhs.false86, !dbg !4759

lor.lhs.false86:                                  ; preds = %for.end84
  %call87 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call) #7, !dbg !4760
  %call88 = call zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def* %call87) #6, !dbg !4761
  %tobool89 = icmp eq i8 %call88, 0, !dbg !4761
  br i1 %tobool89, label %if.end91, label %cleanup, !dbg !4762

if.end91:                                         ; preds = %lor.lhs.false86
  %20 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4763
  call void @gimple_remove_histogram_value(%struct.function* %20, %union.gimple_statement_d* %call, %struct.histogram_value_t* nonnull %call26) #7, !dbg !4764
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4765
  %tobool93 = icmp eq %struct._IO_FILE* %21, null, !dbg !4765
  br i1 %tobool93, label %if.end96, label %if.then94, !dbg !4767

if.then94:                                        ; preds = %if.end91
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !4768
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4770
  call void @print_gimple_stmt(%struct._IO_FILE* %22, %union.gimple_statement_d* %call, i32 0, i32 2) #6, !dbg !4771
  br label %if.end96, !dbg !4772

if.end96:                                         ; preds = %if.end91, %if.then94
  %23 = load i64, i64* %all, align 8, !dbg !4773
  call void @llvm.dbg.value(metadata i64 %23, metadata !4664, metadata !DIExpression()), !dbg !4674
  %cmp97 = icmp sgt i64 %23, 0, !dbg !4775
  br i1 %cmp97, label %if.then99, label %if.end96.if.end107_crit_edge, !dbg !4776

if.end96.if.end107_crit_edge:                     ; preds = %if.end96
  %.pre10 = load i64, i64* %count1, align 8, !dbg !4777
  br label %if.end107, !dbg !4776

if.then99:                                        ; preds = %if.end96
  %24 = load i64, i64* %count1, align 8, !dbg !4778
  call void @llvm.dbg.value(metadata i64 %24, metadata !4671, metadata !DIExpression()), !dbg !4674
  %mul100 = mul nsw i64 %24, 10000, !dbg !4780
  call void @llvm.dbg.value(metadata i64 %23, metadata !4664, metadata !DIExpression()), !dbg !4674
  %div = sdiv i64 %23, 2, !dbg !4781
  %add101 = add nsw i64 %mul100, %div, !dbg !4782
  call void @llvm.dbg.value(metadata i64 %23, metadata !4664, metadata !DIExpression()), !dbg !4674
  %div102 = sdiv i64 %add101, %23, !dbg !4783
  call void @llvm.dbg.value(metadata i64 %div102, metadata !4667, metadata !DIExpression()), !dbg !4674
  %mul103 = mul nsw i64 %9, 10000, !dbg !4784
  call void @llvm.dbg.value(metadata i64 %23, metadata !4664, metadata !DIExpression()), !dbg !4674
  %add105 = add nsw i64 %mul103, %div, !dbg !4785
  call void @llvm.dbg.value(metadata i64 %23, metadata !4664, metadata !DIExpression()), !dbg !4674
  %div106 = sdiv i64 %add105, %23, !dbg !4786
  call void @llvm.dbg.value(metadata i64 %div106, metadata !4668, metadata !DIExpression()), !dbg !4674
  %phitmp = trunc i64 %div102 to i32, !dbg !4787
  %phitmp5 = trunc i64 %div106 to i32, !dbg !4787
  br label %if.end107, !dbg !4787

if.end107:                                        ; preds = %if.end96.if.end107_crit_edge, %if.then99
  %25 = phi i64 [ %24, %if.then99 ], [ %.pre10, %if.end96.if.end107_crit_edge ], !dbg !4777
  %prob1.0 = phi i32 [ %phitmp, %if.then99 ], [ 0, %if.end96.if.end107_crit_edge ]
  %prob2.0 = phi i32 [ %phitmp5, %if.then99 ], [ 0, %if.end96.if.end107_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %25, metadata !4671, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %23, metadata !4664, metadata !DIExpression()), !dbg !4674
  %call110 = call fastcc %union.tree_node* @gimple_mod_subtract(%union.gimple_statement_d* %call, i32 %prob1.0, i32 %prob2.0, i32 %i.1.lcssa, i64 %25, i64 %9, i64 %23) #7, !dbg !4788
  call void @llvm.dbg.value(metadata %union.tree_node* %call110, metadata !4666, metadata !DIExpression()), !dbg !4674
  call void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator* %si, %union.tree_node* %call110) #6, !dbg !4789
  br label %cleanup, !dbg !4790

cleanup:                                          ; preds = %lor.lhs.false86, %if.end25, %lor.lhs.false19, %if.end16, %entry, %for.end84, %lor.lhs.false9, %if.end107, %if.then57
  %retval.0 = phi i8 [ 0, %if.then57 ], [ 1, %if.end107 ], [ 0, %entry ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false19 ], [ 0, %if.end16 ], [ 0, %if.end25 ], [ 0, %lor.lhs.false86 ], [ 0, %for.end84 ], !dbg !4674
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4791
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4791
  ret i8 %retval.0, !dbg !4791
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @gimple_divmod_fixed_value_transform(%struct.gimple_stmt_iterator* %si) unnamed_addr #5 !dbg !4792 {
entry:
  %count = alloca i64, align 8
  %all = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !4794, metadata !DIExpression()), !dbg !4805
  %0 = bitcast i64* %count to i8*, !dbg !4806
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4806
  %1 = bitcast i64* %all to i8*, !dbg !4806
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4806
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %si) #7, !dbg !4807
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !4804, metadata !DIExpression()), !dbg !4805
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #7, !dbg !4808
  %cmp = icmp eq i32 %call1, 6, !dbg !4810
  br i1 %cmp, label %if.end, label %cleanup, !dbg !4811

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call) #7, !dbg !4812
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4812
  %2 = bitcast %union.tree_node** %type to i64**, !dbg !4812
  %3 = load i64*, i64** %2, align 8, !dbg !4812
  %bf.load = load i64, i64* %3, align 8, !dbg !4812
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4812
  %cmp3 = icmp eq i64 %bf.cast1, 6, !dbg !4812
  br i1 %cmp3, label %if.end22, label %lor.lhs.false, !dbg !4812

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call) #7, !dbg !4812
  %type6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4812
  %4 = bitcast %union.tree_node** %type6 to i64**, !dbg !4812
  %5 = load i64*, i64** %4, align 8, !dbg !4812
  %bf.load8 = load i64, i64* %5, align 8, !dbg !4812
  %bf.cast102 = and i64 %bf.load8, 65535, !dbg !4812
  %cmp11 = icmp eq i64 %bf.cast102, 7, !dbg !4812
  br i1 %cmp11, label %if.end22, label %lor.lhs.false12, !dbg !4812

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %call13 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call) #7, !dbg !4812
  %type15 = getelementptr inbounds %union.tree_node, %union.tree_node* %call13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4812
  %6 = bitcast %union.tree_node** %type15 to i64**, !dbg !4812
  %7 = load i64*, i64** %6, align 8, !dbg !4812
  %bf.load17 = load i64, i64* %7, align 8, !dbg !4812
  %bf.cast193 = and i64 %bf.load17, 65535, !dbg !4812
  %cmp20 = icmp eq i64 %bf.cast193, 8, !dbg !4812
  br i1 %cmp20, label %if.end22, label %cleanup, !dbg !4814

if.end22:                                         ; preds = %lor.lhs.false12, %lor.lhs.false, %if.end
  %call23 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call) #7, !dbg !4815
  call void @llvm.dbg.value(metadata i32 %call23, metadata !4796, metadata !DIExpression()), !dbg !4805
  switch i32 %call23, label %cleanup [
    i32 67, label %if.end27
    i32 71, label %if.end27
  ], !dbg !4816

if.end27:                                         ; preds = %if.end22, %if.end22
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4818
  %call28 = tail call %struct.histogram_value_t* @gimple_histogram_value_of_type(%struct.function* %8, %union.gimple_statement_d* %call, i32 2) #7, !dbg !4819
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call28, metadata !4795, metadata !DIExpression()), !dbg !4805
  %tobool = icmp eq %struct.histogram_value_t* %call28, null, !dbg !4820
  br i1 %tobool, label %cleanup, label %if.end30, !dbg !4822

if.end30:                                         ; preds = %if.end27
  %value31 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call28, i64 0, i32 0, i32 0, !dbg !4823
  %9 = load %union.tree_node*, %union.tree_node** %value31, align 8, !dbg !4823
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !4801, metadata !DIExpression()), !dbg !4805
  %counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call28, i64 0, i32 0, i32 2, !dbg !4824
  %10 = load i64*, i64** %counters, align 8, !dbg !4824
  %11 = load i64, i64* %10, align 8, !dbg !4825
  call void @llvm.dbg.value(metadata i64 %11, metadata !4797, metadata !DIExpression()), !dbg !4805
  %arrayidx35 = getelementptr inbounds i64, i64* %10, i64 1, !dbg !4826
  %12 = load i64, i64* %arrayidx35, align 8, !dbg !4826
  call void @llvm.dbg.value(metadata i64 %12, metadata !4798, metadata !DIExpression()), !dbg !4805
  store i64 %12, i64* %count, align 8, !dbg !4827
  %arrayidx38 = getelementptr inbounds i64, i64* %10, i64 2, !dbg !4828
  %13 = load i64, i64* %arrayidx38, align 8, !dbg !4828
  call void @llvm.dbg.value(metadata i64 %13, metadata !4799, metadata !DIExpression()), !dbg !4805
  store i64 %13, i64* %all, align 8, !dbg !4829
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4830
  tail call void @gimple_remove_histogram_value(%struct.function* %14, %union.gimple_statement_d* %call, %struct.histogram_value_t* nonnull %call28) #7, !dbg !4831
  %call40 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %call) #7, !dbg !4832
  %call41 = tail call i32 @simple_cst_equal(%union.tree_node* %call40, %union.tree_node* %9) #6, !dbg !4834
  %cmp42 = icmp eq i32 %call41, 1, !dbg !4835
  br i1 %cmp42, label %lor.lhs.false43, label %cleanup, !dbg !4836

lor.lhs.false43:                                  ; preds = %if.end30
  call void @llvm.dbg.value(metadata i64 %12, metadata !4798, metadata !DIExpression()), !dbg !4805
  %mul = shl nsw i64 %12, 1, !dbg !4837
  call void @llvm.dbg.value(metadata i64 %13, metadata !4799, metadata !DIExpression()), !dbg !4805
  %cmp44 = icmp slt i64 %mul, %13, !dbg !4838
  br i1 %cmp44, label %cleanup, label %lor.lhs.false45, !dbg !4839

lor.lhs.false45:                                  ; preds = %lor.lhs.false43
  %call46 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call) #7, !dbg !4840
  %call47 = tail call zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def* %call46) #6, !dbg !4841
  %tobool48 = icmp eq i8 %call47, 0, !dbg !4841
  br i1 %tobool48, label %if.end50, label %cleanup, !dbg !4842

if.end50:                                         ; preds = %lor.lhs.false45
  %call51 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call) #7, !dbg !4843
  %count52 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call51, i64 0, i32 8, !dbg !4845
  %15 = load i64, i64* %count52, align 8, !dbg !4845
  call void @llvm.dbg.value(metadata i64* %count, metadata !4798, metadata !DIExpression(DW_OP_deref)), !dbg !4805
  call void @llvm.dbg.value(metadata i64* %all, metadata !4799, metadata !DIExpression(DW_OP_deref)), !dbg !4805
  %call53 = call fastcc zeroext i8 @check_counter(%union.gimple_statement_d* %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i64* nonnull %count, i64* nonnull %all, i64 %15) #7, !dbg !4846
  %tobool54 = icmp eq i8 %call53, 0, !dbg !4846
  br i1 %tobool54, label %if.end56, label %cleanup, !dbg !4847

if.end56:                                         ; preds = %if.end50
  %16 = load i64, i64* %all, align 8, !dbg !4848
  call void @llvm.dbg.value(metadata i64 %16, metadata !4799, metadata !DIExpression()), !dbg !4805
  %cmp57 = icmp sgt i64 %16, 0, !dbg !4850
  br i1 %cmp57, label %if.then59, label %if.end62, !dbg !4851

if.then59:                                        ; preds = %if.end56
  %17 = load i64, i64* %count, align 8, !dbg !4852
  call void @llvm.dbg.value(metadata i64 %17, metadata !4798, metadata !DIExpression()), !dbg !4805
  %mul60 = mul nsw i64 %17, 10000, !dbg !4853
  call void @llvm.dbg.value(metadata i64 %16, metadata !4799, metadata !DIExpression()), !dbg !4805
  %div = sdiv i64 %16, 2, !dbg !4854
  %add = add nsw i64 %mul60, %div, !dbg !4855
  call void @llvm.dbg.value(metadata i64 %16, metadata !4799, metadata !DIExpression()), !dbg !4805
  %div61 = sdiv i64 %add, %16, !dbg !4856
  call void @llvm.dbg.value(metadata i64 %div61, metadata !4803, metadata !DIExpression()), !dbg !4805
  %phitmp = trunc i64 %div61 to i32, !dbg !4857
  br label %if.end62, !dbg !4857

if.end62:                                         ; preds = %if.end56, %if.then59
  %prob.0 = phi i32 [ %phitmp, %if.then59 ], [ 0, %if.end56 ]
  %call63 = call %union.tree_node* @get_gcov_type() #6, !dbg !4858
  %shr = ashr i64 %11, 63, !dbg !4859
  %call65 = call %union.tree_node* @build_int_cst_wide(%union.tree_node* %call63, i64 %11, i64 %shr) #6, !dbg !4860
  call void @llvm.dbg.value(metadata %union.tree_node* %call65, metadata !4802, metadata !DIExpression()), !dbg !4805
  %18 = load i64, i64* %count, align 8, !dbg !4861
  call void @llvm.dbg.value(metadata i64 %18, metadata !4798, metadata !DIExpression()), !dbg !4805
  %19 = load i64, i64* %all, align 8, !dbg !4862
  call void @llvm.dbg.value(metadata i64 %19, metadata !4799, metadata !DIExpression()), !dbg !4805
  %call67 = call fastcc %union.tree_node* @gimple_divmod_fixed_value(%union.gimple_statement_d* %call, %union.tree_node* %call65, i32 %prob.0, i64 %18, i64 %19) #7, !dbg !4863
  call void @llvm.dbg.value(metadata %union.tree_node* %call67, metadata !4800, metadata !DIExpression()), !dbg !4805
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4864
  %tobool68 = icmp eq %struct._IO_FILE* %20, null, !dbg !4864
  br i1 %tobool68, label %if.end73, label %if.then69, !dbg !4866

if.then69:                                        ; preds = %if.end62
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !4867
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4869
  call void @print_generic_expr(%struct._IO_FILE* %21, %union.tree_node* %9, i32 2) #6, !dbg !4870
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4871
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !4872
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4873
  call void @print_generic_expr(%struct._IO_FILE* %23, %union.tree_node* %call65, i32 2) #6, !dbg !4874
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4875
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !4876
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4877
  call void @print_gimple_stmt(%struct._IO_FILE* %25, %union.gimple_statement_d* %call, i32 0, i32 2) #6, !dbg !4878
  br label %if.end73, !dbg !4879

if.end73:                                         ; preds = %if.end62, %if.then69
  call void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator* %si, %union.tree_node* %call67) #6, !dbg !4880
  br label %cleanup, !dbg !4881

cleanup:                                          ; preds = %if.end50, %lor.lhs.false45, %if.end30, %if.end27, %entry, %lor.lhs.false43, %if.end22, %lor.lhs.false12, %if.end73
  %retval.0 = phi i8 [ 1, %if.end73 ], [ 0, %entry ], [ 0, %lor.lhs.false12 ], [ 0, %if.end22 ], [ 0, %if.end27 ], [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false43 ], [ 0, %if.end30 ], [ 0, %if.end50 ], !dbg !4805
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4882
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4882
  ret i8 %retval.0, !dbg !4882
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @gimple_mod_pow2_value_transform(%struct.gimple_stmt_iterator* %si) unnamed_addr #5 !dbg !4883 {
entry:
  %count = alloca i64, align 8
  %all = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !4885, metadata !DIExpression()), !dbg !4896
  %0 = bitcast i64* %count to i8*, !dbg !4897
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4897
  %1 = bitcast i64* %all to i8*, !dbg !4897
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4897
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %si) #7, !dbg !4898
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !4895, metadata !DIExpression()), !dbg !4896
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #7, !dbg !4899
  %cmp = icmp eq i32 %call1, 6, !dbg !4901
  br i1 %cmp, label %if.end, label %cleanup, !dbg !4902

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call) #7, !dbg !4903
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4903
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4903
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !4891, metadata !DIExpression()), !dbg !4896
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4904
  %bf.load = load i64, i64* %3, align 8, !dbg !4904
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4904
  %cmp3 = icmp eq i64 %bf.cast1, 6, !dbg !4904
  br i1 %cmp3, label %if.end16, label %lor.lhs.false, !dbg !4904

lor.lhs.false:                                    ; preds = %if.end
  %cmp8 = icmp eq i64 %bf.cast1, 7, !dbg !4904
  br i1 %cmp8, label %if.end16, label %lor.lhs.false9, !dbg !4904

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %cmp14 = icmp eq i64 %bf.cast1, 8, !dbg !4904
  br i1 %cmp14, label %if.end16, label %cleanup, !dbg !4906

if.end16:                                         ; preds = %lor.lhs.false9, %lor.lhs.false, %if.end
  %call17 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call) #7, !dbg !4907
  call void @llvm.dbg.value(metadata i32 %call17, metadata !4887, metadata !DIExpression()), !dbg !4896
  %cmp18 = icmp eq i32 %call17, 71, !dbg !4908
  br i1 %cmp18, label %lor.lhs.false19, label %cleanup, !dbg !4910

lor.lhs.false19:                                  ; preds = %if.end16
  %bf.load21 = load i64, i64* %3, align 8, !dbg !4911
  %bf.cast234 = and i64 %bf.load21, 2097152, !dbg !4911
  %tobool = icmp eq i64 %bf.cast234, 0, !dbg !4911
  br i1 %tobool, label %cleanup, label %if.end25, !dbg !4912

if.end25:                                         ; preds = %lor.lhs.false19
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4913
  %call26 = tail call %struct.histogram_value_t* @gimple_histogram_value_of_type(%struct.function* %4, %union.gimple_statement_d* %call, i32 1) #7, !dbg !4914
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call26, metadata !4886, metadata !DIExpression()), !dbg !4896
  %tobool27 = icmp eq %struct.histogram_value_t* %call26, null, !dbg !4915
  br i1 %tobool27, label %cleanup, label %if.end29, !dbg !4917

if.end29:                                         ; preds = %if.end25
  %value30 = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call26, i64 0, i32 0, i32 0, !dbg !4918
  %5 = load %union.tree_node*, %union.tree_node** %value30, align 8, !dbg !4918
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !4893, metadata !DIExpression()), !dbg !4896
  %counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call26, i64 0, i32 0, i32 2, !dbg !4919
  %6 = load i64*, i64** %counters, align 8, !dbg !4919
  %7 = load i64, i64* %6, align 8, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %7, metadata !4889, metadata !DIExpression()), !dbg !4896
  %arrayidx34 = getelementptr inbounds i64, i64* %6, i64 1, !dbg !4921
  %8 = load i64, i64* %arrayidx34, align 8, !dbg !4921
  call void @llvm.dbg.value(metadata i64 %8, metadata !4888, metadata !DIExpression()), !dbg !4896
  store i64 %8, i64* %count, align 8, !dbg !4922
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4923
  tail call void @gimple_remove_histogram_value(%struct.function* %9, %union.gimple_statement_d* %call, %struct.histogram_value_t* nonnull %call26) #7, !dbg !4924
  %call36 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %call) #7, !dbg !4925
  %call37 = tail call i32 @simple_cst_equal(%union.tree_node* %call36, %union.tree_node* %5) #6, !dbg !4927
  %cmp38 = icmp ne i32 %call37, 1, !dbg !4928
  call void @llvm.dbg.value(metadata i64 %8, metadata !4888, metadata !DIExpression()), !dbg !4896
  %cmp40 = icmp slt i64 %8, %7, !dbg !4929
  %or.cond = or i1 %cmp38, %cmp40, !dbg !4930
  br i1 %or.cond, label %cleanup, label %lor.lhs.false41, !dbg !4930

lor.lhs.false41:                                  ; preds = %if.end29
  %call42 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call) #7, !dbg !4931
  %call43 = tail call zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def* %call42) #6, !dbg !4932
  %tobool44 = icmp eq i8 %call43, 0, !dbg !4932
  br i1 %tobool44, label %if.end46, label %cleanup, !dbg !4933

if.end46:                                         ; preds = %lor.lhs.false41
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4934
  %tobool47 = icmp eq %struct._IO_FILE* %10, null, !dbg !4934
  br i1 %tobool47, label %if.end50, label %if.then48, !dbg !4936

if.then48:                                        ; preds = %if.end46
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0)) #6, !dbg !4937
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4939
  tail call void @print_gimple_stmt(%struct._IO_FILE* %11, %union.gimple_statement_d* %call, i32 0, i32 2) #6, !dbg !4940
  br label %if.end50, !dbg !4941

if.end50:                                         ; preds = %if.end46, %if.then48
  call void @llvm.dbg.value(metadata i64 %8, metadata !4888, metadata !DIExpression()), !dbg !4896
  %add = add nsw i64 %8, %7, !dbg !4942
  call void @llvm.dbg.value(metadata i64 %add, metadata !4890, metadata !DIExpression()), !dbg !4896
  store i64 %add, i64* %all, align 8, !dbg !4943
  %call51 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call) #7, !dbg !4944
  %count52 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call51, i64 0, i32 8, !dbg !4946
  %12 = load i64, i64* %count52, align 8, !dbg !4946
  call void @llvm.dbg.value(metadata i64* %count, metadata !4888, metadata !DIExpression(DW_OP_deref)), !dbg !4896
  call void @llvm.dbg.value(metadata i64* %all, metadata !4890, metadata !DIExpression(DW_OP_deref)), !dbg !4896
  %call53 = call fastcc zeroext i8 @check_counter(%union.gimple_statement_d* %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i64* nonnull %count, i64* nonnull %all, i64 %12) #7, !dbg !4947
  %tobool54 = icmp eq i8 %call53, 0, !dbg !4947
  br i1 %tobool54, label %if.end56, label %cleanup, !dbg !4948

if.end56:                                         ; preds = %if.end50
  %13 = load i64, i64* %all, align 8, !dbg !4949
  call void @llvm.dbg.value(metadata i64 %13, metadata !4890, metadata !DIExpression()), !dbg !4896
  %cmp57 = icmp sgt i64 %13, 0, !dbg !4951
  br i1 %cmp57, label %if.then59, label %if.end56.if.end62_crit_edge, !dbg !4952

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  %.pre = load i64, i64* %count, align 8, !dbg !4953
  br label %if.end62, !dbg !4952

if.then59:                                        ; preds = %if.end56
  %14 = load i64, i64* %count, align 8, !dbg !4954
  call void @llvm.dbg.value(metadata i64 %14, metadata !4888, metadata !DIExpression()), !dbg !4896
  %mul = mul nsw i64 %14, 10000, !dbg !4955
  call void @llvm.dbg.value(metadata i64 %13, metadata !4890, metadata !DIExpression()), !dbg !4896
  %div = sdiv i64 %13, 2, !dbg !4956
  %add60 = add nsw i64 %mul, %div, !dbg !4957
  call void @llvm.dbg.value(metadata i64 %13, metadata !4890, metadata !DIExpression()), !dbg !4896
  %div61 = sdiv i64 %add60, %13, !dbg !4958
  call void @llvm.dbg.value(metadata i64 %div61, metadata !4894, metadata !DIExpression()), !dbg !4896
  %phitmp = trunc i64 %div61 to i32, !dbg !4959
  br label %if.end62, !dbg !4959

if.end62:                                         ; preds = %if.end56.if.end62_crit_edge, %if.then59
  %15 = phi i64 [ %14, %if.then59 ], [ %.pre, %if.end56.if.end62_crit_edge ], !dbg !4953
  %prob.0 = phi i32 [ %phitmp, %if.then59 ], [ 0, %if.end56.if.end62_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !4888, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i64 %13, metadata !4890, metadata !DIExpression()), !dbg !4896
  %call64 = call fastcc %union.tree_node* @gimple_mod_pow2(%union.gimple_statement_d* %call, i32 %prob.0, i64 %15, i64 %13) #7, !dbg !4960
  call void @llvm.dbg.value(metadata %union.tree_node* %call64, metadata !4892, metadata !DIExpression()), !dbg !4896
  call void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator* %si, %union.tree_node* %call64) #6, !dbg !4961
  br label %cleanup, !dbg !4962

cleanup:                                          ; preds = %if.end50, %lor.lhs.false41, %if.end25, %lor.lhs.false19, %if.end16, %entry, %if.end29, %lor.lhs.false9, %if.end62
  %retval.0 = phi i8 [ 1, %if.end62 ], [ 0, %entry ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false19 ], [ 0, %if.end16 ], [ 0, %if.end25 ], [ 0, %lor.lhs.false41 ], [ 0, %if.end29 ], [ 0, %if.end50 ], !dbg !4896
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4963
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4963
  ret i8 %retval.0, !dbg !4963
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @gimple_stringops_transform(%struct.gimple_stmt_iterator* %gsi) unnamed_addr #5 !dbg !4964 {
entry:
  %count = alloca i64, align 8
  %all = alloca i64, align 8
  %size_arg = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4966, metadata !DIExpression()), !dbg !4982
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4983
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !4967, metadata !DIExpression()), !dbg !4982
  %0 = bitcast i64* %count to i8*, !dbg !4984
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4984
  %1 = bitcast i64* %all to i8*, !dbg !4984
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4984
  %2 = bitcast i32* %size_arg to i8*, !dbg !4985
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8, !dbg !4985
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #7, !dbg !4986
  %cmp = icmp eq i32 %call1, 8, !dbg !4988
  br i1 %cmp, label %if.end, label %cleanup, !dbg !4989

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call) #7, !dbg !4990
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !4968, metadata !DIExpression()), !dbg !4982
  %tobool = icmp eq %union.tree_node* %call2, null, !dbg !4991
  br i1 %tobool, label %cleanup, label %if.end4, !dbg !4993

if.end4:                                          ; preds = %if.end
  %function_code = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 5, !dbg !4994
  %bf.load = load i32, i32* %function_code, align 8, !dbg !4994
  %bf.clear = and i32 %bf.load, 2047, !dbg !4994
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4970, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.value(metadata i32* %size_arg, metadata !4981, metadata !DIExpression(DW_OP_deref)), !dbg !4982
  %call5 = call fastcc zeroext i8 @interesting_stringop_to_profile_p(%union.tree_node* nonnull %call2, %union.gimple_statement_d* %call, i32* nonnull %size_arg) #7, !dbg !4995
  %tobool6 = icmp eq i8 %call5, 0, !dbg !4995
  br i1 %tobool6, label %cleanup, label %if.end8, !dbg !4997

if.end8:                                          ; preds = %if.end4
  %3 = load i32, i32* %size_arg, align 4, !dbg !4998
  call void @llvm.dbg.value(metadata i32 %3, metadata !4981, metadata !DIExpression()), !dbg !4982
  %call9 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 %3) #7, !dbg !4999
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !4969, metadata !DIExpression()), !dbg !4982
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5000
  %bf.load10 = load i64, i64* %4, align 8, !dbg !5000
  %bf.cast1 = and i64 %bf.load10, 65535, !dbg !5002
  %cmp12 = icmp eq i64 %bf.cast1, 23, !dbg !5002
  br i1 %cmp12, label %cleanup, label %if.end14, !dbg !5003

if.end14:                                         ; preds = %if.end8
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5004
  %call15 = call %struct.histogram_value_t* @gimple_histogram_value_of_type(%struct.function* %5, %union.gimple_statement_d* %call, i32 2) #7, !dbg !5005
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call15, metadata !4971, metadata !DIExpression()), !dbg !4982
  %tobool16 = icmp eq %struct.histogram_value_t* %call15, null, !dbg !5006
  br i1 %tobool16, label %cleanup, label %if.end18, !dbg !5008

if.end18:                                         ; preds = %if.end14
  %counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call15, i64 0, i32 0, i32 2, !dbg !5009
  %6 = load i64*, i64** %counters, align 8, !dbg !5009
  %7 = load i64, i64* %6, align 8, !dbg !5010
  call void @llvm.dbg.value(metadata i64 %7, metadata !4974, metadata !DIExpression()), !dbg !4982
  %arrayidx21 = getelementptr inbounds i64, i64* %6, i64 1, !dbg !5011
  %8 = load i64, i64* %arrayidx21, align 8, !dbg !5011
  call void @llvm.dbg.value(metadata i64 %8, metadata !4972, metadata !DIExpression()), !dbg !4982
  store i64 %8, i64* %count, align 8, !dbg !5012
  %arrayidx24 = getelementptr inbounds i64, i64* %6, i64 2, !dbg !5013
  %9 = load i64, i64* %arrayidx24, align 8, !dbg !5013
  call void @llvm.dbg.value(metadata i64 %9, metadata !4973, metadata !DIExpression()), !dbg !4982
  store i64 %9, i64* %all, align 8, !dbg !5014
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5015
  call void @gimple_remove_histogram_value(%struct.function* %10, %union.gimple_statement_d* %call, %struct.histogram_value_t* nonnull %call15) #7, !dbg !5016
  call void @llvm.dbg.value(metadata i64 %8, metadata !4972, metadata !DIExpression()), !dbg !4982
  %mul = mul nsw i64 %8, 6, !dbg !5017
  %div = sdiv i64 %mul, 5, !dbg !5019
  call void @llvm.dbg.value(metadata i64 %9, metadata !4973, metadata !DIExpression()), !dbg !4982
  %cmp26 = icmp slt i64 %div, %9, !dbg !5020
  br i1 %cmp26, label %cleanup, label %lor.lhs.false, !dbg !5021

lor.lhs.false:                                    ; preds = %if.end18
  %call27 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call) #7, !dbg !5022
  %call28 = call zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def* %call27) #6, !dbg !5023
  %tobool29 = icmp eq i8 %call28, 0, !dbg !5023
  br i1 %tobool29, label %if.end31, label %cleanup, !dbg !5024

if.end31:                                         ; preds = %lor.lhs.false
  %call32 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call) #7, !dbg !5025
  %count33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call32, i64 0, i32 8, !dbg !5027
  %11 = load i64, i64* %count33, align 8, !dbg !5027
  call void @llvm.dbg.value(metadata i64* %count, metadata !4972, metadata !DIExpression(DW_OP_deref)), !dbg !4982
  call void @llvm.dbg.value(metadata i64* %all, metadata !4973, metadata !DIExpression(DW_OP_deref)), !dbg !4982
  %call34 = call fastcc zeroext i8 @check_counter(%union.gimple_statement_d* %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i64* nonnull %count, i64* nonnull %all, i64 %11) #7, !dbg !5028
  %tobool35 = icmp eq i8 %call34, 0, !dbg !5028
  br i1 %tobool35, label %if.end37, label %cleanup, !dbg !5029

if.end37:                                         ; preds = %if.end31
  %12 = load i64, i64* %all, align 8, !dbg !5030
  call void @llvm.dbg.value(metadata i64 %12, metadata !4973, metadata !DIExpression()), !dbg !4982
  %cmp38 = icmp sgt i64 %12, 0, !dbg !5032
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !5033

if.then40:                                        ; preds = %if.end37
  %13 = load i64, i64* %count, align 8, !dbg !5034
  call void @llvm.dbg.value(metadata i64 %13, metadata !4972, metadata !DIExpression()), !dbg !4982
  %mul41 = mul nsw i64 %13, 10000, !dbg !5035
  call void @llvm.dbg.value(metadata i64 %12, metadata !4973, metadata !DIExpression()), !dbg !4982
  %div42 = sdiv i64 %12, 2, !dbg !5036
  %add = add nsw i64 %mul41, %div42, !dbg !5037
  call void @llvm.dbg.value(metadata i64 %12, metadata !4973, metadata !DIExpression()), !dbg !4982
  %div43 = sdiv i64 %add, %12, !dbg !5038
  call void @llvm.dbg.value(metadata i64 %div43, metadata !4979, metadata !DIExpression()), !dbg !4982
  %phitmp = trunc i64 %div43 to i32, !dbg !5039
  br label %if.end44, !dbg !5039

if.end44:                                         ; preds = %if.end37, %if.then40
  %prob.0 = phi i32 [ %phitmp, %if.then40 ], [ 0, %if.end37 ]
  %call45 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 0) #7, !dbg !5040
  call void @llvm.dbg.value(metadata %union.tree_node* %call45, metadata !4975, metadata !DIExpression()), !dbg !4982
  %14 = load i32, i32* @ix86_isa_flags, align 4, !dbg !5041
  %and = and i32 %14, 32, !dbg !5041
  %cmp46 = icmp eq i32 %and, 0, !dbg !5041
  %cond = select i1 %cmp46, i32 128, i32 256, !dbg !5041
  %call48 = call i32 @get_pointer_alignment(%union.tree_node* %call45, i32 %cond) #6, !dbg !5042
  call void @llvm.dbg.value(metadata i32 %call48, metadata !4977, metadata !DIExpression()), !dbg !4982
  switch i32 %bf.clear, label %sw.default [
    i32 330, label %sw.bb
    i32 332, label %sw.bb
    i32 333, label %sw.bb62
    i32 326, label %sw.bb68
  ], !dbg !5043

sw.bb:                                            ; preds = %if.end44, %if.end44
  %call49 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 1) #7, !dbg !5044
  call void @llvm.dbg.value(metadata %union.tree_node* %call49, metadata !4976, metadata !DIExpression()), !dbg !4982
  %15 = load i32, i32* @ix86_isa_flags, align 4, !dbg !5046
  %and50 = and i32 %15, 32, !dbg !5046
  %cmp51 = icmp eq i32 %and50, 0, !dbg !5046
  %cond53 = select i1 %cmp51, i32 128, i32 256, !dbg !5046
  %call54 = call i32 @get_pointer_alignment(%union.tree_node* %call49, i32 %cond53) #6, !dbg !5047
  call void @llvm.dbg.value(metadata i32 %call54, metadata !4978, metadata !DIExpression()), !dbg !4982
  %cmp55 = icmp ult i32 %call48, %call54, !dbg !5048
  %call48.call54 = select i1 %cmp55, i32 %call48, i32 %call54, !dbg !5048
  %call58 = call i32 @can_move_by_pieces(i64 %7, i32 %call48.call54) #6, !dbg !5050
  %tobool59 = icmp eq i32 %call58, 0, !dbg !5050
  br i1 %tobool59, label %cleanup, label %sw.epilog, !dbg !5051

sw.bb62:                                          ; preds = %if.end44
  %call63 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 1) #7, !dbg !5052
  %16 = bitcast %union.tree_node* %call63 to i8*, !dbg !5052
  %call64 = call i32 @can_store_by_pieces(i64 %7, %struct.rtx_def* (i8*, i64, i32)* nonnull @builtin_memset_read_str, i8* %16, i32 %call48, i8 zeroext 1) #6, !dbg !5054
  %tobool65 = icmp eq i32 %call64, 0, !dbg !5054
  br i1 %tobool65, label %cleanup, label %sw.epilog, !dbg !5055

sw.bb68:                                          ; preds = %if.end44
  %17 = load i8*, i8** bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13) to i8**), align 8, !dbg !5056
  %call69 = call i32 @can_store_by_pieces(i64 %7, %struct.rtx_def* (i8*, i64, i32)* nonnull @builtin_memset_read_str, i8* %17, i32 %call48, i8 zeroext 1) #6, !dbg !5058
  %tobool70 = icmp eq i32 %call69, 0, !dbg !5058
  br i1 %tobool70, label %cleanup, label %sw.epilog, !dbg !5059

sw.default:                                       ; preds = %if.end44
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 1433, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5060
  br label %sw.epilog, !dbg !5061

sw.epilog:                                        ; preds = %sw.bb, %sw.bb62, %sw.bb68, %sw.default
  %call73 = call %union.tree_node* @get_gcov_type() #6, !dbg !5062
  %shr = ashr i64 %7, 63, !dbg !5063
  %call75 = call %union.tree_node* @build_int_cst_wide(%union.tree_node* %call73, i64 %7, i64 %shr) #6, !dbg !5064
  call void @llvm.dbg.value(metadata %union.tree_node* %call75, metadata !4980, metadata !DIExpression()), !dbg !4982
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5065
  %tobool76 = icmp eq %struct._IO_FILE* %18, null, !dbg !5065
  br i1 %tobool76, label %if.end80, label %if.then77, !dbg !5067

if.then77:                                        ; preds = %sw.epilog
  %conv78 = trunc i64 %7 to i32, !dbg !5068
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i64 0, i64 0), i32 %conv78) #6, !dbg !5070
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5071
  call void @print_gimple_stmt(%struct._IO_FILE* %19, %union.gimple_statement_d* %call, i32 0, i32 2) #6, !dbg !5072
  br label %if.end80, !dbg !5073

if.end80:                                         ; preds = %sw.epilog, %if.then77
  %20 = load i64, i64* %count, align 8, !dbg !5074
  call void @llvm.dbg.value(metadata i64 %20, metadata !4972, metadata !DIExpression()), !dbg !4982
  %21 = load i64, i64* %all, align 8, !dbg !5075
  call void @llvm.dbg.value(metadata i64 %21, metadata !4973, metadata !DIExpression()), !dbg !4982
  call fastcc void @gimple_stringop_fixed_value(%union.gimple_statement_d* %call, %union.tree_node* %call75, i32 %prob.0, i64 %20, i64 %21) #7, !dbg !5076
  br label %cleanup, !dbg !5077

cleanup:                                          ; preds = %sw.bb, %sw.bb62, %sw.bb68, %if.end31, %lor.lhs.false, %if.end14, %if.end4, %if.end, %entry, %if.end18, %if.end8, %if.end80
  %retval.0 = phi i8 [ 1, %if.end80 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], [ 0, %if.end8 ], [ 0, %if.end14 ], [ 0, %lor.lhs.false ], [ 0, %if.end18 ], [ 0, %if.end31 ], [ 0, %sw.bb ], [ 0, %sw.bb62 ], [ 0, %sw.bb68 ], !dbg !4982
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8, !dbg !5078
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !5078
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5078
  ret i8 %retval.0, !dbg !5078
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @gimple_ic_transform(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !5079 {
entry:
  %count = alloca i64, align 8
  %all = alloca i64, align 8
  %bb_all = alloca i64, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5083, metadata !DIExpression()), !dbg !5093
  %0 = bitcast i64* %count to i8*, !dbg !5094
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5094
  %1 = bitcast i64* %all to i8*, !dbg !5094
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !5094
  %2 = bitcast i64* %bb_all to i8*, !dbg !5094
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !5094
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !5095
  %cmp = icmp eq i32 %call, 8, !dbg !5097
  br i1 %cmp, label %if.end, label %cleanup, !dbg !5098

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %stmt) #7, !dbg !5099
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !5090, metadata !DIExpression()), !dbg !5093
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5100
  %bf.load = load i64, i64* %3, align 8, !dbg !5100
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5102
  %cmp2 = icmp eq i64 %bf.cast1, 29, !dbg !5102
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !5103

if.end4:                                          ; preds = %if.end
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5104
  %call5 = tail call %struct.histogram_value_t* @gimple_histogram_value_of_type(%struct.function* %4, %union.gimple_statement_d* %stmt, i32 4) #7, !dbg !5105
  call void @llvm.dbg.value(metadata %struct.histogram_value_t* %call5, metadata !5084, metadata !DIExpression()), !dbg !5093
  %tobool = icmp eq %struct.histogram_value_t* %call5, null, !dbg !5106
  br i1 %tobool, label %cleanup, label %if.end7, !dbg !5108

if.end7:                                          ; preds = %if.end4
  %counters = getelementptr inbounds %struct.histogram_value_t, %struct.histogram_value_t* %call5, i64 0, i32 0, i32 2, !dbg !5109
  %5 = load i64*, i64** %counters, align 8, !dbg !5109
  %6 = load i64, i64* %5, align 8, !dbg !5110
  call void @llvm.dbg.value(metadata i64 %6, metadata !5085, metadata !DIExpression()), !dbg !5093
  %arrayidx10 = getelementptr inbounds i64, i64* %5, i64 1, !dbg !5111
  %7 = load i64, i64* %arrayidx10, align 8, !dbg !5111
  call void @llvm.dbg.value(metadata i64 %7, metadata !5086, metadata !DIExpression()), !dbg !5093
  store i64 %7, i64* %count, align 8, !dbg !5112
  %arrayidx13 = getelementptr inbounds i64, i64* %5, i64 2, !dbg !5113
  %8 = load i64, i64* %arrayidx13, align 8, !dbg !5113
  call void @llvm.dbg.value(metadata i64 %8, metadata !5087, metadata !DIExpression()), !dbg !5093
  store i64 %8, i64* %all, align 8, !dbg !5114
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5115
  tail call void @gimple_remove_histogram_value(%struct.function* %9, %union.gimple_statement_d* %stmt, %struct.histogram_value_t* nonnull %call5) #7, !dbg !5116
  call void @llvm.dbg.value(metadata i64 %7, metadata !5086, metadata !DIExpression()), !dbg !5093
  %mul = shl nsw i64 %7, 2, !dbg !5117
  call void @llvm.dbg.value(metadata i64 %8, metadata !5087, metadata !DIExpression()), !dbg !5093
  %mul15 = mul nsw i64 %8, 3, !dbg !5119
  %cmp16 = icmp sgt i64 %mul, %mul15, !dbg !5120
  br i1 %cmp16, label %if.end18, label %cleanup, !dbg !5121

if.end18:                                         ; preds = %if.end7
  %call19 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #7, !dbg !5122
  %count20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call19, i64 0, i32 8, !dbg !5123
  %10 = load i64, i64* %count20, align 8, !dbg !5123
  call void @llvm.dbg.value(metadata i64 %10, metadata !5088, metadata !DIExpression()), !dbg !5093
  store i64 %10, i64* %bb_all, align 8, !dbg !5124
  call void @llvm.dbg.value(metadata i64 %10, metadata !5088, metadata !DIExpression()), !dbg !5093
  call void @llvm.dbg.value(metadata i64* %all, metadata !5087, metadata !DIExpression(DW_OP_deref)), !dbg !5093
  call void @llvm.dbg.value(metadata i64* %bb_all, metadata !5088, metadata !DIExpression(DW_OP_deref)), !dbg !5093
  %call21 = call fastcc zeroext i8 @check_counter(%union.gimple_statement_d* %stmt, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i64* nonnull %all, i64* nonnull %bb_all, i64 %10) #7, !dbg !5125
  %tobool22 = icmp eq i8 %call21, 0, !dbg !5125
  br i1 %tobool22, label %lor.lhs.false, label %cleanup, !dbg !5127

lor.lhs.false:                                    ; preds = %if.end18
  %11 = load i64, i64* %all, align 8, !dbg !5128
  call void @llvm.dbg.value(metadata i64 %11, metadata !5087, metadata !DIExpression()), !dbg !5093
  call void @llvm.dbg.value(metadata i64* %count, metadata !5086, metadata !DIExpression(DW_OP_deref)), !dbg !5093
  call void @llvm.dbg.value(metadata i64* %all, metadata !5087, metadata !DIExpression(DW_OP_deref)), !dbg !5093
  %call23 = call fastcc zeroext i8 @check_counter(%union.gimple_statement_d* %stmt, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i64* nonnull %count, i64* nonnull %all, i64 %11) #7, !dbg !5129
  %tobool25 = icmp eq i8 %call23, 0, !dbg !5129
  br i1 %tobool25, label %if.end27, label %cleanup, !dbg !5130

if.end27:                                         ; preds = %lor.lhs.false
  %12 = load i64, i64* %all, align 8, !dbg !5131
  call void @llvm.dbg.value(metadata i64 %12, metadata !5087, metadata !DIExpression()), !dbg !5093
  %cmp28 = icmp sgt i64 %12, 0, !dbg !5133
  br i1 %cmp28, label %if.then30, label %if.end33, !dbg !5134

if.then30:                                        ; preds = %if.end27
  %13 = load i64, i64* %count, align 8, !dbg !5135
  call void @llvm.dbg.value(metadata i64 %13, metadata !5086, metadata !DIExpression()), !dbg !5093
  %mul31 = mul nsw i64 %13, 10000, !dbg !5136
  call void @llvm.dbg.value(metadata i64 %12, metadata !5087, metadata !DIExpression()), !dbg !5093
  %div = sdiv i64 %12, 2, !dbg !5137
  %add = add nsw i64 %mul31, %div, !dbg !5138
  call void @llvm.dbg.value(metadata i64 %12, metadata !5087, metadata !DIExpression()), !dbg !5093
  %div32 = sdiv i64 %add, %12, !dbg !5139
  call void @llvm.dbg.value(metadata i64 %div32, metadata !5089, metadata !DIExpression()), !dbg !5093
  %phitmp = trunc i64 %div32 to i32, !dbg !5140
  br label %if.end33, !dbg !5140

if.end33:                                         ; preds = %if.end27, %if.then30
  %prob.0 = phi i32 [ %phitmp, %if.then30 ], [ 0, %if.end27 ]
  %conv34 = trunc i64 %6 to i32, !dbg !5141
  %call35 = call fastcc %struct.cgraph_node* @find_func_by_pid(i32 %conv34) #7, !dbg !5142
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call35, metadata !5092, metadata !DIExpression()), !dbg !5093
  %cmp36 = icmp eq %struct.cgraph_node* %call35, null, !dbg !5143
  br i1 %cmp36, label %cleanup, label %if.end39, !dbg !5145

if.end39:                                         ; preds = %if.end33
  %14 = load i64, i64* %count, align 8, !dbg !5146
  call void @llvm.dbg.value(metadata i64 %14, metadata !5086, metadata !DIExpression()), !dbg !5093
  %15 = load i64, i64* %all, align 8, !dbg !5147
  call void @llvm.dbg.value(metadata i64 %15, metadata !5087, metadata !DIExpression()), !dbg !5093
  %call41 = call fastcc %union.gimple_statement_d* @gimple_ic(%union.gimple_statement_d* %stmt, %struct.cgraph_node* nonnull %call35, i32 %prob.0, i64 %14, i64 %15) #7, !dbg !5148
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call41, metadata !5091, metadata !DIExpression()), !dbg !5093
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5149
  %tobool42 = icmp eq %struct._IO_FILE* %16, null, !dbg !5149
  br i1 %tobool42, label %cleanup, label %if.then43, !dbg !5151

if.then43:                                        ; preds = %if.end39
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !5152
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5154
  %call45 = call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %stmt) #7, !dbg !5155
  call void @print_generic_expr(%struct._IO_FILE* %17, %union.tree_node* %call45, i32 2) #6, !dbg !5156
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5157
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #6, !dbg !5158
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5159
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call35, i64 0, i32 0, !dbg !5160
  %20 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !5160
  call void @print_generic_expr(%struct._IO_FILE* %19, %union.tree_node* %20, i32 2) #6, !dbg !5161
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5162
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !5163
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5164
  call void @print_gimple_stmt(%struct._IO_FILE* %22, %union.gimple_statement_d* %stmt, i32 0, i32 2) #6, !dbg !5165
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5166
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !5167
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5168
  call void @print_gimple_stmt(%struct._IO_FILE* %24, %union.gimple_statement_d* %call41, i32 0, i32 2) #6, !dbg !5169
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5170
  %26 = load i64, i64* %count, align 8, !dbg !5171
  call void @llvm.dbg.value(metadata i64 %26, metadata !5086, metadata !DIExpression()), !dbg !5093
  %27 = load i64, i64* %all, align 8, !dbg !5172
  call void @llvm.dbg.value(metadata i64 %27, metadata !5087, metadata !DIExpression()), !dbg !5093
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i64 %26, i64 %27) #6, !dbg !5173
  br label %cleanup, !dbg !5174

cleanup:                                          ; preds = %if.end39, %lor.lhs.false, %if.end18, %if.end7, %if.end4, %entry, %if.then43, %if.end33, %if.end
  %retval.0 = phi i8 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], [ 0, %if.end7 ], [ 0, %lor.lhs.false ], [ 0, %if.end18 ], [ 0, %if.end33 ], [ 1, %if.then43 ], [ 1, %if.end39 ], !dbg !5093
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !5175
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !5175
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5175
  ret i8 %retval.0, !dbg !5175
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5176 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5180, metadata !DIExpression()), !dbg !5181
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !5182
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !5182
  ret %struct.basic_block_def* %0, !dbg !5183
}

declare dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* sret, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local i32 @counts_to_freqs() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @check_counter(%union.gimple_statement_d* %stmt, i8* %name, i64* %count, i64* %all, i64 %bb_count) unnamed_addr #5 !dbg !5184 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5188, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.value(metadata i8* %name, metadata !5189, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.value(metadata i64* %count, metadata !5190, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.value(metadata i64* %all, metadata !5191, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.value(metadata i64 %bb_count, metadata !5192, metadata !DIExpression()), !dbg !5196
  %0 = load i64, i64* %all, align 8, !dbg !5197
  %cmp = icmp eq i64 %0, %bb_count, !dbg !5198
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !5199

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %count, align 8, !dbg !5200
  %cmp1 = icmp sgt i64 %1, %bb_count, !dbg !5201
  br i1 %cmp1, label %if.then, label %return, !dbg !5202

if.then:                                          ; preds = %entry, %lor.lhs.false
  %cmp2 = icmp eq %union.gimple_statement_d* %stmt, null, !dbg !5203
  br i1 %cmp2, label %cond.false, label %cond.true, !dbg !5204

cond.true:                                        ; preds = %if.then
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* nonnull %stmt) #7, !dbg !5205
  %.pre = load i64, i64* %all, align 8, !dbg !5206
  br label %cond.end, !dbg !5204

cond.false:                                       ; preds = %if.then
  %2 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_minimal**), align 8, !dbg !5208
  %locus3 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %2, i64 0, i32 1, !dbg !5208
  %3 = load i32, i32* %locus3, align 8, !dbg !5208
  br label %cond.end, !dbg !5204

cond.end:                                         ; preds = %cond.false, %cond.true
  %4 = phi i64 [ %.pre, %cond.true ], [ %0, %cond.false ], !dbg !5206
  %cond = phi i32 [ %call, %cond.true ], [ %3, %cond.false ], !dbg !5204
  call void @llvm.dbg.value(metadata i32 %cond, metadata !5193, metadata !DIExpression()), !dbg !5209
  %5 = load i32, i32* @flag_profile_correction, align 4, !dbg !5210
  %tobool = icmp eq i32 %5, 0, !dbg !5210
  %conv = trunc i64 %4 to i32, !dbg !5206
  %conv5 = trunc i64 %bb_count to i32, !dbg !5206
  br i1 %tobool, label %if.else, label %if.then4, !dbg !5211

if.then4:                                         ; preds = %cond.end
  tail call void (i32, i8*, ...) @inform(i32 %cond, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.26, i64 0, i64 0), i8* %name, i32 %conv, i32 %conv5) #6, !dbg !5212
  store i64 %bb_count, i64* %all, align 8, !dbg !5214
  %6 = load i64, i64* %count, align 8, !dbg !5215
  %cmp6 = icmp sgt i64 %6, %bb_count, !dbg !5217
  br i1 %cmp6, label %if.then8, label %return, !dbg !5218

if.then8:                                         ; preds = %if.then4
  store i64 %bb_count, i64* %count, align 8, !dbg !5219
  br label %return, !dbg !5220

if.else:                                          ; preds = %cond.end
  tail call void (i32, i8*, ...) @error_at(i32 %cond, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.27, i64 0, i64 0), i8* %name, i32 %conv, i32 %conv5) #6, !dbg !5221
  br label %return, !dbg !5223

return:                                           ; preds = %lor.lhs.false, %if.else, %if.then8, %if.then4
  %retval.1 = phi i8 [ 1, %if.else ], [ 0, %if.then8 ], [ 0, %if.then4 ], [ 0, %lor.lhs.false ], !dbg !5196
  ret i8 %retval.1, !dbg !5224
}

declare dso_local zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @gimple_mod_subtract(%union.gimple_statement_d* %stmt, i32 %prob1, i32 %prob2, i32 %ncounts, i64 %count1, i64 %count2, i64 %all) unnamed_addr #5 !dbg !5225 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5229, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata i32 %prob1, metadata !5230, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata i32 %prob2, metadata !5231, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata i32 %ncounts, metadata !5232, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata i64 %count1, metadata !5233, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata i64 %count2, metadata !5234, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata i64 %all, metadata !5235, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !5241, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !5251, metadata !DIExpression()), !dbg !5257
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !5258
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5258
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt) #7, !dbg !5259
  %tobool = icmp eq i8 %call, 0, !dbg !5259
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !5259

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !5259
  %cmp = icmp eq i32 %call1, 71, !dbg !5259
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !5259

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 873, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5259
  br label %cond.end, !dbg !5259

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !5260
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5260
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !5260
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !5247, metadata !DIExpression()), !dbg !5257
  %call4 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !5261
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !5248, metadata !DIExpression()), !dbg !5257
  %call5 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #7, !dbg !5262
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !5249, metadata !DIExpression()), !dbg !5257
  %call6 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #7, !dbg !5263
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call6, metadata !5243, metadata !DIExpression()), !dbg !5257
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !5264
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5264
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* %stmt) #6, !dbg !5264
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !5264
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5264
  %call7 = call %union.tree_node* @create_tmp_var(%union.tree_node* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !5265
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !5256, metadata !DIExpression()), !dbg !5257
  %call8 = call %union.tree_node* @create_tmp_var(%union.tree_node* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !5266
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !5239, metadata !DIExpression()), !dbg !5257
  %call9 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call7, %union.tree_node* %call4) #6, !dbg !5267
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call9, metadata !5236, metadata !DIExpression()), !dbg !5257
  %call10 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call8, %union.tree_node* %call5) #6, !dbg !5268
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call10, metadata !5237, metadata !DIExpression()), !dbg !5257
  %call11 = call %union.gimple_statement_d* @gimple_build_cond(i32 97, %union.tree_node* %call7, %union.tree_node* %call8, %union.tree_node* null, %union.tree_node* null) #6, !dbg !5269
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call11, metadata !5238, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5255, metadata !DIExpression(DW_OP_deref)), !dbg !5257
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call9, i32 1) #6, !dbg !5270
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5255, metadata !DIExpression(DW_OP_deref)), !dbg !5257
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call10, i32 1) #6, !dbg !5271
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5255, metadata !DIExpression(DW_OP_deref)), !dbg !5257
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call11, i32 1) #6, !dbg !5272
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call11, metadata !5240, metadata !DIExpression()), !dbg !5257
  %tobool12 = icmp eq i32 %ncounts, 0, !dbg !5273
  br i1 %tobool12, label %if.end, label %if.then, !dbg !5275

if.then:                                          ; preds = %cond.end
  %call13 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 64, %union.tree_node* %call7, %union.tree_node* %call7, %union.tree_node* %call8) #6, !dbg !5276
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call13, metadata !5236, metadata !DIExpression()), !dbg !5257
  %call14 = call %union.gimple_statement_d* @gimple_build_cond(i32 97, %union.tree_node* %call7, %union.tree_node* %call8, %union.tree_node* null, %union.tree_node* null) #6, !dbg !5278
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call14, metadata !5237, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5255, metadata !DIExpression(DW_OP_deref)), !dbg !5257
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call13, i32 1) #6, !dbg !5279
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5255, metadata !DIExpression(DW_OP_deref)), !dbg !5257
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call14, i32 1) #6, !dbg !5280
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call14, metadata !5241, metadata !DIExpression()), !dbg !5257
  %phitmp = bitcast %union.gimple_statement_d* %call14 to i8*, !dbg !5281
  br label %if.end, !dbg !5281

if.end:                                           ; preds = %cond.end, %if.then
  %bb2end.0 = phi i8* [ %phitmp, %if.then ], [ null, %cond.end ]
  %call15 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !5282
  %call16 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 %call15, %union.tree_node* %call7, %union.tree_node* %call7, %union.tree_node* %call8) #6, !dbg !5282
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call16, metadata !5236, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5255, metadata !DIExpression(DW_OP_deref)), !dbg !5257
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call16, i32 1) #6, !dbg !5283
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call16, metadata !5242, metadata !DIExpression()), !dbg !5257
  %3 = bitcast %union.gimple_statement_d* %call11 to i8*, !dbg !5284
  %call17 = call %struct.edge_def* @split_block(%struct.basic_block_def* %call6, i8* %3) #6, !dbg !5285
  call void @llvm.dbg.value(metadata %struct.edge_def* %call17, metadata !5250, metadata !DIExpression()), !dbg !5257
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17, i64 0, i32 1, !dbg !5286
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !5286
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %4, metadata !5244, metadata !DIExpression()), !dbg !5257
  %sub = sub nsw i64 %all, %count1, !dbg !5287
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 8, !dbg !5288
  store i64 %sub, i64* %count, align 8, !dbg !5289
  br i1 %tobool12, label %if.end25, label %if.then19, !dbg !5290

if.then19:                                        ; preds = %if.end
  %call20 = call %struct.edge_def* @split_block(%struct.basic_block_def* %4, i8* %bb2end.0) #6, !dbg !5291
  call void @llvm.dbg.value(metadata %struct.edge_def* %call20, metadata !5251, metadata !DIExpression()), !dbg !5257
  %dest21 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call20, i64 0, i32 1, !dbg !5294
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dest21, align 8, !dbg !5294
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !5245, metadata !DIExpression()), !dbg !5257
  %sub23 = sub nsw i64 %sub, %count2, !dbg !5295
  %count24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 8, !dbg !5296
  store i64 %sub23, i64* %count24, align 8, !dbg !5297
  br label %if.end25, !dbg !5298

if.end25:                                         ; preds = %if.end, %if.then19
  %bb3.0 = phi %struct.basic_block_def* [ %5, %if.then19 ], [ undef, %if.end ]
  %e23.0 = phi %struct.edge_def* [ %call20, %if.then19 ], [ null, %if.end ], !dbg !5257
  call void @llvm.dbg.value(metadata %struct.edge_def* %e23.0, metadata !5251, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb3.0, metadata !5245, metadata !DIExpression()), !dbg !5257
  %bb3.0. = select i1 %tobool12, %struct.basic_block_def* %4, %struct.basic_block_def* %bb3.0, !dbg !5299
  %6 = bitcast %union.gimple_statement_d* %call16 to i8*, !dbg !5300
  %call31 = call %struct.edge_def* @split_block(%struct.basic_block_def* %bb3.0., i8* %6) #6, !dbg !5301
  call void @llvm.dbg.value(metadata %struct.edge_def* %call31, metadata !5253, metadata !DIExpression()), !dbg !5257
  %dest32 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call31, i64 0, i32 1, !dbg !5302
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest32, align 8, !dbg !5302
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %7, metadata !5246, metadata !DIExpression()), !dbg !5257
  %count33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 8, !dbg !5303
  store i64 %all, i64* %count33, align 8, !dbg !5304
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17, i64 0, i32 7, !dbg !5305
  %8 = load i32, i32* %flags, align 8, !dbg !5306
  %and = and i32 %8, -2050, !dbg !5306
  %or = or i32 %and, 2048, !dbg !5307
  store i32 %or, i32* %flags, align 8, !dbg !5307
  %sub35 = sub nsw i32 10000, %prob1, !dbg !5308
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17, i64 0, i32 8, !dbg !5309
  store i32 %sub35, i32* %probability, align 4, !dbg !5310
  %count37 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17, i64 0, i32 9, !dbg !5311
  store i64 %sub, i64* %count37, align 8, !dbg !5312
  %call38 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call6, %struct.basic_block_def* %7, i32 1024) #6, !dbg !5313
  call void @llvm.dbg.value(metadata %struct.edge_def* %call38, metadata !5254, metadata !DIExpression()), !dbg !5257
  %probability39 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call38, i64 0, i32 8, !dbg !5314
  store i32 %prob1, i32* %probability39, align 4, !dbg !5315
  %count40 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call38, i64 0, i32 9, !dbg !5316
  store i64 %count1, i64* %count40, align 8, !dbg !5317
  br i1 %tobool12, label %if.end25.if.end55_crit_edge, label %if.then42, !dbg !5318

if.end25.if.end55_crit_edge:                      ; preds = %if.end25
  %.pre = sub nsw i64 %sub, %count2, !dbg !5319
  br label %if.end55, !dbg !5318

if.then42:                                        ; preds = %if.end25
  %flags43 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e23.0, i64 0, i32 7, !dbg !5320
  %9 = load i32, i32* %flags43, align 8, !dbg !5323
  %and44 = and i32 %9, -2050, !dbg !5323
  %or46 = or i32 %and44, 2048, !dbg !5324
  store i32 %or46, i32* %flags43, align 8, !dbg !5324
  %sub48 = sub nsw i64 %sub, %count2, !dbg !5325
  %count49 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e23.0, i64 0, i32 9, !dbg !5326
  store i64 %sub48, i64* %count49, align 8, !dbg !5327
  %sub50 = sub nsw i32 10000, %prob2, !dbg !5328
  %probability51 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e23.0, i64 0, i32 8, !dbg !5329
  store i32 %sub50, i32* %probability51, align 4, !dbg !5330
  %call52 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %4, %struct.basic_block_def* %7, i32 1024) #6, !dbg !5331
  call void @llvm.dbg.value(metadata %struct.edge_def* %call52, metadata !5252, metadata !DIExpression()), !dbg !5257
  %probability53 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call52, i64 0, i32 8, !dbg !5332
  store i32 %prob2, i32* %probability53, align 4, !dbg !5333
  %count54 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call52, i64 0, i32 9, !dbg !5334
  store i64 %count2, i64* %count54, align 8, !dbg !5335
  br label %if.end55, !dbg !5336

if.end55:                                         ; preds = %if.end25.if.end55_crit_edge, %if.then42
  %sub58.pre-phi = phi i64 [ %.pre, %if.end25.if.end55_crit_edge ], [ %sub48, %if.then42 ], !dbg !5319
  %probability56 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call31, i64 0, i32 8, !dbg !5337
  store i32 10000, i32* %probability56, align 4, !dbg !5338
  %count59 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call31, i64 0, i32 9, !dbg !5339
  store i64 %sub58.pre-phi, i64* %count59, align 8, !dbg !5340
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5341
  ret %union.tree_node* %call7, !dbg !5342
}

declare dso_local void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5343 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5347, metadata !DIExpression()), !dbg !5348
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !5349
  %0 = load i32, i32* %location, align 8, !dbg !5349
  ret i32 %0, !dbg !5350
}

declare dso_local void @inform(i32, i8*, ...) local_unnamed_addr #2

declare dso_local void @error_at(i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5351 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5353, metadata !DIExpression()), !dbg !5354
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !5355
  %cmp = icmp eq i32 %call, 6, !dbg !5356
  %conv1 = zext i1 %cmp to i8, !dbg !5355
  ret i8 %conv1, !dbg !5357
}

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_cond(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @split_block(%struct.basic_block_def*, i8*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local i32 @simple_cst_equal(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst_wide(%union.tree_node*, i64, i64) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_gcov_type() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @gimple_divmod_fixed_value(%union.gimple_statement_d* %stmt, %union.tree_node* %value, i32 %prob, i64 %count, i64 %all) unnamed_addr #5 !dbg !5358 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5362, metadata !DIExpression()), !dbg !5389
  call void @llvm.dbg.value(metadata %union.tree_node* %value, metadata !5363, metadata !DIExpression()), !dbg !5389
  call void @llvm.dbg.value(metadata i32 %prob, metadata !5364, metadata !DIExpression()), !dbg !5389
  call void @llvm.dbg.value(metadata i64 %count, metadata !5365, metadata !DIExpression()), !dbg !5389
  call void @llvm.dbg.value(metadata i64 %all, metadata !5366, metadata !DIExpression()), !dbg !5389
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !5390
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5390
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt) #7, !dbg !5391
  %tobool = icmp eq i8 %call, 0, !dbg !5391
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !5391

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !5391
  %cmp = icmp eq i32 %call1, 67, !dbg !5391
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !5391

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call3 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !5391
  %cmp4 = icmp eq i32 %call3, 71, !dbg !5391
  br i1 %cmp4, label %cond.end, label %cond.true, !dbg !5391

cond.true:                                        ; preds = %entry, %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 568, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5391
  br label %cond.end, !dbg !5391

cond.end:                                         ; preds = %land.lhs.true, %lor.lhs.false, %cond.true
  %call6 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !5392
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5392
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !5392
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !5380, metadata !DIExpression()), !dbg !5389
  %call7 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !5393
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !5381, metadata !DIExpression()), !dbg !5389
  %call8 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #7, !dbg !5394
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !5382, metadata !DIExpression()), !dbg !5389
  %call9 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #7, !dbg !5395
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call9, metadata !5376, metadata !DIExpression()), !dbg !5389
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !5396
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5396
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* %stmt) #6, !dbg !5396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !5396
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5396
  %call10 = call %union.tree_node* @create_tmp_var(%union.tree_node* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !5397
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !5372, metadata !DIExpression()), !dbg !5389
  %call11 = call %union.tree_node* @create_tmp_var(%union.tree_node* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !5398
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !5370, metadata !DIExpression()), !dbg !5389
  %call12 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %1, %union.tree_node* %value) #6, !dbg !5399
  %call13 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call10, %union.tree_node* %call12) #6, !dbg !5399
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call13, metadata !5367, metadata !DIExpression()), !dbg !5389
  %call14 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call11, %union.tree_node* %call8) #6, !dbg !5400
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call14, metadata !5368, metadata !DIExpression()), !dbg !5389
  %call15 = call %union.gimple_statement_d* @gimple_build_cond(i32 102, %union.tree_node* %call11, %union.tree_node* %call10, %union.tree_node* null, %union.tree_node* null) #6, !dbg !5401
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call15, metadata !5369, metadata !DIExpression()), !dbg !5389
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5388, metadata !DIExpression(DW_OP_deref)), !dbg !5389
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call13, i32 1) #6, !dbg !5402
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5388, metadata !DIExpression(DW_OP_deref)), !dbg !5389
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call14, i32 1) #6, !dbg !5403
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5388, metadata !DIExpression(DW_OP_deref)), !dbg !5389
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call15, i32 1) #6, !dbg !5404
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call15, metadata !5373, metadata !DIExpression()), !dbg !5389
  %call16 = call %union.tree_node* @create_tmp_var(%union.tree_node* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !5405
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !5371, metadata !DIExpression()), !dbg !5389
  %call17 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !5406
  %call18 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 %call17, %union.tree_node* %call16, %union.tree_node* %call7, %union.tree_node* %call10) #6, !dbg !5406
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call18, metadata !5367, metadata !DIExpression()), !dbg !5389
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5388, metadata !DIExpression(DW_OP_deref)), !dbg !5389
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call18, i32 1) #6, !dbg !5407
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call18, metadata !5374, metadata !DIExpression()), !dbg !5389
  %call19 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !5408
  %call20 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 %call19, %union.tree_node* %call16, %union.tree_node* %call7, %union.tree_node* %call8) #6, !dbg !5408
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call20, metadata !5367, metadata !DIExpression()), !dbg !5389
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5388, metadata !DIExpression(DW_OP_deref)), !dbg !5389
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call20, i32 1) #6, !dbg !5409
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call20, metadata !5375, metadata !DIExpression()), !dbg !5389
  %3 = bitcast %union.gimple_statement_d* %call15 to i8*, !dbg !5410
  %call21 = call %struct.edge_def* @split_block(%struct.basic_block_def* %call9, i8* %3) #6, !dbg !5411
  call void @llvm.dbg.value(metadata %struct.edge_def* %call21, metadata !5383, metadata !DIExpression()), !dbg !5389
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 1, !dbg !5412
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !5412
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %4, metadata !5377, metadata !DIExpression()), !dbg !5389
  %count22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 8, !dbg !5413
  store i64 %count, i64* %count22, align 8, !dbg !5414
  %5 = bitcast %union.gimple_statement_d* %call18 to i8*, !dbg !5415
  %call23 = call %struct.edge_def* @split_block(%struct.basic_block_def* %4, i8* %5) #6, !dbg !5416
  call void @llvm.dbg.value(metadata %struct.edge_def* %call23, metadata !5385, metadata !DIExpression()), !dbg !5389
  %dest24 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call23, i64 0, i32 1, !dbg !5417
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %dest24, align 8, !dbg !5417
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %6, metadata !5378, metadata !DIExpression()), !dbg !5389
  %sub = sub nsw i64 %all, %count, !dbg !5418
  %count25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 8, !dbg !5419
  store i64 %sub, i64* %count25, align 8, !dbg !5420
  %7 = bitcast %union.gimple_statement_d* %call20 to i8*, !dbg !5421
  %call26 = call %struct.edge_def* @split_block(%struct.basic_block_def* %6, i8* %7) #6, !dbg !5422
  call void @llvm.dbg.value(metadata %struct.edge_def* %call26, metadata !5387, metadata !DIExpression()), !dbg !5389
  %dest27 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call26, i64 0, i32 1, !dbg !5423
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %dest27, align 8, !dbg !5423
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %8, metadata !5379, metadata !DIExpression()), !dbg !5389
  %count28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 8, !dbg !5424
  store i64 %all, i64* %count28, align 8, !dbg !5425
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 7, !dbg !5426
  %9 = load i32, i32* %flags, align 8, !dbg !5427
  %and = and i32 %9, -2050, !dbg !5427
  %or = or i32 %and, 2048, !dbg !5428
  store i32 %or, i32* %flags, align 8, !dbg !5428
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 8, !dbg !5429
  store i32 %prob, i32* %probability, align 4, !dbg !5430
  %count30 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 9, !dbg !5431
  store i64 %count, i64* %count30, align 8, !dbg !5432
  %call31 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call9, %struct.basic_block_def* %6, i32 1024) #6, !dbg !5433
  call void @llvm.dbg.value(metadata %struct.edge_def* %call31, metadata !5384, metadata !DIExpression()), !dbg !5389
  %sub32 = sub nsw i32 10000, %prob, !dbg !5434
  %probability33 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call31, i64 0, i32 8, !dbg !5435
  store i32 %sub32, i32* %probability33, align 4, !dbg !5436
  %count35 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call31, i64 0, i32 9, !dbg !5437
  store i64 %sub, i64* %count35, align 8, !dbg !5438
  call void @remove_edge(%struct.edge_def* %call23) #6, !dbg !5439
  %call36 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %4, %struct.basic_block_def* %8, i32 1) #6, !dbg !5440
  call void @llvm.dbg.value(metadata %struct.edge_def* %call36, metadata !5386, metadata !DIExpression()), !dbg !5389
  %probability37 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call36, i64 0, i32 8, !dbg !5441
  store i32 10000, i32* %probability37, align 4, !dbg !5442
  %count38 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call36, i64 0, i32 9, !dbg !5443
  store i64 %count, i64* %count38, align 8, !dbg !5444
  %probability39 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call26, i64 0, i32 8, !dbg !5445
  store i32 10000, i32* %probability39, align 4, !dbg !5446
  %count41 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call26, i64 0, i32 9, !dbg !5447
  store i64 %sub, i64* %count41, align 8, !dbg !5448
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5449
  ret %union.tree_node* %call16, !dbg !5450
}

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @remove_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @gimple_mod_pow2(%union.gimple_statement_d* %stmt, i32 %prob, i64 %count, i64 %all) unnamed_addr #5 !dbg !5451 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5455, metadata !DIExpression()), !dbg !5482
  call void @llvm.dbg.value(metadata i32 %prob, metadata !5456, metadata !DIExpression()), !dbg !5482
  call void @llvm.dbg.value(metadata i64 %count, metadata !5457, metadata !DIExpression()), !dbg !5482
  call void @llvm.dbg.value(metadata i64 %all, metadata !5458, metadata !DIExpression()), !dbg !5482
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !5483
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5483
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt) #7, !dbg !5484
  %tobool = icmp eq i8 %call, 0, !dbg !5484
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !5484

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !5484
  %cmp = icmp eq i32 %call1, 71, !dbg !5484
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !5484

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 721, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5484
  br label %cond.end, !dbg !5484

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !5485
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5485
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !5485
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !5472, metadata !DIExpression()), !dbg !5482
  %call4 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !5486
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !5473, metadata !DIExpression()), !dbg !5482
  %call5 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #7, !dbg !5487
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !5474, metadata !DIExpression()), !dbg !5482
  %call6 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #7, !dbg !5488
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call6, metadata !5468, metadata !DIExpression()), !dbg !5482
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !5489
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5489
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* %stmt) #6, !dbg !5489
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !5489
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5489
  %call7 = call %union.tree_node* @create_tmp_var(%union.tree_node* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !5490
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !5481, metadata !DIExpression()), !dbg !5482
  %call8 = call %union.tree_node* @create_tmp_var(%union.tree_node* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !5491
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !5463, metadata !DIExpression()), !dbg !5482
  %call9 = call %union.tree_node* @create_tmp_var(%union.tree_node* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !5492
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !5464, metadata !DIExpression()), !dbg !5482
  %call10 = call %union.tree_node* @build_int_cst(%union.tree_node* %1, i64 -1) #6, !dbg !5493
  %call11 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 63, %union.tree_node* %call8, %union.tree_node* %call5, %union.tree_node* %call10) #6, !dbg !5493
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call11, metadata !5460, metadata !DIExpression()), !dbg !5482
  %call12 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 89, %union.tree_node* %call9, %union.tree_node* %call8, %union.tree_node* %call5) #6, !dbg !5494
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12, metadata !5461, metadata !DIExpression()), !dbg !5482
  %call13 = call %union.tree_node* @build_int_cst(%union.tree_node* %1, i64 0) #6, !dbg !5495
  %call14 = call %union.gimple_statement_d* @gimple_build_cond(i32 102, %union.tree_node* %call9, %union.tree_node* %call13, %union.tree_node* null, %union.tree_node* null) #6, !dbg !5496
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call14, metadata !5462, metadata !DIExpression()), !dbg !5482
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5480, metadata !DIExpression(DW_OP_deref)), !dbg !5482
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call11, i32 1) #6, !dbg !5497
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5480, metadata !DIExpression(DW_OP_deref)), !dbg !5482
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call12, i32 1) #6, !dbg !5498
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5480, metadata !DIExpression(DW_OP_deref)), !dbg !5482
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call14, i32 1) #6, !dbg !5499
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call14, metadata !5465, metadata !DIExpression()), !dbg !5482
  %call15 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 89, %union.tree_node* %call7, %union.tree_node* %call4, %union.tree_node* %call8) #6, !dbg !5500
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call15, metadata !5459, metadata !DIExpression()), !dbg !5482
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5480, metadata !DIExpression(DW_OP_deref)), !dbg !5482
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call15, i32 1) #6, !dbg !5501
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call15, metadata !5466, metadata !DIExpression()), !dbg !5482
  %call16 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !5502
  %call17 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 %call16, %union.tree_node* %call7, %union.tree_node* %call4, %union.tree_node* %call5) #6, !dbg !5502
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call17, metadata !5459, metadata !DIExpression()), !dbg !5482
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5480, metadata !DIExpression(DW_OP_deref)), !dbg !5482
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call17, i32 1) #6, !dbg !5503
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call17, metadata !5467, metadata !DIExpression()), !dbg !5482
  %3 = bitcast %union.gimple_statement_d* %call14 to i8*, !dbg !5504
  %call18 = call %struct.edge_def* @split_block(%struct.basic_block_def* %call6, i8* %3) #6, !dbg !5505
  call void @llvm.dbg.value(metadata %struct.edge_def* %call18, metadata !5475, metadata !DIExpression()), !dbg !5482
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call18, i64 0, i32 1, !dbg !5506
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !5506
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %4, metadata !5469, metadata !DIExpression()), !dbg !5482
  %count19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 8, !dbg !5507
  store i64 %count, i64* %count19, align 8, !dbg !5508
  %5 = bitcast %union.gimple_statement_d* %call15 to i8*, !dbg !5509
  %call20 = call %struct.edge_def* @split_block(%struct.basic_block_def* %4, i8* %5) #6, !dbg !5510
  call void @llvm.dbg.value(metadata %struct.edge_def* %call20, metadata !5477, metadata !DIExpression()), !dbg !5482
  %dest21 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call20, i64 0, i32 1, !dbg !5511
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %dest21, align 8, !dbg !5511
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %6, metadata !5470, metadata !DIExpression()), !dbg !5482
  %sub = sub nsw i64 %all, %count, !dbg !5512
  %count22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 8, !dbg !5513
  store i64 %sub, i64* %count22, align 8, !dbg !5514
  %7 = bitcast %union.gimple_statement_d* %call17 to i8*, !dbg !5515
  %call23 = call %struct.edge_def* @split_block(%struct.basic_block_def* %6, i8* %7) #6, !dbg !5516
  call void @llvm.dbg.value(metadata %struct.edge_def* %call23, metadata !5479, metadata !DIExpression()), !dbg !5482
  %dest24 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call23, i64 0, i32 1, !dbg !5517
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %dest24, align 8, !dbg !5517
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %8, metadata !5471, metadata !DIExpression()), !dbg !5482
  %count25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 8, !dbg !5518
  store i64 %all, i64* %count25, align 8, !dbg !5519
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call18, i64 0, i32 7, !dbg !5520
  %9 = load i32, i32* %flags, align 8, !dbg !5521
  %and = and i32 %9, -2050, !dbg !5521
  %or = or i32 %and, 2048, !dbg !5522
  store i32 %or, i32* %flags, align 8, !dbg !5522
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call18, i64 0, i32 8, !dbg !5523
  store i32 %prob, i32* %probability, align 4, !dbg !5524
  %count27 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call18, i64 0, i32 9, !dbg !5525
  store i64 %count, i64* %count27, align 8, !dbg !5526
  %call28 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call6, %struct.basic_block_def* %6, i32 1024) #6, !dbg !5527
  call void @llvm.dbg.value(metadata %struct.edge_def* %call28, metadata !5476, metadata !DIExpression()), !dbg !5482
  %sub29 = sub nsw i32 10000, %prob, !dbg !5528
  %probability30 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call28, i64 0, i32 8, !dbg !5529
  store i32 %sub29, i32* %probability30, align 4, !dbg !5530
  %count32 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call28, i64 0, i32 9, !dbg !5531
  store i64 %sub, i64* %count32, align 8, !dbg !5532
  call void @remove_edge(%struct.edge_def* %call20) #6, !dbg !5533
  %call33 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %4, %struct.basic_block_def* %8, i32 1) #6, !dbg !5534
  call void @llvm.dbg.value(metadata %struct.edge_def* %call33, metadata !5478, metadata !DIExpression()), !dbg !5482
  %probability34 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call33, i64 0, i32 8, !dbg !5535
  store i32 10000, i32* %probability34, align 4, !dbg !5536
  %count35 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call33, i64 0, i32 9, !dbg !5537
  store i64 %count, i64* %count35, align 8, !dbg !5538
  %probability36 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call23, i64 0, i32 8, !dbg !5539
  store i32 10000, i32* %probability36, align 4, !dbg !5540
  %count38 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call23, i64 0, i32 9, !dbg !5541
  store i64 %sub, i64* %count38, align 8, !dbg !5542
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5543
  ret %union.tree_node* %call7, !dbg !5544
}

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #2

declare dso_local i32 @get_pointer_alignment(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i32 @can_move_by_pieces(i64, i32) local_unnamed_addr #2

declare dso_local i32 @can_store_by_pieces(i64, %struct.rtx_def* (i8*, i64, i32)*, i8*, i32, i8 zeroext) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @builtin_memset_read_str(i8*, i64, i32) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gimple_stringop_fixed_value(%union.gimple_statement_d* %vcall_stmt, %union.tree_node* %icall_size, i32 %prob, i64 %count, i64 %all) unnamed_addr #5 !dbg !5545 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %size_arg = alloca i32, align 4
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %vcall_stmt, metadata !5549, metadata !DIExpression()), !dbg !5573
  call void @llvm.dbg.value(metadata %union.tree_node* %icall_size, metadata !5550, metadata !DIExpression()), !dbg !5573
  call void @llvm.dbg.value(metadata i32 %prob, metadata !5551, metadata !DIExpression()), !dbg !5573
  call void @llvm.dbg.value(metadata i64 %count, metadata !5552, metadata !DIExpression()), !dbg !5573
  call void @llvm.dbg.value(metadata i64 %all, metadata !5553, metadata !DIExpression()), !dbg !5573
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !5574
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5574
  %1 = bitcast i32* %size_arg to i8*, !dbg !5575
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !5575
  %call = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %vcall_stmt) #7, !dbg !5576
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5571, metadata !DIExpression()), !dbg !5573
  call void @llvm.dbg.value(metadata i32* %size_arg, metadata !5572, metadata !DIExpression(DW_OP_deref)), !dbg !5573
  %call1 = call fastcc zeroext i8 @interesting_stringop_to_profile_p(%union.tree_node* %call, %union.gimple_statement_d* %vcall_stmt, i32* nonnull %size_arg) #7, !dbg !5577
  %tobool = icmp eq i8 %call1, 0, !dbg !5577
  br i1 %tobool, label %if.then, label %if.end, !dbg !5579

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 1302, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5580
  br label %if.end, !dbg !5580

if.end:                                           ; preds = %entry, %if.then
  %call2 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %vcall_stmt) #7, !dbg !5581
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call2, metadata !5561, metadata !DIExpression()), !dbg !5573
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !5582
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5582
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* %vcall_stmt) #6, !dbg !5582
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !5582
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5582
  %3 = load i32, i32* %size_arg, align 4, !dbg !5583
  call void @llvm.dbg.value(metadata i32 %3, metadata !5572, metadata !DIExpression()), !dbg !5573
  %call3 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %vcall_stmt, i32 %3) #7, !dbg !5584
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !5559, metadata !DIExpression()), !dbg !5573
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5585
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !5585
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !5560, metadata !DIExpression()), !dbg !5573
  %call4 = call %union.tree_node* @create_tmp_var(%union.tree_node* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !5586
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !5558, metadata !DIExpression()), !dbg !5573
  %call5 = call %union.tree_node* @create_tmp_var(%union.tree_node* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !5587
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !5557, metadata !DIExpression()), !dbg !5573
  %call6 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %4, %union.tree_node* %icall_size) #6, !dbg !5588
  %call7 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call4, %union.tree_node* %call6) #6, !dbg !5588
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call7, metadata !5554, metadata !DIExpression()), !dbg !5573
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5570, metadata !DIExpression(DW_OP_deref)), !dbg !5573
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call7, i32 1) #6, !dbg !5589
  %call8 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call5, %union.tree_node* %call3) #6, !dbg !5590
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call8, metadata !5554, metadata !DIExpression()), !dbg !5573
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5570, metadata !DIExpression(DW_OP_deref)), !dbg !5573
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call8, i32 1) #6, !dbg !5591
  %call9 = call %union.gimple_statement_d* @gimple_build_cond(i32 101, %union.tree_node* %call5, %union.tree_node* %call4, %union.tree_node* null, %union.tree_node* null) #6, !dbg !5592
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call9, metadata !5555, metadata !DIExpression()), !dbg !5573
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5570, metadata !DIExpression(DW_OP_deref)), !dbg !5573
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call9, i32 1) #6, !dbg !5593
  %call10 = call %union.gimple_statement_d* @gimple_copy(%union.gimple_statement_d* %vcall_stmt) #6, !dbg !5594
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call10, metadata !5556, metadata !DIExpression()), !dbg !5573
  %5 = load i32, i32* %size_arg, align 4, !dbg !5595
  call void @llvm.dbg.value(metadata i32 %5, metadata !5572, metadata !DIExpression()), !dbg !5573
  call fastcc void @gimple_call_set_arg(%union.gimple_statement_d* %call10, i32 %5, %union.tree_node* %icall_size) #7, !dbg !5596
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5570, metadata !DIExpression(DW_OP_deref)), !dbg !5573
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call10, i32 1) #6, !dbg !5597
  %6 = bitcast %union.gimple_statement_d* %call9 to i8*, !dbg !5598
  %call11 = call %struct.edge_def* @split_block(%struct.basic_block_def* %call2, i8* %6) #6, !dbg !5599
  call void @llvm.dbg.value(metadata %struct.edge_def* %call11, metadata !5565, metadata !DIExpression()), !dbg !5573
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call11, i64 0, i32 1, !dbg !5600
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !5600
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %7, metadata !5562, metadata !DIExpression()), !dbg !5573
  %count12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 8, !dbg !5601
  store i64 %count, i64* %count12, align 8, !dbg !5602
  %8 = bitcast %union.gimple_statement_d* %call10 to i8*, !dbg !5603
  %call13 = call %struct.edge_def* @split_block(%struct.basic_block_def* %7, i8* %8) #6, !dbg !5604
  call void @llvm.dbg.value(metadata %struct.edge_def* %call13, metadata !5567, metadata !DIExpression()), !dbg !5573
  %dest14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call13, i64 0, i32 1, !dbg !5605
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %dest14, align 8, !dbg !5605
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %9, metadata !5563, metadata !DIExpression()), !dbg !5573
  %sub = sub nsw i64 %all, %count, !dbg !5606
  %count15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i64 0, i32 8, !dbg !5607
  store i64 %sub, i64* %count15, align 8, !dbg !5608
  %10 = bitcast %union.gimple_statement_d* %vcall_stmt to i8*, !dbg !5609
  %call16 = call %struct.edge_def* @split_block(%struct.basic_block_def* %9, i8* %10) #6, !dbg !5610
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !5569, metadata !DIExpression()), !dbg !5573
  %dest17 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 1, !dbg !5611
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %dest17, align 8, !dbg !5611
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %11, metadata !5564, metadata !DIExpression()), !dbg !5573
  %count18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i64 0, i32 8, !dbg !5612
  store i64 %all, i64* %count18, align 8, !dbg !5613
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call11, i64 0, i32 7, !dbg !5614
  %12 = load i32, i32* %flags, align 8, !dbg !5614
  %and = and i32 %12, -1026, !dbg !5615
  %or = or i32 %and, 1024, !dbg !5616
  store i32 %or, i32* %flags, align 8, !dbg !5617
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call11, i64 0, i32 8, !dbg !5618
  store i32 %prob, i32* %probability, align 4, !dbg !5619
  %count20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call11, i64 0, i32 9, !dbg !5620
  store i64 %count, i64* %count20, align 8, !dbg !5621
  %call21 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call2, %struct.basic_block_def* %9, i32 2048) #6, !dbg !5622
  call void @llvm.dbg.value(metadata %struct.edge_def* %call21, metadata !5566, metadata !DIExpression()), !dbg !5573
  %sub22 = sub nsw i32 10000, %prob, !dbg !5623
  %probability23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 8, !dbg !5624
  store i32 %sub22, i32* %probability23, align 4, !dbg !5625
  %count25 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 9, !dbg !5626
  store i64 %sub, i64* %count25, align 8, !dbg !5627
  call void @remove_edge(%struct.edge_def* %call13) #6, !dbg !5628
  %call26 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %7, %struct.basic_block_def* %11, i32 1) #6, !dbg !5629
  call void @llvm.dbg.value(metadata %struct.edge_def* %call26, metadata !5568, metadata !DIExpression()), !dbg !5573
  %probability27 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call26, i64 0, i32 8, !dbg !5630
  store i32 10000, i32* %probability27, align 4, !dbg !5631
  %count28 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call26, i64 0, i32 9, !dbg !5632
  store i64 %count, i64* %count28, align 8, !dbg !5633
  %probability29 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 8, !dbg !5634
  store i32 10000, i32* %probability29, align 4, !dbg !5635
  %count31 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 9, !dbg !5636
  store i64 %sub, i64* %count31, align 8, !dbg !5637
  %call32 = call zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d* %vcall_stmt) #6, !dbg !5638
  %tobool33 = icmp eq i8 %call32, 0, !dbg !5638
  br i1 %tobool33, label %cond.end, label %cond.true, !dbg !5638

cond.true:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 1357, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5638
  br label %cond.end, !dbg !5638

cond.end:                                         ; preds = %if.end, %cond.true
  %call34 = call zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d* %call10) #6, !dbg !5639
  %tobool35 = icmp eq i8 %call34, 0, !dbg !5639
  br i1 %tobool35, label %cond.end38, label %cond.true36, !dbg !5639

cond.true36:                                      ; preds = %cond.end
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 1358, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5639
  br label %cond.end38, !dbg !5639

cond.end38:                                       ; preds = %cond.end, %cond.true36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !5640
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5640
  ret void, !dbg !5640
}

declare dso_local %union.gimple_statement_d* @gimple_copy(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_arg(%union.gimple_statement_d* %gs, i32 %index, %union.tree_node* %arg) unnamed_addr #0 !dbg !5641 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5645, metadata !DIExpression()), !dbg !5648
  call void @llvm.dbg.value(metadata i32 %index, metadata !5646, metadata !DIExpression()), !dbg !5648
  call void @llvm.dbg.value(metadata %union.tree_node* %arg, metadata !5647, metadata !DIExpression()), !dbg !5648
  %add = add i32 %index, 3, !dbg !5649
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %add, %union.tree_node* %arg) #7, !dbg !5650
  ret void, !dbg !5651
}

declare dso_local zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !5652 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5654, metadata !DIExpression()), !dbg !5657
  call void @llvm.dbg.value(metadata i32 %i, metadata !5655, metadata !DIExpression()), !dbg !5657
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !5656, metadata !DIExpression()), !dbg !5657
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !5658
  %tobool = icmp eq i8 %call, 0, !dbg !5658
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !5658

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !5658
  %cmp = icmp ugt i32 %call1, %i, !dbg !5658
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !5658

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5658
  br label %cond.end, !dbg !5658

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !5659
  %idxprom = zext i32 %i to i64, !dbg !5659
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call3, i64 %idxprom, !dbg !5659
  store %union.tree_node* %op, %union.tree_node** %arrayidx, align 8, !dbg !5660
  ret void, !dbg !5661
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @find_func_by_pid(i32 %pid) unnamed_addr #0 !dbg !5662 {
entry:
  call void @llvm.dbg.value(metadata i32 %pid, metadata !5666, metadata !DIExpression()), !dbg !5667
  tail call fastcc void @init_pid_map() #7, !dbg !5668
  %0 = load %struct.cgraph_node**, %struct.cgraph_node*** @pid_map, align 8, !dbg !5669
  %idxprom = sext i32 %pid to i64, !dbg !5669
  %arrayidx = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %0, i64 %idxprom, !dbg !5669
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !5669
  ret %struct.cgraph_node* %1, !dbg !5670
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gimple_ic(%union.gimple_statement_d* %icall_stmt, %struct.cgraph_node* %direct_call, i32 %prob, i64 %count, i64 %all) unnamed_addr #5 !dbg !5671 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %icall_stmt, metadata !5675, metadata !DIExpression()), !dbg !5698
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %direct_call, metadata !5676, metadata !DIExpression()), !dbg !5698
  call void @llvm.dbg.value(metadata i32 %prob, metadata !5677, metadata !DIExpression()), !dbg !5698
  call void @llvm.dbg.value(metadata i64 %count, metadata !5678, metadata !DIExpression()), !dbg !5698
  call void @llvm.dbg.value(metadata i64 %all, metadata !5679, metadata !DIExpression()), !dbg !5698
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !5699
  %call = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %0) #6, !dbg !5700
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5690, metadata !DIExpression()), !dbg !5698
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !5701
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !5701
  %call1 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %icall_stmt) #7, !dbg !5702
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call1, metadata !5686, metadata !DIExpression()), !dbg !5698
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp2 to i8*, !dbg !5703
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5703
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp2, %union.gimple_statement_d* %icall_stmt) #6, !dbg !5703
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !5703
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5703
  %call3 = call %union.tree_node* @create_tmp_var(%union.tree_node* %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !5704
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !5684, metadata !DIExpression()), !dbg !5698
  %call4 = call %union.tree_node* @create_tmp_var(%union.tree_node* %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !5705
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !5683, metadata !DIExpression()), !dbg !5698
  %call5 = call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %icall_stmt) #7, !dbg !5706
  %call6 = call %union.tree_node* @unshare_expr(%union.tree_node* %call5) #6, !dbg !5707
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !5685, metadata !DIExpression()), !dbg !5698
  %call7 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call3, %union.tree_node* %call6) #6, !dbg !5708
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call7, metadata !5681, metadata !DIExpression()), !dbg !5698
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5696, metadata !DIExpression(DW_OP_deref)), !dbg !5698
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call7, i32 1) #6, !dbg !5709
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %direct_call, i64 0, i32 0, !dbg !5710
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !5710
  %4 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !5710
  %call8 = call %union.tree_node* @build_addr(%union.tree_node* %3, %union.tree_node* %4) #6, !dbg !5710
  %call9 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %call, %union.tree_node* %call8) #6, !dbg !5710
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !5685, metadata !DIExpression()), !dbg !5698
  %call10 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call4, %union.tree_node* %call9) #6, !dbg !5711
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call10, metadata !5681, metadata !DIExpression()), !dbg !5698
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5696, metadata !DIExpression(DW_OP_deref)), !dbg !5698
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call10, i32 1) #6, !dbg !5712
  %call11 = call %union.gimple_statement_d* @gimple_build_cond(i32 101, %union.tree_node* %call4, %union.tree_node* %call3, %union.tree_node* null, %union.tree_node* null) #6, !dbg !5713
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call11, metadata !5682, metadata !DIExpression()), !dbg !5698
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5696, metadata !DIExpression(DW_OP_deref)), !dbg !5698
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call11, i32 1) #6, !dbg !5714
  %call12 = call %union.gimple_statement_d* @gimple_copy(%union.gimple_statement_d* %icall_stmt) #6, !dbg !5715
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12, metadata !5680, metadata !DIExpression()), !dbg !5698
  %5 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !5716
  call fastcc void @gimple_call_set_fndecl(%union.gimple_statement_d* %call12, %union.tree_node* %5) #7, !dbg !5717
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5696, metadata !DIExpression(DW_OP_deref)), !dbg !5698
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call12, i32 1) #6, !dbg !5718
  %6 = bitcast %union.gimple_statement_d* %call11 to i8*, !dbg !5719
  %call14 = call %struct.edge_def* @split_block(%struct.basic_block_def* %call1, i8* %6) #6, !dbg !5720
  call void @llvm.dbg.value(metadata %struct.edge_def* %call14, metadata !5691, metadata !DIExpression()), !dbg !5698
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call14, i64 0, i32 1, !dbg !5721
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !5721
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %7, metadata !5687, metadata !DIExpression()), !dbg !5698
  %count15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 8, !dbg !5722
  store i64 %count, i64* %count15, align 8, !dbg !5723
  %8 = bitcast %union.gimple_statement_d* %call12 to i8*, !dbg !5724
  %call16 = call %struct.edge_def* @split_block(%struct.basic_block_def* %7, i8* %8) #6, !dbg !5725
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !5693, metadata !DIExpression()), !dbg !5698
  %dest17 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 1, !dbg !5726
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %dest17, align 8, !dbg !5726
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %9, metadata !5688, metadata !DIExpression()), !dbg !5698
  %sub = sub nsw i64 %all, %count, !dbg !5727
  %count18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i64 0, i32 8, !dbg !5728
  store i64 %sub, i64* %count18, align 8, !dbg !5729
  %10 = bitcast %union.gimple_statement_d* %icall_stmt to i8*, !dbg !5730
  %call19 = call %struct.edge_def* @split_block(%struct.basic_block_def* %9, i8* %10) #6, !dbg !5731
  call void @llvm.dbg.value(metadata %struct.edge_def* %call19, metadata !5695, metadata !DIExpression()), !dbg !5698
  %dest20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call19, i64 0, i32 1, !dbg !5732
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %dest20, align 8, !dbg !5732
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %11, metadata !5689, metadata !DIExpression()), !dbg !5698
  %count21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i64 0, i32 8, !dbg !5733
  store i64 %all, i64* %count21, align 8, !dbg !5734
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call14, i64 0, i32 7, !dbg !5735
  %12 = load i32, i32* %flags, align 8, !dbg !5735
  %and = and i32 %12, -1026, !dbg !5736
  %or = or i32 %and, 1024, !dbg !5737
  store i32 %or, i32* %flags, align 8, !dbg !5738
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call14, i64 0, i32 8, !dbg !5739
  store i32 %prob, i32* %probability, align 4, !dbg !5740
  %count23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call14, i64 0, i32 9, !dbg !5741
  store i64 %count, i64* %count23, align 8, !dbg !5742
  %call24 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call1, %struct.basic_block_def* %9, i32 2048) #6, !dbg !5743
  call void @llvm.dbg.value(metadata %struct.edge_def* %call24, metadata !5692, metadata !DIExpression()), !dbg !5698
  %sub25 = sub nsw i32 10000, %prob, !dbg !5744
  %probability26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call24, i64 0, i32 8, !dbg !5745
  store i32 %sub25, i32* %probability26, align 4, !dbg !5746
  %count28 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call24, i64 0, i32 9, !dbg !5747
  store i64 %sub, i64* %count28, align 8, !dbg !5748
  call void @remove_edge(%struct.edge_def* %call16) #6, !dbg !5749
  %call29 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %7, %struct.basic_block_def* %11, i32 1) #6, !dbg !5750
  call void @llvm.dbg.value(metadata %struct.edge_def* %call29, metadata !5694, metadata !DIExpression()), !dbg !5698
  %probability30 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call29, i64 0, i32 8, !dbg !5751
  store i32 10000, i32* %probability30, align 4, !dbg !5752
  %count31 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call29, i64 0, i32 9, !dbg !5753
  store i64 %count, i64* %count31, align 8, !dbg !5754
  %probability32 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call19, i64 0, i32 8, !dbg !5755
  store i32 10000, i32* %probability32, align 4, !dbg !5756
  %count34 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call19, i64 0, i32 9, !dbg !5757
  store i64 %sub, i64* %count34, align 8, !dbg !5758
  %call35 = call i32 @lookup_stmt_eh_lp(%union.gimple_statement_d* %icall_stmt) #6, !dbg !5759
  call void @llvm.dbg.value(metadata i32 %call35, metadata !5697, metadata !DIExpression()), !dbg !5698
  %cmp = icmp eq i32 %call35, 0, !dbg !5760
  br i1 %cmp, label %if.end41, label %if.then, !dbg !5762

if.then:                                          ; preds = %entry
  %call36 = call zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d* %call12) #6, !dbg !5763
  %tobool = icmp eq i8 %call36, 0, !dbg !5763
  br i1 %tobool, label %if.end, label %if.then37, !dbg !5766

if.then37:                                        ; preds = %if.then
  call void @add_stmt_to_eh_lp(%union.gimple_statement_d* %call12, i32 %call35) #6, !dbg !5767
  call void @make_eh_edges(%union.gimple_statement_d* %call12) #6, !dbg !5769
  br label %if.end, !dbg !5770

if.end:                                           ; preds = %if.then, %if.then37
  %call38 = call zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d* %icall_stmt) #6, !dbg !5771
  %tobool39 = icmp eq i8 %call38, 0, !dbg !5771
  br i1 %tobool39, label %cond.true, label %cond.end, !dbg !5771

cond.true:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 1162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5771
  br label %cond.end, !dbg !5771

cond.end:                                         ; preds = %if.end, %cond.true
  call void @make_eh_edges(%union.gimple_statement_d* %icall_stmt) #6, !dbg !5772
  %call40 = call zeroext i8 @gimple_purge_dead_eh_edges(%struct.basic_block_def* %11) #6, !dbg !5773
  br label %if.end41, !dbg !5774

if.end41:                                         ; preds = %entry, %cond.end
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !5775
  ret %union.gimple_statement_d* %call12, !dbg !5776
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_pid_map() unnamed_addr #5 !dbg !5777 {
entry:
  %0 = load %struct.cgraph_node**, %struct.cgraph_node*** @pid_map, align 8, !dbg !5780
  %cmp = icmp eq %struct.cgraph_node** %0, null, !dbg !5782
  br i1 %cmp, label %if.end, label %cleanup.cont, !dbg !5783

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @cgraph_max_pid, align 4, !dbg !5784
  %conv = sext i32 %1 to i64, !dbg !5784
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !5784
  store i8* %call, i8** bitcast (%struct.cgraph_node*** @pid_map to i8**), align 8, !dbg !5785
  br label %for.cond, !dbg !5786

for.cond:                                         ; preds = %for.inc, %if.end
  %n.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end ], [ %next, %for.inc ]
  %n.0 = load %struct.cgraph_node*, %struct.cgraph_node** %n.0.in, align 8, !dbg !5788
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.0, metadata !5779, metadata !DIExpression()), !dbg !5789
  %tobool = icmp eq %struct.cgraph_node* %n.0, null, !dbg !5790
  br i1 %tobool, label %cleanup.cont.loopexit, label %for.body, !dbg !5790

for.body:                                         ; preds = %for.cond
  %pid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 26, !dbg !5791
  %2 = load i32, i32* %pid, align 8, !dbg !5791
  %cmp1 = icmp eq i32 %2, -1, !dbg !5795
  br i1 %cmp1, label %for.inc, label %if.then3, !dbg !5796

if.then3:                                         ; preds = %for.body
  %3 = load %struct.cgraph_node**, %struct.cgraph_node*** @pid_map, align 8, !dbg !5797
  %idxprom = sext i32 %2 to i64, !dbg !5797
  %arrayidx = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %3, i64 %idxprom, !dbg !5797
  store %struct.cgraph_node* %n.0, %struct.cgraph_node** %arrayidx, align 8, !dbg !5798
  br label %for.inc, !dbg !5797

for.inc:                                          ; preds = %for.body, %if.then3
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 3, !dbg !5799
  br label %for.cond, !dbg !5800, !llvm.loop !5801

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !5803

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !5803
}

declare dso_local %union.tree_node* @build_pointer_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @unshare_expr(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_addr(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_fndecl(%union.gimple_statement_d* %gs, %union.tree_node* %decl) unnamed_addr #0 !dbg !5804 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5808, metadata !DIExpression()), !dbg !5810
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !5809, metadata !DIExpression()), !dbg !5810
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %gs) #7, !dbg !5811
  %call1 = tail call %union.tree_node* @build_fold_addr_expr_loc(i32 %call, %union.tree_node* %decl) #6, !dbg !5812
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 1, %union.tree_node* %call1) #7, !dbg !5813
  ret void, !dbg !5814
}

declare dso_local i32 @lookup_stmt_eh_lp(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @add_stmt_to_eh_lp(%union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local void @make_eh_edges(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local zeroext i8 @gimple_purge_dead_eh_edges(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_fold_addr_expr_loc(i32, %union.tree_node*) local_unnamed_addr #2

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
!llvm.module.flags = !{!3012, !3013, !3014}
!llvm.ident = !{!3015}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "error_found", scope: !2, file: !3, line: 364, type: !1386, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1384, globals: !2994, nameTableKind: None)
!3 = !DIFile(filename: "value-prof.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !335, !340, !345, !363, !370, !377, !387, !426, !452, !458, !1178, !1201, !1208}
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
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !330, line: 363, baseType: !7, size: 32, elements: !331)
!330 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!331 = !{!332, !333, !334}
!332 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !330, line: 355, baseType: !7, size: 32, elements: !336)
!336 = !{!337, !338, !339}
!337 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!338 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!339 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !341, line: 474, baseType: !7, size: 32, elements: !342)
!341 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!342 = !{!343, !344}
!343 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!344 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!345 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !135, line: 280, baseType: !7, size: 32, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362}
!347 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!363 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !135, line: 1817, baseType: !7, size: 32, elements: !364)
!364 = !{!365, !366, !367, !368, !369}
!365 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !135, line: 1805, baseType: !7, size: 32, elements: !371)
!371 = !{!372, !373, !374, !375, !376}
!372 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hist_type", file: !378, line: 24, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./value-prof.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382, !383, !384, !385, !386}
!380 = !DIEnumerator(name: "HIST_TYPE_INTERVAL", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "HIST_TYPE_POW2", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "HIST_TYPE_SINGLE_VALUE", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "HIST_TYPE_CONST_DELTA", value: 3, isUnsigned: true)
!384 = !DIEnumerator(name: "HIST_TYPE_INDIR_CALL", value: 4, isUnsigned: true)
!385 = !DIEnumerator(name: "HIST_TYPE_AVERAGE", value: 5, isUnsigned: true)
!386 = !DIEnumerator(name: "HIST_TYPE_IOR", value: 6, isUnsigned: true)
!387 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !388, line: 51, baseType: !7, size: 32, elements: !389)
!388 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!389 = !{!390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!390 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!391 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!392 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!393 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!394 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!395 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!396 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!397 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!398 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!399 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!400 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!401 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!402 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!403 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!404 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!405 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!406 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!407 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!408 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!409 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!410 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!411 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!412 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!413 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!414 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!415 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!416 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!417 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!418 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!419 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!420 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!421 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!422 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!423 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!424 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!425 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!426 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !388, line: 727, baseType: !7, size: 32, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451}
!428 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!429 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!430 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!431 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!432 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!433 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!434 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!435 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!436 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!437 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!438 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!439 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!440 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!441 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!442 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!443 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!444 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!445 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!446 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!447 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!448 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!449 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!450 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!451 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!452 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !388, line: 80, baseType: !7, size: 32, elements: !453)
!453 = !{!454, !455, !456, !457}
!454 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!455 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!456 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!457 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!458 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "built_in_function", file: !135, line: 220, baseType: !7, size: 32, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177}
!460 = !DIEnumerator(name: "BUILT_IN_ACOS", value: 0, isUnsigned: true)
!461 = !DIEnumerator(name: "BUILT_IN_ACOSF", value: 1, isUnsigned: true)
!462 = !DIEnumerator(name: "BUILT_IN_ACOSH", value: 2, isUnsigned: true)
!463 = !DIEnumerator(name: "BUILT_IN_ACOSHF", value: 3, isUnsigned: true)
!464 = !DIEnumerator(name: "BUILT_IN_ACOSHL", value: 4, isUnsigned: true)
!465 = !DIEnumerator(name: "BUILT_IN_ACOSL", value: 5, isUnsigned: true)
!466 = !DIEnumerator(name: "BUILT_IN_ASIN", value: 6, isUnsigned: true)
!467 = !DIEnumerator(name: "BUILT_IN_ASINF", value: 7, isUnsigned: true)
!468 = !DIEnumerator(name: "BUILT_IN_ASINH", value: 8, isUnsigned: true)
!469 = !DIEnumerator(name: "BUILT_IN_ASINHF", value: 9, isUnsigned: true)
!470 = !DIEnumerator(name: "BUILT_IN_ASINHL", value: 10, isUnsigned: true)
!471 = !DIEnumerator(name: "BUILT_IN_ASINL", value: 11, isUnsigned: true)
!472 = !DIEnumerator(name: "BUILT_IN_ATAN", value: 12, isUnsigned: true)
!473 = !DIEnumerator(name: "BUILT_IN_ATAN2", value: 13, isUnsigned: true)
!474 = !DIEnumerator(name: "BUILT_IN_ATAN2F", value: 14, isUnsigned: true)
!475 = !DIEnumerator(name: "BUILT_IN_ATAN2L", value: 15, isUnsigned: true)
!476 = !DIEnumerator(name: "BUILT_IN_ATANF", value: 16, isUnsigned: true)
!477 = !DIEnumerator(name: "BUILT_IN_ATANH", value: 17, isUnsigned: true)
!478 = !DIEnumerator(name: "BUILT_IN_ATANHF", value: 18, isUnsigned: true)
!479 = !DIEnumerator(name: "BUILT_IN_ATANHL", value: 19, isUnsigned: true)
!480 = !DIEnumerator(name: "BUILT_IN_ATANL", value: 20, isUnsigned: true)
!481 = !DIEnumerator(name: "BUILT_IN_CBRT", value: 21, isUnsigned: true)
!482 = !DIEnumerator(name: "BUILT_IN_CBRTF", value: 22, isUnsigned: true)
!483 = !DIEnumerator(name: "BUILT_IN_CBRTL", value: 23, isUnsigned: true)
!484 = !DIEnumerator(name: "BUILT_IN_CEIL", value: 24, isUnsigned: true)
!485 = !DIEnumerator(name: "BUILT_IN_CEILF", value: 25, isUnsigned: true)
!486 = !DIEnumerator(name: "BUILT_IN_CEILL", value: 26, isUnsigned: true)
!487 = !DIEnumerator(name: "BUILT_IN_COPYSIGN", value: 27, isUnsigned: true)
!488 = !DIEnumerator(name: "BUILT_IN_COPYSIGNF", value: 28, isUnsigned: true)
!489 = !DIEnumerator(name: "BUILT_IN_COPYSIGNL", value: 29, isUnsigned: true)
!490 = !DIEnumerator(name: "BUILT_IN_COS", value: 30, isUnsigned: true)
!491 = !DIEnumerator(name: "BUILT_IN_COSF", value: 31, isUnsigned: true)
!492 = !DIEnumerator(name: "BUILT_IN_COSH", value: 32, isUnsigned: true)
!493 = !DIEnumerator(name: "BUILT_IN_COSHF", value: 33, isUnsigned: true)
!494 = !DIEnumerator(name: "BUILT_IN_COSHL", value: 34, isUnsigned: true)
!495 = !DIEnumerator(name: "BUILT_IN_COSL", value: 35, isUnsigned: true)
!496 = !DIEnumerator(name: "BUILT_IN_DREM", value: 36, isUnsigned: true)
!497 = !DIEnumerator(name: "BUILT_IN_DREMF", value: 37, isUnsigned: true)
!498 = !DIEnumerator(name: "BUILT_IN_DREML", value: 38, isUnsigned: true)
!499 = !DIEnumerator(name: "BUILT_IN_ERF", value: 39, isUnsigned: true)
!500 = !DIEnumerator(name: "BUILT_IN_ERFC", value: 40, isUnsigned: true)
!501 = !DIEnumerator(name: "BUILT_IN_ERFCF", value: 41, isUnsigned: true)
!502 = !DIEnumerator(name: "BUILT_IN_ERFCL", value: 42, isUnsigned: true)
!503 = !DIEnumerator(name: "BUILT_IN_ERFF", value: 43, isUnsigned: true)
!504 = !DIEnumerator(name: "BUILT_IN_ERFL", value: 44, isUnsigned: true)
!505 = !DIEnumerator(name: "BUILT_IN_EXP", value: 45, isUnsigned: true)
!506 = !DIEnumerator(name: "BUILT_IN_EXP10", value: 46, isUnsigned: true)
!507 = !DIEnumerator(name: "BUILT_IN_EXP10F", value: 47, isUnsigned: true)
!508 = !DIEnumerator(name: "BUILT_IN_EXP10L", value: 48, isUnsigned: true)
!509 = !DIEnumerator(name: "BUILT_IN_EXP2", value: 49, isUnsigned: true)
!510 = !DIEnumerator(name: "BUILT_IN_EXP2F", value: 50, isUnsigned: true)
!511 = !DIEnumerator(name: "BUILT_IN_EXP2L", value: 51, isUnsigned: true)
!512 = !DIEnumerator(name: "BUILT_IN_EXPF", value: 52, isUnsigned: true)
!513 = !DIEnumerator(name: "BUILT_IN_EXPL", value: 53, isUnsigned: true)
!514 = !DIEnumerator(name: "BUILT_IN_EXPM1", value: 54, isUnsigned: true)
!515 = !DIEnumerator(name: "BUILT_IN_EXPM1F", value: 55, isUnsigned: true)
!516 = !DIEnumerator(name: "BUILT_IN_EXPM1L", value: 56, isUnsigned: true)
!517 = !DIEnumerator(name: "BUILT_IN_FABS", value: 57, isUnsigned: true)
!518 = !DIEnumerator(name: "BUILT_IN_FABSF", value: 58, isUnsigned: true)
!519 = !DIEnumerator(name: "BUILT_IN_FABSL", value: 59, isUnsigned: true)
!520 = !DIEnumerator(name: "BUILT_IN_FDIM", value: 60, isUnsigned: true)
!521 = !DIEnumerator(name: "BUILT_IN_FDIMF", value: 61, isUnsigned: true)
!522 = !DIEnumerator(name: "BUILT_IN_FDIML", value: 62, isUnsigned: true)
!523 = !DIEnumerator(name: "BUILT_IN_FLOOR", value: 63, isUnsigned: true)
!524 = !DIEnumerator(name: "BUILT_IN_FLOORF", value: 64, isUnsigned: true)
!525 = !DIEnumerator(name: "BUILT_IN_FLOORL", value: 65, isUnsigned: true)
!526 = !DIEnumerator(name: "BUILT_IN_FMA", value: 66, isUnsigned: true)
!527 = !DIEnumerator(name: "BUILT_IN_FMAF", value: 67, isUnsigned: true)
!528 = !DIEnumerator(name: "BUILT_IN_FMAL", value: 68, isUnsigned: true)
!529 = !DIEnumerator(name: "BUILT_IN_FMAX", value: 69, isUnsigned: true)
!530 = !DIEnumerator(name: "BUILT_IN_FMAXF", value: 70, isUnsigned: true)
!531 = !DIEnumerator(name: "BUILT_IN_FMAXL", value: 71, isUnsigned: true)
!532 = !DIEnumerator(name: "BUILT_IN_FMIN", value: 72, isUnsigned: true)
!533 = !DIEnumerator(name: "BUILT_IN_FMINF", value: 73, isUnsigned: true)
!534 = !DIEnumerator(name: "BUILT_IN_FMINL", value: 74, isUnsigned: true)
!535 = !DIEnumerator(name: "BUILT_IN_FMOD", value: 75, isUnsigned: true)
!536 = !DIEnumerator(name: "BUILT_IN_FMODF", value: 76, isUnsigned: true)
!537 = !DIEnumerator(name: "BUILT_IN_FMODL", value: 77, isUnsigned: true)
!538 = !DIEnumerator(name: "BUILT_IN_FREXP", value: 78, isUnsigned: true)
!539 = !DIEnumerator(name: "BUILT_IN_FREXPF", value: 79, isUnsigned: true)
!540 = !DIEnumerator(name: "BUILT_IN_FREXPL", value: 80, isUnsigned: true)
!541 = !DIEnumerator(name: "BUILT_IN_GAMMA", value: 81, isUnsigned: true)
!542 = !DIEnumerator(name: "BUILT_IN_GAMMAF", value: 82, isUnsigned: true)
!543 = !DIEnumerator(name: "BUILT_IN_GAMMAL", value: 83, isUnsigned: true)
!544 = !DIEnumerator(name: "BUILT_IN_GAMMA_R", value: 84, isUnsigned: true)
!545 = !DIEnumerator(name: "BUILT_IN_GAMMAF_R", value: 85, isUnsigned: true)
!546 = !DIEnumerator(name: "BUILT_IN_GAMMAL_R", value: 86, isUnsigned: true)
!547 = !DIEnumerator(name: "BUILT_IN_HUGE_VAL", value: 87, isUnsigned: true)
!548 = !DIEnumerator(name: "BUILT_IN_HUGE_VALF", value: 88, isUnsigned: true)
!549 = !DIEnumerator(name: "BUILT_IN_HUGE_VALL", value: 89, isUnsigned: true)
!550 = !DIEnumerator(name: "BUILT_IN_HYPOT", value: 90, isUnsigned: true)
!551 = !DIEnumerator(name: "BUILT_IN_HYPOTF", value: 91, isUnsigned: true)
!552 = !DIEnumerator(name: "BUILT_IN_HYPOTL", value: 92, isUnsigned: true)
!553 = !DIEnumerator(name: "BUILT_IN_ILOGB", value: 93, isUnsigned: true)
!554 = !DIEnumerator(name: "BUILT_IN_ILOGBF", value: 94, isUnsigned: true)
!555 = !DIEnumerator(name: "BUILT_IN_ILOGBL", value: 95, isUnsigned: true)
!556 = !DIEnumerator(name: "BUILT_IN_INF", value: 96, isUnsigned: true)
!557 = !DIEnumerator(name: "BUILT_IN_INFF", value: 97, isUnsigned: true)
!558 = !DIEnumerator(name: "BUILT_IN_INFL", value: 98, isUnsigned: true)
!559 = !DIEnumerator(name: "BUILT_IN_INFD32", value: 99, isUnsigned: true)
!560 = !DIEnumerator(name: "BUILT_IN_INFD64", value: 100, isUnsigned: true)
!561 = !DIEnumerator(name: "BUILT_IN_INFD128", value: 101, isUnsigned: true)
!562 = !DIEnumerator(name: "BUILT_IN_J0", value: 102, isUnsigned: true)
!563 = !DIEnumerator(name: "BUILT_IN_J0F", value: 103, isUnsigned: true)
!564 = !DIEnumerator(name: "BUILT_IN_J0L", value: 104, isUnsigned: true)
!565 = !DIEnumerator(name: "BUILT_IN_J1", value: 105, isUnsigned: true)
!566 = !DIEnumerator(name: "BUILT_IN_J1F", value: 106, isUnsigned: true)
!567 = !DIEnumerator(name: "BUILT_IN_J1L", value: 107, isUnsigned: true)
!568 = !DIEnumerator(name: "BUILT_IN_JN", value: 108, isUnsigned: true)
!569 = !DIEnumerator(name: "BUILT_IN_JNF", value: 109, isUnsigned: true)
!570 = !DIEnumerator(name: "BUILT_IN_JNL", value: 110, isUnsigned: true)
!571 = !DIEnumerator(name: "BUILT_IN_LCEIL", value: 111, isUnsigned: true)
!572 = !DIEnumerator(name: "BUILT_IN_LCEILF", value: 112, isUnsigned: true)
!573 = !DIEnumerator(name: "BUILT_IN_LCEILL", value: 113, isUnsigned: true)
!574 = !DIEnumerator(name: "BUILT_IN_LDEXP", value: 114, isUnsigned: true)
!575 = !DIEnumerator(name: "BUILT_IN_LDEXPF", value: 115, isUnsigned: true)
!576 = !DIEnumerator(name: "BUILT_IN_LDEXPL", value: 116, isUnsigned: true)
!577 = !DIEnumerator(name: "BUILT_IN_LFLOOR", value: 117, isUnsigned: true)
!578 = !DIEnumerator(name: "BUILT_IN_LFLOORF", value: 118, isUnsigned: true)
!579 = !DIEnumerator(name: "BUILT_IN_LFLOORL", value: 119, isUnsigned: true)
!580 = !DIEnumerator(name: "BUILT_IN_LGAMMA", value: 120, isUnsigned: true)
!581 = !DIEnumerator(name: "BUILT_IN_LGAMMAF", value: 121, isUnsigned: true)
!582 = !DIEnumerator(name: "BUILT_IN_LGAMMAL", value: 122, isUnsigned: true)
!583 = !DIEnumerator(name: "BUILT_IN_LGAMMA_R", value: 123, isUnsigned: true)
!584 = !DIEnumerator(name: "BUILT_IN_LGAMMAF_R", value: 124, isUnsigned: true)
!585 = !DIEnumerator(name: "BUILT_IN_LGAMMAL_R", value: 125, isUnsigned: true)
!586 = !DIEnumerator(name: "BUILT_IN_LLCEIL", value: 126, isUnsigned: true)
!587 = !DIEnumerator(name: "BUILT_IN_LLCEILF", value: 127, isUnsigned: true)
!588 = !DIEnumerator(name: "BUILT_IN_LLCEILL", value: 128, isUnsigned: true)
!589 = !DIEnumerator(name: "BUILT_IN_LLFLOOR", value: 129, isUnsigned: true)
!590 = !DIEnumerator(name: "BUILT_IN_LLFLOORF", value: 130, isUnsigned: true)
!591 = !DIEnumerator(name: "BUILT_IN_LLFLOORL", value: 131, isUnsigned: true)
!592 = !DIEnumerator(name: "BUILT_IN_LLRINT", value: 132, isUnsigned: true)
!593 = !DIEnumerator(name: "BUILT_IN_LLRINTF", value: 133, isUnsigned: true)
!594 = !DIEnumerator(name: "BUILT_IN_LLRINTL", value: 134, isUnsigned: true)
!595 = !DIEnumerator(name: "BUILT_IN_LLROUND", value: 135, isUnsigned: true)
!596 = !DIEnumerator(name: "BUILT_IN_LLROUNDF", value: 136, isUnsigned: true)
!597 = !DIEnumerator(name: "BUILT_IN_LLROUNDL", value: 137, isUnsigned: true)
!598 = !DIEnumerator(name: "BUILT_IN_LOG", value: 138, isUnsigned: true)
!599 = !DIEnumerator(name: "BUILT_IN_LOG10", value: 139, isUnsigned: true)
!600 = !DIEnumerator(name: "BUILT_IN_LOG10F", value: 140, isUnsigned: true)
!601 = !DIEnumerator(name: "BUILT_IN_LOG10L", value: 141, isUnsigned: true)
!602 = !DIEnumerator(name: "BUILT_IN_LOG1P", value: 142, isUnsigned: true)
!603 = !DIEnumerator(name: "BUILT_IN_LOG1PF", value: 143, isUnsigned: true)
!604 = !DIEnumerator(name: "BUILT_IN_LOG1PL", value: 144, isUnsigned: true)
!605 = !DIEnumerator(name: "BUILT_IN_LOG2", value: 145, isUnsigned: true)
!606 = !DIEnumerator(name: "BUILT_IN_LOG2F", value: 146, isUnsigned: true)
!607 = !DIEnumerator(name: "BUILT_IN_LOG2L", value: 147, isUnsigned: true)
!608 = !DIEnumerator(name: "BUILT_IN_LOGB", value: 148, isUnsigned: true)
!609 = !DIEnumerator(name: "BUILT_IN_LOGBF", value: 149, isUnsigned: true)
!610 = !DIEnumerator(name: "BUILT_IN_LOGBL", value: 150, isUnsigned: true)
!611 = !DIEnumerator(name: "BUILT_IN_LOGF", value: 151, isUnsigned: true)
!612 = !DIEnumerator(name: "BUILT_IN_LOGL", value: 152, isUnsigned: true)
!613 = !DIEnumerator(name: "BUILT_IN_LRINT", value: 153, isUnsigned: true)
!614 = !DIEnumerator(name: "BUILT_IN_LRINTF", value: 154, isUnsigned: true)
!615 = !DIEnumerator(name: "BUILT_IN_LRINTL", value: 155, isUnsigned: true)
!616 = !DIEnumerator(name: "BUILT_IN_LROUND", value: 156, isUnsigned: true)
!617 = !DIEnumerator(name: "BUILT_IN_LROUNDF", value: 157, isUnsigned: true)
!618 = !DIEnumerator(name: "BUILT_IN_LROUNDL", value: 158, isUnsigned: true)
!619 = !DIEnumerator(name: "BUILT_IN_MODF", value: 159, isUnsigned: true)
!620 = !DIEnumerator(name: "BUILT_IN_MODFF", value: 160, isUnsigned: true)
!621 = !DIEnumerator(name: "BUILT_IN_MODFL", value: 161, isUnsigned: true)
!622 = !DIEnumerator(name: "BUILT_IN_NAN", value: 162, isUnsigned: true)
!623 = !DIEnumerator(name: "BUILT_IN_NANF", value: 163, isUnsigned: true)
!624 = !DIEnumerator(name: "BUILT_IN_NANL", value: 164, isUnsigned: true)
!625 = !DIEnumerator(name: "BUILT_IN_NAND32", value: 165, isUnsigned: true)
!626 = !DIEnumerator(name: "BUILT_IN_NAND64", value: 166, isUnsigned: true)
!627 = !DIEnumerator(name: "BUILT_IN_NAND128", value: 167, isUnsigned: true)
!628 = !DIEnumerator(name: "BUILT_IN_NANS", value: 168, isUnsigned: true)
!629 = !DIEnumerator(name: "BUILT_IN_NANSF", value: 169, isUnsigned: true)
!630 = !DIEnumerator(name: "BUILT_IN_NANSL", value: 170, isUnsigned: true)
!631 = !DIEnumerator(name: "BUILT_IN_NEARBYINT", value: 171, isUnsigned: true)
!632 = !DIEnumerator(name: "BUILT_IN_NEARBYINTF", value: 172, isUnsigned: true)
!633 = !DIEnumerator(name: "BUILT_IN_NEARBYINTL", value: 173, isUnsigned: true)
!634 = !DIEnumerator(name: "BUILT_IN_NEXTAFTER", value: 174, isUnsigned: true)
!635 = !DIEnumerator(name: "BUILT_IN_NEXTAFTERF", value: 175, isUnsigned: true)
!636 = !DIEnumerator(name: "BUILT_IN_NEXTAFTERL", value: 176, isUnsigned: true)
!637 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARD", value: 177, isUnsigned: true)
!638 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARDF", value: 178, isUnsigned: true)
!639 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARDL", value: 179, isUnsigned: true)
!640 = !DIEnumerator(name: "BUILT_IN_POW", value: 180, isUnsigned: true)
!641 = !DIEnumerator(name: "BUILT_IN_POW10", value: 181, isUnsigned: true)
!642 = !DIEnumerator(name: "BUILT_IN_POW10F", value: 182, isUnsigned: true)
!643 = !DIEnumerator(name: "BUILT_IN_POW10L", value: 183, isUnsigned: true)
!644 = !DIEnumerator(name: "BUILT_IN_POWF", value: 184, isUnsigned: true)
!645 = !DIEnumerator(name: "BUILT_IN_POWI", value: 185, isUnsigned: true)
!646 = !DIEnumerator(name: "BUILT_IN_POWIF", value: 186, isUnsigned: true)
!647 = !DIEnumerator(name: "BUILT_IN_POWIL", value: 187, isUnsigned: true)
!648 = !DIEnumerator(name: "BUILT_IN_POWL", value: 188, isUnsigned: true)
!649 = !DIEnumerator(name: "BUILT_IN_REMAINDER", value: 189, isUnsigned: true)
!650 = !DIEnumerator(name: "BUILT_IN_REMAINDERF", value: 190, isUnsigned: true)
!651 = !DIEnumerator(name: "BUILT_IN_REMAINDERL", value: 191, isUnsigned: true)
!652 = !DIEnumerator(name: "BUILT_IN_REMQUO", value: 192, isUnsigned: true)
!653 = !DIEnumerator(name: "BUILT_IN_REMQUOF", value: 193, isUnsigned: true)
!654 = !DIEnumerator(name: "BUILT_IN_REMQUOL", value: 194, isUnsigned: true)
!655 = !DIEnumerator(name: "BUILT_IN_RINT", value: 195, isUnsigned: true)
!656 = !DIEnumerator(name: "BUILT_IN_RINTF", value: 196, isUnsigned: true)
!657 = !DIEnumerator(name: "BUILT_IN_RINTL", value: 197, isUnsigned: true)
!658 = !DIEnumerator(name: "BUILT_IN_ROUND", value: 198, isUnsigned: true)
!659 = !DIEnumerator(name: "BUILT_IN_ROUNDF", value: 199, isUnsigned: true)
!660 = !DIEnumerator(name: "BUILT_IN_ROUNDL", value: 200, isUnsigned: true)
!661 = !DIEnumerator(name: "BUILT_IN_SCALB", value: 201, isUnsigned: true)
!662 = !DIEnumerator(name: "BUILT_IN_SCALBF", value: 202, isUnsigned: true)
!663 = !DIEnumerator(name: "BUILT_IN_SCALBL", value: 203, isUnsigned: true)
!664 = !DIEnumerator(name: "BUILT_IN_SCALBLN", value: 204, isUnsigned: true)
!665 = !DIEnumerator(name: "BUILT_IN_SCALBLNF", value: 205, isUnsigned: true)
!666 = !DIEnumerator(name: "BUILT_IN_SCALBLNL", value: 206, isUnsigned: true)
!667 = !DIEnumerator(name: "BUILT_IN_SCALBN", value: 207, isUnsigned: true)
!668 = !DIEnumerator(name: "BUILT_IN_SCALBNF", value: 208, isUnsigned: true)
!669 = !DIEnumerator(name: "BUILT_IN_SCALBNL", value: 209, isUnsigned: true)
!670 = !DIEnumerator(name: "BUILT_IN_SIGNBIT", value: 210, isUnsigned: true)
!671 = !DIEnumerator(name: "BUILT_IN_SIGNBITF", value: 211, isUnsigned: true)
!672 = !DIEnumerator(name: "BUILT_IN_SIGNBITL", value: 212, isUnsigned: true)
!673 = !DIEnumerator(name: "BUILT_IN_SIGNBITD32", value: 213, isUnsigned: true)
!674 = !DIEnumerator(name: "BUILT_IN_SIGNBITD64", value: 214, isUnsigned: true)
!675 = !DIEnumerator(name: "BUILT_IN_SIGNBITD128", value: 215, isUnsigned: true)
!676 = !DIEnumerator(name: "BUILT_IN_SIGNIFICAND", value: 216, isUnsigned: true)
!677 = !DIEnumerator(name: "BUILT_IN_SIGNIFICANDF", value: 217, isUnsigned: true)
!678 = !DIEnumerator(name: "BUILT_IN_SIGNIFICANDL", value: 218, isUnsigned: true)
!679 = !DIEnumerator(name: "BUILT_IN_SIN", value: 219, isUnsigned: true)
!680 = !DIEnumerator(name: "BUILT_IN_SINCOS", value: 220, isUnsigned: true)
!681 = !DIEnumerator(name: "BUILT_IN_SINCOSF", value: 221, isUnsigned: true)
!682 = !DIEnumerator(name: "BUILT_IN_SINCOSL", value: 222, isUnsigned: true)
!683 = !DIEnumerator(name: "BUILT_IN_SINF", value: 223, isUnsigned: true)
!684 = !DIEnumerator(name: "BUILT_IN_SINH", value: 224, isUnsigned: true)
!685 = !DIEnumerator(name: "BUILT_IN_SINHF", value: 225, isUnsigned: true)
!686 = !DIEnumerator(name: "BUILT_IN_SINHL", value: 226, isUnsigned: true)
!687 = !DIEnumerator(name: "BUILT_IN_SINL", value: 227, isUnsigned: true)
!688 = !DIEnumerator(name: "BUILT_IN_SQRT", value: 228, isUnsigned: true)
!689 = !DIEnumerator(name: "BUILT_IN_SQRTF", value: 229, isUnsigned: true)
!690 = !DIEnumerator(name: "BUILT_IN_SQRTL", value: 230, isUnsigned: true)
!691 = !DIEnumerator(name: "BUILT_IN_TAN", value: 231, isUnsigned: true)
!692 = !DIEnumerator(name: "BUILT_IN_TANF", value: 232, isUnsigned: true)
!693 = !DIEnumerator(name: "BUILT_IN_TANH", value: 233, isUnsigned: true)
!694 = !DIEnumerator(name: "BUILT_IN_TANHF", value: 234, isUnsigned: true)
!695 = !DIEnumerator(name: "BUILT_IN_TANHL", value: 235, isUnsigned: true)
!696 = !DIEnumerator(name: "BUILT_IN_TANL", value: 236, isUnsigned: true)
!697 = !DIEnumerator(name: "BUILT_IN_TGAMMA", value: 237, isUnsigned: true)
!698 = !DIEnumerator(name: "BUILT_IN_TGAMMAF", value: 238, isUnsigned: true)
!699 = !DIEnumerator(name: "BUILT_IN_TGAMMAL", value: 239, isUnsigned: true)
!700 = !DIEnumerator(name: "BUILT_IN_TRUNC", value: 240, isUnsigned: true)
!701 = !DIEnumerator(name: "BUILT_IN_TRUNCF", value: 241, isUnsigned: true)
!702 = !DIEnumerator(name: "BUILT_IN_TRUNCL", value: 242, isUnsigned: true)
!703 = !DIEnumerator(name: "BUILT_IN_Y0", value: 243, isUnsigned: true)
!704 = !DIEnumerator(name: "BUILT_IN_Y0F", value: 244, isUnsigned: true)
!705 = !DIEnumerator(name: "BUILT_IN_Y0L", value: 245, isUnsigned: true)
!706 = !DIEnumerator(name: "BUILT_IN_Y1", value: 246, isUnsigned: true)
!707 = !DIEnumerator(name: "BUILT_IN_Y1F", value: 247, isUnsigned: true)
!708 = !DIEnumerator(name: "BUILT_IN_Y1L", value: 248, isUnsigned: true)
!709 = !DIEnumerator(name: "BUILT_IN_YN", value: 249, isUnsigned: true)
!710 = !DIEnumerator(name: "BUILT_IN_YNF", value: 250, isUnsigned: true)
!711 = !DIEnumerator(name: "BUILT_IN_YNL", value: 251, isUnsigned: true)
!712 = !DIEnumerator(name: "BUILT_IN_CABS", value: 252, isUnsigned: true)
!713 = !DIEnumerator(name: "BUILT_IN_CABSF", value: 253, isUnsigned: true)
!714 = !DIEnumerator(name: "BUILT_IN_CABSL", value: 254, isUnsigned: true)
!715 = !DIEnumerator(name: "BUILT_IN_CACOS", value: 255, isUnsigned: true)
!716 = !DIEnumerator(name: "BUILT_IN_CACOSF", value: 256, isUnsigned: true)
!717 = !DIEnumerator(name: "BUILT_IN_CACOSH", value: 257, isUnsigned: true)
!718 = !DIEnumerator(name: "BUILT_IN_CACOSHF", value: 258, isUnsigned: true)
!719 = !DIEnumerator(name: "BUILT_IN_CACOSHL", value: 259, isUnsigned: true)
!720 = !DIEnumerator(name: "BUILT_IN_CACOSL", value: 260, isUnsigned: true)
!721 = !DIEnumerator(name: "BUILT_IN_CARG", value: 261, isUnsigned: true)
!722 = !DIEnumerator(name: "BUILT_IN_CARGF", value: 262, isUnsigned: true)
!723 = !DIEnumerator(name: "BUILT_IN_CARGL", value: 263, isUnsigned: true)
!724 = !DIEnumerator(name: "BUILT_IN_CASIN", value: 264, isUnsigned: true)
!725 = !DIEnumerator(name: "BUILT_IN_CASINF", value: 265, isUnsigned: true)
!726 = !DIEnumerator(name: "BUILT_IN_CASINH", value: 266, isUnsigned: true)
!727 = !DIEnumerator(name: "BUILT_IN_CASINHF", value: 267, isUnsigned: true)
!728 = !DIEnumerator(name: "BUILT_IN_CASINHL", value: 268, isUnsigned: true)
!729 = !DIEnumerator(name: "BUILT_IN_CASINL", value: 269, isUnsigned: true)
!730 = !DIEnumerator(name: "BUILT_IN_CATAN", value: 270, isUnsigned: true)
!731 = !DIEnumerator(name: "BUILT_IN_CATANF", value: 271, isUnsigned: true)
!732 = !DIEnumerator(name: "BUILT_IN_CATANH", value: 272, isUnsigned: true)
!733 = !DIEnumerator(name: "BUILT_IN_CATANHF", value: 273, isUnsigned: true)
!734 = !DIEnumerator(name: "BUILT_IN_CATANHL", value: 274, isUnsigned: true)
!735 = !DIEnumerator(name: "BUILT_IN_CATANL", value: 275, isUnsigned: true)
!736 = !DIEnumerator(name: "BUILT_IN_CCOS", value: 276, isUnsigned: true)
!737 = !DIEnumerator(name: "BUILT_IN_CCOSF", value: 277, isUnsigned: true)
!738 = !DIEnumerator(name: "BUILT_IN_CCOSH", value: 278, isUnsigned: true)
!739 = !DIEnumerator(name: "BUILT_IN_CCOSHF", value: 279, isUnsigned: true)
!740 = !DIEnumerator(name: "BUILT_IN_CCOSHL", value: 280, isUnsigned: true)
!741 = !DIEnumerator(name: "BUILT_IN_CCOSL", value: 281, isUnsigned: true)
!742 = !DIEnumerator(name: "BUILT_IN_CEXP", value: 282, isUnsigned: true)
!743 = !DIEnumerator(name: "BUILT_IN_CEXPF", value: 283, isUnsigned: true)
!744 = !DIEnumerator(name: "BUILT_IN_CEXPL", value: 284, isUnsigned: true)
!745 = !DIEnumerator(name: "BUILT_IN_CEXPI", value: 285, isUnsigned: true)
!746 = !DIEnumerator(name: "BUILT_IN_CEXPIF", value: 286, isUnsigned: true)
!747 = !DIEnumerator(name: "BUILT_IN_CEXPIL", value: 287, isUnsigned: true)
!748 = !DIEnumerator(name: "BUILT_IN_CIMAG", value: 288, isUnsigned: true)
!749 = !DIEnumerator(name: "BUILT_IN_CIMAGF", value: 289, isUnsigned: true)
!750 = !DIEnumerator(name: "BUILT_IN_CIMAGL", value: 290, isUnsigned: true)
!751 = !DIEnumerator(name: "BUILT_IN_CLOG", value: 291, isUnsigned: true)
!752 = !DIEnumerator(name: "BUILT_IN_CLOGF", value: 292, isUnsigned: true)
!753 = !DIEnumerator(name: "BUILT_IN_CLOGL", value: 293, isUnsigned: true)
!754 = !DIEnumerator(name: "BUILT_IN_CLOG10", value: 294, isUnsigned: true)
!755 = !DIEnumerator(name: "BUILT_IN_CLOG10F", value: 295, isUnsigned: true)
!756 = !DIEnumerator(name: "BUILT_IN_CLOG10L", value: 296, isUnsigned: true)
!757 = !DIEnumerator(name: "BUILT_IN_CONJ", value: 297, isUnsigned: true)
!758 = !DIEnumerator(name: "BUILT_IN_CONJF", value: 298, isUnsigned: true)
!759 = !DIEnumerator(name: "BUILT_IN_CONJL", value: 299, isUnsigned: true)
!760 = !DIEnumerator(name: "BUILT_IN_CPOW", value: 300, isUnsigned: true)
!761 = !DIEnumerator(name: "BUILT_IN_CPOWF", value: 301, isUnsigned: true)
!762 = !DIEnumerator(name: "BUILT_IN_CPOWL", value: 302, isUnsigned: true)
!763 = !DIEnumerator(name: "BUILT_IN_CPROJ", value: 303, isUnsigned: true)
!764 = !DIEnumerator(name: "BUILT_IN_CPROJF", value: 304, isUnsigned: true)
!765 = !DIEnumerator(name: "BUILT_IN_CPROJL", value: 305, isUnsigned: true)
!766 = !DIEnumerator(name: "BUILT_IN_CREAL", value: 306, isUnsigned: true)
!767 = !DIEnumerator(name: "BUILT_IN_CREALF", value: 307, isUnsigned: true)
!768 = !DIEnumerator(name: "BUILT_IN_CREALL", value: 308, isUnsigned: true)
!769 = !DIEnumerator(name: "BUILT_IN_CSIN", value: 309, isUnsigned: true)
!770 = !DIEnumerator(name: "BUILT_IN_CSINF", value: 310, isUnsigned: true)
!771 = !DIEnumerator(name: "BUILT_IN_CSINH", value: 311, isUnsigned: true)
!772 = !DIEnumerator(name: "BUILT_IN_CSINHF", value: 312, isUnsigned: true)
!773 = !DIEnumerator(name: "BUILT_IN_CSINHL", value: 313, isUnsigned: true)
!774 = !DIEnumerator(name: "BUILT_IN_CSINL", value: 314, isUnsigned: true)
!775 = !DIEnumerator(name: "BUILT_IN_CSQRT", value: 315, isUnsigned: true)
!776 = !DIEnumerator(name: "BUILT_IN_CSQRTF", value: 316, isUnsigned: true)
!777 = !DIEnumerator(name: "BUILT_IN_CSQRTL", value: 317, isUnsigned: true)
!778 = !DIEnumerator(name: "BUILT_IN_CTAN", value: 318, isUnsigned: true)
!779 = !DIEnumerator(name: "BUILT_IN_CTANF", value: 319, isUnsigned: true)
!780 = !DIEnumerator(name: "BUILT_IN_CTANH", value: 320, isUnsigned: true)
!781 = !DIEnumerator(name: "BUILT_IN_CTANHF", value: 321, isUnsigned: true)
!782 = !DIEnumerator(name: "BUILT_IN_CTANHL", value: 322, isUnsigned: true)
!783 = !DIEnumerator(name: "BUILT_IN_CTANL", value: 323, isUnsigned: true)
!784 = !DIEnumerator(name: "BUILT_IN_BCMP", value: 324, isUnsigned: true)
!785 = !DIEnumerator(name: "BUILT_IN_BCOPY", value: 325, isUnsigned: true)
!786 = !DIEnumerator(name: "BUILT_IN_BZERO", value: 326, isUnsigned: true)
!787 = !DIEnumerator(name: "BUILT_IN_INDEX", value: 327, isUnsigned: true)
!788 = !DIEnumerator(name: "BUILT_IN_MEMCHR", value: 328, isUnsigned: true)
!789 = !DIEnumerator(name: "BUILT_IN_MEMCMP", value: 329, isUnsigned: true)
!790 = !DIEnumerator(name: "BUILT_IN_MEMCPY", value: 330, isUnsigned: true)
!791 = !DIEnumerator(name: "BUILT_IN_MEMMOVE", value: 331, isUnsigned: true)
!792 = !DIEnumerator(name: "BUILT_IN_MEMPCPY", value: 332, isUnsigned: true)
!793 = !DIEnumerator(name: "BUILT_IN_MEMSET", value: 333, isUnsigned: true)
!794 = !DIEnumerator(name: "BUILT_IN_RINDEX", value: 334, isUnsigned: true)
!795 = !DIEnumerator(name: "BUILT_IN_STPCPY", value: 335, isUnsigned: true)
!796 = !DIEnumerator(name: "BUILT_IN_STPNCPY", value: 336, isUnsigned: true)
!797 = !DIEnumerator(name: "BUILT_IN_STRCASECMP", value: 337, isUnsigned: true)
!798 = !DIEnumerator(name: "BUILT_IN_STRCAT", value: 338, isUnsigned: true)
!799 = !DIEnumerator(name: "BUILT_IN_STRCHR", value: 339, isUnsigned: true)
!800 = !DIEnumerator(name: "BUILT_IN_STRCMP", value: 340, isUnsigned: true)
!801 = !DIEnumerator(name: "BUILT_IN_STRCPY", value: 341, isUnsigned: true)
!802 = !DIEnumerator(name: "BUILT_IN_STRCSPN", value: 342, isUnsigned: true)
!803 = !DIEnumerator(name: "BUILT_IN_STRDUP", value: 343, isUnsigned: true)
!804 = !DIEnumerator(name: "BUILT_IN_STRNDUP", value: 344, isUnsigned: true)
!805 = !DIEnumerator(name: "BUILT_IN_STRLEN", value: 345, isUnsigned: true)
!806 = !DIEnumerator(name: "BUILT_IN_STRNCASECMP", value: 346, isUnsigned: true)
!807 = !DIEnumerator(name: "BUILT_IN_STRNCAT", value: 347, isUnsigned: true)
!808 = !DIEnumerator(name: "BUILT_IN_STRNCMP", value: 348, isUnsigned: true)
!809 = !DIEnumerator(name: "BUILT_IN_STRNCPY", value: 349, isUnsigned: true)
!810 = !DIEnumerator(name: "BUILT_IN_STRPBRK", value: 350, isUnsigned: true)
!811 = !DIEnumerator(name: "BUILT_IN_STRRCHR", value: 351, isUnsigned: true)
!812 = !DIEnumerator(name: "BUILT_IN_STRSPN", value: 352, isUnsigned: true)
!813 = !DIEnumerator(name: "BUILT_IN_STRSTR", value: 353, isUnsigned: true)
!814 = !DIEnumerator(name: "BUILT_IN_FPRINTF", value: 354, isUnsigned: true)
!815 = !DIEnumerator(name: "BUILT_IN_FPRINTF_UNLOCKED", value: 355, isUnsigned: true)
!816 = !DIEnumerator(name: "BUILT_IN_PUTC", value: 356, isUnsigned: true)
!817 = !DIEnumerator(name: "BUILT_IN_PUTC_UNLOCKED", value: 357, isUnsigned: true)
!818 = !DIEnumerator(name: "BUILT_IN_FPUTC", value: 358, isUnsigned: true)
!819 = !DIEnumerator(name: "BUILT_IN_FPUTC_UNLOCKED", value: 359, isUnsigned: true)
!820 = !DIEnumerator(name: "BUILT_IN_FPUTS", value: 360, isUnsigned: true)
!821 = !DIEnumerator(name: "BUILT_IN_FPUTS_UNLOCKED", value: 361, isUnsigned: true)
!822 = !DIEnumerator(name: "BUILT_IN_FSCANF", value: 362, isUnsigned: true)
!823 = !DIEnumerator(name: "BUILT_IN_FWRITE", value: 363, isUnsigned: true)
!824 = !DIEnumerator(name: "BUILT_IN_FWRITE_UNLOCKED", value: 364, isUnsigned: true)
!825 = !DIEnumerator(name: "BUILT_IN_PRINTF", value: 365, isUnsigned: true)
!826 = !DIEnumerator(name: "BUILT_IN_PRINTF_UNLOCKED", value: 366, isUnsigned: true)
!827 = !DIEnumerator(name: "BUILT_IN_PUTCHAR", value: 367, isUnsigned: true)
!828 = !DIEnumerator(name: "BUILT_IN_PUTCHAR_UNLOCKED", value: 368, isUnsigned: true)
!829 = !DIEnumerator(name: "BUILT_IN_PUTS", value: 369, isUnsigned: true)
!830 = !DIEnumerator(name: "BUILT_IN_PUTS_UNLOCKED", value: 370, isUnsigned: true)
!831 = !DIEnumerator(name: "BUILT_IN_SCANF", value: 371, isUnsigned: true)
!832 = !DIEnumerator(name: "BUILT_IN_SNPRINTF", value: 372, isUnsigned: true)
!833 = !DIEnumerator(name: "BUILT_IN_SPRINTF", value: 373, isUnsigned: true)
!834 = !DIEnumerator(name: "BUILT_IN_SSCANF", value: 374, isUnsigned: true)
!835 = !DIEnumerator(name: "BUILT_IN_VFPRINTF", value: 375, isUnsigned: true)
!836 = !DIEnumerator(name: "BUILT_IN_VFSCANF", value: 376, isUnsigned: true)
!837 = !DIEnumerator(name: "BUILT_IN_VPRINTF", value: 377, isUnsigned: true)
!838 = !DIEnumerator(name: "BUILT_IN_VSCANF", value: 378, isUnsigned: true)
!839 = !DIEnumerator(name: "BUILT_IN_VSNPRINTF", value: 379, isUnsigned: true)
!840 = !DIEnumerator(name: "BUILT_IN_VSPRINTF", value: 380, isUnsigned: true)
!841 = !DIEnumerator(name: "BUILT_IN_VSSCANF", value: 381, isUnsigned: true)
!842 = !DIEnumerator(name: "BUILT_IN_ISALNUM", value: 382, isUnsigned: true)
!843 = !DIEnumerator(name: "BUILT_IN_ISALPHA", value: 383, isUnsigned: true)
!844 = !DIEnumerator(name: "BUILT_IN_ISASCII", value: 384, isUnsigned: true)
!845 = !DIEnumerator(name: "BUILT_IN_ISBLANK", value: 385, isUnsigned: true)
!846 = !DIEnumerator(name: "BUILT_IN_ISCNTRL", value: 386, isUnsigned: true)
!847 = !DIEnumerator(name: "BUILT_IN_ISDIGIT", value: 387, isUnsigned: true)
!848 = !DIEnumerator(name: "BUILT_IN_ISGRAPH", value: 388, isUnsigned: true)
!849 = !DIEnumerator(name: "BUILT_IN_ISLOWER", value: 389, isUnsigned: true)
!850 = !DIEnumerator(name: "BUILT_IN_ISPRINT", value: 390, isUnsigned: true)
!851 = !DIEnumerator(name: "BUILT_IN_ISPUNCT", value: 391, isUnsigned: true)
!852 = !DIEnumerator(name: "BUILT_IN_ISSPACE", value: 392, isUnsigned: true)
!853 = !DIEnumerator(name: "BUILT_IN_ISUPPER", value: 393, isUnsigned: true)
!854 = !DIEnumerator(name: "BUILT_IN_ISXDIGIT", value: 394, isUnsigned: true)
!855 = !DIEnumerator(name: "BUILT_IN_TOASCII", value: 395, isUnsigned: true)
!856 = !DIEnumerator(name: "BUILT_IN_TOLOWER", value: 396, isUnsigned: true)
!857 = !DIEnumerator(name: "BUILT_IN_TOUPPER", value: 397, isUnsigned: true)
!858 = !DIEnumerator(name: "BUILT_IN_ISWALNUM", value: 398, isUnsigned: true)
!859 = !DIEnumerator(name: "BUILT_IN_ISWALPHA", value: 399, isUnsigned: true)
!860 = !DIEnumerator(name: "BUILT_IN_ISWBLANK", value: 400, isUnsigned: true)
!861 = !DIEnumerator(name: "BUILT_IN_ISWCNTRL", value: 401, isUnsigned: true)
!862 = !DIEnumerator(name: "BUILT_IN_ISWDIGIT", value: 402, isUnsigned: true)
!863 = !DIEnumerator(name: "BUILT_IN_ISWGRAPH", value: 403, isUnsigned: true)
!864 = !DIEnumerator(name: "BUILT_IN_ISWLOWER", value: 404, isUnsigned: true)
!865 = !DIEnumerator(name: "BUILT_IN_ISWPRINT", value: 405, isUnsigned: true)
!866 = !DIEnumerator(name: "BUILT_IN_ISWPUNCT", value: 406, isUnsigned: true)
!867 = !DIEnumerator(name: "BUILT_IN_ISWSPACE", value: 407, isUnsigned: true)
!868 = !DIEnumerator(name: "BUILT_IN_ISWUPPER", value: 408, isUnsigned: true)
!869 = !DIEnumerator(name: "BUILT_IN_ISWXDIGIT", value: 409, isUnsigned: true)
!870 = !DIEnumerator(name: "BUILT_IN_TOWLOWER", value: 410, isUnsigned: true)
!871 = !DIEnumerator(name: "BUILT_IN_TOWUPPER", value: 411, isUnsigned: true)
!872 = !DIEnumerator(name: "BUILT_IN_ABORT", value: 412, isUnsigned: true)
!873 = !DIEnumerator(name: "BUILT_IN_ABS", value: 413, isUnsigned: true)
!874 = !DIEnumerator(name: "BUILT_IN_AGGREGATE_INCOMING_ADDRESS", value: 414, isUnsigned: true)
!875 = !DIEnumerator(name: "BUILT_IN_ALLOCA", value: 415, isUnsigned: true)
!876 = !DIEnumerator(name: "BUILT_IN_APPLY", value: 416, isUnsigned: true)
!877 = !DIEnumerator(name: "BUILT_IN_APPLY_ARGS", value: 417, isUnsigned: true)
!878 = !DIEnumerator(name: "BUILT_IN_ARGS_INFO", value: 418, isUnsigned: true)
!879 = !DIEnumerator(name: "BUILT_IN_BSWAP32", value: 419, isUnsigned: true)
!880 = !DIEnumerator(name: "BUILT_IN_BSWAP64", value: 420, isUnsigned: true)
!881 = !DIEnumerator(name: "BUILT_IN_CLEAR_CACHE", value: 421, isUnsigned: true)
!882 = !DIEnumerator(name: "BUILT_IN_CALLOC", value: 422, isUnsigned: true)
!883 = !DIEnumerator(name: "BUILT_IN_CLASSIFY_TYPE", value: 423, isUnsigned: true)
!884 = !DIEnumerator(name: "BUILT_IN_CLZ", value: 424, isUnsigned: true)
!885 = !DIEnumerator(name: "BUILT_IN_CLZIMAX", value: 425, isUnsigned: true)
!886 = !DIEnumerator(name: "BUILT_IN_CLZL", value: 426, isUnsigned: true)
!887 = !DIEnumerator(name: "BUILT_IN_CLZLL", value: 427, isUnsigned: true)
!888 = !DIEnumerator(name: "BUILT_IN_CONSTANT_P", value: 428, isUnsigned: true)
!889 = !DIEnumerator(name: "BUILT_IN_CTZ", value: 429, isUnsigned: true)
!890 = !DIEnumerator(name: "BUILT_IN_CTZIMAX", value: 430, isUnsigned: true)
!891 = !DIEnumerator(name: "BUILT_IN_CTZL", value: 431, isUnsigned: true)
!892 = !DIEnumerator(name: "BUILT_IN_CTZLL", value: 432, isUnsigned: true)
!893 = !DIEnumerator(name: "BUILT_IN_DCGETTEXT", value: 433, isUnsigned: true)
!894 = !DIEnumerator(name: "BUILT_IN_DGETTEXT", value: 434, isUnsigned: true)
!895 = !DIEnumerator(name: "BUILT_IN_DWARF_CFA", value: 435, isUnsigned: true)
!896 = !DIEnumerator(name: "BUILT_IN_DWARF_SP_COLUMN", value: 436, isUnsigned: true)
!897 = !DIEnumerator(name: "BUILT_IN_EH_RETURN", value: 437, isUnsigned: true)
!898 = !DIEnumerator(name: "BUILT_IN_EH_RETURN_DATA_REGNO", value: 438, isUnsigned: true)
!899 = !DIEnumerator(name: "BUILT_IN_EXECL", value: 439, isUnsigned: true)
!900 = !DIEnumerator(name: "BUILT_IN_EXECLP", value: 440, isUnsigned: true)
!901 = !DIEnumerator(name: "BUILT_IN_EXECLE", value: 441, isUnsigned: true)
!902 = !DIEnumerator(name: "BUILT_IN_EXECV", value: 442, isUnsigned: true)
!903 = !DIEnumerator(name: "BUILT_IN_EXECVP", value: 443, isUnsigned: true)
!904 = !DIEnumerator(name: "BUILT_IN_EXECVE", value: 444, isUnsigned: true)
!905 = !DIEnumerator(name: "BUILT_IN_EXIT", value: 445, isUnsigned: true)
!906 = !DIEnumerator(name: "BUILT_IN_EXPECT", value: 446, isUnsigned: true)
!907 = !DIEnumerator(name: "BUILT_IN_EXTEND_POINTER", value: 447, isUnsigned: true)
!908 = !DIEnumerator(name: "BUILT_IN_EXTRACT_RETURN_ADDR", value: 448, isUnsigned: true)
!909 = !DIEnumerator(name: "BUILT_IN_FFS", value: 449, isUnsigned: true)
!910 = !DIEnumerator(name: "BUILT_IN_FFSIMAX", value: 450, isUnsigned: true)
!911 = !DIEnumerator(name: "BUILT_IN_FFSL", value: 451, isUnsigned: true)
!912 = !DIEnumerator(name: "BUILT_IN_FFSLL", value: 452, isUnsigned: true)
!913 = !DIEnumerator(name: "BUILT_IN_FORK", value: 453, isUnsigned: true)
!914 = !DIEnumerator(name: "BUILT_IN_FRAME_ADDRESS", value: 454, isUnsigned: true)
!915 = !DIEnumerator(name: "BUILT_IN_FREE", value: 455, isUnsigned: true)
!916 = !DIEnumerator(name: "BUILT_IN_FROB_RETURN_ADDR", value: 456, isUnsigned: true)
!917 = !DIEnumerator(name: "BUILT_IN_GETTEXT", value: 457, isUnsigned: true)
!918 = !DIEnumerator(name: "BUILT_IN_IMAXABS", value: 458, isUnsigned: true)
!919 = !DIEnumerator(name: "BUILT_IN_INIT_DWARF_REG_SIZES", value: 459, isUnsigned: true)
!920 = !DIEnumerator(name: "BUILT_IN_FINITE", value: 460, isUnsigned: true)
!921 = !DIEnumerator(name: "BUILT_IN_FINITEF", value: 461, isUnsigned: true)
!922 = !DIEnumerator(name: "BUILT_IN_FINITEL", value: 462, isUnsigned: true)
!923 = !DIEnumerator(name: "BUILT_IN_FINITED32", value: 463, isUnsigned: true)
!924 = !DIEnumerator(name: "BUILT_IN_FINITED64", value: 464, isUnsigned: true)
!925 = !DIEnumerator(name: "BUILT_IN_FINITED128", value: 465, isUnsigned: true)
!926 = !DIEnumerator(name: "BUILT_IN_FPCLASSIFY", value: 466, isUnsigned: true)
!927 = !DIEnumerator(name: "BUILT_IN_ISFINITE", value: 467, isUnsigned: true)
!928 = !DIEnumerator(name: "BUILT_IN_ISINF_SIGN", value: 468, isUnsigned: true)
!929 = !DIEnumerator(name: "BUILT_IN_ISINF", value: 469, isUnsigned: true)
!930 = !DIEnumerator(name: "BUILT_IN_ISINFF", value: 470, isUnsigned: true)
!931 = !DIEnumerator(name: "BUILT_IN_ISINFL", value: 471, isUnsigned: true)
!932 = !DIEnumerator(name: "BUILT_IN_ISINFD32", value: 472, isUnsigned: true)
!933 = !DIEnumerator(name: "BUILT_IN_ISINFD64", value: 473, isUnsigned: true)
!934 = !DIEnumerator(name: "BUILT_IN_ISINFD128", value: 474, isUnsigned: true)
!935 = !DIEnumerator(name: "BUILT_IN_ISNAN", value: 475, isUnsigned: true)
!936 = !DIEnumerator(name: "BUILT_IN_ISNANF", value: 476, isUnsigned: true)
!937 = !DIEnumerator(name: "BUILT_IN_ISNANL", value: 477, isUnsigned: true)
!938 = !DIEnumerator(name: "BUILT_IN_ISNAND32", value: 478, isUnsigned: true)
!939 = !DIEnumerator(name: "BUILT_IN_ISNAND64", value: 479, isUnsigned: true)
!940 = !DIEnumerator(name: "BUILT_IN_ISNAND128", value: 480, isUnsigned: true)
!941 = !DIEnumerator(name: "BUILT_IN_ISNORMAL", value: 481, isUnsigned: true)
!942 = !DIEnumerator(name: "BUILT_IN_ISGREATER", value: 482, isUnsigned: true)
!943 = !DIEnumerator(name: "BUILT_IN_ISGREATEREQUAL", value: 483, isUnsigned: true)
!944 = !DIEnumerator(name: "BUILT_IN_ISLESS", value: 484, isUnsigned: true)
!945 = !DIEnumerator(name: "BUILT_IN_ISLESSEQUAL", value: 485, isUnsigned: true)
!946 = !DIEnumerator(name: "BUILT_IN_ISLESSGREATER", value: 486, isUnsigned: true)
!947 = !DIEnumerator(name: "BUILT_IN_ISUNORDERED", value: 487, isUnsigned: true)
!948 = !DIEnumerator(name: "BUILT_IN_LABS", value: 488, isUnsigned: true)
!949 = !DIEnumerator(name: "BUILT_IN_LLABS", value: 489, isUnsigned: true)
!950 = !DIEnumerator(name: "BUILT_IN_LONGJMP", value: 490, isUnsigned: true)
!951 = !DIEnumerator(name: "BUILT_IN_MALLOC", value: 491, isUnsigned: true)
!952 = !DIEnumerator(name: "BUILT_IN_NEXT_ARG", value: 492, isUnsigned: true)
!953 = !DIEnumerator(name: "BUILT_IN_PARITY", value: 493, isUnsigned: true)
!954 = !DIEnumerator(name: "BUILT_IN_PARITYIMAX", value: 494, isUnsigned: true)
!955 = !DIEnumerator(name: "BUILT_IN_PARITYL", value: 495, isUnsigned: true)
!956 = !DIEnumerator(name: "BUILT_IN_PARITYLL", value: 496, isUnsigned: true)
!957 = !DIEnumerator(name: "BUILT_IN_POPCOUNT", value: 497, isUnsigned: true)
!958 = !DIEnumerator(name: "BUILT_IN_POPCOUNTIMAX", value: 498, isUnsigned: true)
!959 = !DIEnumerator(name: "BUILT_IN_POPCOUNTL", value: 499, isUnsigned: true)
!960 = !DIEnumerator(name: "BUILT_IN_POPCOUNTLL", value: 500, isUnsigned: true)
!961 = !DIEnumerator(name: "BUILT_IN_PREFETCH", value: 501, isUnsigned: true)
!962 = !DIEnumerator(name: "BUILT_IN_REALLOC", value: 502, isUnsigned: true)
!963 = !DIEnumerator(name: "BUILT_IN_RETURN", value: 503, isUnsigned: true)
!964 = !DIEnumerator(name: "BUILT_IN_RETURN_ADDRESS", value: 504, isUnsigned: true)
!965 = !DIEnumerator(name: "BUILT_IN_SAVEREGS", value: 505, isUnsigned: true)
!966 = !DIEnumerator(name: "BUILT_IN_SETJMP", value: 506, isUnsigned: true)
!967 = !DIEnumerator(name: "BUILT_IN_STRFMON", value: 507, isUnsigned: true)
!968 = !DIEnumerator(name: "BUILT_IN_STRFTIME", value: 508, isUnsigned: true)
!969 = !DIEnumerator(name: "BUILT_IN_TRAP", value: 509, isUnsigned: true)
!970 = !DIEnumerator(name: "BUILT_IN_UNREACHABLE", value: 510, isUnsigned: true)
!971 = !DIEnumerator(name: "BUILT_IN_UNWIND_INIT", value: 511, isUnsigned: true)
!972 = !DIEnumerator(name: "BUILT_IN_UPDATE_SETJMP_BUF", value: 512, isUnsigned: true)
!973 = !DIEnumerator(name: "BUILT_IN_VA_COPY", value: 513, isUnsigned: true)
!974 = !DIEnumerator(name: "BUILT_IN_VA_END", value: 514, isUnsigned: true)
!975 = !DIEnumerator(name: "BUILT_IN_VA_START", value: 515, isUnsigned: true)
!976 = !DIEnumerator(name: "BUILT_IN_VA_ARG_PACK", value: 516, isUnsigned: true)
!977 = !DIEnumerator(name: "BUILT_IN_VA_ARG_PACK_LEN", value: 517, isUnsigned: true)
!978 = !DIEnumerator(name: "BUILT_IN__EXIT", value: 518, isUnsigned: true)
!979 = !DIEnumerator(name: "BUILT_IN__EXIT2", value: 519, isUnsigned: true)
!980 = !DIEnumerator(name: "BUILT_IN_INIT_TRAMPOLINE", value: 520, isUnsigned: true)
!981 = !DIEnumerator(name: "BUILT_IN_ADJUST_TRAMPOLINE", value: 521, isUnsigned: true)
!982 = !DIEnumerator(name: "BUILT_IN_NONLOCAL_GOTO", value: 522, isUnsigned: true)
!983 = !DIEnumerator(name: "BUILT_IN_SETJMP_SETUP", value: 523, isUnsigned: true)
!984 = !DIEnumerator(name: "BUILT_IN_SETJMP_DISPATCHER", value: 524, isUnsigned: true)
!985 = !DIEnumerator(name: "BUILT_IN_SETJMP_RECEIVER", value: 525, isUnsigned: true)
!986 = !DIEnumerator(name: "BUILT_IN_STACK_SAVE", value: 526, isUnsigned: true)
!987 = !DIEnumerator(name: "BUILT_IN_STACK_RESTORE", value: 527, isUnsigned: true)
!988 = !DIEnumerator(name: "BUILT_IN_OBJECT_SIZE", value: 528, isUnsigned: true)
!989 = !DIEnumerator(name: "BUILT_IN_MEMCPY_CHK", value: 529, isUnsigned: true)
!990 = !DIEnumerator(name: "BUILT_IN_MEMMOVE_CHK", value: 530, isUnsigned: true)
!991 = !DIEnumerator(name: "BUILT_IN_MEMPCPY_CHK", value: 531, isUnsigned: true)
!992 = !DIEnumerator(name: "BUILT_IN_MEMSET_CHK", value: 532, isUnsigned: true)
!993 = !DIEnumerator(name: "BUILT_IN_STPCPY_CHK", value: 533, isUnsigned: true)
!994 = !DIEnumerator(name: "BUILT_IN_STRCAT_CHK", value: 534, isUnsigned: true)
!995 = !DIEnumerator(name: "BUILT_IN_STRCPY_CHK", value: 535, isUnsigned: true)
!996 = !DIEnumerator(name: "BUILT_IN_STRNCAT_CHK", value: 536, isUnsigned: true)
!997 = !DIEnumerator(name: "BUILT_IN_STRNCPY_CHK", value: 537, isUnsigned: true)
!998 = !DIEnumerator(name: "BUILT_IN_SNPRINTF_CHK", value: 538, isUnsigned: true)
!999 = !DIEnumerator(name: "BUILT_IN_SPRINTF_CHK", value: 539, isUnsigned: true)
!1000 = !DIEnumerator(name: "BUILT_IN_VSNPRINTF_CHK", value: 540, isUnsigned: true)
!1001 = !DIEnumerator(name: "BUILT_IN_VSPRINTF_CHK", value: 541, isUnsigned: true)
!1002 = !DIEnumerator(name: "BUILT_IN_FPRINTF_CHK", value: 542, isUnsigned: true)
!1003 = !DIEnumerator(name: "BUILT_IN_PRINTF_CHK", value: 543, isUnsigned: true)
!1004 = !DIEnumerator(name: "BUILT_IN_VFPRINTF_CHK", value: 544, isUnsigned: true)
!1005 = !DIEnumerator(name: "BUILT_IN_VPRINTF_CHK", value: 545, isUnsigned: true)
!1006 = !DIEnumerator(name: "BUILT_IN_PROFILE_FUNC_ENTER", value: 546, isUnsigned: true)
!1007 = !DIEnumerator(name: "BUILT_IN_PROFILE_FUNC_EXIT", value: 547, isUnsigned: true)
!1008 = !DIEnumerator(name: "BUILT_IN_EMUTLS_GET_ADDRESS", value: 548, isUnsigned: true)
!1009 = !DIEnumerator(name: "BUILT_IN_EMUTLS_REGISTER_COMMON", value: 549, isUnsigned: true)
!1010 = !DIEnumerator(name: "BUILT_IN_UNWIND_RESUME", value: 550, isUnsigned: true)
!1011 = !DIEnumerator(name: "BUILT_IN_CXA_END_CLEANUP", value: 551, isUnsigned: true)
!1012 = !DIEnumerator(name: "BUILT_IN_EH_POINTER", value: 552, isUnsigned: true)
!1013 = !DIEnumerator(name: "BUILT_IN_EH_FILTER", value: 553, isUnsigned: true)
!1014 = !DIEnumerator(name: "BUILT_IN_EH_COPY_VALUES", value: 554, isUnsigned: true)
!1015 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_N", value: 555, isUnsigned: true)
!1016 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_1", value: 556, isUnsigned: true)
!1017 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_2", value: 557, isUnsigned: true)
!1018 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_4", value: 558, isUnsigned: true)
!1019 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_8", value: 559, isUnsigned: true)
!1020 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_16", value: 560, isUnsigned: true)
!1021 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_N", value: 561, isUnsigned: true)
!1022 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_1", value: 562, isUnsigned: true)
!1023 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_2", value: 563, isUnsigned: true)
!1024 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_4", value: 564, isUnsigned: true)
!1025 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_8", value: 565, isUnsigned: true)
!1026 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_16", value: 566, isUnsigned: true)
!1027 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_N", value: 567, isUnsigned: true)
!1028 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_1", value: 568, isUnsigned: true)
!1029 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_2", value: 569, isUnsigned: true)
!1030 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_4", value: 570, isUnsigned: true)
!1031 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_8", value: 571, isUnsigned: true)
!1032 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_16", value: 572, isUnsigned: true)
!1033 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_N", value: 573, isUnsigned: true)
!1034 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_1", value: 574, isUnsigned: true)
!1035 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_2", value: 575, isUnsigned: true)
!1036 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_4", value: 576, isUnsigned: true)
!1037 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_8", value: 577, isUnsigned: true)
!1038 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_16", value: 578, isUnsigned: true)
!1039 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_N", value: 579, isUnsigned: true)
!1040 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_1", value: 580, isUnsigned: true)
!1041 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_2", value: 581, isUnsigned: true)
!1042 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_4", value: 582, isUnsigned: true)
!1043 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_8", value: 583, isUnsigned: true)
!1044 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_16", value: 584, isUnsigned: true)
!1045 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_N", value: 585, isUnsigned: true)
!1046 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_1", value: 586, isUnsigned: true)
!1047 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_2", value: 587, isUnsigned: true)
!1048 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_4", value: 588, isUnsigned: true)
!1049 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_8", value: 589, isUnsigned: true)
!1050 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_16", value: 590, isUnsigned: true)
!1051 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_N", value: 591, isUnsigned: true)
!1052 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_1", value: 592, isUnsigned: true)
!1053 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_2", value: 593, isUnsigned: true)
!1054 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_4", value: 594, isUnsigned: true)
!1055 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_8", value: 595, isUnsigned: true)
!1056 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_16", value: 596, isUnsigned: true)
!1057 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_N", value: 597, isUnsigned: true)
!1058 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_1", value: 598, isUnsigned: true)
!1059 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_2", value: 599, isUnsigned: true)
!1060 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_4", value: 600, isUnsigned: true)
!1061 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_8", value: 601, isUnsigned: true)
!1062 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_16", value: 602, isUnsigned: true)
!1063 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_N", value: 603, isUnsigned: true)
!1064 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_1", value: 604, isUnsigned: true)
!1065 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_2", value: 605, isUnsigned: true)
!1066 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_4", value: 606, isUnsigned: true)
!1067 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_8", value: 607, isUnsigned: true)
!1068 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_16", value: 608, isUnsigned: true)
!1069 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_N", value: 609, isUnsigned: true)
!1070 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_1", value: 610, isUnsigned: true)
!1071 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_2", value: 611, isUnsigned: true)
!1072 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_4", value: 612, isUnsigned: true)
!1073 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_8", value: 613, isUnsigned: true)
!1074 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_16", value: 614, isUnsigned: true)
!1075 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_N", value: 615, isUnsigned: true)
!1076 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_1", value: 616, isUnsigned: true)
!1077 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_2", value: 617, isUnsigned: true)
!1078 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_4", value: 618, isUnsigned: true)
!1079 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_8", value: 619, isUnsigned: true)
!1080 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_16", value: 620, isUnsigned: true)
!1081 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_N", value: 621, isUnsigned: true)
!1082 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_1", value: 622, isUnsigned: true)
!1083 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_2", value: 623, isUnsigned: true)
!1084 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_4", value: 624, isUnsigned: true)
!1085 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_8", value: 625, isUnsigned: true)
!1086 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_16", value: 626, isUnsigned: true)
!1087 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_N", value: 627, isUnsigned: true)
!1088 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_1", value: 628, isUnsigned: true)
!1089 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_2", value: 629, isUnsigned: true)
!1090 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_4", value: 630, isUnsigned: true)
!1091 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_8", value: 631, isUnsigned: true)
!1092 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_16", value: 632, isUnsigned: true)
!1093 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_N", value: 633, isUnsigned: true)
!1094 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_1", value: 634, isUnsigned: true)
!1095 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_2", value: 635, isUnsigned: true)
!1096 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_4", value: 636, isUnsigned: true)
!1097 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_8", value: 637, isUnsigned: true)
!1098 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_16", value: 638, isUnsigned: true)
!1099 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_N", value: 639, isUnsigned: true)
!1100 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_1", value: 640, isUnsigned: true)
!1101 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_2", value: 641, isUnsigned: true)
!1102 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_4", value: 642, isUnsigned: true)
!1103 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_8", value: 643, isUnsigned: true)
!1104 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_16", value: 644, isUnsigned: true)
!1105 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_N", value: 645, isUnsigned: true)
!1106 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_1", value: 646, isUnsigned: true)
!1107 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_2", value: 647, isUnsigned: true)
!1108 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_4", value: 648, isUnsigned: true)
!1109 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_8", value: 649, isUnsigned: true)
!1110 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_16", value: 650, isUnsigned: true)
!1111 = !DIEnumerator(name: "BUILT_IN_SYNCHRONIZE", value: 651, isUnsigned: true)
!1112 = !DIEnumerator(name: "BUILT_IN_OMP_GET_THREAD_NUM", value: 652, isUnsigned: true)
!1113 = !DIEnumerator(name: "BUILT_IN_OMP_GET_NUM_THREADS", value: 653, isUnsigned: true)
!1114 = !DIEnumerator(name: "BUILT_IN_GOMP_ATOMIC_START", value: 654, isUnsigned: true)
!1115 = !DIEnumerator(name: "BUILT_IN_GOMP_ATOMIC_END", value: 655, isUnsigned: true)
!1116 = !DIEnumerator(name: "BUILT_IN_GOMP_BARRIER", value: 656, isUnsigned: true)
!1117 = !DIEnumerator(name: "BUILT_IN_GOMP_TASKWAIT", value: 657, isUnsigned: true)
!1118 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_START", value: 658, isUnsigned: true)
!1119 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_END", value: 659, isUnsigned: true)
!1120 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_NAME_START", value: 660, isUnsigned: true)
!1121 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_NAME_END", value: 661, isUnsigned: true)
!1122 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_STATIC_START", value: 662, isUnsigned: true)
!1123 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_DYNAMIC_START", value: 663, isUnsigned: true)
!1124 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_GUIDED_START", value: 664, isUnsigned: true)
!1125 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_RUNTIME_START", value: 665, isUnsigned: true)
!1126 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_STATIC_START", value: 666, isUnsigned: true)
!1127 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_START", value: 667, isUnsigned: true)
!1128 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_START", value: 668, isUnsigned: true)
!1129 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_START", value: 669, isUnsigned: true)
!1130 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_STATIC_NEXT", value: 670, isUnsigned: true)
!1131 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_DYNAMIC_NEXT", value: 671, isUnsigned: true)
!1132 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_GUIDED_NEXT", value: 672, isUnsigned: true)
!1133 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_RUNTIME_NEXT", value: 673, isUnsigned: true)
!1134 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_STATIC_NEXT", value: 674, isUnsigned: true)
!1135 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_NEXT", value: 675, isUnsigned: true)
!1136 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_NEXT", value: 676, isUnsigned: true)
!1137 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_NEXT", value: 677, isUnsigned: true)
!1138 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_STATIC_START", value: 678, isUnsigned: true)
!1139 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_START", value: 679, isUnsigned: true)
!1140 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_GUIDED_START", value: 680, isUnsigned: true)
!1141 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_RUNTIME_START", value: 681, isUnsigned: true)
!1142 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_START", value: 682, isUnsigned: true)
!1143 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_START", value: 683, isUnsigned: true)
!1144 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_START", value: 684, isUnsigned: true)
!1145 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_START", value: 685, isUnsigned: true)
!1146 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_STATIC_NEXT", value: 686, isUnsigned: true)
!1147 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_NEXT", value: 687, isUnsigned: true)
!1148 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_GUIDED_NEXT", value: 688, isUnsigned: true)
!1149 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_RUNTIME_NEXT", value: 689, isUnsigned: true)
!1150 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_NEXT", value: 690, isUnsigned: true)
!1151 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_NEXT", value: 691, isUnsigned: true)
!1152 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_NEXT", value: 692, isUnsigned: true)
!1153 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_NEXT", value: 693, isUnsigned: true)
!1154 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START", value: 694, isUnsigned: true)
!1155 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_DYNAMIC_START", value: 695, isUnsigned: true)
!1156 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_GUIDED_START", value: 696, isUnsigned: true)
!1157 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_RUNTIME_START", value: 697, isUnsigned: true)
!1158 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_END", value: 698, isUnsigned: true)
!1159 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_END_NOWAIT", value: 699, isUnsigned: true)
!1160 = !DIEnumerator(name: "BUILT_IN_GOMP_ORDERED_START", value: 700, isUnsigned: true)
!1161 = !DIEnumerator(name: "BUILT_IN_GOMP_ORDERED_END", value: 701, isUnsigned: true)
!1162 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_START", value: 702, isUnsigned: true)
!1163 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_END", value: 703, isUnsigned: true)
!1164 = !DIEnumerator(name: "BUILT_IN_GOMP_TASK", value: 704, isUnsigned: true)
!1165 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_START", value: 705, isUnsigned: true)
!1166 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_NEXT", value: 706, isUnsigned: true)
!1167 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_SECTIONS_START", value: 707, isUnsigned: true)
!1168 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_END", value: 708, isUnsigned: true)
!1169 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_END_NOWAIT", value: 709, isUnsigned: true)
!1170 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_START", value: 710, isUnsigned: true)
!1171 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_COPY_START", value: 711, isUnsigned: true)
!1172 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_COPY_END", value: 712, isUnsigned: true)
!1173 = !DIEnumerator(name: "BUILT_IN_COMPLEX_MUL_MIN", value: 713, isUnsigned: true)
!1174 = !DIEnumerator(name: "BUILT_IN_COMPLEX_MUL_MAX", value: 716, isUnsigned: true)
!1175 = !DIEnumerator(name: "BUILT_IN_COMPLEX_DIV_MIN", value: 717, isUnsigned: true)
!1176 = !DIEnumerator(name: "BUILT_IN_COMPLEX_DIV_MAX", value: 720, isUnsigned: true)
!1177 = !DIEnumerator(name: "END_BUILTINS", value: 721, isUnsigned: true)
!1178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1179, line: 309, baseType: !7, size: 32, elements: !1180)
!1179 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200}
!1181 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!1182 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!1183 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!1184 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!1185 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!1186 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!1187 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!1188 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!1189 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!1190 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!1191 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!1192 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!1193 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!1194 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!1195 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!1196 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!1197 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!1198 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!1199 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!1200 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!1201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !1202, line: 104, baseType: !7, size: 32, elements: !1203)
!1202 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1203 = !{!1204, !1205, !1206, !1207}
!1204 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!1205 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!1206 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!1207 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!1208 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1209, line: 74, baseType: !7, size: 32, elements: !1210)
!1209 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1210 = !{!1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383}
!1211 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!1212 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!1213 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!1214 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!1215 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!1216 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!1217 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!1218 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!1219 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!1220 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!1221 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!1222 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!1223 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!1224 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!1225 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!1226 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!1227 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!1228 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!1229 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!1230 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!1231 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!1232 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!1233 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!1234 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!1235 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!1236 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!1237 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!1238 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!1239 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!1240 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!1241 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!1242 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!1243 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!1244 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!1245 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!1246 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!1247 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!1248 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!1249 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!1250 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!1251 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!1252 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!1253 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!1254 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!1255 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!1256 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!1257 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!1258 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!1259 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!1260 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!1261 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!1262 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!1263 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!1264 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!1265 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!1266 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!1267 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!1268 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!1269 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!1270 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!1271 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!1272 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!1273 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!1274 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!1275 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!1276 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!1277 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!1278 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!1279 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!1280 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!1281 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!1282 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!1283 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!1284 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!1285 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!1286 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!1287 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!1288 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!1289 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!1290 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!1291 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!1292 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!1293 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!1294 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!1295 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!1296 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!1297 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!1298 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!1299 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!1300 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!1301 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!1302 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!1303 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!1304 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!1305 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!1306 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!1307 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!1308 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!1309 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!1310 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!1311 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!1312 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!1313 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!1314 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!1315 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!1316 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!1317 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!1318 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!1319 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!1320 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!1321 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!1322 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!1323 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!1324 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!1325 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!1326 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!1327 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!1328 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!1329 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!1330 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!1331 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!1332 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!1333 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!1334 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!1335 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!1336 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!1337 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!1338 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!1339 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!1340 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!1341 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!1342 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!1343 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!1344 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!1345 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!1346 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!1347 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!1348 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!1349 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!1350 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!1351 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!1352 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!1353 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!1354 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!1355 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!1356 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!1357 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!1358 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!1359 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!1360 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!1361 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!1362 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!1363 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!1364 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!1365 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!1366 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!1367 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!1368 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!1369 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!1370 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!1371 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!1372 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!1373 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!1374 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!1375 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!1376 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!1377 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!1378 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!1379 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!1380 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!1381 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!1382 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!1383 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!1384 = !{!1385, !1386, !1387, !1388, !1391, !1392, !1394, !2731, !2743, !2746, !1458, !2749, !2751, !134, !1727, !2747, !1402, !1761, !1389, !452, !2752, !7, !1456, !1529, !2764}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1387 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1390)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "histogram_value", file: !378, line: 65, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "histogram_value_t", file: !378, line: 44, size: 384, elements: !1397)
!1397 = !{!1398, !2733, !2734, !2735}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "hvalue", scope: !1396, file: !378, line: 52, baseType: !1399, size: 256)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1396, file: !378, line: 46, size: 256, elements: !1400)
!1400 = !{!1401, !2729, !2730, !2732}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1399, file: !378, line: 48, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !1403, line: 56, baseType: !1404)
!1403 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !1406)
!1406 = !{!1407, !1440, !1446, !1459, !1478, !1489, !1494, !1503, !1509, !1522, !1534, !1572, !2064, !2092, !2109, !2110, !2115, !2124, !2130, !2135, !2139, !2143, !2380, !2427, !2433, !2439, !2446, !2459, !2473, !2490, !2502, !2524, !2539, !2711}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1405, file: !135, line: 3372, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1408, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !1408, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !1408, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !1408, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !1408, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !1408, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !1408, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !1408, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !1408, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !1408, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !1408, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !1408, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !1408, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !1408, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !1408, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !1408, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !1408, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !1408, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1408, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1408, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1408, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1408, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1408, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1408, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1408, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1408, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !1408, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !1408, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !1408, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1408, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1405, file: !135, line: 3373, baseType: !1441, size: 192)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !1442)
!1442 = !{!1443, !1444, !1445}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1441, file: !135, line: 403, baseType: !1408, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1441, file: !135, line: 404, baseType: !1402, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1441, file: !135, line: 405, baseType: !1402, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1405, file: !135, line: 3374, baseType: !1447, size: 320)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1447, file: !135, line: 1385, baseType: !1441, size: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1447, file: !135, line: 1386, baseType: !1451, size: 128, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !1452, line: 58, baseType: !1453)
!1452 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1452, line: 54, size: 128, elements: !1454)
!1454 = !{!1455, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1453, file: !1452, line: 56, baseType: !1456, size: 64)
!1456 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1453, file: !1452, line: 57, baseType: !1458, size: 64, offset: 64)
!1458 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !1405, file: !135, line: 3375, baseType: !1460, size: 256)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1460, file: !135, line: 1398, baseType: !1441, size: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !1460, file: !135, line: 1399, baseType: !1464, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !1466, line: 52, size: 256, elements: !1467)
!1466 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1474}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1465, file: !1466, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !1465, file: !1466, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1465, file: !1466, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !1465, file: !1466, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1465, file: !1466, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !1465, file: !1466, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1465, file: !1466, line: 62, baseType: !1475, size: 192, offset: 64)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1456, size: 192, elements: !1476)
!1476 = !{!1477}
!1477 = !DISubrange(count: 3)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !1405, file: !135, line: 3376, baseType: !1479, size: 256)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1479, file: !135, line: 1409, baseType: !1441, size: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1479, file: !135, line: 1410, baseType: !1483, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !1485, line: 27, size: 192, elements: !1486)
!1485 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1484, file: !1485, line: 29, baseType: !1451, size: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1484, file: !1485, line: 30, baseType: !5, size: 32, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1405, file: !135, line: 3377, baseType: !1490, size: 256)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1490, file: !135, line: 1438, baseType: !1441, size: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1490, file: !135, line: 1439, baseType: !1402, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1405, file: !135, line: 3378, baseType: !1495, size: 256)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !1496)
!1496 = !{!1497, !1498, !1499}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1495, file: !135, line: 1419, baseType: !1441, size: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1495, file: !135, line: 1420, baseType: !1387, size: 32, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1495, file: !135, line: 1421, baseType: !1500, size: 8, offset: 224)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 8, elements: !1501)
!1501 = !{!1502}
!1502 = !DISubrange(count: 1)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !1405, file: !135, line: 3379, baseType: !1504, size: 320)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !1505)
!1505 = !{!1506, !1507, !1508}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1504, file: !135, line: 1429, baseType: !1441, size: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1504, file: !135, line: 1430, baseType: !1402, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1504, file: !135, line: 1431, baseType: !1402, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !1405, file: !135, line: 3380, baseType: !1510, size: 320)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1510, file: !135, line: 1461, baseType: !1441, size: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1510, file: !135, line: 1462, baseType: !1514, size: 128, offset: 192)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1515, line: 31, size: 128, elements: !1516)
!1515 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1516 = !{!1517, !1520, !1521}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1514, file: !1515, line: 32, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1386)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1514, file: !1515, line: 33, baseType: !7, size: 32, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1514, file: !1515, line: 34, baseType: !7, size: 32, offset: 96)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !1405, file: !135, line: 3381, baseType: !1523, size: 384)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !1524)
!1524 = !{!1525, !1526, !1531, !1532, !1533}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1523, file: !135, line: 2508, baseType: !1441, size: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1523, file: !135, line: 2509, baseType: !1527, size: 32, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1528, line: 58, baseType: !1529)
!1528 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1530, line: 44, baseType: !7)
!1530 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1523, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1523, file: !135, line: 2511, baseType: !1402, size: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1523, file: !135, line: 2512, baseType: !1402, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !1405, file: !135, line: 3382, baseType: !1535, size: 896)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !1536)
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1535, file: !135, line: 2653, baseType: !1523, size: 384)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1535, file: !135, line: 2654, baseType: !1402, size: 64, offset: 384)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1535, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1535, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1535, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1535, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1535, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1535, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1535, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1535, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1535, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1535, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1535, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1535, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1535, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1535, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1535, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1535, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1535, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1535, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1535, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1535, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1535, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1535, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1535, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1535, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1535, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1535, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1535, file: !135, line: 2705, baseType: !1402, size: 64, offset: 576)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1535, file: !135, line: 2706, baseType: !1402, size: 64, offset: 640)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1535, file: !135, line: 2707, baseType: !1402, size: 64, offset: 704)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1535, file: !135, line: 2708, baseType: !1402, size: 64, offset: 768)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1535, file: !135, line: 2711, baseType: !1570, size: 64, offset: 832)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !1405, file: !135, line: 3383, baseType: !1573, size: 960)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1573, file: !135, line: 2757, baseType: !1535, size: 896)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1573, file: !135, line: 2758, baseType: !1577, size: 64, offset: 896)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !1403, line: 50, baseType: !1578)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !1580, line: 240, size: 384, elements: !1581)
!1580 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1579, file: !1580, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1579, file: !1580, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !1579, file: !1580, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !1579, file: !1580, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !1579, file: !1580, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !1579, file: !1580, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !1579, file: !1580, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1579, file: !1580, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !1579, file: !1580, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !1579, file: !1580, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1579, file: !1580, line: 321, baseType: !1593, size: 320, offset: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !1580, line: 315, size: 320, elements: !1594)
!1594 = !{!1595, !1997, !1999, !2062, !2063}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1593, file: !1580, line: 316, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1597, size: 64, elements: !1501)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !1580, line: 183, baseType: !1598)
!1598 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !1580, line: 166, size: 64, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1612, !1613, !1625, !1628, !1688, !1689, !1974, !1987, !1994}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !1598, file: !1580, line: 168, baseType: !1387, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !1598, file: !1580, line: 169, baseType: !7, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !1598, file: !1580, line: 170, baseType: !1392, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !1598, file: !1580, line: 171, baseType: !1577, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !1598, file: !1580, line: 172, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !1403, line: 53, baseType: !1606)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !1580, line: 359, size: 128, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !1607, file: !1580, line: 360, baseType: !1387, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1607, file: !1580, line: 361, baseType: !1611, size: 64, offset: 64)
!1611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1577, size: 64, elements: !1501)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !1598, file: !1580, line: 173, baseType: !5, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !1598, file: !1580, line: 174, baseType: !1614, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !1580, line: 133, baseType: !1615)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1580, line: 115, size: 32, elements: !1616)
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !1615, file: !1580, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !1615, file: !1580, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !1615, file: !1580, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !1615, file: !1580, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !1615, file: !1580, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !1615, file: !1580, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !1615, file: !1580, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1615, file: !1580, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !1598, file: !1580, line: 175, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !1580, line: 175, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !1598, file: !1580, line: 176, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1631, line: 75, size: 256, elements: !1632)
!1631 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1632 = !{!1633, !1647, !1648, !1649}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1630, file: !1631, line: 76, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1631, line: 68, baseType: !1636)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1631, line: 63, size: 320, elements: !1637)
!1637 = !{!1638, !1640, !1641, !1642}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1636, file: !1631, line: 64, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1636, file: !1631, line: 65, baseType: !1639, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1636, file: !1631, line: 66, baseType: !7, size: 32, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1636, file: !1631, line: 67, baseType: !1643, size: 128, offset: 192)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1644, size: 128, elements: !1645)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1631, line: 29, baseType: !1456)
!1645 = !{!1646}
!1646 = !DISubrange(count: 2)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1630, file: !1631, line: 77, baseType: !1634, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1630, file: !1631, line: 78, baseType: !7, size: 32, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1630, file: !1631, line: 79, baseType: !1650, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1631, line: 49, baseType: !1652)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1631, line: 45, size: 832, elements: !1653)
!1653 = !{!1654, !1655, !1656}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1652, file: !1631, line: 46, baseType: !1639, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1652, file: !1631, line: 47, baseType: !1629, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1652, file: !1631, line: 48, baseType: !1657, size: 704, offset: 128)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1658, line: 164, size: 704, elements: !1659)
!1658 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1659 = !{!1660, !1661, !1671, !1672, !1673, !1674, !1675, !1676, !1680, !1684, !1685, !1686, !1687}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1657, file: !1658, line: 166, baseType: !1458, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1657, file: !1658, line: 167, baseType: !1662, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1658, line: 157, size: 192, elements: !1664)
!1664 = !{!1665, !1666, !1667}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1663, file: !1658, line: 159, baseType: !1389, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1663, file: !1658, line: 160, baseType: !1662, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1663, file: !1658, line: 161, baseType: !1668, size: 32, offset: 128)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 32, elements: !1669)
!1669 = !{!1670}
!1670 = !DISubrange(count: 4)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1657, file: !1658, line: 168, baseType: !1389, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1657, file: !1658, line: 169, baseType: !1389, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1657, file: !1658, line: 170, baseType: !1389, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1657, file: !1658, line: 171, baseType: !1458, size: 64, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1657, file: !1658, line: 172, baseType: !1387, size: 32, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1657, file: !1658, line: 176, baseType: !1677, size: 64, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!1662, !1391, !1458}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1657, file: !1658, line: 177, baseType: !1681, size: 64, offset: 512)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{null, !1391, !1662}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1657, file: !1658, line: 178, baseType: !1391, size: 64, offset: 576)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1657, file: !1658, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1657, file: !1658, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1657, file: !1658, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !1598, file: !1580, line: 177, baseType: !1402, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !1598, file: !1580, line: 178, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !330, line: 217, size: 832, elements: !1692)
!1692 = !{!1693, !1939, !1940, !1941, !1944, !1948, !1949, !1950, !1968, !1969, !1970, !1971, !1972, !1973}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1691, file: !330, line: 219, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !330, line: 151, baseType: !1696)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !330, line: 151, size: 128, elements: !1697)
!1697 = !{!1698}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1696, file: !330, line: 151, baseType: !1699, size: 128)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !330, line: 150, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !330, line: 150, size: 128, elements: !1701)
!1701 = !{!1702, !1703, !1704}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1700, file: !330, line: 150, baseType: !7, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1700, file: !330, line: 150, baseType: !7, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1700, file: !330, line: 150, baseType: !1705, size: 64, offset: 64)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1706, size: 64, elements: !1501)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !1403, line: 108, baseType: !1707)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !330, line: 122, size: 512, elements: !1709)
!1709 = !{!1710, !1711, !1712, !1931, !1932, !1933, !1934, !1935, !1936, !1937}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1708, file: !330, line: 124, baseType: !1690, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1708, file: !330, line: 125, baseType: !1690, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1708, file: !330, line: 131, baseType: !1713, size: 64, offset: 128)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !330, line: 128, size: 64, elements: !1714)
!1714 = !{!1715, !1930}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1713, file: !330, line: 129, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !1403, line: 66, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !388, line: 143, size: 192, elements: !1719)
!1719 = !{!1720, !1928, !1929}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1718, file: !388, line: 145, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !1403, line: 69, baseType: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !388, line: 136, size: 192, elements: !1724)
!1724 = !{!1725, !1926, !1927}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1723, file: !388, line: 137, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !1403, line: 58, baseType: !1727)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !388, line: 737, size: 768, elements: !1729)
!1729 = !{!1730, !1747, !1781, !1787, !1792, !1797, !1804, !1810, !1816, !1821, !1835, !1840, !1846, !1851, !1861, !1866, !1884, !1891, !1898, !1904, !1909, !1915, !1921}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1728, file: !388, line: 738, baseType: !1731, size: 256)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !388, line: 271, size: 256, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1731, file: !388, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !1731, file: !388, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1731, file: !388, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !1731, file: !388, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !1731, file: !388, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1731, file: !388, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !1731, file: !388, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1731, file: !388, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1731, file: !388, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1731, file: !388, line: 312, baseType: !7, size: 32, offset: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1731, file: !388, line: 316, baseType: !1527, size: 32, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !1731, file: !388, line: 319, baseType: !7, size: 32, offset: 96)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1731, file: !388, line: 323, baseType: !1690, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1731, file: !388, line: 327, baseType: !1402, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !1728, file: !388, line: 739, baseType: !1748, size: 448)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !388, line: 350, size: 448, elements: !1749)
!1749 = !{!1750, !1779}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1748, file: !388, line: 353, baseType: !1751, size: 384)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !388, line: 333, size: 384, elements: !1752)
!1752 = !{!1753, !1754, !1762}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1751, file: !388, line: 336, baseType: !1731, size: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1751, file: !388, line: 343, baseType: !1755, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1757, line: 37, size: 128, elements: !1758)
!1757 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1756, file: !1757, line: 39, baseType: !1755, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1756, file: !1757, line: 40, baseType: !1761, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1751, file: !388, line: 344, baseType: !1763, size: 64, offset: 320)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1757, line: 45, size: 320, elements: !1765)
!1765 = !{!1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1764, file: !1757, line: 47, baseType: !1763, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1764, file: !1757, line: 48, baseType: !1768, size: 256, offset: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !1769)
!1769 = !{!1770, !1772, !1773, !1778}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1768, file: !135, line: 1884, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1768, file: !135, line: 1885, baseType: !1771, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1768, file: !135, line: 1891, baseType: !1774, size: 64, offset: 128)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1768, file: !135, line: 1891, size: 64, elements: !1775)
!1775 = !{!1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1774, file: !135, line: 1891, baseType: !1726, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1774, file: !135, line: 1891, baseType: !1402, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1768, file: !135, line: 1892, baseType: !1761, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1748, file: !388, line: 359, baseType: !1780, size: 64, offset: 384)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1402, size: 64, elements: !1501)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !1728, file: !388, line: 740, baseType: !1782, size: 512)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !388, line: 365, size: 512, elements: !1783)
!1783 = !{!1784, !1785, !1786}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1782, file: !388, line: 368, baseType: !1751, size: 384)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1782, file: !388, line: 373, baseType: !1402, size: 64, offset: 384)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1782, file: !388, line: 374, baseType: !1402, size: 64, offset: 448)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !1728, file: !388, line: 741, baseType: !1788, size: 576)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !388, line: 380, size: 576, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1788, file: !388, line: 383, baseType: !1782, size: 512)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1788, file: !388, line: 389, baseType: !1780, size: 64, offset: 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1728, file: !388, line: 742, baseType: !1793, size: 320)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !388, line: 395, size: 320, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1793, file: !388, line: 397, baseType: !1731, size: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1793, file: !388, line: 400, baseType: !1716, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !1728, file: !388, line: 743, baseType: !1798, size: 448)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !388, line: 406, size: 448, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1803}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1798, file: !388, line: 408, baseType: !1731, size: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1798, file: !388, line: 412, baseType: !1402, size: 64, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1798, file: !388, line: 420, baseType: !1402, size: 64, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1798, file: !388, line: 423, baseType: !1716, size: 64, offset: 384)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !1728, file: !388, line: 744, baseType: !1805, size: 384)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !388, line: 429, size: 384, elements: !1806)
!1806 = !{!1807, !1808, !1809}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1805, file: !388, line: 431, baseType: !1731, size: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1805, file: !388, line: 434, baseType: !1402, size: 64, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1805, file: !388, line: 437, baseType: !1716, size: 64, offset: 320)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !1728, file: !388, line: 745, baseType: !1811, size: 384)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !388, line: 443, size: 384, elements: !1812)
!1812 = !{!1813, !1814, !1815}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1811, file: !388, line: 445, baseType: !1731, size: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1811, file: !388, line: 449, baseType: !1402, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1811, file: !388, line: 453, baseType: !1716, size: 64, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !1728, file: !388, line: 746, baseType: !1817, size: 320)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !388, line: 459, size: 320, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1817, file: !388, line: 461, baseType: !1731, size: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1817, file: !388, line: 464, baseType: !1402, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !1728, file: !388, line: 747, baseType: !1822, size: 768)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !388, line: 469, size: 768, elements: !1823)
!1823 = !{!1824, !1825, !1826, !1827, !1828}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1822, file: !388, line: 471, baseType: !1731, size: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1822, file: !388, line: 474, baseType: !7, size: 32, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1822, file: !388, line: 475, baseType: !7, size: 32, offset: 288)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1822, file: !388, line: 478, baseType: !1402, size: 64, offset: 320)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1822, file: !388, line: 481, baseType: !1829, size: 384, offset: 384)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1830, size: 384, elements: !1501)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !1831)
!1831 = !{!1832, !1833, !1834}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1830, file: !135, line: 1920, baseType: !1768, size: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1830, file: !135, line: 1921, baseType: !1402, size: 64, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1830, file: !135, line: 1922, baseType: !1527, size: 32, offset: 320)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !1728, file: !388, line: 748, baseType: !1836, size: 320)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !388, line: 487, size: 320, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1836, file: !388, line: 490, baseType: !1731, size: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1836, file: !388, line: 494, baseType: !1387, size: 32, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !1728, file: !388, line: 749, baseType: !1841, size: 384)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !388, line: 500, size: 384, elements: !1842)
!1842 = !{!1843, !1844, !1845}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1841, file: !388, line: 502, baseType: !1731, size: 256)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1841, file: !388, line: 506, baseType: !1716, size: 64, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1841, file: !388, line: 510, baseType: !1716, size: 64, offset: 320)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !1728, file: !388, line: 750, baseType: !1847, size: 320)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !388, line: 529, size: 320, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1847, file: !388, line: 531, baseType: !1731, size: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1847, file: !388, line: 540, baseType: !1716, size: 64, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !1728, file: !388, line: 751, baseType: !1852, size: 704)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !388, line: 546, size: 704, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859, !1860}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1852, file: !388, line: 549, baseType: !1782, size: 512)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1852, file: !388, line: 553, baseType: !1392, size: 64, offset: 512)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1852, file: !388, line: 557, baseType: !1386, size: 8, offset: 576)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1852, file: !388, line: 558, baseType: !1386, size: 8, offset: 584)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1852, file: !388, line: 559, baseType: !1386, size: 8, offset: 592)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1852, file: !388, line: 560, baseType: !1386, size: 8, offset: 600)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1852, file: !388, line: 566, baseType: !1780, size: 64, offset: 640)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !1728, file: !388, line: 752, baseType: !1862, size: 384)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !388, line: 571, size: 384, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1862, file: !388, line: 573, baseType: !1793, size: 320)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1862, file: !388, line: 577, baseType: !1402, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !1728, file: !388, line: 753, baseType: !1867, size: 576)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !388, line: 600, size: 576, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1874, !1883}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1867, file: !388, line: 602, baseType: !1793, size: 320)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1867, file: !388, line: 605, baseType: !1402, size: 64, offset: 320)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1867, file: !388, line: 609, baseType: !1872, size: 64, offset: 384)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1873, line: 46, baseType: !1456)
!1873 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1867, file: !388, line: 612, baseType: !1875, size: 64, offset: 448)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !388, line: 581, size: 320, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1882}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1876, file: !388, line: 583, baseType: !134, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1876, file: !388, line: 586, baseType: !1402, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1876, file: !388, line: 589, baseType: !1402, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1876, file: !388, line: 592, baseType: !1402, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1876, file: !388, line: 595, baseType: !1402, size: 64, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1867, file: !388, line: 616, baseType: !1716, size: 64, offset: 512)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !1728, file: !388, line: 754, baseType: !1885, size: 512)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !388, line: 622, size: 512, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1890}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1885, file: !388, line: 624, baseType: !1793, size: 320)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1885, file: !388, line: 628, baseType: !1402, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1885, file: !388, line: 632, baseType: !1402, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1885, file: !388, line: 636, baseType: !1402, size: 64, offset: 448)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !1728, file: !388, line: 755, baseType: !1892, size: 704)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !388, line: 642, size: 704, elements: !1893)
!1893 = !{!1894, !1895, !1896, !1897}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1892, file: !388, line: 644, baseType: !1885, size: 512)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1892, file: !388, line: 648, baseType: !1402, size: 64, offset: 512)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1892, file: !388, line: 652, baseType: !1402, size: 64, offset: 576)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1892, file: !388, line: 653, baseType: !1402, size: 64, offset: 640)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !1728, file: !388, line: 756, baseType: !1899, size: 448)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !388, line: 663, size: 448, elements: !1900)
!1900 = !{!1901, !1902, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1899, file: !388, line: 665, baseType: !1793, size: 320)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1899, file: !388, line: 668, baseType: !1402, size: 64, offset: 320)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1899, file: !388, line: 673, baseType: !1402, size: 64, offset: 384)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !1728, file: !388, line: 757, baseType: !1905, size: 384)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !388, line: 694, size: 384, elements: !1906)
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1905, file: !388, line: 696, baseType: !1793, size: 320)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1905, file: !388, line: 699, baseType: !1402, size: 64, offset: 320)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !1728, file: !388, line: 758, baseType: !1910, size: 384)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !388, line: 681, size: 384, elements: !1911)
!1911 = !{!1912, !1913, !1914}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1910, file: !388, line: 683, baseType: !1731, size: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1910, file: !388, line: 686, baseType: !1402, size: 64, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1910, file: !388, line: 689, baseType: !1402, size: 64, offset: 320)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !1728, file: !388, line: 759, baseType: !1916, size: 384)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !388, line: 707, size: 384, elements: !1917)
!1917 = !{!1918, !1919, !1920}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1916, file: !388, line: 709, baseType: !1731, size: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1916, file: !388, line: 712, baseType: !1402, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1916, file: !388, line: 712, baseType: !1402, size: 64, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !1728, file: !388, line: 760, baseType: !1922, size: 320)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !388, line: 718, size: 320, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1922, file: !388, line: 720, baseType: !1731, size: 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1922, file: !388, line: 723, baseType: !1402, size: 64, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1723, file: !388, line: 138, baseType: !1722, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1723, file: !388, line: 139, baseType: !1722, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1718, file: !388, line: 146, baseType: !1721, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1718, file: !388, line: 152, baseType: !1716, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1713, file: !330, line: 130, baseType: !1577, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1708, file: !330, line: 134, baseType: !1391, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1708, file: !330, line: 137, baseType: !1402, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1708, file: !330, line: 138, baseType: !1527, size: 32, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1708, file: !330, line: 142, baseType: !7, size: 32, offset: 352)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1708, file: !330, line: 144, baseType: !1387, size: 32, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1708, file: !330, line: 145, baseType: !1387, size: 32, offset: 416)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1708, file: !330, line: 146, baseType: !1938, size: 64, offset: 448)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !330, line: 119, baseType: !1458)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1691, file: !330, line: 220, baseType: !1694, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1691, file: !330, line: 223, baseType: !1391, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1691, file: !330, line: 226, baseType: !1942, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !330, line: 185, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1691, file: !330, line: 229, baseType: !1945, size: 128, offset: 256)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1946, size: 128, elements: !1645)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !330, line: 229, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1691, file: !330, line: 232, baseType: !1690, size: 64, offset: 384)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1691, file: !330, line: 233, baseType: !1690, size: 64, offset: 448)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1691, file: !330, line: 238, baseType: !1951, size: 64, offset: 512)
!1951 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !330, line: 235, size: 64, elements: !1952)
!1952 = !{!1953, !1959}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1951, file: !330, line: 236, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !330, line: 273, size: 128, elements: !1956)
!1956 = !{!1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1955, file: !330, line: 275, baseType: !1716, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1955, file: !330, line: 278, baseType: !1716, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1951, file: !330, line: 237, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !330, line: 259, size: 320, elements: !1962)
!1962 = !{!1963, !1964, !1965, !1966, !1967}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1961, file: !330, line: 261, baseType: !1577, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1961, file: !330, line: 262, baseType: !1577, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1961, file: !330, line: 266, baseType: !1577, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1961, file: !330, line: 267, baseType: !1577, size: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1961, file: !330, line: 270, baseType: !1387, size: 32, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1691, file: !330, line: 241, baseType: !1938, size: 64, offset: 576)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1691, file: !330, line: 244, baseType: !1387, size: 32, offset: 640)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1691, file: !330, line: 247, baseType: !1387, size: 32, offset: 672)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1691, file: !330, line: 250, baseType: !1387, size: 32, offset: 704)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1691, file: !330, line: 253, baseType: !1387, size: 32, offset: 736)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1691, file: !330, line: 256, baseType: !1387, size: 32, offset: 768)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !1598, file: !1580, line: 179, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !1580, line: 150, baseType: !1977)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !1580, line: 142, size: 320, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1982, !1985, !1986}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1977, file: !1580, line: 144, baseType: !1402, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1977, file: !1580, line: 145, baseType: !1577, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1977, file: !1580, line: 146, baseType: !1577, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1977, file: !1580, line: 147, baseType: !1983, size: 32, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1984, line: 31, baseType: !1387)
!1984 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1977, file: !1580, line: 148, baseType: !7, size: 32, offset: 224)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1977, file: !1580, line: 149, baseType: !1386, size: 8, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !1598, file: !1580, line: 180, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !1580, line: 162, baseType: !1990)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !1580, line: 159, size: 128, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1990, file: !1580, line: 160, baseType: !1402, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1990, file: !1580, line: 161, baseType: !1458, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !1598, file: !1580, line: 181, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !1580, line: 181, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !1593, file: !1580, line: 317, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1458, size: 64, elements: !1501)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !1593, file: !1580, line: 318, baseType: !2000, size: 320)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !1580, line: 188, size: 320, elements: !2001)
!2001 = !{!2002, !2004, !2061}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !2000, file: !1580, line: 190, baseType: !2003, size: 192)
!2003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1597, size: 192, elements: !1476)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2000, file: !1580, line: 193, baseType: !2005, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !1580, line: 206, size: 320, elements: !2007)
!2007 = !{!2008, !2046, !2047, !2048, !2060}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !2006, file: !1580, line: 208, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !1403, line: 62, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !2012, line: 538, size: 256, elements: !2013)
!2012 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2013 = !{!2014, !2018, !2024, !2037}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2011, file: !2012, line: 539, baseType: !2015, size: 32)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !2012, line: 482, size: 32, elements: !2016)
!2016 = !{!2017}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2015, file: !2012, line: 484, baseType: !7, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !2011, file: !2012, line: 540, baseType: !2019, size: 192)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !2012, line: 488, size: 192, elements: !2020)
!2020 = !{!2021, !2022, !2023}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2019, file: !2012, line: 489, baseType: !2015, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2019, file: !2012, line: 492, baseType: !1392, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2019, file: !2012, line: 496, baseType: !1402, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !2011, file: !2012, line: 541, baseType: !2025, size: 256)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !2012, line: 504, size: 256, elements: !2026)
!2026 = !{!2027, !2028, !2035, !2036}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2025, file: !2012, line: 505, baseType: !2015, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2025, file: !2012, line: 509, baseType: !2029, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !2012, line: 501, baseType: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !2033}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2025, file: !2012, line: 510, baseType: !2033, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2025, file: !2012, line: 513, baseType: !2009, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !2011, file: !2012, line: 542, baseType: !2038, size: 128)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !2012, line: 530, size: 128, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2038, file: !2012, line: 531, baseType: !2015, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2038, file: !2012, line: 534, baseType: !2042, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !2012, line: 525, baseType: !2043)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!1386, !1402, !1392, !1456, !1456}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2006, file: !1580, line: 211, baseType: !7, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2006, file: !1580, line: 214, baseType: !1458, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2006, file: !1580, line: 224, baseType: !2049, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !1580, line: 202, baseType: !2051)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !1580, line: 202, size: 128, elements: !2052)
!2052 = !{!2053}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2051, file: !1580, line: 202, baseType: !2054, size: 128)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !1580, line: 200, baseType: !2055)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !1580, line: 200, size: 128, elements: !2056)
!2056 = !{!2057, !2058, !2059}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2055, file: !1580, line: 200, baseType: !7, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2055, file: !1580, line: 200, baseType: !7, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2055, file: !1580, line: 200, baseType: !1611, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !2006, file: !1580, line: 234, baseType: !2049, size: 64, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2000, file: !1580, line: 197, baseType: !1458, size: 64, offset: 256)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !1593, file: !1580, line: 319, baseType: !1465, size: 256)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !1593, file: !1580, line: 320, baseType: !1484, size: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !1405, file: !135, line: 3384, baseType: !2065, size: 1472)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !2066)
!2066 = !{!2067, !2088, !2089, !2090, !2091}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2065, file: !135, line: 3115, baseType: !2068, size: 1216)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !2069)
!2069 = !{!2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2068, file: !135, line: 2985, baseType: !1573, size: 960)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !2068, file: !135, line: 2986, baseType: !1402, size: 64, offset: 960)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !2068, file: !135, line: 2987, baseType: !1402, size: 64, offset: 1024)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !2068, file: !135, line: 2988, baseType: !1402, size: 64, offset: 1088)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !2068, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !2068, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !2068, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !2068, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !2068, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !2068, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !2068, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !2068, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !2068, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !2068, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !2068, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !2068, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !2068, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !2068, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !2065, file: !135, line: 3117, baseType: !1402, size: 64, offset: 1216)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !2065, file: !135, line: 3119, baseType: !1402, size: 64, offset: 1280)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !2065, file: !135, line: 3121, baseType: !1402, size: 64, offset: 1344)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !2065, file: !135, line: 3123, baseType: !1402, size: 64, offset: 1408)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !1405, file: !135, line: 3385, baseType: !2093, size: 1088)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !2094)
!2094 = !{!2095, !2096, !2097}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2093, file: !135, line: 2875, baseType: !1573, size: 960)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !2093, file: !135, line: 2876, baseType: !1577, size: 64, offset: 960)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !2093, file: !135, line: 2877, baseType: !2098, size: 64, offset: 1024)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !2100, line: 172, size: 128, elements: !2101)
!2100 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2101 = !{!2102, !2103, !2104, !2105, !2106, !2107, !2108}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !2099, file: !2100, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2099, file: !2100, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !2099, file: !2100, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !2099, file: !2100, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !2099, file: !2100, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !2099, file: !2100, line: 195, baseType: !7, size: 32, offset: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !2099, file: !2100, line: 199, baseType: !1402, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !1405, file: !135, line: 3386, baseType: !2068, size: 1216)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !1405, file: !135, line: 3387, baseType: !2111, size: 1280)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2111, file: !135, line: 3094, baseType: !2068, size: 1216)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !2111, file: !135, line: 3095, baseType: !2098, size: 64, offset: 1216)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !1405, file: !135, line: 3388, baseType: !2116, size: 1216)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2116, file: !135, line: 2825, baseType: !1535, size: 896)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2116, file: !135, line: 2827, baseType: !1402, size: 64, offset: 896)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !2116, file: !135, line: 2828, baseType: !1402, size: 64, offset: 960)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !2116, file: !135, line: 2829, baseType: !1402, size: 64, offset: 1024)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !2116, file: !135, line: 2830, baseType: !1402, size: 64, offset: 1088)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !2116, file: !135, line: 2831, baseType: !1402, size: 64, offset: 1152)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !1405, file: !135, line: 3389, baseType: !2125, size: 1024)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !2126)
!2126 = !{!2127, !2128, !2129}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2125, file: !135, line: 2851, baseType: !1573, size: 960)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !2125, file: !135, line: 2852, baseType: !1387, size: 32, offset: 960)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !2125, file: !135, line: 2853, baseType: !1387, size: 32, offset: 992)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !1405, file: !135, line: 3390, baseType: !2131, size: 1024)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !2132)
!2132 = !{!2133, !2134}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2131, file: !135, line: 2858, baseType: !1573, size: 960)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !2131, file: !135, line: 2859, baseType: !2098, size: 64, offset: 960)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !1405, file: !135, line: 3391, baseType: !2136, size: 960)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !2137)
!2137 = !{!2138}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2136, file: !135, line: 2863, baseType: !1573, size: 960)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1405, file: !135, line: 3392, baseType: !2140, size: 1472)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !2141)
!2141 = !{!2142}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2140, file: !135, line: 3305, baseType: !2065, size: 1472)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1405, file: !135, line: 3393, baseType: !2144, size: 1792)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !2145)
!2145 = !{!2146, !2147, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2144, file: !135, line: 3249, baseType: !2065, size: 1472)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !2144, file: !135, line: 3251, baseType: !2148, size: 64, offset: 1472)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !2150, line: 463, size: 1152, elements: !2151)
!2150 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2151 = !{!2152, !2155, !2186, !2187, !2300, !2303, !2304, !2305, !2306, !2307, !2308, !2332, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !2149, file: !2150, line: 464, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !2150, line: 464, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !2149, file: !2150, line: 467, baseType: !2156, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !330, line: 374, size: 640, elements: !2158)
!2158 = !{!2159, !2161, !2162, !2175, !2176, !2177, !2178, !2179, !2180, !2182, !2184, !2185}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !2157, file: !330, line: 377, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !1403, line: 111, baseType: !1690)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !2157, file: !330, line: 378, baseType: !2160, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !2157, file: !330, line: 381, baseType: !2163, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !330, line: 282, baseType: !2165)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !330, line: 282, size: 128, elements: !2166)
!2166 = !{!2167}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2165, file: !330, line: 282, baseType: !2168, size: 128)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !330, line: 281, baseType: !2169)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !330, line: 281, size: 128, elements: !2170)
!2170 = !{!2171, !2172, !2173}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2169, file: !330, line: 281, baseType: !7, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2169, file: !330, line: 281, baseType: !7, size: 32, offset: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2169, file: !330, line: 281, baseType: !2174, size: 64, offset: 64)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2160, size: 64, elements: !1501)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !2157, file: !330, line: 384, baseType: !1387, size: 32, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !2157, file: !330, line: 387, baseType: !1387, size: 32, offset: 224)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !2157, file: !330, line: 390, baseType: !1387, size: 32, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !2157, file: !330, line: 394, baseType: !2163, size: 64, offset: 320)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !2157, file: !330, line: 396, baseType: !329, size: 32, offset: 384)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !2157, file: !330, line: 399, baseType: !2181, size: 64, offset: 416)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !1645)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !2157, file: !330, line: 402, baseType: !2183, size: 64, offset: 480)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1645)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !2157, file: !330, line: 406, baseType: !1387, size: 32, offset: 544)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !2157, file: !330, line: 409, baseType: !1387, size: 32, offset: 576)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !2149, file: !2150, line: 470, baseType: !1717, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !2149, file: !2150, line: 473, baseType: !2188, size: 64, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !2100, line: 39, size: 1152, elements: !2190)
!2190 = !{!2191, !2239, !2252, !2264, !2265, !2277, !2278, !2282, !2283, !2284, !2285, !2286}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !2189, file: !2100, line: 41, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !2193, line: 144, baseType: !2194)
!2193 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !2193, line: 100, size: 896, elements: !2196)
!2196 = !{!2197, !2203, !2208, !2213, !2215, !2216, !2217, !2218, !2219, !2220, !2225, !2227, !2228, !2233, !2238}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !2195, file: !2193, line: 102, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !2193, line: 52, baseType: !2199)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!2202, !2033}
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !2193, line: 47, baseType: !7)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !2195, file: !2193, line: 105, baseType: !2204, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !2193, line: 59, baseType: !2205)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!1387, !2033, !2033}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !2195, file: !2193, line: 108, baseType: !2209, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !2193, line: 63, baseType: !2210)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{null, !1391}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2195, file: !2193, line: 111, baseType: !2214, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2195, file: !2193, line: 114, baseType: !1872, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !2195, file: !2193, line: 117, baseType: !1872, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !2195, file: !2193, line: 120, baseType: !1872, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !2195, file: !2193, line: 124, baseType: !7, size: 32, offset: 448)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !2195, file: !2193, line: 128, baseType: !7, size: 32, offset: 480)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !2195, file: !2193, line: 131, baseType: !2221, size: 64, offset: 512)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !2193, line: 75, baseType: !2222)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!1391, !1872, !1872}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !2195, file: !2193, line: 132, baseType: !2226, size: 64, offset: 576)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !2193, line: 78, baseType: !2210)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !2195, file: !2193, line: 135, baseType: !1391, size: 64, offset: 640)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !2195, file: !2193, line: 136, baseType: !2229, size: 64, offset: 704)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !2193, line: 82, baseType: !2230)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!1391, !1391, !1872, !1872}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !2195, file: !2193, line: 137, baseType: !2234, size: 64, offset: 768)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !2193, line: 83, baseType: !2235)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null, !1391, !1391}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !2195, file: !2193, line: 141, baseType: !7, size: 32, offset: 832)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !2189, file: !2100, line: 48, baseType: !2240, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !388, line: 35, baseType: !2242)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !388, line: 35, size: 128, elements: !2243)
!2243 = !{!2244}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2242, file: !388, line: 35, baseType: !2245, size: 128)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !388, line: 33, baseType: !2246)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !388, line: 33, size: 128, elements: !2247)
!2247 = !{!2248, !2249, !2250}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2246, file: !388, line: 33, baseType: !7, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2246, file: !388, line: 33, baseType: !7, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2246, file: !388, line: 33, baseType: !2251, size: 64, offset: 64)
!2251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1726, size: 64, elements: !1501)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !2189, file: !2100, line: 51, baseType: !2253, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !2255)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !2256)
!2256 = !{!2257}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2255, file: !135, line: 183, baseType: !2258, size: 128)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !2259)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !2260)
!2260 = !{!2261, !2262, !2263}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2259, file: !135, line: 182, baseType: !7, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2259, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2259, file: !135, line: 182, baseType: !1780, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !2189, file: !2100, line: 54, baseType: !1402, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !2189, file: !2100, line: 57, baseType: !2266, size: 128, offset: 256)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !2267, line: 31, size: 128, elements: !2268)
!2267 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !2266, file: !2267, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !2266, file: !2267, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !2266, file: !2267, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !2266, file: !2267, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !2266, file: !2267, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !2266, file: !2267, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !2266, file: !2267, line: 56, baseType: !2276, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !1403, line: 47, baseType: !1629)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !2189, file: !2100, line: 60, baseType: !2266, size: 128, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !2189, file: !2100, line: 64, baseType: !2279, size: 64, offset: 512)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !2281, line: 33, flags: DIFlagFwdDecl)
!2281 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !2189, file: !2100, line: 67, baseType: !1402, size: 64, offset: 576)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !2189, file: !2100, line: 73, baseType: !2192, size: 64, offset: 640)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !2189, file: !2100, line: 77, baseType: !2276, size: 64, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !2189, file: !2100, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !2189, file: !2100, line: 82, baseType: !2287, size: 320, offset: 832)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1757, line: 62, size: 320, elements: !2288)
!2288 = !{!2289, !2295, !2296, !2297, !2298, !2299}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !2287, file: !1757, line: 63, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1757, line: 56, size: 128, elements: !2292)
!2292 = !{!2293, !2294}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2291, file: !1757, line: 57, baseType: !2290, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2291, file: !1757, line: 58, baseType: !1500, size: 8, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !2287, file: !1757, line: 64, baseType: !7, size: 32, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !2287, file: !1757, line: 66, baseType: !7, size: 32, offset: 96)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !2287, file: !1757, line: 68, baseType: !1386, size: 8, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !2287, file: !1757, line: 70, baseType: !1755, size: 64, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !2287, file: !1757, line: 71, baseType: !1763, size: 64, offset: 256)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !2149, file: !2150, line: 476, baseType: !2301, size: 64, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !2150, line: 476, flags: DIFlagFwdDecl)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !2149, file: !2150, line: 479, baseType: !2192, size: 64, offset: 320)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2149, file: !2150, line: 484, baseType: !1402, size: 64, offset: 384)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !2149, file: !2150, line: 488, baseType: !1402, size: 64, offset: 448)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !2149, file: !2150, line: 493, baseType: !1402, size: 64, offset: 512)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !2149, file: !2150, line: 496, baseType: !1402, size: 64, offset: 576)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !2149, file: !2150, line: 501, baseType: !2309, size: 64, offset: 640)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !341, line: 2355, size: 576, elements: !2311)
!2311 = !{!2312, !2315, !2316, !2317, !2318, !2320, !2321, !2326, !2327, !2328, !2329, !2330, !2331}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !2310, file: !341, line: 2356, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !341, line: 2356, flags: DIFlagFwdDecl)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !2310, file: !341, line: 2357, baseType: !1392, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !2310, file: !341, line: 2358, baseType: !1387, size: 32, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !2310, file: !341, line: 2359, baseType: !1387, size: 32, offset: 160)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !2310, file: !341, line: 2360, baseType: !2319, size: 128, offset: 192)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1387, size: 128, elements: !1669)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !2310, file: !341, line: 2364, baseType: !1387, size: 32, offset: 320)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !2310, file: !341, line: 2367, baseType: !2322, size: 128, offset: 384)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !341, line: 2349, size: 128, elements: !2323)
!2323 = !{!2324, !2325}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2322, file: !341, line: 2351, baseType: !1577, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2322, file: !341, line: 2352, baseType: !1458, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !2310, file: !341, line: 2371, baseType: !340, size: 32, offset: 512)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !2310, file: !341, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !2310, file: !341, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !2310, file: !341, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !2310, file: !341, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !2310, file: !341, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !2149, file: !2150, line: 504, baseType: !2333, size: 64, offset: 704)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !2150, line: 504, flags: DIFlagFwdDecl)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !2149, file: !2150, line: 507, baseType: !2192, size: 64, offset: 768)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !2149, file: !2150, line: 510, baseType: !1387, size: 32, offset: 832)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !2149, file: !2150, line: 513, baseType: !1387, size: 32, offset: 864)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !2149, file: !2150, line: 516, baseType: !1527, size: 32, offset: 896)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !2149, file: !2150, line: 519, baseType: !1527, size: 32, offset: 928)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !2149, file: !2150, line: 522, baseType: !7, size: 32, offset: 960)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !2149, file: !2150, line: 523, baseType: !7, size: 32, offset: 992)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !2149, file: !2150, line: 528, baseType: !1392, size: 64, offset: 1024)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !2149, file: !2150, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !2149, file: !2150, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !2149, file: !2150, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !2149, file: !2150, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !2149, file: !2150, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !2149, file: !2150, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !2149, file: !2150, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !2149, file: !2150, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !2149, file: !2150, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !2149, file: !2150, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !2149, file: !2150, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !2149, file: !2150, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !2149, file: !2150, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !2149, file: !2150, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !2149, file: !2150, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !2149, file: !2150, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2144, file: !135, line: 3254, baseType: !1402, size: 64, offset: 1536)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !2144, file: !135, line: 3257, baseType: !1402, size: 64, offset: 1600)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !2144, file: !135, line: 3258, baseType: !1402, size: 64, offset: 1664)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !2144, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !2144, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !2144, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !2144, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !2144, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !2144, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !2144, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !2144, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !2144, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !2144, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !2144, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !2144, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !2144, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !2144, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !2144, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2144, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !2144, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !2144, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1405, file: !135, line: 3394, baseType: !2381, size: 1344)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2381, file: !135, line: 2280, baseType: !1441, size: 192)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2381, file: !135, line: 2281, baseType: !1402, size: 64, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2381, file: !135, line: 2282, baseType: !1402, size: 64, offset: 256)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !2381, file: !135, line: 2283, baseType: !1402, size: 64, offset: 320)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2381, file: !135, line: 2284, baseType: !1402, size: 64, offset: 384)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2381, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !2381, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !2381, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !2381, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !2381, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !2381, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !2381, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2381, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !2381, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !2381, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !2381, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !2381, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !2381, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !2381, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !2381, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !2381, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2381, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !2381, file: !135, line: 2306, baseType: !1983, size: 32, offset: 544)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !2381, file: !135, line: 2307, baseType: !1402, size: 64, offset: 576)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !2381, file: !135, line: 2308, baseType: !1402, size: 64, offset: 640)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2381, file: !135, line: 2314, baseType: !2409, size: 64, offset: 704)
!2409 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !2410)
!2410 = !{!2411, !2412, !2413}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2409, file: !135, line: 2310, baseType: !1387, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2409, file: !135, line: 2311, baseType: !1392, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !2409, file: !135, line: 2312, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2381, file: !135, line: 2315, baseType: !1402, size: 64, offset: 768)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !2381, file: !135, line: 2316, baseType: !1402, size: 64, offset: 832)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !2381, file: !135, line: 2317, baseType: !1402, size: 64, offset: 896)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !2381, file: !135, line: 2318, baseType: !1402, size: 64, offset: 960)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !2381, file: !135, line: 2319, baseType: !1402, size: 64, offset: 1024)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !2381, file: !135, line: 2320, baseType: !1402, size: 64, offset: 1088)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2381, file: !135, line: 2321, baseType: !1402, size: 64, offset: 1152)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !2381, file: !135, line: 2322, baseType: !1402, size: 64, offset: 1216)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !2381, file: !135, line: 2324, baseType: !2425, size: 64, offset: 1280)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1405, file: !135, line: 3395, baseType: !2428, size: 320)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !2429)
!2429 = !{!2430, !2431, !2432}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2428, file: !135, line: 1470, baseType: !1441, size: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !2428, file: !135, line: 1471, baseType: !1402, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2428, file: !135, line: 1472, baseType: !1402, size: 64, offset: 256)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1405, file: !135, line: 3396, baseType: !2434, size: 320)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !2435)
!2435 = !{!2436, !2437, !2438}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2434, file: !135, line: 1483, baseType: !1441, size: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2434, file: !135, line: 1484, baseType: !1387, size: 32, offset: 192)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2434, file: !135, line: 1485, baseType: !1780, size: 64, offset: 256)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !1405, file: !135, line: 3397, baseType: !2440, size: 384)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !2441)
!2441 = !{!2442, !2443, !2444, !2445}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2440, file: !135, line: 1830, baseType: !1441, size: 192)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2440, file: !135, line: 1831, baseType: !1527, size: 32, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2440, file: !135, line: 1832, baseType: !1402, size: 64, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !2440, file: !135, line: 1835, baseType: !1780, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1405, file: !135, line: 3398, baseType: !2447, size: 704)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !2448)
!2448 = !{!2449, !2450, !2451, !2452, !2453, !2458}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2447, file: !135, line: 1899, baseType: !1441, size: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !2447, file: !135, line: 1902, baseType: !1402, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !2447, file: !135, line: 1905, baseType: !1726, size: 64, offset: 256)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2447, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !2447, file: !135, line: 1911, baseType: !2454, size: 64, offset: 384)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !2100, line: 117, size: 128, elements: !2456)
!2456 = !{!2457}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !2455, file: !2100, line: 120, baseType: !2266, size: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !2447, file: !135, line: 1914, baseType: !1768, size: 256, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1405, file: !135, line: 3399, baseType: !2460, size: 704)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !2461)
!2461 = !{!2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2460, file: !135, line: 2009, baseType: !1441, size: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !2460, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !2460, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2460, file: !135, line: 2014, baseType: !1527, size: 32, offset: 224)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !2460, file: !135, line: 2016, baseType: !1402, size: 64, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !2460, file: !135, line: 2017, baseType: !2253, size: 64, offset: 320)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !2460, file: !135, line: 2019, baseType: !1402, size: 64, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !2460, file: !135, line: 2020, baseType: !1402, size: 64, offset: 448)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !2460, file: !135, line: 2021, baseType: !1402, size: 64, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !2460, file: !135, line: 2022, baseType: !1402, size: 64, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !2460, file: !135, line: 2023, baseType: !1402, size: 64, offset: 640)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1405, file: !135, line: 3400, baseType: !2474, size: 832)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !2475)
!2475 = !{!2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2474, file: !135, line: 2431, baseType: !1441, size: 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2474, file: !135, line: 2433, baseType: !1402, size: 64, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !2474, file: !135, line: 2434, baseType: !1402, size: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !2474, file: !135, line: 2435, baseType: !1402, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !2474, file: !135, line: 2436, baseType: !1402, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !2474, file: !135, line: 2437, baseType: !2253, size: 64, offset: 448)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !2474, file: !135, line: 2438, baseType: !1402, size: 64, offset: 512)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !2474, file: !135, line: 2440, baseType: !1402, size: 64, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !2474, file: !135, line: 2441, baseType: !1402, size: 64, offset: 640)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !2474, file: !135, line: 2443, baseType: !2486, size: 128, offset: 704)
!2486 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !2487)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !2488)
!2488 = !{!2489}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2487, file: !135, line: 182, baseType: !2258, size: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !1405, file: !135, line: 3401, baseType: !2491, size: 320)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !2492)
!2492 = !{!2493, !2494, !2501}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2491, file: !135, line: 3329, baseType: !1441, size: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2491, file: !135, line: 3330, baseType: !2495, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !2497)
!2497 = !{!2498, !2499, !2500}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2496, file: !135, line: 3322, baseType: !2495, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2496, file: !135, line: 3323, baseType: !2495, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2496, file: !135, line: 3324, baseType: !1402, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2491, file: !135, line: 3331, baseType: !2495, size: 64, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1405, file: !135, line: 3402, baseType: !2503, size: 256)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !2504)
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2503, file: !135, line: 1541, baseType: !1441, size: 192)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !2503, file: !135, line: 1542, baseType: !2507, size: 64, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !2509)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !2510)
!2510 = !{!2511}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2509, file: !135, line: 1538, baseType: !2512, size: 192)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !2513)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !2514)
!2514 = !{!2515, !2516, !2517}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2513, file: !135, line: 1537, baseType: !7, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2513, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2513, file: !135, line: 1537, baseType: !2518, size: 128, offset: 64)
!2518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2519, size: 128, elements: !1501)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !2520)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !2521)
!2521 = !{!2522, !2523}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2520, file: !135, line: 1533, baseType: !1402, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2520, file: !135, line: 1534, baseType: !1402, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !1405, file: !135, line: 3403, baseType: !2525, size: 512)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !2526)
!2526 = !{!2527, !2528, !2529, !2530, !2536, !2537, !2538}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2525, file: !135, line: 1939, baseType: !1441, size: 192)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2525, file: !135, line: 1940, baseType: !1527, size: 32, offset: 192)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2525, file: !135, line: 1941, baseType: !345, size: 32, offset: 224)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !2525, file: !135, line: 1946, baseType: !2531, size: 32, offset: 256)
!2531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !2532)
!2532 = !{!2533, !2534, !2535}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !2531, file: !135, line: 1943, baseType: !363, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !2531, file: !135, line: 1944, baseType: !370, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !2531, file: !135, line: 1945, baseType: !134, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !2525, file: !135, line: 1950, baseType: !1716, size: 64, offset: 320)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !2525, file: !135, line: 1951, baseType: !1716, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2525, file: !135, line: 1953, baseType: !1780, size: 64, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !1405, file: !135, line: 3404, baseType: !2540, size: 1664)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2540, file: !135, line: 3338, baseType: !1441, size: 192)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2540, file: !135, line: 3341, baseType: !2544, size: 1472, offset: 192)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !2545, line: 410, size: 1472, elements: !2546)
!2545 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2546 = !{!2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !2544, file: !2545, line: 412, baseType: !1387, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !2544, file: !2545, line: 413, baseType: !1387, size: 32, offset: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !2544, file: !2545, line: 414, baseType: !1387, size: 32, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !2544, file: !2545, line: 415, baseType: !1387, size: 32, offset: 96)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !2544, file: !2545, line: 416, baseType: !1387, size: 32, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !2544, file: !2545, line: 417, baseType: !1387, size: 32, offset: 160)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !2544, file: !2545, line: 418, baseType: !1386, size: 8, offset: 192)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !2544, file: !2545, line: 419, baseType: !1386, size: 8, offset: 200)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !2544, file: !2545, line: 420, baseType: !2556, size: 8, offset: 208)
!2556 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !2544, file: !2545, line: 421, baseType: !2556, size: 8, offset: 216)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !2544, file: !2545, line: 422, baseType: !2556, size: 8, offset: 224)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !2544, file: !2545, line: 423, baseType: !2556, size: 8, offset: 232)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !2544, file: !2545, line: 424, baseType: !2556, size: 8, offset: 240)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !2544, file: !2545, line: 425, baseType: !2556, size: 8, offset: 248)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !2544, file: !2545, line: 426, baseType: !2556, size: 8, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !2544, file: !2545, line: 427, baseType: !2556, size: 8, offset: 264)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !2544, file: !2545, line: 428, baseType: !2556, size: 8, offset: 272)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !2544, file: !2545, line: 429, baseType: !2556, size: 8, offset: 280)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !2544, file: !2545, line: 430, baseType: !2556, size: 8, offset: 288)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !2544, file: !2545, line: 431, baseType: !2556, size: 8, offset: 296)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !2544, file: !2545, line: 432, baseType: !2556, size: 8, offset: 304)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !2544, file: !2545, line: 433, baseType: !2556, size: 8, offset: 312)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !2544, file: !2545, line: 434, baseType: !2556, size: 8, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !2544, file: !2545, line: 435, baseType: !2556, size: 8, offset: 328)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !2544, file: !2545, line: 436, baseType: !2556, size: 8, offset: 336)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !2544, file: !2545, line: 437, baseType: !2556, size: 8, offset: 344)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !2544, file: !2545, line: 438, baseType: !2556, size: 8, offset: 352)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !2544, file: !2545, line: 439, baseType: !2556, size: 8, offset: 360)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !2544, file: !2545, line: 440, baseType: !2556, size: 8, offset: 368)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !2544, file: !2545, line: 441, baseType: !2556, size: 8, offset: 376)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !2544, file: !2545, line: 442, baseType: !2556, size: 8, offset: 384)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !2544, file: !2545, line: 443, baseType: !2556, size: 8, offset: 392)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !2544, file: !2545, line: 444, baseType: !2556, size: 8, offset: 400)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !2544, file: !2545, line: 445, baseType: !2556, size: 8, offset: 408)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !2544, file: !2545, line: 446, baseType: !2556, size: 8, offset: 416)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !2544, file: !2545, line: 447, baseType: !2556, size: 8, offset: 424)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !2544, file: !2545, line: 448, baseType: !2556, size: 8, offset: 432)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !2544, file: !2545, line: 449, baseType: !2556, size: 8, offset: 440)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !2544, file: !2545, line: 450, baseType: !2556, size: 8, offset: 448)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !2544, file: !2545, line: 451, baseType: !2556, size: 8, offset: 456)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !2544, file: !2545, line: 452, baseType: !2556, size: 8, offset: 464)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !2544, file: !2545, line: 453, baseType: !2556, size: 8, offset: 472)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !2544, file: !2545, line: 454, baseType: !2556, size: 8, offset: 480)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !2544, file: !2545, line: 455, baseType: !2556, size: 8, offset: 488)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !2544, file: !2545, line: 456, baseType: !2556, size: 8, offset: 496)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !2544, file: !2545, line: 457, baseType: !2556, size: 8, offset: 504)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !2544, file: !2545, line: 458, baseType: !2556, size: 8, offset: 512)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !2544, file: !2545, line: 459, baseType: !2556, size: 8, offset: 520)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !2544, file: !2545, line: 460, baseType: !2556, size: 8, offset: 528)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !2544, file: !2545, line: 461, baseType: !2556, size: 8, offset: 536)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !2544, file: !2545, line: 462, baseType: !2556, size: 8, offset: 544)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !2544, file: !2545, line: 463, baseType: !2556, size: 8, offset: 552)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !2544, file: !2545, line: 464, baseType: !2556, size: 8, offset: 560)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !2544, file: !2545, line: 465, baseType: !2556, size: 8, offset: 568)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !2544, file: !2545, line: 466, baseType: !2556, size: 8, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !2544, file: !2545, line: 467, baseType: !2556, size: 8, offset: 584)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !2544, file: !2545, line: 468, baseType: !2556, size: 8, offset: 592)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !2544, file: !2545, line: 469, baseType: !2556, size: 8, offset: 600)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !2544, file: !2545, line: 470, baseType: !2556, size: 8, offset: 608)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !2544, file: !2545, line: 471, baseType: !2556, size: 8, offset: 616)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !2544, file: !2545, line: 472, baseType: !2556, size: 8, offset: 624)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !2544, file: !2545, line: 473, baseType: !2556, size: 8, offset: 632)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !2544, file: !2545, line: 474, baseType: !2556, size: 8, offset: 640)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !2544, file: !2545, line: 475, baseType: !2556, size: 8, offset: 648)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !2544, file: !2545, line: 476, baseType: !2556, size: 8, offset: 656)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !2544, file: !2545, line: 477, baseType: !2556, size: 8, offset: 664)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !2544, file: !2545, line: 478, baseType: !2556, size: 8, offset: 672)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !2544, file: !2545, line: 479, baseType: !2556, size: 8, offset: 680)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !2544, file: !2545, line: 480, baseType: !2556, size: 8, offset: 688)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !2544, file: !2545, line: 481, baseType: !2556, size: 8, offset: 696)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !2544, file: !2545, line: 482, baseType: !2556, size: 8, offset: 704)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !2544, file: !2545, line: 483, baseType: !2556, size: 8, offset: 712)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !2544, file: !2545, line: 484, baseType: !2556, size: 8, offset: 720)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !2544, file: !2545, line: 485, baseType: !2556, size: 8, offset: 728)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !2544, file: !2545, line: 486, baseType: !2556, size: 8, offset: 736)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !2544, file: !2545, line: 487, baseType: !2556, size: 8, offset: 744)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !2544, file: !2545, line: 488, baseType: !2556, size: 8, offset: 752)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !2544, file: !2545, line: 489, baseType: !2556, size: 8, offset: 760)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !2544, file: !2545, line: 490, baseType: !2556, size: 8, offset: 768)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !2544, file: !2545, line: 491, baseType: !2556, size: 8, offset: 776)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !2544, file: !2545, line: 492, baseType: !2556, size: 8, offset: 784)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !2544, file: !2545, line: 493, baseType: !2556, size: 8, offset: 792)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !2544, file: !2545, line: 494, baseType: !2556, size: 8, offset: 800)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !2544, file: !2545, line: 495, baseType: !2556, size: 8, offset: 808)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !2544, file: !2545, line: 496, baseType: !2556, size: 8, offset: 816)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !2544, file: !2545, line: 497, baseType: !2556, size: 8, offset: 824)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !2544, file: !2545, line: 498, baseType: !2556, size: 8, offset: 832)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !2544, file: !2545, line: 499, baseType: !2556, size: 8, offset: 840)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !2544, file: !2545, line: 500, baseType: !2556, size: 8, offset: 848)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !2544, file: !2545, line: 501, baseType: !2556, size: 8, offset: 856)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !2544, file: !2545, line: 502, baseType: !2556, size: 8, offset: 864)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !2544, file: !2545, line: 503, baseType: !2556, size: 8, offset: 872)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !2544, file: !2545, line: 504, baseType: !2556, size: 8, offset: 880)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !2544, file: !2545, line: 505, baseType: !2556, size: 8, offset: 888)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !2544, file: !2545, line: 506, baseType: !2556, size: 8, offset: 896)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !2544, file: !2545, line: 507, baseType: !2556, size: 8, offset: 904)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !2544, file: !2545, line: 508, baseType: !2556, size: 8, offset: 912)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !2544, file: !2545, line: 509, baseType: !2556, size: 8, offset: 920)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !2544, file: !2545, line: 510, baseType: !2556, size: 8, offset: 928)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !2544, file: !2545, line: 511, baseType: !2556, size: 8, offset: 936)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !2544, file: !2545, line: 512, baseType: !2556, size: 8, offset: 944)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !2544, file: !2545, line: 513, baseType: !2556, size: 8, offset: 952)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !2544, file: !2545, line: 514, baseType: !2556, size: 8, offset: 960)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !2544, file: !2545, line: 515, baseType: !2556, size: 8, offset: 968)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !2544, file: !2545, line: 516, baseType: !2556, size: 8, offset: 976)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !2544, file: !2545, line: 517, baseType: !2556, size: 8, offset: 984)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !2544, file: !2545, line: 518, baseType: !2556, size: 8, offset: 992)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !2544, file: !2545, line: 519, baseType: !2556, size: 8, offset: 1000)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !2544, file: !2545, line: 520, baseType: !2556, size: 8, offset: 1008)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !2544, file: !2545, line: 521, baseType: !2556, size: 8, offset: 1016)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !2544, file: !2545, line: 522, baseType: !2556, size: 8, offset: 1024)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !2544, file: !2545, line: 523, baseType: !2556, size: 8, offset: 1032)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !2544, file: !2545, line: 524, baseType: !2556, size: 8, offset: 1040)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !2544, file: !2545, line: 525, baseType: !2556, size: 8, offset: 1048)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !2544, file: !2545, line: 526, baseType: !2556, size: 8, offset: 1056)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !2544, file: !2545, line: 527, baseType: !2556, size: 8, offset: 1064)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !2544, file: !2545, line: 528, baseType: !2556, size: 8, offset: 1072)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !2544, file: !2545, line: 529, baseType: !2556, size: 8, offset: 1080)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !2544, file: !2545, line: 530, baseType: !2556, size: 8, offset: 1088)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !2544, file: !2545, line: 531, baseType: !2556, size: 8, offset: 1096)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !2544, file: !2545, line: 532, baseType: !2556, size: 8, offset: 1104)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !2544, file: !2545, line: 533, baseType: !2556, size: 8, offset: 1112)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !2544, file: !2545, line: 534, baseType: !2556, size: 8, offset: 1120)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !2544, file: !2545, line: 535, baseType: !2556, size: 8, offset: 1128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !2544, file: !2545, line: 536, baseType: !2556, size: 8, offset: 1136)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !2544, file: !2545, line: 537, baseType: !2556, size: 8, offset: 1144)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !2544, file: !2545, line: 538, baseType: !2556, size: 8, offset: 1152)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !2544, file: !2545, line: 539, baseType: !2556, size: 8, offset: 1160)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !2544, file: !2545, line: 540, baseType: !2556, size: 8, offset: 1168)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !2544, file: !2545, line: 541, baseType: !2556, size: 8, offset: 1176)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !2544, file: !2545, line: 542, baseType: !2556, size: 8, offset: 1184)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !2544, file: !2545, line: 543, baseType: !2556, size: 8, offset: 1192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !2544, file: !2545, line: 544, baseType: !2556, size: 8, offset: 1200)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !2544, file: !2545, line: 545, baseType: !2556, size: 8, offset: 1208)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !2544, file: !2545, line: 546, baseType: !2556, size: 8, offset: 1216)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !2544, file: !2545, line: 547, baseType: !2556, size: 8, offset: 1224)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !2544, file: !2545, line: 548, baseType: !2556, size: 8, offset: 1232)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !2544, file: !2545, line: 549, baseType: !2556, size: 8, offset: 1240)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !2544, file: !2545, line: 550, baseType: !2556, size: 8, offset: 1248)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !2544, file: !2545, line: 551, baseType: !2556, size: 8, offset: 1256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !2544, file: !2545, line: 552, baseType: !2556, size: 8, offset: 1264)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !2544, file: !2545, line: 553, baseType: !2556, size: 8, offset: 1272)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !2544, file: !2545, line: 554, baseType: !2556, size: 8, offset: 1280)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !2544, file: !2545, line: 555, baseType: !2556, size: 8, offset: 1288)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !2544, file: !2545, line: 556, baseType: !2556, size: 8, offset: 1296)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !2544, file: !2545, line: 557, baseType: !2556, size: 8, offset: 1304)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !2544, file: !2545, line: 558, baseType: !2556, size: 8, offset: 1312)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !2544, file: !2545, line: 559, baseType: !2556, size: 8, offset: 1320)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !2544, file: !2545, line: 560, baseType: !2556, size: 8, offset: 1328)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !2544, file: !2545, line: 561, baseType: !2556, size: 8, offset: 1336)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !2544, file: !2545, line: 562, baseType: !2556, size: 8, offset: 1344)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !2544, file: !2545, line: 563, baseType: !2556, size: 8, offset: 1352)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !2544, file: !2545, line: 564, baseType: !2556, size: 8, offset: 1360)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !2544, file: !2545, line: 565, baseType: !2556, size: 8, offset: 1368)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !2544, file: !2545, line: 566, baseType: !2556, size: 8, offset: 1376)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !2544, file: !2545, line: 567, baseType: !2556, size: 8, offset: 1384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !2544, file: !2545, line: 568, baseType: !2556, size: 8, offset: 1392)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !2544, file: !2545, line: 569, baseType: !2556, size: 8, offset: 1400)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !2544, file: !2545, line: 570, baseType: !2556, size: 8, offset: 1408)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !2544, file: !2545, line: 571, baseType: !2556, size: 8, offset: 1416)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !2544, file: !2545, line: 572, baseType: !2556, size: 8, offset: 1424)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !2544, file: !2545, line: 573, baseType: !2556, size: 8, offset: 1432)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !2544, file: !2545, line: 574, baseType: !2556, size: 8, offset: 1440)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !1405, file: !135, line: 3405, baseType: !2712, size: 384)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !2713)
!2713 = !{!2714, !2715}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2712, file: !135, line: 3353, baseType: !1441, size: 192)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2712, file: !135, line: 3356, baseType: !2716, size: 192, offset: 192)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !2545, line: 578, size: 192, elements: !2717)
!2717 = !{!2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2716, file: !2545, line: 580, baseType: !1387, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2716, file: !2545, line: 581, baseType: !1387, size: 32, offset: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2716, file: !2545, line: 582, baseType: !1387, size: 32, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2716, file: !2545, line: 583, baseType: !1387, size: 32, offset: 96)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2716, file: !2545, line: 584, baseType: !1386, size: 8, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2716, file: !2545, line: 585, baseType: !1386, size: 8, offset: 136)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2716, file: !2545, line: 586, baseType: !1386, size: 8, offset: 144)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2716, file: !2545, line: 587, baseType: !1386, size: 8, offset: 152)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2716, file: !2545, line: 588, baseType: !1386, size: 8, offset: 160)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2716, file: !2545, line: 589, baseType: !1386, size: 8, offset: 168)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2716, file: !2545, line: 590, baseType: !1386, size: 8, offset: 176)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1399, file: !378, line: 49, baseType: !1726, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1399, file: !378, line: 50, baseType: !2731, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1399, file: !378, line: 51, baseType: !1395, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1396, file: !378, line: 53, baseType: !377, size: 32, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "n_counters", scope: !1396, file: !378, line: 54, baseType: !7, size: 32, offset: 288)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "hdata", scope: !1396, file: !378, line: 62, baseType: !2736, size: 64, offset: 320)
!2736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !378, line: 55, size: 64, elements: !2737)
!2737 = !{!2738}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "intvl", scope: !2736, file: !378, line: 61, baseType: !2739, size: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2736, file: !378, line: 57, size: 64, elements: !2740)
!2740 = !{!2741, !2742}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "int_start", scope: !2739, file: !378, line: 59, baseType: !1387, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !2739, file: !378, line: 60, baseType: !7, size: 32, offset: 32)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_histogram_value", file: !378, line: 66, baseType: !2744)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1396)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !1403, line: 60, baseType: !2747)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1728)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_set_t", file: !135, line: 5199, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_histogram_value_heap", file: !378, line: 69, baseType: !2754)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_histogram_value_heap", file: !378, line: 69, size: 128, elements: !2755)
!2755 = !{!2756}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2754, file: !378, line: 69, baseType: !2757, size: 128)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_histogram_value_base", file: !378, line: 68, baseType: !2758)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_histogram_value_base", file: !378, line: 68, size: 128, elements: !2759)
!2759 = !{!2760, !2761, !2762}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2758, file: !378, line: 68, baseType: !7, size: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2758, file: !378, line: 68, baseType: !7, size: 32, offset: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2758, file: !378, line: 68, baseType: !2763, size: 64, offset: 64)
!2763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 64, elements: !1501)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !1179, line: 181, size: 2496, elements: !2767)
!2767 = !{!2768, !2769, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2909, !2931, !2941, !2945, !2971, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2766, file: !1179, line: 182, baseType: !1402, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !2766, file: !1179, line: 183, baseType: !2770, size: 64, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !1179, line: 314, size: 768, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2784, !2785, !2786, !2787, !2789, !2790, !2791}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2771, file: !1179, line: 316, baseType: !1938, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2771, file: !1179, line: 317, baseType: !2765, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !2771, file: !1179, line: 318, baseType: !2765, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !2771, file: !1179, line: 319, baseType: !2770, size: 64, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !2771, file: !1179, line: 320, baseType: !2770, size: 64, offset: 256)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !2771, file: !1179, line: 321, baseType: !2770, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !2771, file: !1179, line: 322, baseType: !2770, size: 64, offset: 384)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !2771, file: !1179, line: 323, baseType: !1726, size: 64, offset: 448)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2771, file: !1179, line: 324, baseType: !1391, size: 64, offset: 512)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !2771, file: !1179, line: 327, baseType: !2783, size: 32, offset: 576)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !1179, line: 312, baseType: !1178)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !2771, file: !1179, line: 330, baseType: !7, size: 32, offset: 608)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2771, file: !1179, line: 334, baseType: !1387, size: 32, offset: 640)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2771, file: !1179, line: 336, baseType: !1387, size: 32, offset: 672)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2771, file: !1179, line: 338, baseType: !2788, size: 16, offset: 704)
!2788 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !2771, file: !1179, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !2771, file: !1179, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !2771, file: !1179, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !2766, file: !1179, line: 184, baseType: !2770, size: 64, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2766, file: !1179, line: 185, baseType: !2765, size: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !2766, file: !1179, line: 186, baseType: !2765, size: 64, offset: 256)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2766, file: !1179, line: 188, baseType: !2765, size: 64, offset: 320)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2766, file: !1179, line: 190, baseType: !2765, size: 64, offset: 384)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !2766, file: !1179, line: 192, baseType: !2765, size: 64, offset: 448)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2766, file: !1179, line: 194, baseType: !2765, size: 64, offset: 512)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !2766, file: !1179, line: 196, baseType: !2765, size: 64, offset: 576)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !2766, file: !1179, line: 197, baseType: !2765, size: 64, offset: 640)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !2766, file: !1179, line: 198, baseType: !2765, size: 64, offset: 704)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !2766, file: !1179, line: 199, baseType: !2765, size: 64, offset: 768)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !2766, file: !1179, line: 202, baseType: !2765, size: 64, offset: 832)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !2766, file: !1179, line: 204, baseType: !2765, size: 64, offset: 896)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !2766, file: !1179, line: 207, baseType: !2192, size: 64, offset: 960)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2766, file: !1179, line: 209, baseType: !1391, size: 64, offset: 1024)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !2766, file: !1179, line: 214, baseType: !2808, size: 64, offset: 1088)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !2150, line: 177, baseType: !2810)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !2150, line: 177, size: 128, elements: !2811)
!2811 = !{!2812}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2810, file: !2150, line: 177, baseType: !2813, size: 128)
!2813 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !2150, line: 176, baseType: !2814)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !2150, line: 176, size: 128, elements: !2815)
!2815 = !{!2816, !2817, !2818}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2814, file: !2150, line: 176, baseType: !7, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2814, file: !2150, line: 176, baseType: !7, size: 32, offset: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2814, file: !2150, line: 176, baseType: !2819, size: 64, offset: 64)
!2819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2820, size: 64, elements: !1501)
!2820 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !2150, line: 174, baseType: !2821)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !1202, line: 173, size: 1152, elements: !2823)
!2823 = !{!2824, !2848, !2852, !2875, !2876, !2880, !2885, !2886, !2890}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2822, file: !1202, line: 175, baseType: !2825, size: 640)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !1202, line: 114, size: 640, elements: !2826)
!2826 = !{!2827, !2828, !2829, !2833, !2837, !2839, !2840, !2841, !2843, !2844, !2845, !2846, !2847}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2825, file: !1202, line: 117, baseType: !1201, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2825, file: !1202, line: 121, baseType: !1392, size: 64, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2825, file: !1202, line: 125, baseType: !2830, size: 64, offset: 128)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!1386}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2825, file: !1202, line: 130, baseType: !2834, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!7}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2825, file: !1202, line: 133, baseType: !2838, size: 64, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2825, file: !1202, line: 136, baseType: !2838, size: 64, offset: 320)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2825, file: !1202, line: 139, baseType: !1387, size: 32, offset: 384)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2825, file: !1202, line: 143, baseType: !2842, size: 32, offset: 416)
!2842 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !1209, line: 80, baseType: !1208)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2825, file: !1202, line: 146, baseType: !7, size: 32, offset: 448)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2825, file: !1202, line: 147, baseType: !7, size: 32, offset: 480)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2825, file: !1202, line: 148, baseType: !7, size: 32, offset: 512)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2825, file: !1202, line: 151, baseType: !7, size: 32, offset: 544)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2825, file: !1202, line: 152, baseType: !7, size: 32, offset: 576)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !2822, file: !1202, line: 179, baseType: !2849, size: 64, offset: 640)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{null}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !2822, file: !1202, line: 182, baseType: !2853, size: 64, offset: 704)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{null, !2856}
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !1179, line: 276, size: 192, elements: !2858)
!2858 = !{!2859, !2860, !2874}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !2857, file: !1179, line: 278, baseType: !2192, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2857, file: !1179, line: 279, baseType: !2861, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !1179, line: 272, baseType: !2863)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !1179, line: 272, size: 128, elements: !2864)
!2864 = !{!2865}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2863, file: !1179, line: 272, baseType: !2866, size: 128)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !1179, line: 270, baseType: !2867)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !1179, line: 270, size: 128, elements: !2868)
!2868 = !{!2869, !2870, !2871}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2867, file: !1179, line: 270, baseType: !7, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2867, file: !1179, line: 270, baseType: !7, size: 32, offset: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2867, file: !1179, line: 270, baseType: !2872, size: 64, offset: 64)
!2872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2873, size: 64, elements: !1501)
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !1179, line: 268, baseType: !2765)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2857, file: !1179, line: 280, baseType: !1391, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !2822, file: !1202, line: 187, baseType: !2849, size: 64, offset: 768)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !2822, file: !1202, line: 188, baseType: !2877, size: 64, offset: 832)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !2765}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !2822, file: !1202, line: 191, baseType: !2881, size: 64, offset: 896)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !2765, !2884}
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !2822, file: !1202, line: 195, baseType: !7, size: 32, offset: 960)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !2822, file: !1202, line: 196, baseType: !2887, size: 64, offset: 1024)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!7, !2765}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !2822, file: !1202, line: 197, baseType: !2891, size: 64, offset: 1088)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{null, !2894}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !1179, line: 358, size: 320, elements: !2896)
!2896 = !{!2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2895, file: !1179, line: 359, baseType: !1402, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2895, file: !1179, line: 361, baseType: !2894, size: 64, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2895, file: !1179, line: 363, baseType: !2894, size: 64, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !2895, file: !1179, line: 366, baseType: !2894, size: 64, offset: 192)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2895, file: !1179, line: 368, baseType: !1387, size: 32, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2895, file: !1179, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !2895, file: !1179, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2895, file: !1179, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2895, file: !1179, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !2895, file: !1179, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2895, file: !1179, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2895, file: !1179, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2766, file: !1179, line: 216, baseType: !2910, size: 320, offset: 1152)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !1179, line: 88, size: 320, elements: !2911)
!2911 = !{!2912, !2915, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !2910, file: !1179, line: 90, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !1179, line: 51, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !2910, file: !1179, line: 92, baseType: !2916, size: 192, offset: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !1179, line: 57, size: 192, elements: !2917)
!2917 = !{!2918, !2919, !2920, !2921, !2922}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2916, file: !1179, line: 60, baseType: !1458, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2916, file: !1179, line: 63, baseType: !1387, size: 32, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2916, file: !1179, line: 65, baseType: !1387, size: 32, offset: 96)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2916, file: !1179, line: 67, baseType: !1387, size: 32, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2916, file: !1179, line: 69, baseType: !1387, size: 32, offset: 160)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2910, file: !1179, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2910, file: !1179, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2910, file: !1179, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !2910, file: !1179, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2910, file: !1179, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !2910, file: !1179, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !2910, file: !1179, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !2910, file: !1179, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !2766, file: !1179, line: 217, baseType: !2932, size: 320, offset: 1472)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !1179, line: 126, size: 320, elements: !2933)
!2933 = !{!2934, !2935, !2936, !2937, !2938, !2939, !2940}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2932, file: !1179, line: 128, baseType: !1458, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2932, file: !1179, line: 130, baseType: !1458, size: 64, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2932, file: !1179, line: 134, baseType: !2765, size: 64, offset: 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2932, file: !1179, line: 137, baseType: !1387, size: 32, offset: 192)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2932, file: !1179, line: 138, baseType: !1387, size: 32, offset: 224)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2932, file: !1179, line: 141, baseType: !1387, size: 32, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2932, file: !1179, line: 144, baseType: !1386, size: 8, offset: 288)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2766, file: !1179, line: 218, baseType: !2942, size: 32, offset: 1792)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !1179, line: 150, size: 32, elements: !2943)
!2943 = !{!2944}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2942, file: !1179, line: 151, baseType: !7, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !2766, file: !1179, line: 219, baseType: !2946, size: 192, offset: 1856)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !1179, line: 171, size: 192, elements: !2947)
!2947 = !{!2948, !2969, !2970}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2946, file: !1179, line: 173, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !1179, line: 169, baseType: !2951)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !1179, line: 169, size: 128, elements: !2952)
!2952 = !{!2953}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2951, file: !1179, line: 169, baseType: !2954, size: 128)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !1179, line: 168, baseType: !2955)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !1179, line: 168, size: 128, elements: !2956)
!2956 = !{!2957, !2958, !2959}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2955, file: !1179, line: 168, baseType: !7, size: 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2955, file: !1179, line: 168, baseType: !7, size: 32, offset: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2955, file: !1179, line: 168, baseType: !2960, size: 64, offset: 64)
!2960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2961, size: 64, elements: !1501)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !1179, line: 167, baseType: !2962)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !1179, line: 156, size: 192, elements: !2964)
!2964 = !{!2965, !2966, !2967, !2968}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2963, file: !1179, line: 159, baseType: !1402, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2963, file: !1179, line: 161, baseType: !1402, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2963, file: !1179, line: 163, baseType: !1386, size: 8, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2963, file: !1179, line: 165, baseType: !1386, size: 8, offset: 136)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2946, file: !1179, line: 174, baseType: !2276, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2946, file: !1179, line: 175, baseType: !2276, size: 64, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !2766, file: !1179, line: 220, baseType: !2972, size: 256, offset: 2048)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !1179, line: 74, size: 256, elements: !2973)
!2973 = !{!2974, !2975, !2976, !2977, !2978, !2979}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2972, file: !1179, line: 76, baseType: !1458, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2972, file: !1179, line: 77, baseType: !1458, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2972, file: !1179, line: 78, baseType: !1402, size: 64, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2972, file: !1179, line: 79, baseType: !1386, size: 8, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2972, file: !1179, line: 80, baseType: !1386, size: 8, offset: 200)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2972, file: !1179, line: 82, baseType: !1386, size: 8, offset: 208)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2766, file: !1179, line: 223, baseType: !1938, size: 64, offset: 2304)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2766, file: !1179, line: 225, baseType: !1387, size: 32, offset: 2368)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2766, file: !1179, line: 227, baseType: !1387, size: 32, offset: 2400)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2766, file: !1179, line: 231, baseType: !1387, size: 32, offset: 2432)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2766, file: !1179, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !2766, file: !1179, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !2766, file: !1179, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !2766, file: !1179, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !2766, file: !1179, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2766, file: !1179, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !2766, file: !1179, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2766, file: !1179, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !2766, file: !1179, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !2766, file: !1179, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2994 = !{!2995, !3007, !3008, !3010}
!2995 = !DIGlobalVariableExpression(var: !2996, expr: !DIExpression())
!2996 = distinct !DIGlobalVariable(name: "value_prof_hooks", scope: !2, file: !3, line: 49, type: !2997, isLocal: true, isDefinition: true)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "value_prof_hooks", file: !3, line: 1498, size: 128, elements: !2999)
!2999 = !{!3000, !3006}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "find_values_to_profile", scope: !2998, file: !3, line: 1500, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{null, !3004}
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "histogram_values", file: !378, line: 71, baseType: !2752)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "value_profile_transformations", scope: !2998, file: !3, line: 1504, baseType: !2830, size: 64, offset: 64)
!3007 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!3008 = !DIGlobalVariableExpression(var: !3009, expr: !DIExpression())
!3009 = distinct !DIGlobalVariable(name: "gimple_value_prof_hooks", scope: !2, file: !3, line: 1696, type: !2998, isLocal: true, isDefinition: true)
!3010 = !DIGlobalVariableExpression(var: !3011, expr: !DIExpression())
!3011 = distinct !DIGlobalVariable(name: "pid_map", scope: !2, file: !3, line: 1049, type: !2764, isLocal: true, isDefinition: true)
!3012 = !{i32 2, !"Dwarf Version", i32 4}
!3013 = !{i32 2, !"Debug Info Version", i32 3}
!3014 = !{i32 1, !"wchar_size", i32 4}
!3015 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!3016 = distinct !DISubprogram(name: "vprintf", scope: !3017, file: !3017, line: 39, type: !3018, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3028)
!3017 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!1387, !3020, !3021}
!3020 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1392)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !3023)
!3023 = !{!3024, !3025, !3026, !3027}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3022, file: !3, baseType: !7, size: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3022, file: !3, baseType: !7, size: 32, offset: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3022, file: !3, baseType: !1391, size: 64, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3022, file: !3, baseType: !1391, size: 64, offset: 128)
!3028 = !{!3029, !3030}
!3029 = !DILocalVariable(name: "__fmt", arg: 1, scope: !3016, file: !3017, line: 39, type: !3020)
!3030 = !DILocalVariable(name: "__arg", arg: 2, scope: !3016, file: !3017, line: 39, type: !3021)
!3031 = !DILocation(line: 0, scope: !3016)
!3032 = !DILocation(line: 41, column: 20, scope: !3016)
!3033 = !DILocation(line: 41, column: 10, scope: !3016)
!3034 = !DILocation(line: 41, column: 3, scope: !3016)
!3035 = distinct !DISubprogram(name: "getchar", scope: !3017, file: !3017, line: 47, type: !3036, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!1387}
!3038 = !{}
!3039 = !DILocation(line: 49, column: 16, scope: !3035)
!3040 = !DILocation(line: 49, column: 10, scope: !3035)
!3041 = !DILocation(line: 49, column: 3, scope: !3035)
!3042 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !3017, file: !3017, line: 56, type: !3043, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3095)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!1387, !3045}
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3047, line: 7, baseType: !3048)
!3047 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3049, line: 49, size: 1728, elements: !3050)
!3049 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!3050 = !{!3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3066, !3068, !3069, !3070, !3073, !3074, !3075, !3076, !3079, !3081, !3084, !3087, !3088, !3089, !3090, !3091}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3048, file: !3049, line: 51, baseType: !1387, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3048, file: !3049, line: 54, baseType: !1389, size: 64, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3048, file: !3049, line: 55, baseType: !1389, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3048, file: !3049, line: 56, baseType: !1389, size: 64, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3048, file: !3049, line: 57, baseType: !1389, size: 64, offset: 256)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3048, file: !3049, line: 58, baseType: !1389, size: 64, offset: 320)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3048, file: !3049, line: 59, baseType: !1389, size: 64, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3048, file: !3049, line: 60, baseType: !1389, size: 64, offset: 448)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3048, file: !3049, line: 61, baseType: !1389, size: 64, offset: 512)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3048, file: !3049, line: 64, baseType: !1389, size: 64, offset: 576)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3048, file: !3049, line: 65, baseType: !1389, size: 64, offset: 640)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3048, file: !3049, line: 66, baseType: !1389, size: 64, offset: 704)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3048, file: !3049, line: 68, baseType: !3064, size: 64, offset: 768)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3049, line: 36, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3048, file: !3049, line: 70, baseType: !3067, size: 64, offset: 832)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3048, file: !3049, line: 72, baseType: !1387, size: 32, offset: 896)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3048, file: !3049, line: 73, baseType: !1387, size: 32, offset: 928)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3048, file: !3049, line: 74, baseType: !3071, size: 64, offset: 960)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !3072, line: 152, baseType: !1458)
!3072 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3048, file: !3049, line: 77, baseType: !2788, size: 16, offset: 1024)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3048, file: !3049, line: 78, baseType: !2556, size: 8, offset: 1040)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3048, file: !3049, line: 79, baseType: !1500, size: 8, offset: 1048)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3048, file: !3049, line: 81, baseType: !3077, size: 64, offset: 1088)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3049, line: 43, baseType: null)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3048, file: !3049, line: 89, baseType: !3080, size: 64, offset: 1152)
!3080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !3072, line: 153, baseType: !1458)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3048, file: !3049, line: 91, baseType: !3082, size: 64, offset: 1216)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3049, line: 37, flags: DIFlagFwdDecl)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3048, file: !3049, line: 92, baseType: !3085, size: 64, offset: 1280)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3049, line: 38, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3048, file: !3049, line: 93, baseType: !3067, size: 64, offset: 1344)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3048, file: !3049, line: 94, baseType: !1391, size: 64, offset: 1408)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3048, file: !3049, line: 95, baseType: !1872, size: 64, offset: 1472)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3048, file: !3049, line: 96, baseType: !1387, size: 32, offset: 1536)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3048, file: !3049, line: 98, baseType: !3092, size: 160, offset: 1568)
!3092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 160, elements: !3093)
!3093 = !{!3094}
!3094 = !DISubrange(count: 20)
!3095 = !{!3096}
!3096 = !DILocalVariable(name: "__fp", arg: 1, scope: !3042, file: !3017, line: 56, type: !3045)
!3097 = !DILocation(line: 0, scope: !3042)
!3098 = !DILocation(line: 58, column: 10, scope: !3042)
!3099 = !DILocation(line: 58, column: 3, scope: !3042)
!3100 = distinct !DISubprogram(name: "getc_unlocked", scope: !3017, file: !3017, line: 66, type: !3043, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3101)
!3101 = !{!3102}
!3102 = !DILocalVariable(name: "__fp", arg: 1, scope: !3100, file: !3017, line: 66, type: !3045)
!3103 = !DILocation(line: 0, scope: !3100)
!3104 = !DILocation(line: 68, column: 10, scope: !3100)
!3105 = !DILocation(line: 68, column: 3, scope: !3100)
!3106 = distinct !DISubprogram(name: "getchar_unlocked", scope: !3017, file: !3017, line: 73, type: !3036, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3038)
!3107 = !DILocation(line: 75, column: 10, scope: !3106)
!3108 = !DILocation(line: 75, column: 3, scope: !3106)
!3109 = distinct !DISubprogram(name: "putchar", scope: !3017, file: !3017, line: 82, type: !3110, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3112)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!1387, !1387}
!3112 = !{!3113}
!3113 = !DILocalVariable(name: "__c", arg: 1, scope: !3109, file: !3017, line: 82, type: !1387)
!3114 = !DILocation(line: 0, scope: !3109)
!3115 = !DILocation(line: 84, column: 21, scope: !3109)
!3116 = !DILocation(line: 84, column: 10, scope: !3109)
!3117 = !DILocation(line: 84, column: 3, scope: !3109)
!3118 = distinct !DISubprogram(name: "fputc_unlocked", scope: !3017, file: !3017, line: 91, type: !3119, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3121)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!1387, !1387, !3045}
!3121 = !{!3122, !3123}
!3122 = !DILocalVariable(name: "__c", arg: 1, scope: !3118, file: !3017, line: 91, type: !1387)
!3123 = !DILocalVariable(name: "__stream", arg: 2, scope: !3118, file: !3017, line: 91, type: !3045)
!3124 = !DILocation(line: 0, scope: !3118)
!3125 = !DILocation(line: 93, column: 10, scope: !3118)
!3126 = !DILocation(line: 93, column: 3, scope: !3118)
!3127 = distinct !DISubprogram(name: "putc_unlocked", scope: !3017, file: !3017, line: 101, type: !3119, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3128)
!3128 = !{!3129, !3130}
!3129 = !DILocalVariable(name: "__c", arg: 1, scope: !3127, file: !3017, line: 101, type: !1387)
!3130 = !DILocalVariable(name: "__stream", arg: 2, scope: !3127, file: !3017, line: 101, type: !3045)
!3131 = !DILocation(line: 0, scope: !3127)
!3132 = !DILocation(line: 103, column: 10, scope: !3127)
!3133 = !DILocation(line: 103, column: 3, scope: !3127)
!3134 = distinct !DISubprogram(name: "putchar_unlocked", scope: !3017, file: !3017, line: 108, type: !3110, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3135)
!3135 = !{!3136}
!3136 = !DILocalVariable(name: "__c", arg: 1, scope: !3134, file: !3017, line: 108, type: !1387)
!3137 = !DILocation(line: 0, scope: !3134)
!3138 = !DILocation(line: 110, column: 10, scope: !3134)
!3139 = !DILocation(line: 110, column: 3, scope: !3134)
!3140 = distinct !DISubprogram(name: "getline", scope: !3017, file: !3017, line: 118, type: !3141, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3145)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!3143, !1388, !3144, !3045}
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !3072, line: 193, baseType: !1458)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!3145 = !{!3146, !3147, !3148}
!3146 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !3140, file: !3017, line: 118, type: !1388)
!3147 = !DILocalVariable(name: "__n", arg: 2, scope: !3140, file: !3017, line: 118, type: !3144)
!3148 = !DILocalVariable(name: "__stream", arg: 3, scope: !3140, file: !3017, line: 118, type: !3045)
!3149 = !DILocation(line: 0, scope: !3140)
!3150 = !DILocation(line: 120, column: 10, scope: !3140)
!3151 = !DILocation(line: 120, column: 3, scope: !3140)
!3152 = distinct !DISubprogram(name: "feof_unlocked", scope: !3017, file: !3017, line: 128, type: !3043, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3153)
!3153 = !{!3154}
!3154 = !DILocalVariable(name: "__stream", arg: 1, scope: !3152, file: !3017, line: 128, type: !3045)
!3155 = !DILocation(line: 0, scope: !3152)
!3156 = !DILocation(line: 130, column: 10, scope: !3152)
!3157 = !DILocation(line: 130, column: 3, scope: !3152)
!3158 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3017, file: !3017, line: 135, type: !3043, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3159)
!3159 = !{!3160}
!3160 = !DILocalVariable(name: "__stream", arg: 1, scope: !3158, file: !3017, line: 135, type: !3045)
!3161 = !DILocation(line: 0, scope: !3158)
!3162 = !DILocation(line: 137, column: 10, scope: !3158)
!3163 = !DILocation(line: 137, column: 3, scope: !3158)
!3164 = distinct !DISubprogram(name: "tolower", scope: !3165, file: !3165, line: 207, type: !3110, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3166)
!3165 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!3166 = !{!3167}
!3167 = !DILocalVariable(name: "__c", arg: 1, scope: !3164, file: !3165, line: 207, type: !1387)
!3168 = !DILocation(line: 0, scope: !3164)
!3169 = !DILocation(line: 209, column: 22, scope: !3164)
!3170 = !DILocation(line: 209, column: 39, scope: !3164)
!3171 = !DILocation(line: 209, column: 38, scope: !3164)
!3172 = !DILocation(line: 209, column: 37, scope: !3164)
!3173 = !DILocation(line: 209, column: 10, scope: !3164)
!3174 = !DILocation(line: 209, column: 3, scope: !3164)
!3175 = distinct !DISubprogram(name: "toupper", scope: !3165, file: !3165, line: 213, type: !3110, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3176)
!3176 = !{!3177}
!3177 = !DILocalVariable(name: "__c", arg: 1, scope: !3175, file: !3165, line: 213, type: !1387)
!3178 = !DILocation(line: 0, scope: !3175)
!3179 = !DILocation(line: 215, column: 22, scope: !3175)
!3180 = !DILocation(line: 215, column: 39, scope: !3175)
!3181 = !DILocation(line: 215, column: 38, scope: !3175)
!3182 = !DILocation(line: 215, column: 37, scope: !3175)
!3183 = !DILocation(line: 215, column: 10, scope: !3175)
!3184 = !DILocation(line: 215, column: 3, scope: !3175)
!3185 = distinct !DISubprogram(name: "atoi", scope: !3186, file: !3186, line: 361, type: !3187, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3189)
!3186 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!1387, !1392}
!3189 = !{!3190}
!3190 = !DILocalVariable(name: "__nptr", arg: 1, scope: !3185, file: !3186, line: 361, type: !1392)
!3191 = !DILocation(line: 0, scope: !3185)
!3192 = !DILocation(line: 363, column: 16, scope: !3185)
!3193 = !DILocation(line: 363, column: 10, scope: !3185)
!3194 = !DILocation(line: 363, column: 3, scope: !3185)
!3195 = distinct !DISubprogram(name: "atol", scope: !3186, file: !3186, line: 366, type: !3196, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3198)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!1458, !1392}
!3198 = !{!3199}
!3199 = !DILocalVariable(name: "__nptr", arg: 1, scope: !3195, file: !3186, line: 366, type: !1392)
!3200 = !DILocation(line: 0, scope: !3195)
!3201 = !DILocation(line: 368, column: 10, scope: !3195)
!3202 = !DILocation(line: 368, column: 3, scope: !3195)
!3203 = distinct !DISubprogram(name: "atoll", scope: !3186, file: !3186, line: 373, type: !3204, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3207)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!3206, !1392}
!3206 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!3207 = !{!3208}
!3208 = !DILocalVariable(name: "__nptr", arg: 1, scope: !3203, file: !3186, line: 373, type: !1392)
!3209 = !DILocation(line: 0, scope: !3203)
!3210 = !DILocation(line: 375, column: 10, scope: !3203)
!3211 = !DILocation(line: 375, column: 3, scope: !3203)
!3212 = distinct !DISubprogram(name: "bsearch", scope: !3213, file: !3213, line: 20, type: !3214, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3217)
!3213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!1391, !2033, !2033, !1872, !1872, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !3186, line: 808, baseType: !2205)
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227}
!3218 = !DILocalVariable(name: "__key", arg: 1, scope: !3212, file: !3213, line: 20, type: !2033)
!3219 = !DILocalVariable(name: "__base", arg: 2, scope: !3212, file: !3213, line: 20, type: !2033)
!3220 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !3212, file: !3213, line: 20, type: !1872)
!3221 = !DILocalVariable(name: "__size", arg: 4, scope: !3212, file: !3213, line: 20, type: !1872)
!3222 = !DILocalVariable(name: "__compar", arg: 5, scope: !3212, file: !3213, line: 21, type: !3216)
!3223 = !DILocalVariable(name: "__l", scope: !3212, file: !3213, line: 23, type: !1872)
!3224 = !DILocalVariable(name: "__u", scope: !3212, file: !3213, line: 23, type: !1872)
!3225 = !DILocalVariable(name: "__idx", scope: !3212, file: !3213, line: 23, type: !1872)
!3226 = !DILocalVariable(name: "__p", scope: !3212, file: !3213, line: 24, type: !2033)
!3227 = !DILocalVariable(name: "__comparison", scope: !3212, file: !3213, line: 25, type: !1387)
!3228 = !DILocation(line: 0, scope: !3212)
!3229 = !DILocation(line: 29, column: 3, scope: !3212)
!3230 = !DILocation(line: 27, column: 7, scope: !3212)
!3231 = !DILocation(line: 29, column: 14, scope: !3212)
!3232 = !DILocation(line: 31, column: 20, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3212, file: !3213, line: 30, column: 5)
!3234 = !DILocation(line: 31, column: 27, scope: !3233)
!3235 = !DILocation(line: 32, column: 56, scope: !3233)
!3236 = !DILocation(line: 32, column: 47, scope: !3233)
!3237 = !DILocation(line: 33, column: 22, scope: !3233)
!3238 = !DILocation(line: 34, column: 24, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3233, file: !3213, line: 34, column: 11)
!3240 = !DILocation(line: 34, column: 11, scope: !3233)
!3241 = !DILocation(line: 36, column: 29, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3239, file: !3213, line: 36, column: 16)
!3243 = !DILocation(line: 36, column: 16, scope: !3239)
!3244 = !DILocation(line: 37, column: 14, scope: !3242)
!3245 = distinct !{!3245, !3229, !3246}
!3246 = !DILocation(line: 40, column: 5, scope: !3212)
!3247 = !DILocation(line: 43, column: 1, scope: !3212)
!3248 = distinct !DISubprogram(name: "atof", scope: !3249, file: !3249, line: 25, type: !3250, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3253)
!3249 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!3252, !1392}
!3252 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!3253 = !{!3254}
!3254 = !DILocalVariable(name: "__nptr", arg: 1, scope: !3248, file: !3249, line: 25, type: !1392)
!3255 = !DILocation(line: 0, scope: !3248)
!3256 = !DILocation(line: 27, column: 10, scope: !3248)
!3257 = !DILocation(line: 27, column: 3, scope: !3248)
!3258 = distinct !DISubprogram(name: "strtoimax", scope: !3259, file: !3259, line: 324, type: !3260, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3266)
!3259 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!3262, !3020, !3265, !1387}
!3262 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !3263, line: 101, baseType: !3264)
!3263 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !3072, line: 72, baseType: !1458)
!3265 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1388)
!3266 = !{!3267, !3268, !3269}
!3267 = !DILocalVariable(name: "nptr", arg: 1, scope: !3258, file: !3259, line: 324, type: !3020)
!3268 = !DILocalVariable(name: "endptr", arg: 2, scope: !3258, file: !3259, line: 324, type: !3265)
!3269 = !DILocalVariable(name: "base", arg: 3, scope: !3258, file: !3259, line: 324, type: !1387)
!3270 = !DILocation(line: 0, scope: !3258)
!3271 = !DILocation(line: 327, column: 10, scope: !3258)
!3272 = !DILocation(line: 327, column: 3, scope: !3258)
!3273 = distinct !DISubprogram(name: "strtoumax", scope: !3259, file: !3259, line: 336, type: !3274, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3278)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!3276, !3020, !3265, !1387}
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !3263, line: 102, baseType: !3277)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !3072, line: 73, baseType: !1456)
!3278 = !{!3279, !3280, !3281}
!3279 = !DILocalVariable(name: "nptr", arg: 1, scope: !3273, file: !3259, line: 336, type: !3020)
!3280 = !DILocalVariable(name: "endptr", arg: 2, scope: !3273, file: !3259, line: 336, type: !3265)
!3281 = !DILocalVariable(name: "base", arg: 3, scope: !3273, file: !3259, line: 336, type: !1387)
!3282 = !DILocation(line: 0, scope: !3273)
!3283 = !DILocation(line: 339, column: 10, scope: !3273)
!3284 = !DILocation(line: 339, column: 3, scope: !3273)
!3285 = distinct !DISubprogram(name: "wcstoimax", scope: !3259, file: !3259, line: 348, type: !3286, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3295)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!3262, !3288, !3292, !1387}
!3288 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3289)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3291)
!3291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !3259, line: 34, baseType: !1387)
!3292 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3293)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3295 = !{!3296, !3297, !3298}
!3296 = !DILocalVariable(name: "nptr", arg: 1, scope: !3285, file: !3259, line: 348, type: !3288)
!3297 = !DILocalVariable(name: "endptr", arg: 2, scope: !3285, file: !3259, line: 348, type: !3292)
!3298 = !DILocalVariable(name: "base", arg: 3, scope: !3285, file: !3259, line: 348, type: !1387)
!3299 = !DILocation(line: 0, scope: !3285)
!3300 = !DILocation(line: 351, column: 10, scope: !3285)
!3301 = !DILocation(line: 351, column: 3, scope: !3285)
!3302 = distinct !DISubprogram(name: "wcstoumax", scope: !3259, file: !3259, line: 362, type: !3303, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!3276, !3288, !3292, !1387}
!3305 = !{!3306, !3307, !3308}
!3306 = !DILocalVariable(name: "nptr", arg: 1, scope: !3302, file: !3259, line: 362, type: !3288)
!3307 = !DILocalVariable(name: "endptr", arg: 2, scope: !3302, file: !3259, line: 362, type: !3292)
!3308 = !DILocalVariable(name: "base", arg: 3, scope: !3302, file: !3259, line: 362, type: !1387)
!3309 = !DILocation(line: 0, scope: !3302)
!3310 = !DILocation(line: 365, column: 10, scope: !3302)
!3311 = !DILocation(line: 365, column: 3, scope: !3302)
!3312 = distinct !DISubprogram(name: "stat", scope: !3313, file: !3313, line: 453, type: !3314, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3351)
!3313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!1387, !1392, !3316}
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3318, line: 46, size: 1152, elements: !3319)
!3318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!3319 = !{!3320, !3322, !3324, !3326, !3328, !3330, !3332, !3333, !3334, !3335, !3337, !3339, !3347, !3348, !3349}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3317, file: !3318, line: 48, baseType: !3321, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !3072, line: 145, baseType: !1456)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3317, file: !3318, line: 53, baseType: !3323, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !3072, line: 148, baseType: !1456)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3317, file: !3318, line: 61, baseType: !3325, size: 64, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !3072, line: 151, baseType: !1456)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3317, file: !3318, line: 62, baseType: !3327, size: 32, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !3072, line: 150, baseType: !7)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3317, file: !3318, line: 64, baseType: !3329, size: 32, offset: 224)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !3072, line: 146, baseType: !7)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3317, file: !3318, line: 65, baseType: !3331, size: 32, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !3072, line: 147, baseType: !7)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3317, file: !3318, line: 67, baseType: !1387, size: 32, offset: 288)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3317, file: !3318, line: 69, baseType: !3321, size: 64, offset: 320)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3317, file: !3318, line: 74, baseType: !3071, size: 64, offset: 384)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3317, file: !3318, line: 78, baseType: !3336, size: 64, offset: 448)
!3336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !3072, line: 174, baseType: !1458)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3317, file: !3318, line: 80, baseType: !3338, size: 64, offset: 512)
!3338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !3072, line: 179, baseType: !1458)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3317, file: !3318, line: 91, baseType: !3340, size: 128, offset: 576)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3341, line: 10, size: 128, elements: !3342)
!3341 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!3342 = !{!3343, !3345}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3340, file: !3341, line: 12, baseType: !3344, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !3072, line: 160, baseType: !1458)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3340, file: !3341, line: 16, baseType: !3346, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !3072, line: 196, baseType: !1458)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3317, file: !3318, line: 92, baseType: !3340, size: 128, offset: 704)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3317, file: !3318, line: 93, baseType: !3340, size: 128, offset: 832)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3317, file: !3318, line: 106, baseType: !3350, size: 192, offset: 960)
!3350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3346, size: 192, elements: !1476)
!3351 = !{!3352, !3353}
!3352 = !DILocalVariable(name: "__path", arg: 1, scope: !3312, file: !3313, line: 453, type: !1392)
!3353 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3312, file: !3313, line: 453, type: !3316)
!3354 = !DILocation(line: 0, scope: !3312)
!3355 = !DILocation(line: 455, column: 10, scope: !3312)
!3356 = !DILocation(line: 455, column: 3, scope: !3312)
!3357 = distinct !DISubprogram(name: "lstat", scope: !3313, file: !3313, line: 460, type: !3314, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3358)
!3358 = !{!3359, !3360}
!3359 = !DILocalVariable(name: "__path", arg: 1, scope: !3357, file: !3313, line: 460, type: !1392)
!3360 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3357, file: !3313, line: 460, type: !3316)
!3361 = !DILocation(line: 0, scope: !3357)
!3362 = !DILocation(line: 462, column: 10, scope: !3357)
!3363 = !DILocation(line: 462, column: 3, scope: !3357)
!3364 = distinct !DISubprogram(name: "fstat", scope: !3313, file: !3313, line: 467, type: !3365, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!1387, !1387, !3316}
!3367 = !{!3368, !3369}
!3368 = !DILocalVariable(name: "__fd", arg: 1, scope: !3364, file: !3313, line: 467, type: !1387)
!3369 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3364, file: !3313, line: 467, type: !3316)
!3370 = !DILocation(line: 0, scope: !3364)
!3371 = !DILocation(line: 469, column: 10, scope: !3364)
!3372 = !DILocation(line: 469, column: 3, scope: !3364)
!3373 = distinct !DISubprogram(name: "fstatat", scope: !3313, file: !3313, line: 474, type: !3374, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3376)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!1387, !1387, !1392, !3316, !1387}
!3376 = !{!3377, !3378, !3379, !3380}
!3377 = !DILocalVariable(name: "__fd", arg: 1, scope: !3373, file: !3313, line: 474, type: !1387)
!3378 = !DILocalVariable(name: "__filename", arg: 2, scope: !3373, file: !3313, line: 474, type: !1392)
!3379 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !3373, file: !3313, line: 474, type: !3316)
!3380 = !DILocalVariable(name: "__flag", arg: 4, scope: !3373, file: !3313, line: 474, type: !1387)
!3381 = !DILocation(line: 0, scope: !3373)
!3382 = !DILocation(line: 477, column: 10, scope: !3373)
!3383 = !DILocation(line: 477, column: 3, scope: !3373)
!3384 = distinct !DISubprogram(name: "mknod", scope: !3313, file: !3313, line: 483, type: !3385, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!1387, !1392, !3327, !3321}
!3387 = !{!3388, !3389, !3390}
!3388 = !DILocalVariable(name: "__path", arg: 1, scope: !3384, file: !3313, line: 483, type: !1392)
!3389 = !DILocalVariable(name: "__mode", arg: 2, scope: !3384, file: !3313, line: 483, type: !3327)
!3390 = !DILocalVariable(name: "__dev", arg: 3, scope: !3384, file: !3313, line: 483, type: !3321)
!3391 = !DILocation(line: 0, scope: !3384)
!3392 = !DILocation(line: 485, column: 10, scope: !3384)
!3393 = !DILocation(line: 485, column: 3, scope: !3384)
!3394 = distinct !DISubprogram(name: "mknodat", scope: !3313, file: !3313, line: 491, type: !3395, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!1387, !1387, !1392, !3327, !3321}
!3397 = !{!3398, !3399, !3400, !3401}
!3398 = !DILocalVariable(name: "__fd", arg: 1, scope: !3394, file: !3313, line: 491, type: !1387)
!3399 = !DILocalVariable(name: "__path", arg: 2, scope: !3394, file: !3313, line: 491, type: !1392)
!3400 = !DILocalVariable(name: "__mode", arg: 3, scope: !3394, file: !3313, line: 491, type: !3327)
!3401 = !DILocalVariable(name: "__dev", arg: 4, scope: !3394, file: !3313, line: 491, type: !3321)
!3402 = !DILocation(line: 0, scope: !3394)
!3403 = !DILocation(line: 494, column: 10, scope: !3394)
!3404 = !DILocation(line: 494, column: 3, scope: !3394)
!3405 = distinct !DISubprogram(name: "stat64", scope: !3313, file: !3313, line: 502, type: !3406, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3428)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!1387, !1392, !3408}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !3318, line: 119, size: 1152, elements: !3410)
!3410 = !{!3411, !3412, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3424, !3425, !3426, !3427}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3409, file: !3318, line: 121, baseType: !3321, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3409, file: !3318, line: 123, baseType: !3413, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !3072, line: 149, baseType: !1456)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3409, file: !3318, line: 124, baseType: !3325, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3409, file: !3318, line: 125, baseType: !3327, size: 32, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3409, file: !3318, line: 132, baseType: !3329, size: 32, offset: 224)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3409, file: !3318, line: 133, baseType: !3331, size: 32, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3409, file: !3318, line: 135, baseType: !1387, size: 32, offset: 288)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3409, file: !3318, line: 136, baseType: !3321, size: 64, offset: 320)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3409, file: !3318, line: 137, baseType: !3071, size: 64, offset: 384)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3409, file: !3318, line: 143, baseType: !3336, size: 64, offset: 448)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3409, file: !3318, line: 144, baseType: !3423, size: 64, offset: 512)
!3423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !3072, line: 180, baseType: !1458)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3409, file: !3318, line: 152, baseType: !3340, size: 128, offset: 576)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3409, file: !3318, line: 153, baseType: !3340, size: 128, offset: 704)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3409, file: !3318, line: 154, baseType: !3340, size: 128, offset: 832)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3409, file: !3318, line: 164, baseType: !3350, size: 192, offset: 960)
!3428 = !{!3429, !3430}
!3429 = !DILocalVariable(name: "__path", arg: 1, scope: !3405, file: !3313, line: 502, type: !1392)
!3430 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3405, file: !3313, line: 502, type: !3408)
!3431 = !DILocation(line: 0, scope: !3405)
!3432 = !DILocation(line: 504, column: 10, scope: !3405)
!3433 = !DILocation(line: 504, column: 3, scope: !3405)
!3434 = distinct !DISubprogram(name: "lstat64", scope: !3313, file: !3313, line: 509, type: !3406, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3435)
!3435 = !{!3436, !3437}
!3436 = !DILocalVariable(name: "__path", arg: 1, scope: !3434, file: !3313, line: 509, type: !1392)
!3437 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3434, file: !3313, line: 509, type: !3408)
!3438 = !DILocation(line: 0, scope: !3434)
!3439 = !DILocation(line: 511, column: 10, scope: !3434)
!3440 = !DILocation(line: 511, column: 3, scope: !3434)
!3441 = distinct !DISubprogram(name: "fstat64", scope: !3313, file: !3313, line: 516, type: !3442, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!1387, !1387, !3408}
!3444 = !{!3445, !3446}
!3445 = !DILocalVariable(name: "__fd", arg: 1, scope: !3441, file: !3313, line: 516, type: !1387)
!3446 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3441, file: !3313, line: 516, type: !3408)
!3447 = !DILocation(line: 0, scope: !3441)
!3448 = !DILocation(line: 518, column: 10, scope: !3441)
!3449 = !DILocation(line: 518, column: 3, scope: !3441)
!3450 = distinct !DISubprogram(name: "fstatat64", scope: !3313, file: !3313, line: 523, type: !3451, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!1387, !1387, !1392, !3408, !1387}
!3453 = !{!3454, !3455, !3456, !3457}
!3454 = !DILocalVariable(name: "__fd", arg: 1, scope: !3450, file: !3313, line: 523, type: !1387)
!3455 = !DILocalVariable(name: "__filename", arg: 2, scope: !3450, file: !3313, line: 523, type: !1392)
!3456 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !3450, file: !3313, line: 523, type: !3408)
!3457 = !DILocalVariable(name: "__flag", arg: 4, scope: !3450, file: !3313, line: 523, type: !1387)
!3458 = !DILocation(line: 0, scope: !3450)
!3459 = !DILocation(line: 526, column: 10, scope: !3450)
!3460 = !DILocation(line: 526, column: 3, scope: !3450)
!3461 = distinct !DISubprogram(name: "gimple_histogram_value", scope: !3, file: !3, line: 146, type: !3462, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!1394, !2148, !1726}
!3464 = !{!3465, !3466}
!3465 = !DILocalVariable(name: "fun", arg: 1, scope: !3461, file: !3, line: 146, type: !2148)
!3466 = !DILocalVariable(name: "stmt", arg: 2, scope: !3461, file: !3, line: 146, type: !1726)
!3467 = !DILocation(line: 0, scope: !3461)
!3468 = !DILocation(line: 148, column: 8, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 148, column: 7)
!3470 = !DILocation(line: 148, column: 7, scope: !3461)
!3471 = !DILocation(line: 150, column: 73, scope: !3461)
!3472 = !DILocation(line: 151, column: 7, scope: !3461)
!3473 = !DILocation(line: 150, column: 28, scope: !3461)
!3474 = !DILocation(line: 150, column: 10, scope: !3461)
!3475 = !DILocation(line: 150, column: 3, scope: !3461)
!3476 = !DILocation(line: 152, column: 1, scope: !3461)
!3477 = distinct !DISubprogram(name: "gimple_add_histogram_value", scope: !3, file: !3, line: 157, type: !3478, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3480)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{null, !2148, !1726, !1394}
!3480 = !{!3481, !3482, !3483}
!3481 = !DILocalVariable(name: "fun", arg: 1, scope: !3477, file: !3, line: 157, type: !2148)
!3482 = !DILocalVariable(name: "stmt", arg: 2, scope: !3477, file: !3, line: 157, type: !1726)
!3483 = !DILocalVariable(name: "hist", arg: 3, scope: !3477, file: !3, line: 158, type: !1394)
!3484 = !DILocation(line: 0, scope: !3477)
!3485 = !DILocation(line: 160, column: 23, scope: !3477)
!3486 = !DILocation(line: 160, column: 16, scope: !3477)
!3487 = !DILocation(line: 160, column: 21, scope: !3477)
!3488 = !DILocation(line: 161, column: 3, scope: !3477)
!3489 = !DILocation(line: 162, column: 1, scope: !3477)
!3490 = distinct !DISubprogram(name: "set_histogram_value", scope: !3, file: !3, line: 123, type: !3478, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3491)
!3491 = !{!3492, !3493, !3494, !3495}
!3492 = !DILocalVariable(name: "fun", arg: 1, scope: !3490, file: !3, line: 123, type: !2148)
!3493 = !DILocalVariable(name: "stmt", arg: 2, scope: !3490, file: !3, line: 123, type: !1726)
!3494 = !DILocalVariable(name: "hist", arg: 3, scope: !3490, file: !3, line: 123, type: !1394)
!3495 = !DILocalVariable(name: "loc", scope: !3490, file: !3, line: 125, type: !2214)
!3496 = !DILocation(line: 0, scope: !3490)
!3497 = !DILocation(line: 126, column: 8, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 126, column: 7)
!3499 = !DILocation(line: 126, column: 13, scope: !3498)
!3500 = !DILocation(line: 0, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 128, column: 7)
!3502 = !DILocation(line: 128, column: 8, scope: !3501)
!3503 = !DILocation(line: 126, column: 17, scope: !3498)
!3504 = !DILocation(line: 126, column: 7, scope: !3490)
!3505 = !DILocation(line: 128, column: 7, scope: !3490)
!3506 = !DILocation(line: 129, column: 30, scope: !3501)
!3507 = !DILocation(line: 129, column: 28, scope: !3501)
!3508 = !DILocation(line: 129, column: 5, scope: !3501)
!3509 = !DILocation(line: 131, column: 35, scope: !3490)
!3510 = !DILocation(line: 131, column: 59, scope: !3490)
!3511 = !DILocation(line: 132, column: 35, scope: !3490)
!3512 = !DILocation(line: 133, column: 7, scope: !3490)
!3513 = !DILocation(line: 131, column: 9, scope: !3490)
!3514 = !DILocation(line: 134, column: 7, scope: !3490)
!3515 = !DILocation(line: 136, column: 11, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 136, column: 11)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 135, column: 5)
!3518 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 134, column: 7)
!3519 = !DILocation(line: 136, column: 11, scope: !3517)
!3520 = !DILocation(line: 137, column: 19, scope: !3516)
!3521 = !DILocation(line: 137, column: 2, scope: !3516)
!3522 = !DILocation(line: 140, column: 8, scope: !3490)
!3523 = !DILocation(line: 141, column: 1, scope: !3490)
!3524 = distinct !DISubprogram(name: "gimple_remove_histogram_value", scope: !3, file: !3, line: 168, type: !3478, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3525)
!3525 = !{!3526, !3527, !3528, !3529}
!3526 = !DILocalVariable(name: "fun", arg: 1, scope: !3524, file: !3, line: 168, type: !2148)
!3527 = !DILocalVariable(name: "stmt", arg: 2, scope: !3524, file: !3, line: 168, type: !1726)
!3528 = !DILocalVariable(name: "hist", arg: 3, scope: !3524, file: !3, line: 169, type: !1394)
!3529 = !DILocalVariable(name: "hist2", scope: !3524, file: !3, line: 171, type: !1394)
!3530 = !DILocation(line: 0, scope: !3524)
!3531 = !DILocation(line: 171, column: 27, scope: !3524)
!3532 = !DILocation(line: 172, column: 12, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 172, column: 7)
!3534 = !DILocation(line: 172, column: 7, scope: !3524)
!3535 = !DILocation(line: 178, column: 7, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 177, column: 5)
!3537 = !DILocation(line: 174, column: 52, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 173, column: 5)
!3539 = !DILocation(line: 174, column: 7, scope: !3538)
!3540 = !DILocation(line: 175, column: 5, scope: !3538)
!3541 = !DILocation(line: 178, column: 28, scope: !3536)
!3542 = !DILocation(line: 178, column: 33, scope: !3536)
!3543 = distinct !{!3543, !3535, !3544}
!3544 = !DILocation(line: 179, column: 24, scope: !3536)
!3545 = !DILocation(line: 180, column: 41, scope: !3536)
!3546 = !DILocation(line: 180, column: 26, scope: !3536)
!3547 = !DILocation(line: 182, column: 22, scope: !3524)
!3548 = !DILocation(line: 182, column: 3, scope: !3524)
!3549 = !DILocation(line: 186, column: 9, scope: !3524)
!3550 = !DILocation(line: 186, column: 3, scope: !3524)
!3551 = !DILocation(line: 187, column: 1, scope: !3524)
!3552 = distinct !DISubprogram(name: "gimple_histogram_value_of_type", scope: !3, file: !3, line: 193, type: !3553, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!1394, !2148, !1726, !377}
!3555 = !{!3556, !3557, !3558, !3559}
!3556 = !DILocalVariable(name: "fun", arg: 1, scope: !3552, file: !3, line: 193, type: !2148)
!3557 = !DILocalVariable(name: "stmt", arg: 2, scope: !3552, file: !3, line: 193, type: !1726)
!3558 = !DILocalVariable(name: "type", arg: 3, scope: !3552, file: !3, line: 194, type: !377)
!3559 = !DILocalVariable(name: "hist", scope: !3552, file: !3, line: 196, type: !1394)
!3560 = !DILocation(line: 0, scope: !3552)
!3561 = !DILocation(line: 197, column: 15, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 197, column: 3)
!3563 = !DILocation(line: 197, column: 8, scope: !3562)
!3564 = !DILocation(line: 0, scope: !3562)
!3565 = !DILocation(line: 197, column: 3, scope: !3562)
!3566 = !DILocation(line: 199, column: 15, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 199, column: 9)
!3568 = distinct !DILexicalBlock(scope: !3562, file: !3, line: 197, column: 3)
!3569 = !DILocation(line: 199, column: 20, scope: !3567)
!3570 = !DILocation(line: 199, column: 9, scope: !3568)
!3571 = !DILocation(line: 198, column: 28, scope: !3568)
!3572 = !DILocation(line: 197, column: 3, scope: !3568)
!3573 = distinct !{!3573, !3565, !3574}
!3574 = !DILocation(line: 200, column: 14, scope: !3562)
!3575 = !DILocation(line: 202, column: 1, scope: !3552)
!3576 = distinct !DISubprogram(name: "dump_histograms_for_stmt", scope: !3, file: !3, line: 310, type: !3577, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3579)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{null, !2148, !3045, !1726}
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DILocalVariable(name: "fun", arg: 1, scope: !3576, file: !3, line: 310, type: !2148)
!3581 = !DILocalVariable(name: "dump_file", arg: 2, scope: !3576, file: !3, line: 310, type: !3045)
!3582 = !DILocalVariable(name: "stmt", arg: 3, scope: !3576, file: !3, line: 310, type: !1726)
!3583 = !DILocalVariable(name: "hist", scope: !3576, file: !3, line: 312, type: !1394)
!3584 = !DILocation(line: 0, scope: !3576)
!3585 = !DILocation(line: 313, column: 15, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 313, column: 3)
!3587 = !DILocation(line: 313, column: 8, scope: !3586)
!3588 = !DILocation(line: 0, scope: !3586)
!3589 = !DILocation(line: 313, column: 3, scope: !3586)
!3590 = !DILocation(line: 314, column: 4, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 313, column: 3)
!3592 = !DILocation(line: 313, column: 77, scope: !3591)
!3593 = !DILocation(line: 313, column: 3, scope: !3591)
!3594 = distinct !{!3594, !3589, !3595}
!3595 = !DILocation(line: 314, column: 41, scope: !3586)
!3596 = !DILocation(line: 315, column: 1, scope: !3576)
!3597 = distinct !DISubprogram(name: "dump_histogram_value", scope: !3, file: !3, line: 207, type: !3598, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3600)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{null, !3045, !1394}
!3600 = !{!3601, !3602, !3603}
!3601 = !DILocalVariable(name: "dump_file", arg: 1, scope: !3597, file: !3, line: 207, type: !3045)
!3602 = !DILocalVariable(name: "hist", arg: 2, scope: !3597, file: !3, line: 207, type: !1394)
!3603 = !DILocalVariable(name: "i", scope: !3604, file: !3, line: 218, type: !7)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 217, column: 2)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 216, column: 11)
!3606 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 210, column: 5)
!3607 = !DILocation(line: 0, scope: !3597)
!3608 = !DILocation(line: 209, column: 17, scope: !3597)
!3609 = !DILocation(line: 209, column: 3, scope: !3597)
!3610 = !DILocation(line: 213, column: 27, scope: !3606)
!3611 = !DILocation(line: 215, column: 30, scope: !3606)
!3612 = !DILocation(line: 215, column: 10, scope: !3606)
!3613 = !DILocation(line: 215, column: 36, scope: !3606)
!3614 = !DILocation(line: 212, column: 7, scope: !3606)
!3615 = !DILocation(line: 216, column: 24, scope: !3605)
!3616 = !DILocation(line: 216, column: 11, scope: !3605)
!3617 = !DILocation(line: 216, column: 11, scope: !3606)
!3618 = !DILocation(line: 219, column: 5, scope: !3604)
!3619 = !DILocation(line: 0, scope: !3604)
!3620 = !DILocation(line: 220, column: 17, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 220, column: 12)
!3622 = !DILocation(line: 0, scope: !3621)
!3623 = !DILocation(line: 220, column: 46, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 220, column: 12)
!3625 = !DILocation(line: 220, column: 26, scope: !3624)
!3626 = !DILocation(line: 220, column: 12, scope: !3621)
!3627 = !DILocation(line: 222, column: 27, scope: !3624)
!3628 = !DILocation(line: 222, column: 37, scope: !3624)
!3629 = !DILocation(line: 223, column: 40, scope: !3624)
!3630 = !DILocation(line: 223, column: 27, scope: !3624)
!3631 = !DILocation(line: 221, column: 7, scope: !3624)
!3632 = !DILocation(line: 220, column: 54, scope: !3624)
!3633 = !DILocation(line: 220, column: 12, scope: !3624)
!3634 = distinct !{!3634, !3626, !3635}
!3635 = !DILocation(line: 223, column: 51, scope: !3621)
!3636 = !DILocation(line: 225, column: 38, scope: !3604)
!3637 = !DILocation(line: 225, column: 25, scope: !3604)
!3638 = !DILocation(line: 224, column: 5, scope: !3604)
!3639 = !DILocation(line: 226, column: 2, scope: !3604)
!3640 = !DILocation(line: 227, column: 7, scope: !3606)
!3641 = !DILocation(line: 228, column: 7, scope: !3606)
!3642 = !DILocation(line: 231, column: 7, scope: !3606)
!3643 = !DILocation(line: 232, column: 24, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 232, column: 11)
!3645 = !DILocation(line: 232, column: 11, scope: !3644)
!3646 = !DILocation(line: 232, column: 11, scope: !3606)
!3647 = !DILocation(line: 236, column: 25, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3644, file: !3, line: 233, column: 2)
!3649 = !DILocation(line: 237, column: 25, scope: !3648)
!3650 = !DILocation(line: 234, column: 5, scope: !3648)
!3651 = !DILocation(line: 238, column: 2, scope: !3648)
!3652 = !DILocation(line: 239, column: 7, scope: !3606)
!3653 = !DILocation(line: 240, column: 7, scope: !3606)
!3654 = !DILocation(line: 243, column: 7, scope: !3606)
!3655 = !DILocation(line: 244, column: 24, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 244, column: 11)
!3657 = !DILocation(line: 244, column: 11, scope: !3656)
!3658 = !DILocation(line: 244, column: 11, scope: !3606)
!3659 = !DILocation(line: 249, column: 25, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 245, column: 2)
!3661 = !DILocation(line: 250, column: 25, scope: !3660)
!3662 = !DILocation(line: 251, column: 25, scope: !3660)
!3663 = !DILocation(line: 246, column: 5, scope: !3660)
!3664 = !DILocation(line: 252, column: 2, scope: !3660)
!3665 = !DILocation(line: 253, column: 7, scope: !3606)
!3666 = !DILocation(line: 254, column: 7, scope: !3606)
!3667 = !DILocation(line: 257, column: 7, scope: !3606)
!3668 = !DILocation(line: 258, column: 24, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 258, column: 11)
!3670 = !DILocation(line: 258, column: 11, scope: !3669)
!3671 = !DILocation(line: 258, column: 11, scope: !3606)
!3672 = !DILocation(line: 262, column: 25, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 259, column: 2)
!3674 = !DILocation(line: 263, column: 25, scope: !3673)
!3675 = !DILocation(line: 260, column: 5, scope: !3673)
!3676 = !DILocation(line: 264, column: 2, scope: !3673)
!3677 = !DILocation(line: 265, column: 7, scope: !3606)
!3678 = !DILocation(line: 266, column: 7, scope: !3606)
!3679 = !DILocation(line: 269, column: 7, scope: !3606)
!3680 = !DILocation(line: 270, column: 24, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 270, column: 11)
!3682 = !DILocation(line: 270, column: 11, scope: !3681)
!3683 = !DILocation(line: 270, column: 11, scope: !3606)
!3684 = !DILocation(line: 273, column: 25, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 271, column: 2)
!3686 = !DILocation(line: 272, column: 5, scope: !3685)
!3687 = !DILocation(line: 274, column: 2, scope: !3685)
!3688 = !DILocation(line: 275, column: 7, scope: !3606)
!3689 = !DILocation(line: 276, column: 7, scope: !3606)
!3690 = !DILocation(line: 279, column: 7, scope: !3606)
!3691 = !DILocation(line: 280, column: 24, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 280, column: 11)
!3693 = !DILocation(line: 280, column: 11, scope: !3692)
!3694 = !DILocation(line: 280, column: 11, scope: !3606)
!3695 = !DILocation(line: 285, column: 25, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 281, column: 2)
!3697 = !DILocation(line: 286, column: 25, scope: !3696)
!3698 = !DILocation(line: 287, column: 25, scope: !3696)
!3699 = !DILocation(line: 282, column: 5, scope: !3696)
!3700 = !DILocation(line: 288, column: 2, scope: !3696)
!3701 = !DILocation(line: 289, column: 7, scope: !3606)
!3702 = !DILocation(line: 290, column: 7, scope: !3606)
!3703 = !DILocation(line: 292, column: 7, scope: !3606)
!3704 = !DILocation(line: 293, column: 24, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 293, column: 11)
!3706 = !DILocation(line: 293, column: 11, scope: !3705)
!3707 = !DILocation(line: 293, column: 11, scope: !3606)
!3708 = !DILocation(line: 298, column: 25, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 294, column: 2)
!3710 = !DILocation(line: 299, column: 25, scope: !3709)
!3711 = !DILocation(line: 300, column: 25, scope: !3709)
!3712 = !DILocation(line: 295, column: 5, scope: !3709)
!3713 = !DILocation(line: 301, column: 2, scope: !3709)
!3714 = !DILocation(line: 302, column: 7, scope: !3606)
!3715 = !DILocation(line: 303, column: 7, scope: !3606)
!3716 = !DILocation(line: 305, column: 1, scope: !3597)
!3717 = distinct !DISubprogram(name: "gimple_remove_stmt_histograms", scope: !3, file: !3, line: 320, type: !3718, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3720)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !2148, !1726}
!3720 = !{!3721, !3722, !3723}
!3721 = !DILocalVariable(name: "fun", arg: 1, scope: !3717, file: !3, line: 320, type: !2148)
!3722 = !DILocalVariable(name: "stmt", arg: 2, scope: !3717, file: !3, line: 320, type: !1726)
!3723 = !DILocalVariable(name: "val", scope: !3717, file: !3, line: 322, type: !1394)
!3724 = !DILocation(line: 0, scope: !3717)
!3725 = !DILocation(line: 323, column: 3, scope: !3717)
!3726 = !DILocation(line: 323, column: 17, scope: !3717)
!3727 = !DILocation(line: 323, column: 53, scope: !3717)
!3728 = !DILocation(line: 324, column: 5, scope: !3717)
!3729 = distinct !{!3729, !3725, !3730}
!3730 = !DILocation(line: 324, column: 50, scope: !3717)
!3731 = !DILocation(line: 325, column: 1, scope: !3717)
!3732 = distinct !DISubprogram(name: "gimple_duplicate_stmt_histograms", scope: !3, file: !3, line: 330, type: !3733, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3735)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{null, !2148, !1726, !2148, !1726}
!3735 = !{!3736, !3737, !3738, !3739, !3740, !3741}
!3736 = !DILocalVariable(name: "fun", arg: 1, scope: !3732, file: !3, line: 330, type: !2148)
!3737 = !DILocalVariable(name: "stmt", arg: 2, scope: !3732, file: !3, line: 330, type: !1726)
!3738 = !DILocalVariable(name: "ofun", arg: 3, scope: !3732, file: !3, line: 331, type: !2148)
!3739 = !DILocalVariable(name: "ostmt", arg: 4, scope: !3732, file: !3, line: 331, type: !1726)
!3740 = !DILocalVariable(name: "val", scope: !3732, file: !3, line: 333, type: !1394)
!3741 = !DILocalVariable(name: "new_val", scope: !3742, file: !3, line: 336, type: !1394)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 335, column: 5)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 334, column: 3)
!3744 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 334, column: 3)
!3745 = !DILocation(line: 0, scope: !3732)
!3746 = !DILocation(line: 334, column: 14, scope: !3744)
!3747 = !DILocation(line: 334, column: 8, scope: !3744)
!3748 = !DILocation(line: 0, scope: !3744)
!3749 = !DILocation(line: 334, column: 56, scope: !3743)
!3750 = !DILocation(line: 334, column: 3, scope: !3744)
!3751 = !DILocation(line: 336, column: 73, scope: !3742)
!3752 = !DILocation(line: 336, column: 33, scope: !3742)
!3753 = !DILocation(line: 0, scope: !3742)
!3754 = !DILocation(line: 337, column: 15, scope: !3742)
!3755 = !DILocation(line: 337, column: 24, scope: !3742)
!3756 = !DILocation(line: 337, column: 7, scope: !3742)
!3757 = !DILocation(line: 338, column: 23, scope: !3742)
!3758 = !DILocation(line: 338, column: 28, scope: !3742)
!3759 = !DILocation(line: 339, column: 34, scope: !3742)
!3760 = !DILocation(line: 339, column: 23, scope: !3742)
!3761 = !DILocation(line: 339, column: 32, scope: !3742)
!3762 = !DILocation(line: 340, column: 53, scope: !3742)
!3763 = !DILocation(line: 340, column: 109, scope: !3742)
!3764 = !DILocation(line: 340, column: 100, scope: !3742)
!3765 = !DILocation(line: 340, column: 98, scope: !3742)
!3766 = !DILocation(line: 340, column: 7, scope: !3742)
!3767 = !DILocation(line: 341, column: 7, scope: !3742)
!3768 = !DILocation(line: 334, column: 83, scope: !3743)
!3769 = !DILocation(line: 334, column: 3, scope: !3743)
!3770 = distinct !{!3770, !3750, !3771}
!3771 = !DILocation(line: 342, column: 5, scope: !3744)
!3772 = !DILocation(line: 343, column: 1, scope: !3732)
!3773 = distinct !DISubprogram(name: "gimple_alloc_histogram_value", scope: !3, file: !3, line: 94, type: !3774, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3776)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!1394, !2148, !377, !1726, !1402}
!3776 = !{!3777, !3778, !3779, !3780, !3781}
!3777 = !DILocalVariable(name: "fun", arg: 1, scope: !3773, file: !3, line: 94, type: !2148)
!3778 = !DILocalVariable(name: "type", arg: 2, scope: !3773, file: !3, line: 95, type: !377)
!3779 = !DILocalVariable(name: "stmt", arg: 3, scope: !3773, file: !3, line: 95, type: !1726)
!3780 = !DILocalVariable(name: "value", arg: 4, scope: !3773, file: !3, line: 95, type: !1402)
!3781 = !DILocalVariable(name: "hist", scope: !3773, file: !3, line: 97, type: !1394)
!3782 = !DILocation(line: 0, scope: !3773)
!3783 = !DILocation(line: 97, column: 45, scope: !3773)
!3784 = !DILocation(line: 97, column: 27, scope: !3773)
!3785 = !DILocation(line: 98, column: 17, scope: !3773)
!3786 = !DILocation(line: 98, column: 23, scope: !3773)
!3787 = !DILocation(line: 99, column: 17, scope: !3773)
!3788 = !DILocation(line: 99, column: 22, scope: !3773)
!3789 = !DILocation(line: 100, column: 10, scope: !3773)
!3790 = !DILocation(line: 100, column: 15, scope: !3773)
!3791 = !DILocation(line: 101, column: 4, scope: !3773)
!3792 = distinct !DISubprogram(name: "gimple_move_stmt_histograms", scope: !3, file: !3, line: 349, type: !3793, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3795)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{null, !2148, !1726, !1726}
!3795 = !{!3796, !3797, !3798, !3799}
!3796 = !DILocalVariable(name: "fun", arg: 1, scope: !3792, file: !3, line: 349, type: !2148)
!3797 = !DILocalVariable(name: "stmt", arg: 2, scope: !3792, file: !3, line: 349, type: !1726)
!3798 = !DILocalVariable(name: "ostmt", arg: 3, scope: !3792, file: !3, line: 349, type: !1726)
!3799 = !DILocalVariable(name: "val", scope: !3792, file: !3, line: 351, type: !1394)
!3800 = !DILocation(line: 0, scope: !3792)
!3801 = !DILocation(line: 351, column: 25, scope: !3792)
!3802 = !DILocation(line: 352, column: 7, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3792, file: !3, line: 352, column: 7)
!3804 = !DILocation(line: 352, column: 7, scope: !3792)
!3805 = !DILocation(line: 357, column: 7, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 353, column: 5)
!3807 = !DILocation(line: 358, column: 7, scope: !3806)
!3808 = !DILocation(line: 358, column: 18, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !3, line: 358, column: 7)
!3810 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 358, column: 7)
!3811 = !DILocation(line: 358, column: 7, scope: !3810)
!3812 = !DILocation(line: 359, column: 14, scope: !3809)
!3813 = !DILocation(line: 359, column: 19, scope: !3809)
!3814 = !DILocation(line: 358, column: 45, scope: !3809)
!3815 = !DILocation(line: 358, column: 7, scope: !3809)
!3816 = distinct !{!3816, !3811, !3817}
!3817 = !DILocation(line: 359, column: 21, scope: !3810)
!3818 = !DILocation(line: 360, column: 7, scope: !3806)
!3819 = !DILocation(line: 361, column: 5, scope: !3806)
!3820 = !DILocation(line: 362, column: 1, scope: !3792)
!3821 = distinct !DISubprogram(name: "verify_histograms", scope: !3, file: !3, line: 388, type: !2850, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3822)
!3822 = !{!3823, !3824, !3831, !3832, !3833}
!3823 = !DILocalVariable(name: "bb", scope: !3821, file: !3, line: 390, type: !2160)
!3824 = !DILocalVariable(name: "gsi", scope: !3821, file: !3, line: 391, type: !3825)
!3825 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !388, line: 265, baseType: !3826)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 254, size: 192, elements: !3827)
!3827 = !{!3828, !3829, !3830}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3826, file: !388, line: 257, baseType: !1721, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3826, file: !388, line: 263, baseType: !1716, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3826, file: !388, line: 264, baseType: !2160, size: 64, offset: 128)
!3831 = !DILocalVariable(name: "hist", scope: !3821, file: !3, line: 392, type: !1394)
!3832 = !DILocalVariable(name: "visited_hists", scope: !3821, file: !3, line: 393, type: !2749)
!3833 = !DILocalVariable(name: "stmt", scope: !3834, file: !3, line: 400, type: !1726)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 399, column: 7)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 398, column: 5)
!3836 = distinct !DILexicalBlock(scope: !3837, file: !3, line: 398, column: 5)
!3837 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 397, column: 3)
!3838 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 397, column: 3)
!3839 = !DILocation(line: 391, column: 3, scope: !3821)
!3840 = !DILocation(line: 395, column: 15, scope: !3821)
!3841 = !DILocation(line: 396, column: 19, scope: !3821)
!3842 = !DILocation(line: 0, scope: !3821)
!3843 = !DILocation(line: 397, column: 3, scope: !3838)
!3844 = !DILocation(line: 0, scope: !3836)
!3845 = !DILocation(line: 397, column: 3, scope: !3837)
!3846 = !DILocation(line: 0, scope: !3838)
!3847 = !DILocation(line: 398, column: 16, scope: !3836)
!3848 = !DILocation(line: 398, column: 10, scope: !3836)
!3849 = !DILocation(line: 398, column: 36, scope: !3835)
!3850 = !DILocation(line: 398, column: 35, scope: !3835)
!3851 = !DILocation(line: 398, column: 5, scope: !3836)
!3852 = !DILocation(line: 400, column: 16, scope: !3834)
!3853 = !DILocation(line: 0, scope: !3834)
!3854 = !DILocation(line: 402, column: 38, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 402, column: 2)
!3856 = !DILocation(line: 402, column: 14, scope: !3855)
!3857 = !DILocation(line: 402, column: 7, scope: !3855)
!3858 = !DILocation(line: 0, scope: !3855)
!3859 = !DILocation(line: 402, column: 2, scope: !3855)
!3860 = !DILocation(line: 405, column: 23, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !3, line: 405, column: 10)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 404, column: 4)
!3863 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 402, column: 2)
!3864 = !DILocation(line: 405, column: 28, scope: !3861)
!3865 = !DILocation(line: 405, column: 10, scope: !3862)
!3866 = !DILocation(line: 407, column: 3, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 406, column: 8)
!3868 = !DILocation(line: 409, column: 3, scope: !3867)
!3869 = !DILocation(line: 410, column: 25, scope: !3867)
!3870 = !DILocation(line: 410, column: 3, scope: !3867)
!3871 = !DILocation(line: 411, column: 15, scope: !3867)
!3872 = !DILocation(line: 412, column: 8, scope: !3867)
!3873 = !DILocation(line: 413, column: 48, scope: !3862)
!3874 = !DILocation(line: 413, column: 13, scope: !3862)
!3875 = !DILocation(line: 403, column: 27, scope: !3863)
!3876 = !DILocation(line: 402, column: 2, scope: !3863)
!3877 = distinct !{!3877, !3859, !3878}
!3878 = !DILocation(line: 414, column: 4, scope: !3855)
!3879 = !DILocation(line: 398, column: 53, scope: !3835)
!3880 = !DILocation(line: 398, column: 5, scope: !3835)
!3881 = distinct !{!3881, !3851, !3882}
!3882 = !DILocation(line: 415, column: 7, scope: !3836)
!3883 = !DILocation(line: 0, scope: !3837)
!3884 = distinct !{!3884, !3843, !3885}
!3885 = !DILocation(line: 415, column: 7, scope: !3838)
!3886 = !DILocation(line: 416, column: 7, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 416, column: 7)
!3888 = !DILocation(line: 416, column: 7, scope: !3821)
!3889 = !DILocation(line: 417, column: 57, scope: !3887)
!3890 = !DILocation(line: 417, column: 5, scope: !3887)
!3891 = !DILocation(line: 418, column: 3, scope: !3821)
!3892 = !DILocation(line: 419, column: 7, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 419, column: 7)
!3894 = !DILocation(line: 419, column: 7, scope: !3821)
!3895 = !DILocation(line: 420, column: 5, scope: !3893)
!3896 = !DILocation(line: 421, column: 1, scope: !3821)
!3897 = distinct !DISubprogram(name: "gsi_start_bb", scope: !388, file: !388, line: 4418, type: !3898, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3900)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!3825, !2160}
!3900 = !{!3901, !3902, !3903}
!3901 = !DILocalVariable(name: "bb", arg: 1, scope: !3897, file: !388, line: 4418, type: !2160)
!3902 = !DILocalVariable(name: "i", scope: !3897, file: !388, line: 4420, type: !3825)
!3903 = !DILocalVariable(name: "seq", scope: !3897, file: !388, line: 4421, type: !1716)
!3904 = !DILocation(line: 0, scope: !3897)
!3905 = !DILocation(line: 4420, column: 24, scope: !3897)
!3906 = !DILocation(line: 4423, column: 9, scope: !3897)
!3907 = !DILocation(line: 4424, column: 11, scope: !3897)
!3908 = !DILocation(line: 4424, column: 5, scope: !3897)
!3909 = !DILocation(line: 4424, column: 9, scope: !3897)
!3910 = !DILocation(line: 4425, column: 5, scope: !3897)
!3911 = !DILocation(line: 4425, column: 9, scope: !3897)
!3912 = !DILocation(line: 4426, column: 5, scope: !3897)
!3913 = !DILocation(line: 4426, column: 8, scope: !3897)
!3914 = !DILocation(line: 4429, column: 1, scope: !3897)
!3915 = distinct !DISubprogram(name: "gsi_end_p", scope: !388, file: !388, line: 4467, type: !3916, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3918)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!1386, !3825}
!3918 = !{!3919}
!3919 = !DILocalVariable(name: "i", arg: 1, scope: !3915, file: !388, line: 4467, type: !3825)
!3920 = !DILocation(line: 4467, column: 33, scope: !3915)
!3921 = !DILocation(line: 4469, column: 12, scope: !3915)
!3922 = !DILocation(line: 4469, column: 16, scope: !3915)
!3923 = !DILocation(line: 4469, column: 10, scope: !3915)
!3924 = !DILocation(line: 4469, column: 3, scope: !3915)
!3925 = distinct !DISubprogram(name: "gsi_stmt", scope: !388, file: !388, line: 4501, type: !3926, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3928)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!1726, !3825}
!3928 = !{!3929}
!3929 = !DILocalVariable(name: "i", arg: 1, scope: !3925, file: !388, line: 4501, type: !3825)
!3930 = !DILocation(line: 4501, column: 32, scope: !3925)
!3931 = !DILocation(line: 4503, column: 12, scope: !3925)
!3932 = !DILocation(line: 4503, column: 17, scope: !3925)
!3933 = !DILocation(line: 4503, column: 3, scope: !3925)
!3934 = distinct !DISubprogram(name: "gsi_next", scope: !388, file: !388, line: 4485, type: !3935, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3938)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{null, !3937}
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3938 = !{!3939}
!3939 = !DILocalVariable(name: "i", arg: 1, scope: !3934, file: !388, line: 4485, type: !3937)
!3940 = !DILocation(line: 0, scope: !3934)
!3941 = !DILocation(line: 4487, column: 15, scope: !3934)
!3942 = !DILocation(line: 4487, column: 20, scope: !3934)
!3943 = !DILocation(line: 4487, column: 10, scope: !3934)
!3944 = !DILocation(line: 4488, column: 1, scope: !3934)
!3945 = distinct !DISubprogram(name: "visit_hist", scope: !3, file: !3, line: 370, type: !3946, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3948)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!1387, !2214, !1391}
!3948 = !{!3949, !3950, !3951, !3952}
!3949 = !DILocalVariable(name: "slot", arg: 1, scope: !3945, file: !3, line: 370, type: !2214)
!3950 = !DILocalVariable(name: "data", arg: 2, scope: !3945, file: !3, line: 370, type: !1391)
!3951 = !DILocalVariable(name: "visited", scope: !3945, file: !3, line: 372, type: !2749)
!3952 = !DILocalVariable(name: "hist", scope: !3945, file: !3, line: 373, type: !1394)
!3953 = !DILocation(line: 0, scope: !3945)
!3954 = !DILocation(line: 372, column: 35, scope: !3945)
!3955 = !DILocation(line: 373, column: 26, scope: !3945)
!3956 = !DILocation(line: 374, column: 39, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 374, column: 7)
!3958 = !DILocation(line: 374, column: 8, scope: !3957)
!3959 = !DILocation(line: 374, column: 7, scope: !3945)
!3960 = !DILocation(line: 376, column: 7, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 375, column: 5)
!3962 = !DILocation(line: 377, column: 29, scope: !3961)
!3963 = !DILocation(line: 377, column: 7, scope: !3961)
!3964 = !DILocation(line: 378, column: 39, scope: !3961)
!3965 = !DILocation(line: 378, column: 7, scope: !3961)
!3966 = !DILocation(line: 379, column: 19, scope: !3961)
!3967 = !DILocation(line: 380, column: 5, scope: !3961)
!3968 = !DILocation(line: 381, column: 3, scope: !3945)
!3969 = distinct !DISubprogram(name: "free_histograms", scope: !3, file: !3, line: 439, type: !2850, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3038)
!3970 = !DILocation(line: 441, column: 7, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 441, column: 7)
!3972 = !DILocation(line: 441, column: 7, scope: !3969)
!3973 = !DILocation(line: 443, column: 7, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3971, file: !3, line: 442, column: 5)
!3975 = !DILocation(line: 444, column: 20, scope: !3974)
!3976 = !DILocation(line: 444, column: 7, scope: !3974)
!3977 = !DILocation(line: 445, column: 7, scope: !3974)
!3978 = !DILocation(line: 445, column: 31, scope: !3974)
!3979 = !DILocation(line: 446, column: 5, scope: !3974)
!3980 = !DILocation(line: 447, column: 1, scope: !3969)
!3981 = distinct !DISubprogram(name: "free_hist", scope: !3, file: !3, line: 427, type: !3946, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3982)
!3982 = !{!3983, !3984, !3985}
!3983 = !DILocalVariable(name: "slot", arg: 1, scope: !3981, file: !3, line: 427, type: !2214)
!3984 = !DILocalVariable(name: "data", arg: 2, scope: !3981, file: !3, line: 427, type: !1391)
!3985 = !DILocalVariable(name: "hist", scope: !3981, file: !3, line: 429, type: !1394)
!3986 = !DILocation(line: 0, scope: !3981)
!3987 = !DILocation(line: 429, column: 26, scope: !3981)
!3988 = !DILocation(line: 430, column: 22, scope: !3981)
!3989 = !DILocation(line: 430, column: 3, scope: !3981)
!3990 = !DILocation(line: 434, column: 9, scope: !3981)
!3991 = !DILocation(line: 434, column: 3, scope: !3981)
!3992 = !DILocation(line: 435, column: 3, scope: !3981)
!3993 = distinct !DISubprogram(name: "stringop_block_profile", scope: !3, file: !3, line: 1450, type: !3994, scopeLine: 1452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3998)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{null, !1726, !3996, !3997}
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!3998 = !{!3999, !4000, !4001, !4002, !4003, !4007, !4011}
!3999 = !DILocalVariable(name: "stmt", arg: 1, scope: !3993, file: !3, line: 1450, type: !1726)
!4000 = !DILocalVariable(name: "expected_align", arg: 2, scope: !3993, file: !3, line: 1450, type: !3996)
!4001 = !DILocalVariable(name: "expected_size", arg: 3, scope: !3993, file: !3, line: 1451, type: !3997)
!4002 = !DILocalVariable(name: "histogram", scope: !3993, file: !3, line: 1453, type: !1394)
!4003 = !DILocalVariable(name: "size", scope: !4004, file: !3, line: 1464, type: !1938)
!4004 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1463, column: 5)
!4005 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 1457, column: 12)
!4006 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 1455, column: 7)
!4007 = !DILocalVariable(name: "count", scope: !4008, file: !3, line: 1485, type: !1938)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 1484, column: 5)
!4009 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 1478, column: 12)
!4010 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 1476, column: 7)
!4011 = !DILocalVariable(name: "alignment", scope: !4008, file: !3, line: 1486, type: !1387)
!4012 = !DILocation(line: 0, scope: !3993)
!4013 = !DILocation(line: 1454, column: 47, scope: !3993)
!4014 = !DILocation(line: 1454, column: 15, scope: !3993)
!4015 = !DILocation(line: 1455, column: 8, scope: !4006)
!4016 = !DILocation(line: 1455, column: 7, scope: !3993)
!4017 = !DILocation(line: 1456, column: 20, scope: !4006)
!4018 = !DILocation(line: 1456, column: 5, scope: !4006)
!4019 = !DILocation(line: 1457, column: 31, scope: !4005)
!4020 = !DILocation(line: 1457, column: 13, scope: !4005)
!4021 = !DILocation(line: 1457, column: 12, scope: !4006)
!4022 = !DILocation(line: 1459, column: 22, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1458, column: 5)
!4024 = !DILocation(line: 1460, column: 38, scope: !4023)
!4025 = !DILocation(line: 1460, column: 7, scope: !4023)
!4026 = !DILocation(line: 1461, column: 5, scope: !4023)
!4027 = !DILocation(line: 1465, column: 16, scope: !4004)
!4028 = !DILocation(line: 1466, column: 40, scope: !4004)
!4029 = !DILocation(line: 1466, column: 8, scope: !4004)
!4030 = !DILocation(line: 1467, column: 9, scope: !4004)
!4031 = !DILocation(line: 0, scope: !4004)
!4032 = !DILocation(line: 1470, column: 11, scope: !4004)
!4033 = !DILocation(line: 1472, column: 22, scope: !4004)
!4034 = !DILocation(line: 1473, column: 38, scope: !4004)
!4035 = !DILocation(line: 1473, column: 7, scope: !4004)
!4036 = !DILocation(line: 1475, column: 47, scope: !3993)
!4037 = !DILocation(line: 1475, column: 15, scope: !3993)
!4038 = !DILocation(line: 1476, column: 8, scope: !4010)
!4039 = !DILocation(line: 1476, column: 7, scope: !3993)
!4040 = !DILocation(line: 1477, column: 21, scope: !4010)
!4041 = !DILocation(line: 1477, column: 5, scope: !4010)
!4042 = !DILocation(line: 1478, column: 31, scope: !4009)
!4043 = !DILocation(line: 1478, column: 13, scope: !4009)
!4044 = !DILocation(line: 1478, column: 12, scope: !4010)
!4045 = !DILocation(line: 1480, column: 38, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 1479, column: 5)
!4047 = !DILocation(line: 1480, column: 7, scope: !4046)
!4048 = !DILocation(line: 1481, column: 23, scope: !4046)
!4049 = !DILocation(line: 1482, column: 5, scope: !4046)
!4050 = !DILocation(line: 0, scope: !4008)
!4051 = !DILocation(line: 1490, column: 7, scope: !4008)
!4052 = !DILocation(line: 1490, column: 24, scope: !4008)
!4053 = !DILocation(line: 1490, column: 22, scope: !4008)
!4054 = !DILocation(line: 1491, column: 7, scope: !4008)
!4055 = !DILocation(line: 1492, column: 12, scope: !4008)
!4056 = distinct !{!4056, !4051, !4057}
!4057 = !DILocation(line: 1492, column: 16, scope: !4008)
!4058 = !DILocation(line: 1493, column: 35, scope: !4008)
!4059 = !DILocation(line: 1493, column: 23, scope: !4008)
!4060 = !DILocation(line: 1494, column: 38, scope: !4008)
!4061 = !DILocation(line: 1494, column: 7, scope: !4008)
!4062 = !DILocation(line: 1496, column: 1, scope: !3993)
!4063 = distinct !DISubprogram(name: "gimple_register_value_prof_hooks", scope: !3, file: !3, line: 1702, type: !2850, scopeLine: 1703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3038)
!4064 = !DILocation(line: 1704, column: 3, scope: !4063)
!4065 = !DILocation(line: 1706, column: 1, scope: !4063)
!4066 = distinct !DISubprogram(name: "find_values_to_profile", scope: !3, file: !3, line: 1710, type: !3002, scopeLine: 1711, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4067)
!4067 = !{!4068}
!4068 = !DILocalVariable(name: "values", arg: 1, scope: !4066, file: !3, line: 1710, type: !3004)
!4069 = !DILocation(line: 0, scope: !4066)
!4070 = !DILocation(line: 1712, column: 3, scope: !4066)
!4071 = !DILocation(line: 1713, column: 1, scope: !4066)
!4072 = distinct !DISubprogram(name: "value_profile_transformations", scope: !3, file: !3, line: 1716, type: !2831, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3038)
!4073 = !DILocation(line: 1718, column: 10, scope: !4072)
!4074 = !DILocation(line: 1718, column: 3, scope: !4072)
!4075 = distinct !DISubprogram(name: "histogram_hash", scope: !3, file: !3, line: 107, type: !2200, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4076)
!4076 = !{!4077}
!4077 = !DILocalVariable(name: "x", arg: 1, scope: !4075, file: !3, line: 107, type: !2033)
!4078 = !DILocation(line: 0, scope: !4075)
!4079 = !DILocation(line: 109, column: 10, scope: !4075)
!4080 = !DILocation(line: 109, column: 64, scope: !4075)
!4081 = !DILocation(line: 109, column: 3, scope: !4075)
!4082 = distinct !DISubprogram(name: "histogram_eq", scope: !3, file: !3, line: 115, type: !2206, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4083)
!4083 = !{!4084, !4085}
!4084 = !DILocalVariable(name: "x", arg: 1, scope: !4082, file: !3, line: 115, type: !2033)
!4085 = !DILocalVariable(name: "y", arg: 2, scope: !4082, file: !3, line: 115, type: !2033)
!4086 = !DILocation(line: 0, scope: !4082)
!4087 = !DILocation(line: 117, column: 46, scope: !4082)
!4088 = !DILocation(line: 117, column: 54, scope: !4082)
!4089 = !DILocation(line: 117, column: 51, scope: !4082)
!4090 = !DILocation(line: 117, column: 3, scope: !4082)
!4091 = distinct !DISubprogram(name: "bb_seq", scope: !388, file: !388, line: 237, type: !4092, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4097)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!1716, !4094}
!4094 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !1403, line: 112, baseType: !4095)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!4097 = !{!4098}
!4098 = !DILocalVariable(name: "bb", arg: 1, scope: !4091, file: !388, line: 237, type: !4094)
!4099 = !DILocation(line: 0, scope: !4091)
!4100 = !DILocation(line: 239, column: 17, scope: !4091)
!4101 = !DILocation(line: 239, column: 23, scope: !4091)
!4102 = !DILocation(line: 239, column: 33, scope: !4091)
!4103 = !DILocation(line: 239, column: 43, scope: !4091)
!4104 = !DILocation(line: 239, column: 36, scope: !4091)
!4105 = !DILocation(line: 239, column: 10, scope: !4091)
!4106 = !DILocation(line: 239, column: 68, scope: !4091)
!4107 = !DILocation(line: 239, column: 3, scope: !4091)
!4108 = distinct !DISubprogram(name: "gimple_seq_first", scope: !388, file: !388, line: 159, type: !4109, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4114)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!1721, !4111}
!4111 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !1403, line: 67, baseType: !4112)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1718)
!4114 = !{!4115}
!4115 = !DILocalVariable(name: "s", arg: 1, scope: !4108, file: !388, line: 159, type: !4111)
!4116 = !DILocation(line: 0, scope: !4108)
!4117 = !DILocation(line: 161, column: 10, scope: !4108)
!4118 = !DILocation(line: 161, column: 17, scope: !4108)
!4119 = !DILocation(line: 161, column: 3, scope: !4108)
!4120 = distinct !DISubprogram(name: "gimple_find_values_to_profile", scope: !3, file: !3, line: 1640, type: !3002, scopeLine: 1641, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4121)
!4121 = !{!4122, !4123, !4124, !4125, !4126}
!4122 = !DILocalVariable(name: "values", arg: 1, scope: !4120, file: !3, line: 1640, type: !3004)
!4123 = !DILocalVariable(name: "bb", scope: !4120, file: !3, line: 1642, type: !2160)
!4124 = !DILocalVariable(name: "gsi", scope: !4120, file: !3, line: 1643, type: !3825)
!4125 = !DILocalVariable(name: "i", scope: !4120, file: !3, line: 1644, type: !7)
!4126 = !DILocalVariable(name: "hist", scope: !4120, file: !3, line: 1645, type: !1394)
!4127 = !DILocation(line: 0, scope: !4120)
!4128 = !DILocation(line: 1643, column: 3, scope: !4120)
!4129 = !DILocation(line: 1645, column: 3, scope: !4120)
!4130 = !DILocation(line: 1645, column: 19, scope: !4120)
!4131 = !DILocation(line: 1647, column: 11, scope: !4120)
!4132 = !DILocation(line: 1648, column: 3, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1648, column: 3)
!4134 = !DILocation(line: 0, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 1649, column: 5)
!4136 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 1648, column: 3)
!4137 = !DILocation(line: 1648, column: 3, scope: !4136)
!4138 = !DILocation(line: 0, scope: !4133)
!4139 = !DILocation(line: 1652, column: 3, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1652, column: 3)
!4141 = !DILocation(line: 1649, column: 16, scope: !4135)
!4142 = !DILocation(line: 1649, column: 10, scope: !4135)
!4143 = !DILocation(line: 1649, column: 36, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 1649, column: 5)
!4145 = !DILocation(line: 1649, column: 35, scope: !4144)
!4146 = !DILocation(line: 1649, column: 5, scope: !4135)
!4147 = !DILocation(line: 1650, column: 33, scope: !4144)
!4148 = !DILocation(line: 1650, column: 7, scope: !4144)
!4149 = !DILocation(line: 1649, column: 53, scope: !4144)
!4150 = !DILocation(line: 1649, column: 5, scope: !4144)
!4151 = distinct !{!4151, !4146, !4152}
!4152 = !DILocation(line: 1650, column: 55, scope: !4135)
!4153 = !DILocation(line: 0, scope: !4136)
!4154 = distinct !{!4154, !4132, !4155}
!4155 = !DILocation(line: 1650, column: 55, scope: !4133)
!4156 = !DILocation(line: 0, scope: !4140)
!4157 = !DILocation(line: 1652, column: 15, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 1652, column: 3)
!4159 = !DILocation(line: 1654, column: 15, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 1653, column: 5)
!4161 = !DILocation(line: 1654, column: 21, scope: !4160)
!4162 = !DILocation(line: 1654, column: 7, scope: !4160)
!4163 = !DILocation(line: 1657, column: 41, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4160, file: !3, line: 1655, column: 9)
!4165 = !DILocation(line: 1657, column: 47, scope: !4164)
!4166 = !DILocation(line: 1657, column: 10, scope: !4164)
!4167 = !DILocation(line: 1657, column: 21, scope: !4164)
!4168 = !DILocation(line: 1658, column: 4, scope: !4164)
!4169 = !DILocation(line: 1661, column: 10, scope: !4164)
!4170 = !DILocation(line: 1661, column: 21, scope: !4164)
!4171 = !DILocation(line: 1662, column: 4, scope: !4164)
!4172 = !DILocation(line: 1665, column: 10, scope: !4164)
!4173 = !DILocation(line: 1665, column: 21, scope: !4164)
!4174 = !DILocation(line: 1666, column: 4, scope: !4164)
!4175 = !DILocation(line: 1669, column: 10, scope: !4164)
!4176 = !DILocation(line: 1669, column: 21, scope: !4164)
!4177 = !DILocation(line: 1670, column: 4, scope: !4164)
!4178 = !DILocation(line: 1673, column: 11, scope: !4164)
!4179 = !DILocation(line: 1673, column: 22, scope: !4164)
!4180 = !DILocation(line: 1674, column: 4, scope: !4164)
!4181 = !DILocation(line: 1677, column: 10, scope: !4164)
!4182 = !DILocation(line: 1677, column: 21, scope: !4164)
!4183 = !DILocation(line: 1678, column: 4, scope: !4164)
!4184 = !DILocation(line: 1681, column: 10, scope: !4164)
!4185 = !DILocation(line: 1681, column: 21, scope: !4164)
!4186 = !DILocation(line: 1682, column: 4, scope: !4164)
!4187 = !DILocation(line: 1685, column: 4, scope: !4164)
!4188 = !DILocation(line: 1686, column: 2, scope: !4164)
!4189 = !DILocation(line: 1687, column: 11, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4160, file: !3, line: 1687, column: 11)
!4191 = !DILocation(line: 1687, column: 11, scope: !4160)
!4192 = !DILocation(line: 1689, column: 4, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 1688, column: 9)
!4194 = !DILocation(line: 1690, column: 30, scope: !4193)
!4195 = !DILocation(line: 1690, column: 41, scope: !4193)
!4196 = !DILocation(line: 1690, column: 54, scope: !4193)
!4197 = !DILocation(line: 1690, column: 11, scope: !4193)
!4198 = !DILocation(line: 1691, column: 26, scope: !4193)
!4199 = !DILocation(line: 1691, column: 37, scope: !4193)
!4200 = !DILocation(line: 1691, column: 4, scope: !4193)
!4201 = !DILocation(line: 1692, column: 9, scope: !4193)
!4202 = !DILocation(line: 1652, column: 65, scope: !4158)
!4203 = !DILocation(line: 1652, column: 3, scope: !4158)
!4204 = distinct !{!4204, !4139, !4205}
!4205 = !DILocation(line: 1693, column: 5, scope: !4140)
!4206 = !DILocation(line: 1694, column: 1, scope: !4120)
!4207 = distinct !DISubprogram(name: "gimple_value_profile_transformations", scope: !3, file: !3, line: 491, type: !2831, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4208)
!4208 = !{!4209, !4210, !4211, !4212, !4219}
!4209 = !DILocalVariable(name: "bb", scope: !4207, file: !3, line: 493, type: !2160)
!4210 = !DILocalVariable(name: "gsi", scope: !4207, file: !3, line: 494, type: !3825)
!4211 = !DILocalVariable(name: "changed", scope: !4207, file: !3, line: 495, type: !1386)
!4212 = !DILocalVariable(name: "stmt", scope: !4213, file: !3, line: 501, type: !1726)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 500, column: 2)
!4214 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 499, column: 7)
!4215 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 499, column: 7)
!4216 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 498, column: 5)
!4217 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 497, column: 3)
!4218 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 497, column: 3)
!4219 = !DILocalVariable(name: "th", scope: !4213, file: !3, line: 502, type: !1394)
!4220 = !DILocation(line: 494, column: 3, scope: !4207)
!4221 = !DILocation(line: 0, scope: !4207)
!4222 = !DILocation(line: 497, column: 3, scope: !4218)
!4223 = !DILocation(line: 0, scope: !4215)
!4224 = !DILocation(line: 0, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 531, column: 3)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 530, column: 12)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 526, column: 6)
!4228 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 520, column: 8)
!4229 = !DILocation(line: 497, column: 3, scope: !4217)
!4230 = !DILocation(line: 495, column: 8, scope: !4207)
!4231 = !DILocation(line: 0, scope: !4218)
!4232 = !DILocation(line: 499, column: 18, scope: !4215)
!4233 = !DILocation(line: 499, column: 12, scope: !4215)
!4234 = !DILocation(line: 499, column: 38, scope: !4214)
!4235 = !DILocation(line: 499, column: 37, scope: !4214)
!4236 = !DILocation(line: 499, column: 7, scope: !4215)
!4237 = !DILocation(line: 501, column: 18, scope: !4213)
!4238 = !DILocation(line: 0, scope: !4213)
!4239 = !DILocation(line: 502, column: 49, scope: !4213)
!4240 = !DILocation(line: 502, column: 25, scope: !4213)
!4241 = !DILocation(line: 503, column: 9, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 503, column: 8)
!4243 = !DILocation(line: 503, column: 8, scope: !4213)
!4244 = !DILocation(line: 506, column: 8, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 506, column: 8)
!4246 = !DILocation(line: 506, column: 8, scope: !4213)
!4247 = !DILocation(line: 508, column: 8, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 507, column: 6)
!4249 = !DILocation(line: 509, column: 27, scope: !4248)
!4250 = !DILocation(line: 509, column: 8, scope: !4248)
!4251 = !DILocation(line: 510, column: 34, scope: !4248)
!4252 = !DILocation(line: 510, column: 40, scope: !4248)
!4253 = !DILocation(line: 510, column: 8, scope: !4248)
!4254 = !DILocation(line: 511, column: 6, scope: !4248)
!4255 = !DILocation(line: 520, column: 8, scope: !4228)
!4256 = !DILocation(line: 521, column: 8, scope: !4228)
!4257 = !DILocation(line: 521, column: 12, scope: !4228)
!4258 = !DILocation(line: 522, column: 5, scope: !4228)
!4259 = !DILocation(line: 522, column: 8, scope: !4228)
!4260 = !DILocation(line: 523, column: 5, scope: !4228)
!4261 = !DILocation(line: 523, column: 8, scope: !4228)
!4262 = !DILocation(line: 524, column: 5, scope: !4228)
!4263 = !DILocation(line: 524, column: 8, scope: !4228)
!4264 = !DILocation(line: 525, column: 5, scope: !4228)
!4265 = !DILocation(line: 525, column: 8, scope: !4228)
!4266 = !DILocation(line: 520, column: 8, scope: !4213)
!4267 = !DILocation(line: 527, column: 15, scope: !4227)
!4268 = !DILocation(line: 530, column: 18, scope: !4226)
!4269 = !DILocation(line: 530, column: 15, scope: !4226)
!4270 = !DILocation(line: 530, column: 12, scope: !4227)
!4271 = !DILocation(line: 532, column: 17, scope: !4225)
!4272 = !DILocation(line: 533, column: 11, scope: !4225)
!4273 = !DILocation(line: 534, column: 3, scope: !4225)
!4274 = !DILocation(line: 499, column: 55, scope: !4214)
!4275 = !DILocation(line: 499, column: 7, scope: !4214)
!4276 = distinct !{!4276, !4236, !4277}
!4277 = !DILocation(line: 536, column: 9, scope: !4215)
!4278 = !DILocation(line: 0, scope: !4217)
!4279 = distinct !{!4279, !4222, !4280}
!4280 = !DILocation(line: 537, column: 5, scope: !4218)
!4281 = !DILocation(line: 539, column: 7, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 539, column: 7)
!4283 = !DILocation(line: 539, column: 7, scope: !4207)
!4284 = !DILocation(line: 541, column: 7, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 540, column: 5)
!4286 = !DILocation(line: 542, column: 5, scope: !4285)
!4287 = !DILocation(line: 545, column: 1, scope: !4207)
!4288 = !DILocation(line: 544, column: 3, scope: !4207)
!4289 = distinct !DISubprogram(name: "gimple_values_to_profile", scope: !3, file: !3, line: 1629, type: !4290, scopeLine: 1630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4292)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{null, !1726, !3004}
!4292 = !{!4293, !4294}
!4293 = !DILocalVariable(name: "stmt", arg: 1, scope: !4289, file: !3, line: 1629, type: !1726)
!4294 = !DILocalVariable(name: "values", arg: 2, scope: !4289, file: !3, line: 1629, type: !3004)
!4295 = !DILocation(line: 0, scope: !4289)
!4296 = !DILocation(line: 1631, column: 7, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 1631, column: 7)
!4298 = !DILocation(line: 1631, column: 7, scope: !4289)
!4299 = !DILocation(line: 1633, column: 7, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 1632, column: 5)
!4301 = !DILocation(line: 1634, column: 7, scope: !4300)
!4302 = !DILocation(line: 1635, column: 7, scope: !4300)
!4303 = !DILocation(line: 1636, column: 5, scope: !4300)
!4304 = !DILocation(line: 1637, column: 1, scope: !4289)
!4305 = distinct !DISubprogram(name: "VEC_histogram_value_base_iterate", scope: !378, file: !378, line: 68, type: !4306, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4310)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!1387, !4308, !7, !2751}
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2757)
!4310 = !{!4311, !4312, !4313}
!4311 = !DILocalVariable(name: "vec_", arg: 1, scope: !4305, file: !378, line: 68, type: !4308)
!4312 = !DILocalVariable(name: "ix_", arg: 2, scope: !4305, file: !378, line: 68, type: !7)
!4313 = !DILocalVariable(name: "ptr", arg: 3, scope: !4305, file: !378, line: 68, type: !2751)
!4314 = !DILocation(line: 0, scope: !4305)
!4315 = !DILocation(line: 68, column: 1, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4305, file: !378, line: 68, column: 1)
!4317 = !DILocation(line: 68, column: 1, scope: !4305)
!4318 = !DILocation(line: 68, column: 1, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4316, file: !378, line: 68, column: 1)
!4320 = !DILocation(line: 68, column: 1, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4316, file: !378, line: 68, column: 1)
!4322 = !DILocation(line: 0, scope: !4316)
!4323 = distinct !DISubprogram(name: "gimple_divmod_values_to_profile", scope: !3, file: !3, line: 1510, type: !4290, scopeLine: 1511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4324)
!4324 = !{!4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332}
!4325 = !DILocalVariable(name: "stmt", arg: 1, scope: !4323, file: !3, line: 1510, type: !1726)
!4326 = !DILocalVariable(name: "values", arg: 2, scope: !4323, file: !3, line: 1510, type: !3004)
!4327 = !DILocalVariable(name: "lhs", scope: !4323, file: !3, line: 1512, type: !1402)
!4328 = !DILocalVariable(name: "divisor", scope: !4323, file: !3, line: 1512, type: !1402)
!4329 = !DILocalVariable(name: "op0", scope: !4323, file: !3, line: 1512, type: !1402)
!4330 = !DILocalVariable(name: "type", scope: !4323, file: !3, line: 1512, type: !1402)
!4331 = !DILocalVariable(name: "hist", scope: !4323, file: !3, line: 1513, type: !1394)
!4332 = !DILocalVariable(name: "val", scope: !4333, file: !3, line: 1545, type: !1402)
!4333 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1544, column: 2)
!4334 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 1542, column: 11)
!4335 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 1524, column: 5)
!4336 = !DILocation(line: 0, scope: !4323)
!4337 = !DILocation(line: 1515, column: 7, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 1515, column: 7)
!4339 = !DILocation(line: 1515, column: 26, scope: !4338)
!4340 = !DILocation(line: 1515, column: 7, scope: !4323)
!4341 = !DILocation(line: 1518, column: 9, scope: !4323)
!4342 = !DILocation(line: 1519, column: 10, scope: !4323)
!4343 = !DILocation(line: 1520, column: 8, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 1520, column: 7)
!4345 = !DILocation(line: 1520, column: 7, scope: !4323)
!4346 = !DILocation(line: 1523, column: 11, scope: !4323)
!4347 = !DILocation(line: 1523, column: 3, scope: !4323)
!4348 = !DILocation(line: 1527, column: 17, scope: !4335)
!4349 = !DILocation(line: 1528, column: 13, scope: !4335)
!4350 = !DILocation(line: 1530, column: 7, scope: !4335)
!4351 = !DILocation(line: 1532, column: 11, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 1532, column: 11)
!4353 = !DILocation(line: 1532, column: 11, scope: !4335)
!4354 = !DILocation(line: 1535, column: 2, scope: !4352)
!4355 = !DILocation(line: 1542, column: 11, scope: !4334)
!4356 = !DILocation(line: 1542, column: 41, scope: !4334)
!4357 = !DILocation(line: 1543, column: 4, scope: !4334)
!4358 = !DILocation(line: 1543, column: 7, scope: !4334)
!4359 = !DILocation(line: 1542, column: 11, scope: !4335)
!4360 = !DILocation(line: 1547, column: 4, scope: !4333)
!4361 = !DILocation(line: 1551, column: 10, scope: !4333)
!4362 = !DILocation(line: 0, scope: !4333)
!4363 = !DILocation(line: 1552, column: 41, scope: !4333)
!4364 = !DILocation(line: 1552, column: 11, scope: !4333)
!4365 = !DILocation(line: 1554, column: 22, scope: !4333)
!4366 = !DILocation(line: 1554, column: 32, scope: !4333)
!4367 = !DILocation(line: 1555, column: 22, scope: !4333)
!4368 = !DILocation(line: 1555, column: 28, scope: !4333)
!4369 = !DILocation(line: 1556, column: 4, scope: !4333)
!4370 = !DILocation(line: 1557, column: 2, scope: !4333)
!4371 = !DILocation(line: 1563, column: 1, scope: !4323)
!4372 = distinct !DISubprogram(name: "gimple_stringops_values_to_profile", scope: !3, file: !3, line: 1591, type: !4290, scopeLine: 1592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4373)
!4373 = !{!4374, !4375, !4376, !4377, !4378, !4379}
!4374 = !DILocalVariable(name: "stmt", arg: 1, scope: !4372, file: !3, line: 1591, type: !1726)
!4375 = !DILocalVariable(name: "values", arg: 2, scope: !4372, file: !3, line: 1591, type: !3004)
!4376 = !DILocalVariable(name: "fndecl", scope: !4372, file: !3, line: 1593, type: !1402)
!4377 = !DILocalVariable(name: "blck_size", scope: !4372, file: !3, line: 1594, type: !1402)
!4378 = !DILocalVariable(name: "dest", scope: !4372, file: !3, line: 1595, type: !1402)
!4379 = !DILocalVariable(name: "size_arg", scope: !4372, file: !3, line: 1596, type: !1387)
!4380 = !DILocation(line: 0, scope: !4372)
!4381 = !DILocation(line: 1596, column: 3, scope: !4372)
!4382 = !DILocation(line: 1598, column: 7, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 1598, column: 7)
!4384 = !DILocation(line: 1598, column: 26, scope: !4383)
!4385 = !DILocation(line: 1598, column: 7, scope: !4372)
!4386 = !DILocation(line: 1600, column: 12, scope: !4372)
!4387 = !DILocation(line: 1601, column: 8, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 1601, column: 7)
!4389 = !DILocation(line: 1601, column: 7, scope: !4372)
!4390 = !DILocation(line: 1604, column: 8, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 1604, column: 7)
!4392 = !DILocation(line: 1604, column: 7, scope: !4372)
!4393 = !DILocation(line: 1607, column: 10, scope: !4372)
!4394 = !DILocation(line: 1608, column: 38, scope: !4372)
!4395 = !DILocation(line: 1608, column: 15, scope: !4372)
!4396 = !DILocation(line: 1610, column: 7, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 1610, column: 7)
!4398 = !DILocation(line: 1610, column: 29, scope: !4397)
!4399 = !DILocation(line: 1610, column: 7, scope: !4372)
!4400 = !DILocation(line: 1612, column: 7, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 1611, column: 5)
!4402 = !DILocation(line: 1615, column: 7, scope: !4401)
!4403 = !DILocation(line: 1619, column: 7, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 1619, column: 7)
!4405 = !DILocation(line: 1619, column: 29, scope: !4404)
!4406 = !DILocation(line: 1618, column: 5, scope: !4401)
!4407 = !DILocation(line: 1619, column: 7, scope: !4372)
!4408 = !DILocation(line: 1620, column: 5, scope: !4404)
!4409 = !DILocation(line: 1623, column: 1, scope: !4372)
!4410 = distinct !DISubprogram(name: "gimple_indirect_call_to_profile", scope: !3, file: !3, line: 1569, type: !4290, scopeLine: 1570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4411)
!4411 = !{!4412, !4413, !4414}
!4412 = !DILocalVariable(name: "stmt", arg: 1, scope: !4410, file: !3, line: 1569, type: !1726)
!4413 = !DILocalVariable(name: "values", arg: 2, scope: !4410, file: !3, line: 1569, type: !3004)
!4414 = !DILocalVariable(name: "callee", scope: !4410, file: !3, line: 1571, type: !1402)
!4415 = !DILocation(line: 0, scope: !4410)
!4416 = !DILocation(line: 1573, column: 7, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 1573, column: 7)
!4418 = !DILocation(line: 1573, column: 26, scope: !4417)
!4419 = !DILocation(line: 1574, column: 7, scope: !4417)
!4420 = !DILocation(line: 1574, column: 10, scope: !4417)
!4421 = !DILocation(line: 1574, column: 36, scope: !4417)
!4422 = !DILocation(line: 1573, column: 7, scope: !4410)
!4423 = !DILocation(line: 1577, column: 12, scope: !4410)
!4424 = !DILocation(line: 1579, column: 3, scope: !4410)
!4425 = !DILocation(line: 1581, column: 3, scope: !4410)
!4426 = !DILocation(line: 1585, column: 3, scope: !4410)
!4427 = !DILocation(line: 1586, column: 1, scope: !4410)
!4428 = distinct !DISubprogram(name: "gimple_code", scope: !388, file: !388, line: 1052, type: !4429, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4431)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!387, !2746}
!4431 = !{!4432}
!4432 = !DILocalVariable(name: "g", arg: 1, scope: !4428, file: !388, line: 1052, type: !2746)
!4433 = !DILocation(line: 0, scope: !4428)
!4434 = !DILocation(line: 1054, column: 20, scope: !4428)
!4435 = !DILocation(line: 1054, column: 3, scope: !4428)
!4436 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !388, file: !388, line: 1694, type: !4437, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4439)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!1402, !2746}
!4439 = !{!4440}
!4440 = !DILocalVariable(name: "gs", arg: 1, scope: !4436, file: !388, line: 1694, type: !2746)
!4441 = !DILocation(line: 0, scope: !4436)
!4442 = !DILocation(line: 1697, column: 10, scope: !4436)
!4443 = !DILocation(line: 1697, column: 3, scope: !4436)
!4444 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !388, file: !388, line: 1815, type: !4445, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4447)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!134, !2746}
!4447 = !{!4448, !4449}
!4448 = !DILocalVariable(name: "gs", arg: 1, scope: !4444, file: !388, line: 1815, type: !2746)
!4449 = !DILocalVariable(name: "code", scope: !4444, file: !388, line: 1817, type: !134)
!4450 = !DILocation(line: 0, scope: !4444)
!4451 = !DILocation(line: 1820, column: 10, scope: !4444)
!4452 = !DILocation(line: 1821, column: 7, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4444, file: !388, line: 1821, column: 7)
!4454 = !DILocation(line: 1821, column: 35, scope: !4453)
!4455 = !DILocation(line: 1821, column: 7, scope: !4444)
!4456 = !DILocation(line: 1822, column: 12, scope: !4453)
!4457 = !DILocation(line: 1822, column: 5, scope: !4453)
!4458 = !DILocation(line: 1824, column: 3, scope: !4444)
!4459 = distinct !DISubprogram(name: "gimple_assign_rhs2", scope: !388, file: !388, line: 1759, type: !4437, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4460)
!4460 = !{!4461}
!4461 = !DILocalVariable(name: "gs", arg: 1, scope: !4459, file: !388, line: 1759, type: !2746)
!4462 = !DILocation(line: 0, scope: !4459)
!4463 = !DILocation(line: 1763, column: 7, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4459, file: !388, line: 1763, column: 7)
!4465 = !DILocation(line: 1763, column: 27, scope: !4464)
!4466 = !DILocation(line: 1763, column: 7, scope: !4459)
!4467 = !DILocation(line: 1764, column: 12, scope: !4464)
!4468 = !DILocation(line: 1764, column: 5, scope: !4464)
!4469 = !DILocation(line: 0, scope: !4464)
!4470 = !DILocation(line: 1767, column: 1, scope: !4459)
!4471 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !388, file: !388, line: 1727, type: !4437, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4472)
!4472 = !{!4473}
!4473 = !DILocalVariable(name: "gs", arg: 1, scope: !4471, file: !388, line: 1727, type: !2746)
!4474 = !DILocation(line: 0, scope: !4471)
!4475 = !DILocation(line: 1730, column: 10, scope: !4471)
!4476 = !DILocation(line: 1730, column: 3, scope: !4471)
!4477 = distinct !DISubprogram(name: "VEC_histogram_value_heap_reserve", scope: !378, file: !378, line: 69, type: !4478, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4481)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!1387, !4480, !1387}
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!4481 = !{!4482, !4483, !4484}
!4482 = !DILocalVariable(name: "vec_", arg: 1, scope: !4477, file: !378, line: 69, type: !4480)
!4483 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4477, file: !378, line: 69, type: !1387)
!4484 = !DILocalVariable(name: "extend", scope: !4477, file: !378, line: 69, type: !1387)
!4485 = !DILocation(line: 0, scope: !4477)
!4486 = !DILocation(line: 69, column: 1, scope: !4477)
!4487 = !DILocation(line: 69, column: 1, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4477, file: !378, line: 69, column: 1)
!4489 = distinct !DISubprogram(name: "VEC_histogram_value_base_quick_push", scope: !378, file: !378, line: 68, type: !4490, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4493)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!2751, !4492, !1394}
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!4493 = !{!4494, !4495, !4496}
!4494 = !DILocalVariable(name: "vec_", arg: 1, scope: !4489, file: !378, line: 68, type: !4492)
!4495 = !DILocalVariable(name: "obj_", arg: 2, scope: !4489, file: !378, line: 68, type: !1394)
!4496 = !DILocalVariable(name: "slot_", scope: !4489, file: !378, line: 68, type: !2751)
!4497 = !DILocation(line: 0, scope: !4489)
!4498 = !DILocation(line: 68, column: 1, scope: !4489)
!4499 = distinct !DISubprogram(name: "gimple_op", scope: !388, file: !388, line: 1631, type: !4500, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4502)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!1402, !2746, !7}
!4502 = !{!4503, !4504}
!4503 = !DILocalVariable(name: "gs", arg: 1, scope: !4499, file: !388, line: 1631, type: !2746)
!4504 = !DILocalVariable(name: "i", arg: 2, scope: !4499, file: !388, line: 1631, type: !7)
!4505 = !DILocation(line: 0, scope: !4499)
!4506 = !DILocation(line: 1633, column: 7, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4499, file: !388, line: 1633, column: 7)
!4508 = !DILocation(line: 1633, column: 7, scope: !4499)
!4509 = !DILocation(line: 1638, column: 14, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4507, file: !388, line: 1634, column: 5)
!4511 = !DILocation(line: 1638, column: 7, scope: !4510)
!4512 = !DILocation(line: 0, scope: !4507)
!4513 = !DILocation(line: 1642, column: 1, scope: !4499)
!4514 = distinct !DISubprogram(name: "gimple_has_ops", scope: !388, file: !388, line: 1274, type: !4515, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4517)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!1386, !2746}
!4517 = !{!4518}
!4518 = !DILocalVariable(name: "g", arg: 1, scope: !4514, file: !388, line: 1274, type: !2746)
!4519 = !DILocation(line: 0, scope: !4514)
!4520 = !DILocation(line: 1276, column: 10, scope: !4514)
!4521 = !DILocation(line: 1276, column: 26, scope: !4514)
!4522 = !DILocation(line: 1276, column: 41, scope: !4514)
!4523 = !DILocation(line: 1276, column: 44, scope: !4514)
!4524 = !DILocation(line: 1276, column: 60, scope: !4514)
!4525 = !DILocation(line: 1276, column: 3, scope: !4514)
!4526 = distinct !DISubprogram(name: "gimple_ops", scope: !388, file: !388, line: 1614, type: !4527, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4529)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!1761, !1726}
!4529 = !{!4530, !4531}
!4530 = !DILocalVariable(name: "gs", arg: 1, scope: !4526, file: !388, line: 1614, type: !1726)
!4531 = !DILocalVariable(name: "off", scope: !4526, file: !388, line: 1616, type: !1872)
!4532 = !DILocation(line: 0, scope: !4526)
!4533 = !DILocation(line: 1621, column: 28, scope: !4526)
!4534 = !DILocation(line: 1621, column: 9, scope: !4526)
!4535 = !DILocation(line: 1622, column: 3, scope: !4526)
!4536 = !DILocation(line: 1624, column: 20, scope: !4526)
!4537 = !DILocation(line: 1624, column: 32, scope: !4526)
!4538 = !DILocation(line: 1624, column: 10, scope: !4526)
!4539 = !DILocation(line: 1624, column: 3, scope: !4526)
!4540 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !388, file: !388, line: 1073, type: !4541, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4543)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!426, !1726}
!4543 = !{!4544}
!4544 = !DILocalVariable(name: "gs", arg: 1, scope: !4540, file: !388, line: 1073, type: !1726)
!4545 = !DILocation(line: 0, scope: !4540)
!4546 = !DILocation(line: 1075, column: 24, scope: !4540)
!4547 = !DILocation(line: 1075, column: 10, scope: !4540)
!4548 = !DILocation(line: 1075, column: 3, scope: !4540)
!4549 = distinct !DISubprogram(name: "gss_for_code", scope: !388, file: !388, line: 1061, type: !4550, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4552)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!426, !387}
!4552 = !{!4553}
!4553 = !DILocalVariable(name: "code", arg: 1, scope: !4549, file: !388, line: 1061, type: !387)
!4554 = !DILocation(line: 0, scope: !4549)
!4555 = !DILocation(line: 1066, column: 10, scope: !4549)
!4556 = !DILocation(line: 1066, column: 3, scope: !4549)
!4557 = distinct !DISubprogram(name: "gimple_expr_code", scope: !388, file: !388, line: 1438, type: !4445, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4558)
!4558 = !{!4559, !4560}
!4559 = !DILocalVariable(name: "stmt", arg: 1, scope: !4557, file: !388, line: 1438, type: !2746)
!4560 = !DILocalVariable(name: "code", scope: !4557, file: !388, line: 1440, type: !387)
!4561 = !DILocation(line: 0, scope: !4557)
!4562 = !DILocation(line: 1440, column: 27, scope: !4557)
!4563 = !DILocation(line: 1441, column: 29, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4557, file: !388, line: 1441, column: 7)
!4565 = !DILocation(line: 1442, column: 42, scope: !4564)
!4566 = !DILocation(line: 1442, column: 5, scope: !4564)
!4567 = !DILocation(line: 1446, column: 5, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4564, file: !388, line: 1443, column: 12)
!4569 = !DILocation(line: 1448, column: 5, scope: !4557)
!4570 = !DILocation(line: 1450, column: 1, scope: !4557)
!4571 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !388, file: !388, line: 1686, type: !4572, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4574)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!452, !134}
!4574 = !{!4575}
!4575 = !DILocalVariable(name: "code", arg: 1, scope: !4571, file: !388, line: 1686, type: !134)
!4576 = !DILocation(line: 0, scope: !4571)
!4577 = !DILocation(line: 1688, column: 34, scope: !4571)
!4578 = !DILocation(line: 1688, column: 10, scope: !4571)
!4579 = !DILocation(line: 1688, column: 3, scope: !4571)
!4580 = distinct !DISubprogram(name: "gimple_num_ops", scope: !388, file: !388, line: 1596, type: !4581, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4583)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!7, !2746}
!4583 = !{!4584}
!4584 = !DILocalVariable(name: "gs", arg: 1, scope: !4580, file: !388, line: 1596, type: !2746)
!4585 = !DILocation(line: 0, scope: !4580)
!4586 = !DILocation(line: 1598, column: 21, scope: !4580)
!4587 = !DILocation(line: 1598, column: 3, scope: !4580)
!4588 = distinct !DISubprogram(name: "VEC_histogram_value_base_space", scope: !378, file: !378, line: 68, type: !4589, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4591)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!1387, !4492, !1387}
!4591 = !{!4592, !4593}
!4592 = !DILocalVariable(name: "vec_", arg: 1, scope: !4588, file: !378, line: 68, type: !4492)
!4593 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4588, file: !378, line: 68, type: !1387)
!4594 = !DILocation(line: 0, scope: !4588)
!4595 = !DILocation(line: 68, column: 1, scope: !4588)
!4596 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !388, file: !388, line: 1954, type: !4437, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4597)
!4597 = !{!4598, !4599}
!4598 = !DILocalVariable(name: "gs", arg: 1, scope: !4596, file: !388, line: 1954, type: !2746)
!4599 = !DILocalVariable(name: "addr", scope: !4596, file: !388, line: 1956, type: !1402)
!4600 = !DILocation(line: 0, scope: !4596)
!4601 = !DILocation(line: 1956, column: 15, scope: !4596)
!4602 = !DILocation(line: 1957, column: 7, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4596, file: !388, line: 1957, column: 7)
!4604 = !DILocation(line: 1957, column: 24, scope: !4603)
!4605 = !DILocation(line: 1957, column: 7, scope: !4596)
!4606 = !DILocation(line: 1958, column: 12, scope: !4603)
!4607 = !DILocation(line: 1958, column: 5, scope: !4603)
!4608 = !DILocation(line: 1960, column: 1, scope: !4596)
!4609 = distinct !DISubprogram(name: "interesting_stringop_to_profile_p", scope: !3, file: !3, line: 1249, type: !4610, scopeLine: 1250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4613)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!1386, !1402, !1726, !4612}
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!4613 = !{!4614, !4615, !4616, !4617}
!4614 = !DILocalVariable(name: "fndecl", arg: 1, scope: !4609, file: !3, line: 1249, type: !1402)
!4615 = !DILocalVariable(name: "call", arg: 2, scope: !4609, file: !3, line: 1249, type: !1726)
!4616 = !DILocalVariable(name: "size_arg", arg: 3, scope: !4609, file: !3, line: 1249, type: !4612)
!4617 = !DILocalVariable(name: "fcode", scope: !4609, file: !3, line: 1251, type: !458)
!4618 = !DILocation(line: 0, scope: !4609)
!4619 = !DILocation(line: 1251, column: 34, scope: !4609)
!4620 = !DILocation(line: 1253, column: 32, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 1253, column: 7)
!4622 = !DILocation(line: 1261, column: 18, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 1258, column: 5)
!4624 = !DILocation(line: 1262, column: 15, scope: !4623)
!4625 = !DILocation(line: 1262, column: 8, scope: !4623)
!4626 = !DILocation(line: 1265, column: 18, scope: !4623)
!4627 = !DILocation(line: 1266, column: 15, scope: !4623)
!4628 = !DILocation(line: 1266, column: 8, scope: !4623)
!4629 = !DILocation(line: 1269, column: 18, scope: !4623)
!4630 = !DILocation(line: 1270, column: 15, scope: !4623)
!4631 = !DILocation(line: 1270, column: 8, scope: !4623)
!4632 = !DILocation(line: 1278, column: 1, scope: !4609)
!4633 = distinct !DISubprogram(name: "gimple_call_arg", scope: !388, file: !388, line: 2025, type: !4500, scopeLine: 2026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4634)
!4634 = !{!4635, !4636}
!4635 = !DILocalVariable(name: "gs", arg: 1, scope: !4633, file: !388, line: 2025, type: !2746)
!4636 = !DILocalVariable(name: "index", arg: 2, scope: !4633, file: !388, line: 2025, type: !7)
!4637 = !DILocation(line: 0, scope: !4633)
!4638 = !DILocation(line: 2028, column: 31, scope: !4633)
!4639 = !DILocation(line: 2028, column: 10, scope: !4633)
!4640 = !DILocation(line: 2028, column: 3, scope: !4633)
!4641 = distinct !DISubprogram(name: "VEC_histogram_value_heap_safe_push", scope: !378, file: !378, line: 69, type: !4642, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4644)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!2751, !4480, !1394}
!4644 = !{!4645, !4646}
!4645 = !DILocalVariable(name: "vec_", arg: 1, scope: !4641, file: !378, line: 69, type: !4480)
!4646 = !DILocalVariable(name: "obj_", arg: 2, scope: !4641, file: !378, line: 69, type: !1394)
!4647 = !DILocation(line: 0, scope: !4641)
!4648 = !DILocation(line: 69, column: 1, scope: !4641)
!4649 = distinct !DISubprogram(name: "gimple_call_fn", scope: !388, file: !388, line: 1911, type: !4437, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4650)
!4650 = !{!4651}
!4651 = !DILocalVariable(name: "gs", arg: 1, scope: !4649, file: !388, line: 1911, type: !2746)
!4652 = !DILocation(line: 0, scope: !4649)
!4653 = !DILocation(line: 1914, column: 10, scope: !4649)
!4654 = !DILocation(line: 1914, column: 3, scope: !4649)
!4655 = distinct !DISubprogram(name: "gimple_mod_subtract_transform", scope: !3, file: !3, line: 957, type: !4656, scopeLine: 958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4658)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!1386, !3937}
!4658 = !{!4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673}
!4659 = !DILocalVariable(name: "si", arg: 1, scope: !4655, file: !3, line: 957, type: !3937)
!4660 = !DILocalVariable(name: "histogram", scope: !4655, file: !3, line: 959, type: !1394)
!4661 = !DILocalVariable(name: "code", scope: !4655, file: !3, line: 960, type: !134)
!4662 = !DILocalVariable(name: "count", scope: !4655, file: !3, line: 961, type: !1938)
!4663 = !DILocalVariable(name: "wrong_values", scope: !4655, file: !3, line: 961, type: !1938)
!4664 = !DILocalVariable(name: "all", scope: !4655, file: !3, line: 961, type: !1938)
!4665 = !DILocalVariable(name: "lhs_type", scope: !4655, file: !3, line: 962, type: !1402)
!4666 = !DILocalVariable(name: "result", scope: !4655, file: !3, line: 962, type: !1402)
!4667 = !DILocalVariable(name: "prob1", scope: !4655, file: !3, line: 963, type: !1938)
!4668 = !DILocalVariable(name: "prob2", scope: !4655, file: !3, line: 963, type: !1938)
!4669 = !DILocalVariable(name: "i", scope: !4655, file: !3, line: 964, type: !7)
!4670 = !DILocalVariable(name: "steps", scope: !4655, file: !3, line: 964, type: !7)
!4671 = !DILocalVariable(name: "count1", scope: !4655, file: !3, line: 965, type: !1938)
!4672 = !DILocalVariable(name: "count2", scope: !4655, file: !3, line: 965, type: !1938)
!4673 = !DILocalVariable(name: "stmt", scope: !4655, file: !3, line: 966, type: !1726)
!4674 = !DILocation(line: 0, scope: !4655)
!4675 = !DILocation(line: 961, column: 3, scope: !4655)
!4676 = !DILocation(line: 965, column: 3, scope: !4655)
!4677 = !DILocation(line: 968, column: 10, scope: !4655)
!4678 = !DILocation(line: 969, column: 7, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 969, column: 7)
!4680 = !DILocation(line: 969, column: 26, scope: !4679)
!4681 = !DILocation(line: 969, column: 7, scope: !4655)
!4682 = !DILocation(line: 972, column: 14, scope: !4655)
!4683 = !DILocation(line: 973, column: 8, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 973, column: 7)
!4685 = !DILocation(line: 973, column: 7, scope: !4655)
!4686 = !DILocation(line: 976, column: 10, scope: !4655)
!4687 = !DILocation(line: 978, column: 12, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 978, column: 7)
!4689 = !DILocation(line: 978, column: 30, scope: !4688)
!4690 = !DILocation(line: 978, column: 34, scope: !4688)
!4691 = !DILocation(line: 978, column: 7, scope: !4655)
!4692 = !DILocation(line: 981, column: 47, scope: !4655)
!4693 = !DILocation(line: 981, column: 15, scope: !4655)
!4694 = !DILocation(line: 982, column: 8, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 982, column: 7)
!4696 = !DILocation(line: 982, column: 7, scope: !4655)
!4697 = !DILocation(line: 985, column: 7, scope: !4655)
!4698 = !DILocation(line: 0, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 987, column: 3)
!4700 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 987, column: 3)
!4701 = !DILocation(line: 987, column: 42, scope: !4699)
!4702 = !DILocation(line: 987, column: 17, scope: !4699)
!4703 = !DILocation(line: 987, column: 8, scope: !4700)
!4704 = !DILocation(line: 987, column: 3, scope: !4700)
!4705 = !DILocation(line: 988, column: 9, scope: !4699)
!4706 = !DILocation(line: 987, column: 50, scope: !4699)
!4707 = !DILocation(line: 987, column: 3, scope: !4699)
!4708 = distinct !{!4708, !4704, !4709}
!4709 = !DILocation(line: 988, column: 40, scope: !4700)
!4710 = !DILocation(line: 991, column: 47, scope: !4655)
!4711 = !DILocation(line: 991, column: 19, scope: !4655)
!4712 = !DILocation(line: 991, column: 16, scope: !4655)
!4713 = !DILocation(line: 993, column: 7, scope: !4655)
!4714 = !DILocation(line: 994, column: 12, scope: !4655)
!4715 = !DILocation(line: 994, column: 10, scope: !4655)
!4716 = !DILocation(line: 995, column: 12, scope: !4655)
!4717 = !DILocation(line: 998, column: 55, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 998, column: 7)
!4719 = !DILocation(line: 998, column: 73, scope: !4718)
!4720 = !DILocation(line: 998, column: 7, scope: !4718)
!4721 = !DILocation(line: 998, column: 7, scope: !4655)
!4722 = !DILocation(line: 1000, column: 38, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 999, column: 5)
!4724 = !DILocation(line: 1000, column: 7, scope: !4723)
!4725 = !DILocation(line: 1001, column: 7, scope: !4723)
!4726 = !DILocation(line: 1004, column: 7, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 1004, column: 7)
!4728 = !DILocation(line: 1004, column: 31, scope: !4727)
!4729 = !DILocation(line: 1007, column: 3, scope: !4655)
!4730 = !DILocation(line: 1004, column: 34, scope: !4727)
!4731 = !DILocation(line: 1004, column: 41, scope: !4727)
!4732 = !DILocation(line: 1004, column: 52, scope: !4727)
!4733 = !DILocation(line: 1004, column: 50, scope: !4727)
!4734 = !DILocation(line: 1004, column: 7, scope: !4655)
!4735 = !DILocation(line: 1005, column: 11, scope: !4727)
!4736 = !DILocation(line: 1005, column: 7, scope: !4727)
!4737 = !DILocation(line: 0, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 1015, column: 11)
!4739 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 1013, column: 5)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 1012, column: 3)
!4741 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 1012, column: 3)
!4742 = !DILocation(line: 0, scope: !4740)
!4743 = !DILocation(line: 1012, column: 8, scope: !4741)
!4744 = !DILocation(line: 0, scope: !4741)
!4745 = !DILocation(line: 1012, column: 17, scope: !4740)
!4746 = !DILocation(line: 1012, column: 3, scope: !4741)
!4747 = !DILocation(line: 1014, column: 34, scope: !4739)
!4748 = !DILocation(line: 1014, column: 16, scope: !4739)
!4749 = !DILocation(line: 1014, column: 13, scope: !4739)
!4750 = !DILocation(line: 1015, column: 17, scope: !4738)
!4751 = !DILocation(line: 1015, column: 21, scope: !4738)
!4752 = !DILocation(line: 1015, column: 11, scope: !4739)
!4753 = !DILocation(line: 1012, column: 50, scope: !4740)
!4754 = !DILocation(line: 1012, column: 3, scope: !4740)
!4755 = distinct !{!4755, !4746, !4756}
!4756 = !DILocation(line: 1017, column: 5, scope: !4741)
!4757 = !DILocation(line: 1018, column: 9, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 1018, column: 7)
!4759 = !DILocation(line: 1019, column: 7, scope: !4758)
!4760 = !DILocation(line: 1019, column: 34, scope: !4758)
!4761 = !DILocation(line: 1019, column: 10, scope: !4758)
!4762 = !DILocation(line: 1018, column: 7, scope: !4655)
!4763 = !DILocation(line: 1022, column: 34, scope: !4655)
!4764 = !DILocation(line: 1022, column: 3, scope: !4655)
!4765 = !DILocation(line: 1023, column: 7, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 1023, column: 7)
!4767 = !DILocation(line: 1023, column: 7, scope: !4655)
!4768 = !DILocation(line: 1025, column: 7, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 1024, column: 5)
!4770 = !DILocation(line: 1026, column: 26, scope: !4769)
!4771 = !DILocation(line: 1026, column: 7, scope: !4769)
!4772 = !DILocation(line: 1027, column: 5, scope: !4769)
!4773 = !DILocation(line: 1030, column: 7, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 1030, column: 7)
!4775 = !DILocation(line: 1030, column: 11, scope: !4774)
!4776 = !DILocation(line: 1030, column: 7, scope: !4655)
!4777 = !DILocation(line: 1042, column: 56, scope: !4655)
!4778 = !DILocation(line: 1032, column: 16, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 1031, column: 5)
!4780 = !DILocation(line: 1032, column: 23, scope: !4779)
!4781 = !DILocation(line: 1032, column: 48, scope: !4779)
!4782 = !DILocation(line: 1032, column: 42, scope: !4779)
!4783 = !DILocation(line: 1032, column: 53, scope: !4779)
!4784 = !DILocation(line: 1033, column: 23, scope: !4779)
!4785 = !DILocation(line: 1033, column: 42, scope: !4779)
!4786 = !DILocation(line: 1033, column: 53, scope: !4779)
!4787 = !DILocation(line: 1034, column: 5, scope: !4779)
!4788 = !DILocation(line: 1042, column: 12, scope: !4655)
!4789 = !DILocation(line: 1044, column: 3, scope: !4655)
!4790 = !DILocation(line: 1046, column: 3, scope: !4655)
!4791 = !DILocation(line: 1047, column: 1, scope: !4655)
!4792 = distinct !DISubprogram(name: "gimple_divmod_fixed_value_transform", scope: !3, file: !3, line: 635, type: !4656, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4793)
!4793 = !{!4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804}
!4794 = !DILocalVariable(name: "si", arg: 1, scope: !4792, file: !3, line: 635, type: !3937)
!4795 = !DILocalVariable(name: "histogram", scope: !4792, file: !3, line: 637, type: !1394)
!4796 = !DILocalVariable(name: "code", scope: !4792, file: !3, line: 638, type: !134)
!4797 = !DILocalVariable(name: "val", scope: !4792, file: !3, line: 639, type: !1938)
!4798 = !DILocalVariable(name: "count", scope: !4792, file: !3, line: 639, type: !1938)
!4799 = !DILocalVariable(name: "all", scope: !4792, file: !3, line: 639, type: !1938)
!4800 = !DILocalVariable(name: "result", scope: !4792, file: !3, line: 640, type: !1402)
!4801 = !DILocalVariable(name: "value", scope: !4792, file: !3, line: 640, type: !1402)
!4802 = !DILocalVariable(name: "tree_val", scope: !4792, file: !3, line: 640, type: !1402)
!4803 = !DILocalVariable(name: "prob", scope: !4792, file: !3, line: 641, type: !1938)
!4804 = !DILocalVariable(name: "stmt", scope: !4792, file: !3, line: 642, type: !1726)
!4805 = !DILocation(line: 0, scope: !4792)
!4806 = !DILocation(line: 639, column: 3, scope: !4792)
!4807 = !DILocation(line: 644, column: 10, scope: !4792)
!4808 = !DILocation(line: 645, column: 7, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 645, column: 7)
!4810 = !DILocation(line: 645, column: 26, scope: !4809)
!4811 = !DILocation(line: 645, column: 7, scope: !4792)
!4812 = !DILocation(line: 648, column: 8, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 648, column: 7)
!4814 = !DILocation(line: 648, column: 7, scope: !4792)
!4815 = !DILocation(line: 651, column: 10, scope: !4792)
!4816 = !DILocation(line: 653, column: 30, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 653, column: 7)
!4818 = !DILocation(line: 656, column: 47, scope: !4792)
!4819 = !DILocation(line: 656, column: 15, scope: !4792)
!4820 = !DILocation(line: 658, column: 8, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 658, column: 7)
!4822 = !DILocation(line: 658, column: 7, scope: !4792)
!4823 = !DILocation(line: 661, column: 29, scope: !4792)
!4824 = !DILocation(line: 662, column: 27, scope: !4792)
!4825 = !DILocation(line: 662, column: 9, scope: !4792)
!4826 = !DILocation(line: 663, column: 11, scope: !4792)
!4827 = !DILocation(line: 663, column: 9, scope: !4792)
!4828 = !DILocation(line: 664, column: 9, scope: !4792)
!4829 = !DILocation(line: 664, column: 7, scope: !4792)
!4830 = !DILocation(line: 665, column: 34, scope: !4792)
!4831 = !DILocation(line: 665, column: 3, scope: !4792)
!4832 = !DILocation(line: 670, column: 25, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 670, column: 7)
!4834 = !DILocation(line: 670, column: 7, scope: !4833)
!4835 = !DILocation(line: 670, column: 59, scope: !4833)
!4836 = !DILocation(line: 671, column: 7, scope: !4833)
!4837 = !DILocation(line: 671, column: 12, scope: !4833)
!4838 = !DILocation(line: 671, column: 20, scope: !4833)
!4839 = !DILocation(line: 672, column: 7, scope: !4833)
!4840 = !DILocation(line: 672, column: 34, scope: !4833)
!4841 = !DILocation(line: 672, column: 10, scope: !4833)
!4842 = !DILocation(line: 670, column: 7, scope: !4792)
!4843 = !DILocation(line: 675, column: 51, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 675, column: 7)
!4845 = !DILocation(line: 675, column: 69, scope: !4844)
!4846 = !DILocation(line: 675, column: 7, scope: !4844)
!4847 = !DILocation(line: 675, column: 7, scope: !4792)
!4848 = !DILocation(line: 679, column: 7, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 679, column: 7)
!4850 = !DILocation(line: 679, column: 11, scope: !4849)
!4851 = !DILocation(line: 679, column: 7, scope: !4792)
!4852 = !DILocation(line: 680, column: 13, scope: !4849)
!4853 = !DILocation(line: 680, column: 19, scope: !4849)
!4854 = !DILocation(line: 680, column: 44, scope: !4849)
!4855 = !DILocation(line: 680, column: 38, scope: !4849)
!4856 = !DILocation(line: 680, column: 49, scope: !4849)
!4857 = !DILocation(line: 680, column: 5, scope: !4849)
!4858 = !DILocation(line: 684, column: 34, scope: !4792)
!4859 = !DILocation(line: 686, column: 10, scope: !4792)
!4860 = !DILocation(line: 684, column: 14, scope: !4792)
!4861 = !DILocation(line: 687, column: 61, scope: !4792)
!4862 = !DILocation(line: 687, column: 68, scope: !4792)
!4863 = !DILocation(line: 687, column: 12, scope: !4792)
!4864 = !DILocation(line: 689, column: 7, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 689, column: 7)
!4866 = !DILocation(line: 689, column: 7, scope: !4792)
!4867 = !DILocation(line: 691, column: 7, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 690, column: 5)
!4869 = !DILocation(line: 692, column: 27, scope: !4868)
!4870 = !DILocation(line: 692, column: 7, scope: !4868)
!4871 = !DILocation(line: 693, column: 16, scope: !4868)
!4872 = !DILocation(line: 693, column: 7, scope: !4868)
!4873 = !DILocation(line: 694, column: 27, scope: !4868)
!4874 = !DILocation(line: 694, column: 7, scope: !4868)
!4875 = !DILocation(line: 695, column: 16, scope: !4868)
!4876 = !DILocation(line: 695, column: 7, scope: !4868)
!4877 = !DILocation(line: 696, column: 26, scope: !4868)
!4878 = !DILocation(line: 696, column: 7, scope: !4868)
!4879 = !DILocation(line: 697, column: 5, scope: !4868)
!4880 = !DILocation(line: 699, column: 3, scope: !4792)
!4881 = !DILocation(line: 701, column: 3, scope: !4792)
!4882 = !DILocation(line: 702, column: 1, scope: !4792)
!4883 = distinct !DISubprogram(name: "gimple_mod_pow2_value_transform", scope: !3, file: !3, line: 788, type: !4656, scopeLine: 789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4884)
!4884 = !{!4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895}
!4885 = !DILocalVariable(name: "si", arg: 1, scope: !4883, file: !3, line: 788, type: !3937)
!4886 = !DILocalVariable(name: "histogram", scope: !4883, file: !3, line: 790, type: !1394)
!4887 = !DILocalVariable(name: "code", scope: !4883, file: !3, line: 791, type: !134)
!4888 = !DILocalVariable(name: "count", scope: !4883, file: !3, line: 792, type: !1938)
!4889 = !DILocalVariable(name: "wrong_values", scope: !4883, file: !3, line: 792, type: !1938)
!4890 = !DILocalVariable(name: "all", scope: !4883, file: !3, line: 792, type: !1938)
!4891 = !DILocalVariable(name: "lhs_type", scope: !4883, file: !3, line: 793, type: !1402)
!4892 = !DILocalVariable(name: "result", scope: !4883, file: !3, line: 793, type: !1402)
!4893 = !DILocalVariable(name: "value", scope: !4883, file: !3, line: 793, type: !1402)
!4894 = !DILocalVariable(name: "prob", scope: !4883, file: !3, line: 794, type: !1938)
!4895 = !DILocalVariable(name: "stmt", scope: !4883, file: !3, line: 795, type: !1726)
!4896 = !DILocation(line: 0, scope: !4883)
!4897 = !DILocation(line: 792, column: 3, scope: !4883)
!4898 = !DILocation(line: 797, column: 10, scope: !4883)
!4899 = !DILocation(line: 798, column: 7, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 798, column: 7)
!4901 = !DILocation(line: 798, column: 26, scope: !4900)
!4902 = !DILocation(line: 798, column: 7, scope: !4883)
!4903 = !DILocation(line: 801, column: 14, scope: !4883)
!4904 = !DILocation(line: 802, column: 8, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 802, column: 7)
!4906 = !DILocation(line: 802, column: 7, scope: !4883)
!4907 = !DILocation(line: 805, column: 10, scope: !4883)
!4908 = !DILocation(line: 807, column: 12, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 807, column: 7)
!4910 = !DILocation(line: 807, column: 30, scope: !4909)
!4911 = !DILocation(line: 807, column: 34, scope: !4909)
!4912 = !DILocation(line: 807, column: 7, scope: !4883)
!4913 = !DILocation(line: 810, column: 47, scope: !4883)
!4914 = !DILocation(line: 810, column: 15, scope: !4883)
!4915 = !DILocation(line: 811, column: 8, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 811, column: 7)
!4917 = !DILocation(line: 811, column: 7, scope: !4883)
!4918 = !DILocation(line: 814, column: 29, scope: !4883)
!4919 = !DILocation(line: 815, column: 36, scope: !4883)
!4920 = !DILocation(line: 815, column: 18, scope: !4883)
!4921 = !DILocation(line: 816, column: 11, scope: !4883)
!4922 = !DILocation(line: 816, column: 9, scope: !4883)
!4923 = !DILocation(line: 818, column: 34, scope: !4883)
!4924 = !DILocation(line: 818, column: 3, scope: !4883)
!4925 = !DILocation(line: 821, column: 25, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 821, column: 7)
!4927 = !DILocation(line: 821, column: 7, scope: !4926)
!4928 = !DILocation(line: 821, column: 59, scope: !4926)
!4929 = !DILocation(line: 822, column: 16, scope: !4926)
!4930 = !DILocation(line: 822, column: 7, scope: !4926)
!4931 = !DILocation(line: 823, column: 34, scope: !4926)
!4932 = !DILocation(line: 823, column: 10, scope: !4926)
!4933 = !DILocation(line: 821, column: 7, scope: !4883)
!4934 = !DILocation(line: 826, column: 7, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 826, column: 7)
!4936 = !DILocation(line: 826, column: 7, scope: !4883)
!4937 = !DILocation(line: 828, column: 7, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 827, column: 5)
!4939 = !DILocation(line: 829, column: 26, scope: !4938)
!4940 = !DILocation(line: 829, column: 7, scope: !4938)
!4941 = !DILocation(line: 830, column: 5, scope: !4938)
!4942 = !DILocation(line: 833, column: 15, scope: !4883)
!4943 = !DILocation(line: 833, column: 7, scope: !4883)
!4944 = !DILocation(line: 835, column: 50, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 835, column: 7)
!4946 = !DILocation(line: 835, column: 68, scope: !4945)
!4947 = !DILocation(line: 835, column: 7, scope: !4945)
!4948 = !DILocation(line: 835, column: 7, scope: !4883)
!4949 = !DILocation(line: 838, column: 7, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 838, column: 7)
!4951 = !DILocation(line: 838, column: 11, scope: !4950)
!4952 = !DILocation(line: 838, column: 7, scope: !4883)
!4953 = !DILocation(line: 843, column: 41, scope: !4883)
!4954 = !DILocation(line: 839, column: 13, scope: !4950)
!4955 = !DILocation(line: 839, column: 19, scope: !4950)
!4956 = !DILocation(line: 839, column: 44, scope: !4950)
!4957 = !DILocation(line: 839, column: 38, scope: !4950)
!4958 = !DILocation(line: 839, column: 49, scope: !4950)
!4959 = !DILocation(line: 839, column: 5, scope: !4950)
!4960 = !DILocation(line: 843, column: 12, scope: !4883)
!4961 = !DILocation(line: 845, column: 3, scope: !4883)
!4962 = !DILocation(line: 847, column: 3, scope: !4883)
!4963 = !DILocation(line: 848, column: 1, scope: !4883)
!4964 = distinct !DISubprogram(name: "gimple_stringops_transform", scope: !3, file: !3, line: 1364, type: !4656, scopeLine: 1365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4965)
!4965 = !{!4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981}
!4966 = !DILocalVariable(name: "gsi", arg: 1, scope: !4964, file: !3, line: 1364, type: !3937)
!4967 = !DILocalVariable(name: "stmt", scope: !4964, file: !3, line: 1366, type: !1726)
!4968 = !DILocalVariable(name: "fndecl", scope: !4964, file: !3, line: 1367, type: !1402)
!4969 = !DILocalVariable(name: "blck_size", scope: !4964, file: !3, line: 1368, type: !1402)
!4970 = !DILocalVariable(name: "fcode", scope: !4964, file: !3, line: 1369, type: !458)
!4971 = !DILocalVariable(name: "histogram", scope: !4964, file: !3, line: 1370, type: !1394)
!4972 = !DILocalVariable(name: "count", scope: !4964, file: !3, line: 1371, type: !1938)
!4973 = !DILocalVariable(name: "all", scope: !4964, file: !3, line: 1371, type: !1938)
!4974 = !DILocalVariable(name: "val", scope: !4964, file: !3, line: 1371, type: !1938)
!4975 = !DILocalVariable(name: "dest", scope: !4964, file: !3, line: 1372, type: !1402)
!4976 = !DILocalVariable(name: "src", scope: !4964, file: !3, line: 1372, type: !1402)
!4977 = !DILocalVariable(name: "dest_align", scope: !4964, file: !3, line: 1373, type: !7)
!4978 = !DILocalVariable(name: "src_align", scope: !4964, file: !3, line: 1373, type: !7)
!4979 = !DILocalVariable(name: "prob", scope: !4964, file: !3, line: 1374, type: !1938)
!4980 = !DILocalVariable(name: "tree_val", scope: !4964, file: !3, line: 1375, type: !1402)
!4981 = !DILocalVariable(name: "size_arg", scope: !4964, file: !3, line: 1376, type: !1387)
!4982 = !DILocation(line: 0, scope: !4964)
!4983 = !DILocation(line: 1366, column: 17, scope: !4964)
!4984 = !DILocation(line: 1371, column: 3, scope: !4964)
!4985 = !DILocation(line: 1376, column: 3, scope: !4964)
!4986 = !DILocation(line: 1378, column: 7, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 1378, column: 7)
!4988 = !DILocation(line: 1378, column: 26, scope: !4987)
!4989 = !DILocation(line: 1378, column: 7, scope: !4964)
!4990 = !DILocation(line: 1380, column: 12, scope: !4964)
!4991 = !DILocation(line: 1381, column: 8, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 1381, column: 7)
!4993 = !DILocation(line: 1381, column: 7, scope: !4964)
!4994 = !DILocation(line: 1383, column: 11, scope: !4964)
!4995 = !DILocation(line: 1384, column: 8, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 1384, column: 7)
!4997 = !DILocation(line: 1384, column: 7, scope: !4964)
!4998 = !DILocation(line: 1387, column: 38, scope: !4964)
!4999 = !DILocation(line: 1387, column: 15, scope: !4964)
!5000 = !DILocation(line: 1388, column: 7, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 1388, column: 7)
!5002 = !DILocation(line: 1388, column: 29, scope: !5001)
!5003 = !DILocation(line: 1388, column: 7, scope: !4964)
!5004 = !DILocation(line: 1391, column: 47, scope: !4964)
!5005 = !DILocation(line: 1391, column: 15, scope: !4964)
!5006 = !DILocation(line: 1392, column: 8, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 1392, column: 7)
!5008 = !DILocation(line: 1392, column: 7, scope: !4964)
!5009 = !DILocation(line: 1394, column: 27, scope: !4964)
!5010 = !DILocation(line: 1394, column: 9, scope: !4964)
!5011 = !DILocation(line: 1395, column: 11, scope: !4964)
!5012 = !DILocation(line: 1395, column: 9, scope: !4964)
!5013 = !DILocation(line: 1396, column: 9, scope: !4964)
!5014 = !DILocation(line: 1396, column: 7, scope: !4964)
!5015 = !DILocation(line: 1397, column: 34, scope: !4964)
!5016 = !DILocation(line: 1397, column: 3, scope: !4964)
!5017 = !DILocation(line: 1401, column: 10, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 1401, column: 7)
!5019 = !DILocation(line: 1401, column: 18, scope: !5018)
!5020 = !DILocation(line: 1401, column: 23, scope: !5018)
!5021 = !DILocation(line: 1401, column: 29, scope: !5018)
!5022 = !DILocation(line: 1401, column: 56, scope: !5018)
!5023 = !DILocation(line: 1401, column: 32, scope: !5018)
!5024 = !DILocation(line: 1401, column: 7, scope: !4964)
!5025 = !DILocation(line: 1403, column: 51, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 1403, column: 7)
!5027 = !DILocation(line: 1403, column: 69, scope: !5026)
!5028 = !DILocation(line: 1403, column: 7, scope: !5026)
!5029 = !DILocation(line: 1403, column: 7, scope: !4964)
!5030 = !DILocation(line: 1405, column: 7, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 1405, column: 7)
!5032 = !DILocation(line: 1405, column: 11, scope: !5031)
!5033 = !DILocation(line: 1405, column: 7, scope: !4964)
!5034 = !DILocation(line: 1406, column: 13, scope: !5031)
!5035 = !DILocation(line: 1406, column: 19, scope: !5031)
!5036 = !DILocation(line: 1406, column: 44, scope: !5031)
!5037 = !DILocation(line: 1406, column: 38, scope: !5031)
!5038 = !DILocation(line: 1406, column: 49, scope: !5031)
!5039 = !DILocation(line: 1406, column: 5, scope: !5031)
!5040 = !DILocation(line: 1409, column: 10, scope: !4964)
!5041 = !DILocation(line: 1410, column: 45, scope: !4964)
!5042 = !DILocation(line: 1410, column: 16, scope: !4964)
!5043 = !DILocation(line: 1411, column: 3, scope: !4964)
!5044 = !DILocation(line: 1415, column: 13, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 1412, column: 5)
!5046 = !DILocation(line: 1416, column: 47, scope: !5045)
!5047 = !DILocation(line: 1416, column: 19, scope: !5045)
!5048 = !DILocation(line: 1417, column: 37, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 1417, column: 11)
!5050 = !DILocation(line: 1417, column: 12, scope: !5049)
!5051 = !DILocation(line: 1417, column: 11, scope: !5045)
!5052 = !DILocation(line: 1422, column: 5, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 1421, column: 11)
!5054 = !DILocation(line: 1421, column: 12, scope: !5053)
!5055 = !DILocation(line: 1421, column: 11, scope: !5045)
!5056 = !DILocation(line: 1428, column: 5, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 1427, column: 11)
!5058 = !DILocation(line: 1427, column: 12, scope: !5057)
!5059 = !DILocation(line: 1427, column: 11, scope: !5045)
!5060 = !DILocation(line: 1433, column: 7, scope: !5045)
!5061 = !DILocation(line: 1434, column: 5, scope: !5045)
!5062 = !DILocation(line: 1435, column: 34, scope: !4964)
!5063 = !DILocation(line: 1437, column: 10, scope: !4964)
!5064 = !DILocation(line: 1435, column: 14, scope: !4964)
!5065 = !DILocation(line: 1438, column: 7, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 1438, column: 7)
!5067 = !DILocation(line: 1438, column: 7, scope: !4964)
!5068 = !DILocation(line: 1441, column: 9, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 1439, column: 5)
!5070 = !DILocation(line: 1440, column: 7, scope: !5069)
!5071 = !DILocation(line: 1442, column: 26, scope: !5069)
!5072 = !DILocation(line: 1442, column: 7, scope: !5069)
!5073 = !DILocation(line: 1443, column: 5, scope: !5069)
!5074 = !DILocation(line: 1444, column: 54, scope: !4964)
!5075 = !DILocation(line: 1444, column: 61, scope: !4964)
!5076 = !DILocation(line: 1444, column: 3, scope: !4964)
!5077 = !DILocation(line: 1446, column: 3, scope: !4964)
!5078 = !DILocation(line: 1447, column: 1, scope: !4964)
!5079 = distinct !DISubprogram(name: "gimple_ic_transform", scope: !3, file: !3, line: 1179, type: !5080, scopeLine: 1180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5082)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!1386, !1726}
!5082 = !{!5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092}
!5083 = !DILocalVariable(name: "stmt", arg: 1, scope: !5079, file: !3, line: 1179, type: !1726)
!5084 = !DILocalVariable(name: "histogram", scope: !5079, file: !3, line: 1181, type: !1394)
!5085 = !DILocalVariable(name: "val", scope: !5079, file: !3, line: 1182, type: !1938)
!5086 = !DILocalVariable(name: "count", scope: !5079, file: !3, line: 1182, type: !1938)
!5087 = !DILocalVariable(name: "all", scope: !5079, file: !3, line: 1182, type: !1938)
!5088 = !DILocalVariable(name: "bb_all", scope: !5079, file: !3, line: 1182, type: !1938)
!5089 = !DILocalVariable(name: "prob", scope: !5079, file: !3, line: 1183, type: !1938)
!5090 = !DILocalVariable(name: "callee", scope: !5079, file: !3, line: 1184, type: !1402)
!5091 = !DILocalVariable(name: "modify", scope: !5079, file: !3, line: 1185, type: !1726)
!5092 = !DILocalVariable(name: "direct_call", scope: !5079, file: !3, line: 1186, type: !2765)
!5093 = !DILocation(line: 0, scope: !5079)
!5094 = !DILocation(line: 1182, column: 3, scope: !5079)
!5095 = !DILocation(line: 1188, column: 7, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 1188, column: 7)
!5097 = !DILocation(line: 1188, column: 26, scope: !5096)
!5098 = !DILocation(line: 1188, column: 7, scope: !5079)
!5099 = !DILocation(line: 1191, column: 12, scope: !5079)
!5100 = !DILocation(line: 1193, column: 7, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 1193, column: 7)
!5102 = !DILocation(line: 1193, column: 26, scope: !5101)
!5103 = !DILocation(line: 1193, column: 7, scope: !5079)
!5104 = !DILocation(line: 1196, column: 47, scope: !5079)
!5105 = !DILocation(line: 1196, column: 15, scope: !5079)
!5106 = !DILocation(line: 1197, column: 8, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 1197, column: 7)
!5108 = !DILocation(line: 1197, column: 7, scope: !5079)
!5109 = !DILocation(line: 1200, column: 27, scope: !5079)
!5110 = !DILocation(line: 1200, column: 9, scope: !5079)
!5111 = !DILocation(line: 1201, column: 11, scope: !5079)
!5112 = !DILocation(line: 1201, column: 9, scope: !5079)
!5113 = !DILocation(line: 1202, column: 9, scope: !5079)
!5114 = !DILocation(line: 1202, column: 7, scope: !5079)
!5115 = !DILocation(line: 1203, column: 34, scope: !5079)
!5116 = !DILocation(line: 1203, column: 3, scope: !5079)
!5117 = !DILocation(line: 1205, column: 9, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 1205, column: 7)
!5119 = !DILocation(line: 1205, column: 22, scope: !5118)
!5120 = !DILocation(line: 1205, column: 17, scope: !5118)
!5121 = !DILocation(line: 1205, column: 7, scope: !5079)
!5122 = !DILocation(line: 1208, column: 12, scope: !5079)
!5123 = !DILocation(line: 1208, column: 30, scope: !5079)
!5124 = !DILocation(line: 1208, column: 10, scope: !5079)
!5125 = !DILocation(line: 1212, column: 8, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 1212, column: 8)
!5127 = !DILocation(line: 1213, column: 7, scope: !5126)
!5128 = !DILocation(line: 1213, column: 51, scope: !5126)
!5129 = !DILocation(line: 1213, column: 10, scope: !5126)
!5130 = !DILocation(line: 1212, column: 8, scope: !5079)
!5131 = !DILocation(line: 1216, column: 7, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 1216, column: 7)
!5133 = !DILocation(line: 1216, column: 11, scope: !5132)
!5134 = !DILocation(line: 1216, column: 7, scope: !5079)
!5135 = !DILocation(line: 1217, column: 13, scope: !5132)
!5136 = !DILocation(line: 1217, column: 19, scope: !5132)
!5137 = !DILocation(line: 1217, column: 44, scope: !5132)
!5138 = !DILocation(line: 1217, column: 38, scope: !5132)
!5139 = !DILocation(line: 1217, column: 49, scope: !5132)
!5140 = !DILocation(line: 1217, column: 5, scope: !5132)
!5141 = !DILocation(line: 1220, column: 35, scope: !5079)
!5142 = !DILocation(line: 1220, column: 17, scope: !5079)
!5143 = !DILocation(line: 1222, column: 19, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 1222, column: 7)
!5145 = !DILocation(line: 1222, column: 7, scope: !5079)
!5146 = !DILocation(line: 1225, column: 48, scope: !5079)
!5147 = !DILocation(line: 1225, column: 55, scope: !5079)
!5148 = !DILocation(line: 1225, column: 12, scope: !5079)
!5149 = !DILocation(line: 1227, column: 7, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 1227, column: 7)
!5151 = !DILocation(line: 1227, column: 7, scope: !5079)
!5152 = !DILocation(line: 1229, column: 7, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 1228, column: 5)
!5154 = !DILocation(line: 1230, column: 27, scope: !5153)
!5155 = !DILocation(line: 1230, column: 38, scope: !5153)
!5156 = !DILocation(line: 1230, column: 7, scope: !5153)
!5157 = !DILocation(line: 1231, column: 16, scope: !5153)
!5158 = !DILocation(line: 1231, column: 7, scope: !5153)
!5159 = !DILocation(line: 1232, column: 27, scope: !5153)
!5160 = !DILocation(line: 1232, column: 51, scope: !5153)
!5161 = !DILocation(line: 1232, column: 7, scope: !5153)
!5162 = !DILocation(line: 1233, column: 16, scope: !5153)
!5163 = !DILocation(line: 1233, column: 7, scope: !5153)
!5164 = !DILocation(line: 1234, column: 26, scope: !5153)
!5165 = !DILocation(line: 1234, column: 7, scope: !5153)
!5166 = !DILocation(line: 1235, column: 16, scope: !5153)
!5167 = !DILocation(line: 1235, column: 7, scope: !5153)
!5168 = !DILocation(line: 1236, column: 26, scope: !5153)
!5169 = !DILocation(line: 1236, column: 7, scope: !5153)
!5170 = !DILocation(line: 1237, column: 16, scope: !5153)
!5171 = !DILocation(line: 1238, column: 53, scope: !5153)
!5172 = !DILocation(line: 1238, column: 60, scope: !5153)
!5173 = !DILocation(line: 1237, column: 7, scope: !5153)
!5174 = !DILocation(line: 1239, column: 5, scope: !5153)
!5175 = !DILocation(line: 1242, column: 1, scope: !5079)
!5176 = distinct !DISubprogram(name: "gimple_bb", scope: !388, file: !388, line: 1112, type: !5177, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5179)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{!1690, !2746}
!5179 = !{!5180}
!5180 = !DILocalVariable(name: "g", arg: 1, scope: !5176, file: !388, line: 1112, type: !2746)
!5181 = !DILocation(line: 0, scope: !5176)
!5182 = !DILocation(line: 1114, column: 20, scope: !5176)
!5183 = !DILocation(line: 1114, column: 3, scope: !5176)
!5184 = distinct !DISubprogram(name: "check_counter", scope: !3, file: !3, line: 456, type: !5185, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5187)
!5185 = !DISubroutineType(types: !5186)
!5186 = !{!1386, !1726, !1392, !2731, !2731, !1938}
!5187 = !{!5188, !5189, !5190, !5191, !5192, !5193}
!5188 = !DILocalVariable(name: "stmt", arg: 1, scope: !5184, file: !3, line: 456, type: !1726)
!5189 = !DILocalVariable(name: "name", arg: 2, scope: !5184, file: !3, line: 456, type: !1392)
!5190 = !DILocalVariable(name: "count", arg: 3, scope: !5184, file: !3, line: 457, type: !2731)
!5191 = !DILocalVariable(name: "all", arg: 4, scope: !5184, file: !3, line: 457, type: !2731)
!5192 = !DILocalVariable(name: "bb_count", arg: 5, scope: !5184, file: !3, line: 457, type: !1938)
!5193 = !DILocalVariable(name: "locus", scope: !5194, file: !3, line: 461, type: !1527)
!5194 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 460, column: 5)
!5195 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 459, column: 7)
!5196 = !DILocation(line: 0, scope: !5184)
!5197 = !DILocation(line: 459, column: 7, scope: !5195)
!5198 = !DILocation(line: 459, column: 12, scope: !5195)
!5199 = !DILocation(line: 459, column: 24, scope: !5195)
!5200 = !DILocation(line: 459, column: 27, scope: !5195)
!5201 = !DILocation(line: 459, column: 34, scope: !5195)
!5202 = !DILocation(line: 459, column: 7, scope: !5184)
!5203 = !DILocation(line: 462, column: 21, scope: !5194)
!5204 = !DILocation(line: 462, column: 15, scope: !5194)
!5205 = !DILocation(line: 463, column: 17, scope: !5194)
!5206 = !DILocation(line: 0, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5194, file: !3, line: 465, column: 11)
!5208 = !DILocation(line: 464, column: 17, scope: !5194)
!5209 = !DILocation(line: 0, scope: !5194)
!5210 = !DILocation(line: 465, column: 11, scope: !5207)
!5211 = !DILocation(line: 465, column: 11, scope: !5194)
!5212 = !DILocation(line: 467, column: 4, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 466, column: 9)
!5214 = !DILocation(line: 470, column: 9, scope: !5213)
!5215 = !DILocation(line: 471, column: 8, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 471, column: 8)
!5217 = !DILocation(line: 471, column: 15, scope: !5216)
!5218 = !DILocation(line: 471, column: 8, scope: !5213)
!5219 = !DILocation(line: 472, column: 20, scope: !5216)
!5220 = !DILocation(line: 472, column: 13, scope: !5216)
!5221 = !DILocation(line: 477, column: 4, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 476, column: 2)
!5223 = !DILocation(line: 480, column: 4, scope: !5222)
!5224 = !DILocation(line: 485, column: 1, scope: !5184)
!5225 = distinct !DISubprogram(name: "gimple_mod_subtract", scope: !3, file: !3, line: 860, type: !5226, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5228)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!1402, !1726, !1387, !1387, !1387, !1938, !1938, !1938}
!5228 = !{!5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256}
!5229 = !DILocalVariable(name: "stmt", arg: 1, scope: !5225, file: !3, line: 860, type: !1726)
!5230 = !DILocalVariable(name: "prob1", arg: 2, scope: !5225, file: !3, line: 860, type: !1387)
!5231 = !DILocalVariable(name: "prob2", arg: 3, scope: !5225, file: !3, line: 860, type: !1387)
!5232 = !DILocalVariable(name: "ncounts", arg: 4, scope: !5225, file: !3, line: 860, type: !1387)
!5233 = !DILocalVariable(name: "count1", arg: 5, scope: !5225, file: !3, line: 861, type: !1938)
!5234 = !DILocalVariable(name: "count2", arg: 6, scope: !5225, file: !3, line: 861, type: !1938)
!5235 = !DILocalVariable(name: "all", arg: 7, scope: !5225, file: !3, line: 861, type: !1938)
!5236 = !DILocalVariable(name: "stmt1", scope: !5225, file: !3, line: 863, type: !1726)
!5237 = !DILocalVariable(name: "stmt2", scope: !5225, file: !3, line: 863, type: !1726)
!5238 = !DILocalVariable(name: "stmt3", scope: !5225, file: !3, line: 863, type: !1726)
!5239 = !DILocalVariable(name: "tmp1", scope: !5225, file: !3, line: 864, type: !1402)
!5240 = !DILocalVariable(name: "bb1end", scope: !5225, file: !3, line: 865, type: !1726)
!5241 = !DILocalVariable(name: "bb2end", scope: !5225, file: !3, line: 865, type: !1726)
!5242 = !DILocalVariable(name: "bb3end", scope: !5225, file: !3, line: 865, type: !1726)
!5243 = !DILocalVariable(name: "bb", scope: !5225, file: !3, line: 866, type: !2160)
!5244 = !DILocalVariable(name: "bb2", scope: !5225, file: !3, line: 866, type: !2160)
!5245 = !DILocalVariable(name: "bb3", scope: !5225, file: !3, line: 866, type: !2160)
!5246 = !DILocalVariable(name: "bb4", scope: !5225, file: !3, line: 866, type: !2160)
!5247 = !DILocalVariable(name: "optype", scope: !5225, file: !3, line: 867, type: !1402)
!5248 = !DILocalVariable(name: "op1", scope: !5225, file: !3, line: 867, type: !1402)
!5249 = !DILocalVariable(name: "op2", scope: !5225, file: !3, line: 867, type: !1402)
!5250 = !DILocalVariable(name: "e12", scope: !5225, file: !3, line: 868, type: !1706)
!5251 = !DILocalVariable(name: "e23", scope: !5225, file: !3, line: 868, type: !1706)
!5252 = !DILocalVariable(name: "e24", scope: !5225, file: !3, line: 868, type: !1706)
!5253 = !DILocalVariable(name: "e34", scope: !5225, file: !3, line: 868, type: !1706)
!5254 = !DILocalVariable(name: "e14", scope: !5225, file: !3, line: 868, type: !1706)
!5255 = !DILocalVariable(name: "gsi", scope: !5225, file: !3, line: 869, type: !3825)
!5256 = !DILocalVariable(name: "result", scope: !5225, file: !3, line: 870, type: !1402)
!5257 = !DILocation(line: 0, scope: !5225)
!5258 = !DILocation(line: 869, column: 3, scope: !5225)
!5259 = !DILocation(line: 872, column: 3, scope: !5225)
!5260 = !DILocation(line: 875, column: 12, scope: !5225)
!5261 = !DILocation(line: 876, column: 9, scope: !5225)
!5262 = !DILocation(line: 877, column: 9, scope: !5225)
!5263 = !DILocation(line: 879, column: 8, scope: !5225)
!5264 = !DILocation(line: 880, column: 9, scope: !5225)
!5265 = !DILocation(line: 882, column: 12, scope: !5225)
!5266 = !DILocation(line: 883, column: 10, scope: !5225)
!5267 = !DILocation(line: 884, column: 11, scope: !5225)
!5268 = !DILocation(line: 885, column: 11, scope: !5225)
!5269 = !DILocation(line: 886, column: 11, scope: !5225)
!5270 = !DILocation(line: 887, column: 3, scope: !5225)
!5271 = !DILocation(line: 888, column: 3, scope: !5225)
!5272 = !DILocation(line: 889, column: 3, scope: !5225)
!5273 = !DILocation(line: 892, column: 7, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 892, column: 7)
!5275 = !DILocation(line: 892, column: 7, scope: !5225)
!5276 = !DILocation(line: 894, column: 15, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5274, file: !3, line: 893, column: 5)
!5278 = !DILocation(line: 895, column: 15, scope: !5277)
!5279 = !DILocation(line: 896, column: 7, scope: !5277)
!5280 = !DILocation(line: 897, column: 7, scope: !5277)
!5281 = !DILocation(line: 899, column: 5, scope: !5277)
!5282 = !DILocation(line: 902, column: 11, scope: !5225)
!5283 = !DILocation(line: 904, column: 3, scope: !5225)
!5284 = !DILocation(line: 911, column: 26, scope: !5225)
!5285 = !DILocation(line: 911, column: 9, scope: !5225)
!5286 = !DILocation(line: 912, column: 14, scope: !5225)
!5287 = !DILocation(line: 913, column: 20, scope: !5225)
!5288 = !DILocation(line: 913, column: 8, scope: !5225)
!5289 = !DILocation(line: 913, column: 14, scope: !5225)
!5290 = !DILocation(line: 915, column: 7, scope: !5225)
!5291 = !DILocation(line: 917, column: 13, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 916, column: 5)
!5293 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 915, column: 7)
!5294 = !DILocation(line: 918, column: 18, scope: !5292)
!5295 = !DILocation(line: 919, column: 33, scope: !5292)
!5296 = !DILocation(line: 919, column: 12, scope: !5292)
!5297 = !DILocation(line: 919, column: 18, scope: !5292)
!5298 = !DILocation(line: 920, column: 5, scope: !5292)
!5299 = !DILocation(line: 922, column: 22, scope: !5225)
!5300 = !DILocation(line: 922, column: 43, scope: !5225)
!5301 = !DILocation(line: 922, column: 9, scope: !5225)
!5302 = !DILocation(line: 923, column: 14, scope: !5225)
!5303 = !DILocation(line: 924, column: 8, scope: !5225)
!5304 = !DILocation(line: 924, column: 14, scope: !5225)
!5305 = !DILocation(line: 926, column: 8, scope: !5225)
!5306 = !DILocation(line: 926, column: 14, scope: !5225)
!5307 = !DILocation(line: 927, column: 14, scope: !5225)
!5308 = !DILocation(line: 928, column: 39, scope: !5225)
!5309 = !DILocation(line: 928, column: 8, scope: !5225)
!5310 = !DILocation(line: 928, column: 20, scope: !5225)
!5311 = !DILocation(line: 929, column: 8, scope: !5225)
!5312 = !DILocation(line: 929, column: 14, scope: !5225)
!5313 = !DILocation(line: 931, column: 9, scope: !5225)
!5314 = !DILocation(line: 932, column: 8, scope: !5225)
!5315 = !DILocation(line: 932, column: 20, scope: !5225)
!5316 = !DILocation(line: 933, column: 8, scope: !5225)
!5317 = !DILocation(line: 933, column: 14, scope: !5225)
!5318 = !DILocation(line: 935, column: 7, scope: !5225)
!5319 = !DILocation(line: 948, column: 29, scope: !5225)
!5320 = !DILocation(line: 937, column: 12, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 936, column: 5)
!5322 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 935, column: 7)
!5323 = !DILocation(line: 937, column: 18, scope: !5321)
!5324 = !DILocation(line: 938, column: 18, scope: !5321)
!5325 = !DILocation(line: 939, column: 33, scope: !5321)
!5326 = !DILocation(line: 939, column: 12, scope: !5321)
!5327 = !DILocation(line: 939, column: 18, scope: !5321)
!5328 = !DILocation(line: 940, column: 43, scope: !5321)
!5329 = !DILocation(line: 940, column: 12, scope: !5321)
!5330 = !DILocation(line: 940, column: 24, scope: !5321)
!5331 = !DILocation(line: 942, column: 13, scope: !5321)
!5332 = !DILocation(line: 943, column: 12, scope: !5321)
!5333 = !DILocation(line: 943, column: 24, scope: !5321)
!5334 = !DILocation(line: 944, column: 12, scope: !5321)
!5335 = !DILocation(line: 944, column: 18, scope: !5321)
!5336 = !DILocation(line: 945, column: 5, scope: !5321)
!5337 = !DILocation(line: 947, column: 8, scope: !5225)
!5338 = !DILocation(line: 947, column: 20, scope: !5225)
!5339 = !DILocation(line: 948, column: 8, scope: !5225)
!5340 = !DILocation(line: 948, column: 14, scope: !5225)
!5341 = !DILocation(line: 951, column: 1, scope: !5225)
!5342 = !DILocation(line: 950, column: 3, scope: !5225)
!5343 = distinct !DISubprogram(name: "gimple_location", scope: !388, file: !388, line: 1139, type: !5344, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5346)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!1527, !2746}
!5346 = !{!5347}
!5347 = !DILocalVariable(name: "g", arg: 1, scope: !5343, file: !388, line: 1139, type: !2746)
!5348 = !DILocation(line: 0, scope: !5343)
!5349 = !DILocation(line: 1141, column: 20, scope: !5343)
!5350 = !DILocation(line: 1141, column: 3, scope: !5343)
!5351 = distinct !DISubprogram(name: "is_gimple_assign", scope: !388, file: !388, line: 1677, type: !4515, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5352)
!5352 = !{!5353}
!5353 = !DILocalVariable(name: "gs", arg: 1, scope: !5351, file: !388, line: 1677, type: !2746)
!5354 = !DILocation(line: 0, scope: !5351)
!5355 = !DILocation(line: 1679, column: 10, scope: !5351)
!5356 = !DILocation(line: 1679, column: 27, scope: !5351)
!5357 = !DILocation(line: 1679, column: 3, scope: !5351)
!5358 = distinct !DISubprogram(name: "gimple_divmod_fixed_value", scope: !3, file: !3, line: 555, type: !5359, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5361)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!1402, !1726, !1402, !1387, !1938, !1938}
!5361 = !{!5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388}
!5362 = !DILocalVariable(name: "stmt", arg: 1, scope: !5358, file: !3, line: 555, type: !1726)
!5363 = !DILocalVariable(name: "value", arg: 2, scope: !5358, file: !3, line: 555, type: !1402)
!5364 = !DILocalVariable(name: "prob", arg: 3, scope: !5358, file: !3, line: 555, type: !1387)
!5365 = !DILocalVariable(name: "count", arg: 4, scope: !5358, file: !3, line: 555, type: !1938)
!5366 = !DILocalVariable(name: "all", arg: 5, scope: !5358, file: !3, line: 556, type: !1938)
!5367 = !DILocalVariable(name: "stmt1", scope: !5358, file: !3, line: 558, type: !1726)
!5368 = !DILocalVariable(name: "stmt2", scope: !5358, file: !3, line: 558, type: !1726)
!5369 = !DILocalVariable(name: "stmt3", scope: !5358, file: !3, line: 558, type: !1726)
!5370 = !DILocalVariable(name: "tmp1", scope: !5358, file: !3, line: 559, type: !1402)
!5371 = !DILocalVariable(name: "tmp2", scope: !5358, file: !3, line: 559, type: !1402)
!5372 = !DILocalVariable(name: "tmpv", scope: !5358, file: !3, line: 559, type: !1402)
!5373 = !DILocalVariable(name: "bb1end", scope: !5358, file: !3, line: 560, type: !1726)
!5374 = !DILocalVariable(name: "bb2end", scope: !5358, file: !3, line: 560, type: !1726)
!5375 = !DILocalVariable(name: "bb3end", scope: !5358, file: !3, line: 560, type: !1726)
!5376 = !DILocalVariable(name: "bb", scope: !5358, file: !3, line: 561, type: !2160)
!5377 = !DILocalVariable(name: "bb2", scope: !5358, file: !3, line: 561, type: !2160)
!5378 = !DILocalVariable(name: "bb3", scope: !5358, file: !3, line: 561, type: !2160)
!5379 = !DILocalVariable(name: "bb4", scope: !5358, file: !3, line: 561, type: !2160)
!5380 = !DILocalVariable(name: "optype", scope: !5358, file: !3, line: 562, type: !1402)
!5381 = !DILocalVariable(name: "op1", scope: !5358, file: !3, line: 562, type: !1402)
!5382 = !DILocalVariable(name: "op2", scope: !5358, file: !3, line: 562, type: !1402)
!5383 = !DILocalVariable(name: "e12", scope: !5358, file: !3, line: 563, type: !1706)
!5384 = !DILocalVariable(name: "e13", scope: !5358, file: !3, line: 563, type: !1706)
!5385 = !DILocalVariable(name: "e23", scope: !5358, file: !3, line: 563, type: !1706)
!5386 = !DILocalVariable(name: "e24", scope: !5358, file: !3, line: 563, type: !1706)
!5387 = !DILocalVariable(name: "e34", scope: !5358, file: !3, line: 563, type: !1706)
!5388 = !DILocalVariable(name: "gsi", scope: !5358, file: !3, line: 564, type: !3825)
!5389 = !DILocation(line: 0, scope: !5358)
!5390 = !DILocation(line: 564, column: 3, scope: !5358)
!5391 = !DILocation(line: 566, column: 3, scope: !5358)
!5392 = !DILocation(line: 570, column: 12, scope: !5358)
!5393 = !DILocation(line: 571, column: 9, scope: !5358)
!5394 = !DILocation(line: 572, column: 9, scope: !5358)
!5395 = !DILocation(line: 574, column: 8, scope: !5358)
!5396 = !DILocation(line: 575, column: 9, scope: !5358)
!5397 = !DILocation(line: 577, column: 10, scope: !5358)
!5398 = !DILocation(line: 578, column: 10, scope: !5358)
!5399 = !DILocation(line: 579, column: 11, scope: !5358)
!5400 = !DILocation(line: 580, column: 11, scope: !5358)
!5401 = !DILocation(line: 581, column: 11, scope: !5358)
!5402 = !DILocation(line: 582, column: 3, scope: !5358)
!5403 = !DILocation(line: 583, column: 3, scope: !5358)
!5404 = !DILocation(line: 584, column: 3, scope: !5358)
!5405 = !DILocation(line: 587, column: 10, scope: !5358)
!5406 = !DILocation(line: 588, column: 11, scope: !5358)
!5407 = !DILocation(line: 590, column: 3, scope: !5358)
!5408 = !DILocation(line: 593, column: 11, scope: !5358)
!5409 = !DILocation(line: 595, column: 3, scope: !5358)
!5410 = !DILocation(line: 600, column: 26, scope: !5358)
!5411 = !DILocation(line: 600, column: 9, scope: !5358)
!5412 = !DILocation(line: 601, column: 14, scope: !5358)
!5413 = !DILocation(line: 602, column: 8, scope: !5358)
!5414 = !DILocation(line: 602, column: 14, scope: !5358)
!5415 = !DILocation(line: 603, column: 27, scope: !5358)
!5416 = !DILocation(line: 603, column: 9, scope: !5358)
!5417 = !DILocation(line: 604, column: 14, scope: !5358)
!5418 = !DILocation(line: 605, column: 20, scope: !5358)
!5419 = !DILocation(line: 605, column: 8, scope: !5358)
!5420 = !DILocation(line: 605, column: 14, scope: !5358)
!5421 = !DILocation(line: 606, column: 27, scope: !5358)
!5422 = !DILocation(line: 606, column: 9, scope: !5358)
!5423 = !DILocation(line: 607, column: 14, scope: !5358)
!5424 = !DILocation(line: 608, column: 8, scope: !5358)
!5425 = !DILocation(line: 608, column: 14, scope: !5358)
!5426 = !DILocation(line: 610, column: 8, scope: !5358)
!5427 = !DILocation(line: 610, column: 14, scope: !5358)
!5428 = !DILocation(line: 611, column: 14, scope: !5358)
!5429 = !DILocation(line: 612, column: 8, scope: !5358)
!5430 = !DILocation(line: 612, column: 20, scope: !5358)
!5431 = !DILocation(line: 613, column: 8, scope: !5358)
!5432 = !DILocation(line: 613, column: 14, scope: !5358)
!5433 = !DILocation(line: 615, column: 9, scope: !5358)
!5434 = !DILocation(line: 616, column: 39, scope: !5358)
!5435 = !DILocation(line: 616, column: 8, scope: !5358)
!5436 = !DILocation(line: 616, column: 20, scope: !5358)
!5437 = !DILocation(line: 617, column: 8, scope: !5358)
!5438 = !DILocation(line: 617, column: 14, scope: !5358)
!5439 = !DILocation(line: 619, column: 3, scope: !5358)
!5440 = !DILocation(line: 621, column: 9, scope: !5358)
!5441 = !DILocation(line: 622, column: 8, scope: !5358)
!5442 = !DILocation(line: 622, column: 20, scope: !5358)
!5443 = !DILocation(line: 623, column: 8, scope: !5358)
!5444 = !DILocation(line: 623, column: 14, scope: !5358)
!5445 = !DILocation(line: 625, column: 8, scope: !5358)
!5446 = !DILocation(line: 625, column: 20, scope: !5358)
!5447 = !DILocation(line: 626, column: 8, scope: !5358)
!5448 = !DILocation(line: 626, column: 14, scope: !5358)
!5449 = !DILocation(line: 629, column: 1, scope: !5358)
!5450 = !DILocation(line: 628, column: 3, scope: !5358)
!5451 = distinct !DISubprogram(name: "gimple_mod_pow2", scope: !3, file: !3, line: 709, type: !5452, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5454)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{!1402, !1726, !1387, !1938, !1938}
!5454 = !{!5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481}
!5455 = !DILocalVariable(name: "stmt", arg: 1, scope: !5451, file: !3, line: 709, type: !1726)
!5456 = !DILocalVariable(name: "prob", arg: 2, scope: !5451, file: !3, line: 709, type: !1387)
!5457 = !DILocalVariable(name: "count", arg: 3, scope: !5451, file: !3, line: 709, type: !1938)
!5458 = !DILocalVariable(name: "all", arg: 4, scope: !5451, file: !3, line: 709, type: !1938)
!5459 = !DILocalVariable(name: "stmt1", scope: !5451, file: !3, line: 711, type: !1726)
!5460 = !DILocalVariable(name: "stmt2", scope: !5451, file: !3, line: 711, type: !1726)
!5461 = !DILocalVariable(name: "stmt3", scope: !5451, file: !3, line: 711, type: !1726)
!5462 = !DILocalVariable(name: "stmt4", scope: !5451, file: !3, line: 711, type: !1726)
!5463 = !DILocalVariable(name: "tmp2", scope: !5451, file: !3, line: 712, type: !1402)
!5464 = !DILocalVariable(name: "tmp3", scope: !5451, file: !3, line: 712, type: !1402)
!5465 = !DILocalVariable(name: "bb1end", scope: !5451, file: !3, line: 713, type: !1726)
!5466 = !DILocalVariable(name: "bb2end", scope: !5451, file: !3, line: 713, type: !1726)
!5467 = !DILocalVariable(name: "bb3end", scope: !5451, file: !3, line: 713, type: !1726)
!5468 = !DILocalVariable(name: "bb", scope: !5451, file: !3, line: 714, type: !2160)
!5469 = !DILocalVariable(name: "bb2", scope: !5451, file: !3, line: 714, type: !2160)
!5470 = !DILocalVariable(name: "bb3", scope: !5451, file: !3, line: 714, type: !2160)
!5471 = !DILocalVariable(name: "bb4", scope: !5451, file: !3, line: 714, type: !2160)
!5472 = !DILocalVariable(name: "optype", scope: !5451, file: !3, line: 715, type: !1402)
!5473 = !DILocalVariable(name: "op1", scope: !5451, file: !3, line: 715, type: !1402)
!5474 = !DILocalVariable(name: "op2", scope: !5451, file: !3, line: 715, type: !1402)
!5475 = !DILocalVariable(name: "e12", scope: !5451, file: !3, line: 716, type: !1706)
!5476 = !DILocalVariable(name: "e13", scope: !5451, file: !3, line: 716, type: !1706)
!5477 = !DILocalVariable(name: "e23", scope: !5451, file: !3, line: 716, type: !1706)
!5478 = !DILocalVariable(name: "e24", scope: !5451, file: !3, line: 716, type: !1706)
!5479 = !DILocalVariable(name: "e34", scope: !5451, file: !3, line: 716, type: !1706)
!5480 = !DILocalVariable(name: "gsi", scope: !5451, file: !3, line: 717, type: !3825)
!5481 = !DILocalVariable(name: "result", scope: !5451, file: !3, line: 718, type: !1402)
!5482 = !DILocation(line: 0, scope: !5451)
!5483 = !DILocation(line: 717, column: 3, scope: !5451)
!5484 = !DILocation(line: 720, column: 3, scope: !5451)
!5485 = !DILocation(line: 723, column: 12, scope: !5451)
!5486 = !DILocation(line: 724, column: 9, scope: !5451)
!5487 = !DILocation(line: 725, column: 9, scope: !5451)
!5488 = !DILocation(line: 727, column: 8, scope: !5451)
!5489 = !DILocation(line: 728, column: 9, scope: !5451)
!5490 = !DILocation(line: 730, column: 12, scope: !5451)
!5491 = !DILocation(line: 731, column: 10, scope: !5451)
!5492 = !DILocation(line: 732, column: 10, scope: !5451)
!5493 = !DILocation(line: 733, column: 11, scope: !5451)
!5494 = !DILocation(line: 735, column: 11, scope: !5451)
!5495 = !DILocation(line: 736, column: 45, scope: !5451)
!5496 = !DILocation(line: 736, column: 11, scope: !5451)
!5497 = !DILocation(line: 738, column: 3, scope: !5451)
!5498 = !DILocation(line: 739, column: 3, scope: !5451)
!5499 = !DILocation(line: 740, column: 3, scope: !5451)
!5500 = !DILocation(line: 744, column: 11, scope: !5451)
!5501 = !DILocation(line: 745, column: 3, scope: !5451)
!5502 = !DILocation(line: 748, column: 11, scope: !5451)
!5503 = !DILocation(line: 750, column: 3, scope: !5451)
!5504 = !DILocation(line: 755, column: 26, scope: !5451)
!5505 = !DILocation(line: 755, column: 9, scope: !5451)
!5506 = !DILocation(line: 756, column: 14, scope: !5451)
!5507 = !DILocation(line: 757, column: 8, scope: !5451)
!5508 = !DILocation(line: 757, column: 14, scope: !5451)
!5509 = !DILocation(line: 758, column: 27, scope: !5451)
!5510 = !DILocation(line: 758, column: 9, scope: !5451)
!5511 = !DILocation(line: 759, column: 14, scope: !5451)
!5512 = !DILocation(line: 760, column: 20, scope: !5451)
!5513 = !DILocation(line: 760, column: 8, scope: !5451)
!5514 = !DILocation(line: 760, column: 14, scope: !5451)
!5515 = !DILocation(line: 761, column: 27, scope: !5451)
!5516 = !DILocation(line: 761, column: 9, scope: !5451)
!5517 = !DILocation(line: 762, column: 14, scope: !5451)
!5518 = !DILocation(line: 763, column: 8, scope: !5451)
!5519 = !DILocation(line: 763, column: 14, scope: !5451)
!5520 = !DILocation(line: 765, column: 8, scope: !5451)
!5521 = !DILocation(line: 765, column: 14, scope: !5451)
!5522 = !DILocation(line: 766, column: 14, scope: !5451)
!5523 = !DILocation(line: 767, column: 8, scope: !5451)
!5524 = !DILocation(line: 767, column: 20, scope: !5451)
!5525 = !DILocation(line: 768, column: 8, scope: !5451)
!5526 = !DILocation(line: 768, column: 14, scope: !5451)
!5527 = !DILocation(line: 770, column: 9, scope: !5451)
!5528 = !DILocation(line: 771, column: 39, scope: !5451)
!5529 = !DILocation(line: 771, column: 8, scope: !5451)
!5530 = !DILocation(line: 771, column: 20, scope: !5451)
!5531 = !DILocation(line: 772, column: 8, scope: !5451)
!5532 = !DILocation(line: 772, column: 14, scope: !5451)
!5533 = !DILocation(line: 774, column: 3, scope: !5451)
!5534 = !DILocation(line: 776, column: 9, scope: !5451)
!5535 = !DILocation(line: 777, column: 8, scope: !5451)
!5536 = !DILocation(line: 777, column: 20, scope: !5451)
!5537 = !DILocation(line: 778, column: 8, scope: !5451)
!5538 = !DILocation(line: 778, column: 14, scope: !5451)
!5539 = !DILocation(line: 780, column: 8, scope: !5451)
!5540 = !DILocation(line: 780, column: 20, scope: !5451)
!5541 = !DILocation(line: 781, column: 8, scope: !5451)
!5542 = !DILocation(line: 781, column: 14, scope: !5451)
!5543 = !DILocation(line: 784, column: 1, scope: !5451)
!5544 = !DILocation(line: 783, column: 3, scope: !5451)
!5545 = distinct !DISubprogram(name: "gimple_stringop_fixed_value", scope: !3, file: !3, line: 1289, type: !5546, scopeLine: 1291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5548)
!5546 = !DISubroutineType(types: !5547)
!5547 = !{null, !1726, !1402, !1387, !1938, !1938}
!5548 = !{!5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572}
!5549 = !DILocalVariable(name: "vcall_stmt", arg: 1, scope: !5545, file: !3, line: 1289, type: !1726)
!5550 = !DILocalVariable(name: "icall_size", arg: 2, scope: !5545, file: !3, line: 1289, type: !1402)
!5551 = !DILocalVariable(name: "prob", arg: 3, scope: !5545, file: !3, line: 1289, type: !1387)
!5552 = !DILocalVariable(name: "count", arg: 4, scope: !5545, file: !3, line: 1290, type: !1938)
!5553 = !DILocalVariable(name: "all", arg: 5, scope: !5545, file: !3, line: 1290, type: !1938)
!5554 = !DILocalVariable(name: "tmp_stmt", scope: !5545, file: !3, line: 1292, type: !1726)
!5555 = !DILocalVariable(name: "cond_stmt", scope: !5545, file: !3, line: 1292, type: !1726)
!5556 = !DILocalVariable(name: "icall_stmt", scope: !5545, file: !3, line: 1292, type: !1726)
!5557 = !DILocalVariable(name: "tmp1", scope: !5545, file: !3, line: 1293, type: !1402)
!5558 = !DILocalVariable(name: "tmpv", scope: !5545, file: !3, line: 1293, type: !1402)
!5559 = !DILocalVariable(name: "vcall_size", scope: !5545, file: !3, line: 1293, type: !1402)
!5560 = !DILocalVariable(name: "optype", scope: !5545, file: !3, line: 1293, type: !1402)
!5561 = !DILocalVariable(name: "cond_bb", scope: !5545, file: !3, line: 1294, type: !2160)
!5562 = !DILocalVariable(name: "icall_bb", scope: !5545, file: !3, line: 1294, type: !2160)
!5563 = !DILocalVariable(name: "vcall_bb", scope: !5545, file: !3, line: 1294, type: !2160)
!5564 = !DILocalVariable(name: "join_bb", scope: !5545, file: !3, line: 1294, type: !2160)
!5565 = !DILocalVariable(name: "e_ci", scope: !5545, file: !3, line: 1295, type: !1706)
!5566 = !DILocalVariable(name: "e_cv", scope: !5545, file: !3, line: 1295, type: !1706)
!5567 = !DILocalVariable(name: "e_iv", scope: !5545, file: !3, line: 1295, type: !1706)
!5568 = !DILocalVariable(name: "e_ij", scope: !5545, file: !3, line: 1295, type: !1706)
!5569 = !DILocalVariable(name: "e_vj", scope: !5545, file: !3, line: 1295, type: !1706)
!5570 = !DILocalVariable(name: "gsi", scope: !5545, file: !3, line: 1296, type: !3825)
!5571 = !DILocalVariable(name: "fndecl", scope: !5545, file: !3, line: 1297, type: !1402)
!5572 = !DILocalVariable(name: "size_arg", scope: !5545, file: !3, line: 1298, type: !1387)
!5573 = !DILocation(line: 0, scope: !5545)
!5574 = !DILocation(line: 1296, column: 3, scope: !5545)
!5575 = !DILocation(line: 1298, column: 3, scope: !5545)
!5576 = !DILocation(line: 1300, column: 12, scope: !5545)
!5577 = !DILocation(line: 1301, column: 8, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 1301, column: 7)
!5579 = !DILocation(line: 1301, column: 7, scope: !5545)
!5580 = !DILocation(line: 1302, column: 5, scope: !5578)
!5581 = !DILocation(line: 1304, column: 13, scope: !5545)
!5582 = !DILocation(line: 1305, column: 9, scope: !5545)
!5583 = !DILocation(line: 1307, column: 45, scope: !5545)
!5584 = !DILocation(line: 1307, column: 16, scope: !5545)
!5585 = !DILocation(line: 1308, column: 12, scope: !5545)
!5586 = !DILocation(line: 1310, column: 10, scope: !5545)
!5587 = !DILocation(line: 1311, column: 10, scope: !5545)
!5588 = !DILocation(line: 1312, column: 14, scope: !5545)
!5589 = !DILocation(line: 1313, column: 3, scope: !5545)
!5590 = !DILocation(line: 1315, column: 14, scope: !5545)
!5591 = !DILocation(line: 1316, column: 3, scope: !5545)
!5592 = !DILocation(line: 1318, column: 15, scope: !5545)
!5593 = !DILocation(line: 1319, column: 3, scope: !5545)
!5594 = !DILocation(line: 1321, column: 16, scope: !5545)
!5595 = !DILocation(line: 1322, column: 36, scope: !5545)
!5596 = !DILocation(line: 1322, column: 3, scope: !5545)
!5597 = !DILocation(line: 1323, column: 3, scope: !5545)
!5598 = !DILocation(line: 1327, column: 32, scope: !5545)
!5599 = !DILocation(line: 1327, column: 10, scope: !5545)
!5600 = !DILocation(line: 1328, column: 20, scope: !5545)
!5601 = !DILocation(line: 1329, column: 13, scope: !5545)
!5602 = !DILocation(line: 1329, column: 19, scope: !5545)
!5603 = !DILocation(line: 1331, column: 33, scope: !5545)
!5604 = !DILocation(line: 1331, column: 10, scope: !5545)
!5605 = !DILocation(line: 1332, column: 20, scope: !5545)
!5606 = !DILocation(line: 1333, column: 25, scope: !5545)
!5607 = !DILocation(line: 1333, column: 13, scope: !5545)
!5608 = !DILocation(line: 1333, column: 19, scope: !5545)
!5609 = !DILocation(line: 1335, column: 33, scope: !5545)
!5610 = !DILocation(line: 1335, column: 10, scope: !5545)
!5611 = !DILocation(line: 1336, column: 19, scope: !5545)
!5612 = !DILocation(line: 1337, column: 12, scope: !5545)
!5613 = !DILocation(line: 1337, column: 18, scope: !5545)
!5614 = !DILocation(line: 1339, column: 24, scope: !5545)
!5615 = !DILocation(line: 1339, column: 30, scope: !5545)
!5616 = !DILocation(line: 1339, column: 48, scope: !5545)
!5617 = !DILocation(line: 1339, column: 15, scope: !5545)
!5618 = !DILocation(line: 1340, column: 9, scope: !5545)
!5619 = !DILocation(line: 1340, column: 21, scope: !5545)
!5620 = !DILocation(line: 1341, column: 9, scope: !5545)
!5621 = !DILocation(line: 1341, column: 15, scope: !5545)
!5622 = !DILocation(line: 1343, column: 10, scope: !5545)
!5623 = !DILocation(line: 1344, column: 40, scope: !5545)
!5624 = !DILocation(line: 1344, column: 9, scope: !5545)
!5625 = !DILocation(line: 1344, column: 21, scope: !5545)
!5626 = !DILocation(line: 1345, column: 9, scope: !5545)
!5627 = !DILocation(line: 1345, column: 15, scope: !5545)
!5628 = !DILocation(line: 1347, column: 3, scope: !5545)
!5629 = !DILocation(line: 1349, column: 10, scope: !5545)
!5630 = !DILocation(line: 1350, column: 9, scope: !5545)
!5631 = !DILocation(line: 1350, column: 21, scope: !5545)
!5632 = !DILocation(line: 1351, column: 9, scope: !5545)
!5633 = !DILocation(line: 1351, column: 15, scope: !5545)
!5634 = !DILocation(line: 1353, column: 9, scope: !5545)
!5635 = !DILocation(line: 1353, column: 21, scope: !5545)
!5636 = !DILocation(line: 1354, column: 9, scope: !5545)
!5637 = !DILocation(line: 1354, column: 15, scope: !5545)
!5638 = !DILocation(line: 1357, column: 3, scope: !5545)
!5639 = !DILocation(line: 1358, column: 3, scope: !5545)
!5640 = !DILocation(line: 1359, column: 1, scope: !5545)
!5641 = distinct !DISubprogram(name: "gimple_call_set_arg", scope: !388, file: !388, line: 2046, type: !5642, scopeLine: 2047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5644)
!5642 = !DISubroutineType(types: !5643)
!5643 = !{null, !1726, !7, !1402}
!5644 = !{!5645, !5646, !5647}
!5645 = !DILocalVariable(name: "gs", arg: 1, scope: !5641, file: !388, line: 2046, type: !1726)
!5646 = !DILocalVariable(name: "index", arg: 2, scope: !5641, file: !388, line: 2046, type: !7)
!5647 = !DILocalVariable(name: "arg", arg: 3, scope: !5641, file: !388, line: 2046, type: !1402)
!5648 = !DILocation(line: 0, scope: !5641)
!5649 = !DILocation(line: 2049, column: 28, scope: !5641)
!5650 = !DILocation(line: 2049, column: 3, scope: !5641)
!5651 = !DILocation(line: 2050, column: 1, scope: !5641)
!5652 = distinct !DISubprogram(name: "gimple_set_op", scope: !388, file: !388, line: 1663, type: !5642, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5653)
!5653 = !{!5654, !5655, !5656}
!5654 = !DILocalVariable(name: "gs", arg: 1, scope: !5652, file: !388, line: 1663, type: !1726)
!5655 = !DILocalVariable(name: "i", arg: 2, scope: !5652, file: !388, line: 1663, type: !7)
!5656 = !DILocalVariable(name: "op", arg: 3, scope: !5652, file: !388, line: 1663, type: !1402)
!5657 = !DILocation(line: 0, scope: !5652)
!5658 = !DILocation(line: 1665, column: 3, scope: !5652)
!5659 = !DILocation(line: 1671, column: 3, scope: !5652)
!5660 = !DILocation(line: 1671, column: 22, scope: !5652)
!5661 = !DILocation(line: 1672, column: 1, scope: !5652)
!5662 = distinct !DISubprogram(name: "find_func_by_pid", scope: !3, file: !3, line: 1073, type: !5663, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5665)
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!2765, !1387}
!5665 = !{!5666}
!5666 = !DILocalVariable(name: "pid", arg: 1, scope: !5662, file: !3, line: 1073, type: !1387)
!5667 = !DILocation(line: 0, scope: !5662)
!5668 = !DILocation(line: 1075, column: 3, scope: !5662)
!5669 = !DILocation(line: 1077, column: 10, scope: !5662)
!5670 = !DILocation(line: 1077, column: 3, scope: !5662)
!5671 = distinct !DISubprogram(name: "gimple_ic", scope: !3, file: !3, line: 1089, type: !5672, scopeLine: 1091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5674)
!5672 = !DISubroutineType(types: !5673)
!5673 = !{!1726, !1726, !2765, !1387, !1938, !1938}
!5674 = !{!5675, !5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697}
!5675 = !DILocalVariable(name: "icall_stmt", arg: 1, scope: !5671, file: !3, line: 1089, type: !1726)
!5676 = !DILocalVariable(name: "direct_call", arg: 2, scope: !5671, file: !3, line: 1089, type: !2765)
!5677 = !DILocalVariable(name: "prob", arg: 3, scope: !5671, file: !3, line: 1090, type: !1387)
!5678 = !DILocalVariable(name: "count", arg: 4, scope: !5671, file: !3, line: 1090, type: !1938)
!5679 = !DILocalVariable(name: "all", arg: 5, scope: !5671, file: !3, line: 1090, type: !1938)
!5680 = !DILocalVariable(name: "dcall_stmt", scope: !5671, file: !3, line: 1092, type: !1726)
!5681 = !DILocalVariable(name: "load_stmt", scope: !5671, file: !3, line: 1092, type: !1726)
!5682 = !DILocalVariable(name: "cond_stmt", scope: !5671, file: !3, line: 1092, type: !1726)
!5683 = !DILocalVariable(name: "tmp1", scope: !5671, file: !3, line: 1093, type: !1402)
!5684 = !DILocalVariable(name: "tmpv", scope: !5671, file: !3, line: 1093, type: !1402)
!5685 = !DILocalVariable(name: "tmp", scope: !5671, file: !3, line: 1093, type: !1402)
!5686 = !DILocalVariable(name: "cond_bb", scope: !5671, file: !3, line: 1094, type: !2160)
!5687 = !DILocalVariable(name: "dcall_bb", scope: !5671, file: !3, line: 1094, type: !2160)
!5688 = !DILocalVariable(name: "icall_bb", scope: !5671, file: !3, line: 1094, type: !2160)
!5689 = !DILocalVariable(name: "join_bb", scope: !5671, file: !3, line: 1094, type: !2160)
!5690 = !DILocalVariable(name: "optype", scope: !5671, file: !3, line: 1095, type: !1402)
!5691 = !DILocalVariable(name: "e_cd", scope: !5671, file: !3, line: 1096, type: !1706)
!5692 = !DILocalVariable(name: "e_ci", scope: !5671, file: !3, line: 1096, type: !1706)
!5693 = !DILocalVariable(name: "e_di", scope: !5671, file: !3, line: 1096, type: !1706)
!5694 = !DILocalVariable(name: "e_dj", scope: !5671, file: !3, line: 1096, type: !1706)
!5695 = !DILocalVariable(name: "e_ij", scope: !5671, file: !3, line: 1096, type: !1706)
!5696 = !DILocalVariable(name: "gsi", scope: !5671, file: !3, line: 1097, type: !3825)
!5697 = !DILocalVariable(name: "lp_nr", scope: !5671, file: !3, line: 1098, type: !1387)
!5698 = !DILocation(line: 0, scope: !5671)
!5699 = !DILocation(line: 1095, column: 37, scope: !5671)
!5700 = !DILocation(line: 1095, column: 17, scope: !5671)
!5701 = !DILocation(line: 1097, column: 3, scope: !5671)
!5702 = !DILocation(line: 1100, column: 13, scope: !5671)
!5703 = !DILocation(line: 1101, column: 9, scope: !5671)
!5704 = !DILocation(line: 1103, column: 10, scope: !5671)
!5705 = !DILocation(line: 1104, column: 10, scope: !5671)
!5706 = !DILocation(line: 1105, column: 23, scope: !5671)
!5707 = !DILocation(line: 1105, column: 9, scope: !5671)
!5708 = !DILocation(line: 1106, column: 15, scope: !5671)
!5709 = !DILocation(line: 1107, column: 3, scope: !5671)
!5710 = !DILocation(line: 1109, column: 9, scope: !5671)
!5711 = !DILocation(line: 1111, column: 15, scope: !5671)
!5712 = !DILocation(line: 1112, column: 3, scope: !5671)
!5713 = !DILocation(line: 1114, column: 15, scope: !5671)
!5714 = !DILocation(line: 1115, column: 3, scope: !5671)
!5715 = !DILocation(line: 1117, column: 16, scope: !5671)
!5716 = !DILocation(line: 1118, column: 52, scope: !5671)
!5717 = !DILocation(line: 1118, column: 3, scope: !5671)
!5718 = !DILocation(line: 1119, column: 3, scope: !5671)
!5719 = !DILocation(line: 1123, column: 32, scope: !5671)
!5720 = !DILocation(line: 1123, column: 10, scope: !5671)
!5721 = !DILocation(line: 1124, column: 20, scope: !5671)
!5722 = !DILocation(line: 1125, column: 13, scope: !5671)
!5723 = !DILocation(line: 1125, column: 19, scope: !5671)
!5724 = !DILocation(line: 1127, column: 33, scope: !5671)
!5725 = !DILocation(line: 1127, column: 10, scope: !5671)
!5726 = !DILocation(line: 1128, column: 20, scope: !5671)
!5727 = !DILocation(line: 1129, column: 25, scope: !5671)
!5728 = !DILocation(line: 1129, column: 13, scope: !5671)
!5729 = !DILocation(line: 1129, column: 19, scope: !5671)
!5730 = !DILocation(line: 1131, column: 33, scope: !5671)
!5731 = !DILocation(line: 1131, column: 10, scope: !5671)
!5732 = !DILocation(line: 1132, column: 19, scope: !5671)
!5733 = !DILocation(line: 1133, column: 12, scope: !5671)
!5734 = !DILocation(line: 1133, column: 18, scope: !5671)
!5735 = !DILocation(line: 1135, column: 24, scope: !5671)
!5736 = !DILocation(line: 1135, column: 30, scope: !5671)
!5737 = !DILocation(line: 1135, column: 48, scope: !5671)
!5738 = !DILocation(line: 1135, column: 15, scope: !5671)
!5739 = !DILocation(line: 1136, column: 9, scope: !5671)
!5740 = !DILocation(line: 1136, column: 21, scope: !5671)
!5741 = !DILocation(line: 1137, column: 9, scope: !5671)
!5742 = !DILocation(line: 1137, column: 15, scope: !5671)
!5743 = !DILocation(line: 1139, column: 10, scope: !5671)
!5744 = !DILocation(line: 1140, column: 40, scope: !5671)
!5745 = !DILocation(line: 1140, column: 9, scope: !5671)
!5746 = !DILocation(line: 1140, column: 21, scope: !5671)
!5747 = !DILocation(line: 1141, column: 9, scope: !5671)
!5748 = !DILocation(line: 1141, column: 15, scope: !5671)
!5749 = !DILocation(line: 1143, column: 3, scope: !5671)
!5750 = !DILocation(line: 1145, column: 10, scope: !5671)
!5751 = !DILocation(line: 1146, column: 9, scope: !5671)
!5752 = !DILocation(line: 1146, column: 21, scope: !5671)
!5753 = !DILocation(line: 1147, column: 9, scope: !5671)
!5754 = !DILocation(line: 1147, column: 15, scope: !5671)
!5755 = !DILocation(line: 1149, column: 9, scope: !5671)
!5756 = !DILocation(line: 1149, column: 21, scope: !5671)
!5757 = !DILocation(line: 1150, column: 9, scope: !5671)
!5758 = !DILocation(line: 1150, column: 15, scope: !5671)
!5759 = !DILocation(line: 1153, column: 11, scope: !5671)
!5760 = !DILocation(line: 1154, column: 13, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 1154, column: 7)
!5762 = !DILocation(line: 1154, column: 7, scope: !5671)
!5763 = !DILocation(line: 1156, column: 11, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5765, file: !3, line: 1156, column: 11)
!5765 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 1155, column: 5)
!5766 = !DILocation(line: 1156, column: 11, scope: !5765)
!5767 = !DILocation(line: 1158, column: 4, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 1157, column: 2)
!5769 = !DILocation(line: 1159, column: 4, scope: !5768)
!5770 = !DILocation(line: 1160, column: 2, scope: !5768)
!5771 = !DILocation(line: 1162, column: 7, scope: !5765)
!5772 = !DILocation(line: 1163, column: 7, scope: !5765)
!5773 = !DILocation(line: 1166, column: 7, scope: !5765)
!5774 = !DILocation(line: 1167, column: 5, scope: !5765)
!5775 = !DILocation(line: 1170, column: 1, scope: !5671)
!5776 = !DILocation(line: 1169, column: 3, scope: !5671)
!5777 = distinct !DISubprogram(name: "init_pid_map", scope: !3, file: !3, line: 1054, type: !2850, scopeLine: 1055, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5778)
!5778 = !{!5779}
!5779 = !DILocalVariable(name: "n", scope: !5777, file: !3, line: 1056, type: !2765)
!5780 = !DILocation(line: 1058, column: 7, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 1058, column: 7)
!5782 = !DILocation(line: 1058, column: 15, scope: !5781)
!5783 = !DILocation(line: 1058, column: 7, scope: !5777)
!5784 = !DILocation(line: 1061, column: 13, scope: !5777)
!5785 = !DILocation(line: 1061, column: 11, scope: !5777)
!5786 = !DILocation(line: 1063, column: 8, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 1063, column: 3)
!5788 = !DILocation(line: 0, scope: !5787)
!5789 = !DILocation(line: 0, scope: !5777)
!5790 = !DILocation(line: 1063, column: 3, scope: !5787)
!5791 = !DILocation(line: 1065, column: 14, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 1065, column: 11)
!5793 = distinct !DILexicalBlock(scope: !5794, file: !3, line: 1064, column: 5)
!5794 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 1063, column: 3)
!5795 = !DILocation(line: 1065, column: 18, scope: !5792)
!5796 = !DILocation(line: 1065, column: 11, scope: !5793)
!5797 = !DILocation(line: 1066, column: 2, scope: !5792)
!5798 = !DILocation(line: 1066, column: 19, scope: !5792)
!5799 = !DILocation(line: 1063, column: 36, scope: !5794)
!5800 = !DILocation(line: 1063, column: 3, scope: !5794)
!5801 = distinct !{!5801, !5790, !5802}
!5802 = !DILocation(line: 1067, column: 5, scope: !5787)
!5803 = !DILocation(line: 1068, column: 1, scope: !5777)
!5804 = distinct !DISubprogram(name: "gimple_call_set_fndecl", scope: !388, file: !388, line: 1942, type: !5805, scopeLine: 1943, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5807)
!5805 = !DISubroutineType(types: !5806)
!5806 = !{null, !1726, !1402}
!5807 = !{!5808, !5809}
!5808 = !DILocalVariable(name: "gs", arg: 1, scope: !5804, file: !388, line: 1942, type: !1726)
!5809 = !DILocalVariable(name: "decl", arg: 2, scope: !5804, file: !388, line: 1942, type: !1402)
!5810 = !DILocation(line: 0, scope: !5804)
!5811 = !DILocation(line: 1945, column: 51, scope: !5804)
!5812 = !DILocation(line: 1945, column: 25, scope: !5804)
!5813 = !DILocation(line: 1945, column: 3, scope: !5804)
!5814 = !DILocation(line: 1946, column: 1, scope: !5804)
