; ModuleID = 'tree-dfa.bc'
source_filename = "tree-dfa.c"
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
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type opaque
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.var_ann_d = type { i8, i32, %union.tree_node* }
%struct.pointer_set_t = type opaque
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { %struct.htab*, i8**, i8** }
%struct.tree_ssa_name = type { %struct.tree_common, %union.tree_node*, %union.gimple_statement_d*, i32, %struct.ptr_info_def*, %struct.ssa_use_operand_d }
%struct.ptr_info_def = type { %struct.pt_solution }
%struct.dfa_stats_d = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, i8*, %struct.pointer_set_t*, i8, i8, i8, i8, %union.tree_node* }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"*referenced_vars\00", align 1
@pass_referenced_vars = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8 ()* null, i32 ()* @find_referenced_vars, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 55, i32 12, i32 16, i32 0, i32 1, i32 1 } }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"tree-dfa.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"\0AReferenced variables in %s: %u\0A\0A\00", align 1
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"Variable: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"<nil>\00", align 1
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c", UID D.%u\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c", is addressable\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c", is global\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c", is volatile\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c", call clobbered\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c", call used\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c", NO_ALIAS (does not alias other NO_ALIAS symbols)\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c", NO_ALIAS_GLOBAL (does not alias other NO_ALIAS symbols and global vars)\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c", NO_ALIAS_ANYTHING (does not alias any other symbols)\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c", default def: \00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c", initial: \00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"%-30s%-13s%12s\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"%-30s%13lu%11lu%c\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"%-43s%11lu%c\0A\00", align 1
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@.str.22 = private unnamed_addr constant [25 x i8] c"\0ADFA Statistics for %s\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"---------------------------------------------------------\0A\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"  Number of  \00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"  instances  \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"used \00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Referenced variables\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"Variables annotated\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"USE operands\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"DEF operands\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"VUSE operands\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"VDEF operands\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"PHI nodes\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"PHI arguments\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Total memory used by DFA/SSA data\00", align 1
@.str.38 = private unnamed_addr constant [59 x i8] c"Average number of arguments per PHI node: %.1f (max: %ld)\0A\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.39 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.40 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2008 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2021, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2022, metadata !DIExpression()), !dbg !2023
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2024
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2025
  ret i32 %call, !dbg !2026
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2027 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2031
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2032
  ret i32 %call, !dbg !2033
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2034 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2088, metadata !DIExpression()), !dbg !2089
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2090
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2090
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2090
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2090
  %cmp = icmp uge i8* %0, %1, !dbg !2090
  %conv1 = zext i1 %cmp to i64, !dbg !2090
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2090
  %tobool = icmp eq i64 %expval, 0, !dbg !2090
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2090

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2090
  br label %cond.end, !dbg !2090

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2090
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2090
  %2 = load i8, i8* %0, align 1, !dbg !2090
  %conv3 = zext i8 %2 to i32, !dbg !2090
  br label %cond.end, !dbg !2090

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2090
  ret i32 %cond, !dbg !2091
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2092 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2094, metadata !DIExpression()), !dbg !2095
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2096
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2096
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2096
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2096
  %cmp = icmp uge i8* %0, %1, !dbg !2096
  %conv1 = zext i1 %cmp to i64, !dbg !2096
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2096
  %tobool = icmp eq i64 %expval, 0, !dbg !2096
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2096

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2096
  br label %cond.end, !dbg !2096

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2096
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2096
  %2 = load i8, i8* %0, align 1, !dbg !2096
  %conv3 = zext i8 %2 to i32, !dbg !2096
  br label %cond.end, !dbg !2096

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2096
  ret i32 %cond, !dbg !2097
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2098 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2099
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2099
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2099
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2099
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2099
  %cmp = icmp uge i8* %1, %2, !dbg !2099
  %conv1 = zext i1 %cmp to i64, !dbg !2099
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2099
  %tobool = icmp eq i64 %expval, 0, !dbg !2099
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2099

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2099
  br label %cond.end, !dbg !2099

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2099
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2099
  %3 = load i8, i8* %1, align 1, !dbg !2099
  %conv3 = zext i8 %3 to i32, !dbg !2099
  br label %cond.end, !dbg !2099

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2099
  ret i32 %cond, !dbg !2100
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2101 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2105, metadata !DIExpression()), !dbg !2106
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2107
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2108
  ret i32 %call, !dbg !2109
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2110 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2114, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2115, metadata !DIExpression()), !dbg !2116
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2117
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2117
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2117
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2117
  %cmp = icmp uge i8* %0, %1, !dbg !2117
  %conv1 = zext i1 %cmp to i64, !dbg !2117
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2117
  %tobool = icmp eq i64 %expval, 0, !dbg !2117
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2117

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2117
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2117
  br label %cond.end, !dbg !2117

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2117
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2117
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2117
  store i8 %conv2, i8* %0, align 1, !dbg !2117
  %conv6 = and i32 %__c, 255, !dbg !2117
  br label %cond.end, !dbg !2117

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2117
  ret i32 %cond, !dbg !2118
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2119 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2121, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2122, metadata !DIExpression()), !dbg !2123
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2124
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2124
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2124
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2124
  %cmp = icmp uge i8* %0, %1, !dbg !2124
  %conv1 = zext i1 %cmp to i64, !dbg !2124
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2124
  %tobool = icmp eq i64 %expval, 0, !dbg !2124
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2124

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2124
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2124
  br label %cond.end, !dbg !2124

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2124
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2124
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2124
  store i8 %conv2, i8* %0, align 1, !dbg !2124
  %conv6 = and i32 %__c, 255, !dbg !2124
  br label %cond.end, !dbg !2124

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2124
  ret i32 %cond, !dbg !2125
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2126 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2128, metadata !DIExpression()), !dbg !2129
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2130
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2130
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2130
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2130
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2130
  %cmp = icmp uge i8* %1, %2, !dbg !2130
  %conv1 = zext i1 %cmp to i64, !dbg !2130
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2130
  %tobool = icmp eq i64 %expval, 0, !dbg !2130
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2130

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2130
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2130
  br label %cond.end, !dbg !2130

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2130
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2130
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2130
  store i8 %conv4, i8* %1, align 1, !dbg !2130
  %conv6 = and i32 %__c, 255, !dbg !2130
  br label %cond.end, !dbg !2130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2130
  ret i32 %cond, !dbg !2131
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2138, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2139, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2140, metadata !DIExpression()), !dbg !2141
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2142
  ret i64 %call, !dbg !2143
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2144 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2146, metadata !DIExpression()), !dbg !2147
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2148
  %0 = load i32, i32* %_flags, align 8, !dbg !2148
  %and = lshr i32 %0, 4, !dbg !2148
  %and.lobit = and i32 %and, 1, !dbg !2148
  ret i32 %and.lobit, !dbg !2149
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2150 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2152, metadata !DIExpression()), !dbg !2153
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2154
  %0 = load i32, i32* %_flags, align 8, !dbg !2154
  %and = lshr i32 %0, 5, !dbg !2154
  %and.lobit = and i32 %and, 1, !dbg !2154
  ret i32 %and.lobit, !dbg !2155
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2156 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2159, metadata !DIExpression()), !dbg !2160
  %__c.off = add i32 %__c, 128, !dbg !2161
  %0 = icmp ult i32 %__c.off, 384, !dbg !2161
  br i1 %0, label %cond.true, label %cond.end, !dbg !2161

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2162
  %1 = load i32*, i32** %call, align 8, !dbg !2163
  %idxprom = sext i32 %__c to i64, !dbg !2164
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2164
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2164
  br label %cond.end, !dbg !2165

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2165
  ret i32 %cond, !dbg !2166
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2167 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2169, metadata !DIExpression()), !dbg !2170
  %__c.off = add i32 %__c, 128, !dbg !2171
  %0 = icmp ult i32 %__c.off, 384, !dbg !2171
  br i1 %0, label %cond.true, label %cond.end, !dbg !2171

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2172
  %1 = load i32*, i32** %call, align 8, !dbg !2173
  %idxprom = sext i32 %__c to i64, !dbg !2174
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2174
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2174
  br label %cond.end, !dbg !2175

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2175
  ret i32 %cond, !dbg !2176
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2177 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2182, metadata !DIExpression()), !dbg !2183
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2184
  %conv = trunc i64 %call to i32, !dbg !2185
  ret i32 %conv, !dbg !2186
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2187 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2191, metadata !DIExpression()), !dbg !2192
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2193
  ret i64 %call, !dbg !2194
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2195 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2200, metadata !DIExpression()), !dbg !2201
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2202
  ret i64 %call, !dbg !2203
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2204 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2210, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2211, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2212, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2213, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2214, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 0, metadata !2215, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2216, metadata !DIExpression()), !dbg !2220
  br label %while.cond, !dbg !2221

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2222
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2220
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2216, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2215, metadata !DIExpression()), !dbg !2220
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2223
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2221

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2224
  %div = lshr i64 %add, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %div, metadata !2217, metadata !DIExpression()), !dbg !2220
  %mul = mul i64 %div, %__size, !dbg !2227
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2228
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2218, metadata !DIExpression()), !dbg !2220
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2229
  call void @llvm.dbg.value(metadata i32 %call, metadata !2219, metadata !DIExpression()), !dbg !2220
  %cmp1 = icmp slt i32 %call, 0, !dbg !2230
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2232

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2233
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2235

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2215, metadata !DIExpression()), !dbg !2220
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2220
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2220
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2216, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2215, metadata !DIExpression()), !dbg !2220
  br label %while.cond, !dbg !2221, !llvm.loop !2237

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2220
  ret i8* %retval.0, !dbg !2239
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2240 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2246, metadata !DIExpression()), !dbg !2247
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2248
  ret double %call, !dbg !2249
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2250 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2259, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2260, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i32 %base, metadata !2261, metadata !DIExpression()), !dbg !2262
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2263
  ret i64 %call, !dbg !2264
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2265 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2271, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2272, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 %base, metadata !2273, metadata !DIExpression()), !dbg !2274
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2275
  ret i64 %call, !dbg !2276
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2277 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2288, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 %base, metadata !2290, metadata !DIExpression()), !dbg !2291
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2292
  ret i64 %call, !dbg !2293
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2294 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2298, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2299, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 %base, metadata !2300, metadata !DIExpression()), !dbg !2301
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2302
  ret i64 %call, !dbg !2303
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2304 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2344, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2345, metadata !DIExpression()), !dbg !2346
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2347
  ret i32 %call, !dbg !2348
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2349 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2351, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2352, metadata !DIExpression()), !dbg !2353
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2354
  ret i32 %call, !dbg !2355
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2356 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2360, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2361, metadata !DIExpression()), !dbg !2362
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2363
  ret i32 %call, !dbg !2364
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2365 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2369, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2370, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2371, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2372, metadata !DIExpression()), !dbg !2373
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2374
  ret i32 %call, !dbg !2375
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2376 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2380, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2381, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2382, metadata !DIExpression()), !dbg !2383
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2382, metadata !DIExpression(DW_OP_deref)), !dbg !2383
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2384
  ret i32 %call, !dbg !2385
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2386 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2390, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2391, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2393, metadata !DIExpression()), !dbg !2394
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2393, metadata !DIExpression(DW_OP_deref)), !dbg !2394
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2395
  ret i32 %call, !dbg !2396
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2397 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2421, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2422, metadata !DIExpression()), !dbg !2423
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2424
  ret i32 %call, !dbg !2425
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2426 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2428, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2429, metadata !DIExpression()), !dbg !2430
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2431
  ret i32 %call, !dbg !2432
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2433 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2437, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2438, metadata !DIExpression()), !dbg !2439
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2440
  ret i32 %call, !dbg !2441
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2442 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2446, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2447, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2448, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2449, metadata !DIExpression()), !dbg !2450
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2451
  ret i32 %call, !dbg !2452
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @find_referenced_vars() #5 !dbg !2453 {
entry:
  %si = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp9 = alloca %struct.gimple_stmt_iterator, align 8
  %0 = bitcast %struct.gimple_stmt_iterator* %si to i8*, !dbg !2470
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2470
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2471
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2471
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2471
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !2471
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2471
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2472
  %5 = bitcast %struct.gimple_stmt_iterator* %tmp9 to i8*, !dbg !2473
  br label %for.cond, !dbg !2471

for.cond:                                         ; preds = %for.inc18, %entry
  %6 = phi %struct.control_flow_graph* [ %2, %entry ], [ %.pre1, %for.inc18 ], !dbg !2475
  %.pn = phi %struct.basic_block_def* [ %3, %entry ], [ %bb.0, %for.inc18 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2476
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2476
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2455, metadata !DIExpression()), !dbg !2477
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 1, !dbg !2475
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2475
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %7, !dbg !2475
  br i1 %cmp, label %for.end20, label %for.body, !dbg !2471

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2478
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #8, !dbg !2478
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !2478
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2478
  br label %for.cond3, !dbg !2479

for.cond3:                                        ; preds = %cleanup, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2477
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #8, !dbg !2480
  %tobool = icmp eq i8 %call, 0, !dbg !2481
  br i1 %tobool, label %for.body4, label %for.end, !dbg !2482

for.body4:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2477
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #8, !dbg !2483
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !2463, metadata !DIExpression()), !dbg !2484
  %call6 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call5) #8, !dbg !2485
  %tobool7 = icmp eq i8 %call6, 0, !dbg !2485
  br i1 %tobool7, label %if.end, label %cleanup, !dbg !2487

if.end:                                           ; preds = %for.body4
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2477
  %call8 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #8, !dbg !2488
  call void @find_referenced_vars_in(%union.gimple_statement_d* %call8) #8, !dbg !2489
  br label %cleanup, !dbg !2490

cleanup:                                          ; preds = %for.body4, %if.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2477
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %si) #8, !dbg !2491
  br label %for.cond3, !dbg !2492, !llvm.loop !2493

for.end:                                          ; preds = %for.cond3
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !2495
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp9, %struct.basic_block_def* %bb.0) #6, !dbg !2495
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !2495
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !2495
  br label %for.cond10, !dbg !2496

for.cond10:                                       ; preds = %for.body14, %for.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2477
  %call11 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #8, !dbg !2497
  %tobool12 = icmp eq i8 %call11, 0, !dbg !2499
  br i1 %tobool12, label %for.body14, label %for.inc18, !dbg !2500

for.body14:                                       ; preds = %for.cond10
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2477
  %call15 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #8, !dbg !2501
  call void @find_referenced_vars_in(%union.gimple_statement_d* %call15) #8, !dbg !2502
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2477
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %si) #8, !dbg !2503
  br label %for.cond10, !dbg !2504, !llvm.loop !2505

for.inc18:                                        ; preds = %for.cond10
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2475
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2507
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2475
  br label %for.cond, !dbg !2475, !llvm.loop !2508

for.end20:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2510
  ret i32 0, !dbg !2511
}

; Function Attrs: nounwind uwtable
define dso_local %struct.var_ann_d* @create_var_ann(%union.tree_node* %t) local_unnamed_addr #5 !dbg !2512 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2517, metadata !DIExpression()), !dbg !2519
  %tobool = icmp eq %union.tree_node* %t, null, !dbg !2520
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2520

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2520
  br label %cond.end, !dbg !2520

cond.end:                                         ; preds = %entry, %cond.true
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2521
  %bf.load = load i64, i64* %0, align 8, !dbg !2521
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2521
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !2521
  br i1 %cmp, label %cond.end14, label %lor.lhs.false, !dbg !2521

lor.lhs.false:                                    ; preds = %cond.end
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !2521
  br i1 %cmp5, label %cond.end14, label %lor.lhs.false6, !dbg !2521

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i64 %bf.cast1, 36, !dbg !2521
  br i1 %cmp11, label %cond.end14, label %cond.true12, !dbg !2521

cond.true12:                                      ; preds = %lor.lhs.false6
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2521
  br label %cond.end14, !dbg !2521

cond.end14:                                       ; preds = %cond.end, %lor.lhs.false, %lor.lhs.false6, %cond.true12
  %call = tail call i8* @ggc_alloc_cleared_stat(i64 16) #6, !dbg !2522
  %1 = bitcast i8* %call to %struct.var_ann_d*, !dbg !2522
  call void @llvm.dbg.value(metadata %struct.var_ann_d* %1, metadata !2518, metadata !DIExpression()), !dbg !2519
  %bf.load17 = load i64, i64* %0, align 8, !dbg !2523
  %bf.cast194 = and i64 %bf.load17, 65535, !dbg !2523
  %cmp20 = icmp eq i64 %bf.cast194, 32, !dbg !2523
  br i1 %cmp20, label %cond.true21, label %cond.false23, !dbg !2523

cond.true21:                                      ; preds = %cond.end14
  %ann22 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 1, !dbg !2523
  %2 = bitcast %union.tree_node** %ann22 to %struct.var_ann_d**, !dbg !2523
  br label %cond.end44, !dbg !2523

cond.false23:                                     ; preds = %cond.end14
  %cmp28 = icmp eq i64 %bf.cast194, 34, !dbg !2523
  br i1 %cmp28, label %cond.true29, label %cond.false31, !dbg !2523

cond.true29:                                      ; preds = %cond.false23
  %ann30 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2523
  %3 = bitcast %union.tree_node** %ann30 to %struct.var_ann_d**, !dbg !2523
  br label %cond.end44, !dbg !2523

cond.false31:                                     ; preds = %cond.false23
  %cmp36 = icmp eq i64 %bf.cast194, 36, !dbg !2523
  %ann38 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2523
  %4 = bitcast %union.tree_node** %ann38 to %struct.var_ann_d**, !dbg !2523
  %cond41 = select i1 %cmp36, %struct.var_ann_d** %4, %struct.var_ann_d** null, !dbg !2523
  br label %cond.end44, !dbg !2523

cond.end44:                                       ; preds = %cond.true29, %cond.false31, %cond.true21
  %cond45 = phi %struct.var_ann_d** [ %2, %cond.true21 ], [ %3, %cond.true29 ], [ %cond41, %cond.false31 ], !dbg !2523
  %5 = bitcast %struct.var_ann_d** %cond45 to i8**, !dbg !2524
  store i8* %call, i8** %5, align 8, !dbg !2524
  ret %struct.var_ann_d* %1, !dbg !2525
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i8* @ggc_alloc_cleared_stat(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @renumber_gimple_stmt_uids() local_unnamed_addr #5 !dbg !2526 {
entry:
  %bsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2539
  tail call fastcc void @set_gimple_stmt_max_uid(%struct.function* %0, i32 0) #8, !dbg !2540
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2541
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2541
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2541
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !2541
  %3 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !2542
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2543
  br label %for.cond, !dbg !2541

for.cond:                                         ; preds = %for.end, %entry
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.end ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2544
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2530, metadata !DIExpression()), !dbg !2545
  %tobool = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !2541
  br i1 %tobool, label %for.end9, label %for.body, !dbg !2541

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2546
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2547
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* nonnull %bb.0) #8, !dbg !2547
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !2547
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !2547
  br label %for.cond2, !dbg !2548

for.cond2:                                        ; preds = %for.body4, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2531, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2549
  %tobool3 = icmp eq i8 %call, 0, !dbg !2550
  br i1 %tobool3, label %for.body4, label %for.end, !dbg !2551

for.body4:                                        ; preds = %for.cond2
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2531, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2552
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !2535, metadata !DIExpression()), !dbg !2553
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2554
  %call7 = call fastcc i32 @inc_gimple_stmt_max_uid(%struct.function* %5) #8, !dbg !2555
  call fastcc void @gimple_set_uid(%union.gimple_statement_d* %call5, i32 %call7) #8, !dbg !2556
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2531, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #8, !dbg !2557
  br label %for.cond2, !dbg !2558, !llvm.loop !2559

for.end:                                          ; preds = %for.cond2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2561
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !2562
  br label %for.cond, !dbg !2562, !llvm.loop !2563

for.end9:                                         ; preds = %for.cond
  ret void, !dbg !2565
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_gimple_stmt_max_uid(%struct.function* %fn, i32 %maxid) unnamed_addr #0 !dbg !2566 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fn, metadata !2571, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i32 0, metadata !2572, metadata !DIExpression()), !dbg !2573
  %last_stmt_uid = getelementptr inbounds %struct.function, %struct.function* %fn, i64 0, i32 13, !dbg !2574
  store i32 0, i32* %last_stmt_uid, align 8, !dbg !2575
  ret void, !dbg !2576
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2577 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2581, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2582, metadata !DIExpression()), !dbg !2585
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !2586
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2583, metadata !DIExpression()), !dbg !2584
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !2587
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2588
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2589
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2590
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2591
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2592
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2593
  ret void, !dbg !2594
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2595 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2599, metadata !DIExpression()), !dbg !2600
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2601
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2601
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2602
  %conv1 = zext i1 %cmp to i8, !dbg !2603
  ret i8 %conv1, !dbg !2604
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2605 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2609, metadata !DIExpression()), !dbg !2610
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2611
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2611
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2612
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2612
  ret %union.gimple_statement_d* %1, !dbg !2613
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_uid(%union.gimple_statement_d* %g, i32 %uid) unnamed_addr #0 !dbg !2614 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %uid, metadata !2619, metadata !DIExpression()), !dbg !2620
  %uid1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 1, !dbg !2621
  store i32 %uid, i32* %uid1, align 4, !dbg !2622
  ret void, !dbg !2623
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @inc_gimple_stmt_max_uid(%struct.function* %fn) unnamed_addr #0 !dbg !2624 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fn, metadata !2628, metadata !DIExpression()), !dbg !2629
  %last_stmt_uid = getelementptr inbounds %struct.function, %struct.function* %fn, i64 0, i32 13, !dbg !2630
  %0 = load i32, i32* %last_stmt_uid, align 8, !dbg !2631
  %inc = add nsw i32 %0, 1, !dbg !2631
  store i32 %inc, i32* %last_stmt_uid, align 8, !dbg !2631
  ret i32 %0, !dbg !2632
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2633 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2638, metadata !DIExpression()), !dbg !2639
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2640
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2640
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2641
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2641
  %2 = load i64, i64* %1, align 8, !dbg !2641
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2642
  store i64 %2, i64* %3, align 8, !dbg !2642
  ret void, !dbg !2643
}

; Function Attrs: nounwind uwtable
define dso_local void @renumber_gimple_stmt_uids_in_blocks(%struct.basic_block_def** %blocks, i32 %n_blocks) local_unnamed_addr #5 !dbg !2644 {
entry:
  %bsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %blocks, metadata !2649, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i32 %n_blocks, metadata !2650, metadata !DIExpression()), !dbg !2665
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2666
  tail call fastcc void @set_gimple_stmt_max_uid(%struct.function* %0, i32 0) #8, !dbg !2667
  call void @llvm.dbg.value(metadata i32 0, metadata !2651, metadata !DIExpression()), !dbg !2665
  %1 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !2668
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2669
  %3 = bitcast %struct.gimple_stmt_iterator* %tmp6 to i8*, !dbg !2670
  %4 = sext i32 %n_blocks to i64, !dbg !2671
  br label %for.cond, !dbg !2671

for.cond:                                         ; preds = %for.end17, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end17 ], [ 0, %entry ], !dbg !2672
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2651, metadata !DIExpression()), !dbg !2665
  %cmp = icmp slt i64 %indvars.iv, %4, !dbg !2673
  br i1 %cmp, label %for.body, label %for.end19, !dbg !2674

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %blocks, i64 %indvars.iv, !dbg !2675
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2675
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !2652, metadata !DIExpression()), !dbg !2668
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2676
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2677
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %5) #6, !dbg !2677
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !2677
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2677
  br label %for.cond1, !dbg !2678

for.cond1:                                        ; preds = %for.body2, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2656, metadata !DIExpression(DW_OP_deref)), !dbg !2668
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2679
  %tobool = icmp eq i8 %call, 0, !dbg !2680
  br i1 %tobool, label %for.body2, label %for.end, !dbg !2681

for.body2:                                        ; preds = %for.cond1
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2656, metadata !DIExpression(DW_OP_deref)), !dbg !2668
  %call3 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2682
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call3, metadata !2657, metadata !DIExpression()), !dbg !2683
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2684
  %call5 = call fastcc i32 @inc_gimple_stmt_max_uid(%struct.function* %6) #8, !dbg !2685
  call fastcc void @gimple_set_uid(%union.gimple_statement_d* %call3, i32 %call5) #8, !dbg !2686
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2656, metadata !DIExpression(DW_OP_deref)), !dbg !2668
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #8, !dbg !2687
  br label %for.cond1, !dbg !2688, !llvm.loop !2689

for.end:                                          ; preds = %for.cond1
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2691
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp6, %struct.basic_block_def* %5) #8, !dbg !2691
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %3, i64 24, i1 false), !dbg !2691
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2691
  br label %for.cond7, !dbg !2692

for.cond7:                                        ; preds = %for.body11, %for.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2656, metadata !DIExpression(DW_OP_deref)), !dbg !2668
  %call8 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2693
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2694
  br i1 %tobool9, label %for.body11, label %for.end17, !dbg !2695

for.body11:                                       ; preds = %for.cond7
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2656, metadata !DIExpression(DW_OP_deref)), !dbg !2668
  %call13 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2696
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call13, metadata !2661, metadata !DIExpression()), !dbg !2697
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2698
  %call15 = call fastcc i32 @inc_gimple_stmt_max_uid(%struct.function* %7) #8, !dbg !2699
  call fastcc void @gimple_set_uid(%union.gimple_statement_d* %call13, i32 %call15) #8, !dbg !2700
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2656, metadata !DIExpression(DW_OP_deref)), !dbg !2668
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #8, !dbg !2701
  br label %for.cond7, !dbg !2702, !llvm.loop !2703

for.end17:                                        ; preds = %for.cond7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2705
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2706
  call void @llvm.dbg.value(metadata i32 undef, metadata !2651, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2665
  br label %for.cond, !dbg !2707, !llvm.loop !2708

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !2710
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @make_rename_temp(%union.tree_node* %type, i8* %prefix) local_unnamed_addr #5 !dbg !2711 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2715, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %prefix, metadata !2716, metadata !DIExpression()), !dbg !2718
  %call = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %type, i8* %prefix) #6, !dbg !2719
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2717, metadata !DIExpression()), !dbg !2718
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2720
  %0 = bitcast %union.tree_node** %type1 to i64**, !dbg !2720
  %1 = load i64*, i64** %0, align 8, !dbg !2720
  %bf.load = load i64, i64* %1, align 8, !dbg !2720
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2722
  %cmp = icmp eq i64 %bf.cast1, 13, !dbg !2722
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2723

lor.lhs.false:                                    ; preds = %entry
  %cmp8 = icmp eq i64 %bf.cast1, 14, !dbg !2724
  br i1 %cmp8, label %if.then, label %if.end, !dbg !2725

if.then:                                          ; preds = %lor.lhs.false, %entry
  %gimple_reg_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2726
  %2 = bitcast i40* %gimple_reg_flag to i64*, !dbg !2726
  %bf.load9 = load i64, i64* %2, align 8, !dbg !2727
  %bf.set = or i64 %bf.load9, 134217728, !dbg !2727
  store i64 %bf.set, i64* %2, align 8, !dbg !2727
  br label %if.end, !dbg !2726

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2728
  %call11 = tail call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %3) #8, !dbg !2730
  %tobool = icmp eq %struct.htab* %call11, null, !dbg !2730
  br i1 %tobool, label %if.end14, label %if.then12, !dbg !2731

if.then12:                                        ; preds = %if.end
  %call13 = tail call zeroext i8 @add_referenced_var(%union.tree_node* %call) #8, !dbg !2732
  tail call void @mark_sym_for_renaming(%union.tree_node* %call) #6, !dbg !2734
  br label %if.end14, !dbg !2735

if.end14:                                         ; preds = %if.end, %if.then12
  ret %union.tree_node* %call, !dbg !2736
}

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %fun) unnamed_addr #0 !dbg !2737 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !2743, metadata !DIExpression()), !dbg !2744
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !2745
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2745
  %tobool = icmp eq %struct.gimple_df* %0, null, !dbg !2747
  br i1 %tobool, label %return, label %if.end, !dbg !2748

if.end:                                           ; preds = %entry
  %referenced_vars = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %0, i64 0, i32 0, !dbg !2749
  %1 = load %struct.htab*, %struct.htab** %referenced_vars, align 8, !dbg !2749
  br label %return, !dbg !2750

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.htab* [ %1, %if.end ], [ null, %entry ], !dbg !2744
  ret %struct.htab* %retval.0, !dbg !2751
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @add_referenced_var(%union.tree_node* %var) local_unnamed_addr #5 !dbg !2752 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2756, metadata !DIExpression()), !dbg !2757
  %call = tail call fastcc %struct.var_ann_d* @get_var_ann(%union.tree_node* %var) #8, !dbg !2758
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2759
  %bf.load = load i64, i64* %0, align 8, !dbg !2759
  %bf.cast = and i64 %bf.load, 65535, !dbg !2759
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !2759
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2759
  %cmp = icmp eq i32 %1, 3, !dbg !2759
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2759

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 602, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2759
  br label %cond.end, !dbg !2759

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call zeroext i8 @referenced_var_check_and_insert(%union.tree_node* %var) #8, !dbg !2760
  %tobool = icmp eq i8 %call1, 0, !dbg !2760
  br i1 %tobool, label %return, label %if.then, !dbg !2762

if.then:                                          ; preds = %cond.end
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2763
  %2 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2763
  %tobool2 = icmp eq %union.tree_node* %2, null, !dbg !2763
  br i1 %tobool2, label %return, label %land.lhs.true, !dbg !2766

land.lhs.true:                                    ; preds = %if.then
  %context = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2767
  %3 = load %union.tree_node*, %union.tree_node** %context, align 8, !dbg !2767
  %4 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2768
  %cmp3 = icmp eq %union.tree_node* %3, %4, !dbg !2769
  br i1 %cmp3, label %if.then4, label %return, !dbg !2770

if.then4:                                         ; preds = %land.lhs.true
  %call7 = tail call %union.tree_node* @walk_tree_1(%union.tree_node** nonnull %initial, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @find_vars_r, i8* null, %struct.pointer_set_t* null, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)* null) #6, !dbg !2771
  br label %return, !dbg !2771

return:                                           ; preds = %if.then, %cond.end, %land.lhs.true, %if.then4
  %retval.0 = phi i8 [ 1, %if.then4 ], [ 1, %land.lhs.true ], [ 1, %if.then ], [ 0, %cond.end ], !dbg !2757
  ret i8 %retval.0, !dbg !2772
}

declare dso_local void @mark_sym_for_renaming(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dump_referenced_vars(%struct._IO_FILE* %file) local_unnamed_addr #5 !dbg !2773 {
entry:
  %rvi = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2777, metadata !DIExpression()), !dbg !2790
  %0 = bitcast %struct.referenced_var_iterator* %rvi to i8*, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2791
  %1 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2792
  %call = tail call i8* @get_name(%union.tree_node* %1) #6, !dbg !2793
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2794
  %call1 = tail call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %2) #8, !dbg !2794
  %call2 = tail call i64 @htab_elements(%struct.htab* %call1) #6, !dbg !2794
  %conv = trunc i64 %call2 to i32, !dbg !2795
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %call, i32 %conv) #6, !dbg !2796
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2779, metadata !DIExpression(DW_OP_deref)), !dbg !2790
  %call4 = call fastcc %union.tree_node* @first_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #8, !dbg !2797
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2778, metadata !DIExpression()), !dbg !2790
  br label %for.cond, !dbg !2797

for.cond:                                         ; preds = %for.body, %entry
  %var.0 = phi %union.tree_node* [ %call4, %entry ], [ %call7, %for.body ], !dbg !2799
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !2778, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2779, metadata !DIExpression(DW_OP_deref)), !dbg !2790
  %call5 = call fastcc zeroext i8 @end_referenced_vars_p(%struct.referenced_var_iterator* nonnull %rvi) #8, !dbg !2800
  %tobool = icmp eq i8 %call5, 0, !dbg !2800
  br i1 %tobool, label %for.body, label %for.end, !dbg !2797

for.body:                                         ; preds = %for.cond
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2802
  call void @dump_variable(%struct._IO_FILE* %file, %union.tree_node* %var.0) #8, !dbg !2804
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2779, metadata !DIExpression(DW_OP_deref)), !dbg !2790
  %call7 = call fastcc %union.tree_node* @next_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #8, !dbg !2800
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !2778, metadata !DIExpression()), !dbg !2790
  br label %for.cond, !dbg !2800, !llvm.loop !2805

for.end:                                          ; preds = %for.cond
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2807
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2808
  ret void, !dbg !2808
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local i8* @get_name(%union.tree_node*) local_unnamed_addr #2

declare dso_local i64 @htab_elements(%struct.htab*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @first_referenced_var(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !2809 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !2814, metadata !DIExpression()), !dbg !2815
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !2816
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2817
  %call = tail call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %0) #8, !dbg !2818
  %call1 = tail call fastcc i8* @first_htab_element(%struct.htab_iterator* %hti, %struct.htab* %call) #8, !dbg !2819
  %1 = bitcast i8* %call1 to %union.tree_node*, !dbg !2820
  ret %union.tree_node* %1, !dbg !2821
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !2822 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !2828, metadata !DIExpression()), !dbg !2829
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !2830
  %call = tail call fastcc zeroext i8 @end_htab_p(%struct.htab_iterator* %hti) #8, !dbg !2831
  ret i8 %call, !dbg !2832
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_variable(%struct._IO_FILE* %file, %union.tree_node* %var) local_unnamed_addr #5 !dbg !2833 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2837, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2838, metadata !DIExpression()), !dbg !2840
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2841
  %bf.load = load i64, i64* %0, align 8, !dbg !2841
  %bf.cast5 = and i64 %bf.load, 65535, !dbg !2843
  %cmp = icmp eq i64 %bf.cast5, 141, !dbg !2843
  br i1 %cmp, label %if.then, label %if.end15, !dbg !2844

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2845
  %1 = bitcast %union.tree_node** %type to i64**, !dbg !2845
  %2 = load i64*, i64** %1, align 8, !dbg !2845
  %bf.load2 = load i64, i64* %2, align 8, !dbg !2845
  %bf.cast48 = and i64 %bf.load2, 65535, !dbg !2845
  %cmp5 = icmp eq i64 %bf.cast48, 10, !dbg !2845
  br i1 %cmp5, label %if.then13, label %lor.lhs.false, !dbg !2845

lor.lhs.false:                                    ; preds = %if.then
  %cmp12 = icmp eq i64 %bf.cast48, 12, !dbg !2845
  br i1 %cmp12, label %if.then13, label %if.end, !dbg !2848

if.then13:                                        ; preds = %lor.lhs.false, %if.then
  tail call void @dump_points_to_info_for(%struct._IO_FILE* %file, %union.tree_node* %var) #6, !dbg !2849
  br label %if.end, !dbg !2849

if.end:                                           ; preds = %if.then13, %lor.lhs.false
  %var14 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2850
  %3 = bitcast i32* %var14 to %union.tree_node**, !dbg !2850
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !2850
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2838, metadata !DIExpression()), !dbg !2840
  br label %if.end15, !dbg !2851

if.end15:                                         ; preds = %if.end, %entry
  %var.addr.0 = phi %union.tree_node* [ %4, %if.end ], [ %var, %entry ]
  call void @llvm.dbg.value(metadata %union.tree_node* %var.addr.0, metadata !2838, metadata !DIExpression()), !dbg !2840
  %cmp16 = icmp eq %union.tree_node* %var.addr.0, null, !dbg !2852
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !2854

if.then17:                                        ; preds = %if.end15
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2855
  br label %cleanup.cont, !dbg !2857

if.end18:                                         ; preds = %if.end15
  %5 = load i32, i32* @dump_flags, align 4, !dbg !2858
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* nonnull %var.addr.0, i32 %5) #6, !dbg !2859
  %call19 = tail call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* nonnull %var.addr.0) #8, !dbg !2860
  call void @llvm.dbg.value(metadata %struct.var_ann_d* %call19, metadata !2839, metadata !DIExpression()), !dbg !2840
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %var.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2861
  %6 = load i32, i32* %uid, align 4, !dbg !2861
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %6) #6, !dbg !2862
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2863
  %type23 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2864
  %7 = load %union.tree_node*, %union.tree_node** %type23, align 8, !dbg !2864
  %8 = load i32, i32* @dump_flags, align 4, !dbg !2865
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %7, i32 %8) #6, !dbg !2866
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2867
  %bf.load25 = load i64, i64* %9, align 8, !dbg !2867
  %bf.cast276 = and i64 %bf.load25, 262144, !dbg !2867
  %tobool = icmp eq i64 %bf.cast276, 0, !dbg !2867
  br i1 %tobool, label %if.end30, label %if.then28, !dbg !2869

if.then28:                                        ; preds = %if.end18
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2870
  br label %if.end30, !dbg !2870

if.end30:                                         ; preds = %if.end18, %if.then28
  %call31 = tail call fastcc zeroext i8 @is_global_var(%union.tree_node* nonnull %var.addr.0) #8, !dbg !2871
  %tobool32 = icmp eq i8 %call31, 0, !dbg !2871
  br i1 %tobool32, label %if.end35, label %if.then33, !dbg !2873

if.then33:                                        ; preds = %if.end30
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2874
  br label %if.end35, !dbg !2874

if.end35:                                         ; preds = %if.end30, %if.then33
  %bf.load37 = load i64, i64* %9, align 8, !dbg !2875
  %bf.cast407 = and i64 %bf.load37, 524288, !dbg !2875
  %tobool41 = icmp eq i64 %bf.cast407, 0, !dbg !2875
  br i1 %tobool41, label %if.end44, label %if.then42, !dbg !2877

if.then42:                                        ; preds = %if.end35
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2878
  br label %if.end44, !dbg !2878

if.end44:                                         ; preds = %if.end35, %if.then42
  %call45 = tail call fastcc zeroext i8 @is_call_clobbered(%union.tree_node* nonnull %var.addr.0) #8, !dbg !2879
  %tobool46 = icmp eq i8 %call45, 0, !dbg !2879
  br i1 %tobool46, label %if.else, label %if.then47, !dbg !2881

if.then47:                                        ; preds = %if.end44
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2882
  br label %if.end54, !dbg !2882

if.else:                                          ; preds = %if.end44
  %call49 = tail call fastcc zeroext i8 @is_call_used(%union.tree_node* nonnull %var.addr.0) #8, !dbg !2883
  %tobool50 = icmp eq i8 %call49, 0, !dbg !2883
  br i1 %tobool50, label %if.end54, label %if.then51, !dbg !2885

if.then51:                                        ; preds = %if.else
  %call52 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2886
  br label %if.end54, !dbg !2886

if.end54:                                         ; preds = %if.else, %if.then51, %if.then47
  %cond = icmp eq %struct.var_ann_d* %call19, null, !dbg !2887
  br i1 %cond, label %if.end85, label %land.lhs.true, !dbg !2887

land.lhs.true:                                    ; preds = %if.end54
  %10 = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call19, i64 0, i32 0, !dbg !2889
  %bf.load56 = load i8, i8* %10, align 8, !dbg !2889
  %bf.clear58 = and i8 %bf.load56, 96, !dbg !2889
  %cmp60 = icmp eq i8 %bf.clear58, 32, !dbg !2890
  br i1 %cmp60, label %if.then61, label %if.else63, !dbg !2891

if.then61:                                        ; preds = %land.lhs.true
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2892
  br label %if.end85, !dbg !2892

if.else63:                                        ; preds = %land.lhs.true
  %cmp70 = icmp eq i8 %bf.clear58, 64, !dbg !2893
  br i1 %cmp70, label %if.then71, label %if.else73, !dbg !2895

if.then71:                                        ; preds = %if.else63
  %call72 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2896
  br label %if.end85, !dbg !2896

if.else73:                                        ; preds = %if.else63
  %cmp80 = icmp eq i8 %bf.clear58, 96, !dbg !2897
  br i1 %cmp80, label %if.then81, label %if.end85, !dbg !2899

if.then81:                                        ; preds = %if.else73
  %call82 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2900
  br label %if.end85, !dbg !2900

if.end85:                                         ; preds = %if.end54, %if.then71, %if.then81, %if.else73, %if.then61
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2901
  %tobool86 = icmp eq %struct.function* %11, null, !dbg !2901
  br i1 %tobool86, label %if.end95, label %land.lhs.true87, !dbg !2903

land.lhs.true87:                                  ; preds = %if.end85
  %call89 = tail call %union.tree_node* @gimple_default_def(%struct.function* nonnull %11, %union.tree_node* nonnull %var.addr.0) #8, !dbg !2904
  %tobool90 = icmp eq %union.tree_node* %call89, null, !dbg !2904
  br i1 %tobool90, label %if.end95, label %if.then91, !dbg !2905

if.then91:                                        ; preds = %land.lhs.true87
  %call92 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2906
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2908
  %call94 = tail call %union.tree_node* @gimple_default_def(%struct.function* %12, %union.tree_node* nonnull %var.addr.0) #8, !dbg !2909
  %13 = load i32, i32* @dump_flags, align 4, !dbg !2910
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %call94, i32 %13) #6, !dbg !2911
  br label %if.end95, !dbg !2912

if.end95:                                         ; preds = %land.lhs.true87, %if.end85, %if.then91
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %var.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2913
  %14 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2913
  %tobool96 = icmp eq %union.tree_node* %14, null, !dbg !2913
  br i1 %tobool96, label %if.end101, label %if.then97, !dbg !2915

if.then97:                                        ; preds = %if.end95
  %call98 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !2916
  %15 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2918
  %16 = load i32, i32* @dump_flags, align 4, !dbg !2919
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %15, i32 %16) #6, !dbg !2920
  br label %if.end101, !dbg !2921

if.end101:                                        ; preds = %if.end95, %if.then97
  %call102 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2922
  br label %cleanup.cont, !dbg !2923

cleanup.cont:                                     ; preds = %if.then17, %if.end101
  ret void, !dbg !2923
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @next_referenced_var(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !2924 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !2926, metadata !DIExpression()), !dbg !2927
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !2928
  %call = tail call fastcc i8* @next_htab_element(%struct.htab_iterator* %hti) #8, !dbg !2929
  %0 = bitcast i8* %call to %union.tree_node*, !dbg !2930
  ret %union.tree_node* %0, !dbg !2931
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_referenced_vars() local_unnamed_addr #5 !dbg !2932 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2933
  tail call void @dump_referenced_vars(%struct._IO_FILE* %0) #8, !dbg !2934
  ret void, !dbg !2935
}

declare dso_local void @dump_points_to_info_for(%struct._IO_FILE*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %t) unnamed_addr #0 !dbg !2936 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2941, metadata !DIExpression()), !dbg !2945
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2946
  %bf.load = load i64, i64* %0, align 8, !dbg !2946
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2946
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !2946
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2946

cond.true:                                        ; preds = %entry
  %ann = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 1, !dbg !2946
  %1 = bitcast %union.tree_node** %ann to %struct.var_ann_d**, !dbg !2946
  br label %cond.end19, !dbg !2946

cond.false:                                       ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !2946
  br i1 %cmp5, label %cond.true6, label %cond.false8, !dbg !2946

cond.true6:                                       ; preds = %cond.false
  %ann7 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2946
  %2 = bitcast %union.tree_node** %ann7 to %struct.var_ann_d**, !dbg !2946
  br label %cond.end19, !dbg !2946

cond.false8:                                      ; preds = %cond.false
  %cmp13 = icmp eq i64 %bf.cast1, 36, !dbg !2946
  %ann15 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2946
  %3 = bitcast %union.tree_node** %ann15 to %struct.var_ann_d**, !dbg !2946
  %cond = select i1 %cmp13, %struct.var_ann_d** %3, %struct.var_ann_d** null, !dbg !2946
  br label %cond.end19, !dbg !2946

cond.end19:                                       ; preds = %cond.true6, %cond.false8, %cond.true
  %cond20 = phi %struct.var_ann_d** [ %1, %cond.true ], [ %2, %cond.true6 ], [ %cond, %cond.false8 ], !dbg !2946
  call void @llvm.dbg.value(metadata %struct.var_ann_d** %cond20, metadata !2942, metadata !DIExpression()), !dbg !2945
  %tobool = icmp eq %struct.var_ann_d** %cond20, null, !dbg !2947
  br i1 %tobool, label %cond.end23, label %cond.true21, !dbg !2947

cond.true21:                                      ; preds = %cond.end19
  %4 = load %struct.var_ann_d*, %struct.var_ann_d** %cond20, align 8, !dbg !2948
  br label %cond.end23, !dbg !2947

cond.end23:                                       ; preds = %cond.end19, %cond.true21
  %cond24 = phi %struct.var_ann_d* [ %4, %cond.true21 ], [ null, %cond.end19 ], !dbg !2947
  ret %struct.var_ann_d* %cond24, !dbg !2949
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_global_var(%union.tree_node* %t) unnamed_addr #0 !dbg !2950 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2954, metadata !DIExpression()), !dbg !2955
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2956
  %bf.load = load i64, i64* %0, align 8, !dbg !2956
  %bf.cast1 = and i64 %bf.load, 67108864, !dbg !2956
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !2956
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2957

lor.rhs:                                          ; preds = %entry
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2958
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !2958
  %bf.load1 = load i64, i64* %1, align 8, !dbg !2958
  %bf.cast42 = lshr i64 %bf.load1, 25, !dbg !2957
  %2 = trunc i64 %bf.cast42 to i8, !dbg !2957
  %3 = and i8 %2, 1, !dbg !2957
  br label %lor.end, !dbg !2957

lor.end:                                          ; preds = %entry, %lor.rhs
  %4 = phi i8 [ 1, %entry ], [ %3, %lor.rhs ]
  ret i8 %4, !dbg !2959
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_call_clobbered(%union.tree_node* %var) unnamed_addr #0 !dbg !2960 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2962, metadata !DIExpression()), !dbg !2963
  %call = tail call fastcc zeroext i8 @is_global_var(%union.tree_node* %var) #8, !dbg !2964
  %tobool = icmp eq i8 %call, 0, !dbg !2964
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2965

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var) #8, !dbg !2966
  %tobool3 = icmp eq i8 %call1, 0, !dbg !2966
  br i1 %tobool3, label %lor.end, label %land.rhs, !dbg !2967

land.rhs:                                         ; preds = %lor.rhs
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2968
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !2969
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2969
  %escaped = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 4, !dbg !2970
  %call4 = tail call zeroext i8 @pt_solution_includes(%struct.pt_solution* nonnull %escaped, %union.tree_node* %var) #6, !dbg !2971
  %tobool6 = icmp ne i8 %call4, 0, !dbg !2967
  %phitmp = zext i1 %tobool6 to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry, %land.rhs
  %2 = phi i8 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !2972
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_call_used(%union.tree_node* %var) unnamed_addr #0 !dbg !2973 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2975, metadata !DIExpression()), !dbg !2976
  %call = tail call fastcc zeroext i8 @is_call_clobbered(%union.tree_node* %var) #8, !dbg !2977
  %tobool = icmp eq i8 %call, 0, !dbg !2977
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2978

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var) #8, !dbg !2979
  %tobool3 = icmp eq i8 %call1, 0, !dbg !2979
  br i1 %tobool3, label %lor.end, label %land.rhs, !dbg !2980

land.rhs:                                         ; preds = %lor.rhs
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2981
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !2982
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2982
  %callused = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 5, !dbg !2983
  %call4 = tail call zeroext i8 @pt_solution_includes(%struct.pt_solution* nonnull %callused, %union.tree_node* %var) #6, !dbg !2984
  %tobool6 = icmp ne i8 %call4, 0, !dbg !2980
  %phitmp = zext i1 %tobool6 to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry, %land.rhs
  %2 = phi i8 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !2985
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @gimple_default_def(%struct.function* %fn, %union.tree_node* %var) local_unnamed_addr #5 !dbg !2986 {
entry:
  %ind = alloca %struct.tree_decl_minimal, align 8
  %in = alloca %struct.tree_ssa_name, align 8
  call void @llvm.dbg.value(metadata %struct.function* %fn, metadata !2990, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2991, metadata !DIExpression()), !dbg !2994
  %0 = bitcast %struct.tree_decl_minimal* %ind to i8*, !dbg !2995
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !2995
  %1 = bitcast %struct.tree_ssa_name* %in to i8*, !dbg !2996
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %1) #7, !dbg !2996
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2997
  %bf.load = load i64, i64* %2, align 8, !dbg !2997
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2997
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !2997
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !2997

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !2997
  br i1 %cmp5, label %cond.end, label %lor.lhs.false6, !dbg !2997

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i64 %bf.cast1, 36, !dbg !2997
  br i1 %cmp11, label %cond.end, label %lor.lhs.false12, !dbg !2997

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %cmp17 = icmp eq i64 %bf.cast1, 141, !dbg !2997
  br i1 %cmp17, label %land.lhs.true, label %cond.true, !dbg !2997

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %var18 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2997
  %3 = bitcast i32* %var18 to i64**, !dbg !2997
  %4 = load i64*, i64** %3, align 8, !dbg !2997
  %bf.load20 = load i64, i64* %4, align 8, !dbg !2997
  %bf.cast225 = and i64 %bf.load20, 65535, !dbg !2997
  %cmp23 = icmp eq i64 %bf.cast225, 32, !dbg !2997
  br i1 %cmp23, label %cond.end, label %lor.lhs.false24, !dbg !2997

lor.lhs.false24:                                  ; preds = %land.lhs.true
  %cmp31 = icmp eq i64 %bf.cast225, 34, !dbg !2997
  br i1 %cmp31, label %cond.end, label %lor.lhs.false32, !dbg !2997

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %cmp39 = icmp eq i64 %bf.cast225, 36, !dbg !2997
  br i1 %cmp39, label %cond.end, label %cond.true, !dbg !2997

cond.true:                                        ; preds = %lor.lhs.false32, %lor.lhs.false12
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 557, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2997
  br label %cond.end, !dbg !2997

cond.end:                                         ; preds = %entry, %lor.lhs.false, %lor.lhs.false6, %land.lhs.true, %lor.lhs.false24, %lor.lhs.false32, %cond.true
  %var40 = getelementptr inbounds %struct.tree_ssa_name, %struct.tree_ssa_name* %in, i64 0, i32 1, !dbg !2998
  %5 = bitcast %union.tree_node** %var40 to %struct.tree_decl_minimal**, !dbg !2999
  store %struct.tree_decl_minimal* %ind, %struct.tree_decl_minimal** %5, align 8, !dbg !2999
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3000
  %6 = load i32, i32* %uid, align 4, !dbg !3000
  %uid41 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %ind, i64 0, i32 2, !dbg !3001
  store i32 %6, i32* %uid41, align 4, !dbg !3002
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fn, i64 0, i32 3, !dbg !3003
  %7 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3003
  %default_defs = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %7, i64 0, i32 8, !dbg !3003
  %8 = load %struct.htab*, %struct.htab** %default_defs, align 8, !dbg !3003
  %call = call i8* @htab_find_with_hash(%struct.htab* %8, i8* nonnull %1, i32 %6) #6, !dbg !3004
  %9 = bitcast i8* %call to %union.tree_node*, !dbg !3005
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %1) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3006
  ret %union.tree_node* %9, !dbg !3007
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_variable(%union.tree_node* %var) local_unnamed_addr #5 !dbg !3008 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3012, metadata !DIExpression()), !dbg !3013
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3014
  tail call void @dump_variable(%struct._IO_FILE* %0, %union.tree_node* %var) #8, !dbg !3015
  ret void, !dbg !3016
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_dfa_stats(%struct._IO_FILE* %file) local_unnamed_addr #5 !dbg !3017 {
entry:
  %dfa_stats = alloca %struct.dfa_stats_d, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3019, metadata !DIExpression()), !dbg !3038
  %0 = bitcast %struct.dfa_stats_d* %dfa_stats to i8*, !dbg !3039
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7, !dbg !3039
  call void @llvm.dbg.value(metadata i64 0, metadata !3032, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), metadata !3033, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), metadata !3035, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), metadata !3036, metadata !DIExpression()), !dbg !3038
  %1 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !3040
  %2 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3041
  %call = tail call i8* %1(%union.tree_node* %2, i32 2) #6, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %call, metadata !3037, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata %struct.dfa_stats_d* %dfa_stats, metadata !3020, metadata !DIExpression(DW_OP_deref)), !dbg !3038
  call fastcc void @collect_dfa_stats(%struct.dfa_stats_d* nonnull %dfa_stats) #8, !dbg !3043
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8* %call) #6, !dbg !3044
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !3045
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !3046
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !3047
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !3048
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3049
  %call6 = call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %3) #8, !dbg !3049
  %call7 = call i64 @htab_elements(%struct.htab* %call6) #6, !dbg !3049
  %mul = shl i64 %call7, 3, !dbg !3050
  call void @llvm.dbg.value(metadata i64 %mul, metadata !3031, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i64 %mul, metadata !3032, metadata !DIExpression()), !dbg !3038
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3051
  %call9 = call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %4) #8, !dbg !3051
  %call10 = call i64 @htab_elements(%struct.htab* %call9) #6, !dbg !3051
  %cmp = icmp ult i64 %mul, 10240, !dbg !3052
  br i1 %cmp, label %cond.end15, label %cond.false, !dbg !3052

cond.false:                                       ; preds = %entry
  %cmp11 = icmp ult i64 %mul, 10485760, !dbg !3052
  br i1 %cmp11, label %cond.true12, label %cond.false13, !dbg !3052

cond.true12:                                      ; preds = %cond.false
  %5 = lshr i64 %call7, 7, !dbg !3052
  %div = and i64 %5, 18014398509481983, !dbg !3052
  br label %cond.end15, !dbg !3052

cond.false13:                                     ; preds = %cond.false
  %6 = lshr i64 %call7, 17, !dbg !3052
  %div14 = and i64 %6, 17592186044415, !dbg !3052
  br label %cond.end15, !dbg !3052

cond.end15:                                       ; preds = %cond.true12, %cond.false13, %entry
  %cond16 = phi i64 [ %mul, %entry ], [ %div, %cond.true12 ], [ %div14, %cond.false13 ], !dbg !3052
  br i1 %cmp, label %cond.end22, label %cond.false19, !dbg !3053

cond.false19:                                     ; preds = %cond.end15
  %cmp20 = icmp ult i64 %mul, 10485760, !dbg !3053
  %cond21 = select i1 %cmp20, i32 107, i32 77, !dbg !3053
  br label %cond.end22, !dbg !3053

cond.end22:                                       ; preds = %cond.end15, %cond.false19
  %cond23 = phi i32 [ %cond21, %cond.false19 ], [ 98, %cond.end15 ], !dbg !3053
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i64 %call10, i64 %cond16, i32 %cond23) #6, !dbg !3054
  %num_var_anns = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats, i64 0, i32 0, !dbg !3055
  %7 = load i64, i64* %num_var_anns, align 8, !dbg !3055
  %mul25 = shl i64 %7, 4, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %mul25, metadata !3031, metadata !DIExpression()), !dbg !3038
  %add26 = add i64 %mul, %mul25, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %add26, metadata !3032, metadata !DIExpression()), !dbg !3038
  %cmp28 = icmp ult i64 %mul25, 10240, !dbg !3058
  br i1 %cmp28, label %cond.end38, label %cond.false30, !dbg !3058

cond.false30:                                     ; preds = %cond.end22
  %cmp31 = icmp ult i64 %mul25, 10485760, !dbg !3058
  br i1 %cmp31, label %cond.true32, label %cond.false34, !dbg !3058

cond.true32:                                      ; preds = %cond.false30
  %8 = lshr i64 %7, 6, !dbg !3058
  %div33 = and i64 %8, 18014398509481983, !dbg !3058
  br label %cond.end38, !dbg !3058

cond.false34:                                     ; preds = %cond.false30
  %9 = lshr i64 %7, 16, !dbg !3058
  %div35 = and i64 %9, 17592186044415, !dbg !3058
  br label %cond.end38, !dbg !3058

cond.end38:                                       ; preds = %cond.true32, %cond.false34, %cond.end22
  %cond39 = phi i64 [ %mul25, %cond.end22 ], [ %div33, %cond.true32 ], [ %div35, %cond.false34 ], !dbg !3058
  br i1 %cmp28, label %cond.end45, label %cond.false42, !dbg !3059

cond.false42:                                     ; preds = %cond.end38
  %cmp43 = icmp ult i64 %mul25, 10485760, !dbg !3059
  %cond44 = select i1 %cmp43, i32 107, i32 77, !dbg !3059
  br label %cond.end45, !dbg !3059

cond.end45:                                       ; preds = %cond.end38, %cond.false42
  %cond46 = phi i32 [ %cond44, %cond.false42 ], [ 98, %cond.end38 ], !dbg !3059
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i64 %7, i64 %cond39, i32 %cond46) #6, !dbg !3060
  %num_uses = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats, i64 0, i32 2, !dbg !3061
  %10 = load i64, i64* %num_uses, align 8, !dbg !3061
  %mul48 = shl i64 %10, 3, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %mul48, metadata !3031, metadata !DIExpression()), !dbg !3038
  %add49 = add i64 %add26, %mul48, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %add49, metadata !3032, metadata !DIExpression()), !dbg !3038
  %cmp51 = icmp ult i64 %mul48, 10240, !dbg !3064
  br i1 %cmp51, label %cond.end61, label %cond.false53, !dbg !3064

cond.false53:                                     ; preds = %cond.end45
  %cmp54 = icmp ult i64 %mul48, 10485760, !dbg !3064
  br i1 %cmp54, label %cond.true55, label %cond.false57, !dbg !3064

cond.true55:                                      ; preds = %cond.false53
  %11 = lshr i64 %10, 7, !dbg !3064
  %div56 = and i64 %11, 18014398509481983, !dbg !3064
  br label %cond.end61, !dbg !3064

cond.false57:                                     ; preds = %cond.false53
  %12 = lshr i64 %10, 17, !dbg !3064
  %div58 = and i64 %12, 17592186044415, !dbg !3064
  br label %cond.end61, !dbg !3064

cond.end61:                                       ; preds = %cond.true55, %cond.false57, %cond.end45
  %cond62 = phi i64 [ %mul48, %cond.end45 ], [ %div56, %cond.true55 ], [ %div58, %cond.false57 ], !dbg !3064
  br i1 %cmp51, label %cond.end68, label %cond.false65, !dbg !3065

cond.false65:                                     ; preds = %cond.end61
  %cmp66 = icmp ult i64 %mul48, 10485760, !dbg !3065
  %cond67 = select i1 %cmp66, i32 107, i32 77, !dbg !3065
  br label %cond.end68, !dbg !3065

cond.end68:                                       ; preds = %cond.end61, %cond.false65
  %cond69 = phi i32 [ %cond67, %cond.false65 ], [ 98, %cond.end61 ], !dbg !3065
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i64 %10, i64 %cond62, i32 %cond69) #6, !dbg !3066
  %num_defs = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats, i64 0, i32 1, !dbg !3067
  %13 = load i64, i64* %num_defs, align 8, !dbg !3067
  %mul71 = shl i64 %13, 3, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %mul71, metadata !3031, metadata !DIExpression()), !dbg !3038
  %add72 = add i64 %add49, %mul71, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %add72, metadata !3032, metadata !DIExpression()), !dbg !3038
  %cmp74 = icmp ult i64 %mul71, 10240, !dbg !3070
  br i1 %cmp74, label %cond.end84, label %cond.false76, !dbg !3070

cond.false76:                                     ; preds = %cond.end68
  %cmp77 = icmp ult i64 %mul71, 10485760, !dbg !3070
  br i1 %cmp77, label %cond.true78, label %cond.false80, !dbg !3070

cond.true78:                                      ; preds = %cond.false76
  %14 = lshr i64 %13, 7, !dbg !3070
  %div79 = and i64 %14, 18014398509481983, !dbg !3070
  br label %cond.end84, !dbg !3070

cond.false80:                                     ; preds = %cond.false76
  %15 = lshr i64 %13, 17, !dbg !3070
  %div81 = and i64 %15, 17592186044415, !dbg !3070
  br label %cond.end84, !dbg !3070

cond.end84:                                       ; preds = %cond.true78, %cond.false80, %cond.end68
  %cond85 = phi i64 [ %mul71, %cond.end68 ], [ %div79, %cond.true78 ], [ %div81, %cond.false80 ], !dbg !3070
  br i1 %cmp74, label %cond.end91, label %cond.false88, !dbg !3071

cond.false88:                                     ; preds = %cond.end84
  %cmp89 = icmp ult i64 %mul71, 10485760, !dbg !3071
  %cond90 = select i1 %cmp89, i32 107, i32 77, !dbg !3071
  br label %cond.end91, !dbg !3071

cond.end91:                                       ; preds = %cond.end84, %cond.false88
  %cond92 = phi i32 [ %cond90, %cond.false88 ], [ 98, %cond.end84 ], !dbg !3071
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i64 %13, i64 %cond85, i32 %cond92) #6, !dbg !3072
  %num_vuses = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats, i64 0, i32 7, !dbg !3073
  %16 = load i64, i64* %num_vuses, align 8, !dbg !3073
  %mul94 = shl i64 %16, 3, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %mul94, metadata !3031, metadata !DIExpression()), !dbg !3038
  %add95 = add i64 %add72, %mul94, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %add95, metadata !3032, metadata !DIExpression()), !dbg !3038
  %cmp97 = icmp ult i64 %mul94, 10240, !dbg !3076
  br i1 %cmp97, label %cond.end107, label %cond.false99, !dbg !3076

cond.false99:                                     ; preds = %cond.end91
  %cmp100 = icmp ult i64 %mul94, 10485760, !dbg !3076
  br i1 %cmp100, label %cond.true101, label %cond.false103, !dbg !3076

cond.true101:                                     ; preds = %cond.false99
  %17 = lshr i64 %16, 7, !dbg !3076
  %div102 = and i64 %17, 18014398509481983, !dbg !3076
  br label %cond.end107, !dbg !3076

cond.false103:                                    ; preds = %cond.false99
  %18 = lshr i64 %16, 17, !dbg !3076
  %div104 = and i64 %18, 17592186044415, !dbg !3076
  br label %cond.end107, !dbg !3076

cond.end107:                                      ; preds = %cond.true101, %cond.false103, %cond.end91
  %cond108 = phi i64 [ %mul94, %cond.end91 ], [ %div102, %cond.true101 ], [ %div104, %cond.false103 ], !dbg !3076
  br i1 %cmp97, label %cond.end114, label %cond.false111, !dbg !3077

cond.false111:                                    ; preds = %cond.end107
  %cmp112 = icmp ult i64 %mul94, 10485760, !dbg !3077
  %cond113 = select i1 %cmp112, i32 107, i32 77, !dbg !3077
  br label %cond.end114, !dbg !3077

cond.end114:                                      ; preds = %cond.end107, %cond.false111
  %cond115 = phi i32 [ %cond113, %cond.false111 ], [ 98, %cond.end107 ], !dbg !3077
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i64 %16, i64 %cond108, i32 %cond115) #6, !dbg !3078
  %num_vdefs = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats, i64 0, i32 6, !dbg !3079
  %19 = load i64, i64* %num_vdefs, align 8, !dbg !3079
  %mul117 = shl i64 %19, 3, !dbg !3080
  call void @llvm.dbg.value(metadata i64 %mul117, metadata !3031, metadata !DIExpression()), !dbg !3038
  %add118 = add i64 %add95, %mul117, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %add118, metadata !3032, metadata !DIExpression()), !dbg !3038
  %cmp120 = icmp ult i64 %mul117, 10240, !dbg !3082
  br i1 %cmp120, label %cond.end130, label %cond.false122, !dbg !3082

cond.false122:                                    ; preds = %cond.end114
  %cmp123 = icmp ult i64 %mul117, 10485760, !dbg !3082
  br i1 %cmp123, label %cond.true124, label %cond.false126, !dbg !3082

cond.true124:                                     ; preds = %cond.false122
  %20 = lshr i64 %19, 7, !dbg !3082
  %div125 = and i64 %20, 18014398509481983, !dbg !3082
  br label %cond.end130, !dbg !3082

cond.false126:                                    ; preds = %cond.false122
  %21 = lshr i64 %19, 17, !dbg !3082
  %div127 = and i64 %21, 17592186044415, !dbg !3082
  br label %cond.end130, !dbg !3082

cond.end130:                                      ; preds = %cond.true124, %cond.false126, %cond.end114
  %cond131 = phi i64 [ %mul117, %cond.end114 ], [ %div125, %cond.true124 ], [ %div127, %cond.false126 ], !dbg !3082
  br i1 %cmp120, label %cond.end137, label %cond.false134, !dbg !3083

cond.false134:                                    ; preds = %cond.end130
  %cmp135 = icmp ult i64 %mul117, 10485760, !dbg !3083
  %cond136 = select i1 %cmp135, i32 107, i32 77, !dbg !3083
  br label %cond.end137, !dbg !3083

cond.end137:                                      ; preds = %cond.end130, %cond.false134
  %cond138 = phi i32 [ %cond136, %cond.false134 ], [ 98, %cond.end130 ], !dbg !3083
  %call139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i64 %19, i64 %cond131, i32 %cond138) #6, !dbg !3084
  %num_phis = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats, i64 0, i32 3, !dbg !3085
  %22 = load i64, i64* %num_phis, align 8, !dbg !3085
  %mul140 = mul i64 %22, 96, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %mul140, metadata !3031, metadata !DIExpression()), !dbg !3038
  %add141 = add i64 %add118, %mul140, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %add141, metadata !3032, metadata !DIExpression()), !dbg !3038
  %cmp143 = icmp ult i64 %mul140, 10240, !dbg !3088
  br i1 %cmp143, label %cond.end153, label %cond.false145, !dbg !3088

cond.false145:                                    ; preds = %cond.end137
  %cmp146 = icmp ult i64 %mul140, 10485760, !dbg !3088
  br i1 %cmp146, label %cond.true147, label %cond.false149, !dbg !3088

cond.true147:                                     ; preds = %cond.false145
  %div148 = lshr i64 %mul140, 10, !dbg !3088
  br label %cond.end153, !dbg !3088

cond.false149:                                    ; preds = %cond.false145
  %div150 = lshr i64 %mul140, 20, !dbg !3088
  br label %cond.end153, !dbg !3088

cond.end153:                                      ; preds = %cond.true147, %cond.false149, %cond.end137
  %cond154 = phi i64 [ %mul140, %cond.end137 ], [ %div148, %cond.true147 ], [ %div150, %cond.false149 ], !dbg !3088
  br i1 %cmp143, label %cond.end160, label %cond.false157, !dbg !3089

cond.false157:                                    ; preds = %cond.end153
  %cmp158 = icmp ult i64 %mul140, 10485760, !dbg !3089
  %cond159 = select i1 %cmp158, i32 107, i32 77, !dbg !3089
  br label %cond.end160, !dbg !3089

cond.end160:                                      ; preds = %cond.end153, %cond.false157
  %cond161 = phi i32 [ %cond159, %cond.false157 ], [ 98, %cond.end153 ], !dbg !3089
  %call162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %22, i64 %cond154, i32 %cond161) #6, !dbg !3090
  %num_phi_args = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats, i64 0, i32 4, !dbg !3091
  %23 = load i64, i64* %num_phi_args, align 8, !dbg !3091
  %mul163 = mul i64 %23, 48, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %mul163, metadata !3031, metadata !DIExpression()), !dbg !3038
  %add164 = add i64 %add141, %mul163, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %add164, metadata !3032, metadata !DIExpression()), !dbg !3038
  %cmp166 = icmp ult i64 %mul163, 10240, !dbg !3094
  br i1 %cmp166, label %cond.end176, label %cond.false168, !dbg !3094

cond.false168:                                    ; preds = %cond.end160
  %cmp169 = icmp ult i64 %mul163, 10485760, !dbg !3094
  br i1 %cmp169, label %cond.true170, label %cond.false172, !dbg !3094

cond.true170:                                     ; preds = %cond.false168
  %div171 = lshr i64 %mul163, 10, !dbg !3094
  br label %cond.end176, !dbg !3094

cond.false172:                                    ; preds = %cond.false168
  %div173 = lshr i64 %mul163, 20, !dbg !3094
  br label %cond.end176, !dbg !3094

cond.end176:                                      ; preds = %cond.true170, %cond.false172, %cond.end160
  %cond177 = phi i64 [ %mul163, %cond.end160 ], [ %div171, %cond.true170 ], [ %div173, %cond.false172 ], !dbg !3094
  br i1 %cmp166, label %cond.end183, label %cond.false180, !dbg !3095

cond.false180:                                    ; preds = %cond.end176
  %cmp181 = icmp ult i64 %mul163, 10485760, !dbg !3095
  %cond182 = select i1 %cmp181, i32 107, i32 77, !dbg !3095
  br label %cond.end183, !dbg !3095

cond.end183:                                      ; preds = %cond.end176, %cond.false180
  %cond184 = phi i32 [ %cond182, %cond.false180 ], [ 98, %cond.end176 ], !dbg !3095
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i64 %23, i64 %cond177, i32 %cond184) #6, !dbg !3096
  %call186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !3097
  %cmp187 = icmp ult i64 %add164, 10240, !dbg !3098
  br i1 %cmp187, label %cond.end197, label %cond.false189, !dbg !3098

cond.false189:                                    ; preds = %cond.end183
  %cmp190 = icmp ult i64 %add164, 10485760, !dbg !3098
  br i1 %cmp190, label %cond.true191, label %cond.false193, !dbg !3098

cond.true191:                                     ; preds = %cond.false189
  %div192 = lshr i64 %add164, 10, !dbg !3098
  br label %cond.end197, !dbg !3098

cond.false193:                                    ; preds = %cond.false189
  %div194 = lshr i64 %add164, 20, !dbg !3098
  br label %cond.end197, !dbg !3098

cond.end197:                                      ; preds = %cond.true191, %cond.false193, %cond.end183
  %cond198 = phi i64 [ %add164, %cond.end183 ], [ %div192, %cond.true191 ], [ %div194, %cond.false193 ], !dbg !3098
  br i1 %cmp187, label %cond.end204, label %cond.false201, !dbg !3099

cond.false201:                                    ; preds = %cond.end197
  %cmp202 = icmp ult i64 %add164, 10485760, !dbg !3099
  %cond203 = select i1 %cmp202, i32 107, i32 77, !dbg !3099
  br label %cond.end204, !dbg !3099

cond.end204:                                      ; preds = %cond.end197, %cond.false201
  %cond205 = phi i32 [ %cond203, %cond.false201 ], [ 98, %cond.end197 ], !dbg !3099
  %call206 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i64 0, i64 0), i64 %cond198, i32 %cond205) #6, !dbg !3100
  %call207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !3101
  %call208 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3102
  %24 = load i64, i64* %num_phis, align 8, !dbg !3103
  %tobool = icmp eq i64 %24, 0, !dbg !3105
  br i1 %tobool, label %if.end, label %if.then, !dbg !3106

if.then:                                          ; preds = %cond.end204
  %25 = load i64, i64* %num_phi_args, align 8, !dbg !3107
  %conv = sitofp i64 %25 to float, !dbg !3108
  %conv212 = sitofp i64 %24 to float, !dbg !3109
  %div213 = fdiv float %conv, %conv212, !dbg !3110
  %conv214 = fpext float %div213 to double, !dbg !3108
  %max_num_phi_args = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats, i64 0, i32 5, !dbg !3111
  %26 = load i64, i64* %max_num_phi_args, align 8, !dbg !3111
  %call215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.38, i64 0, i64 0), double %conv214, i64 %26) #6, !dbg !3112
  br label %if.end, !dbg !3112

if.end:                                           ; preds = %cond.end204, %if.then
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3113
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7, !dbg !3114
  ret void, !dbg !3114
}

; Function Attrs: nounwind uwtable
define internal fastcc void @collect_dfa_stats(%struct.dfa_stats_d* %dfa_stats_p) unnamed_addr #5 !dbg !3115 {
entry:
  %vi = alloca %struct.referenced_var_iterator, align 8
  %si = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp30 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.dfa_stats_d* %dfa_stats_p, metadata !3120, metadata !DIExpression()), !dbg !3136
  %0 = bitcast %struct.referenced_var_iterator* %vi to i8*, !dbg !3137
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3137
  %tobool = icmp eq %struct.dfa_stats_d* %dfa_stats_p, null, !dbg !3138
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3138

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3138
  br label %cond.end, !dbg !3138

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %struct.dfa_stats_d* %dfa_stats_p to i8*, !dbg !3139
  %call = tail call i8* @memset(i8* %1, i32 0, i64 64) #6, !dbg !3140
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %vi, metadata !3122, metadata !DIExpression(DW_OP_deref)), !dbg !3136
  %call1 = call fastcc %union.tree_node* @first_referenced_var(%struct.referenced_var_iterator* nonnull %vi) #8, !dbg !3141
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3123, metadata !DIExpression()), !dbg !3136
  %num_var_anns = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats_p, i64 0, i32 0, !dbg !3143
  br label %for.cond, !dbg !3141

for.cond:                                         ; preds = %for.inc, %cond.end
  %var.0 = phi %union.tree_node* [ %call1, %cond.end ], [ %call6, %for.inc ], !dbg !3146
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !3123, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %vi, metadata !3122, metadata !DIExpression(DW_OP_deref)), !dbg !3136
  %call2 = call fastcc zeroext i8 @end_referenced_vars_p(%struct.referenced_var_iterator* nonnull %vi) #8, !dbg !3147
  %tobool3 = icmp eq i8 %call2, 0, !dbg !3147
  br i1 %tobool3, label %for.body, label %for.end, !dbg !3141

for.body:                                         ; preds = %for.cond
  %call4 = call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %var.0) #8, !dbg !3148
  %tobool5 = icmp eq %struct.var_ann_d* %call4, null, !dbg !3148
  br i1 %tobool5, label %for.inc, label %if.then, !dbg !3149

if.then:                                          ; preds = %for.body
  %2 = load i64, i64* %num_var_anns, align 8, !dbg !3150
  %inc = add nsw i64 %2, 1, !dbg !3150
  store i64 %inc, i64* %num_var_anns, align 8, !dbg !3150
  br label %for.inc, !dbg !3151

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %vi, metadata !3122, metadata !DIExpression(DW_OP_deref)), !dbg !3136
  %call6 = call fastcc %union.tree_node* @next_referenced_var(%struct.referenced_var_iterator* nonnull %vi) #8, !dbg !3147
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !3123, metadata !DIExpression()), !dbg !3136
  br label %for.cond, !dbg !3147, !llvm.loop !3152

for.end:                                          ; preds = %for.cond
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3154
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3154
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3154
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 0, !dbg !3154
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3154
  %6 = bitcast %struct.gimple_stmt_iterator* %si to i8*, !dbg !3155
  %7 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3156
  %num_phis = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats_p, i64 0, i32 3, !dbg !3157
  %num_phi_args = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats_p, i64 0, i32 4, !dbg !3157
  %max_num_phi_args = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats_p, i64 0, i32 5, !dbg !3158
  %8 = bitcast %struct.gimple_stmt_iterator* %tmp30 to i8*, !dbg !3160
  %num_defs = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats_p, i64 0, i32 1, !dbg !3161
  %num_uses = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats_p, i64 0, i32 2, !dbg !3161
  %num_vdefs = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats_p, i64 0, i32 6, !dbg !3161
  %num_vuses = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %dfa_stats_p, i64 0, i32 7, !dbg !3161
  br label %for.cond7, !dbg !3154

for.cond7:                                        ; preds = %for.end54, %for.end
  %9 = phi %struct.control_flow_graph* [ %4, %for.end ], [ %.pre1, %for.end54 ], !dbg !3162
  %.pn = phi %struct.basic_block_def* [ %5, %for.end ], [ %bb.0, %for.end54 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3163
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3163
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3121, metadata !DIExpression()), !dbg !3136
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 1, !dbg !3162
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3162
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %10, !dbg !3162
  br i1 %cmp, label %for.end57, label %for.body10, !dbg !3154

for.body10:                                       ; preds = %for.cond7
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7, !dbg !3164
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #7, !dbg !3165
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #6, !dbg !3165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* nonnull align 8 %7, i64 24, i1 false), !dbg !3165
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #7, !dbg !3165
  br label %for.cond11, !dbg !3166

for.cond11:                                       ; preds = %for.inc28, %for.body10
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3124, metadata !DIExpression(DW_OP_deref)), !dbg !3155
  %call12 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #8, !dbg !3167
  %tobool13 = icmp eq i8 %call12, 0, !dbg !3168
  br i1 %tobool13, label %for.body15, label %for.end29, !dbg !3169

for.body15:                                       ; preds = %for.cond11
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3124, metadata !DIExpression(DW_OP_deref)), !dbg !3155
  %call16 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #8, !dbg !3170
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call16, metadata !3128, metadata !DIExpression()), !dbg !3157
  %11 = load i64, i64* %num_phis, align 8, !dbg !3171
  %inc17 = add nsw i64 %11, 1, !dbg !3171
  store i64 %inc17, i64* %num_phis, align 8, !dbg !3171
  %call18 = call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %call16) #8, !dbg !3172
  %conv = zext i32 %call18 to i64, !dbg !3172
  %12 = load i64, i64* %num_phi_args, align 8, !dbg !3173
  %add = add nsw i64 %12, %conv, !dbg !3173
  store i64 %add, i64* %num_phi_args, align 8, !dbg !3173
  %call19 = call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %call16) #8, !dbg !3174
  %conv20 = zext i32 %call19 to i64, !dbg !3174
  %13 = load i64, i64* %max_num_phi_args, align 8, !dbg !3175
  %cmp21 = icmp ult i64 %13, %conv20, !dbg !3176
  br i1 %cmp21, label %if.then23, label %for.inc28, !dbg !3177

if.then23:                                        ; preds = %for.body15
  %call24 = call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %call16) #8, !dbg !3178
  %conv25 = zext i32 %call24 to i64, !dbg !3178
  store i64 %conv25, i64* %max_num_phi_args, align 8, !dbg !3179
  br label %for.inc28, !dbg !3180

for.inc28:                                        ; preds = %for.body15, %if.then23
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3124, metadata !DIExpression(DW_OP_deref)), !dbg !3155
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %si) #8, !dbg !3181
  br label %for.cond11, !dbg !3182, !llvm.loop !3183

for.end29:                                        ; preds = %for.cond11
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7, !dbg !3185
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp30, %struct.basic_block_def* %bb.0) #8, !dbg !3185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* nonnull align 8 %8, i64 24, i1 false), !dbg !3185
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !3185
  br label %for.cond31, !dbg !3186

for.cond31:                                       ; preds = %for.body35, %for.end29
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3124, metadata !DIExpression(DW_OP_deref)), !dbg !3155
  %call32 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #8, !dbg !3187
  %tobool33 = icmp eq i8 %call32, 0, !dbg !3188
  br i1 %tobool33, label %for.body35, label %for.end54, !dbg !3189

for.body35:                                       ; preds = %for.cond31
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3124, metadata !DIExpression(DW_OP_deref)), !dbg !3155
  %call36 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #8, !dbg !3190
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call36, metadata !3132, metadata !DIExpression()), !dbg !3161
  %call37 = call fastcc i32 @num_ssa_operands(%union.gimple_statement_d* %call36, i32 2) #8, !dbg !3191
  %conv38 = sext i32 %call37 to i64, !dbg !3191
  %14 = load i64, i64* %num_defs, align 8, !dbg !3192
  %add39 = add nsw i64 %14, %conv38, !dbg !3192
  store i64 %add39, i64* %num_defs, align 8, !dbg !3192
  %call40 = call fastcc i32 @num_ssa_operands(%union.gimple_statement_d* %call36, i32 1) #8, !dbg !3193
  %conv41 = sext i32 %call40 to i64, !dbg !3193
  %15 = load i64, i64* %num_uses, align 8, !dbg !3194
  %add42 = add nsw i64 %15, %conv41, !dbg !3194
  store i64 %add42, i64* %num_uses, align 8, !dbg !3194
  %call43 = call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %call36) #8, !dbg !3195
  %tobool44 = icmp ne %union.tree_node* %call43, null, !dbg !3195
  %conv46 = zext i1 %tobool44 to i64, !dbg !3195
  %16 = load i64, i64* %num_vdefs, align 8, !dbg !3196
  %add47 = add nsw i64 %16, %conv46, !dbg !3196
  store i64 %add47, i64* %num_vdefs, align 8, !dbg !3196
  %call48 = call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %call36) #8, !dbg !3197
  %tobool49 = icmp ne %union.tree_node* %call48, null, !dbg !3197
  %conv51 = zext i1 %tobool49 to i64, !dbg !3197
  %17 = load i64, i64* %num_vuses, align 8, !dbg !3198
  %add52 = add nsw i64 %17, %conv51, !dbg !3198
  store i64 %add52, i64* %num_vuses, align 8, !dbg !3198
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3124, metadata !DIExpression(DW_OP_deref)), !dbg !3155
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %si) #8, !dbg !3199
  br label %for.cond31, !dbg !3200, !llvm.loop !3201

for.end54:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7, !dbg !3203
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3162
  %cfg9.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3204
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg9.phi.trans.insert, align 8, !dbg !3162
  br label %for.cond7, !dbg !3162, !llvm.loop !3205

for.end57:                                        ; preds = %for.cond7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3207
  ret void, !dbg !3207
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_dfa_stats() local_unnamed_addr #5 !dbg !3208 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3209
  tail call void @dump_dfa_stats(%struct._IO_FILE* %0) #8, !dbg !3210
  ret void, !dbg !3211
}

; Function Attrs: nounwind uwtable
define dso_local void @find_referenced_vars_in(%union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !3212 {
entry:
  %arg = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3216, metadata !DIExpression()), !dbg !3224
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3225
  %cmp = icmp eq i32 %call, 16, !dbg !3226
  br i1 %cmp, label %if.else, label %for.cond.preheader, !dbg !3227

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !3228

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3231
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3217, metadata !DIExpression()), !dbg !3224
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %stmt) #8, !dbg !3232
  %conv = zext i32 %call1 to i64, !dbg !3232
  %cmp2 = icmp ult i64 %i.0, %conv, !dbg !3234
  br i1 %cmp2, label %for.body, label %if.end.loopexit1, !dbg !3228

for.body:                                         ; preds = %for.cond
  %conv4 = trunc i64 %i.0 to i32, !dbg !3235
  %call5 = tail call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %stmt, i32 %conv4) #8, !dbg !3235
  %call6 = tail call %union.tree_node* @walk_tree_1(%union.tree_node** %call5, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @find_vars_r, i8* null, %struct.pointer_set_t* null, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)* null) #6, !dbg !3235
  %inc = add nuw nsw i64 %i.0, 1, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3217, metadata !DIExpression()), !dbg !3224
  br label %for.cond, !dbg !3237, !llvm.loop !3238

if.else:                                          ; preds = %entry
  %call7 = tail call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %stmt) #8, !dbg !3240
  %call8 = tail call %union.tree_node* @walk_tree_1(%union.tree_node** %call7, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @find_vars_r, i8* null, %struct.pointer_set_t* null, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)* null) #6, !dbg !3240
  call void @llvm.dbg.value(metadata i64 0, metadata !3217, metadata !DIExpression()), !dbg !3224
  %0 = bitcast %union.tree_node** %arg to i8*, !dbg !3241
  br label %for.cond9, !dbg !3242

for.cond9:                                        ; preds = %for.body14, %if.else
  %i.1 = phi i64 [ 0, %if.else ], [ %inc18, %for.body14 ], !dbg !3243
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !3217, metadata !DIExpression()), !dbg !3224
  %call10 = call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %stmt) #8, !dbg !3244
  %conv11 = zext i32 %call10 to i64, !dbg !3244
  %cmp12 = icmp ult i64 %i.1, %conv11, !dbg !3245
  br i1 %cmp12, label %for.body14, label %if.end.loopexit, !dbg !3246

for.body14:                                       ; preds = %for.cond9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3247
  %call15 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %stmt, i64 %i.1) #8, !dbg !3248
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !3218, metadata !DIExpression()), !dbg !3241
  store %union.tree_node* %call15, %union.tree_node** %arg, align 8, !dbg !3249
  call void @llvm.dbg.value(metadata %union.tree_node** %arg, metadata !3218, metadata !DIExpression(DW_OP_deref)), !dbg !3241
  %call16 = call %union.tree_node* @walk_tree_1(%union.tree_node** nonnull %arg, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @find_vars_r, i8* null, %struct.pointer_set_t* null, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)* null) #6, !dbg !3250
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3251
  %inc18 = add nuw nsw i64 %i.1, 1, !dbg !3252
  call void @llvm.dbg.value(metadata i64 %inc18, metadata !3217, metadata !DIExpression()), !dbg !3224
  br label %for.cond9, !dbg !3253, !llvm.loop !3254

if.end.loopexit:                                  ; preds = %for.cond9
  br label %if.end, !dbg !3256

if.end.loopexit1:                                 ; preds = %for.cond
  br label %if.end, !dbg !3256

if.end:                                           ; preds = %if.end.loopexit1, %if.end.loopexit
  ret void, !dbg !3256
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3257 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3262, metadata !DIExpression()), !dbg !3263
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3264
  %bf.load = load i32, i32* %0, align 8, !dbg !3264
  %bf.clear = and i32 %bf.load, 255, !dbg !3264
  ret i32 %bf.clear, !dbg !3265
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3266 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3270, metadata !DIExpression()), !dbg !3271
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3272
  %0 = load i32, i32* %num_ops, align 4, !dbg !3272
  ret i32 %0, !dbg !3273
}

declare dso_local %union.tree_node* @walk_tree_1(%union.tree_node**, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3274 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3278, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i32 %i, metadata !3279, metadata !DIExpression()), !dbg !3280
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3281
  %tobool = icmp eq i8 %call, 0, !dbg !3281
  br i1 %tobool, label %return, label %if.then, !dbg !3283

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3284
  %idx.ext = zext i32 %i to i64, !dbg !3286
  %add.ptr = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idx.ext, !dbg !3286
  br label %return, !dbg !3287

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node** [ %add.ptr, %if.then ], [ null, %entry ], !dbg !3288
  ret %union.tree_node** %retval.0, !dbg !3289
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @find_vars_r(%union.tree_node** %tp, i32* %walk_subtrees, i8* %data) #5 !dbg !3290 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %tp, metadata !3295, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32* %walk_subtrees, metadata !3296, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8* %data, metadata !3297, metadata !DIExpression()), !dbg !3298
  %0 = bitcast %union.tree_node** %tp to i64**, !dbg !3299
  %1 = load i64*, i64** %0, align 8, !dbg !3299
  %bf.load = load i64, i64* %1, align 8, !dbg !3299
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3301
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3301
  %2 = bitcast i64* %1 to %union.tree_node*, !dbg !3302
  br i1 %cmp, label %if.then, label %if.else, !dbg !3302

if.then:                                          ; preds = %entry
  %var = getelementptr inbounds i64, i64* %1, i64 3, !dbg !3303
  %3 = bitcast i64* %var to %union.tree_node**, !dbg !3303
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !3303
  %call = tail call zeroext i8 @add_referenced_var(%union.tree_node* %4) #8, !dbg !3304
  br label %if.end72, !dbg !3304

if.else:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 32, !dbg !3305
  br i1 %cmp5, label %if.then46, label %lor.lhs.false, !dbg !3305

lor.lhs.false:                                    ; preds = %if.else
  %cmp10 = icmp eq i64 %bf.cast1, 34, !dbg !3305
  br i1 %cmp10, label %if.then46, label %lor.lhs.false11, !dbg !3305

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %cmp16 = icmp eq i64 %bf.cast1, 36, !dbg !3305
  br i1 %cmp16, label %if.then46, label %lor.lhs.false17, !dbg !3305

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  br i1 false, label %land.lhs.true, label %lor.lhs.false17.if.else48_crit_edge, !dbg !3305

lor.lhs.false17.if.else48_crit_edge:              ; preds = %lor.lhs.false17
  br label %if.else48, !dbg !3305

land.lhs.true:                                    ; preds = %lor.lhs.false17
  br i1 undef, label %land.lhs.true.if.then46_crit_edge, label %lor.lhs.false30, !dbg !3305

land.lhs.true.if.then46_crit_edge:                ; preds = %land.lhs.true
  br label %if.then46, !dbg !3305

lor.lhs.false30:                                  ; preds = %land.lhs.true
  br i1 undef, label %lor.lhs.false30.if.then46_crit_edge, label %lor.lhs.false38, !dbg !3305

lor.lhs.false30.if.then46_crit_edge:              ; preds = %lor.lhs.false30
  br label %if.then46, !dbg !3305

lor.lhs.false38:                                  ; preds = %lor.lhs.false30
  br i1 undef, label %lor.lhs.false38.if.then46_crit_edge, label %lor.lhs.false38.if.else48_crit_edge, !dbg !3307

lor.lhs.false38.if.else48_crit_edge:              ; preds = %lor.lhs.false38
  br label %if.else48, !dbg !3307

lor.lhs.false38.if.then46_crit_edge:              ; preds = %lor.lhs.false38
  br label %if.then46, !dbg !3307

if.then46:                                        ; preds = %land.lhs.true.if.then46_crit_edge, %lor.lhs.false30.if.then46_crit_edge, %lor.lhs.false38.if.then46_crit_edge, %lor.lhs.false11, %lor.lhs.false, %if.else
  %call47 = tail call zeroext i8 @add_referenced_var(%union.tree_node* %2) #8, !dbg !3308
  br label %if.end72, !dbg !3308

if.else48:                                        ; preds = %lor.lhs.false17.if.else48_crit_edge, %lor.lhs.false38.if.else48_crit_edge
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast1, !dbg !3309
  %5 = load i32, i32* %arrayidx, align 4, !dbg !3309
  %cmp53 = icmp eq i32 %5, 2, !dbg !3309
  br i1 %cmp53, label %if.then70, label %lor.lhs.false54, !dbg !3309

lor.lhs.false54:                                  ; preds = %if.else48
  %cmp61 = icmp eq i32 %5, 3, !dbg !3309
  br i1 %cmp61, label %if.then70, label %lor.lhs.false62, !dbg !3311

lor.lhs.false62:                                  ; preds = %lor.lhs.false54
  %cmp69 = icmp eq i32 %5, 1, !dbg !3312
  br i1 %cmp69, label %if.then70, label %if.end72, !dbg !3313

if.then70:                                        ; preds = %lor.lhs.false62, %lor.lhs.false54, %if.else48
  store i32 0, i32* %walk_subtrees, align 4, !dbg !3314
  br label %if.end72, !dbg !3315

if.end72:                                         ; preds = %if.then46, %if.then70, %lor.lhs.false62, %if.then
  ret %union.tree_node* null, !dbg !3316
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3317 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3321, metadata !DIExpression()), !dbg !3322
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3323
  ret %union.tree_node** %result, !dbg !3324
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3325 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3327, metadata !DIExpression()), !dbg !3328
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !3329
  %0 = load i32, i32* %nargs, align 4, !dbg !3329
  ret i32 %0, !dbg !3330
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !3331 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3335, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %index, metadata !3336, metadata !DIExpression()), !dbg !3339
  %conv = trunc i64 %index to i32, !dbg !3340
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #8, !dbg !3341
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !3337, metadata !DIExpression()), !dbg !3339
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3342
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #8, !dbg !3343
  ret %union.tree_node* %call1, !dbg !3344
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @referenced_var_lookup(i32 %uid) local_unnamed_addr #5 !dbg !3345 {
entry:
  %in = alloca %struct.tree_decl_minimal, align 8
  call void @llvm.dbg.value(metadata i32 %uid, metadata !3349, metadata !DIExpression()), !dbg !3352
  %0 = bitcast %struct.tree_decl_minimal* %in to i8*, !dbg !3353
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3353
  %uid1 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %in, i64 0, i32 2, !dbg !3354
  store i32 %uid, i32* %uid1, align 4, !dbg !3355
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3356
  %call = tail call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %1) #8, !dbg !3357
  %call2 = call i8* @htab_find_with_hash(%struct.htab* %call, i8* nonnull %0, i32 %uid) #6, !dbg !3358
  %2 = bitcast i8* %call2 to %union.tree_node*, !dbg !3359
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3350, metadata !DIExpression()), !dbg !3352
  %tobool = icmp ne i8* %call2, null, !dbg !3360
  %cmp = icmp eq i32 %uid, 0, !dbg !3360
  %or.cond = or i1 %tobool, %cmp, !dbg !3360
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !3360

cond.true:                                        ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 519, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3360
  br label %cond.end, !dbg !3360

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3361
  ret %union.tree_node* %2, !dbg !3362
}

declare dso_local i8* @htab_find_with_hash(%struct.htab*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @referenced_var_check_and_insert(%union.tree_node* %to) local_unnamed_addr #5 !dbg !3363 {
entry:
  %in = alloca %struct.tree_decl_minimal, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %to, metadata !3365, metadata !DIExpression()), !dbg !3370
  %0 = bitcast %struct.tree_decl_minimal* %in to i8*, !dbg !3371
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3371
  %uid1 = getelementptr inbounds %union.tree_node, %union.tree_node* %to, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3372
  %1 = load i32, i32* %uid1, align 4, !dbg !3372
  call void @llvm.dbg.value(metadata i32 %1, metadata !3369, metadata !DIExpression()), !dbg !3370
  %uid2 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %in, i64 0, i32 2, !dbg !3373
  store i32 %1, i32* %uid2, align 4, !dbg !3374
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3375
  %call = tail call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %2) #8, !dbg !3376
  %call3 = call i8* @htab_find_with_hash(%struct.htab* %call, i8* nonnull %0, i32 %1) #6, !dbg !3377
  call void @llvm.dbg.value(metadata i8* %call3, metadata !3366, metadata !DIExpression()), !dbg !3370
  %tobool = icmp eq i8* %call3, null, !dbg !3378
  br i1 %tobool, label %if.end, label %if.then, !dbg !3380

if.then:                                          ; preds = %entry
  %3 = bitcast i8* %call3 to %union.tree_node*, !dbg !3381
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3366, metadata !DIExpression()), !dbg !3370
  %cmp = icmp eq %union.tree_node* %3, %to, !dbg !3382
  br i1 %cmp, label %cleanup, label %cond.true, !dbg !3382

cond.true:                                        ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 539, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3382
  br label %cleanup, !dbg !3382

if.end:                                           ; preds = %entry
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3384
  %call5 = call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %4) #8, !dbg !3385
  %call6 = call i8** @htab_find_slot_with_hash(%struct.htab* %call5, i8* nonnull %0, i32 %1, i32 1) #6, !dbg !3386
  %5 = bitcast i8** %call6 to %union.tree_node**, !dbg !3387
  call void @llvm.dbg.value(metadata %union.tree_node** %5, metadata !3367, metadata !DIExpression()), !dbg !3370
  store %union.tree_node* %to, %union.tree_node** %5, align 8, !dbg !3388
  br label %cleanup, !dbg !3389

cleanup:                                          ; preds = %cond.true, %if.then, %if.end
  %retval.0 = phi i8 [ 1, %if.end ], [ 0, %if.then ], [ 0, %cond.true ], !dbg !3370
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3390
  ret i8 %retval.0, !dbg !3390
}

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @set_default_def(%union.tree_node* %var, %union.tree_node* %def) local_unnamed_addr #5 !dbg !3391 {
entry:
  %ind = alloca %struct.tree_decl_minimal, align 8
  %in = alloca %struct.tree_ssa_name, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3395, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !3396, metadata !DIExpression()), !dbg !3400
  %0 = bitcast %struct.tree_decl_minimal* %ind to i8*, !dbg !3401
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3401
  %1 = bitcast %struct.tree_ssa_name* %in to i8*, !dbg !3402
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %1) #7, !dbg !3402
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3403
  %bf.load = load i64, i64* %2, align 8, !dbg !3403
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3403
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !3403
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !3403

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !3403
  br i1 %cmp5, label %cond.end, label %lor.lhs.false6, !dbg !3403

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i64 %bf.cast1, 36, !dbg !3403
  br i1 %cmp11, label %cond.end, label %lor.lhs.false12, !dbg !3403

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %cmp17 = icmp eq i64 %bf.cast1, 141, !dbg !3403
  br i1 %cmp17, label %land.lhs.true, label %cond.true, !dbg !3403

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %var18 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3403
  %3 = bitcast i32* %var18 to i64**, !dbg !3403
  %4 = load i64*, i64** %3, align 8, !dbg !3403
  %bf.load20 = load i64, i64* %4, align 8, !dbg !3403
  %bf.cast226 = and i64 %bf.load20, 65535, !dbg !3403
  %cmp23 = icmp eq i64 %bf.cast226, 32, !dbg !3403
  br i1 %cmp23, label %cond.end, label %lor.lhs.false24, !dbg !3403

lor.lhs.false24:                                  ; preds = %land.lhs.true
  %cmp31 = icmp eq i64 %bf.cast226, 34, !dbg !3403
  br i1 %cmp31, label %cond.end, label %lor.lhs.false32, !dbg !3403

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %cmp39 = icmp eq i64 %bf.cast226, 36, !dbg !3403
  br i1 %cmp39, label %cond.end, label %cond.true, !dbg !3403

cond.true:                                        ; preds = %lor.lhs.false32, %lor.lhs.false12
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 572, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3403
  br label %cond.end, !dbg !3403

cond.end:                                         ; preds = %entry, %lor.lhs.false, %lor.lhs.false6, %land.lhs.true, %lor.lhs.false24, %lor.lhs.false32, %cond.true
  %var40 = getelementptr inbounds %struct.tree_ssa_name, %struct.tree_ssa_name* %in, i64 0, i32 1, !dbg !3404
  %5 = bitcast %union.tree_node** %var40 to %struct.tree_decl_minimal**, !dbg !3405
  store %struct.tree_decl_minimal* %ind, %struct.tree_decl_minimal** %5, align 8, !dbg !3405
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3406
  %6 = load i32, i32* %uid, align 4, !dbg !3406
  %uid41 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %ind, i64 0, i32 2, !dbg !3407
  store i32 %6, i32* %uid41, align 4, !dbg !3408
  %tobool = icmp eq %union.tree_node* %def, null, !dbg !3409
  br i1 %tobool, label %if.then, label %if.end, !dbg !3411

if.then:                                          ; preds = %cond.end
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3412
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 3, !dbg !3412
  %8 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3412
  %default_defs = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %8, i64 0, i32 8, !dbg !3412
  %9 = load %struct.htab*, %struct.htab** %default_defs, align 8, !dbg !3412
  %call = call i8** @htab_find_slot_with_hash(%struct.htab* %9, i8* nonnull %1, i32 %6, i32 1) #6, !dbg !3414
  call void @llvm.dbg.value(metadata i8** %call, metadata !3399, metadata !DIExpression()), !dbg !3400
  %10 = load i8*, i8** %call, align 8, !dbg !3415
  %tobool44 = icmp eq i8* %10, null, !dbg !3415
  br i1 %tobool44, label %cond.true45, label %cond.end47, !dbg !3415

cond.true45:                                      ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 579, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3415
  %.pre9 = load i8*, i8** %call, align 8, !dbg !3416
  br label %cond.end47, !dbg !3415

cond.end47:                                       ; preds = %if.then, %cond.true45
  %11 = phi i8* [ %10, %if.then ], [ %.pre9, %cond.true45 ], !dbg !3416
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3417
  %gimple_df50 = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 3, !dbg !3417
  %13 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df50, align 8, !dbg !3417
  %default_defs51 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %13, i64 0, i32 8, !dbg !3417
  %14 = load %struct.htab*, %struct.htab** %default_defs51, align 8, !dbg !3417
  call void @htab_remove_elt(%struct.htab* %14, i8* %11) #6, !dbg !3418
  br label %cleanup, !dbg !3419

if.end:                                           ; preds = %cond.end
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3420
  %bf.load53 = load i64, i64* %15, align 8, !dbg !3420
  %bf.cast555 = and i64 %bf.load53, 65535, !dbg !3420
  %cmp56 = icmp eq i64 %bf.cast555, 141, !dbg !3420
  br i1 %cmp56, label %land.lhs.true57, label %cond.true61, !dbg !3420

land.lhs.true57:                                  ; preds = %if.end
  %var59 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3420
  %16 = bitcast i32* %var59 to %union.tree_node**, !dbg !3420
  %17 = load %union.tree_node*, %union.tree_node** %16, align 8, !dbg !3420
  %cmp60 = icmp eq %union.tree_node* %17, %var, !dbg !3420
  br i1 %cmp60, label %cond.end63, label %cond.true61, !dbg !3420

cond.true61:                                      ; preds = %land.lhs.true57, %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 583, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3420
  %.pre = load i32, i32* %uid, align 4, !dbg !3421
  br label %cond.end63, !dbg !3420

cond.end63:                                       ; preds = %land.lhs.true57, %cond.true61
  %18 = phi i32 [ %6, %land.lhs.true57 ], [ %.pre, %cond.true61 ], !dbg !3421
  %19 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3422
  %gimple_df66 = getelementptr inbounds %struct.function, %struct.function* %19, i64 0, i32 3, !dbg !3422
  %20 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df66, align 8, !dbg !3422
  %default_defs67 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %20, i64 0, i32 8, !dbg !3422
  %21 = load %struct.htab*, %struct.htab** %default_defs67, align 8, !dbg !3422
  %call70 = call i8** @htab_find_slot_with_hash(%struct.htab* %21, i8* nonnull %1, i32 %18, i32 1) #6, !dbg !3423
  call void @llvm.dbg.value(metadata i8** %call70, metadata !3399, metadata !DIExpression()), !dbg !3400
  %22 = load i8*, i8** %call70, align 8, !dbg !3424
  %tobool71 = icmp eq i8* %22, null, !dbg !3424
  %23 = bitcast i8* %22 to i64*, !dbg !3426
  br i1 %tobool71, label %if.end76, label %if.then72, !dbg !3426

if.then72:                                        ; preds = %cond.end63
  %bf.load74 = load i64, i64* %23, align 8, !dbg !3427
  %bf.clear75 = and i64 %bf.load74, -4294967297, !dbg !3427
  store i64 %bf.clear75, i64* %23, align 8, !dbg !3427
  br label %if.end76, !dbg !3428

if.end76:                                         ; preds = %cond.end63, %if.then72
  %24 = bitcast i8** %call70 to %union.tree_node**, !dbg !3429
  store %union.tree_node* %def, %union.tree_node** %24, align 8, !dbg !3430
  %bf.load78 = load i64, i64* %15, align 8, !dbg !3431
  %bf.set = or i64 %bf.load78, 4294967296, !dbg !3431
  store i64 %bf.set, i64* %15, align 8, !dbg !3431
  br label %cleanup, !dbg !3432

cleanup:                                          ; preds = %if.end76, %cond.end47
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %1) #7, !dbg !3432
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3432
  ret void, !dbg !3432
}

declare dso_local void @htab_remove_elt(%struct.htab*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.var_ann_d* @get_var_ann(%union.tree_node* %var) unnamed_addr #0 !dbg !3433 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3435, metadata !DIExpression()), !dbg !3438
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3439
  %bf.load = load i64, i64* %0, align 8, !dbg !3439
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3439
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !3439
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3439

cond.true:                                        ; preds = %entry
  %ann = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 1, !dbg !3439
  %1 = bitcast %union.tree_node** %ann to %struct.var_ann_d**, !dbg !3439
  br label %cond.end19, !dbg !3439

cond.false:                                       ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !3439
  br i1 %cmp5, label %cond.true6, label %cond.false8, !dbg !3439

cond.true6:                                       ; preds = %cond.false
  %ann7 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3439
  %2 = bitcast %union.tree_node** %ann7 to %struct.var_ann_d**, !dbg !3439
  br label %cond.end19, !dbg !3439

cond.false8:                                      ; preds = %cond.false
  %cmp13 = icmp eq i64 %bf.cast1, 36, !dbg !3439
  %ann15 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3439
  %3 = bitcast %union.tree_node** %ann15 to %struct.var_ann_d**, !dbg !3439
  %cond = select i1 %cmp13, %struct.var_ann_d** %3, %struct.var_ann_d** null, !dbg !3439
  br label %cond.end19, !dbg !3439

cond.end19:                                       ; preds = %cond.true6, %cond.false8, %cond.true
  %cond20 = phi %struct.var_ann_d** [ %1, %cond.true ], [ %2, %cond.true6 ], [ %cond, %cond.false8 ], !dbg !3439
  call void @llvm.dbg.value(metadata %struct.var_ann_d** %cond20, metadata !3436, metadata !DIExpression()), !dbg !3438
  %tobool = icmp eq %struct.var_ann_d** %cond20, null, !dbg !3440
  br i1 %tobool, label %cond.true21, label %cond.end23, !dbg !3440

cond.true21:                                      ; preds = %cond.end19
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i32 144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3440
  br label %cond.end23, !dbg !3440

cond.end23:                                       ; preds = %cond.end19, %cond.true21
  %4 = load %struct.var_ann_d*, %struct.var_ann_d** %cond20, align 8, !dbg !3441
  %tobool25 = icmp eq %struct.var_ann_d* %4, null, !dbg !3441
  br i1 %tobool25, label %cond.false27, label %cond.true26, !dbg !3441

cond.true26:                                      ; preds = %cond.end23
  br label %cond.end28, !dbg !3441

cond.false27:                                     ; preds = %cond.end23
  %call = tail call %struct.var_ann_d* @create_var_ann(%union.tree_node* %var) #8, !dbg !3442
  br label %cond.end28, !dbg !3441

cond.end28:                                       ; preds = %cond.false27, %cond.true26
  %cond29 = phi %struct.var_ann_d* [ %4, %cond.true26 ], [ %call, %cond.false27 ], !dbg !3441
  ret %struct.var_ann_d* %cond29, !dbg !3443
}

; Function Attrs: nounwind uwtable
define dso_local void @remove_referenced_var(%union.tree_node* %var) local_unnamed_addr #5 !dbg !3444 {
entry:
  %in = alloca %struct.tree_decl_minimal, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3446, metadata !DIExpression()), !dbg !3451
  %0 = bitcast %struct.tree_decl_minimal* %in to i8*, !dbg !3452
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3452
  %uid1 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3453
  %1 = load i32, i32* %uid1, align 4, !dbg !3453
  call void @llvm.dbg.value(metadata i32 %1, metadata !3450, metadata !DIExpression()), !dbg !3451
  %call = tail call fastcc zeroext i8 @is_global_var(%union.tree_node* %var) #8, !dbg !3454
  %tobool = icmp eq i8 %call, 0, !dbg !3454
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3456

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %var) #8, !dbg !3457
  call void @llvm.dbg.value(metadata %struct.var_ann_d* %call2, metadata !3447, metadata !DIExpression()), !dbg !3451
  %tobool3 = icmp eq %struct.var_ann_d* %call2, null, !dbg !3458
  br i1 %tobool3, label %if.end, label %if.then, !dbg !3459

if.then:                                          ; preds = %land.lhs.true
  %2 = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call2, i64 0, i32 0, !dbg !3460
  tail call void @ggc_free(i8* nonnull %2) #6, !dbg !3462
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3463
  %bf.load = load i64, i64* %3, align 8, !dbg !3463
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3463
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !3463
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3463

cond.true:                                        ; preds = %if.then
  %ann = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 1, !dbg !3463
  %4 = bitcast %union.tree_node** %ann to %struct.var_ann_d**, !dbg !3463
  br label %cond.end22, !dbg !3463

cond.false:                                       ; preds = %if.then
  %cmp8 = icmp eq i64 %bf.cast1, 34, !dbg !3463
  br i1 %cmp8, label %cond.true9, label %cond.false11, !dbg !3463

cond.true9:                                       ; preds = %cond.false
  %ann10 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3463
  %5 = bitcast %union.tree_node** %ann10 to %struct.var_ann_d**, !dbg !3463
  br label %cond.end22, !dbg !3463

cond.false11:                                     ; preds = %cond.false
  %cmp16 = icmp eq i64 %bf.cast1, 36, !dbg !3463
  %ann18 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3463
  %6 = bitcast %union.tree_node** %ann18 to %struct.var_ann_d**, !dbg !3463
  %cond = select i1 %cmp16, %struct.var_ann_d** %6, %struct.var_ann_d** null, !dbg !3463
  br label %cond.end22, !dbg !3463

cond.end22:                                       ; preds = %cond.true9, %cond.false11, %cond.true
  %cond23 = phi %struct.var_ann_d** [ %4, %cond.true ], [ %5, %cond.true9 ], [ %cond, %cond.false11 ], !dbg !3463
  store %struct.var_ann_d* null, %struct.var_ann_d** %cond23, align 8, !dbg !3464
  br label %if.end, !dbg !3465

if.end:                                           ; preds = %land.lhs.true, %entry, %cond.end22
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3466
  %bf.load25 = load i64, i64* %7, align 8, !dbg !3466
  %bf.cast27 = and i64 %bf.load25, 65535, !dbg !3466
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast27, !dbg !3466
  %8 = load i32, i32* %arrayidx, align 4, !dbg !3466
  %cmp28 = icmp eq i32 %8, 3, !dbg !3466
  br i1 %cmp28, label %cond.end31, label %cond.true29, !dbg !3466

cond.true29:                                      ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 639, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3466
  br label %cond.end31, !dbg !3466

cond.end31:                                       ; preds = %if.end, %cond.true29
  %uid33 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %in, i64 0, i32 2, !dbg !3467
  store i32 %1, i32* %uid33, align 4, !dbg !3468
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3469
  %call34 = tail call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %9) #8, !dbg !3470
  %call35 = call i8** @htab_find_slot_with_hash(%struct.htab* %call34, i8* nonnull %0, i32 %1, i32 0) #6, !dbg !3471
  call void @llvm.dbg.value(metadata i8** %call35, metadata !3449, metadata !DIExpression()), !dbg !3451
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3472
  %call37 = call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %10) #8, !dbg !3473
  call void @htab_clear_slot(%struct.htab* %call37, i8** %call35) #6, !dbg !3474
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3475
  ret void, !dbg !3475
}

declare dso_local void @ggc_free(i8*) local_unnamed_addr #2

declare dso_local void @htab_clear_slot(%struct.htab*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @get_virtual_var(%union.tree_node* %var) local_unnamed_addr #5 !dbg !3476 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3480, metadata !DIExpression()), !dbg !3481
  %call = tail call %union.tree_node* @tree_strip_nop_conversions(%union.tree_node* %var) #6, !dbg !3482
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3480, metadata !DIExpression()), !dbg !3481
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3483
  %bf.load = load i64, i64* %0, align 8, !dbg !3483
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !3485
  %cmp = icmp eq i64 %bf.cast2, 141, !dbg !3485
  br i1 %cmp, label %if.then, label %if.end, !dbg !3486

if.then:                                          ; preds = %entry
  %var1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3487
  %1 = bitcast i32* %var1 to %union.tree_node**, !dbg !3487
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !3487
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3480, metadata !DIExpression()), !dbg !3481
  br label %if.end, !dbg !3488

if.end:                                           ; preds = %if.then, %entry
  %var.addr.0 = phi %union.tree_node* [ %2, %if.then ], [ %call, %entry ], !dbg !3481
  call void @llvm.dbg.value(metadata %union.tree_node* %var.addr.0, metadata !3480, metadata !DIExpression()), !dbg !3481
  br label %while.cond, !dbg !3489

while.cond:                                       ; preds = %while.body, %if.end
  %var.addr.1 = phi %union.tree_node* [ %var.addr.0, %if.end ], [ %4, %while.body ], !dbg !3481
  call void @llvm.dbg.value(metadata %union.tree_node* %var.addr.1, metadata !3480, metadata !DIExpression()), !dbg !3481
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3490
  %bf.load3 = load i64, i64* %3, align 8, !dbg !3490
  %bf.cast53 = and i64 %bf.load3, 65535, !dbg !3491
  %cmp6 = icmp eq i64 %bf.cast53, 43, !dbg !3491
  br i1 %cmp6, label %while.body, label %lor.lhs.false, !dbg !3492

lor.lhs.false:                                    ; preds = %while.cond
  %cmp11 = icmp eq i64 %bf.cast53, 44, !dbg !3493
  br i1 %cmp11, label %while.body, label %lor.rhs, !dbg !3494

lor.rhs:                                          ; preds = %lor.lhs.false
  %call12 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %var.addr.1) #8, !dbg !3495
  %tobool = icmp eq i8 %call12, 0, !dbg !3494
  br i1 %tobool, label %while.end, label %while.body, !dbg !3489

while.body:                                       ; preds = %lor.rhs, %while.cond, %lor.lhs.false
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %var.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3496
  %4 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3496
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !3480, metadata !DIExpression()), !dbg !3481
  br label %while.cond, !dbg !3489, !llvm.loop !3497

while.end:                                        ; preds = %lor.rhs
  %var.addr.1.lcssa = phi %union.tree_node* [ %var.addr.1, %lor.rhs ], !dbg !3481
  %.lcssa = phi i64* [ %3, %lor.rhs ], !dbg !3490
  call void @llvm.dbg.value(metadata %union.tree_node* %var.addr.1.lcssa, metadata !3480, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata %union.tree_node* %var.addr.1.lcssa, metadata !3480, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata %union.tree_node* %var.addr.1.lcssa, metadata !3480, metadata !DIExpression()), !dbg !3481
  %bf.load14 = load i64, i64* %.lcssa, align 8, !dbg !3498
  %bf.cast165 = and i64 %bf.load14, 65535, !dbg !3498
  %cmp17 = icmp eq i64 %bf.cast165, 32, !dbg !3498
  br i1 %cmp17, label %cond.end, label %lor.lhs.false19, !dbg !3498

lor.lhs.false19:                                  ; preds = %while.end
  %cmp24 = icmp eq i64 %bf.cast165, 34, !dbg !3498
  br i1 %cmp24, label %cond.end, label %lor.lhs.false26, !dbg !3498

lor.lhs.false26:                                  ; preds = %lor.lhs.false19
  %cmp31 = icmp eq i64 %bf.cast165, 36, !dbg !3498
  br i1 %cmp31, label %cond.end, label %lor.lhs.false33, !dbg !3498

lor.lhs.false33:                                  ; preds = %lor.lhs.false26
  %cmp38 = icmp eq i64 %bf.cast165, 141, !dbg !3498
  br i1 %cmp38, label %land.lhs.true, label %cond.true, !dbg !3498

land.lhs.true:                                    ; preds = %lor.lhs.false33
  %var41 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.addr.1.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3498
  %5 = bitcast i32* %var41 to i64**, !dbg !3498
  %6 = load i64*, i64** %5, align 8, !dbg !3498
  %bf.load43 = load i64, i64* %6, align 8, !dbg !3498
  %bf.cast459 = and i64 %bf.load43, 65535, !dbg !3498
  %cmp46 = icmp eq i64 %bf.cast459, 32, !dbg !3498
  br i1 %cmp46, label %cond.end, label %lor.lhs.false48, !dbg !3498

lor.lhs.false48:                                  ; preds = %land.lhs.true
  %cmp55 = icmp eq i64 %bf.cast459, 34, !dbg !3498
  br i1 %cmp55, label %cond.end, label %lor.lhs.false57, !dbg !3498

lor.lhs.false57:                                  ; preds = %lor.lhs.false48
  %cmp64 = icmp eq i64 %bf.cast459, 36, !dbg !3498
  br i1 %cmp64, label %cond.end, label %cond.true, !dbg !3498

cond.true:                                        ; preds = %lor.lhs.false57, %lor.lhs.false33
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 664, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3498
  br label %cond.end, !dbg !3498

cond.end:                                         ; preds = %while.end, %lor.lhs.false19, %lor.lhs.false26, %land.lhs.true, %lor.lhs.false48, %lor.lhs.false57, %cond.true
  %call66 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %var.addr.1.lcssa) #6, !dbg !3499
  %tobool67 = icmp eq i8 %call66, 0, !dbg !3499
  br i1 %tobool67, label %cond.end70, label %cond.true68, !dbg !3499

cond.true68:                                      ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3499
  br label %cond.end70, !dbg !3499

cond.end70:                                       ; preds = %cond.end, %cond.true68
  ret %union.tree_node* %var.addr.1.lcssa, !dbg !3500
}

declare dso_local %union.tree_node* @tree_strip_nop_conversions(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @handled_component_p(%union.tree_node* %t) unnamed_addr #0 !dbg !3501 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3503, metadata !DIExpression()), !dbg !3504
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3505
  %bf.load = load i64, i64* %0, align 8, !dbg !3505
  %1 = trunc i64 %bf.load to i16, !dbg !3505
  switch i16 %1, label %sw.default [
    i16 42, label %return
    i16 41, label %return
    i16 45, label %return
    i16 46, label %return
    i16 118, label %return
    i16 43, label %return
    i16 44, label %return
  ], !dbg !3506

sw.default:                                       ; preds = %entry
  br label %return, !dbg !3507

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], !dbg !3509
  ret i8 %retval.0, !dbg !3510
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @mark_symbols_for_renaming(%union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !3511 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3513, metadata !DIExpression()), !dbg !3528
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !3529
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7, !dbg !3529
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %stmt) #8, !dbg !3530
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3515, metadata !DIExpression(DW_OP_deref)), !dbg !3528
  %call = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 15) #8, !dbg !3531
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3514, metadata !DIExpression()), !dbg !3528
  br label %for.cond, !dbg !3531

for.cond:                                         ; preds = %for.inc, %entry
  %op.0 = phi %union.tree_node* [ %call, %entry ], [ %call2, %for.inc ], !dbg !3533
  call void @llvm.dbg.value(metadata %union.tree_node* %op.0, metadata !3514, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3515, metadata !DIExpression(DW_OP_deref)), !dbg !3528
  %call1 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !3534
  %tobool = icmp eq i8 %call1, 0, !dbg !3534
  br i1 %tobool, label %for.body, label %for.end, !dbg !3531

for.body:                                         ; preds = %for.cond
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %op.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3536
  %bf.load = load i64, i64* %1, align 8, !dbg !3536
  %bf.cast = and i64 %bf.load, 65535, !dbg !3536
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !3536
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3536
  %cmp = icmp eq i32 %2, 3, !dbg !3536
  br i1 %cmp, label %if.then, label %for.inc, !dbg !3538

if.then:                                          ; preds = %for.body
  call void @mark_sym_for_renaming(%union.tree_node* %op.0) #6, !dbg !3539
  br label %for.inc, !dbg !3539

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3515, metadata !DIExpression(DW_OP_deref)), !dbg !3528
  %call2 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !3534
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3514, metadata !DIExpression()), !dbg !3528
  br label %for.cond, !dbg !3534, !llvm.loop !3540

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7, !dbg !3542
  ret void, !dbg !3542
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3543 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3545, metadata !DIExpression()), !dbg !3546
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #8, !dbg !3547
  %tobool = icmp eq i8 %call, 0, !dbg !3547
  br i1 %tobool, label %if.end, label %if.then, !dbg !3549

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !3550
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !3552
  br label %if.end, !dbg !3553

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3554
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3555 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3560, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3561, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3562, metadata !DIExpression()), !dbg !3563
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) #8, !dbg !3564
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3565
  store i32 1, i32* %iter_type, align 4, !dbg !3566
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !3567
  ret %union.tree_node* %call, !dbg !3568
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3569 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3575, metadata !DIExpression()), !dbg !3576
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3577
  %0 = load i8, i8* %done, align 8, !dbg !3577
  ret i8 %0, !dbg !3578
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3579 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3583, metadata !DIExpression()), !dbg !3585
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3586
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !3586
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !3588
  br i1 %tobool, label %if.end, label %if.then, !dbg !3589

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !3590
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #8, !dbg !3590
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3584, metadata !DIExpression()), !dbg !3585
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !3592
  %2 = load i64*, i64** %1, align 8, !dbg !3592
  %3 = load i64, i64* %2, align 8, !dbg !3593
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3594
  store i64 %3, i64* %4, align 8, !dbg !3594
  br label %cleanup, !dbg !3595

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3596
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !3596
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !3598
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !3599

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !3600
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !3600
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #8, !dbg !3600
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !3584, metadata !DIExpression()), !dbg !3585
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !3602
  %8 = load i64*, i64** %7, align 8, !dbg !3602
  %9 = load i64, i64* %8, align 8, !dbg !3603
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3604
  store i64 %9, i64* %10, align 8, !dbg !3604
  br label %cleanup, !dbg !3605

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3606
  store i8 1, i8* %done, align 8, !dbg !3607
  br label %cleanup, !dbg !3608

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !3585
  ret %union.tree_node* %retval.0, !dbg !3609
}

; Function Attrs: nounwind uwtable
define dso_local void @find_new_referenced_vars(%union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !3610 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3612, metadata !DIExpression()), !dbg !3613
  %call = tail call %union.tree_node* @walk_gimple_op(%union.gimple_statement_d* %stmt, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @find_new_referenced_vars_1, %struct.walk_stmt_info* null) #6, !dbg !3614
  ret void, !dbg !3615
}

declare dso_local %union.tree_node* @walk_gimple_op(%union.gimple_statement_d*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, %struct.walk_stmt_info*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @find_new_referenced_vars_1(%union.tree_node** %tp, i32* %walk_subtrees, i8* %data) #5 !dbg !3616 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %tp, metadata !3618, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32* %walk_subtrees, metadata !3619, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i8* %data, metadata !3620, metadata !DIExpression()), !dbg !3622
  %0 = load %union.tree_node*, %union.tree_node** %tp, align 8, !dbg !3623
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3621, metadata !DIExpression()), !dbg !3622
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3624
  %bf.load = load i64, i64* %1, align 8, !dbg !3624
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3626
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !3626
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3627

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %0) #8, !dbg !3628
  %tobool = icmp eq %struct.var_ann_d* %call, null, !dbg !3628
  br i1 %tobool, label %if.then, label %if.end, !dbg !3629

if.then:                                          ; preds = %land.lhs.true
  %call1 = tail call zeroext i8 @add_referenced_var(%union.tree_node* %0) #8, !dbg !3630
  tail call void @mark_sym_for_renaming(%union.tree_node* %0) #6, !dbg !3632
  br label %if.end, !dbg !3633

if.end:                                           ; preds = %land.lhs.true, %if.then, %entry
  %bf.load3 = load i64, i64* %1, align 8, !dbg !3634
  %bf.cast5 = and i64 %bf.load3, 65535, !dbg !3634
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast5, !dbg !3634
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3634
  %cmp6 = icmp eq i32 %2, 2, !dbg !3634
  br i1 %cmp6, label %if.then14, label %lor.lhs.false, !dbg !3634

lor.lhs.false:                                    ; preds = %if.end
  %cmp13 = icmp eq i32 %2, 3, !dbg !3634
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !3636

if.then14:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %walk_subtrees, align 4, !dbg !3637
  br label %if.end15, !dbg !3638

if.end15:                                         ; preds = %if.then14, %lor.lhs.false
  ret %union.tree_node* null, !dbg !3639
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @get_ref_base_and_extent(%union.tree_node* %exp, i64* %poffset, i64* %psize, i64* %pmax_size) local_unnamed_addr #5 !dbg !3640 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %exp, metadata !3645, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64* %poffset, metadata !3646, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64* %psize, metadata !3647, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64* %pmax_size, metadata !3648, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 -1, metadata !3649, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 -1, metadata !3650, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3651, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 0, metadata !3652, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8 0, metadata !3653, metadata !DIExpression()), !dbg !3687
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3688
  %bf.load = load i64, i64* %0, align 8, !dbg !3688
  %bf.cast6 = and i64 %bf.load, 65535, !dbg !3689
  %cmp = icmp eq i64 %bf.cast6, 41, !dbg !3689
  br i1 %cmp, label %if.then, label %if.else, !dbg !3690

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3691
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3691
  %1 = bitcast %union.tree_node** %arrayidx to %struct.tree_decl_common**, !dbg !3691
  %2 = load %struct.tree_decl_common*, %struct.tree_decl_common** %1, align 8, !dbg !3691
  %size = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %2, i64 0, i32 1, !dbg !3691
  %3 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !3691
  %4 = bitcast %union.tree_node* %3 to %struct.tree_int_cst*, !dbg !3687
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3651, metadata !DIExpression()), !dbg !3687
  br label %if.end46, !dbg !3692

if.else:                                          ; preds = %entry
  %cmp6 = icmp eq i64 %bf.cast6, 42, !dbg !3693
  br i1 %cmp6, label %if.then7, label %if.else11, !dbg !3694

if.then7:                                         ; preds = %if.else
  %operands9 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3695
  %arrayidx10 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands9, i64 1, !dbg !3695
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx10, align 8, !dbg !3695
  %6 = bitcast %union.tree_node* %5 to %struct.tree_int_cst*, !dbg !3687
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3651, metadata !DIExpression()), !dbg !3687
  br label %if.end46, !dbg !3696

if.else11:                                        ; preds = %if.else
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3697
  %7 = bitcast %union.tree_node** %type to i64**, !dbg !3697
  %8 = load i64*, i64** %7, align 8, !dbg !3697
  %bf.load13 = load i64, i64* %8, align 8, !dbg !3697
  %bf.cast158 = and i64 %bf.load13, 65535, !dbg !3697
  %cmp16 = icmp eq i64 %bf.cast158, 19, !dbg !3697
  br i1 %cmp16, label %if.end46, label %if.then17, !dbg !3698

if.then17:                                        ; preds = %if.else11
  %cmp24 = icmp eq i64 %bf.cast158, 14, !dbg !3699
  br i1 %cmp24, label %cond.true, label %cond.false, !dbg !3699

cond.true:                                        ; preds = %if.then17
  %.cast = bitcast i64* %8 to %union.tree_node*, !dbg !3699
  %call = tail call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !3699
  br label %cond.end, !dbg !3699

cond.false:                                       ; preds = %if.then17
  %type29 = bitcast i64* %8 to %struct.tree_type*, !dbg !3699
  %mode30 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type29, i64 0, i32 6, !dbg !3699
  %bf.load31 = load i32, i32* %mode30, align 4, !dbg !3699
  %bf.lshr = lshr i32 %bf.load31, 16, !dbg !3699
  %bf.clear32 = and i32 %bf.lshr, 255, !dbg !3699
  br label %cond.end, !dbg !3699

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %bf.clear32, %cond.false ], !dbg !3699
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3654, metadata !DIExpression()), !dbg !3700
  %cmp33 = icmp eq i32 %cond, 1, !dbg !3701
  br i1 %cmp33, label %if.then34, label %if.else39, !dbg !3703

if.then34:                                        ; preds = %cond.end
  %9 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3704
  %10 = load %struct.tree_type*, %struct.tree_type** %9, align 8, !dbg !3704
  %size38 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %10, i64 0, i32 2, !dbg !3704
  %11 = load %union.tree_node*, %union.tree_node** %size38, align 8, !dbg !3704
  %12 = bitcast %union.tree_node* %11 to %struct.tree_int_cst*, !dbg !3687
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !3651, metadata !DIExpression()), !dbg !3687
  br label %if.end46, !dbg !3705

if.else39:                                        ; preds = %cond.end
  %idxprom = zext i32 %cond to i64, !dbg !3706
  %arrayidx40 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !3706
  %13 = load i8, i8* %arrayidx40, align 1, !dbg !3706
  %conv41 = zext i8 %13 to i64, !dbg !3706
  %mul = shl nuw nsw i64 %conv41, 3, !dbg !3706
  call void @llvm.dbg.value(metadata i64 %mul, metadata !3649, metadata !DIExpression()), !dbg !3687
  br label %if.end46

if.end46:                                         ; preds = %if.then7, %if.then34, %if.else39, %if.else11, %if.then
  %14 = phi %struct.tree_int_cst* [ %4, %if.then ], [ %6, %if.then7 ], [ null, %if.else11 ], [ %12, %if.then34 ], [ null, %if.else39 ], !dbg !3707
  %size_tree.3 = phi %union.tree_node* [ %3, %if.then ], [ %5, %if.then7 ], [ null, %if.else11 ], [ %11, %if.then34 ], [ null, %if.else39 ], !dbg !3707
  %bitsize.3 = phi i64 [ -1, %if.then ], [ -1, %if.then7 ], [ -1, %if.else11 ], [ -1, %if.then34 ], [ %mul, %if.else39 ], !dbg !3708
  call void @llvm.dbg.value(metadata i64 %bitsize.3, metadata !3649, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata %union.tree_node* %size_tree.3, metadata !3651, metadata !DIExpression()), !dbg !3687
  %cmp47 = icmp eq %union.tree_node* %size_tree.3, null, !dbg !3709
  br i1 %cmp47, label %if.end55, label %if.then49, !dbg !3711

if.then49:                                        ; preds = %if.end46
  %call50 = tail call i32 @host_integerp(%union.tree_node* nonnull %size_tree.3, i32 1) #6, !dbg !3712
  %tobool = icmp eq i32 %call50, 0, !dbg !3712
  br i1 %tobool, label %if.end55, label %if.else52, !dbg !3715

if.else52:                                        ; preds = %if.then49
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %14, i64 0, i32 1, i32 0, !dbg !3716
  %15 = load i64, i64* %low, align 8, !dbg !3716
  call void @llvm.dbg.value(metadata i64 %15, metadata !3649, metadata !DIExpression()), !dbg !3687
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %if.end46, %if.else52
  %bitsize.5 = phi i64 [ %bitsize.3, %if.end46 ], [ %15, %if.else52 ], [ -1, %if.then49 ], !dbg !3687
  call void @llvm.dbg.value(metadata i64 %bitsize.5, metadata !3649, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %bitsize.5, metadata !3650, metadata !DIExpression()), !dbg !3687
  br label %while.cond, !dbg !3717

while.cond:                                       ; preds = %sw.epilog, %if.end55
  %bit_offset.0 = phi i64 [ 0, %if.end55 ], [ %bit_offset.3, %sw.epilog ], !dbg !3687
  %maxsize.0 = phi i64 [ %bitsize.5, %if.end55 ], [ %maxsize.8, %sw.epilog ], !dbg !3718
  %seen_variable_array_ref.0 = phi i8 [ 0, %if.end55 ], [ %seen_variable_array_ref.2, %sw.epilog ], !dbg !3719
  %exp.addr.0 = phi %union.tree_node* [ %exp, %if.end55 ], [ %55, %sw.epilog ]
  call void @llvm.dbg.value(metadata %union.tree_node* %exp.addr.0, metadata !3645, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8 %seen_variable_array_ref.0, metadata !3653, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %maxsize.0, metadata !3650, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %bit_offset.0, metadata !3652, metadata !DIExpression()), !dbg !3687
  %16 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3720
  %bf.load57 = load i64, i64* %16, align 8, !dbg !3720
  %17 = trunc i64 %bf.load57 to i16, !dbg !3720
  switch i16 %17, label %done [
    i16 42, label %sw.bb
    i16 41, label %sw.bb66
    i16 45, label %sw.bb168
    i16 46, label %sw.bb168
    i16 43, label %sw.epilog
    i16 44, label %sw.bb226
    i16 118, label %sw.epilog
  ], !dbg !3721

sw.bb:                                            ; preds = %while.cond
  %operands61 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3722
  %arrayidx62 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands61, i64 2, !dbg !3722
  %18 = bitcast %union.tree_node** %arrayidx62 to %struct.tree_int_cst**, !dbg !3722
  %19 = load %struct.tree_int_cst*, %struct.tree_int_cst** %18, align 8, !dbg !3722
  %low65 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %19, i64 0, i32 1, i32 0, !dbg !3722
  %20 = load i64, i64* %low65, align 8, !dbg !3722
  %add = add i64 %bit_offset.0, %20, !dbg !3723
  call void @llvm.dbg.value(metadata i64 %add, metadata !3652, metadata !DIExpression()), !dbg !3687
  br label %sw.epilog, !dbg !3724

sw.bb66:                                          ; preds = %while.cond
  %operands68 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3725
  %arrayidx69 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands68, i64 1, !dbg !3725
  %21 = load %union.tree_node*, %union.tree_node** %arrayidx69, align 8, !dbg !3725
  call void @llvm.dbg.value(metadata %union.tree_node* %21, metadata !3659, metadata !DIExpression()), !dbg !3726
  %call70 = tail call %union.tree_node* @component_ref_field_offset(%union.tree_node* %exp.addr.0) #6, !dbg !3727
  call void @llvm.dbg.value(metadata %union.tree_node* %call70, metadata !3663, metadata !DIExpression()), !dbg !3726
  %tobool71 = icmp eq %union.tree_node* %call70, null, !dbg !3728
  br i1 %tobool71, label %if.else145, label %land.lhs.true, !dbg !3729

land.lhs.true:                                    ; preds = %sw.bb66
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %call70, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3730
  %bf.load73 = load i64, i64* %22, align 8, !dbg !3730
  %bf.cast7511 = and i64 %bf.load73, 65535, !dbg !3731
  %cmp76 = icmp eq i64 %bf.cast7511, 23, !dbg !3731
  br i1 %cmp76, label %land.lhs.true78, label %if.else145, !dbg !3732

land.lhs.true78:                                  ; preds = %land.lhs.true
  %call79 = tail call i32 @host_integerp(%union.tree_node* nonnull %call70, i32 0) #6, !dbg !3733
  %tobool80 = icmp eq i32 %call79, 0, !dbg !3733
  br i1 %tobool80, label %if.else145, label %if.then81, !dbg !3734

if.then81:                                        ; preds = %land.lhs.true78
  %int_cst83 = getelementptr inbounds %union.tree_node, %union.tree_node* %call70, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3735
  %low84 = bitcast i32* %int_cst83 to i64*, !dbg !3735
  %23 = load i64, i64* %low84, align 8, !dbg !3735
  call void @llvm.dbg.value(metadata i64 %23, metadata !3664, metadata !DIExpression()), !dbg !3736
  %mul85 = shl nsw i64 %23, 3, !dbg !3737
  call void @llvm.dbg.value(metadata i64 %mul85, metadata !3664, metadata !DIExpression()), !dbg !3736
  %24 = getelementptr inbounds %union.tree_node, %union.tree_node* %21, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3738
  %25 = bitcast %union.tree_node** %24 to %struct.tree_int_cst**, !dbg !3738
  %26 = load %struct.tree_int_cst*, %struct.tree_int_cst** %25, align 8, !dbg !3738
  %low89 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %26, i64 0, i32 1, i32 0, !dbg !3738
  %27 = load i64, i64* %low89, align 8, !dbg !3738
  %add90 = add i64 %mul85, %27, !dbg !3739
  call void @llvm.dbg.value(metadata i64 %add90, metadata !3664, metadata !DIExpression()), !dbg !3736
  %add91 = add nsw i64 %bit_offset.0, %add90, !dbg !3740
  call void @llvm.dbg.value(metadata i64 %add91, metadata !3652, metadata !DIExpression()), !dbg !3687
  %tobool93 = icmp ne i8 %seen_variable_array_ref.0, 0, !dbg !3741
  %cmp95 = icmp ne i64 %maxsize.0, -1, !dbg !3742
  %or.cond = and i1 %tobool93, %cmp95, !dbg !3743
  br i1 %or.cond, label %if.then97, label %sw.epilog, !dbg !3743

if.then97:                                        ; preds = %if.then81
  %28 = bitcast %union.tree_node** %operands68 to %struct.tree_common**, !dbg !3744
  %29 = load %struct.tree_common*, %struct.tree_common** %28, align 8, !dbg !3744
  %type102 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %29, i64 0, i32 2, !dbg !3744
  %30 = load %union.tree_node*, %union.tree_node** %type102, align 8, !dbg !3744
  call void @llvm.dbg.value(metadata %union.tree_node* %30, metadata !3667, metadata !DIExpression()), !dbg !3745
  br label %while.cond104, !dbg !3746

while.cond104:                                    ; preds = %while.body112, %if.then97
  %.pn = phi %union.tree_node* [ %21, %if.then97 ], [ %next.0, %while.body112 ]
  %next.0.in = getelementptr inbounds %union.tree_node, %union.tree_node* %.pn, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3745
  %next.0 = load %union.tree_node*, %union.tree_node** %next.0.in, align 8, !dbg !3745
  call void @llvm.dbg.value(metadata %union.tree_node* %next.0, metadata !3670, metadata !DIExpression()), !dbg !3745
  %cond4 = icmp eq %union.tree_node* %next.0, null, !dbg !3747
  br i1 %cond4, label %if.then122.loopexit, label %land.rhs, !dbg !3747

land.rhs:                                         ; preds = %while.cond104
  %31 = getelementptr inbounds %union.tree_node, %union.tree_node* %next.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3748
  %bf.load107 = load i64, i64* %31, align 8, !dbg !3748
  %bf.cast10912 = and i64 %bf.load107, 65535, !dbg !3749
  %cmp110 = icmp eq i64 %bf.cast10912, 31, !dbg !3749
  br i1 %cmp110, label %while.end, label %while.body112, !dbg !3746

while.body112:                                    ; preds = %land.rhs
  br label %while.cond104, !dbg !3746, !llvm.loop !3750

while.end:                                        ; preds = %land.rhs
  %32 = getelementptr inbounds %union.tree_node, %union.tree_node* %30, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3752
  %bf.load117 = load i64, i64* %32, align 8, !dbg !3752
  %bf.cast11913 = and i64 %bf.load117, 65535, !dbg !3753
  %cmp120 = icmp eq i64 %bf.cast11913, 16, !dbg !3753
  br i1 %cmp120, label %sw.epilog, label %if.then122, !dbg !3754

if.then122.loopexit:                              ; preds = %while.cond104
  br label %if.then122, !dbg !3755

if.then122:                                       ; preds = %if.then122.loopexit, %while.end
  %size_unit = getelementptr inbounds %union.tree_node, %union.tree_node* %21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3755
  %33 = load %union.tree_node*, %union.tree_node** %size_unit, align 8, !dbg !3755
  call void @llvm.dbg.value(metadata %union.tree_node* %33, metadata !3671, metadata !DIExpression()), !dbg !3756
  %34 = getelementptr inbounds %union.tree_node, %union.tree_node* %30, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3757
  %35 = load %union.tree_node*, %union.tree_node** %34, align 8, !dbg !3757
  call void @llvm.dbg.value(metadata %union.tree_node* %35, metadata !3674, metadata !DIExpression()), !dbg !3756
  %call126 = tail call i32 @host_integerp(%union.tree_node* %33, i32 0) #6, !dbg !3758
  %tobool127 = icmp eq i32 %call126, 0, !dbg !3758
  br i1 %tobool127, label %sw.epilog, label %land.lhs.true128, !dbg !3760

land.lhs.true128:                                 ; preds = %if.then122
  %call129 = tail call i32 @host_integerp(%union.tree_node* %35, i32 0) #6, !dbg !3761
  %tobool130 = icmp eq i32 %call129, 0, !dbg !3761
  br i1 %tobool130, label %sw.epilog, label %if.then131, !dbg !3762

if.then131:                                       ; preds = %land.lhs.true128
  %int_cst133 = getelementptr inbounds %union.tree_node, %union.tree_node* %35, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3763
  %low134 = bitcast i32* %int_cst133 to i64*, !dbg !3763
  %36 = load i64, i64* %low134, align 8, !dbg !3763
  %int_cst136 = getelementptr inbounds %union.tree_node, %union.tree_node* %33, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3764
  %low137 = bitcast i32* %int_cst136 to i64*, !dbg !3764
  %37 = load i64, i64* %low137, align 8, !dbg !3764
  %sub = sub i64 %36, %37, !dbg !3765
  %mul138 = shl i64 %sub, 3, !dbg !3766
  %sub139 = sub i64 %mul138, %add90, !dbg !3767
  %add140 = add i64 %maxsize.0, %sub139, !dbg !3768
  call void @llvm.dbg.value(metadata i64 %add140, metadata !3650, metadata !DIExpression()), !dbg !3687
  br label %sw.epilog, !dbg !3769

if.else145:                                       ; preds = %land.lhs.true78, %sw.bb66, %land.lhs.true
  %38 = bitcast %union.tree_node** %operands68 to %struct.tree_common**, !dbg !3770
  %39 = load %struct.tree_common*, %struct.tree_common** %38, align 8, !dbg !3770
  %type150 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %39, i64 0, i32 2, !dbg !3770
  %40 = bitcast %union.tree_node** %type150 to %struct.tree_type**, !dbg !3770
  %41 = load %struct.tree_type*, %struct.tree_type** %40, align 8, !dbg !3770
  %size152 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %41, i64 0, i32 2, !dbg !3770
  %42 = load %union.tree_node*, %union.tree_node** %size152, align 8, !dbg !3770
  call void @llvm.dbg.value(metadata %union.tree_node* %42, metadata !3675, metadata !DIExpression()), !dbg !3771
  %cmp153 = icmp ne i64 %maxsize.0, -1, !dbg !3772
  %tobool156 = icmp ne %union.tree_node* %42, null, !dbg !3774
  %or.cond1 = and i1 %cmp153, %tobool156, !dbg !3775
  br i1 %or.cond1, label %land.lhs.true157, label %sw.epilog, !dbg !3775

land.lhs.true157:                                 ; preds = %if.else145
  %call158 = tail call i32 @host_integerp(%union.tree_node* nonnull %42, i32 1) #6, !dbg !3776
  %tobool159 = icmp eq i32 %call158, 0, !dbg !3776
  br i1 %tobool159, label %sw.epilog, label %if.then160, !dbg !3777

if.then160:                                       ; preds = %land.lhs.true157
  %int_cst162 = getelementptr inbounds %union.tree_node, %union.tree_node* %42, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3778
  %low163 = bitcast i32* %int_cst162 to i64*, !dbg !3778
  %43 = load i64, i64* %low163, align 8, !dbg !3778
  %sub164 = sub i64 %43, %bit_offset.0, !dbg !3779
  call void @llvm.dbg.value(metadata i64 %sub164, metadata !3650, metadata !DIExpression()), !dbg !3687
  br label %sw.epilog, !dbg !3780

sw.bb168:                                         ; preds = %while.cond, %while.cond
  %operands170 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3781
  %arrayidx171 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands170, i64 1, !dbg !3781
  %44 = load %union.tree_node*, %union.tree_node** %arrayidx171, align 8, !dbg !3781
  call void @llvm.dbg.value(metadata %union.tree_node* %44, metadata !3677, metadata !DIExpression()), !dbg !3782
  %45 = getelementptr inbounds %union.tree_node, %union.tree_node* %44, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3783
  %bf.load173 = load i64, i64* %45, align 8, !dbg !3783
  %bf.cast17510 = and i64 %bf.load173, 65535, !dbg !3784
  %cmp176 = icmp eq i64 %bf.cast17510, 23, !dbg !3784
  br i1 %cmp176, label %land.lhs.true178, label %if.else203, !dbg !3785

land.lhs.true178:                                 ; preds = %sw.bb168
  %call179 = tail call i32 @host_integerp(%union.tree_node* %44, i32 0) #6, !dbg !3786
  %tobool180 = icmp eq i32 %call179, 0, !dbg !3786
  br i1 %tobool180, label %if.else203, label %land.lhs.true181, !dbg !3787

land.lhs.true181:                                 ; preds = %land.lhs.true178
  %call182 = tail call %union.tree_node* @array_ref_low_bound(%union.tree_node* %exp.addr.0) #6, !dbg !3788
  call void @llvm.dbg.value(metadata %union.tree_node* %call182, metadata !3679, metadata !DIExpression()), !dbg !3782
  %call183 = tail call i32 @host_integerp(%union.tree_node* %call182, i32 0) #6, !dbg !3789
  %tobool184 = icmp eq i32 %call183, 0, !dbg !3790
  br i1 %tobool184, label %if.else203, label %land.lhs.true185, !dbg !3791

land.lhs.true185:                                 ; preds = %land.lhs.true181
  %call186 = tail call %union.tree_node* @array_ref_element_size(%union.tree_node* %exp.addr.0) #6, !dbg !3792
  call void @llvm.dbg.value(metadata %union.tree_node* %call186, metadata !3680, metadata !DIExpression()), !dbg !3782
  %call187 = tail call i32 @host_integerp(%union.tree_node* %call186, i32 1) #6, !dbg !3793
  %tobool188 = icmp eq i32 %call187, 0, !dbg !3794
  br i1 %tobool188, label %if.else203, label %if.then189, !dbg !3795

if.then189:                                       ; preds = %land.lhs.true185
  %int_cst191 = getelementptr inbounds %union.tree_node, %union.tree_node* %44, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3796
  %low192 = bitcast i32* %int_cst191 to i64*, !dbg !3796
  %46 = load i64, i64* %low192, align 8, !dbg !3796
  call void @llvm.dbg.value(metadata i64 %46, metadata !3681, metadata !DIExpression()), !dbg !3797
  %int_cst194 = getelementptr inbounds %union.tree_node, %union.tree_node* %call182, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3798
  %low195 = bitcast i32* %int_cst194 to i64*, !dbg !3798
  %47 = load i64, i64* %low195, align 8, !dbg !3798
  %sub196 = sub i64 %46, %47, !dbg !3799
  call void @llvm.dbg.value(metadata i64 %sub196, metadata !3681, metadata !DIExpression()), !dbg !3797
  %int_cst198 = getelementptr inbounds %union.tree_node, %union.tree_node* %call186, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3800
  %low199 = bitcast i32* %int_cst198 to i64*, !dbg !3800
  %48 = load i64, i64* %low199, align 8, !dbg !3800
  %mul200 = mul i64 %sub196, %48, !dbg !3801
  call void @llvm.dbg.value(metadata i64 %mul200, metadata !3681, metadata !DIExpression()), !dbg !3797
  %mul201 = shl nsw i64 %mul200, 3, !dbg !3802
  call void @llvm.dbg.value(metadata i64 %mul201, metadata !3681, metadata !DIExpression()), !dbg !3797
  %add202 = add nsw i64 %bit_offset.0, %mul201, !dbg !3803
  call void @llvm.dbg.value(metadata i64 %add202, metadata !3652, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8 0, metadata !3653, metadata !DIExpression()), !dbg !3687
  br label %sw.epilog, !dbg !3804

if.else203:                                       ; preds = %land.lhs.true185, %land.lhs.true181, %land.lhs.true178, %sw.bb168
  %49 = bitcast %union.tree_node** %operands170 to %struct.tree_common**, !dbg !3805
  %50 = load %struct.tree_common*, %struct.tree_common** %49, align 8, !dbg !3805
  %type208 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %50, i64 0, i32 2, !dbg !3805
  %51 = bitcast %union.tree_node** %type208 to %struct.tree_type**, !dbg !3805
  %52 = load %struct.tree_type*, %struct.tree_type** %51, align 8, !dbg !3805
  %size210 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %52, i64 0, i32 2, !dbg !3805
  %53 = load %union.tree_node*, %union.tree_node** %size210, align 8, !dbg !3805
  call void @llvm.dbg.value(metadata %union.tree_node* %53, metadata !3684, metadata !DIExpression()), !dbg !3806
  %cmp211 = icmp ne i64 %maxsize.0, -1, !dbg !3807
  %tobool214 = icmp ne %union.tree_node* %53, null, !dbg !3809
  %or.cond2 = and i1 %cmp211, %tobool214, !dbg !3810
  br i1 %or.cond2, label %land.lhs.true215, label %sw.epilog, !dbg !3810

land.lhs.true215:                                 ; preds = %if.else203
  %call216 = tail call i32 @host_integerp(%union.tree_node* nonnull %53, i32 1) #6, !dbg !3811
  %tobool217 = icmp eq i32 %call216, 0, !dbg !3811
  br i1 %tobool217, label %sw.epilog, label %if.then218, !dbg !3812

if.then218:                                       ; preds = %land.lhs.true215
  %int_cst220 = getelementptr inbounds %union.tree_node, %union.tree_node* %53, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3813
  %low221 = bitcast i32* %int_cst220 to i64*, !dbg !3813
  %54 = load i64, i64* %low221, align 8, !dbg !3813
  %sub222 = sub i64 %54, %bit_offset.0, !dbg !3814
  call void @llvm.dbg.value(metadata i64 %sub222, metadata !3650, metadata !DIExpression()), !dbg !3687
  br label %sw.epilog, !dbg !3815

sw.bb226:                                         ; preds = %while.cond
  %add227 = add nsw i64 %bit_offset.0, %bitsize.5, !dbg !3816
  call void @llvm.dbg.value(metadata i64 %add227, metadata !3652, metadata !DIExpression()), !dbg !3687
  br label %sw.epilog, !dbg !3817

sw.epilog:                                        ; preds = %while.end, %land.lhs.true128, %if.then122, %land.lhs.true157, %land.lhs.true215, %if.then189, %if.else203, %if.then218, %if.then131, %if.then81, %if.else145, %if.then160, %while.cond, %sw.bb226, %while.cond, %sw.bb
  %bit_offset.3 = phi i64 [ %add227, %sw.bb226 ], [ %bit_offset.0, %while.cond ], [ %bit_offset.0, %while.cond ], [ %add, %sw.bb ], [ %add91, %while.end ], [ %add91, %if.then122 ], [ %add91, %land.lhs.true128 ], [ %add91, %if.then131 ], [ %add91, %if.then81 ], [ %bit_offset.0, %if.else145 ], [ %bit_offset.0, %land.lhs.true157 ], [ %bit_offset.0, %if.then160 ], [ %add202, %if.then189 ], [ %bit_offset.0, %if.else203 ], [ %bit_offset.0, %land.lhs.true215 ], [ %bit_offset.0, %if.then218 ], !dbg !3687
  %maxsize.8 = phi i64 [ %maxsize.0, %sw.bb226 ], [ %maxsize.0, %while.cond ], [ %maxsize.0, %while.cond ], [ %maxsize.0, %sw.bb ], [ %maxsize.0, %while.end ], [ -1, %if.then122 ], [ -1, %land.lhs.true128 ], [ %add140, %if.then131 ], [ %maxsize.0, %if.then81 ], [ -1, %if.else145 ], [ -1, %land.lhs.true157 ], [ %sub164, %if.then160 ], [ %maxsize.0, %if.then189 ], [ -1, %if.else203 ], [ -1, %land.lhs.true215 ], [ %sub222, %if.then218 ], !dbg !3687
  %seen_variable_array_ref.2 = phi i8 [ %seen_variable_array_ref.0, %sw.bb226 ], [ %seen_variable_array_ref.0, %while.cond ], [ %seen_variable_array_ref.0, %while.cond ], [ %seen_variable_array_ref.0, %sw.bb ], [ %seen_variable_array_ref.0, %while.end ], [ %seen_variable_array_ref.0, %if.then122 ], [ %seen_variable_array_ref.0, %land.lhs.true128 ], [ %seen_variable_array_ref.0, %if.then131 ], [ %seen_variable_array_ref.0, %if.then81 ], [ %seen_variable_array_ref.0, %if.else145 ], [ %seen_variable_array_ref.0, %land.lhs.true157 ], [ %seen_variable_array_ref.0, %if.then160 ], [ 0, %if.then189 ], [ 1, %if.else203 ], [ 1, %land.lhs.true215 ], [ 1, %if.then218 ], !dbg !3687
  call void @llvm.dbg.value(metadata i8 %seen_variable_array_ref.2, metadata !3653, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %maxsize.8, metadata !3650, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %bit_offset.3, metadata !3652, metadata !DIExpression()), !dbg !3687
  %operands229 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3818
  %55 = load %union.tree_node*, %union.tree_node** %operands229, align 8, !dbg !3818
  call void @llvm.dbg.value(metadata %union.tree_node* %55, metadata !3645, metadata !DIExpression()), !dbg !3687
  br label %while.cond, !dbg !3717, !llvm.loop !3819

done:                                             ; preds = %while.cond
  %bit_offset.0.lcssa = phi i64 [ %bit_offset.0, %while.cond ], !dbg !3687
  %maxsize.0.lcssa = phi i64 [ %maxsize.0, %while.cond ], !dbg !3718
  %seen_variable_array_ref.0.lcssa = phi i8 [ %seen_variable_array_ref.0, %while.cond ], !dbg !3719
  %exp.addr.0.lcssa = phi %union.tree_node* [ %exp.addr.0, %while.cond ]
  %bf.load57.lcssa = phi i64 [ %bf.load57, %while.cond ], !dbg !3720
  call void @llvm.dbg.value(metadata i64 %bit_offset.0.lcssa, metadata !3652, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %maxsize.0.lcssa, metadata !3650, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8 %seen_variable_array_ref.0.lcssa, metadata !3653, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata %union.tree_node* %exp.addr.0.lcssa, metadata !3645, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %bit_offset.0.lcssa, metadata !3652, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %maxsize.0.lcssa, metadata !3650, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8 %seen_variable_array_ref.0.lcssa, metadata !3653, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata %union.tree_node* %exp.addr.0.lcssa, metadata !3645, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %bit_offset.0.lcssa, metadata !3652, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %maxsize.0.lcssa, metadata !3650, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8 %seen_variable_array_ref.0.lcssa, metadata !3653, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata %union.tree_node* %exp.addr.0.lcssa, metadata !3645, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.label(metadata !3686), !dbg !3821
  %bf.cast234 = and i64 %bf.load57.lcssa, 65535, !dbg !3822
  %arrayidx236 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast234, !dbg !3822
  %56 = load i32, i32* %arrayidx236, align 4, !dbg !3822
  %cmp237 = icmp eq i32 %56, 3, !dbg !3822
  br i1 %cmp237, label %if.then239, label %if.else255, !dbg !3824

if.then239:                                       ; preds = %done
  %cmp240 = icmp eq i64 %maxsize.0.lcssa, -1, !dbg !3825
  br i1 %cmp240, label %land.lhs.true242, label %if.end283, !dbg !3828

land.lhs.true242:                                 ; preds = %if.then239
  %size244 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp.addr.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3829
  %57 = load %union.tree_node*, %union.tree_node** %size244, align 8, !dbg !3829
  %call245 = tail call i32 @host_integerp(%union.tree_node* %57, i32 1) #6, !dbg !3830
  %tobool246 = icmp eq i32 %call245, 0, !dbg !3830
  br i1 %tobool246, label %if.end283, label %if.then247, !dbg !3831

if.then247:                                       ; preds = %land.lhs.true242
  %58 = bitcast %union.tree_node** %size244 to %struct.tree_int_cst**, !dbg !3832
  %59 = load %struct.tree_int_cst*, %struct.tree_int_cst** %58, align 8, !dbg !3832
  %low252 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %59, i64 0, i32 1, i32 0, !dbg !3832
  %60 = load i64, i64* %low252, align 8, !dbg !3832
  %sub253 = sub i64 %60, %bit_offset.0.lcssa, !dbg !3833
  call void @llvm.dbg.value(metadata i64 %sub253, metadata !3650, metadata !DIExpression()), !dbg !3687
  br label %if.end283, !dbg !3834

if.else255:                                       ; preds = %done
  %tobool257 = icmp ne i8 %seen_variable_array_ref.0.lcssa, 0, !dbg !3835
  %cmp259 = icmp ne i64 %maxsize.0.lcssa, -1, !dbg !3837
  %or.cond3 = and i1 %tobool257, %cmp259, !dbg !3838
  br i1 %or.cond3, label %land.lhs.true261, label %if.end283, !dbg !3838

land.lhs.true261:                                 ; preds = %if.else255
  %type263 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp.addr.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3839
  %61 = bitcast %union.tree_node** %type263 to %struct.tree_type**, !dbg !3839
  %62 = load %struct.tree_type*, %struct.tree_type** %61, align 8, !dbg !3839
  %size265 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %62, i64 0, i32 2, !dbg !3839
  %63 = load %union.tree_node*, %union.tree_node** %size265, align 8, !dbg !3839
  %call266 = tail call i32 @host_integerp(%union.tree_node* %63, i32 1) #6, !dbg !3840
  %tobool267 = icmp eq i32 %call266, 0, !dbg !3840
  br i1 %tobool267, label %if.then281, label %lor.lhs.false268, !dbg !3841

lor.lhs.false268:                                 ; preds = %land.lhs.true261
  %add269 = add nsw i64 %bit_offset.0.lcssa, %maxsize.0.lcssa, !dbg !3842
  %64 = load %struct.tree_type*, %struct.tree_type** %61, align 8, !dbg !3843
  %size273 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %64, i64 0, i32 2, !dbg !3843
  %65 = bitcast %union.tree_node** %size273 to %struct.tree_int_cst**, !dbg !3843
  %66 = load %struct.tree_int_cst*, %struct.tree_int_cst** %65, align 8, !dbg !3843
  %low276 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %66, i64 0, i32 1, i32 0, !dbg !3843
  %67 = load i64, i64* %low276, align 8, !dbg !3843
  %sext = shl i64 %67, 32, !dbg !3844
  %conv278 = ashr exact i64 %sext, 32, !dbg !3844
  %cmp279 = icmp eq i64 %add269, %conv278, !dbg !3845
  br i1 %cmp279, label %if.then281, label %if.end283, !dbg !3846

if.then281:                                       ; preds = %land.lhs.true261, %lor.lhs.false268
  call void @llvm.dbg.value(metadata i64 -1, metadata !3650, metadata !DIExpression()), !dbg !3687
  br label %if.end283, !dbg !3847

if.end283:                                        ; preds = %land.lhs.true242, %if.else255, %lor.lhs.false268, %if.then281, %if.then239, %if.then247
  %maxsize.11 = phi i64 [ %sub253, %if.then247 ], [ -1, %land.lhs.true242 ], [ %maxsize.0.lcssa, %if.then239 ], [ -1, %if.then281 ], [ %maxsize.0.lcssa, %lor.lhs.false268 ], [ %maxsize.0.lcssa, %if.else255 ], !dbg !3848
  call void @llvm.dbg.value(metadata i64 %maxsize.11, metadata !3650, metadata !DIExpression()), !dbg !3687
  store i64 %bit_offset.0.lcssa, i64* %poffset, align 8, !dbg !3849
  store i64 %bitsize.5, i64* %psize, align 8, !dbg !3850
  store i64 %maxsize.11, i64* %pmax_size, align 8, !dbg !3851
  ret %union.tree_node* %exp.addr.0.lcssa, !dbg !3852
}

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @host_integerp(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @component_ref_field_offset(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @array_ref_low_bound(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @array_ref_element_size(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @stmt_references_abnormal_ssa_name(%union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !3853 {
entry:
  %oi = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3857, metadata !DIExpression()), !dbg !3860
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %oi, i64 0, i32 0, !dbg !3861
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7, !dbg !3861
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %oi, metadata !3858, metadata !DIExpression(DW_OP_deref)), !dbg !3860
  %call = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %oi, %union.gimple_statement_d* %stmt, i32 1) #8, !dbg !3862
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call, metadata !3859, metadata !DIExpression()), !dbg !3860
  br label %for.cond, !dbg !3862

for.cond:                                         ; preds = %for.inc, %entry
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call, %entry ], [ %call4, %for.inc ], !dbg !3864
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !3859, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %oi, metadata !3858, metadata !DIExpression(DW_OP_deref)), !dbg !3860
  %call1 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %oi) #8, !dbg !3865
  %tobool = icmp eq i8 %call1, 0, !dbg !3865
  br i1 %tobool, label %for.body, label %cleanup, !dbg !3862

for.body:                                         ; preds = %for.cond
  %call2 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #8, !dbg !3867
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3867
  %bf.load = load i64, i64* %1, align 8, !dbg !3867
  %bf.cast1 = and i64 %bf.load, 4194304, !dbg !3867
  %tobool3 = icmp eq i64 %bf.cast1, 0, !dbg !3867
  br i1 %tobool3, label %for.inc, label %cleanup, !dbg !3870

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %oi, metadata !3858, metadata !DIExpression(DW_OP_deref)), !dbg !3860
  %call4 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %oi) #8, !dbg !3865
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call4, metadata !3859, metadata !DIExpression()), !dbg !3860
  br label %for.cond, !dbg !3865, !llvm.loop !3871

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 1, %for.body ], [ 0, %for.cond ], !dbg !3860
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7, !dbg !3873
  ret i8 %retval.0, !dbg !3873
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3874 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3878, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3879, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i32 1, metadata !3880, metadata !DIExpression()), !dbg !3881
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 1) #8, !dbg !3882
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3883
  store i32 2, i32* %iter_type, align 4, !dbg !3884
  %call = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !3885
  ret %struct.ssa_use_operand_d* %call, !dbg !3886
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3887 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3891, metadata !DIExpression()), !dbg !3892
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3893
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3893
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3894
  ret %union.tree_node* %1, !dbg !3895
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3896 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3900, metadata !DIExpression()), !dbg !3902
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3903
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !3903
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !3905
  br i1 %tobool, label %if.end, label %if.then, !dbg !3906

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !3907
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !3901, metadata !DIExpression()), !dbg !3902
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !3909
  %2 = load i64, i64* %1, align 8, !dbg !3909
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3910
  store i64 %2, i64* %3, align 8, !dbg !3910
  br label %cleanup, !dbg !3911

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3912
  %4 = load i32, i32* %phi_i, align 8, !dbg !3912
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3914
  %5 = load i32, i32* %num_phi, align 4, !dbg !3914
  %cmp = icmp slt i32 %4, %5, !dbg !3915
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !3916

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3917
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3917
  %inc = add nsw i32 %4, 1, !dbg !3917
  store i32 %inc, i32* %phi_i, align 8, !dbg !3917
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #8, !dbg !3917
  br label %cleanup, !dbg !3919

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3920
  store i8 1, i8* %done, align 8, !dbg !3921
  br label %cleanup, !dbg !3922

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !3902
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3923
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3924 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3928, metadata !DIExpression()), !dbg !3929
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3930
  %cmp = icmp eq i32 %call, 2, !dbg !3931
  %conv1 = zext i1 %cmp to i8, !dbg !3930
  ret i8 %conv1, !dbg !3932
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3933 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3940, metadata !DIExpression()), !dbg !3941
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3942
  %0 = load i32, i32* %flags, align 8, !dbg !3942
  %and = and i32 %0, 512, !dbg !3943
  %tobool = icmp eq i32 %and, 0, !dbg !3943
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3944

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3945
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3945
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3946
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3947

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3948
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3948
  br label %cond.end, !dbg !3947

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3947
  ret %struct.gimple_seq_d* %cond, !dbg !3949
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3950 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3957, metadata !DIExpression()), !dbg !3958
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3959
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3959

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3960
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3960
  br label %cond.end, !dbg !3959

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3959
  ret %struct.gimple_seq_node_d* %cond, !dbg !3961
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @first_htab_element(%struct.htab_iterator* %hti, %struct.htab* %table) unnamed_addr #0 !dbg !3962 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !3967, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata %struct.htab* %table, metadata !3968, metadata !DIExpression()), !dbg !3971
  %htab = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 0, !dbg !3972
  store %struct.htab* %table, %struct.htab** %htab, align 8, !dbg !3973
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %table, i64 0, i32 3, !dbg !3974
  %0 = bitcast i8*** %entries to i64*, !dbg !3974
  %1 = load i64, i64* %0, align 8, !dbg !3974
  %slot = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !3975
  %2 = bitcast i8*** %slot to i64*, !dbg !3976
  store i64 %1, i64* %2, align 8, !dbg !3976
  %.cast = inttoptr i64 %1 to i8**, !dbg !3977
  %call = tail call i64 @htab_size(%struct.htab* %table) #6, !dbg !3978
  %add.ptr = getelementptr inbounds i8*, i8** %.cast, i64 %call, !dbg !3979
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !3980
  store i8** %add.ptr, i8*** %limit, align 8, !dbg !3981
  %.pre3 = load i8**, i8*** %slot, align 8, !dbg !3982
  br label %do.body, !dbg !3983

do.body:                                          ; preds = %do.cond, %entry
  %3 = phi i8** [ %incdec.ptr, %do.cond ], [ %.pre3, %entry ]
  %indvars2 = bitcast i8** %3 to i64*, !dbg !3982
  %4 = load i64, i64* %indvars2, align 8, !dbg !3984
  %switch1 = icmp ult i64 %4, 2, !dbg !3985
  br i1 %switch1, label %do.cond, label %do.end

do.cond:                                          ; preds = %do.body
  %incdec.ptr = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !3987
  store i8** %incdec.ptr, i8*** %slot, align 8, !dbg !3987
  %cmp6 = icmp ult i8** %incdec.ptr, %add.ptr, !dbg !3988
  br i1 %cmp6, label %do.body, label %do.end, !dbg !3989, !llvm.loop !3990

do.end:                                           ; preds = %do.body, %do.cond
  %5 = phi i8** [ %3, %do.body ], [ %incdec.ptr, %do.cond ]
  %6 = phi i8** [ %3, %do.body ], [ %incdec.ptr, %do.cond ], !dbg !3992
  %cmp9 = icmp ult i8** %6, %add.ptr, !dbg !3994
  br i1 %cmp9, label %if.then10, label %return, !dbg !3995

if.then10:                                        ; preds = %do.end
  %7 = load i8*, i8** %5, align 8, !dbg !3996
  br label %return, !dbg !3997

return:                                           ; preds = %do.end, %if.then10
  %retval.0 = phi i8* [ %7, %if.then10 ], [ null, %do.end ], !dbg !3971
  ret i8* %retval.0, !dbg !3998
}

declare dso_local i64 @htab_size(%struct.htab*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_htab_p(%struct.htab_iterator* %hti) unnamed_addr #0 !dbg !3999 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !4005, metadata !DIExpression()), !dbg !4006
  %slot = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !4007
  %0 = load i8**, i8*** %slot, align 8, !dbg !4007
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !4009
  %1 = load i8**, i8*** %limit, align 8, !dbg !4009
  %cmp = icmp uge i8** %0, %1, !dbg !4010
  %. = zext i1 %cmp to i8, !dbg !4006
  ret i8 %., !dbg !4011
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @next_htab_element(%struct.htab_iterator* %hti) unnamed_addr #0 !dbg !4012 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !4016, metadata !DIExpression()), !dbg !4019
  %slot1 = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !4020
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !4019
  %.pre = load i8**, i8*** %slot1, align 8, !dbg !4021
  %.pre3 = load i8**, i8*** %limit, align 8, !dbg !4022
  br label %while.cond, !dbg !4023

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi i8** [ %.pre, %entry ], [ %incdec.ptr, %while.body ], !dbg !4021
  %retval.0 = phi i8* [ undef, %entry ], [ %spec.select2, %while.body ]
  %incdec.ptr = getelementptr inbounds i8*, i8** %0, i64 1, !dbg !4021
  store i8** %incdec.ptr, i8*** %slot1, align 8, !dbg !4021
  %cmp = icmp ult i8** %incdec.ptr, %.pre3, !dbg !4024
  br i1 %cmp, label %while.body, label %return, !dbg !4023

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %incdec.ptr, align 8, !dbg !4025
  call void @llvm.dbg.value(metadata i8* %1, metadata !4017, metadata !DIExpression()), !dbg !4026
  %switch1 = icmp ult i8* %1, inttoptr (i64 2 to i8*), !dbg !4027
  %spec.select2 = select i1 %switch1, i8* %retval.0, i8* %1, !dbg !4027
  br i1 %switch1, label %while.cond, label %return, !llvm.loop !4029

return:                                           ; preds = %while.cond, %while.body
  %retval.2 = phi i8* [ %spec.select2, %while.body ], [ null, %while.cond ], !dbg !4019
  ret i8* %retval.2, !dbg !4031
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var) unnamed_addr #0 !dbg !4032 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4034, metadata !DIExpression()), !dbg !4035
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4036
  %bf.load = load i64, i64* %0, align 8, !dbg !4036
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4037
  %cmp = icmp eq i64 %bf.cast1, 33, !dbg !4037
  br i1 %cmp, label %land.end, label %land.lhs.true, !dbg !4038

land.lhs.true:                                    ; preds = %entry
  %bf.cast43 = and i64 %bf.load, 67108864, !dbg !4039
  %tobool = icmp eq i64 %bf.cast43, 0, !dbg !4039
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true17, !dbg !4040

lor.lhs.false:                                    ; preds = %land.lhs.true
  %bf.cast94 = and i64 %bf.load, 134217728, !dbg !4041
  %tobool10 = icmp eq i64 %bf.cast94, 0, !dbg !4041
  br i1 %tobool10, label %lor.lhs.false11, label %land.lhs.true17, !dbg !4042

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4043
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !4043
  %bf.load12 = load i64, i64* %1, align 8, !dbg !4043
  %bf.cast155 = and i64 %bf.load12, 33554432, !dbg !4043
  %tobool16 = icmp eq i64 %bf.cast155, 0, !dbg !4043
  br i1 %tobool16, label %land.rhs, label %land.lhs.true17, !dbg !4044

land.lhs.true17:                                  ; preds = %lor.lhs.false11, %lor.lhs.false, %land.lhs.true
  %bf.cast228 = and i64 %bf.load, 1048576, !dbg !4045
  %tobool23 = icmp eq i64 %bf.cast228, 0, !dbg !4045
  br i1 %tobool23, label %land.rhs, label %land.lhs.true24, !dbg !4046

land.lhs.true24:                                  ; preds = %land.lhs.true17
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4047
  %2 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !4047
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !4047
  %needs_constructing_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 6, !dbg !4047
  %bf.load26 = load i32, i32* %needs_constructing_flag, align 4, !dbg !4047
  %bf.clear28 = and i32 %bf.load26, 2048, !dbg !4047
  %tobool29 = icmp eq i32 %bf.clear28, 0, !dbg !4047
  br i1 %tobool29, label %land.end, label %land.rhs, !dbg !4048

land.rhs:                                         ; preds = %land.lhs.true24, %land.lhs.true17, %lor.lhs.false11
  %bf.cast346 = and i64 %bf.load, 134217728, !dbg !4049
  %tobool35 = icmp eq i64 %bf.cast346, 0, !dbg !4049
  br i1 %tobool35, label %lor.lhs.false36, label %land.end, !dbg !4050

lor.lhs.false36:                                  ; preds = %land.rhs
  %decl_flag_138 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4051
  %4 = bitcast i40* %decl_flag_138 to i64*, !dbg !4051
  %bf.load39 = load i64, i64* %4, align 8, !dbg !4051
  %bf.cast427 = and i64 %bf.load39, 33554432, !dbg !4051
  %tobool43 = icmp eq i64 %bf.cast427, 0, !dbg !4051
  br i1 %tobool43, label %lor.rhs, label %land.end, !dbg !4052

lor.rhs:                                          ; preds = %lor.lhs.false36
  %bf.lshr46 = lshr i64 %bf.load, 18, !dbg !4053
  %5 = trunc i64 %bf.lshr46 to i8, !dbg !4052
  %6 = and i8 %5, 1, !dbg !4052
  br label %land.end, !dbg !4052

land.end:                                         ; preds = %land.lhs.true24, %lor.lhs.false36, %land.rhs, %entry, %lor.rhs
  %7 = phi i8 [ 0, %land.lhs.true24 ], [ 0, %entry ], [ 1, %lor.lhs.false36 ], [ 1, %land.rhs ], [ %6, %lor.rhs ]
  ret i8 %7, !dbg !4054
}

declare dso_local zeroext i8 @pt_solution_includes(%struct.pt_solution*, %union.tree_node*) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @num_ssa_operands(%union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4055 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4060, metadata !DIExpression()), !dbg !4064
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !4065
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7, !dbg !4065
  call void @llvm.dbg.value(metadata i32 0, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4061, metadata !DIExpression(DW_OP_deref)), !dbg !4064
  %call = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 %flags) #8, !dbg !4066
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4062, metadata !DIExpression()), !dbg !4064
  br label %for.cond, !dbg !4066

for.cond:                                         ; preds = %for.body, %entry
  %num.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4064
  call void @llvm.dbg.value(metadata i32 %num.0, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4061, metadata !DIExpression(DW_OP_deref)), !dbg !4064
  %call1 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !4068
  %tobool = icmp eq i8 %call1, 0, !dbg !4068
  br i1 %tobool, label %for.body, label %for.end, !dbg !4066

for.body:                                         ; preds = %for.cond
  %inc = add nuw nsw i32 %num.0, 1, !dbg !4070
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4061, metadata !DIExpression(DW_OP_deref)), !dbg !4064
  %call2 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !4068
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !4062, metadata !DIExpression()), !dbg !4064
  br label %for.cond, !dbg !4068, !llvm.loop !4071

for.end:                                          ; preds = %for.cond
  %num.0.lcssa = phi i32 [ %num.0, %for.cond ], !dbg !4064
  call void @llvm.dbg.value(metadata i32 %num.0.lcssa, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 %num.0.lcssa, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 %num.0.lcssa, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7, !dbg !4073
  ret i32 %num.0.lcssa, !dbg !4074
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4075 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4079, metadata !DIExpression()), !dbg !4080
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !4081
  %tobool = icmp eq i8 %call, 0, !dbg !4081
  br i1 %tobool, label %return, label %if.end, !dbg !4083

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !4084
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !4084
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4084
  br label %return, !dbg !4085

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !4080
  ret %union.tree_node* %retval.0, !dbg !4086
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4087 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4089, metadata !DIExpression()), !dbg !4090
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !4091
  %tobool = icmp eq i8 %call, 0, !dbg !4091
  br i1 %tobool, label %return, label %if.end, !dbg !4093

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !4094
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !4094
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4094
  br label %return, !dbg !4095

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !4090
  ret %union.tree_node* %retval.0, !dbg !4096
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4097 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4099, metadata !DIExpression()), !dbg !4100
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4101
  %cmp = icmp ugt i32 %call, 5, !dbg !4102
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4103

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4104
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4105
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4106
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4107 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4109, metadata !DIExpression()), !dbg !4110
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4111
  %cmp = icmp eq i32 %call, 0, !dbg !4112
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !4113

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4114
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4115
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4116
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4117 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4119, metadata !DIExpression()), !dbg !4121
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !4122
  %idxprom = zext i32 %call to i64, !dbg !4123
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !4123
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4123
  call void @llvm.dbg.value(metadata i64 %0, metadata !4120, metadata !DIExpression()), !dbg !4121
  %cmp = icmp eq i64 %0, 0, !dbg !4124
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4124

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4124
  br label %cond.end, !dbg !4124

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !4125
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !4126
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !4127
  ret %union.tree_node** %2, !dbg !4128
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4129 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4133, metadata !DIExpression()), !dbg !4134
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !4135
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !4136
  ret i32 %call1, !dbg !4137
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !4138 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4142, metadata !DIExpression()), !dbg !4143
  %idxprom = zext i32 %code to i64, !dbg !4144
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !4144
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4144
  ret i32 %0, !dbg !4145
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4146 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4150, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 %index, metadata !4151, metadata !DIExpression()), !dbg !4152
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !4153
  %0 = load i32, i32* %capacity, align 8, !dbg !4153
  %cmp = icmp ult i32 %0, %index, !dbg !4153
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4153

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4153
  br label %cond.end, !dbg !4153

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !4154
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !4154
  ret %struct.phi_arg_d* %arrayidx, !dbg !4155
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4156 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4160, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4161, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4162, metadata !DIExpression()), !dbg !4163
  %0 = and i32 %flags, 10, !dbg !4164
  %1 = icmp eq i32 %0, 8, !dbg !4164
  br i1 %1, label %cond.true, label %land.lhs.true, !dbg !4164

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %flags, 5, !dbg !4164
  %3 = icmp eq i32 %2, 4, !dbg !4164
  br i1 %3, label %cond.true, label %cond.end, !dbg !4164

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4164
  br label %cond.end, !dbg !4164

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %tobool9 = icmp eq i32 %0, 0, !dbg !4165
  br i1 %tobool9, label %cond.end12, label %cond.true10, !dbg !4166

cond.true10:                                      ; preds = %cond.end
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #8, !dbg !4167
  br label %cond.end12, !dbg !4166

cond.end12:                                       ; preds = %cond.end, %cond.true10
  %4 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ null, %cond.end ], !dbg !4166
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4168
  store %struct.def_optype_d* %4, %struct.def_optype_d** %defs, align 8, !dbg !4169
  %and14 = and i32 %flags, 8, !dbg !4170
  %tobool15 = icmp eq i32 %and14, 0, !dbg !4170
  br i1 %tobool15, label %land.lhs.true16, label %if.end, !dbg !4172

land.lhs.true16:                                  ; preds = %cond.end12
  %tobool18 = icmp eq %struct.def_optype_d* %4, null, !dbg !4173
  br i1 %tobool18, label %if.end, label %land.lhs.true19, !dbg !4174

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #8, !dbg !4175
  %cmp = icmp eq %union.tree_node* %call20, null, !dbg !4176
  br i1 %cmp, label %if.end, label %if.then, !dbg !4177

if.then:                                          ; preds = %land.lhs.true19
  %5 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !4178
  %6 = load i64*, i64** %5, align 8, !dbg !4178
  %7 = load i64, i64* %6, align 8, !dbg !4179
  %8 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !4180
  store i64 %7, i64* %8, align 8, !dbg !4180
  br label %if.end, !dbg !4181

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true16, %cond.end12, %if.then
  %and23 = and i32 %flags, 5, !dbg !4182
  %tobool24 = icmp eq i32 %and23, 0, !dbg !4182
  br i1 %tobool24, label %cond.end28, label %cond.true25, !dbg !4183

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #8, !dbg !4184
  br label %cond.end28, !dbg !4183

cond.end28:                                       ; preds = %if.end, %cond.true25
  %9 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ null, %if.end ], !dbg !4183
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4185
  store %struct.use_optype_d* %9, %struct.use_optype_d** %uses, align 8, !dbg !4186
  %and30 = and i32 %flags, 4, !dbg !4187
  %tobool31 = icmp eq i32 %and30, 0, !dbg !4187
  br i1 %tobool31, label %land.lhs.true32, label %if.end42, !dbg !4189

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %9, null, !dbg !4190
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !4191

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #8, !dbg !4192
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !4193
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !4194

if.then38:                                        ; preds = %land.lhs.true35
  %10 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !4195
  %11 = load i64*, i64** %10, align 8, !dbg !4195
  %12 = load i64, i64* %11, align 8, !dbg !4196
  %13 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4197
  store i64 %12, i64* %13, align 8, !dbg !4197
  br label %if.end42, !dbg !4198

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32, %cond.end28, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4199
  store i8 0, i8* %done, align 8, !dbg !4200
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4201
  store i32 0, i32* %phi_i, align 8, !dbg !4202
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4203
  store i32 0, i32* %num_phi, align 4, !dbg !4204
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4205
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4206
  ret void, !dbg !4207
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4208 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4212, metadata !DIExpression()), !dbg !4213
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #8, !dbg !4214
  %tobool = icmp eq i8 %call, 0, !dbg !4214
  br i1 %tobool, label %return, label %if.end, !dbg !4216

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !4217
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !4217
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !4217
  br label %return, !dbg !4218

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !4213
  ret %struct.def_optype_d* %retval.0, !dbg !4219
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4220 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4224, metadata !DIExpression()), !dbg !4225
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #8, !dbg !4226
  %tobool = icmp eq i8 %call, 0, !dbg !4226
  br i1 %tobool, label %return, label %if.end, !dbg !4228

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !4229
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !4229
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !4229
  br label %return, !dbg !4230

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !4225
  ret %struct.use_optype_d* %retval.0, !dbg !4231
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !4232 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !4237, metadata !DIExpression()), !dbg !4238
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !4239
  ret %union.tree_node* %0, !dbg !4240
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4241 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4245, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i32 %i, metadata !4246, metadata !DIExpression()), !dbg !4247
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #8, !dbg !4248
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4249
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !4250
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
!llvm.module.flags = !{!2004, !2005, !2006}
!llvm.ident = !{!2007}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_referenced_vars", scope: !2, file: !3, line: 105, type: !1978, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !632, globals: !1977, nameTableKind: None)
!3 = !DIFile(filename: "tree-dfa.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !512, !518, !523, !528, !546, !553, !560, !567, !606}
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
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !318, line: 39, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511}
!320 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!323 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!324 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!325 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!326 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!327 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!328 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!329 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!330 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!331 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!332 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!333 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!334 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!335 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!336 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!337 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!338 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!339 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!340 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!341 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!342 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!343 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!344 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!345 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!346 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!347 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!348 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!349 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!350 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!351 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!352 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!353 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!354 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!355 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!356 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!357 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!358 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!359 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!360 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!361 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!362 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!363 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!364 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!365 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!366 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!367 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!368 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!369 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!370 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!371 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!372 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!373 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!374 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!375 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!376 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!377 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!378 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!379 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!380 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!381 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!382 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!383 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!384 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!385 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!386 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!387 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!388 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!389 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!390 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!391 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!392 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!393 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!394 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!395 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!396 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!397 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!398 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!399 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!400 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!401 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!402 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!403 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!404 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!405 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!406 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!407 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!408 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!409 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!410 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!411 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!412 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!413 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!414 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!415 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!416 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!417 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!418 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!419 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!420 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!421 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!422 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!423 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!424 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!425 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!426 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!427 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!428 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!429 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!430 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!431 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!432 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!433 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!434 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!435 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!436 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!437 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!438 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!439 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!440 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!441 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!442 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!443 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!444 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!445 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!446 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!447 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!448 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!449 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!450 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!451 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!452 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!453 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!454 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!455 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!456 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!457 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!458 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!459 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!460 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!461 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!462 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!463 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!464 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!465 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!466 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!467 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!468 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!469 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!470 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!471 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!472 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!473 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!474 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!475 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!476 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!477 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!478 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!479 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!480 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!481 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!482 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!483 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!484 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!485 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!486 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!487 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!488 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!489 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!490 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!491 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!492 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!493 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!494 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!495 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!496 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!497 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!498 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!499 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!500 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!501 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!502 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!503 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!504 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!505 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!506 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!507 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!508 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!509 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!510 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!511 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!512 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !513, line: 363, baseType: !7, size: 32, elements: !514)
!513 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!514 = !{!515, !516, !517}
!515 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!516 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!517 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!518 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !513, line: 355, baseType: !7, size: 32, elements: !519)
!519 = !{!520, !521, !522}
!520 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!521 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!522 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!523 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !524, line: 474, baseType: !7, size: 32, elements: !525)
!524 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!525 = !{!526, !527}
!526 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!527 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!528 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !318, line: 280, baseType: !7, size: 32, elements: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545}
!530 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!531 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!532 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!533 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!534 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!535 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!536 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!537 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!538 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!539 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!540 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!541 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!542 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!543 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!544 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!545 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!546 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !318, line: 1817, baseType: !7, size: 32, elements: !547)
!547 = !{!548, !549, !550, !551, !552}
!548 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!549 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!550 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!551 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!552 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!553 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !318, line: 1805, baseType: !7, size: 32, elements: !554)
!554 = !{!555, !556, !557, !558, !559}
!555 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!556 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!557 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!558 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!559 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
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
!632 = !{!633, !634, !635, !636, !639, !640, !317, !642, !7, !653, !707, !1968, !709, !1011, !655, !1969, !1971, !978, !1972, !637, !1974}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!635 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !644, line: 172, size: 128, elements: !645)
!644 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!645 = !{!646, !647, !648, !649, !650, !651, !652}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !643, file: !644, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !643, file: !644, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !643, file: !644, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !643, file: !644, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !643, file: !644, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !643, file: !644, line: 195, baseType: !7, size: 32, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !643, file: !644, line: 199, baseType: !653, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !654, line: 56, baseType: !655)
!654 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !318, line: 3371, size: 1792, elements: !657)
!657 = !{!658, !691, !697, !710, !729, !740, !745, !754, !760, !773, !785, !823, !1314, !1342, !1348, !1349, !1354, !1363, !1369, !1374, !1378, !1382, !1619, !1666, !1672, !1678, !1685, !1698, !1712, !1729, !1741, !1763, !1778, !1950}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !656, file: !318, line: 3372, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !318, line: 360, size: 64, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !659, file: !318, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !659, file: !318, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !659, file: !318, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !659, file: !318, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !659, file: !318, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !659, file: !318, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !659, file: !318, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !659, file: !318, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !659, file: !318, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !659, file: !318, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !659, file: !318, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !659, file: !318, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !659, file: !318, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !659, file: !318, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !659, file: !318, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !659, file: !318, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !659, file: !318, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !659, file: !318, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !659, file: !318, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !659, file: !318, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !659, file: !318, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !659, file: !318, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !659, file: !318, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !659, file: !318, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !659, file: !318, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !659, file: !318, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !659, file: !318, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !659, file: !318, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !659, file: !318, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !659, file: !318, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !656, file: !318, line: 3373, baseType: !692, size: 192)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !318, line: 402, size: 192, elements: !693)
!693 = !{!694, !695, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !692, file: !318, line: 403, baseType: !659, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !692, file: !318, line: 404, baseType: !653, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !692, file: !318, line: 405, baseType: !653, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !656, file: !318, line: 3374, baseType: !698, size: 320)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !318, line: 1384, size: 320, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !698, file: !318, line: 1385, baseType: !692, size: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !698, file: !318, line: 1386, baseType: !702, size: 128, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !703, line: 58, baseType: !704)
!703 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !703, line: 54, size: 128, elements: !705)
!705 = !{!706, !708}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !704, file: !703, line: 56, baseType: !707, size: 64)
!707 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !704, file: !703, line: 57, baseType: !709, size: 64, offset: 64)
!709 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !656, file: !318, line: 3375, baseType: !711, size: 256)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !318, line: 1397, size: 256, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !711, file: !318, line: 1398, baseType: !692, size: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !711, file: !318, line: 1399, baseType: !715, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !717, line: 52, size: 256, elements: !718)
!717 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!718 = !{!719, !720, !721, !722, !723, !724, !725}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !716, file: !717, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !716, file: !717, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !716, file: !717, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !716, file: !717, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !716, file: !717, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !716, file: !717, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !716, file: !717, line: 62, baseType: !726, size: 192, offset: 64)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 192, elements: !727)
!727 = !{!728}
!728 = !DISubrange(count: 3)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !656, file: !318, line: 3376, baseType: !730, size: 256)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !318, line: 1408, size: 256, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !730, file: !318, line: 1409, baseType: !692, size: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !730, file: !318, line: 1410, baseType: !734, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !736, line: 27, size: 192, elements: !737)
!736 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !735, file: !736, line: 29, baseType: !702, size: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !735, file: !736, line: 30, baseType: !189, size: 32, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !656, file: !318, line: 3377, baseType: !741, size: 256)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !318, line: 1437, size: 256, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !741, file: !318, line: 1438, baseType: !692, size: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !741, file: !318, line: 1439, baseType: !653, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !656, file: !318, line: 3378, baseType: !746, size: 256)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !318, line: 1418, size: 256, elements: !747)
!747 = !{!748, !749, !750}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !746, file: !318, line: 1419, baseType: !692, size: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !746, file: !318, line: 1420, baseType: !635, size: 32, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !746, file: !318, line: 1421, baseType: !751, size: 8, offset: 224)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 8, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 1)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !656, file: !318, line: 3379, baseType: !755, size: 320)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !318, line: 1428, size: 320, elements: !756)
!756 = !{!757, !758, !759}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !755, file: !318, line: 1429, baseType: !692, size: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !755, file: !318, line: 1430, baseType: !653, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !755, file: !318, line: 1431, baseType: !653, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !656, file: !318, line: 3380, baseType: !761, size: 320)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !318, line: 1460, size: 320, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !761, file: !318, line: 1461, baseType: !692, size: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !761, file: !318, line: 1462, baseType: !765, size: 128, offset: 192)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !766, line: 31, size: 128, elements: !767)
!766 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!767 = !{!768, !771, !772}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !765, file: !766, line: 32, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !765, file: !766, line: 33, baseType: !7, size: 32, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !765, file: !766, line: 34, baseType: !7, size: 32, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !656, file: !318, line: 3381, baseType: !774, size: 384)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !318, line: 2507, size: 384, elements: !775)
!775 = !{!776, !777, !782, !783, !784}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !774, file: !318, line: 2508, baseType: !692, size: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !774, file: !318, line: 2509, baseType: !778, size: 32, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !779, line: 58, baseType: !780)
!779 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !781, line: 44, baseType: !7)
!781 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!782 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !774, file: !318, line: 2510, baseType: !7, size: 32, offset: 224)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !774, file: !318, line: 2511, baseType: !653, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !774, file: !318, line: 2512, baseType: !653, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !656, file: !318, line: 3382, baseType: !786, size: 896)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !318, line: 2652, size: 896, elements: !787)
!787 = !{!788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !786, file: !318, line: 2653, baseType: !774, size: 384)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !786, file: !318, line: 2654, baseType: !653, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !786, file: !318, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !786, file: !318, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !786, file: !318, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !786, file: !318, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !786, file: !318, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !786, file: !318, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !786, file: !318, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !786, file: !318, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !786, file: !318, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !786, file: !318, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !786, file: !318, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !786, file: !318, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !786, file: !318, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !786, file: !318, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !786, file: !318, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !786, file: !318, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !786, file: !318, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !786, file: !318, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !786, file: !318, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !786, file: !318, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !786, file: !318, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !786, file: !318, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !786, file: !318, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !786, file: !318, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !786, file: !318, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !786, file: !318, line: 2703, baseType: !7, size: 32, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !786, file: !318, line: 2705, baseType: !653, size: 64, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !786, file: !318, line: 2706, baseType: !653, size: 64, offset: 640)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !786, file: !318, line: 2707, baseType: !653, size: 64, offset: 704)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !786, file: !318, line: 2708, baseType: !653, size: 64, offset: 768)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !786, file: !318, line: 2711, baseType: !821, size: 64, offset: 832)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !318, line: 2711, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !656, file: !318, line: 3383, baseType: !824, size: 960)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !318, line: 2756, size: 960, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !824, file: !318, line: 2757, baseType: !786, size: 896)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !824, file: !318, line: 2758, baseType: !828, size: 64, offset: 896)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !654, line: 50, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !831, line: 240, size: 384, elements: !832)
!831 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!832 = !{!833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !830, file: !831, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !830, file: !831, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !830, file: !831, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !830, file: !831, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !830, file: !831, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !830, file: !831, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !830, file: !831, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !830, file: !831, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !830, file: !831, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !830, file: !831, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !830, file: !831, line: 321, baseType: !844, size: 320, offset: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !831, line: 315, size: 320, elements: !845)
!845 = !{!846, !1247, !1249, !1312, !1313}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !844, file: !831, line: 316, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, size: 64, elements: !752)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !831, line: 183, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !831, line: 166, size: 64, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !863, !864, !876, !879, !939, !940, !1224, !1237, !1244}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !849, file: !831, line: 168, baseType: !635, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !849, file: !831, line: 169, baseType: !7, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !849, file: !831, line: 170, baseType: !640, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !849, file: !831, line: 171, baseType: !828, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !849, file: !831, line: 172, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !654, line: 53, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !831, line: 359, size: 128, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !858, file: !831, line: 360, baseType: !635, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !858, file: !831, line: 361, baseType: !862, size: 64, offset: 64)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 64, elements: !752)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !849, file: !831, line: 173, baseType: !189, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !849, file: !831, line: 174, baseType: !865, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !831, line: 133, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !831, line: 115, size: 32, elements: !867)
!867 = !{!868, !869, !870, !871, !872, !873, !874, !875}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !866, file: !831, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !866, file: !831, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !866, file: !831, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !866, file: !831, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !866, file: !831, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !866, file: !831, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !866, file: !831, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !866, file: !831, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !849, file: !831, line: 175, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !831, line: 175, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !849, file: !831, line: 176, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !882, line: 75, size: 256, elements: !883)
!882 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!883 = !{!884, !898, !899, !900}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !881, file: !882, line: 76, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !882, line: 68, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !882, line: 63, size: 320, elements: !888)
!888 = !{!889, !891, !892, !893}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !887, file: !882, line: 64, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !887, file: !882, line: 65, baseType: !890, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !887, file: !882, line: 66, baseType: !7, size: 32, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !887, file: !882, line: 67, baseType: !894, size: 128, offset: 192)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 128, elements: !896)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !882, line: 29, baseType: !707)
!896 = !{!897}
!897 = !DISubrange(count: 2)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !881, file: !882, line: 77, baseType: !885, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !881, file: !882, line: 78, baseType: !7, size: 32, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !881, file: !882, line: 79, baseType: !901, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !882, line: 49, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !882, line: 45, size: 832, elements: !904)
!904 = !{!905, !906, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !903, file: !882, line: 46, baseType: !890, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !903, file: !882, line: 47, baseType: !880, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !903, file: !882, line: 48, baseType: !908, size: 704, offset: 128)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !909, line: 164, size: 704, elements: !910)
!909 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!910 = !{!911, !912, !922, !923, !924, !925, !926, !927, !931, !935, !936, !937, !938}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !908, file: !909, line: 166, baseType: !709, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !908, file: !909, line: 167, baseType: !913, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !909, line: 157, size: 192, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !914, file: !909, line: 159, baseType: !637, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !914, file: !909, line: 160, baseType: !913, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !914, file: !909, line: 161, baseType: !919, size: 32, offset: 128)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 32, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: 4)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !908, file: !909, line: 168, baseType: !637, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !908, file: !909, line: 169, baseType: !637, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !908, file: !909, line: 170, baseType: !637, size: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !908, file: !909, line: 171, baseType: !709, size: 64, offset: 320)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !908, file: !909, line: 172, baseType: !635, size: 32, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !908, file: !909, line: 176, baseType: !928, size: 64, offset: 448)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!913, !639, !709}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !908, file: !909, line: 177, baseType: !932, size: 64, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !639, !913}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !908, file: !909, line: 178, baseType: !639, size: 64, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !908, file: !909, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !908, file: !909, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !908, file: !909, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !849, file: !831, line: 177, baseType: !653, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !849, file: !831, line: 178, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !513, line: 217, size: 832, elements: !943)
!943 = !{!944, !1189, !1190, !1191, !1194, !1198, !1199, !1200, !1218, !1219, !1220, !1221, !1222, !1223}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !942, file: !513, line: 219, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !513, line: 151, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !513, line: 151, size: 128, elements: !948)
!948 = !{!949}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !947, file: !513, line: 151, baseType: !950, size: 128)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !513, line: 150, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !513, line: 150, size: 128, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !951, file: !513, line: 150, baseType: !7, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !951, file: !513, line: 150, baseType: !7, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !951, file: !513, line: 150, baseType: !956, size: 64, offset: 64)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !957, size: 64, elements: !752)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !654, line: 108, baseType: !958)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !513, line: 122, size: 512, elements: !960)
!960 = !{!961, !962, !963, !1181, !1182, !1183, !1184, !1185, !1186, !1187}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !959, file: !513, line: 124, baseType: !941, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !959, file: !513, line: 125, baseType: !941, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !959, file: !513, line: 131, baseType: !964, size: 64, offset: 128)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !513, line: 128, size: 64, elements: !965)
!965 = !{!966, !1180}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !964, file: !513, line: 129, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !654, line: 66, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !568, line: 143, size: 192, elements: !970)
!970 = !{!971, !1178, !1179}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !969, file: !568, line: 145, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !654, line: 69, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !568, line: 136, size: 192, elements: !975)
!975 = !{!976, !1176, !1177}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !974, file: !568, line: 137, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !654, line: 58, baseType: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !568, line: 737, size: 768, elements: !980)
!980 = !{!981, !998, !1031, !1037, !1042, !1047, !1054, !1060, !1066, !1071, !1085, !1090, !1096, !1101, !1111, !1116, !1134, !1141, !1148, !1154, !1159, !1165, !1171}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !979, file: !568, line: 738, baseType: !982, size: 256)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !568, line: 271, size: 256, elements: !983)
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !982, file: !568, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !982, file: !568, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !982, file: !568, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !982, file: !568, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !982, file: !568, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !982, file: !568, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !982, file: !568, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !982, file: !568, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !982, file: !568, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !982, file: !568, line: 312, baseType: !7, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !982, file: !568, line: 316, baseType: !778, size: 32, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !982, file: !568, line: 319, baseType: !7, size: 32, offset: 96)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !982, file: !568, line: 323, baseType: !941, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !982, file: !568, line: 327, baseType: !653, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !979, file: !568, line: 739, baseType: !999, size: 448)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !568, line: 350, size: 448, elements: !1000)
!1000 = !{!1001, !1029}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !999, file: !568, line: 353, baseType: !1002, size: 384)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !568, line: 333, size: 384, elements: !1003)
!1003 = !{!1004, !1005, !1012}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1002, file: !568, line: 336, baseType: !982, size: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1002, file: !568, line: 343, baseType: !1006, size: 64, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !561, line: 37, size: 128, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1007, file: !561, line: 39, baseType: !1006, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1007, file: !561, line: 40, baseType: !1011, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1002, file: !568, line: 344, baseType: !1013, size: 64, offset: 320)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !561, line: 45, size: 320, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1014, file: !561, line: 47, baseType: !1013, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1014, file: !561, line: 48, baseType: !1018, size: 256, offset: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !318, line: 1883, size: 256, elements: !1019)
!1019 = !{!1020, !1022, !1023, !1028}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1018, file: !318, line: 1884, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1018, file: !318, line: 1885, baseType: !1021, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1018, file: !318, line: 1891, baseType: !1024, size: 64, offset: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1018, file: !318, line: 1891, size: 64, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1024, file: !318, line: 1891, baseType: !977, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1024, file: !318, line: 1891, baseType: !653, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1018, file: !318, line: 1892, baseType: !1011, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !999, file: !568, line: 359, baseType: !1030, size: 64, offset: 384)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 64, elements: !752)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !979, file: !568, line: 740, baseType: !1032, size: 512)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !568, line: 365, size: 512, elements: !1033)
!1033 = !{!1034, !1035, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1032, file: !568, line: 368, baseType: !1002, size: 384)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1032, file: !568, line: 373, baseType: !653, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1032, file: !568, line: 374, baseType: !653, size: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !979, file: !568, line: 741, baseType: !1038, size: 576)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !568, line: 380, size: 576, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1038, file: !568, line: 383, baseType: !1032, size: 512)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1038, file: !568, line: 389, baseType: !1030, size: 64, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !979, file: !568, line: 742, baseType: !1043, size: 320)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !568, line: 395, size: 320, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1043, file: !568, line: 397, baseType: !982, size: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1043, file: !568, line: 400, baseType: !967, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !979, file: !568, line: 743, baseType: !1048, size: 448)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !568, line: 406, size: 448, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1048, file: !568, line: 408, baseType: !982, size: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1048, file: !568, line: 412, baseType: !653, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1048, file: !568, line: 420, baseType: !653, size: 64, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1048, file: !568, line: 423, baseType: !967, size: 64, offset: 384)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !979, file: !568, line: 744, baseType: !1055, size: 384)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !568, line: 429, size: 384, elements: !1056)
!1056 = !{!1057, !1058, !1059}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1055, file: !568, line: 431, baseType: !982, size: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1055, file: !568, line: 434, baseType: !653, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1055, file: !568, line: 437, baseType: !967, size: 64, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !979, file: !568, line: 745, baseType: !1061, size: 384)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !568, line: 443, size: 384, elements: !1062)
!1062 = !{!1063, !1064, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1061, file: !568, line: 445, baseType: !982, size: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1061, file: !568, line: 449, baseType: !653, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1061, file: !568, line: 453, baseType: !967, size: 64, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !979, file: !568, line: 746, baseType: !1067, size: 320)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !568, line: 459, size: 320, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1067, file: !568, line: 461, baseType: !982, size: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1067, file: !568, line: 464, baseType: !653, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !979, file: !568, line: 747, baseType: !1072, size: 768)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !568, line: 469, size: 768, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1072, file: !568, line: 471, baseType: !982, size: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1072, file: !568, line: 474, baseType: !7, size: 32, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1072, file: !568, line: 475, baseType: !7, size: 32, offset: 288)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1072, file: !568, line: 478, baseType: !653, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1072, file: !568, line: 481, baseType: !1079, size: 384, offset: 384)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1080, size: 384, elements: !752)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !318, line: 1917, size: 384, elements: !1081)
!1081 = !{!1082, !1083, !1084}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1080, file: !318, line: 1920, baseType: !1018, size: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1080, file: !318, line: 1921, baseType: !653, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1080, file: !318, line: 1922, baseType: !778, size: 32, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !979, file: !568, line: 748, baseType: !1086, size: 320)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !568, line: 487, size: 320, elements: !1087)
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1086, file: !568, line: 490, baseType: !982, size: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1086, file: !568, line: 494, baseType: !635, size: 32, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !979, file: !568, line: 749, baseType: !1091, size: 384)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !568, line: 500, size: 384, elements: !1092)
!1092 = !{!1093, !1094, !1095}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1091, file: !568, line: 502, baseType: !982, size: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1091, file: !568, line: 506, baseType: !967, size: 64, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1091, file: !568, line: 510, baseType: !967, size: 64, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !979, file: !568, line: 750, baseType: !1097, size: 320)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !568, line: 529, size: 320, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1097, file: !568, line: 531, baseType: !982, size: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1097, file: !568, line: 540, baseType: !967, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !979, file: !568, line: 751, baseType: !1102, size: 704)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !568, line: 546, size: 704, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1102, file: !568, line: 549, baseType: !1032, size: 512)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1102, file: !568, line: 553, baseType: !640, size: 64, offset: 512)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1102, file: !568, line: 557, baseType: !634, size: 8, offset: 576)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1102, file: !568, line: 558, baseType: !634, size: 8, offset: 584)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1102, file: !568, line: 559, baseType: !634, size: 8, offset: 592)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1102, file: !568, line: 560, baseType: !634, size: 8, offset: 600)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1102, file: !568, line: 566, baseType: !1030, size: 64, offset: 640)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !979, file: !568, line: 752, baseType: !1112, size: 384)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !568, line: 571, size: 384, elements: !1113)
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1112, file: !568, line: 573, baseType: !1043, size: 320)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1112, file: !568, line: 577, baseType: !653, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !979, file: !568, line: 753, baseType: !1117, size: 576)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !568, line: 600, size: 576, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1124, !1133}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1117, file: !568, line: 602, baseType: !1043, size: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1117, file: !568, line: 605, baseType: !653, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1117, file: !568, line: 609, baseType: !1122, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1123, line: 46, baseType: !707)
!1123 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1117, file: !568, line: 612, baseType: !1125, size: 64, offset: 448)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !568, line: 581, size: 320, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131, !1132}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1126, file: !568, line: 583, baseType: !317, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1126, file: !568, line: 586, baseType: !653, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1126, file: !568, line: 589, baseType: !653, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1126, file: !568, line: 592, baseType: !653, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1126, file: !568, line: 595, baseType: !653, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1117, file: !568, line: 616, baseType: !967, size: 64, offset: 512)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !979, file: !568, line: 754, baseType: !1135, size: 512)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !568, line: 622, size: 512, elements: !1136)
!1136 = !{!1137, !1138, !1139, !1140}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1135, file: !568, line: 624, baseType: !1043, size: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1135, file: !568, line: 628, baseType: !653, size: 64, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1135, file: !568, line: 632, baseType: !653, size: 64, offset: 384)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1135, file: !568, line: 636, baseType: !653, size: 64, offset: 448)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !979, file: !568, line: 755, baseType: !1142, size: 704)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !568, line: 642, size: 704, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1142, file: !568, line: 644, baseType: !1135, size: 512)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1142, file: !568, line: 648, baseType: !653, size: 64, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1142, file: !568, line: 652, baseType: !653, size: 64, offset: 576)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1142, file: !568, line: 653, baseType: !653, size: 64, offset: 640)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !979, file: !568, line: 756, baseType: !1149, size: 448)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !568, line: 663, size: 448, elements: !1150)
!1150 = !{!1151, !1152, !1153}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1149, file: !568, line: 665, baseType: !1043, size: 320)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1149, file: !568, line: 668, baseType: !653, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1149, file: !568, line: 673, baseType: !653, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !979, file: !568, line: 757, baseType: !1155, size: 384)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !568, line: 694, size: 384, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1155, file: !568, line: 696, baseType: !1043, size: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1155, file: !568, line: 699, baseType: !653, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !979, file: !568, line: 758, baseType: !1160, size: 384)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !568, line: 681, size: 384, elements: !1161)
!1161 = !{!1162, !1163, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1160, file: !568, line: 683, baseType: !982, size: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1160, file: !568, line: 686, baseType: !653, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1160, file: !568, line: 689, baseType: !653, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !979, file: !568, line: 759, baseType: !1166, size: 384)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !568, line: 707, size: 384, elements: !1167)
!1167 = !{!1168, !1169, !1170}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1166, file: !568, line: 709, baseType: !982, size: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1166, file: !568, line: 712, baseType: !653, size: 64, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1166, file: !568, line: 712, baseType: !653, size: 64, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !979, file: !568, line: 760, baseType: !1172, size: 320)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !568, line: 718, size: 320, elements: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1172, file: !568, line: 720, baseType: !982, size: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1172, file: !568, line: 723, baseType: !653, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !974, file: !568, line: 138, baseType: !973, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !974, file: !568, line: 139, baseType: !973, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !969, file: !568, line: 146, baseType: !972, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !969, file: !568, line: 152, baseType: !967, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !964, file: !513, line: 130, baseType: !828, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !959, file: !513, line: 134, baseType: !639, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !959, file: !513, line: 137, baseType: !653, size: 64, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !959, file: !513, line: 138, baseType: !778, size: 32, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !959, file: !513, line: 142, baseType: !7, size: 32, offset: 352)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !959, file: !513, line: 144, baseType: !635, size: 32, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !959, file: !513, line: 145, baseType: !635, size: 32, offset: 416)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !959, file: !513, line: 146, baseType: !1188, size: 64, offset: 448)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !513, line: 119, baseType: !709)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !942, file: !513, line: 220, baseType: !945, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !942, file: !513, line: 223, baseType: !639, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !942, file: !513, line: 226, baseType: !1192, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !513, line: 185, flags: DIFlagFwdDecl)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !942, file: !513, line: 229, baseType: !1195, size: 128, offset: 256)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 128, elements: !896)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !513, line: 229, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !942, file: !513, line: 232, baseType: !941, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !942, file: !513, line: 233, baseType: !941, size: 64, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !942, file: !513, line: 238, baseType: !1201, size: 64, offset: 512)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !513, line: 235, size: 64, elements: !1202)
!1202 = !{!1203, !1209}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1201, file: !513, line: 236, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !513, line: 273, size: 128, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1205, file: !513, line: 275, baseType: !967, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1205, file: !513, line: 278, baseType: !967, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1201, file: !513, line: 237, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !513, line: 259, size: 320, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1217}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1211, file: !513, line: 261, baseType: !828, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1211, file: !513, line: 262, baseType: !828, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1211, file: !513, line: 266, baseType: !828, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1211, file: !513, line: 267, baseType: !828, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1211, file: !513, line: 270, baseType: !635, size: 32, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !942, file: !513, line: 241, baseType: !1188, size: 64, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !942, file: !513, line: 244, baseType: !635, size: 32, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !942, file: !513, line: 247, baseType: !635, size: 32, offset: 672)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !942, file: !513, line: 250, baseType: !635, size: 32, offset: 704)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !942, file: !513, line: 253, baseType: !635, size: 32, offset: 736)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !942, file: !513, line: 256, baseType: !635, size: 32, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !849, file: !831, line: 179, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !831, line: 150, baseType: !1227)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !831, line: 142, size: 320, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1235, !1236}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1227, file: !831, line: 144, baseType: !653, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1227, file: !831, line: 145, baseType: !828, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1227, file: !831, line: 146, baseType: !828, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1227, file: !831, line: 147, baseType: !1233, size: 32, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1234, line: 31, baseType: !635)
!1234 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1227, file: !831, line: 148, baseType: !7, size: 32, offset: 224)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1227, file: !831, line: 149, baseType: !634, size: 8, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !849, file: !831, line: 180, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !831, line: 162, baseType: !1240)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !831, line: 159, size: 128, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1240, file: !831, line: 160, baseType: !653, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1240, file: !831, line: 161, baseType: !709, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !849, file: !831, line: 181, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !831, line: 181, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !844, file: !831, line: 317, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 64, elements: !752)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !844, file: !831, line: 318, baseType: !1250, size: 320)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !831, line: 188, size: 320, elements: !1251)
!1251 = !{!1252, !1254, !1311}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1250, file: !831, line: 190, baseType: !1253, size: 192)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, size: 192, elements: !727)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1250, file: !831, line: 193, baseType: !1255, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !831, line: 206, size: 320, elements: !1257)
!1257 = !{!1258, !1296, !1297, !1298, !1310}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1256, file: !831, line: 208, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !654, line: 62, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1262, line: 538, size: 256, elements: !1263)
!1262 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1263 = !{!1264, !1268, !1274, !1287}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1261, file: !1262, line: 539, baseType: !1265, size: 32)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1262, line: 482, size: 32, elements: !1266)
!1266 = !{!1267}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1265, file: !1262, line: 484, baseType: !7, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1261, file: !1262, line: 540, baseType: !1269, size: 192)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1262, line: 488, size: 192, elements: !1270)
!1270 = !{!1271, !1272, !1273}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1269, file: !1262, line: 489, baseType: !1265, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1269, file: !1262, line: 492, baseType: !640, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1269, file: !1262, line: 496, baseType: !653, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1261, file: !1262, line: 541, baseType: !1275, size: 256)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1262, line: 504, size: 256, elements: !1276)
!1276 = !{!1277, !1278, !1285, !1286}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1275, file: !1262, line: 505, baseType: !1265, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1275, file: !1262, line: 509, baseType: !1279, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1262, line: 501, baseType: !1280)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1275, file: !1262, line: 510, baseType: !1283, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1275, file: !1262, line: 513, baseType: !1259, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1261, file: !1262, line: 542, baseType: !1288, size: 128)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1262, line: 530, size: 128, elements: !1289)
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1288, file: !1262, line: 531, baseType: !1265, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1288, file: !1262, line: 534, baseType: !1292, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1262, line: 525, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!634, !653, !640, !707, !707}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1256, file: !831, line: 211, baseType: !7, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1256, file: !831, line: 214, baseType: !709, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1256, file: !831, line: 224, baseType: !1299, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !831, line: 202, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !831, line: 202, size: 128, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1301, file: !831, line: 202, baseType: !1304, size: 128)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !831, line: 200, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !831, line: 200, size: 128, elements: !1306)
!1306 = !{!1307, !1308, !1309}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1305, file: !831, line: 200, baseType: !7, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1305, file: !831, line: 200, baseType: !7, size: 32, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1305, file: !831, line: 200, baseType: !862, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1256, file: !831, line: 234, baseType: !1299, size: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1250, file: !831, line: 197, baseType: !709, size: 64, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !844, file: !831, line: 319, baseType: !716, size: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !844, file: !831, line: 320, baseType: !735, size: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !656, file: !318, line: 3384, baseType: !1315, size: 1472)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !318, line: 3114, size: 1472, elements: !1316)
!1316 = !{!1317, !1338, !1339, !1340, !1341}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1315, file: !318, line: 3115, baseType: !1318, size: 1216)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !318, line: 2984, size: 1216, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1318, file: !318, line: 2985, baseType: !824, size: 960)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1318, file: !318, line: 2986, baseType: !653, size: 64, offset: 960)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1318, file: !318, line: 2987, baseType: !653, size: 64, offset: 1024)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1318, file: !318, line: 2988, baseType: !653, size: 64, offset: 1088)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1318, file: !318, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1318, file: !318, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1318, file: !318, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1318, file: !318, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1318, file: !318, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1318, file: !318, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1318, file: !318, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1318, file: !318, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1318, file: !318, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1318, file: !318, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1318, file: !318, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1318, file: !318, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1318, file: !318, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1318, file: !318, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1315, file: !318, line: 3117, baseType: !653, size: 64, offset: 1216)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1315, file: !318, line: 3119, baseType: !653, size: 64, offset: 1280)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1315, file: !318, line: 3121, baseType: !653, size: 64, offset: 1344)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1315, file: !318, line: 3123, baseType: !653, size: 64, offset: 1408)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !656, file: !318, line: 3385, baseType: !1343, size: 1088)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !318, line: 2874, size: 1088, elements: !1344)
!1344 = !{!1345, !1346, !1347}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1343, file: !318, line: 2875, baseType: !824, size: 960)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1343, file: !318, line: 2876, baseType: !828, size: 64, offset: 960)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1343, file: !318, line: 2877, baseType: !642, size: 64, offset: 1024)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !656, file: !318, line: 3386, baseType: !1318, size: 1216)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !656, file: !318, line: 3387, baseType: !1350, size: 1280)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !318, line: 3093, size: 1280, elements: !1351)
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1350, file: !318, line: 3094, baseType: !1318, size: 1216)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1350, file: !318, line: 3095, baseType: !642, size: 64, offset: 1216)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !656, file: !318, line: 3388, baseType: !1355, size: 1216)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !318, line: 2824, size: 1216, elements: !1356)
!1356 = !{!1357, !1358, !1359, !1360, !1361, !1362}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1355, file: !318, line: 2825, baseType: !786, size: 896)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1355, file: !318, line: 2827, baseType: !653, size: 64, offset: 896)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1355, file: !318, line: 2828, baseType: !653, size: 64, offset: 960)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1355, file: !318, line: 2829, baseType: !653, size: 64, offset: 1024)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1355, file: !318, line: 2830, baseType: !653, size: 64, offset: 1088)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1355, file: !318, line: 2831, baseType: !653, size: 64, offset: 1152)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !656, file: !318, line: 3389, baseType: !1364, size: 1024)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !318, line: 2850, size: 1024, elements: !1365)
!1365 = !{!1366, !1367, !1368}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1364, file: !318, line: 2851, baseType: !824, size: 960)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1364, file: !318, line: 2852, baseType: !635, size: 32, offset: 960)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1364, file: !318, line: 2853, baseType: !635, size: 32, offset: 992)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !656, file: !318, line: 3390, baseType: !1370, size: 1024)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !318, line: 2857, size: 1024, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1370, file: !318, line: 2858, baseType: !824, size: 960)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1370, file: !318, line: 2859, baseType: !642, size: 64, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !656, file: !318, line: 3391, baseType: !1375, size: 960)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !318, line: 2862, size: 960, elements: !1376)
!1376 = !{!1377}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1375, file: !318, line: 2863, baseType: !824, size: 960)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !656, file: !318, line: 3392, baseType: !1379, size: 1472)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !318, line: 3304, size: 1472, elements: !1380)
!1380 = !{!1381}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1379, file: !318, line: 3305, baseType: !1315, size: 1472)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !656, file: !318, line: 3393, baseType: !1383, size: 1792)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !318, line: 3248, size: 1792, elements: !1384)
!1384 = !{!1385, !1386, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1383, file: !318, line: 3249, baseType: !1315, size: 1472)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1383, file: !318, line: 3251, baseType: !1387, size: 64, offset: 1472)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1389, line: 463, size: 1152, elements: !1390)
!1389 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1390 = !{!1391, !1394, !1425, !1426, !1539, !1542, !1543, !1544, !1545, !1546, !1547, !1571, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1388, file: !1389, line: 464, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1389, line: 464, flags: DIFlagFwdDecl)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1388, file: !1389, line: 467, baseType: !1395, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !513, line: 374, size: 640, elements: !1397)
!1397 = !{!1398, !1400, !1401, !1414, !1415, !1416, !1417, !1418, !1419, !1421, !1423, !1424}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1396, file: !513, line: 377, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !654, line: 111, baseType: !941)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1396, file: !513, line: 378, baseType: !1399, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1396, file: !513, line: 381, baseType: !1402, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !513, line: 282, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !513, line: 282, size: 128, elements: !1405)
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1404, file: !513, line: 282, baseType: !1407, size: 128)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !513, line: 281, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !513, line: 281, size: 128, elements: !1409)
!1409 = !{!1410, !1411, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1408, file: !513, line: 281, baseType: !7, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1408, file: !513, line: 281, baseType: !7, size: 32, offset: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1408, file: !513, line: 281, baseType: !1413, size: 64, offset: 64)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1399, size: 64, elements: !752)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1396, file: !513, line: 384, baseType: !635, size: 32, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1396, file: !513, line: 387, baseType: !635, size: 32, offset: 224)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1396, file: !513, line: 390, baseType: !635, size: 32, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1396, file: !513, line: 394, baseType: !1402, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1396, file: !513, line: 396, baseType: !512, size: 32, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1396, file: !513, line: 399, baseType: !1420, size: 64, offset: 416)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 64, elements: !896)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1396, file: !513, line: 402, baseType: !1422, size: 64, offset: 480)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !896)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1396, file: !513, line: 406, baseType: !635, size: 32, offset: 544)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1396, file: !513, line: 409, baseType: !635, size: 32, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1388, file: !1389, line: 470, baseType: !968, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1388, file: !1389, line: 473, baseType: !1427, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !644, line: 39, size: 1152, elements: !1429)
!1429 = !{!1430, !1478, !1491, !1503, !1504, !1516, !1517, !1521, !1522, !1523, !1524, !1525}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1428, file: !644, line: 41, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1432, line: 144, baseType: !1433)
!1432 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1432, line: 100, size: 896, elements: !1435)
!1435 = !{!1436, !1442, !1447, !1452, !1454, !1455, !1456, !1457, !1458, !1459, !1464, !1466, !1467, !1472, !1477}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1434, file: !1432, line: 102, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1432, line: 52, baseType: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!1441, !1283}
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1432, line: 47, baseType: !7)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1434, file: !1432, line: 105, baseType: !1443, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1432, line: 59, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!635, !1283, !1283}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1434, file: !1432, line: 108, baseType: !1448, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1432, line: 63, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !639}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1434, file: !1432, line: 111, baseType: !1453, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1434, file: !1432, line: 114, baseType: !1122, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1434, file: !1432, line: 117, baseType: !1122, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1434, file: !1432, line: 120, baseType: !1122, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1434, file: !1432, line: 124, baseType: !7, size: 32, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1434, file: !1432, line: 128, baseType: !7, size: 32, offset: 480)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1434, file: !1432, line: 131, baseType: !1460, size: 64, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1432, line: 75, baseType: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!639, !1122, !1122}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1434, file: !1432, line: 132, baseType: !1465, size: 64, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1432, line: 78, baseType: !1449)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1434, file: !1432, line: 135, baseType: !639, size: 64, offset: 640)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1434, file: !1432, line: 136, baseType: !1468, size: 64, offset: 704)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1432, line: 82, baseType: !1469)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!639, !639, !1122, !1122}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1434, file: !1432, line: 137, baseType: !1473, size: 64, offset: 768)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1432, line: 83, baseType: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !639, !639}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1434, file: !1432, line: 141, baseType: !7, size: 32, offset: 832)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1428, file: !644, line: 48, baseType: !1479, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !568, line: 35, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !568, line: 35, size: 128, elements: !1482)
!1482 = !{!1483}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1481, file: !568, line: 35, baseType: !1484, size: 128)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !568, line: 33, baseType: !1485)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !568, line: 33, size: 128, elements: !1486)
!1486 = !{!1487, !1488, !1489}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1485, file: !568, line: 33, baseType: !7, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1485, file: !568, line: 33, baseType: !7, size: 32, offset: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1485, file: !568, line: 33, baseType: !1490, size: 64, offset: 64)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !977, size: 64, elements: !752)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1428, file: !644, line: 51, baseType: !1492, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !318, line: 183, baseType: !1494)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !318, line: 183, size: 128, elements: !1495)
!1495 = !{!1496}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1494, file: !318, line: 183, baseType: !1497, size: 128)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !318, line: 182, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !318, line: 182, size: 128, elements: !1499)
!1499 = !{!1500, !1501, !1502}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1498, file: !318, line: 182, baseType: !7, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1498, file: !318, line: 182, baseType: !7, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1498, file: !318, line: 182, baseType: !1030, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1428, file: !644, line: 54, baseType: !653, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1428, file: !644, line: 57, baseType: !1505, size: 128, offset: 256)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1506, line: 31, size: 128, elements: !1507)
!1506 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1505, file: !1506, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1505, file: !1506, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1505, file: !1506, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1505, file: !1506, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1505, file: !1506, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1505, file: !1506, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1505, file: !1506, line: 56, baseType: !1515, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !654, line: 47, baseType: !880)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1428, file: !644, line: 60, baseType: !1505, size: 128, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1428, file: !644, line: 64, baseType: !1518, size: 64, offset: 512)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1520, line: 33, flags: DIFlagFwdDecl)
!1520 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1428, file: !644, line: 67, baseType: !653, size: 64, offset: 576)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1428, file: !644, line: 73, baseType: !1431, size: 64, offset: 640)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1428, file: !644, line: 77, baseType: !1515, size: 64, offset: 704)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1428, file: !644, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1428, file: !644, line: 82, baseType: !1526, size: 320, offset: 832)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !561, line: 62, size: 320, elements: !1527)
!1527 = !{!1528, !1534, !1535, !1536, !1537, !1538}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1526, file: !561, line: 63, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !561, line: 56, size: 128, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1530, file: !561, line: 57, baseType: !1529, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1530, file: !561, line: 58, baseType: !751, size: 8, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1526, file: !561, line: 64, baseType: !7, size: 32, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1526, file: !561, line: 66, baseType: !7, size: 32, offset: 96)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1526, file: !561, line: 68, baseType: !634, size: 8, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1526, file: !561, line: 70, baseType: !1006, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1526, file: !561, line: 71, baseType: !1013, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1388, file: !1389, line: 476, baseType: !1540, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1389, line: 476, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1388, file: !1389, line: 479, baseType: !1431, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1388, file: !1389, line: 484, baseType: !653, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1388, file: !1389, line: 488, baseType: !653, size: 64, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1388, file: !1389, line: 493, baseType: !653, size: 64, offset: 512)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1388, file: !1389, line: 496, baseType: !653, size: 64, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1388, file: !1389, line: 501, baseType: !1548, size: 64, offset: 640)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !524, line: 2355, size: 576, elements: !1550)
!1550 = !{!1551, !1554, !1555, !1556, !1557, !1559, !1560, !1565, !1566, !1567, !1568, !1569, !1570}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1549, file: !524, line: 2356, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !524, line: 2356, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1549, file: !524, line: 2357, baseType: !640, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1549, file: !524, line: 2358, baseType: !635, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1549, file: !524, line: 2359, baseType: !635, size: 32, offset: 160)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1549, file: !524, line: 2360, baseType: !1558, size: 128, offset: 192)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 128, elements: !920)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1549, file: !524, line: 2364, baseType: !635, size: 32, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1549, file: !524, line: 2367, baseType: !1561, size: 128, offset: 384)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !524, line: 2349, size: 128, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1561, file: !524, line: 2351, baseType: !828, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1561, file: !524, line: 2352, baseType: !709, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1549, file: !524, line: 2371, baseType: !523, size: 32, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1549, file: !524, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1549, file: !524, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1549, file: !524, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1549, file: !524, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1549, file: !524, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1388, file: !1389, line: 504, baseType: !1572, size: 64, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1389, line: 504, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1388, file: !1389, line: 507, baseType: !1431, size: 64, offset: 768)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1388, file: !1389, line: 510, baseType: !635, size: 32, offset: 832)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1388, file: !1389, line: 513, baseType: !635, size: 32, offset: 864)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1388, file: !1389, line: 516, baseType: !778, size: 32, offset: 896)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1388, file: !1389, line: 519, baseType: !778, size: 32, offset: 928)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1388, file: !1389, line: 522, baseType: !7, size: 32, offset: 960)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1388, file: !1389, line: 523, baseType: !7, size: 32, offset: 992)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1388, file: !1389, line: 528, baseType: !640, size: 64, offset: 1024)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1388, file: !1389, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1388, file: !1389, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1388, file: !1389, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1388, file: !1389, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1388, file: !1389, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1388, file: !1389, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1388, file: !1389, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1388, file: !1389, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1388, file: !1389, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1388, file: !1389, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1388, file: !1389, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1388, file: !1389, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1388, file: !1389, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1388, file: !1389, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1388, file: !1389, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1388, file: !1389, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1383, file: !318, line: 3254, baseType: !653, size: 64, offset: 1536)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1383, file: !318, line: 3257, baseType: !653, size: 64, offset: 1600)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1383, file: !318, line: 3258, baseType: !653, size: 64, offset: 1664)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1383, file: !318, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1383, file: !318, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1383, file: !318, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1383, file: !318, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1383, file: !318, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1383, file: !318, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1383, file: !318, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1383, file: !318, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1383, file: !318, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1383, file: !318, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1383, file: !318, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1383, file: !318, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1383, file: !318, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1383, file: !318, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1383, file: !318, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1383, file: !318, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1383, file: !318, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1383, file: !318, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !318, line: 3394, baseType: !1620, size: 1344)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !318, line: 2279, size: 1344, elements: !1621)
!1621 = !{!1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1620, file: !318, line: 2280, baseType: !692, size: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1620, file: !318, line: 2281, baseType: !653, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1620, file: !318, line: 2282, baseType: !653, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1620, file: !318, line: 2283, baseType: !653, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1620, file: !318, line: 2284, baseType: !653, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1620, file: !318, line: 2285, baseType: !7, size: 32, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1620, file: !318, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1620, file: !318, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1620, file: !318, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1620, file: !318, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1620, file: !318, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1620, file: !318, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1620, file: !318, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1620, file: !318, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1620, file: !318, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1620, file: !318, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1620, file: !318, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1620, file: !318, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1620, file: !318, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1620, file: !318, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1620, file: !318, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1620, file: !318, line: 2305, baseType: !7, size: 32, offset: 512)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1620, file: !318, line: 2306, baseType: !1233, size: 32, offset: 544)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1620, file: !318, line: 2307, baseType: !653, size: 64, offset: 576)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1620, file: !318, line: 2308, baseType: !653, size: 64, offset: 640)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1620, file: !318, line: 2314, baseType: !1648, size: 64, offset: 704)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !318, line: 2309, size: 64, elements: !1649)
!1649 = !{!1650, !1651, !1652}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1648, file: !318, line: 2310, baseType: !635, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1648, file: !318, line: 2311, baseType: !640, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1648, file: !318, line: 2312, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !318, line: 2277, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1620, file: !318, line: 2315, baseType: !653, size: 64, offset: 768)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1620, file: !318, line: 2316, baseType: !653, size: 64, offset: 832)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1620, file: !318, line: 2317, baseType: !653, size: 64, offset: 896)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1620, file: !318, line: 2318, baseType: !653, size: 64, offset: 960)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1620, file: !318, line: 2319, baseType: !653, size: 64, offset: 1024)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1620, file: !318, line: 2320, baseType: !653, size: 64, offset: 1088)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1620, file: !318, line: 2321, baseType: !653, size: 64, offset: 1152)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1620, file: !318, line: 2322, baseType: !653, size: 64, offset: 1216)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1620, file: !318, line: 2324, baseType: !1664, size: 64, offset: 1280)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !318, line: 2324, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !656, file: !318, line: 3395, baseType: !1667, size: 320)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !318, line: 1469, size: 320, elements: !1668)
!1668 = !{!1669, !1670, !1671}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1667, file: !318, line: 1470, baseType: !692, size: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1667, file: !318, line: 1471, baseType: !653, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1667, file: !318, line: 1472, baseType: !653, size: 64, offset: 256)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !656, file: !318, line: 3396, baseType: !1673, size: 320)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !318, line: 1482, size: 320, elements: !1674)
!1674 = !{!1675, !1676, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1673, file: !318, line: 1483, baseType: !692, size: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1673, file: !318, line: 1484, baseType: !635, size: 32, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1673, file: !318, line: 1485, baseType: !1030, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !656, file: !318, line: 3397, baseType: !1679, size: 384)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !318, line: 1829, size: 384, elements: !1680)
!1680 = !{!1681, !1682, !1683, !1684}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1679, file: !318, line: 1830, baseType: !692, size: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1679, file: !318, line: 1831, baseType: !778, size: 32, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1679, file: !318, line: 1832, baseType: !653, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1679, file: !318, line: 1835, baseType: !1030, size: 64, offset: 320)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !656, file: !318, line: 3398, baseType: !1686, size: 704)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !318, line: 1898, size: 704, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1697}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1686, file: !318, line: 1899, baseType: !692, size: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1686, file: !318, line: 1902, baseType: !653, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1686, file: !318, line: 1905, baseType: !977, size: 64, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1686, file: !318, line: 1908, baseType: !7, size: 32, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1686, file: !318, line: 1911, baseType: !1693, size: 64, offset: 384)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !644, line: 117, size: 128, elements: !1695)
!1695 = !{!1696}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1694, file: !644, line: 120, baseType: !1505, size: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1686, file: !318, line: 1914, baseType: !1018, size: 256, offset: 448)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !656, file: !318, line: 3399, baseType: !1699, size: 704)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !318, line: 2008, size: 704, elements: !1700)
!1700 = !{!1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1699, file: !318, line: 2009, baseType: !692, size: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1699, file: !318, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1699, file: !318, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1699, file: !318, line: 2014, baseType: !778, size: 32, offset: 224)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1699, file: !318, line: 2016, baseType: !653, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1699, file: !318, line: 2017, baseType: !1492, size: 64, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1699, file: !318, line: 2019, baseType: !653, size: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1699, file: !318, line: 2020, baseType: !653, size: 64, offset: 448)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1699, file: !318, line: 2021, baseType: !653, size: 64, offset: 512)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1699, file: !318, line: 2022, baseType: !653, size: 64, offset: 576)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1699, file: !318, line: 2023, baseType: !653, size: 64, offset: 640)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !656, file: !318, line: 3400, baseType: !1713, size: 832)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !318, line: 2430, size: 832, elements: !1714)
!1714 = !{!1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1713, file: !318, line: 2431, baseType: !692, size: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1713, file: !318, line: 2433, baseType: !653, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1713, file: !318, line: 2434, baseType: !653, size: 64, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1713, file: !318, line: 2435, baseType: !653, size: 64, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1713, file: !318, line: 2436, baseType: !653, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1713, file: !318, line: 2437, baseType: !1492, size: 64, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1713, file: !318, line: 2438, baseType: !653, size: 64, offset: 512)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1713, file: !318, line: 2440, baseType: !653, size: 64, offset: 576)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1713, file: !318, line: 2441, baseType: !653, size: 64, offset: 640)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1713, file: !318, line: 2443, baseType: !1725, size: 128, offset: 704)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !318, line: 182, baseType: !1726)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !318, line: 182, size: 128, elements: !1727)
!1727 = !{!1728}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1726, file: !318, line: 182, baseType: !1497, size: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !656, file: !318, line: 3401, baseType: !1730, size: 320)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !318, line: 3327, size: 320, elements: !1731)
!1731 = !{!1732, !1733, !1740}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1730, file: !318, line: 3329, baseType: !692, size: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1730, file: !318, line: 3330, baseType: !1734, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !318, line: 3320, size: 192, elements: !1736)
!1736 = !{!1737, !1738, !1739}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1735, file: !318, line: 3322, baseType: !1734, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1735, file: !318, line: 3323, baseType: !1734, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1735, file: !318, line: 3324, baseType: !653, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1730, file: !318, line: 3331, baseType: !1734, size: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !656, file: !318, line: 3402, baseType: !1742, size: 256)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !318, line: 1540, size: 256, elements: !1743)
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1742, file: !318, line: 1541, baseType: !692, size: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1742, file: !318, line: 1542, baseType: !1746, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !318, line: 1538, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !318, line: 1538, size: 192, elements: !1749)
!1749 = !{!1750}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1748, file: !318, line: 1538, baseType: !1751, size: 192)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !318, line: 1537, baseType: !1752)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !318, line: 1537, size: 192, elements: !1753)
!1753 = !{!1754, !1755, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1752, file: !318, line: 1537, baseType: !7, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1752, file: !318, line: 1537, baseType: !7, size: 32, offset: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1752, file: !318, line: 1537, baseType: !1757, size: 128, offset: 64)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1758, size: 128, elements: !752)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !318, line: 1535, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !318, line: 1532, size: 128, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1759, file: !318, line: 1533, baseType: !653, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1759, file: !318, line: 1534, baseType: !653, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !656, file: !318, line: 3403, baseType: !1764, size: 512)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !318, line: 1938, size: 512, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1775, !1776, !1777}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1764, file: !318, line: 1939, baseType: !692, size: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1764, file: !318, line: 1940, baseType: !778, size: 32, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1764, file: !318, line: 1941, baseType: !528, size: 32, offset: 224)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1764, file: !318, line: 1946, baseType: !1770, size: 32, offset: 256)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !318, line: 1942, size: 32, elements: !1771)
!1771 = !{!1772, !1773, !1774}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1770, file: !318, line: 1943, baseType: !546, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1770, file: !318, line: 1944, baseType: !553, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1770, file: !318, line: 1945, baseType: !317, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1764, file: !318, line: 1950, baseType: !967, size: 64, offset: 320)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1764, file: !318, line: 1951, baseType: !967, size: 64, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1764, file: !318, line: 1953, baseType: !1030, size: 64, offset: 448)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !656, file: !318, line: 3404, baseType: !1779, size: 1664)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !318, line: 3337, size: 1664, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1779, file: !318, line: 3338, baseType: !692, size: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1779, file: !318, line: 3341, baseType: !1783, size: 1472, offset: 192)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1784, line: 410, size: 1472, elements: !1785)
!1784 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1785 = !{!1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1783, file: !1784, line: 412, baseType: !635, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1783, file: !1784, line: 413, baseType: !635, size: 32, offset: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1783, file: !1784, line: 414, baseType: !635, size: 32, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1783, file: !1784, line: 415, baseType: !635, size: 32, offset: 96)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1783, file: !1784, line: 416, baseType: !635, size: 32, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1783, file: !1784, line: 417, baseType: !635, size: 32, offset: 160)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1783, file: !1784, line: 418, baseType: !634, size: 8, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1783, file: !1784, line: 419, baseType: !634, size: 8, offset: 200)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1783, file: !1784, line: 420, baseType: !1795, size: 8, offset: 208)
!1795 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1783, file: !1784, line: 421, baseType: !1795, size: 8, offset: 216)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1783, file: !1784, line: 422, baseType: !1795, size: 8, offset: 224)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1783, file: !1784, line: 423, baseType: !1795, size: 8, offset: 232)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1783, file: !1784, line: 424, baseType: !1795, size: 8, offset: 240)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1783, file: !1784, line: 425, baseType: !1795, size: 8, offset: 248)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1783, file: !1784, line: 426, baseType: !1795, size: 8, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1783, file: !1784, line: 427, baseType: !1795, size: 8, offset: 264)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1783, file: !1784, line: 428, baseType: !1795, size: 8, offset: 272)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1783, file: !1784, line: 429, baseType: !1795, size: 8, offset: 280)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1783, file: !1784, line: 430, baseType: !1795, size: 8, offset: 288)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1783, file: !1784, line: 431, baseType: !1795, size: 8, offset: 296)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1783, file: !1784, line: 432, baseType: !1795, size: 8, offset: 304)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1783, file: !1784, line: 433, baseType: !1795, size: 8, offset: 312)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1783, file: !1784, line: 434, baseType: !1795, size: 8, offset: 320)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1783, file: !1784, line: 435, baseType: !1795, size: 8, offset: 328)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1783, file: !1784, line: 436, baseType: !1795, size: 8, offset: 336)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1783, file: !1784, line: 437, baseType: !1795, size: 8, offset: 344)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1783, file: !1784, line: 438, baseType: !1795, size: 8, offset: 352)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1783, file: !1784, line: 439, baseType: !1795, size: 8, offset: 360)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1783, file: !1784, line: 440, baseType: !1795, size: 8, offset: 368)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1783, file: !1784, line: 441, baseType: !1795, size: 8, offset: 376)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1783, file: !1784, line: 442, baseType: !1795, size: 8, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1783, file: !1784, line: 443, baseType: !1795, size: 8, offset: 392)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1783, file: !1784, line: 444, baseType: !1795, size: 8, offset: 400)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1783, file: !1784, line: 445, baseType: !1795, size: 8, offset: 408)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1783, file: !1784, line: 446, baseType: !1795, size: 8, offset: 416)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1783, file: !1784, line: 447, baseType: !1795, size: 8, offset: 424)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1783, file: !1784, line: 448, baseType: !1795, size: 8, offset: 432)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1783, file: !1784, line: 449, baseType: !1795, size: 8, offset: 440)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1783, file: !1784, line: 450, baseType: !1795, size: 8, offset: 448)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1783, file: !1784, line: 451, baseType: !1795, size: 8, offset: 456)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1783, file: !1784, line: 452, baseType: !1795, size: 8, offset: 464)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1783, file: !1784, line: 453, baseType: !1795, size: 8, offset: 472)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1783, file: !1784, line: 454, baseType: !1795, size: 8, offset: 480)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1783, file: !1784, line: 455, baseType: !1795, size: 8, offset: 488)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1783, file: !1784, line: 456, baseType: !1795, size: 8, offset: 496)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1783, file: !1784, line: 457, baseType: !1795, size: 8, offset: 504)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1783, file: !1784, line: 458, baseType: !1795, size: 8, offset: 512)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1783, file: !1784, line: 459, baseType: !1795, size: 8, offset: 520)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1783, file: !1784, line: 460, baseType: !1795, size: 8, offset: 528)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1783, file: !1784, line: 461, baseType: !1795, size: 8, offset: 536)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1783, file: !1784, line: 462, baseType: !1795, size: 8, offset: 544)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1783, file: !1784, line: 463, baseType: !1795, size: 8, offset: 552)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1783, file: !1784, line: 464, baseType: !1795, size: 8, offset: 560)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1783, file: !1784, line: 465, baseType: !1795, size: 8, offset: 568)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1783, file: !1784, line: 466, baseType: !1795, size: 8, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1783, file: !1784, line: 467, baseType: !1795, size: 8, offset: 584)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1783, file: !1784, line: 468, baseType: !1795, size: 8, offset: 592)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1783, file: !1784, line: 469, baseType: !1795, size: 8, offset: 600)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1783, file: !1784, line: 470, baseType: !1795, size: 8, offset: 608)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1783, file: !1784, line: 471, baseType: !1795, size: 8, offset: 616)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1783, file: !1784, line: 472, baseType: !1795, size: 8, offset: 624)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1783, file: !1784, line: 473, baseType: !1795, size: 8, offset: 632)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1783, file: !1784, line: 474, baseType: !1795, size: 8, offset: 640)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1783, file: !1784, line: 475, baseType: !1795, size: 8, offset: 648)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1783, file: !1784, line: 476, baseType: !1795, size: 8, offset: 656)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1783, file: !1784, line: 477, baseType: !1795, size: 8, offset: 664)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1783, file: !1784, line: 478, baseType: !1795, size: 8, offset: 672)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1783, file: !1784, line: 479, baseType: !1795, size: 8, offset: 680)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1783, file: !1784, line: 480, baseType: !1795, size: 8, offset: 688)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1783, file: !1784, line: 481, baseType: !1795, size: 8, offset: 696)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1783, file: !1784, line: 482, baseType: !1795, size: 8, offset: 704)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1783, file: !1784, line: 483, baseType: !1795, size: 8, offset: 712)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1783, file: !1784, line: 484, baseType: !1795, size: 8, offset: 720)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1783, file: !1784, line: 485, baseType: !1795, size: 8, offset: 728)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1783, file: !1784, line: 486, baseType: !1795, size: 8, offset: 736)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1783, file: !1784, line: 487, baseType: !1795, size: 8, offset: 744)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1783, file: !1784, line: 488, baseType: !1795, size: 8, offset: 752)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1783, file: !1784, line: 489, baseType: !1795, size: 8, offset: 760)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1783, file: !1784, line: 490, baseType: !1795, size: 8, offset: 768)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1783, file: !1784, line: 491, baseType: !1795, size: 8, offset: 776)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1783, file: !1784, line: 492, baseType: !1795, size: 8, offset: 784)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1783, file: !1784, line: 493, baseType: !1795, size: 8, offset: 792)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1783, file: !1784, line: 494, baseType: !1795, size: 8, offset: 800)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1783, file: !1784, line: 495, baseType: !1795, size: 8, offset: 808)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1783, file: !1784, line: 496, baseType: !1795, size: 8, offset: 816)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1783, file: !1784, line: 497, baseType: !1795, size: 8, offset: 824)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1783, file: !1784, line: 498, baseType: !1795, size: 8, offset: 832)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1783, file: !1784, line: 499, baseType: !1795, size: 8, offset: 840)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1783, file: !1784, line: 500, baseType: !1795, size: 8, offset: 848)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1783, file: !1784, line: 501, baseType: !1795, size: 8, offset: 856)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1783, file: !1784, line: 502, baseType: !1795, size: 8, offset: 864)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1783, file: !1784, line: 503, baseType: !1795, size: 8, offset: 872)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1783, file: !1784, line: 504, baseType: !1795, size: 8, offset: 880)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1783, file: !1784, line: 505, baseType: !1795, size: 8, offset: 888)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1783, file: !1784, line: 506, baseType: !1795, size: 8, offset: 896)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1783, file: !1784, line: 507, baseType: !1795, size: 8, offset: 904)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1783, file: !1784, line: 508, baseType: !1795, size: 8, offset: 912)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1783, file: !1784, line: 509, baseType: !1795, size: 8, offset: 920)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1783, file: !1784, line: 510, baseType: !1795, size: 8, offset: 928)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1783, file: !1784, line: 511, baseType: !1795, size: 8, offset: 936)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1783, file: !1784, line: 512, baseType: !1795, size: 8, offset: 944)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1783, file: !1784, line: 513, baseType: !1795, size: 8, offset: 952)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1783, file: !1784, line: 514, baseType: !1795, size: 8, offset: 960)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1783, file: !1784, line: 515, baseType: !1795, size: 8, offset: 968)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1783, file: !1784, line: 516, baseType: !1795, size: 8, offset: 976)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1783, file: !1784, line: 517, baseType: !1795, size: 8, offset: 984)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1783, file: !1784, line: 518, baseType: !1795, size: 8, offset: 992)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1783, file: !1784, line: 519, baseType: !1795, size: 8, offset: 1000)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1783, file: !1784, line: 520, baseType: !1795, size: 8, offset: 1008)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1783, file: !1784, line: 521, baseType: !1795, size: 8, offset: 1016)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1783, file: !1784, line: 522, baseType: !1795, size: 8, offset: 1024)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1783, file: !1784, line: 523, baseType: !1795, size: 8, offset: 1032)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1783, file: !1784, line: 524, baseType: !1795, size: 8, offset: 1040)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1783, file: !1784, line: 525, baseType: !1795, size: 8, offset: 1048)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1783, file: !1784, line: 526, baseType: !1795, size: 8, offset: 1056)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1783, file: !1784, line: 527, baseType: !1795, size: 8, offset: 1064)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1783, file: !1784, line: 528, baseType: !1795, size: 8, offset: 1072)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1783, file: !1784, line: 529, baseType: !1795, size: 8, offset: 1080)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1783, file: !1784, line: 530, baseType: !1795, size: 8, offset: 1088)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1783, file: !1784, line: 531, baseType: !1795, size: 8, offset: 1096)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1783, file: !1784, line: 532, baseType: !1795, size: 8, offset: 1104)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1783, file: !1784, line: 533, baseType: !1795, size: 8, offset: 1112)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1783, file: !1784, line: 534, baseType: !1795, size: 8, offset: 1120)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1783, file: !1784, line: 535, baseType: !1795, size: 8, offset: 1128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1783, file: !1784, line: 536, baseType: !1795, size: 8, offset: 1136)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1783, file: !1784, line: 537, baseType: !1795, size: 8, offset: 1144)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1783, file: !1784, line: 538, baseType: !1795, size: 8, offset: 1152)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1783, file: !1784, line: 539, baseType: !1795, size: 8, offset: 1160)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1783, file: !1784, line: 540, baseType: !1795, size: 8, offset: 1168)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1783, file: !1784, line: 541, baseType: !1795, size: 8, offset: 1176)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1783, file: !1784, line: 542, baseType: !1795, size: 8, offset: 1184)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1783, file: !1784, line: 543, baseType: !1795, size: 8, offset: 1192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1783, file: !1784, line: 544, baseType: !1795, size: 8, offset: 1200)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1783, file: !1784, line: 545, baseType: !1795, size: 8, offset: 1208)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1783, file: !1784, line: 546, baseType: !1795, size: 8, offset: 1216)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1783, file: !1784, line: 547, baseType: !1795, size: 8, offset: 1224)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1783, file: !1784, line: 548, baseType: !1795, size: 8, offset: 1232)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1783, file: !1784, line: 549, baseType: !1795, size: 8, offset: 1240)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1783, file: !1784, line: 550, baseType: !1795, size: 8, offset: 1248)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1783, file: !1784, line: 551, baseType: !1795, size: 8, offset: 1256)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1783, file: !1784, line: 552, baseType: !1795, size: 8, offset: 1264)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1783, file: !1784, line: 553, baseType: !1795, size: 8, offset: 1272)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1783, file: !1784, line: 554, baseType: !1795, size: 8, offset: 1280)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1783, file: !1784, line: 555, baseType: !1795, size: 8, offset: 1288)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1783, file: !1784, line: 556, baseType: !1795, size: 8, offset: 1296)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1783, file: !1784, line: 557, baseType: !1795, size: 8, offset: 1304)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1783, file: !1784, line: 558, baseType: !1795, size: 8, offset: 1312)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1783, file: !1784, line: 559, baseType: !1795, size: 8, offset: 1320)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1783, file: !1784, line: 560, baseType: !1795, size: 8, offset: 1328)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1783, file: !1784, line: 561, baseType: !1795, size: 8, offset: 1336)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1783, file: !1784, line: 562, baseType: !1795, size: 8, offset: 1344)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1783, file: !1784, line: 563, baseType: !1795, size: 8, offset: 1352)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1783, file: !1784, line: 564, baseType: !1795, size: 8, offset: 1360)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1783, file: !1784, line: 565, baseType: !1795, size: 8, offset: 1368)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1783, file: !1784, line: 566, baseType: !1795, size: 8, offset: 1376)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1783, file: !1784, line: 567, baseType: !1795, size: 8, offset: 1384)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1783, file: !1784, line: 568, baseType: !1795, size: 8, offset: 1392)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1783, file: !1784, line: 569, baseType: !1795, size: 8, offset: 1400)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1783, file: !1784, line: 570, baseType: !1795, size: 8, offset: 1408)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1783, file: !1784, line: 571, baseType: !1795, size: 8, offset: 1416)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1783, file: !1784, line: 572, baseType: !1795, size: 8, offset: 1424)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1783, file: !1784, line: 573, baseType: !1795, size: 8, offset: 1432)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1783, file: !1784, line: 574, baseType: !1795, size: 8, offset: 1440)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !656, file: !318, line: 3405, baseType: !1951, size: 384)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !318, line: 3352, size: 384, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1951, file: !318, line: 3353, baseType: !692, size: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1951, file: !318, line: 3356, baseType: !1955, size: 192, offset: 192)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1784, line: 578, size: 192, elements: !1956)
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1955, file: !1784, line: 580, baseType: !635, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1955, file: !1784, line: 581, baseType: !635, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1955, file: !1784, line: 582, baseType: !635, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1955, file: !1784, line: 583, baseType: !635, size: 32, offset: 96)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1955, file: !1784, line: 584, baseType: !634, size: 8, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1955, file: !1784, line: 585, baseType: !634, size: 8, offset: 136)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1955, file: !1784, line: 586, baseType: !634, size: 8, offset: 144)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1955, file: !1784, line: 587, baseType: !634, size: 8, offset: 152)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1955, file: !1784, line: 588, baseType: !634, size: 8, offset: 160)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1955, file: !1784, line: 589, baseType: !634, size: 8, offset: 168)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1955, file: !1784, line: 590, baseType: !634, size: 8, offset: 176)
!1968 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!1971 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !561, line: 30, baseType: !1975)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !318, line: 1893, baseType: !1018)
!1977 = !{!0}
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !1979)
!1979 = !{!1980}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1978, file: !6, line: 158, baseType: !1981, size: 640)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1989, !1993, !1995, !1996, !1997, !1999, !2000, !2001, !2002, !2003}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1981, file: !6, line: 117, baseType: !5, size: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1981, file: !6, line: 121, baseType: !640, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1981, file: !6, line: 125, baseType: !1986, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!634}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1981, file: !6, line: 130, baseType: !1990, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!7}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1981, file: !6, line: 133, baseType: !1994, size: 64, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1981, file: !6, line: 136, baseType: !1994, size: 64, offset: 320)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1981, file: !6, line: 139, baseType: !635, size: 32, offset: 384)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1981, file: !6, line: 143, baseType: !1998, size: 32, offset: 416)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1981, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1981, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1981, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1981, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1981, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2004 = !{i32 2, !"Dwarf Version", i32 4}
!2005 = !{i32 2, !"Debug Info Version", i32 3}
!2006 = !{i32 1, !"wchar_size", i32 4}
!2007 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2008 = distinct !DISubprogram(name: "vprintf", scope: !2009, file: !2009, line: 39, type: !2010, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2020)
!2009 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!635, !2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !640)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2015)
!2015 = !{!2016, !2017, !2018, !2019}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2014, file: !3, baseType: !7, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2014, file: !3, baseType: !7, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2014, file: !3, baseType: !639, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2014, file: !3, baseType: !639, size: 64, offset: 128)
!2020 = !{!2021, !2022}
!2021 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2008, file: !2009, line: 39, type: !2012)
!2022 = !DILocalVariable(name: "__arg", arg: 2, scope: !2008, file: !2009, line: 39, type: !2013)
!2023 = !DILocation(line: 0, scope: !2008)
!2024 = !DILocation(line: 41, column: 20, scope: !2008)
!2025 = !DILocation(line: 41, column: 10, scope: !2008)
!2026 = !DILocation(line: 41, column: 3, scope: !2008)
!2027 = distinct !DISubprogram(name: "getchar", scope: !2009, file: !2009, line: 47, type: !2028, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!635}
!2030 = !{}
!2031 = !DILocation(line: 49, column: 16, scope: !2027)
!2032 = !DILocation(line: 49, column: 10, scope: !2027)
!2033 = !DILocation(line: 49, column: 3, scope: !2027)
!2034 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2009, file: !2009, line: 56, type: !2035, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2087)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!635, !2037}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2039, line: 7, baseType: !2040)
!2039 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2041, line: 49, size: 1728, elements: !2042)
!2041 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2042 = !{!2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2058, !2060, !2061, !2062, !2065, !2066, !2067, !2068, !2071, !2073, !2076, !2079, !2080, !2081, !2082, !2083}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2040, file: !2041, line: 51, baseType: !635, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2040, file: !2041, line: 54, baseType: !637, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2040, file: !2041, line: 55, baseType: !637, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2040, file: !2041, line: 56, baseType: !637, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2040, file: !2041, line: 57, baseType: !637, size: 64, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2040, file: !2041, line: 58, baseType: !637, size: 64, offset: 320)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2040, file: !2041, line: 59, baseType: !637, size: 64, offset: 384)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2040, file: !2041, line: 60, baseType: !637, size: 64, offset: 448)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2040, file: !2041, line: 61, baseType: !637, size: 64, offset: 512)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2040, file: !2041, line: 64, baseType: !637, size: 64, offset: 576)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2040, file: !2041, line: 65, baseType: !637, size: 64, offset: 640)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2040, file: !2041, line: 66, baseType: !637, size: 64, offset: 704)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2040, file: !2041, line: 68, baseType: !2056, size: 64, offset: 768)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2041, line: 36, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2040, file: !2041, line: 70, baseType: !2059, size: 64, offset: 832)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2040, file: !2041, line: 72, baseType: !635, size: 32, offset: 896)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2040, file: !2041, line: 73, baseType: !635, size: 32, offset: 928)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2040, file: !2041, line: 74, baseType: !2063, size: 64, offset: 960)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2064, line: 152, baseType: !709)
!2064 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2040, file: !2041, line: 77, baseType: !1971, size: 16, offset: 1024)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2040, file: !2041, line: 78, baseType: !1795, size: 8, offset: 1040)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2040, file: !2041, line: 79, baseType: !751, size: 8, offset: 1048)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2040, file: !2041, line: 81, baseType: !2069, size: 64, offset: 1088)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2041, line: 43, baseType: null)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2040, file: !2041, line: 89, baseType: !2072, size: 64, offset: 1152)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2064, line: 153, baseType: !709)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2040, file: !2041, line: 91, baseType: !2074, size: 64, offset: 1216)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2041, line: 37, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2040, file: !2041, line: 92, baseType: !2077, size: 64, offset: 1280)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2041, line: 38, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2040, file: !2041, line: 93, baseType: !2059, size: 64, offset: 1344)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2040, file: !2041, line: 94, baseType: !639, size: 64, offset: 1408)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2040, file: !2041, line: 95, baseType: !1122, size: 64, offset: 1472)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2040, file: !2041, line: 96, baseType: !635, size: 32, offset: 1536)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2040, file: !2041, line: 98, baseType: !2084, size: 160, offset: 1568)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 160, elements: !2085)
!2085 = !{!2086}
!2086 = !DISubrange(count: 20)
!2087 = !{!2088}
!2088 = !DILocalVariable(name: "__fp", arg: 1, scope: !2034, file: !2009, line: 56, type: !2037)
!2089 = !DILocation(line: 0, scope: !2034)
!2090 = !DILocation(line: 58, column: 10, scope: !2034)
!2091 = !DILocation(line: 58, column: 3, scope: !2034)
!2092 = distinct !DISubprogram(name: "getc_unlocked", scope: !2009, file: !2009, line: 66, type: !2035, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2093)
!2093 = !{!2094}
!2094 = !DILocalVariable(name: "__fp", arg: 1, scope: !2092, file: !2009, line: 66, type: !2037)
!2095 = !DILocation(line: 0, scope: !2092)
!2096 = !DILocation(line: 68, column: 10, scope: !2092)
!2097 = !DILocation(line: 68, column: 3, scope: !2092)
!2098 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2009, file: !2009, line: 73, type: !2028, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!2099 = !DILocation(line: 75, column: 10, scope: !2098)
!2100 = !DILocation(line: 75, column: 3, scope: !2098)
!2101 = distinct !DISubprogram(name: "putchar", scope: !2009, file: !2009, line: 82, type: !2102, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!635, !635}
!2104 = !{!2105}
!2105 = !DILocalVariable(name: "__c", arg: 1, scope: !2101, file: !2009, line: 82, type: !635)
!2106 = !DILocation(line: 0, scope: !2101)
!2107 = !DILocation(line: 84, column: 21, scope: !2101)
!2108 = !DILocation(line: 84, column: 10, scope: !2101)
!2109 = !DILocation(line: 84, column: 3, scope: !2101)
!2110 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2009, file: !2009, line: 91, type: !2111, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!635, !635, !2037}
!2113 = !{!2114, !2115}
!2114 = !DILocalVariable(name: "__c", arg: 1, scope: !2110, file: !2009, line: 91, type: !635)
!2115 = !DILocalVariable(name: "__stream", arg: 2, scope: !2110, file: !2009, line: 91, type: !2037)
!2116 = !DILocation(line: 0, scope: !2110)
!2117 = !DILocation(line: 93, column: 10, scope: !2110)
!2118 = !DILocation(line: 93, column: 3, scope: !2110)
!2119 = distinct !DISubprogram(name: "putc_unlocked", scope: !2009, file: !2009, line: 101, type: !2111, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2120)
!2120 = !{!2121, !2122}
!2121 = !DILocalVariable(name: "__c", arg: 1, scope: !2119, file: !2009, line: 101, type: !635)
!2122 = !DILocalVariable(name: "__stream", arg: 2, scope: !2119, file: !2009, line: 101, type: !2037)
!2123 = !DILocation(line: 0, scope: !2119)
!2124 = !DILocation(line: 103, column: 10, scope: !2119)
!2125 = !DILocation(line: 103, column: 3, scope: !2119)
!2126 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2009, file: !2009, line: 108, type: !2102, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2127)
!2127 = !{!2128}
!2128 = !DILocalVariable(name: "__c", arg: 1, scope: !2126, file: !2009, line: 108, type: !635)
!2129 = !DILocation(line: 0, scope: !2126)
!2130 = !DILocation(line: 110, column: 10, scope: !2126)
!2131 = !DILocation(line: 110, column: 3, scope: !2126)
!2132 = distinct !DISubprogram(name: "getline", scope: !2009, file: !2009, line: 118, type: !2133, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!2135, !636, !2136, !2037}
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2064, line: 193, baseType: !709)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!2137 = !{!2138, !2139, !2140}
!2138 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2132, file: !2009, line: 118, type: !636)
!2139 = !DILocalVariable(name: "__n", arg: 2, scope: !2132, file: !2009, line: 118, type: !2136)
!2140 = !DILocalVariable(name: "__stream", arg: 3, scope: !2132, file: !2009, line: 118, type: !2037)
!2141 = !DILocation(line: 0, scope: !2132)
!2142 = !DILocation(line: 120, column: 10, scope: !2132)
!2143 = !DILocation(line: 120, column: 3, scope: !2132)
!2144 = distinct !DISubprogram(name: "feof_unlocked", scope: !2009, file: !2009, line: 128, type: !2035, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2145)
!2145 = !{!2146}
!2146 = !DILocalVariable(name: "__stream", arg: 1, scope: !2144, file: !2009, line: 128, type: !2037)
!2147 = !DILocation(line: 0, scope: !2144)
!2148 = !DILocation(line: 130, column: 10, scope: !2144)
!2149 = !DILocation(line: 130, column: 3, scope: !2144)
!2150 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2009, file: !2009, line: 135, type: !2035, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2151)
!2151 = !{!2152}
!2152 = !DILocalVariable(name: "__stream", arg: 1, scope: !2150, file: !2009, line: 135, type: !2037)
!2153 = !DILocation(line: 0, scope: !2150)
!2154 = !DILocation(line: 137, column: 10, scope: !2150)
!2155 = !DILocation(line: 137, column: 3, scope: !2150)
!2156 = distinct !DISubprogram(name: "tolower", scope: !2157, file: !2157, line: 207, type: !2102, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2158)
!2157 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2158 = !{!2159}
!2159 = !DILocalVariable(name: "__c", arg: 1, scope: !2156, file: !2157, line: 207, type: !635)
!2160 = !DILocation(line: 0, scope: !2156)
!2161 = !DILocation(line: 209, column: 22, scope: !2156)
!2162 = !DILocation(line: 209, column: 39, scope: !2156)
!2163 = !DILocation(line: 209, column: 38, scope: !2156)
!2164 = !DILocation(line: 209, column: 37, scope: !2156)
!2165 = !DILocation(line: 209, column: 10, scope: !2156)
!2166 = !DILocation(line: 209, column: 3, scope: !2156)
!2167 = distinct !DISubprogram(name: "toupper", scope: !2157, file: !2157, line: 213, type: !2102, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2168)
!2168 = !{!2169}
!2169 = !DILocalVariable(name: "__c", arg: 1, scope: !2167, file: !2157, line: 213, type: !635)
!2170 = !DILocation(line: 0, scope: !2167)
!2171 = !DILocation(line: 215, column: 22, scope: !2167)
!2172 = !DILocation(line: 215, column: 39, scope: !2167)
!2173 = !DILocation(line: 215, column: 38, scope: !2167)
!2174 = !DILocation(line: 215, column: 37, scope: !2167)
!2175 = !DILocation(line: 215, column: 10, scope: !2167)
!2176 = !DILocation(line: 215, column: 3, scope: !2167)
!2177 = distinct !DISubprogram(name: "atoi", scope: !2178, file: !2178, line: 361, type: !2179, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2181)
!2178 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!635, !640}
!2181 = !{!2182}
!2182 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2177, file: !2178, line: 361, type: !640)
!2183 = !DILocation(line: 0, scope: !2177)
!2184 = !DILocation(line: 363, column: 16, scope: !2177)
!2185 = !DILocation(line: 363, column: 10, scope: !2177)
!2186 = !DILocation(line: 363, column: 3, scope: !2177)
!2187 = distinct !DISubprogram(name: "atol", scope: !2178, file: !2178, line: 366, type: !2188, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!709, !640}
!2190 = !{!2191}
!2191 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2187, file: !2178, line: 366, type: !640)
!2192 = !DILocation(line: 0, scope: !2187)
!2193 = !DILocation(line: 368, column: 10, scope: !2187)
!2194 = !DILocation(line: 368, column: 3, scope: !2187)
!2195 = distinct !DISubprogram(name: "atoll", scope: !2178, file: !2178, line: 373, type: !2196, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2199)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!2198, !640}
!2198 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2199 = !{!2200}
!2200 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2195, file: !2178, line: 373, type: !640)
!2201 = !DILocation(line: 0, scope: !2195)
!2202 = !DILocation(line: 375, column: 10, scope: !2195)
!2203 = !DILocation(line: 375, column: 3, scope: !2195)
!2204 = distinct !DISubprogram(name: "bsearch", scope: !2205, file: !2205, line: 20, type: !2206, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2209)
!2205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!639, !1283, !1283, !1122, !1122, !2208}
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2178, line: 808, baseType: !1444)
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2210 = !DILocalVariable(name: "__key", arg: 1, scope: !2204, file: !2205, line: 20, type: !1283)
!2211 = !DILocalVariable(name: "__base", arg: 2, scope: !2204, file: !2205, line: 20, type: !1283)
!2212 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2204, file: !2205, line: 20, type: !1122)
!2213 = !DILocalVariable(name: "__size", arg: 4, scope: !2204, file: !2205, line: 20, type: !1122)
!2214 = !DILocalVariable(name: "__compar", arg: 5, scope: !2204, file: !2205, line: 21, type: !2208)
!2215 = !DILocalVariable(name: "__l", scope: !2204, file: !2205, line: 23, type: !1122)
!2216 = !DILocalVariable(name: "__u", scope: !2204, file: !2205, line: 23, type: !1122)
!2217 = !DILocalVariable(name: "__idx", scope: !2204, file: !2205, line: 23, type: !1122)
!2218 = !DILocalVariable(name: "__p", scope: !2204, file: !2205, line: 24, type: !1283)
!2219 = !DILocalVariable(name: "__comparison", scope: !2204, file: !2205, line: 25, type: !635)
!2220 = !DILocation(line: 0, scope: !2204)
!2221 = !DILocation(line: 29, column: 3, scope: !2204)
!2222 = !DILocation(line: 27, column: 7, scope: !2204)
!2223 = !DILocation(line: 29, column: 14, scope: !2204)
!2224 = !DILocation(line: 31, column: 20, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2204, file: !2205, line: 30, column: 5)
!2226 = !DILocation(line: 31, column: 27, scope: !2225)
!2227 = !DILocation(line: 32, column: 56, scope: !2225)
!2228 = !DILocation(line: 32, column: 47, scope: !2225)
!2229 = !DILocation(line: 33, column: 22, scope: !2225)
!2230 = !DILocation(line: 34, column: 24, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2225, file: !2205, line: 34, column: 11)
!2232 = !DILocation(line: 34, column: 11, scope: !2225)
!2233 = !DILocation(line: 36, column: 29, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2231, file: !2205, line: 36, column: 16)
!2235 = !DILocation(line: 36, column: 16, scope: !2231)
!2236 = !DILocation(line: 37, column: 14, scope: !2234)
!2237 = distinct !{!2237, !2221, !2238}
!2238 = !DILocation(line: 40, column: 5, scope: !2204)
!2239 = !DILocation(line: 43, column: 1, scope: !2204)
!2240 = distinct !DISubprogram(name: "atof", scope: !2241, file: !2241, line: 25, type: !2242, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2245)
!2241 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!2244, !640}
!2244 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2245 = !{!2246}
!2246 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2240, file: !2241, line: 25, type: !640)
!2247 = !DILocation(line: 0, scope: !2240)
!2248 = !DILocation(line: 27, column: 10, scope: !2240)
!2249 = !DILocation(line: 27, column: 3, scope: !2240)
!2250 = distinct !DISubprogram(name: "strtoimax", scope: !2251, file: !2251, line: 324, type: !2252, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2258)
!2251 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!2254, !2012, !2257, !635}
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2255, line: 101, baseType: !2256)
!2255 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2064, line: 72, baseType: !709)
!2257 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !636)
!2258 = !{!2259, !2260, !2261}
!2259 = !DILocalVariable(name: "nptr", arg: 1, scope: !2250, file: !2251, line: 324, type: !2012)
!2260 = !DILocalVariable(name: "endptr", arg: 2, scope: !2250, file: !2251, line: 324, type: !2257)
!2261 = !DILocalVariable(name: "base", arg: 3, scope: !2250, file: !2251, line: 324, type: !635)
!2262 = !DILocation(line: 0, scope: !2250)
!2263 = !DILocation(line: 327, column: 10, scope: !2250)
!2264 = !DILocation(line: 327, column: 3, scope: !2250)
!2265 = distinct !DISubprogram(name: "strtoumax", scope: !2251, file: !2251, line: 336, type: !2266, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2270)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!2268, !2012, !2257, !635}
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2255, line: 102, baseType: !2269)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2064, line: 73, baseType: !707)
!2270 = !{!2271, !2272, !2273}
!2271 = !DILocalVariable(name: "nptr", arg: 1, scope: !2265, file: !2251, line: 336, type: !2012)
!2272 = !DILocalVariable(name: "endptr", arg: 2, scope: !2265, file: !2251, line: 336, type: !2257)
!2273 = !DILocalVariable(name: "base", arg: 3, scope: !2265, file: !2251, line: 336, type: !635)
!2274 = !DILocation(line: 0, scope: !2265)
!2275 = !DILocation(line: 339, column: 10, scope: !2265)
!2276 = !DILocation(line: 339, column: 3, scope: !2265)
!2277 = distinct !DISubprogram(name: "wcstoimax", scope: !2251, file: !2251, line: 348, type: !2278, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2287)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!2254, !2280, !2284, !635}
!2280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2281)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2283)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2251, line: 34, baseType: !635)
!2284 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2285)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2287 = !{!2288, !2289, !2290}
!2288 = !DILocalVariable(name: "nptr", arg: 1, scope: !2277, file: !2251, line: 348, type: !2280)
!2289 = !DILocalVariable(name: "endptr", arg: 2, scope: !2277, file: !2251, line: 348, type: !2284)
!2290 = !DILocalVariable(name: "base", arg: 3, scope: !2277, file: !2251, line: 348, type: !635)
!2291 = !DILocation(line: 0, scope: !2277)
!2292 = !DILocation(line: 351, column: 10, scope: !2277)
!2293 = !DILocation(line: 351, column: 3, scope: !2277)
!2294 = distinct !DISubprogram(name: "wcstoumax", scope: !2251, file: !2251, line: 362, type: !2295, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2297)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!2268, !2280, !2284, !635}
!2297 = !{!2298, !2299, !2300}
!2298 = !DILocalVariable(name: "nptr", arg: 1, scope: !2294, file: !2251, line: 362, type: !2280)
!2299 = !DILocalVariable(name: "endptr", arg: 2, scope: !2294, file: !2251, line: 362, type: !2284)
!2300 = !DILocalVariable(name: "base", arg: 3, scope: !2294, file: !2251, line: 362, type: !635)
!2301 = !DILocation(line: 0, scope: !2294)
!2302 = !DILocation(line: 365, column: 10, scope: !2294)
!2303 = !DILocation(line: 365, column: 3, scope: !2294)
!2304 = distinct !DISubprogram(name: "stat", scope: !2305, file: !2305, line: 453, type: !2306, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2343)
!2305 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!635, !640, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2310, line: 46, size: 1152, elements: !2311)
!2310 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2311 = !{!2312, !2314, !2316, !2318, !2320, !2322, !2324, !2325, !2326, !2327, !2329, !2331, !2339, !2340, !2341}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2309, file: !2310, line: 48, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2064, line: 145, baseType: !707)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2309, file: !2310, line: 53, baseType: !2315, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2064, line: 148, baseType: !707)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2309, file: !2310, line: 61, baseType: !2317, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2064, line: 151, baseType: !707)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2309, file: !2310, line: 62, baseType: !2319, size: 32, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2064, line: 150, baseType: !7)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2309, file: !2310, line: 64, baseType: !2321, size: 32, offset: 224)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2064, line: 146, baseType: !7)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2309, file: !2310, line: 65, baseType: !2323, size: 32, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2064, line: 147, baseType: !7)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2309, file: !2310, line: 67, baseType: !635, size: 32, offset: 288)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2309, file: !2310, line: 69, baseType: !2313, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2309, file: !2310, line: 74, baseType: !2063, size: 64, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2309, file: !2310, line: 78, baseType: !2328, size: 64, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2064, line: 174, baseType: !709)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2309, file: !2310, line: 80, baseType: !2330, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2064, line: 179, baseType: !709)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2309, file: !2310, line: 91, baseType: !2332, size: 128, offset: 576)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2333, line: 10, size: 128, elements: !2334)
!2333 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2334 = !{!2335, !2337}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2332, file: !2333, line: 12, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2064, line: 160, baseType: !709)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2332, file: !2333, line: 16, baseType: !2338, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2064, line: 196, baseType: !709)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2309, file: !2310, line: 92, baseType: !2332, size: 128, offset: 704)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2309, file: !2310, line: 93, baseType: !2332, size: 128, offset: 832)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2309, file: !2310, line: 106, baseType: !2342, size: 192, offset: 960)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, size: 192, elements: !727)
!2343 = !{!2344, !2345}
!2344 = !DILocalVariable(name: "__path", arg: 1, scope: !2304, file: !2305, line: 453, type: !640)
!2345 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2304, file: !2305, line: 453, type: !2308)
!2346 = !DILocation(line: 0, scope: !2304)
!2347 = !DILocation(line: 455, column: 10, scope: !2304)
!2348 = !DILocation(line: 455, column: 3, scope: !2304)
!2349 = distinct !DISubprogram(name: "lstat", scope: !2305, file: !2305, line: 460, type: !2306, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2350)
!2350 = !{!2351, !2352}
!2351 = !DILocalVariable(name: "__path", arg: 1, scope: !2349, file: !2305, line: 460, type: !640)
!2352 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2349, file: !2305, line: 460, type: !2308)
!2353 = !DILocation(line: 0, scope: !2349)
!2354 = !DILocation(line: 462, column: 10, scope: !2349)
!2355 = !DILocation(line: 462, column: 3, scope: !2349)
!2356 = distinct !DISubprogram(name: "fstat", scope: !2305, file: !2305, line: 467, type: !2357, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2359)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!635, !635, !2308}
!2359 = !{!2360, !2361}
!2360 = !DILocalVariable(name: "__fd", arg: 1, scope: !2356, file: !2305, line: 467, type: !635)
!2361 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2356, file: !2305, line: 467, type: !2308)
!2362 = !DILocation(line: 0, scope: !2356)
!2363 = !DILocation(line: 469, column: 10, scope: !2356)
!2364 = !DILocation(line: 469, column: 3, scope: !2356)
!2365 = distinct !DISubprogram(name: "fstatat", scope: !2305, file: !2305, line: 474, type: !2366, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!635, !635, !640, !2308, !635}
!2368 = !{!2369, !2370, !2371, !2372}
!2369 = !DILocalVariable(name: "__fd", arg: 1, scope: !2365, file: !2305, line: 474, type: !635)
!2370 = !DILocalVariable(name: "__filename", arg: 2, scope: !2365, file: !2305, line: 474, type: !640)
!2371 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2365, file: !2305, line: 474, type: !2308)
!2372 = !DILocalVariable(name: "__flag", arg: 4, scope: !2365, file: !2305, line: 474, type: !635)
!2373 = !DILocation(line: 0, scope: !2365)
!2374 = !DILocation(line: 477, column: 10, scope: !2365)
!2375 = !DILocation(line: 477, column: 3, scope: !2365)
!2376 = distinct !DISubprogram(name: "mknod", scope: !2305, file: !2305, line: 483, type: !2377, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!635, !640, !2319, !2313}
!2379 = !{!2380, !2381, !2382}
!2380 = !DILocalVariable(name: "__path", arg: 1, scope: !2376, file: !2305, line: 483, type: !640)
!2381 = !DILocalVariable(name: "__mode", arg: 2, scope: !2376, file: !2305, line: 483, type: !2319)
!2382 = !DILocalVariable(name: "__dev", arg: 3, scope: !2376, file: !2305, line: 483, type: !2313)
!2383 = !DILocation(line: 0, scope: !2376)
!2384 = !DILocation(line: 485, column: 10, scope: !2376)
!2385 = !DILocation(line: 485, column: 3, scope: !2376)
!2386 = distinct !DISubprogram(name: "mknodat", scope: !2305, file: !2305, line: 491, type: !2387, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!635, !635, !640, !2319, !2313}
!2389 = !{!2390, !2391, !2392, !2393}
!2390 = !DILocalVariable(name: "__fd", arg: 1, scope: !2386, file: !2305, line: 491, type: !635)
!2391 = !DILocalVariable(name: "__path", arg: 2, scope: !2386, file: !2305, line: 491, type: !640)
!2392 = !DILocalVariable(name: "__mode", arg: 3, scope: !2386, file: !2305, line: 491, type: !2319)
!2393 = !DILocalVariable(name: "__dev", arg: 4, scope: !2386, file: !2305, line: 491, type: !2313)
!2394 = !DILocation(line: 0, scope: !2386)
!2395 = !DILocation(line: 494, column: 10, scope: !2386)
!2396 = !DILocation(line: 494, column: 3, scope: !2386)
!2397 = distinct !DISubprogram(name: "stat64", scope: !2305, file: !2305, line: 502, type: !2398, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2420)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!635, !640, !2400}
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2310, line: 119, size: 1152, elements: !2402)
!2402 = !{!2403, !2404, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2416, !2417, !2418, !2419}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2401, file: !2310, line: 121, baseType: !2313, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2401, file: !2310, line: 123, baseType: !2405, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2064, line: 149, baseType: !707)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2401, file: !2310, line: 124, baseType: !2317, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2401, file: !2310, line: 125, baseType: !2319, size: 32, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2401, file: !2310, line: 132, baseType: !2321, size: 32, offset: 224)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2401, file: !2310, line: 133, baseType: !2323, size: 32, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2401, file: !2310, line: 135, baseType: !635, size: 32, offset: 288)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2401, file: !2310, line: 136, baseType: !2313, size: 64, offset: 320)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2401, file: !2310, line: 137, baseType: !2063, size: 64, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2401, file: !2310, line: 143, baseType: !2328, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2401, file: !2310, line: 144, baseType: !2415, size: 64, offset: 512)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2064, line: 180, baseType: !709)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2401, file: !2310, line: 152, baseType: !2332, size: 128, offset: 576)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2401, file: !2310, line: 153, baseType: !2332, size: 128, offset: 704)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2401, file: !2310, line: 154, baseType: !2332, size: 128, offset: 832)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2401, file: !2310, line: 164, baseType: !2342, size: 192, offset: 960)
!2420 = !{!2421, !2422}
!2421 = !DILocalVariable(name: "__path", arg: 1, scope: !2397, file: !2305, line: 502, type: !640)
!2422 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2397, file: !2305, line: 502, type: !2400)
!2423 = !DILocation(line: 0, scope: !2397)
!2424 = !DILocation(line: 504, column: 10, scope: !2397)
!2425 = !DILocation(line: 504, column: 3, scope: !2397)
!2426 = distinct !DISubprogram(name: "lstat64", scope: !2305, file: !2305, line: 509, type: !2398, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2427)
!2427 = !{!2428, !2429}
!2428 = !DILocalVariable(name: "__path", arg: 1, scope: !2426, file: !2305, line: 509, type: !640)
!2429 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2426, file: !2305, line: 509, type: !2400)
!2430 = !DILocation(line: 0, scope: !2426)
!2431 = !DILocation(line: 511, column: 10, scope: !2426)
!2432 = !DILocation(line: 511, column: 3, scope: !2426)
!2433 = distinct !DISubprogram(name: "fstat64", scope: !2305, file: !2305, line: 516, type: !2434, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!635, !635, !2400}
!2436 = !{!2437, !2438}
!2437 = !DILocalVariable(name: "__fd", arg: 1, scope: !2433, file: !2305, line: 516, type: !635)
!2438 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2433, file: !2305, line: 516, type: !2400)
!2439 = !DILocation(line: 0, scope: !2433)
!2440 = !DILocation(line: 518, column: 10, scope: !2433)
!2441 = !DILocation(line: 518, column: 3, scope: !2433)
!2442 = distinct !DISubprogram(name: "fstatat64", scope: !2305, file: !2305, line: 523, type: !2443, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!635, !635, !640, !2400, !635}
!2445 = !{!2446, !2447, !2448, !2449}
!2446 = !DILocalVariable(name: "__fd", arg: 1, scope: !2442, file: !2305, line: 523, type: !635)
!2447 = !DILocalVariable(name: "__filename", arg: 2, scope: !2442, file: !2305, line: 523, type: !640)
!2448 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2442, file: !2305, line: 523, type: !2400)
!2449 = !DILocalVariable(name: "__flag", arg: 4, scope: !2442, file: !2305, line: 523, type: !635)
!2450 = !DILocation(line: 0, scope: !2442)
!2451 = !DILocation(line: 526, column: 10, scope: !2442)
!2452 = !DILocation(line: 526, column: 3, scope: !2442)
!2453 = distinct !DISubprogram(name: "find_referenced_vars", scope: !3, file: !3, line: 83, type: !1991, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2454)
!2454 = !{!2455, !2456, !2463}
!2455 = !DILocalVariable(name: "bb", scope: !2453, file: !3, line: 85, type: !1399)
!2456 = !DILocalVariable(name: "si", scope: !2453, file: !3, line: 86, type: !2457)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !568, line: 265, baseType: !2458)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 254, size: 192, elements: !2459)
!2459 = !{!2460, !2461, !2462}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2458, file: !568, line: 257, baseType: !972, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2458, file: !568, line: 263, baseType: !967, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2458, file: !568, line: 264, baseType: !1399, size: 64, offset: 128)
!2463 = !DILocalVariable(name: "stmt", scope: !2464, file: !3, line: 92, type: !977)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 91, column: 2)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 90, column: 7)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 90, column: 7)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 89, column: 5)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 88, column: 3)
!2469 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 88, column: 3)
!2470 = !DILocation(line: 86, column: 3, scope: !2453)
!2471 = !DILocation(line: 88, column: 3, scope: !2469)
!2472 = !DILocation(line: 0, scope: !2466)
!2473 = !DILocation(line: 0, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 98, column: 7)
!2475 = !DILocation(line: 88, column: 3, scope: !2468)
!2476 = !DILocation(line: 0, scope: !2469)
!2477 = !DILocation(line: 0, scope: !2453)
!2478 = !DILocation(line: 90, column: 17, scope: !2466)
!2479 = !DILocation(line: 90, column: 12, scope: !2466)
!2480 = !DILocation(line: 90, column: 37, scope: !2465)
!2481 = !DILocation(line: 90, column: 36, scope: !2465)
!2482 = !DILocation(line: 90, column: 7, scope: !2466)
!2483 = !DILocation(line: 92, column: 18, scope: !2464)
!2484 = !DILocation(line: 0, scope: !2464)
!2485 = !DILocation(line: 93, column: 8, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 93, column: 8)
!2487 = !DILocation(line: 93, column: 8, scope: !2464)
!2488 = !DILocation(line: 95, column: 29, scope: !2464)
!2489 = !DILocation(line: 95, column: 4, scope: !2464)
!2490 = !DILocation(line: 96, column: 2, scope: !2465)
!2491 = !DILocation(line: 90, column: 53, scope: !2465)
!2492 = !DILocation(line: 90, column: 7, scope: !2465)
!2493 = distinct !{!2493, !2482, !2494}
!2494 = !DILocation(line: 96, column: 2, scope: !2466)
!2495 = !DILocation(line: 98, column: 17, scope: !2474)
!2496 = !DILocation(line: 98, column: 12, scope: !2474)
!2497 = !DILocation(line: 98, column: 39, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 98, column: 7)
!2499 = !DILocation(line: 98, column: 38, scope: !2498)
!2500 = !DILocation(line: 98, column: 7, scope: !2474)
!2501 = !DILocation(line: 99, column: 27, scope: !2498)
!2502 = !DILocation(line: 99, column: 2, scope: !2498)
!2503 = !DILocation(line: 98, column: 55, scope: !2498)
!2504 = !DILocation(line: 98, column: 7, scope: !2498)
!2505 = distinct !{!2505, !2500, !2506}
!2506 = !DILocation(line: 99, column: 40, scope: !2474)
!2507 = !DILocation(line: 0, scope: !2468)
!2508 = distinct !{!2508, !2471, !2509}
!2509 = !DILocation(line: 100, column: 5, scope: !2469)
!2510 = !DILocation(line: 103, column: 1, scope: !2453)
!2511 = !DILocation(line: 102, column: 3, scope: !2453)
!2512 = distinct !DISubprogram(name: "create_var_ann", scope: !3, file: !3, line: 131, type: !2513, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2516)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!2515, !653}
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "var_ann_t", file: !644, line: 297, baseType: !642)
!2516 = !{!2517, !2518}
!2517 = !DILocalVariable(name: "t", arg: 1, scope: !2512, file: !3, line: 131, type: !653)
!2518 = !DILocalVariable(name: "ann", scope: !2512, file: !3, line: 133, type: !2515)
!2519 = !DILocation(line: 0, scope: !2512)
!2520 = !DILocation(line: 135, column: 3, scope: !2512)
!2521 = !DILocation(line: 136, column: 3, scope: !2512)
!2522 = !DILocation(line: 140, column: 9, scope: !2512)
!2523 = !DILocation(line: 141, column: 4, scope: !2512)
!2524 = !DILocation(line: 141, column: 25, scope: !2512)
!2525 = !DILocation(line: 143, column: 3, scope: !2512)
!2526 = distinct !DISubprogram(name: "renumber_gimple_stmt_uids", scope: !3, file: !3, line: 149, type: !2527, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{null}
!2529 = !{!2530, !2531, !2535}
!2530 = !DILocalVariable(name: "bb", scope: !2526, file: !3, line: 151, type: !1399)
!2531 = !DILocalVariable(name: "bsi", scope: !2532, file: !3, line: 156, type: !2457)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 155, column: 5)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 154, column: 3)
!2534 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 154, column: 3)
!2535 = !DILocalVariable(name: "stmt", scope: !2536, file: !3, line: 159, type: !977)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 158, column: 2)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 157, column: 7)
!2538 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 157, column: 7)
!2539 = !DILocation(line: 153, column: 28, scope: !2526)
!2540 = !DILocation(line: 153, column: 3, scope: !2526)
!2541 = !DILocation(line: 154, column: 3, scope: !2534)
!2542 = !DILocation(line: 0, scope: !2532)
!2543 = !DILocation(line: 0, scope: !2538)
!2544 = !DILocation(line: 0, scope: !2534)
!2545 = !DILocation(line: 0, scope: !2526)
!2546 = !DILocation(line: 156, column: 7, scope: !2532)
!2547 = !DILocation(line: 157, column: 18, scope: !2538)
!2548 = !DILocation(line: 157, column: 12, scope: !2538)
!2549 = !DILocation(line: 157, column: 38, scope: !2537)
!2550 = !DILocation(line: 157, column: 37, scope: !2537)
!2551 = !DILocation(line: 157, column: 7, scope: !2538)
!2552 = !DILocation(line: 159, column: 18, scope: !2536)
!2553 = !DILocation(line: 0, scope: !2536)
!2554 = !DILocation(line: 160, column: 51, scope: !2536)
!2555 = !DILocation(line: 160, column: 26, scope: !2536)
!2556 = !DILocation(line: 160, column: 4, scope: !2536)
!2557 = !DILocation(line: 157, column: 55, scope: !2537)
!2558 = !DILocation(line: 157, column: 7, scope: !2537)
!2559 = distinct !{!2559, !2551, !2560}
!2560 = !DILocation(line: 161, column: 2, scope: !2538)
!2561 = !DILocation(line: 162, column: 5, scope: !2533)
!2562 = !DILocation(line: 154, column: 3, scope: !2533)
!2563 = distinct !{!2563, !2541, !2564}
!2564 = !DILocation(line: 162, column: 5, scope: !2534)
!2565 = !DILocation(line: 163, column: 1, scope: !2526)
!2566 = distinct !DISubprogram(name: "set_gimple_stmt_max_uid", scope: !2567, file: !2567, line: 157, type: !2568, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2570)
!2567 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !1387, !7}
!2570 = !{!2571, !2572}
!2571 = !DILocalVariable(name: "fn", arg: 1, scope: !2566, file: !2567, line: 157, type: !1387)
!2572 = !DILocalVariable(name: "maxid", arg: 2, scope: !2566, file: !2567, line: 157, type: !7)
!2573 = !DILocation(line: 0, scope: !2566)
!2574 = !DILocation(line: 159, column: 7, scope: !2566)
!2575 = !DILocation(line: 159, column: 21, scope: !2566)
!2576 = !DILocation(line: 160, column: 1, scope: !2566)
!2577 = distinct !DISubprogram(name: "gsi_start_bb", scope: !568, file: !568, line: 4418, type: !2578, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!2457, !1399}
!2580 = !{!2581, !2582, !2583}
!2581 = !DILocalVariable(name: "bb", arg: 1, scope: !2577, file: !568, line: 4418, type: !1399)
!2582 = !DILocalVariable(name: "i", scope: !2577, file: !568, line: 4420, type: !2457)
!2583 = !DILocalVariable(name: "seq", scope: !2577, file: !568, line: 4421, type: !967)
!2584 = !DILocation(line: 0, scope: !2577)
!2585 = !DILocation(line: 4420, column: 24, scope: !2577)
!2586 = !DILocation(line: 4423, column: 9, scope: !2577)
!2587 = !DILocation(line: 4424, column: 11, scope: !2577)
!2588 = !DILocation(line: 4424, column: 5, scope: !2577)
!2589 = !DILocation(line: 4424, column: 9, scope: !2577)
!2590 = !DILocation(line: 4425, column: 5, scope: !2577)
!2591 = !DILocation(line: 4425, column: 9, scope: !2577)
!2592 = !DILocation(line: 4426, column: 5, scope: !2577)
!2593 = !DILocation(line: 4426, column: 8, scope: !2577)
!2594 = !DILocation(line: 4429, column: 1, scope: !2577)
!2595 = distinct !DISubprogram(name: "gsi_end_p", scope: !568, file: !568, line: 4467, type: !2596, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!634, !2457}
!2598 = !{!2599}
!2599 = !DILocalVariable(name: "i", arg: 1, scope: !2595, file: !568, line: 4467, type: !2457)
!2600 = !DILocation(line: 4467, column: 33, scope: !2595)
!2601 = !DILocation(line: 4469, column: 12, scope: !2595)
!2602 = !DILocation(line: 4469, column: 16, scope: !2595)
!2603 = !DILocation(line: 4469, column: 10, scope: !2595)
!2604 = !DILocation(line: 4469, column: 3, scope: !2595)
!2605 = distinct !DISubprogram(name: "gsi_stmt", scope: !568, file: !568, line: 4501, type: !2606, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!977, !2457}
!2608 = !{!2609}
!2609 = !DILocalVariable(name: "i", arg: 1, scope: !2605, file: !568, line: 4501, type: !2457)
!2610 = !DILocation(line: 4501, column: 32, scope: !2605)
!2611 = !DILocation(line: 4503, column: 12, scope: !2605)
!2612 = !DILocation(line: 4503, column: 17, scope: !2605)
!2613 = !DILocation(line: 4503, column: 3, scope: !2605)
!2614 = distinct !DISubprogram(name: "gimple_set_uid", scope: !568, file: !568, line: 1256, type: !2615, scopeLine: 1257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !977, !7}
!2617 = !{!2618, !2619}
!2618 = !DILocalVariable(name: "g", arg: 1, scope: !2614, file: !568, line: 1256, type: !977)
!2619 = !DILocalVariable(name: "uid", arg: 2, scope: !2614, file: !568, line: 1256, type: !7)
!2620 = !DILocation(line: 0, scope: !2614)
!2621 = !DILocation(line: 1258, column: 13, scope: !2614)
!2622 = !DILocation(line: 1258, column: 17, scope: !2614)
!2623 = !DILocation(line: 1259, column: 1, scope: !2614)
!2624 = distinct !DISubprogram(name: "inc_gimple_stmt_max_uid", scope: !2567, file: !2567, line: 164, type: !2625, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!7, !1387}
!2627 = !{!2628}
!2628 = !DILocalVariable(name: "fn", arg: 1, scope: !2624, file: !2567, line: 164, type: !1387)
!2629 = !DILocation(line: 0, scope: !2624)
!2630 = !DILocation(line: 166, column: 14, scope: !2624)
!2631 = !DILocation(line: 166, column: 27, scope: !2624)
!2632 = !DILocation(line: 166, column: 3, scope: !2624)
!2633 = distinct !DISubprogram(name: "gsi_next", scope: !568, file: !568, line: 4485, type: !2634, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2637)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{null, !2636}
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2637 = !{!2638}
!2638 = !DILocalVariable(name: "i", arg: 1, scope: !2633, file: !568, line: 4485, type: !2636)
!2639 = !DILocation(line: 0, scope: !2633)
!2640 = !DILocation(line: 4487, column: 15, scope: !2633)
!2641 = !DILocation(line: 4487, column: 20, scope: !2633)
!2642 = !DILocation(line: 4487, column: 10, scope: !2633)
!2643 = !DILocation(line: 4488, column: 1, scope: !2633)
!2644 = distinct !DISubprogram(name: "renumber_gimple_stmt_uids_in_blocks", scope: !3, file: !3, line: 169, type: !2645, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2648)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{null, !2647, !635}
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!2648 = !{!2649, !2650, !2651, !2652, !2656, !2657, !2661}
!2649 = !DILocalVariable(name: "blocks", arg: 1, scope: !2644, file: !3, line: 169, type: !2647)
!2650 = !DILocalVariable(name: "n_blocks", arg: 2, scope: !2644, file: !3, line: 169, type: !635)
!2651 = !DILocalVariable(name: "i", scope: !2644, file: !3, line: 171, type: !635)
!2652 = !DILocalVariable(name: "bb", scope: !2653, file: !3, line: 176, type: !1399)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 175, column: 5)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 174, column: 3)
!2655 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 174, column: 3)
!2656 = !DILocalVariable(name: "bsi", scope: !2653, file: !3, line: 177, type: !2457)
!2657 = !DILocalVariable(name: "stmt", scope: !2658, file: !3, line: 180, type: !977)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 179, column: 2)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 178, column: 7)
!2660 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 178, column: 7)
!2661 = !DILocalVariable(name: "stmt", scope: !2662, file: !3, line: 185, type: !977)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 184, column: 2)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 183, column: 7)
!2664 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 183, column: 7)
!2665 = !DILocation(line: 0, scope: !2644)
!2666 = !DILocation(line: 173, column: 28, scope: !2644)
!2667 = !DILocation(line: 173, column: 3, scope: !2644)
!2668 = !DILocation(line: 0, scope: !2653)
!2669 = !DILocation(line: 0, scope: !2660)
!2670 = !DILocation(line: 0, scope: !2664)
!2671 = !DILocation(line: 174, column: 8, scope: !2655)
!2672 = !DILocation(line: 0, scope: !2655)
!2673 = !DILocation(line: 174, column: 17, scope: !2654)
!2674 = !DILocation(line: 174, column: 3, scope: !2655)
!2675 = !DILocation(line: 176, column: 24, scope: !2653)
!2676 = !DILocation(line: 177, column: 7, scope: !2653)
!2677 = !DILocation(line: 178, column: 18, scope: !2660)
!2678 = !DILocation(line: 178, column: 12, scope: !2660)
!2679 = !DILocation(line: 178, column: 40, scope: !2659)
!2680 = !DILocation(line: 178, column: 39, scope: !2659)
!2681 = !DILocation(line: 178, column: 7, scope: !2660)
!2682 = !DILocation(line: 180, column: 18, scope: !2658)
!2683 = !DILocation(line: 0, scope: !2658)
!2684 = !DILocation(line: 181, column: 51, scope: !2658)
!2685 = !DILocation(line: 181, column: 26, scope: !2658)
!2686 = !DILocation(line: 181, column: 4, scope: !2658)
!2687 = !DILocation(line: 178, column: 57, scope: !2659)
!2688 = !DILocation(line: 178, column: 7, scope: !2659)
!2689 = distinct !{!2689, !2681, !2690}
!2690 = !DILocation(line: 182, column: 2, scope: !2660)
!2691 = !DILocation(line: 183, column: 18, scope: !2664)
!2692 = !DILocation(line: 183, column: 12, scope: !2664)
!2693 = !DILocation(line: 183, column: 38, scope: !2663)
!2694 = !DILocation(line: 183, column: 37, scope: !2663)
!2695 = !DILocation(line: 183, column: 7, scope: !2664)
!2696 = !DILocation(line: 185, column: 18, scope: !2662)
!2697 = !DILocation(line: 0, scope: !2662)
!2698 = !DILocation(line: 186, column: 51, scope: !2662)
!2699 = !DILocation(line: 186, column: 26, scope: !2662)
!2700 = !DILocation(line: 186, column: 4, scope: !2662)
!2701 = !DILocation(line: 183, column: 55, scope: !2663)
!2702 = !DILocation(line: 183, column: 7, scope: !2663)
!2703 = distinct !{!2703, !2695, !2704}
!2704 = !DILocation(line: 187, column: 2, scope: !2664)
!2705 = !DILocation(line: 188, column: 5, scope: !2654)
!2706 = !DILocation(line: 174, column: 30, scope: !2654)
!2707 = !DILocation(line: 174, column: 3, scope: !2654)
!2708 = distinct !{!2708, !2674, !2709}
!2709 = !DILocation(line: 188, column: 5, scope: !2655)
!2710 = !DILocation(line: 189, column: 1, scope: !2644)
!2711 = distinct !DISubprogram(name: "make_rename_temp", scope: !3, file: !3, line: 194, type: !2712, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!653, !653, !640}
!2714 = !{!2715, !2716, !2717}
!2715 = !DILocalVariable(name: "type", arg: 1, scope: !2711, file: !3, line: 194, type: !653)
!2716 = !DILocalVariable(name: "prefix", arg: 2, scope: !2711, file: !3, line: 194, type: !640)
!2717 = !DILocalVariable(name: "t", scope: !2711, file: !3, line: 196, type: !653)
!2718 = !DILocation(line: 0, scope: !2711)
!2719 = !DILocation(line: 196, column: 12, scope: !2711)
!2720 = !DILocation(line: 198, column: 7, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 198, column: 7)
!2722 = !DILocation(line: 198, column: 33, scope: !2721)
!2723 = !DILocation(line: 199, column: 7, scope: !2721)
!2724 = !DILocation(line: 199, column: 36, scope: !2721)
!2725 = !DILocation(line: 198, column: 7, scope: !2711)
!2726 = !DILocation(line: 200, column: 5, scope: !2721)
!2727 = !DILocation(line: 200, column: 27, scope: !2721)
!2728 = !DILocation(line: 202, column: 31, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 202, column: 7)
!2730 = !DILocation(line: 202, column: 7, scope: !2729)
!2731 = !DILocation(line: 202, column: 7, scope: !2711)
!2732 = !DILocation(line: 204, column: 7, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 203, column: 5)
!2734 = !DILocation(line: 205, column: 7, scope: !2733)
!2735 = !DILocation(line: 206, column: 5, scope: !2733)
!2736 = !DILocation(line: 208, column: 3, scope: !2711)
!2737 = distinct !DISubprogram(name: "gimple_referenced_vars", scope: !2567, file: !2567, line: 40, type: !2738, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2742)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!1431, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1388)
!2742 = !{!2743}
!2743 = !DILocalVariable(name: "fun", arg: 1, scope: !2737, file: !2567, line: 40, type: !2740)
!2744 = !DILocation(line: 0, scope: !2737)
!2745 = !DILocation(line: 42, column: 13, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2737, file: !2567, line: 42, column: 7)
!2747 = !DILocation(line: 42, column: 8, scope: !2746)
!2748 = !DILocation(line: 42, column: 7, scope: !2737)
!2749 = !DILocation(line: 44, column: 26, scope: !2737)
!2750 = !DILocation(line: 44, column: 3, scope: !2737)
!2751 = !DILocation(line: 45, column: 1, scope: !2737)
!2752 = distinct !DISubprogram(name: "add_referenced_var", scope: !3, file: !3, line: 599, type: !2753, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!634, !653}
!2755 = !{!2756}
!2756 = !DILocalVariable(name: "var", arg: 1, scope: !2752, file: !3, line: 599, type: !653)
!2757 = !DILocation(line: 0, scope: !2752)
!2758 = !DILocation(line: 601, column: 3, scope: !2752)
!2759 = !DILocation(line: 602, column: 3, scope: !2752)
!2760 = !DILocation(line: 605, column: 7, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 605, column: 7)
!2762 = !DILocation(line: 605, column: 7, scope: !2752)
!2763 = !DILocation(line: 612, column: 11, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 612, column: 11)
!2765 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 606, column: 5)
!2766 = !DILocation(line: 613, column: 11, scope: !2764)
!2767 = !DILocation(line: 613, column: 14, scope: !2764)
!2768 = !DILocation(line: 613, column: 36, scope: !2764)
!2769 = !DILocation(line: 613, column: 33, scope: !2764)
!2770 = !DILocation(line: 612, column: 11, scope: !2765)
!2771 = !DILocation(line: 614, column: 8, scope: !2764)
!2772 = !DILocation(line: 620, column: 1, scope: !2752)
!2773 = distinct !DISubprogram(name: "dump_referenced_vars", scope: !3, file: !3, line: 220, type: !2774, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{null, !2037}
!2776 = !{!2777, !2778, !2779}
!2777 = !DILocalVariable(name: "file", arg: 1, scope: !2773, file: !3, line: 220, type: !2037)
!2778 = !DILocalVariable(name: "var", scope: !2773, file: !3, line: 222, type: !653)
!2779 = !DILocalVariable(name: "rvi", scope: !2773, file: !3, line: 223, type: !2780)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenced_var_iterator", file: !644, line: 336, baseType: !2781)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !644, line: 333, size: 192, elements: !2782)
!2782 = !{!2783}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "hti", scope: !2781, file: !644, line: 335, baseType: !2784, size: 192)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_iterator", file: !644, line: 98, baseType: !2785)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !644, line: 93, size: 192, elements: !2786)
!2786 = !{!2787, !2788, !2789}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "htab", scope: !2785, file: !644, line: 95, baseType: !1431, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2785, file: !644, line: 96, baseType: !1453, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2785, file: !644, line: 97, baseType: !1453, size: 64, offset: 128)
!2790 = !DILocation(line: 0, scope: !2773)
!2791 = !DILocation(line: 223, column: 3, scope: !2773)
!2792 = !DILocation(line: 226, column: 15, scope: !2773)
!2793 = !DILocation(line: 226, column: 5, scope: !2773)
!2794 = !DILocation(line: 226, column: 50, scope: !2773)
!2795 = !DILocation(line: 226, column: 39, scope: !2773)
!2796 = !DILocation(line: 225, column: 3, scope: !2773)
!2797 = !DILocation(line: 228, column: 3, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 228, column: 3)
!2799 = !DILocation(line: 0, scope: !2798)
!2800 = !DILocation(line: 228, column: 3, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 228, column: 3)
!2802 = !DILocation(line: 230, column: 7, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 229, column: 5)
!2804 = !DILocation(line: 231, column: 7, scope: !2803)
!2805 = distinct !{!2805, !2797, !2806}
!2806 = !DILocation(line: 232, column: 5, scope: !2798)
!2807 = !DILocation(line: 234, column: 3, scope: !2773)
!2808 = !DILocation(line: 235, column: 1, scope: !2773)
!2809 = distinct !DISubprogram(name: "first_referenced_var", scope: !2567, file: !2567, line: 105, type: !2810, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2813)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!653, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2813 = !{!2814}
!2814 = !DILocalVariable(name: "iter", arg: 1, scope: !2809, file: !2567, line: 105, type: !2812)
!2815 = !DILocation(line: 0, scope: !2809)
!2816 = !DILocation(line: 107, column: 44, scope: !2809)
!2817 = !DILocation(line: 108, column: 33, scope: !2809)
!2818 = !DILocation(line: 108, column: 9, scope: !2809)
!2819 = !DILocation(line: 107, column: 17, scope: !2809)
!2820 = !DILocation(line: 107, column: 10, scope: !2809)
!2821 = !DILocation(line: 107, column: 3, scope: !2809)
!2822 = distinct !DISubprogram(name: "end_referenced_vars_p", scope: !2567, file: !2567, line: 115, type: !2823, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2827)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!634, !2825}
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2780)
!2827 = !{!2828}
!2828 = !DILocalVariable(name: "iter", arg: 1, scope: !2822, file: !2567, line: 115, type: !2825)
!2829 = !DILocation(line: 0, scope: !2822)
!2830 = !DILocation(line: 117, column: 29, scope: !2822)
!2831 = !DILocation(line: 117, column: 10, scope: !2822)
!2832 = !DILocation(line: 117, column: 3, scope: !2822)
!2833 = distinct !DISubprogram(name: "dump_variable", scope: !3, file: !3, line: 250, type: !2834, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{null, !2037, !653}
!2836 = !{!2837, !2838, !2839}
!2837 = !DILocalVariable(name: "file", arg: 1, scope: !2833, file: !3, line: 250, type: !2037)
!2838 = !DILocalVariable(name: "var", arg: 2, scope: !2833, file: !3, line: 250, type: !653)
!2839 = !DILocalVariable(name: "ann", scope: !2833, file: !3, line: 252, type: !2515)
!2840 = !DILocation(line: 0, scope: !2833)
!2841 = !DILocation(line: 254, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 254, column: 7)
!2843 = !DILocation(line: 254, column: 23, scope: !2842)
!2844 = !DILocation(line: 254, column: 7, scope: !2833)
!2845 = !DILocation(line: 256, column: 11, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 256, column: 11)
!2847 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 255, column: 5)
!2848 = !DILocation(line: 256, column: 11, scope: !2847)
!2849 = !DILocation(line: 257, column: 2, scope: !2846)
!2850 = !DILocation(line: 258, column: 13, scope: !2847)
!2851 = !DILocation(line: 259, column: 5, scope: !2847)
!2852 = !DILocation(line: 261, column: 11, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 261, column: 7)
!2854 = !DILocation(line: 261, column: 7, scope: !2833)
!2855 = !DILocation(line: 263, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 262, column: 5)
!2857 = !DILocation(line: 264, column: 7, scope: !2856)
!2858 = !DILocation(line: 267, column: 34, scope: !2833)
!2859 = !DILocation(line: 267, column: 3, scope: !2833)
!2860 = !DILocation(line: 269, column: 9, scope: !2833)
!2861 = !DILocation(line: 271, column: 43, scope: !2833)
!2862 = !DILocation(line: 271, column: 3, scope: !2833)
!2863 = !DILocation(line: 273, column: 3, scope: !2833)
!2864 = !DILocation(line: 274, column: 29, scope: !2833)
!2865 = !DILocation(line: 274, column: 46, scope: !2833)
!2866 = !DILocation(line: 274, column: 3, scope: !2833)
!2867 = !DILocation(line: 276, column: 7, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 276, column: 7)
!2869 = !DILocation(line: 276, column: 7, scope: !2833)
!2870 = !DILocation(line: 277, column: 5, scope: !2868)
!2871 = !DILocation(line: 279, column: 7, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 279, column: 7)
!2873 = !DILocation(line: 279, column: 7, scope: !2833)
!2874 = !DILocation(line: 280, column: 5, scope: !2872)
!2875 = !DILocation(line: 282, column: 7, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 282, column: 7)
!2877 = !DILocation(line: 282, column: 7, scope: !2833)
!2878 = !DILocation(line: 283, column: 5, scope: !2876)
!2879 = !DILocation(line: 285, column: 7, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 285, column: 7)
!2881 = !DILocation(line: 285, column: 7, scope: !2833)
!2882 = !DILocation(line: 286, column: 5, scope: !2880)
!2883 = !DILocation(line: 287, column: 12, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 287, column: 12)
!2885 = !DILocation(line: 287, column: 12, scope: !2880)
!2886 = !DILocation(line: 288, column: 5, scope: !2884)
!2887 = !DILocation(line: 290, column: 11, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 290, column: 7)
!2889 = !DILocation(line: 290, column: 19, scope: !2888)
!2890 = !DILocation(line: 290, column: 33, scope: !2888)
!2891 = !DILocation(line: 290, column: 7, scope: !2833)
!2892 = !DILocation(line: 291, column: 5, scope: !2888)
!2893 = !DILocation(line: 292, column: 38, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 292, column: 12)
!2895 = !DILocation(line: 292, column: 12, scope: !2888)
!2896 = !DILocation(line: 293, column: 5, scope: !2894)
!2897 = !DILocation(line: 295, column: 38, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 295, column: 12)
!2899 = !DILocation(line: 295, column: 12, scope: !2894)
!2900 = !DILocation(line: 296, column: 5, scope: !2898)
!2901 = !DILocation(line: 298, column: 7, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 298, column: 7)
!2903 = !DILocation(line: 298, column: 12, scope: !2902)
!2904 = !DILocation(line: 298, column: 15, scope: !2902)
!2905 = !DILocation(line: 298, column: 7, scope: !2833)
!2906 = !DILocation(line: 300, column: 7, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 299, column: 5)
!2908 = !DILocation(line: 301, column: 53, scope: !2907)
!2909 = !DILocation(line: 301, column: 33, scope: !2907)
!2910 = !DILocation(line: 301, column: 65, scope: !2907)
!2911 = !DILocation(line: 301, column: 7, scope: !2907)
!2912 = !DILocation(line: 302, column: 5, scope: !2907)
!2913 = !DILocation(line: 304, column: 7, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 304, column: 7)
!2915 = !DILocation(line: 304, column: 7, scope: !2833)
!2916 = !DILocation(line: 306, column: 7, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 305, column: 5)
!2918 = !DILocation(line: 307, column: 33, scope: !2917)
!2919 = !DILocation(line: 307, column: 53, scope: !2917)
!2920 = !DILocation(line: 307, column: 7, scope: !2917)
!2921 = !DILocation(line: 308, column: 5, scope: !2917)
!2922 = !DILocation(line: 310, column: 3, scope: !2833)
!2923 = !DILocation(line: 311, column: 1, scope: !2833)
!2924 = distinct !DISubprogram(name: "next_referenced_var", scope: !2567, file: !2567, line: 124, type: !2810, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2925)
!2925 = !{!2926}
!2926 = !DILocalVariable(name: "iter", arg: 1, scope: !2924, file: !2567, line: 124, type: !2812)
!2927 = !DILocation(line: 0, scope: !2924)
!2928 = !DILocation(line: 126, column: 43, scope: !2924)
!2929 = !DILocation(line: 126, column: 17, scope: !2924)
!2930 = !DILocation(line: 126, column: 10, scope: !2924)
!2931 = !DILocation(line: 126, column: 3, scope: !2924)
!2932 = distinct !DISubprogram(name: "debug_referenced_vars", scope: !3, file: !3, line: 241, type: !2527, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!2933 = !DILocation(line: 243, column: 25, scope: !2932)
!2934 = !DILocation(line: 243, column: 3, scope: !2932)
!2935 = !DILocation(line: 244, column: 1, scope: !2932)
!2936 = distinct !DISubprogram(name: "var_ann", scope: !2567, file: !2567, line: 132, type: !2937, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2940)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!2515, !2939}
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !654, line: 59, baseType: !1969)
!2940 = !{!2941, !2942}
!2941 = !DILocalVariable(name: "t", arg: 1, scope: !2936, file: !2567, line: 132, type: !2939)
!2942 = !DILocalVariable(name: "p", scope: !2936, file: !2567, line: 134, type: !2943)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2515)
!2945 = !DILocation(line: 0, scope: !2936)
!2946 = !DILocation(line: 134, column: 24, scope: !2936)
!2947 = !DILocation(line: 135, column: 10, scope: !2936)
!2948 = !DILocation(line: 135, column: 14, scope: !2936)
!2949 = !DILocation(line: 135, column: 3, scope: !2936)
!2950 = distinct !DISubprogram(name: "is_global_var", scope: !2567, file: !2567, line: 575, type: !2951, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!634, !2939}
!2953 = !{!2954}
!2954 = !DILocalVariable(name: "t", arg: 1, scope: !2950, file: !2567, line: 575, type: !2939)
!2955 = !DILocation(line: 0, scope: !2950)
!2956 = !DILocation(line: 577, column: 11, scope: !2950)
!2957 = !DILocation(line: 577, column: 27, scope: !2950)
!2958 = !DILocation(line: 577, column: 30, scope: !2950)
!2959 = !DILocation(line: 577, column: 3, scope: !2950)
!2960 = distinct !DISubprogram(name: "is_call_clobbered", scope: !2567, file: !2567, line: 629, type: !2951, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2961)
!2961 = !{!2962}
!2962 = !DILocalVariable(name: "var", arg: 1, scope: !2960, file: !2567, line: 629, type: !2939)
!2963 = !DILocation(line: 0, scope: !2960)
!2964 = !DILocation(line: 631, column: 11, scope: !2960)
!2965 = !DILocation(line: 632, column: 4, scope: !2960)
!2966 = !DILocation(line: 632, column: 8, scope: !2960)
!2967 = !DILocation(line: 633, column: 8, scope: !2960)
!2968 = !DILocation(line: 633, column: 34, scope: !2960)
!2969 = !DILocation(line: 633, column: 40, scope: !2960)
!2970 = !DILocation(line: 633, column: 51, scope: !2960)
!2971 = !DILocation(line: 633, column: 11, scope: !2960)
!2972 = !DILocation(line: 631, column: 3, scope: !2960)
!2973 = distinct !DISubprogram(name: "is_call_used", scope: !2567, file: !2567, line: 638, type: !2951, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2974)
!2974 = !{!2975}
!2975 = !DILocalVariable(name: "var", arg: 1, scope: !2973, file: !2567, line: 638, type: !2939)
!2976 = !DILocation(line: 0, scope: !2973)
!2977 = !DILocation(line: 640, column: 11, scope: !2973)
!2978 = !DILocation(line: 641, column: 4, scope: !2973)
!2979 = !DILocation(line: 641, column: 8, scope: !2973)
!2980 = !DILocation(line: 642, column: 8, scope: !2973)
!2981 = !DILocation(line: 642, column: 34, scope: !2973)
!2982 = !DILocation(line: 642, column: 40, scope: !2973)
!2983 = !DILocation(line: 642, column: 51, scope: !2973)
!2984 = !DILocation(line: 642, column: 11, scope: !2973)
!2985 = !DILocation(line: 640, column: 3, scope: !2973)
!2986 = distinct !DISubprogram(name: "gimple_default_def", scope: !3, file: !3, line: 553, type: !2987, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!653, !1387, !653}
!2989 = !{!2990, !2991, !2992, !2993}
!2990 = !DILocalVariable(name: "fn", arg: 1, scope: !2986, file: !3, line: 553, type: !1387)
!2991 = !DILocalVariable(name: "var", arg: 2, scope: !2986, file: !3, line: 553, type: !653)
!2992 = !DILocalVariable(name: "ind", scope: !2986, file: !3, line: 555, type: !774)
!2993 = !DILocalVariable(name: "in", scope: !2986, file: !3, line: 556, type: !1686)
!2994 = !DILocation(line: 0, scope: !2986)
!2995 = !DILocation(line: 555, column: 3, scope: !2986)
!2996 = !DILocation(line: 556, column: 3, scope: !2986)
!2997 = !DILocation(line: 557, column: 3, scope: !2986)
!2998 = !DILocation(line: 558, column: 6, scope: !2986)
!2999 = !DILocation(line: 558, column: 10, scope: !2986)
!3000 = !DILocation(line: 559, column: 13, scope: !2986)
!3001 = !DILocation(line: 559, column: 7, scope: !2986)
!3002 = !DILocation(line: 559, column: 11, scope: !2986)
!3003 = !DILocation(line: 560, column: 38, scope: !2986)
!3004 = !DILocation(line: 560, column: 17, scope: !2986)
!3005 = !DILocation(line: 560, column: 10, scope: !2986)
!3006 = !DILocation(line: 561, column: 1, scope: !2986)
!3007 = !DILocation(line: 560, column: 3, scope: !2986)
!3008 = distinct !DISubprogram(name: "debug_variable", scope: !3, file: !3, line: 317, type: !3009, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3011)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !653}
!3011 = !{!3012}
!3012 = !DILocalVariable(name: "var", arg: 1, scope: !3008, file: !3, line: 317, type: !653)
!3013 = !DILocation(line: 0, scope: !3008)
!3014 = !DILocation(line: 319, column: 18, scope: !3008)
!3015 = !DILocation(line: 319, column: 3, scope: !3008)
!3016 = !DILocation(line: 320, column: 1, scope: !3008)
!3017 = distinct !DISubprogram(name: "dump_dfa_stats", scope: !3, file: !3, line: 326, type: !2774, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3018)
!3018 = !{!3019, !3020, !3031, !3032, !3033, !3035, !3036, !3037}
!3019 = !DILocalVariable(name: "file", arg: 1, scope: !3017, file: !3, line: 326, type: !2037)
!3020 = !DILocalVariable(name: "dfa_stats", scope: !3017, file: !3, line: 328, type: !3021)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dfa_stats_d", file: !3, line: 53, size: 512, elements: !3022)
!3022 = !{!3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "num_var_anns", scope: !3021, file: !3, line: 55, baseType: !709, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "num_defs", scope: !3021, file: !3, line: 56, baseType: !709, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "num_uses", scope: !3021, file: !3, line: 57, baseType: !709, size: 64, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "num_phis", scope: !3021, file: !3, line: 58, baseType: !709, size: 64, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi_args", scope: !3021, file: !3, line: 59, baseType: !709, size: 64, offset: 256)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_phi_args", scope: !3021, file: !3, line: 60, baseType: !1122, size: 64, offset: 320)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "num_vdefs", scope: !3021, file: !3, line: 61, baseType: !709, size: 64, offset: 384)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "num_vuses", scope: !3021, file: !3, line: 62, baseType: !709, size: 64, offset: 448)
!3031 = !DILocalVariable(name: "size", scope: !3017, file: !3, line: 330, type: !707)
!3032 = !DILocalVariable(name: "total", scope: !3017, file: !3, line: 330, type: !707)
!3033 = !DILocalVariable(name: "fmt_str", scope: !3017, file: !3, line: 331, type: !3034)
!3034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!3035 = !DILocalVariable(name: "fmt_str_1", scope: !3017, file: !3, line: 332, type: !3034)
!3036 = !DILocalVariable(name: "fmt_str_3", scope: !3017, file: !3, line: 333, type: !3034)
!3037 = !DILocalVariable(name: "funcname", scope: !3017, file: !3, line: 334, type: !640)
!3038 = !DILocation(line: 0, scope: !3017)
!3039 = !DILocation(line: 328, column: 3, scope: !3017)
!3040 = !DILocation(line: 335, column: 18, scope: !3017)
!3041 = !DILocation(line: 335, column: 39, scope: !3017)
!3042 = !DILocation(line: 335, column: 7, scope: !3017)
!3043 = !DILocation(line: 337, column: 3, scope: !3017)
!3044 = !DILocation(line: 339, column: 3, scope: !3017)
!3045 = !DILocation(line: 341, column: 3, scope: !3017)
!3046 = !DILocation(line: 342, column: 3, scope: !3017)
!3047 = !DILocation(line: 343, column: 3, scope: !3017)
!3048 = !DILocation(line: 344, column: 3, scope: !3017)
!3049 = !DILocation(line: 346, column: 10, scope: !3017)
!3050 = !DILocation(line: 346, column: 30, scope: !3017)
!3051 = !DILocation(line: 348, column: 68, scope: !3017)
!3052 = !DILocation(line: 349, column: 5, scope: !3017)
!3053 = !DILocation(line: 349, column: 19, scope: !3017)
!3054 = !DILocation(line: 348, column: 3, scope: !3017)
!3055 = !DILocation(line: 351, column: 20, scope: !3017)
!3056 = !DILocation(line: 351, column: 33, scope: !3017)
!3057 = !DILocation(line: 352, column: 9, scope: !3017)
!3058 = !DILocation(line: 354, column: 5, scope: !3017)
!3059 = !DILocation(line: 354, column: 19, scope: !3017)
!3060 = !DILocation(line: 353, column: 3, scope: !3017)
!3061 = !DILocation(line: 356, column: 20, scope: !3017)
!3062 = !DILocation(line: 356, column: 29, scope: !3017)
!3063 = !DILocation(line: 357, column: 9, scope: !3017)
!3064 = !DILocation(line: 359, column: 5, scope: !3017)
!3065 = !DILocation(line: 359, column: 19, scope: !3017)
!3066 = !DILocation(line: 358, column: 3, scope: !3017)
!3067 = !DILocation(line: 361, column: 20, scope: !3017)
!3068 = !DILocation(line: 361, column: 29, scope: !3017)
!3069 = !DILocation(line: 362, column: 9, scope: !3017)
!3070 = !DILocation(line: 364, column: 5, scope: !3017)
!3071 = !DILocation(line: 364, column: 19, scope: !3017)
!3072 = !DILocation(line: 363, column: 3, scope: !3017)
!3073 = !DILocation(line: 366, column: 20, scope: !3017)
!3074 = !DILocation(line: 366, column: 30, scope: !3017)
!3075 = !DILocation(line: 367, column: 9, scope: !3017)
!3076 = !DILocation(line: 369, column: 5, scope: !3017)
!3077 = !DILocation(line: 369, column: 19, scope: !3017)
!3078 = !DILocation(line: 368, column: 3, scope: !3017)
!3079 = !DILocation(line: 371, column: 20, scope: !3017)
!3080 = !DILocation(line: 371, column: 30, scope: !3017)
!3081 = !DILocation(line: 372, column: 9, scope: !3017)
!3082 = !DILocation(line: 374, column: 5, scope: !3017)
!3083 = !DILocation(line: 374, column: 19, scope: !3017)
!3084 = !DILocation(line: 373, column: 3, scope: !3017)
!3085 = !DILocation(line: 376, column: 20, scope: !3017)
!3086 = !DILocation(line: 376, column: 29, scope: !3017)
!3087 = !DILocation(line: 377, column: 9, scope: !3017)
!3088 = !DILocation(line: 379, column: 5, scope: !3017)
!3089 = !DILocation(line: 379, column: 19, scope: !3017)
!3090 = !DILocation(line: 378, column: 3, scope: !3017)
!3091 = !DILocation(line: 381, column: 20, scope: !3017)
!3092 = !DILocation(line: 381, column: 33, scope: !3017)
!3093 = !DILocation(line: 382, column: 9, scope: !3017)
!3094 = !DILocation(line: 384, column: 6, scope: !3017)
!3095 = !DILocation(line: 384, column: 20, scope: !3017)
!3096 = !DILocation(line: 383, column: 3, scope: !3017)
!3097 = !DILocation(line: 386, column: 3, scope: !3017)
!3098 = !DILocation(line: 387, column: 66, scope: !3017)
!3099 = !DILocation(line: 388, column: 5, scope: !3017)
!3100 = !DILocation(line: 387, column: 3, scope: !3017)
!3101 = !DILocation(line: 389, column: 3, scope: !3017)
!3102 = !DILocation(line: 390, column: 3, scope: !3017)
!3103 = !DILocation(line: 392, column: 17, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 392, column: 7)
!3105 = !DILocation(line: 392, column: 7, scope: !3104)
!3106 = !DILocation(line: 392, column: 7, scope: !3017)
!3107 = !DILocation(line: 394, column: 25, scope: !3104)
!3108 = !DILocation(line: 394, column: 7, scope: !3104)
!3109 = !DILocation(line: 394, column: 40, scope: !3104)
!3110 = !DILocation(line: 394, column: 38, scope: !3104)
!3111 = !DILocation(line: 395, column: 24, scope: !3104)
!3112 = !DILocation(line: 393, column: 5, scope: !3104)
!3113 = !DILocation(line: 397, column: 3, scope: !3017)
!3114 = !DILocation(line: 398, column: 1, scope: !3017)
!3115 = distinct !DISubprogram(name: "collect_dfa_stats", scope: !3, file: !3, line: 414, type: !3116, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3119)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !3118}
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3119 = !{!3120, !3121, !3122, !3123, !3124, !3128, !3132}
!3120 = !DILocalVariable(name: "dfa_stats_p", arg: 1, scope: !3115, file: !3, line: 414, type: !3118)
!3121 = !DILocalVariable(name: "bb", scope: !3115, file: !3, line: 416, type: !1399)
!3122 = !DILocalVariable(name: "vi", scope: !3115, file: !3, line: 417, type: !2780)
!3123 = !DILocalVariable(name: "var", scope: !3115, file: !3, line: 418, type: !653)
!3124 = !DILocalVariable(name: "si", scope: !3125, file: !3, line: 432, type: !2457)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 431, column: 5)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 430, column: 3)
!3127 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 430, column: 3)
!3128 = !DILocalVariable(name: "phi", scope: !3129, file: !3, line: 436, type: !977)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 435, column: 2)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 434, column: 7)
!3131 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 434, column: 7)
!3132 = !DILocalVariable(name: "stmt", scope: !3133, file: !3, line: 445, type: !977)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 444, column: 2)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 443, column: 7)
!3135 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 443, column: 7)
!3136 = !DILocation(line: 0, scope: !3115)
!3137 = !DILocation(line: 417, column: 3, scope: !3115)
!3138 = !DILocation(line: 420, column: 3, scope: !3115)
!3139 = !DILocation(line: 422, column: 11, scope: !3115)
!3140 = !DILocation(line: 422, column: 3, scope: !3115)
!3141 = !DILocation(line: 425, column: 3, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 425, column: 3)
!3143 = !DILocation(line: 0, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 426, column: 9)
!3145 = distinct !DILexicalBlock(scope: !3142, file: !3, line: 425, column: 3)
!3146 = !DILocation(line: 0, scope: !3142)
!3147 = !DILocation(line: 425, column: 3, scope: !3145)
!3148 = !DILocation(line: 426, column: 9, scope: !3144)
!3149 = !DILocation(line: 426, column: 9, scope: !3145)
!3150 = !DILocation(line: 427, column: 32, scope: !3144)
!3151 = !DILocation(line: 427, column: 7, scope: !3144)
!3152 = distinct !{!3152, !3141, !3153}
!3153 = !DILocation(line: 427, column: 32, scope: !3142)
!3154 = !DILocation(line: 430, column: 3, scope: !3127)
!3155 = !DILocation(line: 0, scope: !3125)
!3156 = !DILocation(line: 0, scope: !3131)
!3157 = !DILocation(line: 0, scope: !3129)
!3158 = !DILocation(line: 0, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 439, column: 8)
!3160 = !DILocation(line: 0, scope: !3135)
!3161 = !DILocation(line: 0, scope: !3133)
!3162 = !DILocation(line: 430, column: 3, scope: !3126)
!3163 = !DILocation(line: 0, scope: !3127)
!3164 = !DILocation(line: 432, column: 7, scope: !3125)
!3165 = !DILocation(line: 434, column: 17, scope: !3131)
!3166 = !DILocation(line: 434, column: 12, scope: !3131)
!3167 = !DILocation(line: 434, column: 39, scope: !3130)
!3168 = !DILocation(line: 434, column: 38, scope: !3130)
!3169 = !DILocation(line: 434, column: 7, scope: !3131)
!3170 = !DILocation(line: 436, column: 17, scope: !3129)
!3171 = !DILocation(line: 437, column: 25, scope: !3129)
!3172 = !DILocation(line: 438, column: 33, scope: !3129)
!3173 = !DILocation(line: 438, column: 30, scope: !3129)
!3174 = !DILocation(line: 439, column: 8, scope: !3159)
!3175 = !DILocation(line: 439, column: 49, scope: !3159)
!3176 = !DILocation(line: 439, column: 34, scope: !3159)
!3177 = !DILocation(line: 439, column: 8, scope: !3129)
!3178 = !DILocation(line: 440, column: 38, scope: !3159)
!3179 = !DILocation(line: 440, column: 36, scope: !3159)
!3180 = !DILocation(line: 440, column: 6, scope: !3159)
!3181 = !DILocation(line: 434, column: 55, scope: !3130)
!3182 = !DILocation(line: 434, column: 7, scope: !3130)
!3183 = distinct !{!3183, !3169, !3184}
!3184 = !DILocation(line: 441, column: 2, scope: !3131)
!3185 = !DILocation(line: 443, column: 17, scope: !3135)
!3186 = !DILocation(line: 443, column: 12, scope: !3135)
!3187 = !DILocation(line: 443, column: 37, scope: !3134)
!3188 = !DILocation(line: 443, column: 36, scope: !3134)
!3189 = !DILocation(line: 443, column: 7, scope: !3135)
!3190 = !DILocation(line: 445, column: 18, scope: !3133)
!3191 = !DILocation(line: 446, column: 29, scope: !3133)
!3192 = !DILocation(line: 446, column: 26, scope: !3133)
!3193 = !DILocation(line: 447, column: 29, scope: !3133)
!3194 = !DILocation(line: 447, column: 26, scope: !3133)
!3195 = !DILocation(line: 448, column: 30, scope: !3133)
!3196 = !DILocation(line: 448, column: 27, scope: !3133)
!3197 = !DILocation(line: 449, column: 30, scope: !3133)
!3198 = !DILocation(line: 449, column: 27, scope: !3133)
!3199 = !DILocation(line: 443, column: 53, scope: !3134)
!3200 = !DILocation(line: 443, column: 7, scope: !3134)
!3201 = distinct !{!3201, !3189, !3202}
!3202 = !DILocation(line: 450, column: 2, scope: !3135)
!3203 = !DILocation(line: 451, column: 5, scope: !3126)
!3204 = !DILocation(line: 0, scope: !3126)
!3205 = distinct !{!3205, !3154, !3206}
!3206 = !DILocation(line: 451, column: 5, scope: !3127)
!3207 = !DILocation(line: 452, column: 1, scope: !3115)
!3208 = distinct !DISubprogram(name: "debug_dfa_stats", scope: !3, file: !3, line: 404, type: !2527, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!3209 = !DILocation(line: 406, column: 19, scope: !3208)
!3210 = !DILocation(line: 406, column: 3, scope: !3208)
!3211 = !DILocation(line: 407, column: 1, scope: !3208)
!3212 = distinct !DISubprogram(name: "find_referenced_vars_in", scope: !3, file: !3, line: 487, type: !3213, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3215)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{null, !977}
!3215 = !{!3216, !3217, !3218}
!3216 = !DILocalVariable(name: "stmt", arg: 1, scope: !3212, file: !3, line: 487, type: !977)
!3217 = !DILocalVariable(name: "i", scope: !3212, file: !3, line: 489, type: !1122)
!3218 = !DILocalVariable(name: "arg", scope: !3219, file: !3, line: 502, type: !653)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 501, column: 2)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 500, column: 7)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 500, column: 7)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 497, column: 5)
!3223 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 491, column: 7)
!3224 = !DILocation(line: 0, scope: !3212)
!3225 = !DILocation(line: 491, column: 7, scope: !3223)
!3226 = !DILocation(line: 491, column: 26, scope: !3223)
!3227 = !DILocation(line: 491, column: 7, scope: !3212)
!3228 = !DILocation(line: 493, column: 7, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 493, column: 7)
!3230 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 492, column: 5)
!3231 = !DILocation(line: 0, scope: !3229)
!3232 = !DILocation(line: 493, column: 23, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 493, column: 7)
!3234 = !DILocation(line: 493, column: 21, scope: !3233)
!3235 = !DILocation(line: 494, column: 2, scope: !3233)
!3236 = !DILocation(line: 493, column: 47, scope: !3233)
!3237 = !DILocation(line: 493, column: 7, scope: !3233)
!3238 = distinct !{!3238, !3228, !3239}
!3239 = !DILocation(line: 494, column: 2, scope: !3229)
!3240 = !DILocation(line: 498, column: 7, scope: !3222)
!3241 = !DILocation(line: 0, scope: !3219)
!3242 = !DILocation(line: 500, column: 12, scope: !3221)
!3243 = !DILocation(line: 0, scope: !3221)
!3244 = !DILocation(line: 500, column: 23, scope: !3220)
!3245 = !DILocation(line: 500, column: 21, scope: !3220)
!3246 = !DILocation(line: 500, column: 7, scope: !3221)
!3247 = !DILocation(line: 502, column: 4, scope: !3219)
!3248 = !DILocation(line: 502, column: 15, scope: !3219)
!3249 = !DILocation(line: 502, column: 9, scope: !3219)
!3250 = !DILocation(line: 503, column: 4, scope: !3219)
!3251 = !DILocation(line: 504, column: 2, scope: !3220)
!3252 = !DILocation(line: 500, column: 52, scope: !3220)
!3253 = !DILocation(line: 500, column: 7, scope: !3220)
!3254 = distinct !{!3254, !3246, !3255}
!3255 = !DILocation(line: 504, column: 2, scope: !3221)
!3256 = !DILocation(line: 506, column: 1, scope: !3212)
!3257 = distinct !DISubprogram(name: "gimple_code", scope: !568, file: !568, line: 1052, type: !3258, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3261)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!567, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !654, line: 60, baseType: !1972)
!3261 = !{!3262}
!3262 = !DILocalVariable(name: "g", arg: 1, scope: !3257, file: !568, line: 1052, type: !3260)
!3263 = !DILocation(line: 0, scope: !3257)
!3264 = !DILocation(line: 1054, column: 20, scope: !3257)
!3265 = !DILocation(line: 1054, column: 3, scope: !3257)
!3266 = distinct !DISubprogram(name: "gimple_num_ops", scope: !568, file: !568, line: 1596, type: !3267, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3269)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!7, !3260}
!3269 = !{!3270}
!3270 = !DILocalVariable(name: "gs", arg: 1, scope: !3266, file: !568, line: 1596, type: !3260)
!3271 = !DILocation(line: 0, scope: !3266)
!3272 = !DILocation(line: 1598, column: 21, scope: !3266)
!3273 = !DILocation(line: 1598, column: 3, scope: !3266)
!3274 = distinct !DISubprogram(name: "gimple_op_ptr", scope: !568, file: !568, line: 1647, type: !3275, scopeLine: 1648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!1011, !3260, !7}
!3277 = !{!3278, !3279}
!3278 = !DILocalVariable(name: "gs", arg: 1, scope: !3274, file: !568, line: 1647, type: !3260)
!3279 = !DILocalVariable(name: "i", arg: 2, scope: !3274, file: !568, line: 1647, type: !7)
!3280 = !DILocation(line: 0, scope: !3274)
!3281 = !DILocation(line: 1649, column: 7, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3274, file: !568, line: 1649, column: 7)
!3283 = !DILocation(line: 1649, column: 7, scope: !3274)
!3284 = !DILocation(line: 1654, column: 14, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3282, file: !568, line: 1650, column: 5)
!3286 = !DILocation(line: 1654, column: 50, scope: !3285)
!3287 = !DILocation(line: 1654, column: 7, scope: !3285)
!3288 = !DILocation(line: 0, scope: !3282)
!3289 = !DILocation(line: 1658, column: 1, scope: !3274)
!3290 = distinct !DISubprogram(name: "find_vars_r", scope: !3, file: !3, line: 462, type: !3291, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3294)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!653, !1011, !3293, !639}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!3294 = !{!3295, !3296, !3297}
!3295 = !DILocalVariable(name: "tp", arg: 1, scope: !3290, file: !3, line: 462, type: !1011)
!3296 = !DILocalVariable(name: "walk_subtrees", arg: 2, scope: !3290, file: !3, line: 462, type: !3293)
!3297 = !DILocalVariable(name: "data", arg: 3, scope: !3290, file: !3, line: 462, type: !639)
!3298 = !DILocation(line: 0, scope: !3290)
!3299 = !DILocation(line: 466, column: 7, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 466, column: 7)
!3301 = !DILocation(line: 466, column: 23, scope: !3300)
!3302 = !DILocation(line: 466, column: 7, scope: !3290)
!3303 = !DILocation(line: 467, column: 25, scope: !3300)
!3304 = !DILocation(line: 467, column: 5, scope: !3300)
!3305 = !DILocation(line: 471, column: 12, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 471, column: 12)
!3307 = !DILocation(line: 471, column: 12, scope: !3300)
!3308 = !DILocation(line: 472, column: 5, scope: !3306)
!3309 = !DILocation(line: 476, column: 12, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 476, column: 12)
!3311 = !DILocation(line: 476, column: 36, scope: !3310)
!3312 = !DILocation(line: 476, column: 39, scope: !3310)
!3313 = !DILocation(line: 476, column: 12, scope: !3306)
!3314 = !DILocation(line: 477, column: 20, scope: !3310)
!3315 = !DILocation(line: 477, column: 5, scope: !3310)
!3316 = !DILocation(line: 479, column: 3, scope: !3290)
!3317 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !568, file: !568, line: 3080, type: !3318, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!1011, !977}
!3320 = !{!3321}
!3321 = !DILocalVariable(name: "gs", arg: 1, scope: !3317, file: !568, line: 3080, type: !977)
!3322 = !DILocation(line: 0, scope: !3317)
!3323 = !DILocation(line: 3083, column: 26, scope: !3317)
!3324 = !DILocation(line: 3083, column: 3, scope: !3317)
!3325 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !568, file: !568, line: 3061, type: !3267, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3326)
!3326 = !{!3327}
!3327 = !DILocalVariable(name: "gs", arg: 1, scope: !3325, file: !568, line: 3061, type: !3260)
!3328 = !DILocation(line: 0, scope: !3325)
!3329 = !DILocation(line: 3064, column: 25, scope: !3325)
!3330 = !DILocation(line: 3064, column: 3, scope: !3325)
!3331 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !2567, file: !2567, line: 450, type: !3332, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!653, !977, !1122}
!3334 = !{!3335, !3336, !3337}
!3335 = !DILocalVariable(name: "gs", arg: 1, scope: !3331, file: !2567, line: 450, type: !977)
!3336 = !DILocalVariable(name: "index", arg: 2, scope: !3331, file: !2567, line: 450, type: !1122)
!3337 = !DILocalVariable(name: "pd", scope: !3331, file: !2567, line: 452, type: !3338)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!3339 = !DILocation(line: 0, scope: !3331)
!3340 = !DILocation(line: 452, column: 46, scope: !3331)
!3341 = !DILocation(line: 452, column: 26, scope: !3331)
!3342 = !DILocation(line: 453, column: 33, scope: !3331)
!3343 = !DILocation(line: 453, column: 10, scope: !3331)
!3344 = !DILocation(line: 453, column: 3, scope: !3331)
!3345 = distinct !DISubprogram(name: "referenced_var_lookup", scope: !3, file: !3, line: 513, type: !3346, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3348)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!653, !7}
!3348 = !{!3349, !3350, !3351}
!3349 = !DILocalVariable(name: "uid", arg: 1, scope: !3345, file: !3, line: 513, type: !7)
!3350 = !DILocalVariable(name: "h", scope: !3345, file: !3, line: 515, type: !653)
!3351 = !DILocalVariable(name: "in", scope: !3345, file: !3, line: 516, type: !774)
!3352 = !DILocation(line: 0, scope: !3345)
!3353 = !DILocation(line: 516, column: 3, scope: !3345)
!3354 = !DILocation(line: 517, column: 6, scope: !3345)
!3355 = !DILocation(line: 517, column: 10, scope: !3345)
!3356 = !DILocation(line: 518, column: 59, scope: !3345)
!3357 = !DILocation(line: 518, column: 35, scope: !3345)
!3358 = !DILocation(line: 518, column: 14, scope: !3345)
!3359 = !DILocation(line: 518, column: 7, scope: !3345)
!3360 = !DILocation(line: 519, column: 3, scope: !3345)
!3361 = !DILocation(line: 521, column: 1, scope: !3345)
!3362 = !DILocation(line: 520, column: 3, scope: !3345)
!3363 = distinct !DISubprogram(name: "referenced_var_check_and_insert", scope: !3, file: !3, line: 527, type: !2753, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3364)
!3364 = !{!3365, !3366, !3367, !3368, !3369}
!3365 = !DILocalVariable(name: "to", arg: 1, scope: !3363, file: !3, line: 527, type: !653)
!3366 = !DILocalVariable(name: "h", scope: !3363, file: !3, line: 529, type: !653)
!3367 = !DILocalVariable(name: "loc", scope: !3363, file: !3, line: 529, type: !1011)
!3368 = !DILocalVariable(name: "in", scope: !3363, file: !3, line: 530, type: !774)
!3369 = !DILocalVariable(name: "uid", scope: !3363, file: !3, line: 531, type: !7)
!3370 = !DILocation(line: 0, scope: !3363)
!3371 = !DILocation(line: 530, column: 3, scope: !3363)
!3372 = !DILocation(line: 531, column: 22, scope: !3363)
!3373 = !DILocation(line: 533, column: 6, scope: !3363)
!3374 = !DILocation(line: 533, column: 10, scope: !3363)
!3375 = !DILocation(line: 534, column: 59, scope: !3363)
!3376 = !DILocation(line: 534, column: 35, scope: !3363)
!3377 = !DILocation(line: 534, column: 14, scope: !3363)
!3378 = !DILocation(line: 535, column: 7, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 535, column: 7)
!3380 = !DILocation(line: 535, column: 7, scope: !3363)
!3381 = !DILocation(line: 534, column: 7, scope: !3363)
!3382 = !DILocation(line: 539, column: 7, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 536, column: 5)
!3384 = !DILocation(line: 543, column: 68, scope: !3363)
!3385 = !DILocation(line: 543, column: 44, scope: !3363)
!3386 = !DILocation(line: 543, column: 18, scope: !3363)
!3387 = !DILocation(line: 543, column: 9, scope: !3363)
!3388 = !DILocation(line: 545, column: 8, scope: !3363)
!3389 = !DILocation(line: 546, column: 3, scope: !3363)
!3390 = !DILocation(line: 547, column: 1, scope: !3363)
!3391 = distinct !DISubprogram(name: "set_default_def", scope: !3, file: !3, line: 566, type: !3392, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{null, !653, !653}
!3394 = !{!3395, !3396, !3397, !3398, !3399}
!3395 = !DILocalVariable(name: "var", arg: 1, scope: !3391, file: !3, line: 566, type: !653)
!3396 = !DILocalVariable(name: "def", arg: 2, scope: !3391, file: !3, line: 566, type: !653)
!3397 = !DILocalVariable(name: "ind", scope: !3391, file: !3, line: 568, type: !774)
!3398 = !DILocalVariable(name: "in", scope: !3391, file: !3, line: 569, type: !1686)
!3399 = !DILocalVariable(name: "loc", scope: !3391, file: !3, line: 570, type: !1453)
!3400 = !DILocation(line: 0, scope: !3391)
!3401 = !DILocation(line: 568, column: 3, scope: !3391)
!3402 = !DILocation(line: 569, column: 3, scope: !3391)
!3403 = !DILocation(line: 572, column: 3, scope: !3391)
!3404 = !DILocation(line: 573, column: 6, scope: !3391)
!3405 = !DILocation(line: 573, column: 10, scope: !3391)
!3406 = !DILocation(line: 574, column: 13, scope: !3391)
!3407 = !DILocation(line: 574, column: 7, scope: !3391)
!3408 = !DILocation(line: 574, column: 11, scope: !3391)
!3409 = !DILocation(line: 575, column: 8, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 575, column: 7)
!3411 = !DILocation(line: 575, column: 7, scope: !3391)
!3412 = !DILocation(line: 577, column: 39, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 576, column: 5)
!3414 = !DILocation(line: 577, column: 13, scope: !3413)
!3415 = !DILocation(line: 579, column: 7, scope: !3413)
!3416 = !DILocation(line: 580, column: 45, scope: !3413)
!3417 = !DILocation(line: 580, column: 24, scope: !3413)
!3418 = !DILocation(line: 580, column: 7, scope: !3413)
!3419 = !DILocation(line: 581, column: 7, scope: !3413)
!3420 = !DILocation(line: 583, column: 3, scope: !3391)
!3421 = !DILocation(line: 585, column: 35, scope: !3391)
!3422 = !DILocation(line: 584, column: 35, scope: !3391)
!3423 = !DILocation(line: 584, column: 9, scope: !3391)
!3424 = !DILocation(line: 588, column: 7, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 588, column: 7)
!3426 = !DILocation(line: 588, column: 7, scope: !3391)
!3427 = !DILocation(line: 589, column: 45, scope: !3425)
!3428 = !DILocation(line: 589, column: 5, scope: !3425)
!3429 = !DILocation(line: 590, column: 3, scope: !3391)
!3430 = !DILocation(line: 590, column: 17, scope: !3391)
!3431 = !DILocation(line: 593, column: 34, scope: !3391)
!3432 = !DILocation(line: 594, column: 1, scope: !3391)
!3433 = distinct !DISubprogram(name: "get_var_ann", scope: !2567, file: !2567, line: 141, type: !2513, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3434)
!3434 = !{!3435, !3436}
!3435 = !DILocalVariable(name: "var", arg: 1, scope: !3433, file: !2567, line: 141, type: !653)
!3436 = !DILocalVariable(name: "p", scope: !3433, file: !2567, line: 143, type: !3437)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!3438 = !DILocation(line: 0, scope: !3433)
!3439 = !DILocation(line: 143, column: 18, scope: !3433)
!3440 = !DILocation(line: 144, column: 3, scope: !3433)
!3441 = !DILocation(line: 145, column: 10, scope: !3433)
!3442 = !DILocation(line: 145, column: 20, scope: !3433)
!3443 = !DILocation(line: 145, column: 3, scope: !3433)
!3444 = distinct !DISubprogram(name: "remove_referenced_var", scope: !3, file: !3, line: 625, type: !3009, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3445)
!3445 = !{!3446, !3447, !3448, !3449, !3450}
!3446 = !DILocalVariable(name: "var", arg: 1, scope: !3444, file: !3, line: 625, type: !653)
!3447 = !DILocalVariable(name: "v_ann", scope: !3444, file: !3, line: 627, type: !2515)
!3448 = !DILocalVariable(name: "in", scope: !3444, file: !3, line: 628, type: !774)
!3449 = !DILocalVariable(name: "loc", scope: !3444, file: !3, line: 629, type: !1453)
!3450 = !DILocalVariable(name: "uid", scope: !3444, file: !3, line: 630, type: !7)
!3451 = !DILocation(line: 0, scope: !3444)
!3452 = !DILocation(line: 628, column: 3, scope: !3444)
!3453 = !DILocation(line: 630, column: 22, scope: !3444)
!3454 = !DILocation(line: 633, column: 8, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 633, column: 7)
!3456 = !DILocation(line: 634, column: 7, scope: !3455)
!3457 = !DILocation(line: 634, column: 19, scope: !3455)
!3458 = !DILocation(line: 634, column: 17, scope: !3455)
!3459 = !DILocation(line: 633, column: 7, scope: !3444)
!3460 = !DILocation(line: 636, column: 17, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 635, column: 5)
!3462 = !DILocation(line: 636, column: 7, scope: !3461)
!3463 = !DILocation(line: 637, column: 8, scope: !3461)
!3464 = !DILocation(line: 637, column: 31, scope: !3461)
!3465 = !DILocation(line: 638, column: 5, scope: !3461)
!3466 = !DILocation(line: 639, column: 3, scope: !3444)
!3467 = !DILocation(line: 640, column: 6, scope: !3444)
!3468 = !DILocation(line: 640, column: 10, scope: !3444)
!3469 = !DILocation(line: 641, column: 59, scope: !3444)
!3470 = !DILocation(line: 641, column: 35, scope: !3444)
!3471 = !DILocation(line: 641, column: 9, scope: !3444)
!3472 = !DILocation(line: 643, column: 44, scope: !3444)
!3473 = !DILocation(line: 643, column: 20, scope: !3444)
!3474 = !DILocation(line: 643, column: 3, scope: !3444)
!3475 = !DILocation(line: 644, column: 1, scope: !3444)
!3476 = distinct !DISubprogram(name: "get_virtual_var", scope: !3, file: !3, line: 650, type: !3477, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!653, !653}
!3479 = !{!3480}
!3480 = !DILocalVariable(name: "var", arg: 1, scope: !3476, file: !3, line: 650, type: !653)
!3481 = !DILocation(line: 0, scope: !3476)
!3482 = !DILocation(line: 652, column: 3, scope: !3476)
!3483 = !DILocation(line: 654, column: 7, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 654, column: 7)
!3485 = !DILocation(line: 654, column: 23, scope: !3484)
!3486 = !DILocation(line: 654, column: 7, scope: !3476)
!3487 = !DILocation(line: 655, column: 11, scope: !3484)
!3488 = !DILocation(line: 655, column: 5, scope: !3484)
!3489 = !DILocation(line: 657, column: 3, scope: !3476)
!3490 = !DILocation(line: 657, column: 10, scope: !3476)
!3491 = !DILocation(line: 657, column: 26, scope: !3476)
!3492 = !DILocation(line: 657, column: 43, scope: !3476)
!3493 = !DILocation(line: 657, column: 62, scope: !3476)
!3494 = !DILocation(line: 658, column: 3, scope: !3476)
!3495 = !DILocation(line: 658, column: 6, scope: !3476)
!3496 = !DILocation(line: 659, column: 11, scope: !3476)
!3497 = distinct !{!3497, !3489, !3496}
!3498 = !DILocation(line: 664, column: 3, scope: !3476)
!3499 = !DILocation(line: 665, column: 3, scope: !3476)
!3500 = !DILocation(line: 667, column: 3, scope: !3476)
!3501 = distinct !DISubprogram(name: "handled_component_p", scope: !318, file: !318, line: 4551, type: !2951, scopeLine: 4552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3502)
!3502 = !{!3503}
!3503 = !DILocalVariable(name: "t", arg: 1, scope: !3501, file: !318, line: 4551, type: !2939)
!3504 = !DILocation(line: 0, scope: !3501)
!3505 = !DILocation(line: 4553, column: 11, scope: !3501)
!3506 = !DILocation(line: 4553, column: 3, scope: !3501)
!3507 = !DILocation(line: 4565, column: 7, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3501, file: !318, line: 4554, column: 5)
!3509 = !DILocation(line: 0, scope: !3508)
!3510 = !DILocation(line: 4567, column: 1, scope: !3501)
!3511 = distinct !DISubprogram(name: "mark_symbols_for_renaming", scope: !3, file: !3, line: 673, type: !3213, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3512)
!3512 = !{!3513, !3514, !3515}
!3513 = !DILocalVariable(name: "stmt", arg: 1, scope: !3511, file: !3, line: 673, type: !977)
!3514 = !DILocalVariable(name: "op", scope: !3511, file: !3, line: 675, type: !653)
!3515 = !DILocalVariable(name: "iter", scope: !3511, file: !3, line: 676, type: !3516)
!3516 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !561, line: 140, baseType: !3517)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !561, line: 131, size: 320, elements: !3518)
!3518 = !{!3519, !3520, !3521, !3523, !3525, !3526, !3527}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3517, file: !561, line: 133, baseType: !634, size: 8)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !3517, file: !561, line: 134, baseType: !560, size: 32, offset: 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !3517, file: !561, line: 135, baseType: !3522, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !561, line: 42, baseType: !1006)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !3517, file: !561, line: 136, baseType: !3524, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !561, line: 50, baseType: !1013)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !3517, file: !561, line: 137, baseType: !635, size: 32, offset: 192)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !3517, file: !561, line: 138, baseType: !635, size: 32, offset: 224)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !3517, file: !561, line: 139, baseType: !977, size: 64, offset: 256)
!3528 = !DILocation(line: 0, scope: !3511)
!3529 = !DILocation(line: 676, column: 3, scope: !3511)
!3530 = !DILocation(line: 678, column: 3, scope: !3511)
!3531 = !DILocation(line: 681, column: 3, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 681, column: 3)
!3533 = !DILocation(line: 0, scope: !3532)
!3534 = !DILocation(line: 681, column: 3, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 681, column: 3)
!3536 = !DILocation(line: 682, column: 9, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 682, column: 9)
!3538 = !DILocation(line: 682, column: 9, scope: !3535)
!3539 = !DILocation(line: 683, column: 7, scope: !3537)
!3540 = distinct !{!3540, !3531, !3541}
!3541 = !DILocation(line: 683, column: 32, scope: !3532)
!3542 = !DILocation(line: 684, column: 1, scope: !3511)
!3543 = distinct !DISubprogram(name: "update_stmt", scope: !568, file: !568, line: 1456, type: !3213, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3544)
!3544 = !{!3545}
!3545 = !DILocalVariable(name: "s", arg: 1, scope: !3543, file: !568, line: 1456, type: !977)
!3546 = !DILocation(line: 0, scope: !3543)
!3547 = !DILocation(line: 1458, column: 7, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3543, file: !568, line: 1458, column: 7)
!3549 = !DILocation(line: 1458, column: 7, scope: !3543)
!3550 = !DILocation(line: 1460, column: 7, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3548, file: !568, line: 1459, column: 5)
!3552 = !DILocation(line: 1461, column: 7, scope: !3551)
!3553 = !DILocation(line: 1462, column: 5, scope: !3551)
!3554 = !DILocation(line: 1463, column: 1, scope: !3543)
!3555 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !2567, file: !2567, line: 792, type: !3556, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3559)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!653, !3558, !977, !635}
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3559 = !{!3560, !3561, !3562}
!3560 = !DILocalVariable(name: "ptr", arg: 1, scope: !3555, file: !2567, line: 792, type: !3558)
!3561 = !DILocalVariable(name: "stmt", arg: 2, scope: !3555, file: !2567, line: 792, type: !977)
!3562 = !DILocalVariable(name: "flags", arg: 3, scope: !3555, file: !2567, line: 792, type: !635)
!3563 = !DILocation(line: 0, scope: !3555)
!3564 = !DILocation(line: 794, column: 3, scope: !3555)
!3565 = !DILocation(line: 795, column: 8, scope: !3555)
!3566 = !DILocation(line: 795, column: 18, scope: !3555)
!3567 = !DILocation(line: 796, column: 10, scope: !3555)
!3568 = !DILocation(line: 796, column: 3, scope: !3555)
!3569 = distinct !DISubprogram(name: "op_iter_done", scope: !2567, file: !2567, line: 652, type: !3570, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3574)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!634, !3572}
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3516)
!3574 = !{!3575}
!3575 = !DILocalVariable(name: "ptr", arg: 1, scope: !3569, file: !2567, line: 652, type: !3572)
!3576 = !DILocation(line: 0, scope: !3569)
!3577 = !DILocation(line: 654, column: 15, scope: !3569)
!3578 = !DILocation(line: 654, column: 3, scope: !3569)
!3579 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !2567, file: !2567, line: 699, type: !3580, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!653, !3558}
!3582 = !{!3583, !3584}
!3583 = !DILocalVariable(name: "ptr", arg: 1, scope: !3579, file: !2567, line: 699, type: !3558)
!3584 = !DILocalVariable(name: "val", scope: !3579, file: !2567, line: 701, type: !653)
!3585 = !DILocation(line: 0, scope: !3579)
!3586 = !DILocation(line: 705, column: 12, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3579, file: !2567, line: 705, column: 7)
!3588 = !DILocation(line: 705, column: 7, scope: !3587)
!3589 = !DILocation(line: 705, column: 7, scope: !3579)
!3590 = !DILocation(line: 707, column: 13, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3587, file: !2567, line: 706, column: 5)
!3592 = !DILocation(line: 708, column: 24, scope: !3591)
!3593 = !DILocation(line: 708, column: 30, scope: !3591)
!3594 = !DILocation(line: 708, column: 17, scope: !3591)
!3595 = !DILocation(line: 709, column: 7, scope: !3591)
!3596 = !DILocation(line: 711, column: 12, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3579, file: !2567, line: 711, column: 7)
!3598 = !DILocation(line: 711, column: 7, scope: !3597)
!3599 = !DILocation(line: 711, column: 7, scope: !3579)
!3600 = !DILocation(line: 713, column: 13, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3597, file: !2567, line: 712, column: 5)
!3602 = !DILocation(line: 714, column: 24, scope: !3601)
!3603 = !DILocation(line: 714, column: 30, scope: !3601)
!3604 = !DILocation(line: 714, column: 17, scope: !3601)
!3605 = !DILocation(line: 715, column: 7, scope: !3601)
!3606 = !DILocation(line: 718, column: 8, scope: !3579)
!3607 = !DILocation(line: 718, column: 13, scope: !3579)
!3608 = !DILocation(line: 719, column: 3, scope: !3579)
!3609 = !DILocation(line: 721, column: 1, scope: !3579)
!3610 = distinct !DISubprogram(name: "find_new_referenced_vars", scope: !3, file: !3, line: 713, type: !3213, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3611)
!3611 = !{!3612}
!3612 = !DILocalVariable(name: "stmt", arg: 1, scope: !3610, file: !3, line: 713, type: !977)
!3613 = !DILocation(line: 0, scope: !3610)
!3614 = !DILocation(line: 715, column: 3, scope: !3610)
!3615 = !DILocation(line: 716, column: 1, scope: !3610)
!3616 = distinct !DISubprogram(name: "find_new_referenced_vars_1", scope: !3, file: !3, line: 692, type: !3291, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3617)
!3617 = !{!3618, !3619, !3620, !3621}
!3618 = !DILocalVariable(name: "tp", arg: 1, scope: !3616, file: !3, line: 692, type: !1011)
!3619 = !DILocalVariable(name: "walk_subtrees", arg: 2, scope: !3616, file: !3, line: 692, type: !3293)
!3620 = !DILocalVariable(name: "data", arg: 3, scope: !3616, file: !3, line: 693, type: !639)
!3621 = !DILocalVariable(name: "t", scope: !3616, file: !3, line: 695, type: !653)
!3622 = !DILocation(line: 0, scope: !3616)
!3623 = !DILocation(line: 695, column: 12, scope: !3616)
!3624 = !DILocation(line: 697, column: 7, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 697, column: 7)
!3626 = !DILocation(line: 697, column: 21, scope: !3625)
!3627 = !DILocation(line: 697, column: 33, scope: !3625)
!3628 = !DILocation(line: 697, column: 37, scope: !3625)
!3629 = !DILocation(line: 697, column: 7, scope: !3616)
!3630 = !DILocation(line: 699, column: 7, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 698, column: 5)
!3632 = !DILocation(line: 700, column: 7, scope: !3631)
!3633 = !DILocation(line: 701, column: 5, scope: !3631)
!3634 = !DILocation(line: 703, column: 7, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 703, column: 7)
!3636 = !DILocation(line: 703, column: 7, scope: !3616)
!3637 = !DILocation(line: 704, column: 20, scope: !3635)
!3638 = !DILocation(line: 704, column: 5, scope: !3635)
!3639 = !DILocation(line: 706, column: 3, scope: !3616)
!3640 = distinct !DISubprogram(name: "get_ref_base_and_extent", scope: !3, file: !3, line: 726, type: !3641, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3644)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!653, !653, !3643, !3643, !3643}
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3659, !3663, !3664, !3667, !3670, !3671, !3674, !3675, !3677, !3679, !3680, !3681, !3684, !3686}
!3645 = !DILocalVariable(name: "exp", arg: 1, scope: !3640, file: !3, line: 726, type: !653)
!3646 = !DILocalVariable(name: "poffset", arg: 2, scope: !3640, file: !3, line: 726, type: !3643)
!3647 = !DILocalVariable(name: "psize", arg: 3, scope: !3640, file: !3, line: 727, type: !3643)
!3648 = !DILocalVariable(name: "pmax_size", arg: 4, scope: !3640, file: !3, line: 728, type: !3643)
!3649 = !DILocalVariable(name: "bitsize", scope: !3640, file: !3, line: 730, type: !709)
!3650 = !DILocalVariable(name: "maxsize", scope: !3640, file: !3, line: 731, type: !709)
!3651 = !DILocalVariable(name: "size_tree", scope: !3640, file: !3, line: 732, type: !653)
!3652 = !DILocalVariable(name: "bit_offset", scope: !3640, file: !3, line: 733, type: !709)
!3653 = !DILocalVariable(name: "seen_variable_array_ref", scope: !3640, file: !3, line: 734, type: !634)
!3654 = !DILocalVariable(name: "mode", scope: !3655, file: !3, line: 743, type: !189)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 742, column: 5)
!3656 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 741, column: 12)
!3657 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 739, column: 12)
!3658 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 737, column: 7)
!3659 = !DILocalVariable(name: "field", scope: !3660, file: !3, line: 773, type: !653)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 772, column: 4)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !3, line: 766, column: 2)
!3662 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 764, column: 5)
!3663 = !DILocalVariable(name: "this_offset", scope: !3660, file: !3, line: 774, type: !653)
!3664 = !DILocalVariable(name: "hthis_offset", scope: !3665, file: !3, line: 780, type: !709)
!3665 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 779, column: 8)
!3666 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 776, column: 10)
!3667 = !DILocalVariable(name: "stype", scope: !3668, file: !3, line: 793, type: !653)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 792, column: 5)
!3669 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 790, column: 7)
!3670 = !DILocalVariable(name: "next", scope: !3668, file: !3, line: 794, type: !653)
!3671 = !DILocalVariable(name: "fsize", scope: !3672, file: !3, line: 800, type: !653)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !3, line: 799, column: 9)
!3673 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 797, column: 11)
!3674 = !DILocalVariable(name: "ssize", scope: !3672, file: !3, line: 801, type: !653)
!3675 = !DILocalVariable(name: "csize", scope: !3676, file: !3, line: 814, type: !653)
!3676 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 813, column: 8)
!3677 = !DILocalVariable(name: "index", scope: !3678, file: !3, line: 829, type: !653)
!3678 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 828, column: 4)
!3679 = !DILocalVariable(name: "low_bound", scope: !3678, file: !3, line: 830, type: !653)
!3680 = !DILocalVariable(name: "unit_size", scope: !3678, file: !3, line: 830, type: !653)
!3681 = !DILocalVariable(name: "hindex", scope: !3682, file: !3, line: 840, type: !709)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 839, column: 8)
!3683 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 833, column: 10)
!3684 = !DILocalVariable(name: "asize", scope: !3685, file: !3, line: 854, type: !653)
!3685 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 853, column: 8)
!3686 = !DILabel(scope: !3640, name: "done", file: !3, line: 886)
!3687 = !DILocation(line: 0, scope: !3640)
!3688 = !DILocation(line: 737, column: 7, scope: !3658)
!3689 = !DILocation(line: 737, column: 23, scope: !3658)
!3690 = !DILocation(line: 737, column: 7, scope: !3640)
!3691 = !DILocation(line: 738, column: 17, scope: !3658)
!3692 = !DILocation(line: 738, column: 5, scope: !3658)
!3693 = !DILocation(line: 739, column: 28, scope: !3657)
!3694 = !DILocation(line: 739, column: 12, scope: !3658)
!3695 = !DILocation(line: 740, column: 17, scope: !3657)
!3696 = !DILocation(line: 740, column: 5, scope: !3657)
!3697 = !DILocation(line: 741, column: 13, scope: !3656)
!3698 = !DILocation(line: 741, column: 12, scope: !3657)
!3699 = !DILocation(line: 743, column: 32, scope: !3655)
!3700 = !DILocation(line: 0, scope: !3655)
!3701 = !DILocation(line: 744, column: 16, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 744, column: 11)
!3703 = !DILocation(line: 744, column: 11, scope: !3655)
!3704 = !DILocation(line: 745, column: 14, scope: !3702)
!3705 = !DILocation(line: 745, column: 2, scope: !3702)
!3706 = !DILocation(line: 747, column: 12, scope: !3702)
!3707 = !DILocation(line: 0, scope: !3658)
!3708 = !DILocation(line: 730, column: 17, scope: !3640)
!3709 = !DILocation(line: 749, column: 17, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 749, column: 7)
!3711 = !DILocation(line: 749, column: 7, scope: !3640)
!3712 = !DILocation(line: 751, column: 13, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 751, column: 11)
!3714 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 750, column: 5)
!3715 = !DILocation(line: 751, column: 11, scope: !3714)
!3716 = !DILocation(line: 754, column: 12, scope: !3713)
!3717 = !DILocation(line: 763, column: 3, scope: !3640)
!3718 = !DILocation(line: 759, column: 11, scope: !3640)
!3719 = !DILocation(line: 734, column: 8, scope: !3640)
!3720 = !DILocation(line: 765, column: 15, scope: !3662)
!3721 = !DILocation(line: 765, column: 7, scope: !3662)
!3722 = !DILocation(line: 768, column: 18, scope: !3661)
!3723 = !DILocation(line: 768, column: 15, scope: !3661)
!3724 = !DILocation(line: 769, column: 4, scope: !3661)
!3725 = !DILocation(line: 773, column: 19, scope: !3660)
!3726 = !DILocation(line: 0, scope: !3660)
!3727 = !DILocation(line: 774, column: 25, scope: !3660)
!3728 = !DILocation(line: 776, column: 10, scope: !3666)
!3729 = !DILocation(line: 777, column: 3, scope: !3666)
!3730 = !DILocation(line: 777, column: 6, scope: !3666)
!3731 = !DILocation(line: 777, column: 30, scope: !3666)
!3732 = !DILocation(line: 778, column: 3, scope: !3666)
!3733 = !DILocation(line: 778, column: 6, scope: !3666)
!3734 = !DILocation(line: 776, column: 10, scope: !3660)
!3735 = !DILocation(line: 780, column: 32, scope: !3665)
!3736 = !DILocation(line: 0, scope: !3665)
!3737 = !DILocation(line: 781, column: 16, scope: !3665)
!3738 = !DILocation(line: 783, column: 8, scope: !3665)
!3739 = !DILocation(line: 783, column: 5, scope: !3665)
!3740 = !DILocation(line: 784, column: 14, scope: !3665)
!3741 = !DILocation(line: 790, column: 7, scope: !3669)
!3742 = !DILocation(line: 791, column: 18, scope: !3669)
!3743 = !DILocation(line: 791, column: 7, scope: !3669)
!3744 = !DILocation(line: 793, column: 20, scope: !3668)
!3745 = !DILocation(line: 0, scope: !3668)
!3746 = !DILocation(line: 795, column: 7, scope: !3668)
!3747 = !DILocation(line: 795, column: 19, scope: !3668)
!3748 = !DILocation(line: 795, column: 22, scope: !3668)
!3749 = !DILocation(line: 795, column: 39, scope: !3668)
!3750 = distinct !{!3750, !3746, !3751}
!3751 = !DILocation(line: 796, column: 16, scope: !3668)
!3752 = !DILocation(line: 798, column: 7, scope: !3673)
!3753 = !DILocation(line: 798, column: 25, scope: !3673)
!3754 = !DILocation(line: 797, column: 11, scope: !3668)
!3755 = !DILocation(line: 800, column: 17, scope: !3672)
!3756 = !DILocation(line: 0, scope: !3672)
!3757 = !DILocation(line: 801, column: 17, scope: !3672)
!3758 = !DILocation(line: 802, column: 8, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 802, column: 8)
!3760 = !DILocation(line: 803, column: 8, scope: !3759)
!3761 = !DILocation(line: 803, column: 11, scope: !3759)
!3762 = !DILocation(line: 802, column: 8, scope: !3672)
!3763 = !DILocation(line: 804, column: 19, scope: !3759)
!3764 = !DILocation(line: 805, column: 14, scope: !3759)
!3765 = !DILocation(line: 805, column: 12, scope: !3759)
!3766 = !DILocation(line: 806, column: 11, scope: !3759)
!3767 = !DILocation(line: 806, column: 27, scope: !3759)
!3768 = !DILocation(line: 804, column: 14, scope: !3759)
!3769 = !DILocation(line: 804, column: 6, scope: !3759)
!3770 = !DILocation(line: 814, column: 16, scope: !3676)
!3771 = !DILocation(line: 0, scope: !3676)
!3772 = !DILocation(line: 818, column: 15, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 818, column: 7)
!3774 = !DILocation(line: 818, column: 24, scope: !3773)
!3775 = !DILocation(line: 818, column: 21, scope: !3773)
!3776 = !DILocation(line: 818, column: 33, scope: !3773)
!3777 = !DILocation(line: 818, column: 7, scope: !3676)
!3778 = !DILocation(line: 819, column: 15, scope: !3773)
!3779 = !DILocation(line: 819, column: 40, scope: !3773)
!3780 = !DILocation(line: 819, column: 5, scope: !3773)
!3781 = !DILocation(line: 829, column: 19, scope: !3678)
!3782 = !DILocation(line: 0, scope: !3678)
!3783 = !DILocation(line: 833, column: 10, scope: !3683)
!3784 = !DILocation(line: 833, column: 28, scope: !3683)
!3785 = !DILocation(line: 834, column: 3, scope: !3683)
!3786 = !DILocation(line: 834, column: 6, scope: !3683)
!3787 = !DILocation(line: 835, column: 3, scope: !3683)
!3788 = !DILocation(line: 835, column: 19, scope: !3683)
!3789 = !DILocation(line: 836, column: 7, scope: !3683)
!3790 = !DILocation(line: 835, column: 44, scope: !3683)
!3791 = !DILocation(line: 837, column: 3, scope: !3683)
!3792 = !DILocation(line: 837, column: 19, scope: !3683)
!3793 = !DILocation(line: 838, column: 7, scope: !3683)
!3794 = !DILocation(line: 837, column: 47, scope: !3683)
!3795 = !DILocation(line: 833, column: 10, scope: !3678)
!3796 = !DILocation(line: 840, column: 26, scope: !3682)
!3797 = !DILocation(line: 0, scope: !3682)
!3798 = !DILocation(line: 842, column: 13, scope: !3682)
!3799 = !DILocation(line: 842, column: 10, scope: !3682)
!3800 = !DILocation(line: 843, column: 13, scope: !3682)
!3801 = !DILocation(line: 843, column: 10, scope: !3682)
!3802 = !DILocation(line: 844, column: 10, scope: !3682)
!3803 = !DILocation(line: 845, column: 14, scope: !3682)
!3804 = !DILocation(line: 851, column: 8, scope: !3682)
!3805 = !DILocation(line: 854, column: 16, scope: !3685)
!3806 = !DILocation(line: 0, scope: !3685)
!3807 = !DILocation(line: 858, column: 15, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 858, column: 7)
!3809 = !DILocation(line: 858, column: 24, scope: !3808)
!3810 = !DILocation(line: 858, column: 21, scope: !3808)
!3811 = !DILocation(line: 858, column: 33, scope: !3808)
!3812 = !DILocation(line: 858, column: 7, scope: !3685)
!3813 = !DILocation(line: 859, column: 15, scope: !3808)
!3814 = !DILocation(line: 859, column: 40, scope: !3808)
!3815 = !DILocation(line: 859, column: 5, scope: !3808)
!3816 = !DILocation(line: 874, column: 15, scope: !3661)
!3817 = !DILocation(line: 875, column: 4, scope: !3661)
!3818 = !DILocation(line: 884, column: 13, scope: !3662)
!3819 = distinct !{!3819, !3717, !3820}
!3820 = !DILocation(line: 885, column: 5, scope: !3640)
!3821 = !DILocation(line: 886, column: 2, scope: !3640)
!3822 = !DILocation(line: 901, column: 7, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 901, column: 7)
!3824 = !DILocation(line: 901, column: 7, scope: !3640)
!3825 = !DILocation(line: 905, column: 19, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 905, column: 11)
!3827 = distinct !DILexicalBlock(scope: !3823, file: !3, line: 902, column: 5)
!3828 = !DILocation(line: 906, column: 4, scope: !3826)
!3829 = !DILocation(line: 906, column: 22, scope: !3826)
!3830 = !DILocation(line: 906, column: 7, scope: !3826)
!3831 = !DILocation(line: 905, column: 11, scope: !3827)
!3832 = !DILocation(line: 907, column: 12, scope: !3826)
!3833 = !DILocation(line: 907, column: 47, scope: !3826)
!3834 = !DILocation(line: 907, column: 2, scope: !3826)
!3835 = !DILocation(line: 909, column: 12, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3823, file: !3, line: 909, column: 12)
!3837 = !DILocation(line: 910, column: 16, scope: !3836)
!3838 = !DILocation(line: 910, column: 5, scope: !3836)
!3839 = !DILocation(line: 911, column: 25, scope: !3836)
!3840 = !DILocation(line: 911, column: 10, scope: !3836)
!3841 = !DILocation(line: 912, column: 9, scope: !3836)
!3842 = !DILocation(line: 912, column: 24, scope: !3836)
!3843 = !DILocation(line: 913, column: 18, scope: !3836)
!3844 = !DILocation(line: 913, column: 9, scope: !3836)
!3845 = !DILocation(line: 913, column: 6, scope: !3836)
!3846 = !DILocation(line: 909, column: 12, scope: !3823)
!3847 = !DILocation(line: 914, column: 5, scope: !3836)
!3848 = !DILocation(line: 0, scope: !3823)
!3849 = !DILocation(line: 919, column: 12, scope: !3640)
!3850 = !DILocation(line: 920, column: 10, scope: !3640)
!3851 = !DILocation(line: 921, column: 14, scope: !3640)
!3852 = !DILocation(line: 923, column: 3, scope: !3640)
!3853 = distinct !DISubprogram(name: "stmt_references_abnormal_ssa_name", scope: !3, file: !3, line: 930, type: !3854, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3856)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!634, !977}
!3856 = !{!3857, !3858, !3859}
!3857 = !DILocalVariable(name: "stmt", arg: 1, scope: !3853, file: !3, line: 930, type: !977)
!3858 = !DILocalVariable(name: "oi", scope: !3853, file: !3, line: 932, type: !3516)
!3859 = !DILocalVariable(name: "use_p", scope: !3853, file: !3, line: 933, type: !1974)
!3860 = !DILocation(line: 0, scope: !3853)
!3861 = !DILocation(line: 932, column: 3, scope: !3853)
!3862 = !DILocation(line: 935, column: 3, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3853, file: !3, line: 935, column: 3)
!3864 = !DILocation(line: 0, scope: !3863)
!3865 = !DILocation(line: 935, column: 3, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 935, column: 3)
!3867 = !DILocation(line: 937, column: 11, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !3, line: 937, column: 11)
!3869 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 936, column: 5)
!3870 = !DILocation(line: 937, column: 11, scope: !3869)
!3871 = distinct !{!3871, !3862, !3872}
!3872 = !DILocation(line: 939, column: 5, scope: !3863)
!3873 = !DILocation(line: 942, column: 1, scope: !3853)
!3874 = distinct !DISubprogram(name: "op_iter_init_use", scope: !2567, file: !2567, line: 768, type: !3875, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3877)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!1974, !3558, !977, !635}
!3877 = !{!3878, !3879, !3880}
!3878 = !DILocalVariable(name: "ptr", arg: 1, scope: !3874, file: !2567, line: 768, type: !3558)
!3879 = !DILocalVariable(name: "stmt", arg: 2, scope: !3874, file: !2567, line: 768, type: !977)
!3880 = !DILocalVariable(name: "flags", arg: 3, scope: !3874, file: !2567, line: 768, type: !635)
!3881 = !DILocation(line: 0, scope: !3874)
!3882 = !DILocation(line: 772, column: 3, scope: !3874)
!3883 = !DILocation(line: 773, column: 8, scope: !3874)
!3884 = !DILocation(line: 773, column: 18, scope: !3874)
!3885 = !DILocation(line: 774, column: 10, scope: !3874)
!3886 = !DILocation(line: 774, column: 3, scope: !3874)
!3887 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2567, file: !2567, line: 427, type: !3888, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3890)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!653, !1974}
!3890 = !{!3891}
!3891 = !DILocalVariable(name: "use", arg: 1, scope: !3887, file: !2567, line: 427, type: !1974)
!3892 = !DILocation(line: 0, scope: !3887)
!3893 = !DILocation(line: 429, column: 17, scope: !3887)
!3894 = !DILocation(line: 429, column: 10, scope: !3887)
!3895 = !DILocation(line: 429, column: 3, scope: !3887)
!3896 = distinct !DISubprogram(name: "op_iter_next_use", scope: !2567, file: !2567, line: 659, type: !3897, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!1974, !3558}
!3899 = !{!3900, !3901}
!3900 = !DILocalVariable(name: "ptr", arg: 1, scope: !3896, file: !2567, line: 659, type: !3558)
!3901 = !DILocalVariable(name: "use_p", scope: !3896, file: !2567, line: 661, type: !1974)
!3902 = !DILocation(line: 0, scope: !3896)
!3903 = !DILocation(line: 665, column: 12, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3896, file: !2567, line: 665, column: 7)
!3905 = !DILocation(line: 665, column: 7, scope: !3904)
!3906 = !DILocation(line: 665, column: 7, scope: !3896)
!3907 = !DILocation(line: 667, column: 15, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3904, file: !2567, line: 666, column: 5)
!3909 = !DILocation(line: 668, column: 30, scope: !3908)
!3910 = !DILocation(line: 668, column: 17, scope: !3908)
!3911 = !DILocation(line: 669, column: 7, scope: !3908)
!3912 = !DILocation(line: 671, column: 12, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3896, file: !2567, line: 671, column: 7)
!3914 = !DILocation(line: 671, column: 25, scope: !3913)
!3915 = !DILocation(line: 671, column: 18, scope: !3913)
!3916 = !DILocation(line: 671, column: 7, scope: !3896)
!3917 = !DILocation(line: 673, column: 14, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3913, file: !2567, line: 672, column: 5)
!3919 = !DILocation(line: 673, column: 7, scope: !3918)
!3920 = !DILocation(line: 675, column: 8, scope: !3896)
!3921 = !DILocation(line: 675, column: 13, scope: !3896)
!3922 = !DILocation(line: 676, column: 3, scope: !3896)
!3923 = !DILocation(line: 677, column: 1, scope: !3896)
!3924 = distinct !DISubprogram(name: "is_gimple_debug", scope: !568, file: !568, line: 3249, type: !3925, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!634, !3260}
!3927 = !{!3928}
!3928 = !DILocalVariable(name: "gs", arg: 1, scope: !3924, file: !568, line: 3249, type: !3260)
!3929 = !DILocation(line: 0, scope: !3924)
!3930 = !DILocation(line: 3251, column: 10, scope: !3924)
!3931 = !DILocation(line: 3251, column: 27, scope: !3924)
!3932 = !DILocation(line: 3251, column: 3, scope: !3924)
!3933 = distinct !DISubprogram(name: "bb_seq", scope: !568, file: !568, line: 237, type: !3934, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3939)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!967, !3936}
!3936 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !654, line: 112, baseType: !3937)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !942)
!3939 = !{!3940}
!3940 = !DILocalVariable(name: "bb", arg: 1, scope: !3933, file: !568, line: 237, type: !3936)
!3941 = !DILocation(line: 0, scope: !3933)
!3942 = !DILocation(line: 239, column: 17, scope: !3933)
!3943 = !DILocation(line: 239, column: 23, scope: !3933)
!3944 = !DILocation(line: 239, column: 33, scope: !3933)
!3945 = !DILocation(line: 239, column: 43, scope: !3933)
!3946 = !DILocation(line: 239, column: 36, scope: !3933)
!3947 = !DILocation(line: 239, column: 10, scope: !3933)
!3948 = !DILocation(line: 239, column: 68, scope: !3933)
!3949 = !DILocation(line: 239, column: 3, scope: !3933)
!3950 = distinct !DISubprogram(name: "gimple_seq_first", scope: !568, file: !568, line: 159, type: !3951, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3956)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!972, !3953}
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !654, line: 67, baseType: !3954)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !969)
!3956 = !{!3957}
!3957 = !DILocalVariable(name: "s", arg: 1, scope: !3950, file: !568, line: 159, type: !3953)
!3958 = !DILocation(line: 0, scope: !3950)
!3959 = !DILocation(line: 161, column: 10, scope: !3950)
!3960 = !DILocation(line: 161, column: 17, scope: !3950)
!3961 = !DILocation(line: 161, column: 3, scope: !3950)
!3962 = distinct !DISubprogram(name: "first_htab_element", scope: !2567, file: !2567, line: 58, type: !3963, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3966)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!639, !3965, !1431}
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!3966 = !{!3967, !3968, !3969}
!3967 = !DILocalVariable(name: "hti", arg: 1, scope: !3962, file: !2567, line: 58, type: !3965)
!3968 = !DILocalVariable(name: "table", arg: 2, scope: !3962, file: !2567, line: 58, type: !1431)
!3969 = !DILocalVariable(name: "x", scope: !3970, file: !2567, line: 65, type: !639)
!3970 = distinct !DILexicalBlock(scope: !3962, file: !2567, line: 64, column: 5)
!3971 = !DILocation(line: 0, scope: !3962)
!3972 = !DILocation(line: 60, column: 8, scope: !3962)
!3973 = !DILocation(line: 60, column: 13, scope: !3962)
!3974 = !DILocation(line: 61, column: 22, scope: !3962)
!3975 = !DILocation(line: 61, column: 8, scope: !3962)
!3976 = !DILocation(line: 61, column: 13, scope: !3962)
!3977 = !DILocation(line: 62, column: 21, scope: !3962)
!3978 = !DILocation(line: 62, column: 28, scope: !3962)
!3979 = !DILocation(line: 62, column: 26, scope: !3962)
!3980 = !DILocation(line: 62, column: 8, scope: !3962)
!3981 = !DILocation(line: 62, column: 14, scope: !3962)
!3982 = !DILocation(line: 65, column: 22, scope: !3970)
!3983 = !DILocation(line: 63, column: 3, scope: !3962)
!3984 = !DILocation(line: 65, column: 15, scope: !3970)
!3985 = !DILocation(line: 66, column: 33, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3970, file: !2567, line: 66, column: 11)
!3987 = !DILocation(line: 68, column: 14, scope: !3962)
!3988 = !DILocation(line: 68, column: 28, scope: !3962)
!3989 = !DILocation(line: 68, column: 5, scope: !3970)
!3990 = distinct !{!3990, !3983, !3991}
!3991 = !DILocation(line: 68, column: 40, scope: !3962)
!3992 = !DILocation(line: 70, column: 12, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3962, file: !2567, line: 70, column: 7)
!3994 = !DILocation(line: 70, column: 17, scope: !3993)
!3995 = !DILocation(line: 70, column: 7, scope: !3962)
!3996 = !DILocation(line: 71, column: 12, scope: !3993)
!3997 = !DILocation(line: 71, column: 5, scope: !3993)
!3998 = !DILocation(line: 73, column: 1, scope: !3962)
!3999 = distinct !DISubprogram(name: "end_htab_p", scope: !2567, file: !2567, line: 79, type: !4000, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4004)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!634, !4002}
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2784)
!4004 = !{!4005}
!4005 = !DILocalVariable(name: "hti", arg: 1, scope: !3999, file: !2567, line: 79, type: !4002)
!4006 = !DILocation(line: 0, scope: !3999)
!4007 = !DILocation(line: 81, column: 12, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3999, file: !2567, line: 81, column: 7)
!4009 = !DILocation(line: 81, column: 25, scope: !4008)
!4010 = !DILocation(line: 81, column: 17, scope: !4008)
!4011 = !DILocation(line: 84, column: 1, scope: !3999)
!4012 = distinct !DISubprogram(name: "next_htab_element", scope: !2567, file: !2567, line: 90, type: !4013, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4015)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!639, !3965}
!4015 = !{!4016, !4017}
!4016 = !DILocalVariable(name: "hti", arg: 1, scope: !4012, file: !2567, line: 90, type: !3965)
!4017 = !DILocalVariable(name: "x", scope: !4018, file: !2567, line: 94, type: !639)
!4018 = distinct !DILexicalBlock(scope: !4012, file: !2567, line: 93, column: 5)
!4019 = !DILocation(line: 0, scope: !4012)
!4020 = !DILocation(line: 94, column: 22, scope: !4018)
!4021 = !DILocation(line: 92, column: 10, scope: !4012)
!4022 = !DILocation(line: 92, column: 31, scope: !4012)
!4023 = !DILocation(line: 92, column: 3, scope: !4012)
!4024 = !DILocation(line: 92, column: 24, scope: !4012)
!4025 = !DILocation(line: 94, column: 15, scope: !4018)
!4026 = !DILocation(line: 0, scope: !4018)
!4027 = !DILocation(line: 95, column: 33, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4018, file: !2567, line: 95, column: 11)
!4029 = distinct !{!4029, !4023, !4030}
!4030 = !DILocation(line: 97, column: 5, scope: !4012)
!4031 = !DILocation(line: 99, column: 1, scope: !4012)
!4032 = distinct !DISubprogram(name: "may_be_aliased", scope: !2567, file: !2567, line: 586, type: !2951, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4033)
!4033 = !{!4034}
!4034 = !DILocalVariable(name: "var", arg: 1, scope: !4032, file: !2567, line: 586, type: !2939)
!4035 = !DILocation(line: 0, scope: !4032)
!4036 = !DILocation(line: 588, column: 11, scope: !4032)
!4037 = !DILocation(line: 588, column: 27, scope: !4032)
!4038 = !DILocation(line: 589, column: 4, scope: !4032)
!4039 = !DILocation(line: 589, column: 10, scope: !4032)
!4040 = !DILocation(line: 589, column: 28, scope: !4032)
!4041 = !DILocation(line: 589, column: 31, scope: !4032)
!4042 = !DILocation(line: 589, column: 49, scope: !4032)
!4043 = !DILocation(line: 589, column: 52, scope: !4032)
!4044 = !DILocation(line: 590, column: 9, scope: !4032)
!4045 = !DILocation(line: 590, column: 12, scope: !4032)
!4046 = !DILocation(line: 591, column: 9, scope: !4032)
!4047 = !DILocation(line: 591, column: 13, scope: !4032)
!4048 = !DILocation(line: 592, column: 4, scope: !4032)
!4049 = !DILocation(line: 592, column: 8, scope: !4032)
!4050 = !DILocation(line: 593, column: 8, scope: !4032)
!4051 = !DILocation(line: 593, column: 11, scope: !4032)
!4052 = !DILocation(line: 594, column: 8, scope: !4032)
!4053 = !DILocation(line: 594, column: 11, scope: !4032)
!4054 = !DILocation(line: 588, column: 3, scope: !4032)
!4055 = distinct !DISubprogram(name: "num_ssa_operands", scope: !2567, file: !2567, line: 869, type: !4056, scopeLine: 870, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4058)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!635, !977, !635}
!4058 = !{!4059, !4060, !4061, !4062, !4063}
!4059 = !DILocalVariable(name: "stmt", arg: 1, scope: !4055, file: !2567, line: 869, type: !977)
!4060 = !DILocalVariable(name: "flags", arg: 2, scope: !4055, file: !2567, line: 869, type: !635)
!4061 = !DILocalVariable(name: "iter", scope: !4055, file: !2567, line: 871, type: !3516)
!4062 = !DILocalVariable(name: "t", scope: !4055, file: !2567, line: 872, type: !653)
!4063 = !DILocalVariable(name: "num", scope: !4055, file: !2567, line: 873, type: !635)
!4064 = !DILocation(line: 0, scope: !4055)
!4065 = !DILocation(line: 871, column: 3, scope: !4055)
!4066 = !DILocation(line: 875, column: 3, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4055, file: !2567, line: 875, column: 3)
!4068 = !DILocation(line: 875, column: 3, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4067, file: !2567, line: 875, column: 3)
!4070 = !DILocation(line: 876, column: 8, scope: !4069)
!4071 = distinct !{!4071, !4066, !4072}
!4072 = !DILocation(line: 876, column: 8, scope: !4067)
!4073 = !DILocation(line: 878, column: 1, scope: !4055)
!4074 = !DILocation(line: 877, column: 3, scope: !4055)
!4075 = distinct !DISubprogram(name: "gimple_vdef", scope: !568, file: !568, line: 1375, type: !4076, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4078)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!653, !3260}
!4078 = !{!4079}
!4079 = !DILocalVariable(name: "g", arg: 1, scope: !4075, file: !568, line: 1375, type: !3260)
!4080 = !DILocation(line: 0, scope: !4075)
!4081 = !DILocation(line: 1377, column: 8, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4075, file: !568, line: 1377, column: 7)
!4083 = !DILocation(line: 1377, column: 7, scope: !4075)
!4084 = !DILocation(line: 1379, column: 23, scope: !4075)
!4085 = !DILocation(line: 1379, column: 3, scope: !4075)
!4086 = !DILocation(line: 1380, column: 1, scope: !4075)
!4087 = distinct !DISubprogram(name: "gimple_vuse", scope: !568, file: !568, line: 1365, type: !4076, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4088)
!4088 = !{!4089}
!4089 = !DILocalVariable(name: "g", arg: 1, scope: !4087, file: !568, line: 1365, type: !3260)
!4090 = !DILocation(line: 0, scope: !4087)
!4091 = !DILocation(line: 1367, column: 8, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4087, file: !568, line: 1367, column: 7)
!4093 = !DILocation(line: 1367, column: 7, scope: !4087)
!4094 = !DILocation(line: 1369, column: 23, scope: !4087)
!4095 = !DILocation(line: 1369, column: 3, scope: !4087)
!4096 = !DILocation(line: 1370, column: 1, scope: !4087)
!4097 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !568, file: !568, line: 1283, type: !3925, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4098)
!4098 = !{!4099}
!4099 = !DILocalVariable(name: "g", arg: 1, scope: !4097, file: !568, line: 1283, type: !3260)
!4100 = !DILocation(line: 0, scope: !4097)
!4101 = !DILocation(line: 1285, column: 10, scope: !4097)
!4102 = !DILocation(line: 1285, column: 26, scope: !4097)
!4103 = !DILocation(line: 1285, column: 43, scope: !4097)
!4104 = !DILocation(line: 1285, column: 46, scope: !4097)
!4105 = !DILocation(line: 1285, column: 62, scope: !4097)
!4106 = !DILocation(line: 1285, column: 3, scope: !4097)
!4107 = distinct !DISubprogram(name: "gimple_has_ops", scope: !568, file: !568, line: 1274, type: !3925, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4108)
!4108 = !{!4109}
!4109 = !DILocalVariable(name: "g", arg: 1, scope: !4107, file: !568, line: 1274, type: !3260)
!4110 = !DILocation(line: 0, scope: !4107)
!4111 = !DILocation(line: 1276, column: 10, scope: !4107)
!4112 = !DILocation(line: 1276, column: 26, scope: !4107)
!4113 = !DILocation(line: 1276, column: 41, scope: !4107)
!4114 = !DILocation(line: 1276, column: 44, scope: !4107)
!4115 = !DILocation(line: 1276, column: 60, scope: !4107)
!4116 = !DILocation(line: 1276, column: 3, scope: !4107)
!4117 = distinct !DISubprogram(name: "gimple_ops", scope: !568, file: !568, line: 1614, type: !3318, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4118)
!4118 = !{!4119, !4120}
!4119 = !DILocalVariable(name: "gs", arg: 1, scope: !4117, file: !568, line: 1614, type: !977)
!4120 = !DILocalVariable(name: "off", scope: !4117, file: !568, line: 1616, type: !1122)
!4121 = !DILocation(line: 0, scope: !4117)
!4122 = !DILocation(line: 1621, column: 28, scope: !4117)
!4123 = !DILocation(line: 1621, column: 9, scope: !4117)
!4124 = !DILocation(line: 1622, column: 3, scope: !4117)
!4125 = !DILocation(line: 1624, column: 20, scope: !4117)
!4126 = !DILocation(line: 1624, column: 32, scope: !4117)
!4127 = !DILocation(line: 1624, column: 10, scope: !4117)
!4128 = !DILocation(line: 1624, column: 3, scope: !4117)
!4129 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !568, file: !568, line: 1073, type: !4130, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4132)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!606, !977}
!4132 = !{!4133}
!4133 = !DILocalVariable(name: "gs", arg: 1, scope: !4129, file: !568, line: 1073, type: !977)
!4134 = !DILocation(line: 0, scope: !4129)
!4135 = !DILocation(line: 1075, column: 24, scope: !4129)
!4136 = !DILocation(line: 1075, column: 10, scope: !4129)
!4137 = !DILocation(line: 1075, column: 3, scope: !4129)
!4138 = distinct !DISubprogram(name: "gss_for_code", scope: !568, file: !568, line: 1061, type: !4139, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4141)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!606, !567}
!4141 = !{!4142}
!4142 = !DILocalVariable(name: "code", arg: 1, scope: !4138, file: !568, line: 1061, type: !567)
!4143 = !DILocation(line: 0, scope: !4138)
!4144 = !DILocation(line: 1066, column: 10, scope: !4138)
!4145 = !DILocation(line: 1066, column: 3, scope: !4138)
!4146 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !568, file: !568, line: 3100, type: !4147, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4149)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!3338, !977, !7}
!4149 = !{!4150, !4151}
!4150 = !DILocalVariable(name: "gs", arg: 1, scope: !4146, file: !568, line: 3100, type: !977)
!4151 = !DILocalVariable(name: "index", arg: 2, scope: !4146, file: !568, line: 3100, type: !7)
!4152 = !DILocation(line: 0, scope: !4146)
!4153 = !DILocation(line: 3103, column: 3, scope: !4146)
!4154 = !DILocation(line: 3104, column: 12, scope: !4146)
!4155 = !DILocation(line: 3104, column: 3, scope: !4146)
!4156 = distinct !DISubprogram(name: "op_iter_init", scope: !2567, file: !2567, line: 742, type: !4157, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4159)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{null, !3558, !977, !635}
!4159 = !{!4160, !4161, !4162}
!4160 = !DILocalVariable(name: "ptr", arg: 1, scope: !4156, file: !2567, line: 742, type: !3558)
!4161 = !DILocalVariable(name: "stmt", arg: 2, scope: !4156, file: !2567, line: 742, type: !977)
!4162 = !DILocalVariable(name: "flags", arg: 3, scope: !4156, file: !2567, line: 742, type: !635)
!4163 = !DILocation(line: 0, scope: !4156)
!4164 = !DILocation(line: 746, column: 3, scope: !4156)
!4165 = !DILocation(line: 748, column: 22, scope: !4156)
!4166 = !DILocation(line: 748, column: 15, scope: !4156)
!4167 = !DILocation(line: 748, column: 52, scope: !4156)
!4168 = !DILocation(line: 748, column: 8, scope: !4156)
!4169 = !DILocation(line: 748, column: 13, scope: !4156)
!4170 = !DILocation(line: 749, column: 15, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4156, file: !2567, line: 749, column: 7)
!4172 = !DILocation(line: 750, column: 7, scope: !4171)
!4173 = !DILocation(line: 750, column: 10, scope: !4171)
!4174 = !DILocation(line: 751, column: 7, scope: !4171)
!4175 = !DILocation(line: 751, column: 10, scope: !4171)
!4176 = !DILocation(line: 751, column: 29, scope: !4171)
!4177 = !DILocation(line: 749, column: 7, scope: !4156)
!4178 = !DILocation(line: 752, column: 22, scope: !4171)
!4179 = !DILocation(line: 752, column: 28, scope: !4171)
!4180 = !DILocation(line: 752, column: 15, scope: !4171)
!4181 = !DILocation(line: 752, column: 5, scope: !4171)
!4182 = !DILocation(line: 753, column: 22, scope: !4156)
!4183 = !DILocation(line: 753, column: 15, scope: !4156)
!4184 = !DILocation(line: 753, column: 52, scope: !4156)
!4185 = !DILocation(line: 753, column: 8, scope: !4156)
!4186 = !DILocation(line: 753, column: 13, scope: !4156)
!4187 = !DILocation(line: 754, column: 15, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4156, file: !2567, line: 754, column: 7)
!4189 = !DILocation(line: 755, column: 7, scope: !4188)
!4190 = !DILocation(line: 755, column: 10, scope: !4188)
!4191 = !DILocation(line: 756, column: 7, scope: !4188)
!4192 = !DILocation(line: 756, column: 10, scope: !4188)
!4193 = !DILocation(line: 756, column: 29, scope: !4188)
!4194 = !DILocation(line: 754, column: 7, scope: !4156)
!4195 = !DILocation(line: 757, column: 22, scope: !4188)
!4196 = !DILocation(line: 757, column: 28, scope: !4188)
!4197 = !DILocation(line: 757, column: 15, scope: !4188)
!4198 = !DILocation(line: 757, column: 5, scope: !4188)
!4199 = !DILocation(line: 758, column: 8, scope: !4156)
!4200 = !DILocation(line: 758, column: 13, scope: !4156)
!4201 = !DILocation(line: 760, column: 8, scope: !4156)
!4202 = !DILocation(line: 760, column: 14, scope: !4156)
!4203 = !DILocation(line: 761, column: 8, scope: !4156)
!4204 = !DILocation(line: 761, column: 16, scope: !4156)
!4205 = !DILocation(line: 762, column: 8, scope: !4156)
!4206 = !DILocation(line: 762, column: 17, scope: !4156)
!4207 = !DILocation(line: 763, column: 1, scope: !4156)
!4208 = distinct !DISubprogram(name: "gimple_def_ops", scope: !568, file: !568, line: 1292, type: !4209, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4211)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!1006, !3260}
!4211 = !{!4212}
!4212 = !DILocalVariable(name: "g", arg: 1, scope: !4208, file: !568, line: 1292, type: !3260)
!4213 = !DILocation(line: 0, scope: !4208)
!4214 = !DILocation(line: 1294, column: 8, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4208, file: !568, line: 1294, column: 7)
!4216 = !DILocation(line: 1294, column: 7, scope: !4208)
!4217 = !DILocation(line: 1296, column: 26, scope: !4208)
!4218 = !DILocation(line: 1296, column: 3, scope: !4208)
!4219 = !DILocation(line: 1297, column: 1, scope: !4208)
!4220 = distinct !DISubprogram(name: "gimple_use_ops", scope: !568, file: !568, line: 1313, type: !4221, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4223)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!1013, !3260}
!4223 = !{!4224}
!4224 = !DILocalVariable(name: "g", arg: 1, scope: !4220, file: !568, line: 1313, type: !3260)
!4225 = !DILocation(line: 0, scope: !4220)
!4226 = !DILocation(line: 1315, column: 8, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4220, file: !568, line: 1315, column: 7)
!4228 = !DILocation(line: 1315, column: 7, scope: !4220)
!4229 = !DILocation(line: 1317, column: 26, scope: !4220)
!4230 = !DILocation(line: 1317, column: 3, scope: !4220)
!4231 = !DILocation(line: 1318, column: 1, scope: !4220)
!4232 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2567, file: !2567, line: 434, type: !4233, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4236)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!653, !4235}
!4235 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !561, line: 27, baseType: !1011)
!4236 = !{!4237}
!4237 = !DILocalVariable(name: "def", arg: 1, scope: !4232, file: !2567, line: 434, type: !4235)
!4238 = !DILocation(line: 0, scope: !4232)
!4239 = !DILocation(line: 436, column: 10, scope: !4232)
!4240 = !DILocation(line: 436, column: 3, scope: !4232)
!4241 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2567, file: !2567, line: 442, type: !4242, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4244)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!1974, !977, !635}
!4244 = !{!4245, !4246}
!4245 = !DILocalVariable(name: "gs", arg: 1, scope: !4241, file: !2567, line: 442, type: !977)
!4246 = !DILocalVariable(name: "i", arg: 2, scope: !4241, file: !2567, line: 442, type: !635)
!4247 = !DILocation(line: 0, scope: !4241)
!4248 = !DILocation(line: 444, column: 11, scope: !4241)
!4249 = !DILocation(line: 444, column: 35, scope: !4241)
!4250 = !DILocation(line: 444, column: 3, scope: !4241)
