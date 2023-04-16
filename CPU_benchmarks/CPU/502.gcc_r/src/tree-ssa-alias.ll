; ModuleID = 'tree-ssa-alias.bc'
source_filename = "tree-ssa-alias.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
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
%struct.ssa_operands = type { %struct.ssa_operand_memory_d*, i32, i32, i8, %struct.def_optype_d*, %struct.use_optype_d* }
%struct.ssa_operand_memory_d = type { %struct.ssa_operand_memory_d*, [1 x i8] }
%struct.def_optype_d = type { %struct.def_optype_d*, %union.tree_node** }
%struct.use_optype_d = type { %struct.use_optype_d*, %struct.ssa_use_operand_d }
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
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
%struct.ptr_info_def = type { %struct.pt_solution }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { %struct.htab*, i8**, i8** }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.ao_ref_s = type { %union.tree_node*, %union.tree_node*, i64, i64, i64, i32, i32 }
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

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [28 x i8] c"\0AAlias oracle query stats:\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"  refs_may_alias_p: %ld disambiguations, %ld queries\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"  ref_maybe_used_by_call_p: %ld disambiguations, %ld queries\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"  call_may_clobber_ref_p: %ld disambiguations, %ld queries\0A\00", align 1
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"\0A\0AAlias information for %s\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Aliased symbols\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\0ACall clobber information\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\0AESCAPED\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"\0ACALLUSED\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"\0A\0AFlow-insensitive points-to information\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"tree-ssa-alias.c\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c", points-to anything\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c", points-to non-local\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c", points-to escaped\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c", points-to NULL\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c", points-to vars: \00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c" (includes global vars)\00", align 1
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@flag_strict_aliasing = external dso_local local_unnamed_addr global i32, align 4
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@flag_errno_math = external dso_local local_unnamed_addr global i32, align 4
@alias_stats.0 = internal unnamed_addr global i64 0, align 8, !dbg !0
@alias_stats.1 = internal unnamed_addr global i64 0, align 8, !dbg !1765
@alias_stats.2 = internal unnamed_addr global i64 0, align 8, !dbg !1766
@alias_stats.3 = internal unnamed_addr global i64 0, align 8, !dbg !1767

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1772 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1785, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1786, metadata !DIExpression()), !dbg !1787
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1788
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1789
  ret i32 %call, !dbg !1790
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1791 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1795
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1796
  ret i32 %call, !dbg !1797
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1798 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1853, metadata !DIExpression()), !dbg !1854
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1855
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1855
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1855
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1855
  %cmp = icmp uge i8* %0, %1, !dbg !1855
  %conv1 = zext i1 %cmp to i64, !dbg !1855
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1855
  %tobool = icmp eq i64 %expval, 0, !dbg !1855
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1855

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1855
  br label %cond.end, !dbg !1855

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1855
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1855
  %2 = load i8, i8* %0, align 1, !dbg !1855
  %conv3 = zext i8 %2 to i32, !dbg !1855
  br label %cond.end, !dbg !1855

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1855
  ret i32 %cond, !dbg !1856
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1857 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1859, metadata !DIExpression()), !dbg !1860
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1861
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1861
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1861
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1861
  %cmp = icmp uge i8* %0, %1, !dbg !1861
  %conv1 = zext i1 %cmp to i64, !dbg !1861
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1861
  %tobool = icmp eq i64 %expval, 0, !dbg !1861
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1861

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1861
  br label %cond.end, !dbg !1861

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1861
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1861
  %2 = load i8, i8* %0, align 1, !dbg !1861
  %conv3 = zext i8 %2 to i32, !dbg !1861
  br label %cond.end, !dbg !1861

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1861
  ret i32 %cond, !dbg !1862
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1863 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1864
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1864
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1864
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1864
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1864
  %cmp = icmp uge i8* %1, %2, !dbg !1864
  %conv1 = zext i1 %cmp to i64, !dbg !1864
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1864
  %tobool = icmp eq i64 %expval, 0, !dbg !1864
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1864

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1864
  br label %cond.end, !dbg !1864

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1864
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1864
  %3 = load i8, i8* %1, align 1, !dbg !1864
  %conv3 = zext i8 %3 to i32, !dbg !1864
  br label %cond.end, !dbg !1864

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1864
  ret i32 %cond, !dbg !1865
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1866 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1870, metadata !DIExpression()), !dbg !1871
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1872
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1873
  ret i32 %call, !dbg !1874
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1875 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1879, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1880, metadata !DIExpression()), !dbg !1881
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1882
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1882
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1882
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1882
  %cmp = icmp uge i8* %0, %1, !dbg !1882
  %conv1 = zext i1 %cmp to i64, !dbg !1882
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1882
  %tobool = icmp eq i64 %expval, 0, !dbg !1882
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1882

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1882
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1882
  br label %cond.end, !dbg !1882

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1882
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1882
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1882
  store i8 %conv2, i8* %0, align 1, !dbg !1882
  %conv6 = and i32 %__c, 255, !dbg !1882
  br label %cond.end, !dbg !1882

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1882
  ret i32 %cond, !dbg !1883
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1884 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1886, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1887, metadata !DIExpression()), !dbg !1888
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1889
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1889
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1889
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1889
  %cmp = icmp uge i8* %0, %1, !dbg !1889
  %conv1 = zext i1 %cmp to i64, !dbg !1889
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1889
  %tobool = icmp eq i64 %expval, 0, !dbg !1889
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1889

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1889
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1889
  br label %cond.end, !dbg !1889

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1889
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1889
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1889
  store i8 %conv2, i8* %0, align 1, !dbg !1889
  %conv6 = and i32 %__c, 255, !dbg !1889
  br label %cond.end, !dbg !1889

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1889
  ret i32 %cond, !dbg !1890
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1891 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1893, metadata !DIExpression()), !dbg !1894
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1895
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1895
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1895
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1895
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1895
  %cmp = icmp uge i8* %1, %2, !dbg !1895
  %conv1 = zext i1 %cmp to i64, !dbg !1895
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1895
  %tobool = icmp eq i64 %expval, 0, !dbg !1895
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1895

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1895
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1895
  br label %cond.end, !dbg !1895

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1895
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1895
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1895
  store i8 %conv4, i8* %1, align 1, !dbg !1895
  %conv6 = and i32 %__c, 255, !dbg !1895
  br label %cond.end, !dbg !1895

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1895
  ret i32 %cond, !dbg !1896
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1897 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1903, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1904, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1905, metadata !DIExpression()), !dbg !1906
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1907
  ret i64 %call, !dbg !1908
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1909 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1911, metadata !DIExpression()), !dbg !1912
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1913
  %0 = load i32, i32* %_flags, align 8, !dbg !1913
  %and = lshr i32 %0, 4, !dbg !1913
  %and.lobit = and i32 %and, 1, !dbg !1913
  ret i32 %and.lobit, !dbg !1914
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1915 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1917, metadata !DIExpression()), !dbg !1918
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1919
  %0 = load i32, i32* %_flags, align 8, !dbg !1919
  %and = lshr i32 %0, 5, !dbg !1919
  %and.lobit = and i32 %and, 1, !dbg !1919
  ret i32 %and.lobit, !dbg !1920
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1921 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1924, metadata !DIExpression()), !dbg !1925
  %__c.off = add i32 %__c, 128, !dbg !1926
  %0 = icmp ult i32 %__c.off, 384, !dbg !1926
  br i1 %0, label %cond.true, label %cond.end, !dbg !1926

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1927
  %1 = load i32*, i32** %call, align 8, !dbg !1928
  %idxprom = sext i32 %__c to i64, !dbg !1929
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1929
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1929
  br label %cond.end, !dbg !1930

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1930
  ret i32 %cond, !dbg !1931
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1932 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1934, metadata !DIExpression()), !dbg !1935
  %__c.off = add i32 %__c, 128, !dbg !1936
  %0 = icmp ult i32 %__c.off, 384, !dbg !1936
  br i1 %0, label %cond.true, label %cond.end, !dbg !1936

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1937
  %1 = load i32*, i32** %call, align 8, !dbg !1938
  %idxprom = sext i32 %__c to i64, !dbg !1939
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1939
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1939
  br label %cond.end, !dbg !1940

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1940
  ret i32 %cond, !dbg !1941
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1942 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1947, metadata !DIExpression()), !dbg !1948
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1949
  %conv = trunc i64 %call to i32, !dbg !1950
  ret i32 %conv, !dbg !1951
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1952 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1956, metadata !DIExpression()), !dbg !1957
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1958
  ret i64 %call, !dbg !1959
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1960 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1965, metadata !DIExpression()), !dbg !1966
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1967
  ret i64 %call, !dbg !1968
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1969 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1975, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1976, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1977, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1978, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1979, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i64 0, metadata !1980, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1981, metadata !DIExpression()), !dbg !1985
  br label %while.cond, !dbg !1986

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1987
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1985
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1981, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1980, metadata !DIExpression()), !dbg !1985
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1988
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1986

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1989
  %div = lshr i64 %add, 1, !dbg !1991
  call void @llvm.dbg.value(metadata i64 %div, metadata !1982, metadata !DIExpression()), !dbg !1985
  %mul = mul i64 %div, %__size, !dbg !1992
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1993
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1983, metadata !DIExpression()), !dbg !1985
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1994
  call void @llvm.dbg.value(metadata i32 %call, metadata !1984, metadata !DIExpression()), !dbg !1985
  %cmp1 = icmp slt i32 %call, 0, !dbg !1995
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1997

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1998
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2000

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1980, metadata !DIExpression()), !dbg !1985
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1985
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1985
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1981, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1980, metadata !DIExpression()), !dbg !1985
  br label %while.cond, !dbg !1986, !llvm.loop !2002

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1985
  ret i8* %retval.0, !dbg !2004
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2005 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2011, metadata !DIExpression()), !dbg !2012
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2013
  ret double %call, !dbg !2014
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2015 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2024, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2025, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %base, metadata !2026, metadata !DIExpression()), !dbg !2027
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2028
  ret i64 %call, !dbg !2029
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2030 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2036, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2037, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %base, metadata !2038, metadata !DIExpression()), !dbg !2039
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2040
  ret i64 %call, !dbg !2041
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2042 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2053, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2054, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %base, metadata !2055, metadata !DIExpression()), !dbg !2056
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2057
  ret i64 %call, !dbg !2058
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2059 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2063, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2064, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i32 %base, metadata !2065, metadata !DIExpression()), !dbg !2066
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2067
  ret i64 %call, !dbg !2068
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2069 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2109, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2110, metadata !DIExpression()), !dbg !2111
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2112
  ret i32 %call, !dbg !2113
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2114 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2116, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2117, metadata !DIExpression()), !dbg !2118
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2119
  ret i32 %call, !dbg !2120
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2121 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2125, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2126, metadata !DIExpression()), !dbg !2127
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2128
  ret i32 %call, !dbg !2129
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2130 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2134, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2135, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2136, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2137, metadata !DIExpression()), !dbg !2138
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2139
  ret i32 %call, !dbg !2140
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2141 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2145, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2146, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2147, metadata !DIExpression()), !dbg !2148
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2147, metadata !DIExpression(DW_OP_deref)), !dbg !2148
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2149
  ret i32 %call, !dbg !2150
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2151 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2155, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2156, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2157, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2158, metadata !DIExpression()), !dbg !2159
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2158, metadata !DIExpression(DW_OP_deref)), !dbg !2159
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2160
  ret i32 %call, !dbg !2161
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2162 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2186, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2187, metadata !DIExpression()), !dbg !2188
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2189
  ret i32 %call, !dbg !2190
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2191 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2193, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2194, metadata !DIExpression()), !dbg !2195
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2196
  ret i32 %call, !dbg !2197
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2198 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2202, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2203, metadata !DIExpression()), !dbg !2204
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2205
  ret i32 %call, !dbg !2206
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2207 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2211, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2212, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2213, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2214, metadata !DIExpression()), !dbg !2215
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2216
  ret i32 %call, !dbg !2217
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_alias_stats(%struct._IO_FILE* %s) local_unnamed_addr #4 !dbg !2218 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %s, metadata !2222, metadata !DIExpression()), !dbg !2223
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %s, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2224
  %0 = load i64, i64* @alias_stats.1, align 8, !dbg !2225
  %1 = load i64, i64* @alias_stats.0, align 8, !dbg !2226
  %add = add i64 %0, %1, !dbg !2227
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %s, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %0, i64 %add) #6, !dbg !2228
  %2 = load i64, i64* @alias_stats.3, align 8, !dbg !2229
  %3 = load i64, i64* @alias_stats.1, align 8, !dbg !2230
  %4 = load i64, i64* @alias_stats.2, align 8, !dbg !2231
  %add2 = add i64 %3, %4, !dbg !2232
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %s, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %2, i64 %add2) #6, !dbg !2233
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %s, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 0, i64 0) #6, !dbg !2234
  ret void, !dbg !2235
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ptr_deref_may_alias_global_p(%union.tree_node* %ptr) local_unnamed_addr #4 !dbg !2236 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr, metadata !2240, metadata !DIExpression()), !dbg !2242
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2243
  %bf.load = load i64, i64* %0, align 8, !dbg !2243
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2245
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2245
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2246

if.end:                                           ; preds = %entry
  %ptr_info = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2247
  %1 = bitcast %union.tree_node** %ptr_info to %struct.ptr_info_def**, !dbg !2247
  %2 = load %struct.ptr_info_def*, %struct.ptr_info_def** %1, align 8, !dbg !2247
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %2, metadata !2241, metadata !DIExpression()), !dbg !2242
  %tobool = icmp eq %struct.ptr_info_def* %2, null, !dbg !2248
  br i1 %tobool, label %cleanup, label %if.end2, !dbg !2250

if.end2:                                          ; preds = %if.end
  %pt = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %2, i64 0, i32 0, !dbg !2251
  %call = tail call zeroext i8 @pt_solution_includes_global(%struct.pt_solution* nonnull %pt) #6, !dbg !2252
  br label %cleanup, !dbg !2253

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i8 [ %call, %if.end2 ], [ 1, %entry ], [ 1, %if.end ], !dbg !2242
  ret i8 %retval.0, !dbg !2254
}

declare dso_local zeroext i8 @pt_solution_includes_global(%struct.pt_solution*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_alias_info(%struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !2255 {
entry:
  %rvi = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2257, metadata !DIExpression()), !dbg !2277
  %0 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !2278
  %1 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2279
  %call = tail call i8* %0(%union.tree_node* %1, i32 2) #6, !dbg !2280
  call void @llvm.dbg.value(metadata i8* %call, metadata !2259, metadata !DIExpression()), !dbg !2277
  %2 = bitcast %struct.referenced_var_iterator* %rvi to i8*, !dbg !2281
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2281
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %call) #6, !dbg !2282
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2283
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2260, metadata !DIExpression(DW_OP_deref)), !dbg !2277
  %call3 = call fastcc %union.tree_node* @first_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #8, !dbg !2284
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2271, metadata !DIExpression()), !dbg !2277
  br label %for.cond, !dbg !2284

for.cond:                                         ; preds = %for.inc, %entry
  %var.0 = phi %union.tree_node* [ %call3, %entry ], [ %call7, %for.inc ], !dbg !2286
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !2271, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2260, metadata !DIExpression(DW_OP_deref)), !dbg !2277
  %call4 = call fastcc zeroext i8 @end_referenced_vars_p(%struct.referenced_var_iterator* nonnull %rvi) #8, !dbg !2287
  %tobool = icmp eq i8 %call4, 0, !dbg !2287
  br i1 %tobool, label %for.body, label %for.end, !dbg !2284

for.body:                                         ; preds = %for.cond
  %call5 = call fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var.0) #8, !dbg !2289
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2289
  br i1 %tobool6, label %for.inc, label %if.then, !dbg !2292

if.then:                                          ; preds = %for.body
  call void @dump_variable(%struct._IO_FILE* %file, %union.tree_node* %var.0) #6, !dbg !2293
  br label %for.inc, !dbg !2293

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2260, metadata !DIExpression(DW_OP_deref)), !dbg !2277
  %call7 = call fastcc %union.tree_node* @next_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #8, !dbg !2287
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !2271, metadata !DIExpression()), !dbg !2277
  br label %for.cond, !dbg !2287, !llvm.loop !2294

for.end:                                          ; preds = %for.cond
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2296
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2297
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2298
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 3, !dbg !2299
  %4 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2299
  %escaped = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %4, i64 0, i32 4, !dbg !2300
  call void @dump_points_to_solution(%struct._IO_FILE* %file, %struct.pt_solution* nonnull %escaped) #8, !dbg !2301
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2302
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2303
  %gimple_df12 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 3, !dbg !2304
  %6 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df12, align 8, !dbg !2304
  %callused = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %6, i64 0, i32 5, !dbg !2305
  call void @dump_points_to_solution(%struct._IO_FILE* %file, %struct.pt_solution* nonnull %callused) #8, !dbg !2306
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2307
  call void @llvm.dbg.value(metadata i64 1, metadata !2258, metadata !DIExpression()), !dbg !2277
  br label %for.cond14, !dbg !2308

for.cond14:                                       ; preds = %cleanup, %for.end
  %i.0 = phi i64 [ 1, %for.end ], [ %inc, %cleanup ], !dbg !2309
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2258, metadata !DIExpression()), !dbg !2277
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2310
  %gimple_df16 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 3, !dbg !2310
  %8 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df16, align 8, !dbg !2310
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %8, i64 0, i32 2, !dbg !2310
  %9 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2310
  %tobool17 = icmp eq %struct.VEC_tree_gc* %9, null, !dbg !2310
  br i1 %tobool17, label %cond.end, label %cond.true, !dbg !2310

cond.true:                                        ; preds = %for.cond14
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %9, i64 0, i32 0, !dbg !2310
  br label %cond.end, !dbg !2310

cond.end:                                         ; preds = %for.cond14, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %for.cond14 ], !dbg !2310
  %call21 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #8, !dbg !2310
  %conv = zext i32 %call21 to i64, !dbg !2310
  %cmp = icmp ult i64 %i.0, %conv, !dbg !2311
  br i1 %cmp, label %for.body23, label %for.end49, !dbg !2312

for.body23:                                       ; preds = %cond.end
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2313
  %gimple_df25 = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 3, !dbg !2313
  %11 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df25, align 8, !dbg !2313
  %ssa_names26 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %11, i64 0, i32 2, !dbg !2313
  %12 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names26, align 8, !dbg !2313
  %tobool27 = icmp eq %struct.VEC_tree_gc* %12, null, !dbg !2313
  br i1 %tobool27, label %cond.end34, label %cond.true28, !dbg !2313

cond.true28:                                      ; preds = %for.body23
  %base32 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %12, i64 0, i32 0, !dbg !2313
  br label %cond.end34, !dbg !2313

cond.end34:                                       ; preds = %for.body23, %cond.true28
  %cond35 = phi %struct.VEC_tree_base* [ %base32, %cond.true28 ], [ null, %for.body23 ], !dbg !2313
  %conv36 = trunc i64 %i.0 to i32, !dbg !2313
  %call37 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond35, i32 %conv36) #8, !dbg !2313
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !2272, metadata !DIExpression()), !dbg !2314
  %cmp38 = icmp eq %union.tree_node* %call37, null, !dbg !2315
  br i1 %cmp38, label %cleanup, label %lor.lhs.false, !dbg !2317

lor.lhs.false:                                    ; preds = %cond.end34
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %call37, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2318
  %bf.load = load i64, i64* %13, align 8, !dbg !2318
  %bf.cast1 = and i64 %bf.load, 33554432, !dbg !2318
  %tobool41 = icmp eq i64 %bf.cast1, 0, !dbg !2318
  br i1 %tobool41, label %if.end43, label %cleanup, !dbg !2319

if.end43:                                         ; preds = %lor.lhs.false
  %ptr_info = getelementptr inbounds %union.tree_node, %union.tree_node* %call37, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2320
  %14 = bitcast %union.tree_node** %ptr_info to %struct.ptr_info_def**, !dbg !2320
  %15 = load %struct.ptr_info_def*, %struct.ptr_info_def** %14, align 8, !dbg !2320
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %15, metadata !2276, metadata !DIExpression()), !dbg !2314
  %tobool44 = icmp eq %struct.ptr_info_def* %15, null, !dbg !2321
  br i1 %tobool44, label %cleanup, label %if.then45, !dbg !2323

if.then45:                                        ; preds = %if.end43
  call void @dump_points_to_info_for(%struct._IO_FILE* %file, %union.tree_node* nonnull %call37) #8, !dbg !2324
  br label %cleanup, !dbg !2324

cleanup:                                          ; preds = %if.end43, %lor.lhs.false, %if.then45, %cond.end34
  %inc = add nuw nsw i64 %i.0, 1, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2258, metadata !DIExpression()), !dbg !2277
  br label %for.cond14, !dbg !2326, !llvm.loop !2327

for.end49:                                        ; preds = %cond.end
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2329
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2330
  ret void, !dbg !2330
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @first_referenced_var(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !2331 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !2337, metadata !DIExpression()), !dbg !2338
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !2339
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2340
  %call = tail call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %0) #8, !dbg !2341
  %call1 = tail call fastcc i8* @first_htab_element(%struct.htab_iterator* %hti, %struct.htab* %call) #8, !dbg !2342
  %1 = bitcast i8* %call1 to %union.tree_node*, !dbg !2343
  ret %union.tree_node* %1, !dbg !2344
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !2345 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !2351, metadata !DIExpression()), !dbg !2352
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !2353
  %call = tail call fastcc zeroext i8 @end_htab_p(%struct.htab_iterator* %hti) #8, !dbg !2354
  ret i8 %call, !dbg !2355
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var) unnamed_addr #0 !dbg !2356 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2363, metadata !DIExpression()), !dbg !2364
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2365
  %bf.load = load i64, i64* %0, align 8, !dbg !2365
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2366
  %cmp = icmp eq i64 %bf.cast1, 33, !dbg !2366
  br i1 %cmp, label %land.end, label %land.lhs.true, !dbg !2367

land.lhs.true:                                    ; preds = %entry
  %bf.cast43 = and i64 %bf.load, 67108864, !dbg !2368
  %tobool = icmp eq i64 %bf.cast43, 0, !dbg !2368
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true17, !dbg !2369

lor.lhs.false:                                    ; preds = %land.lhs.true
  %bf.cast94 = and i64 %bf.load, 134217728, !dbg !2370
  %tobool10 = icmp eq i64 %bf.cast94, 0, !dbg !2370
  br i1 %tobool10, label %lor.lhs.false11, label %land.lhs.true17, !dbg !2371

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2372
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !2372
  %bf.load12 = load i64, i64* %1, align 8, !dbg !2372
  %bf.cast155 = and i64 %bf.load12, 33554432, !dbg !2372
  %tobool16 = icmp eq i64 %bf.cast155, 0, !dbg !2372
  br i1 %tobool16, label %land.rhs, label %land.lhs.true17, !dbg !2373

land.lhs.true17:                                  ; preds = %lor.lhs.false11, %lor.lhs.false, %land.lhs.true
  %bf.cast228 = and i64 %bf.load, 1048576, !dbg !2374
  %tobool23 = icmp eq i64 %bf.cast228, 0, !dbg !2374
  br i1 %tobool23, label %land.rhs, label %land.lhs.true24, !dbg !2375

land.lhs.true24:                                  ; preds = %land.lhs.true17
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2376
  %2 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !2376
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !2376
  %needs_constructing_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 6, !dbg !2376
  %bf.load26 = load i32, i32* %needs_constructing_flag, align 4, !dbg !2376
  %bf.clear28 = and i32 %bf.load26, 2048, !dbg !2376
  %tobool29 = icmp eq i32 %bf.clear28, 0, !dbg !2376
  br i1 %tobool29, label %land.end, label %land.rhs, !dbg !2377

land.rhs:                                         ; preds = %land.lhs.true24, %land.lhs.true17, %lor.lhs.false11
  %bf.cast346 = and i64 %bf.load, 134217728, !dbg !2378
  %tobool35 = icmp eq i64 %bf.cast346, 0, !dbg !2378
  br i1 %tobool35, label %lor.lhs.false36, label %land.end, !dbg !2379

lor.lhs.false36:                                  ; preds = %land.rhs
  %decl_flag_138 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2380
  %4 = bitcast i40* %decl_flag_138 to i64*, !dbg !2380
  %bf.load39 = load i64, i64* %4, align 8, !dbg !2380
  %bf.cast427 = and i64 %bf.load39, 33554432, !dbg !2380
  %tobool43 = icmp eq i64 %bf.cast427, 0, !dbg !2380
  br i1 %tobool43, label %lor.rhs, label %land.end, !dbg !2381

lor.rhs:                                          ; preds = %lor.lhs.false36
  %bf.lshr46 = lshr i64 %bf.load, 18, !dbg !2382
  %5 = trunc i64 %bf.lshr46 to i8, !dbg !2381
  %6 = and i8 %5, 1, !dbg !2381
  br label %land.end, !dbg !2381

land.end:                                         ; preds = %land.lhs.true24, %lor.lhs.false36, %land.rhs, %entry, %lor.rhs
  %7 = phi i8 [ 0, %land.lhs.true24 ], [ 0, %entry ], [ 1, %lor.lhs.false36 ], [ 1, %land.rhs ], [ %6, %lor.rhs ]
  ret i8 %7, !dbg !2383
}

declare dso_local void @dump_variable(%struct._IO_FILE*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @next_referenced_var(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !2384 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !2386, metadata !DIExpression()), !dbg !2387
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !2388
  %call = tail call fastcc i8* @next_htab_element(%struct.htab_iterator* %hti) #8, !dbg !2389
  %0 = bitcast i8* %call to %union.tree_node*, !dbg !2390
  ret %union.tree_node* %0, !dbg !2391
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_points_to_solution(%struct._IO_FILE* %file, %struct.pt_solution* %pt) local_unnamed_addr #4 !dbg !2392 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2397, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata %struct.pt_solution* %pt, metadata !2398, metadata !DIExpression()), !dbg !2399
  %0 = getelementptr inbounds %struct.pt_solution, %struct.pt_solution* %pt, i64 0, i32 0, !dbg !2400
  %bf.load = load i8, i8* %0, align 8, !dbg !2400
  %bf.clear = and i8 %bf.load, 1, !dbg !2400
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !2402
  br i1 %tobool, label %if.end, label %if.then, !dbg !2403

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2404
  %bf.load1.pre = load i8, i8* %0, align 8, !dbg !2405
  br label %if.end, !dbg !2404

if.end:                                           ; preds = %entry, %if.then
  %bf.load1 = phi i8 [ %bf.load, %entry ], [ %bf.load1.pre, %if.then ], !dbg !2405
  %bf.clear2 = and i8 %bf.load1, 2, !dbg !2405
  %tobool4 = icmp eq i8 %bf.clear2, 0, !dbg !2407
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !2408

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2409
  %bf.load8.pre = load i8, i8* %0, align 8, !dbg !2410
  br label %if.end7, !dbg !2409

if.end7:                                          ; preds = %if.end, %if.then5
  %bf.load8 = phi i8 [ %bf.load1, %if.end ], [ %bf.load8.pre, %if.then5 ], !dbg !2410
  %bf.clear10 = and i8 %bf.load8, 4, !dbg !2410
  %tobool12 = icmp eq i8 %bf.clear10, 0, !dbg !2412
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !2413

if.then13:                                        ; preds = %if.end7
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2414
  %bf.load16.pre = load i8, i8* %0, align 8, !dbg !2415
  br label %if.end15, !dbg !2414

if.end15:                                         ; preds = %if.end7, %if.then13
  %bf.load16 = phi i8 [ %bf.load8, %if.end7 ], [ %bf.load16.pre, %if.then13 ], !dbg !2415
  %bf.clear18 = and i8 %bf.load16, 8, !dbg !2415
  %tobool20 = icmp eq i8 %bf.clear18, 0, !dbg !2417
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !2418

if.then21:                                        ; preds = %if.end15
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2419
  br label %if.end23, !dbg !2419

if.end23:                                         ; preds = %if.end15, %if.then21
  %vars = getelementptr inbounds %struct.pt_solution, %struct.pt_solution* %pt, i64 0, i32 1, !dbg !2420
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %vars, align 8, !dbg !2420
  %tobool24 = icmp eq %struct.bitmap_head_def* %1, null, !dbg !2422
  br i1 %tobool24, label %if.end36, label %if.then25, !dbg !2423

if.then25:                                        ; preds = %if.end23
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2424
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %vars, align 8, !dbg !2426
  tail call void @dump_decl_set(%struct._IO_FILE* %file, %struct.bitmap_head_def* %2) #6, !dbg !2427
  %bf.load28 = load i8, i8* %0, align 8, !dbg !2428
  %bf.clear30 = and i8 %bf.load28, 16, !dbg !2428
  %tobool32 = icmp eq i8 %bf.clear30, 0, !dbg !2430
  br i1 %tobool32, label %if.end36, label %if.then33, !dbg !2431

if.then33:                                        ; preds = %if.then25
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !2432
  br label %if.end36, !dbg !2432

if.end36:                                         ; preds = %if.then25, %if.end23, %if.then33
  ret void, !dbg !2433
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !2434 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2440, metadata !DIExpression()), !dbg !2441
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2442
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2442

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2442
  %0 = load i32, i32* %num, align 8, !dbg !2442
  br label %cond.end, !dbg !2442

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2442
  ret i32 %cond, !dbg !2442
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2443 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2448, metadata !DIExpression()), !dbg !2449
  br label %land.end, !dbg !2450

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2450
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2450
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2450
  ret %union.tree_node* %0, !dbg !2450
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_points_to_info_for(%struct._IO_FILE* %file, %union.tree_node* %ptr) local_unnamed_addr #4 !dbg !2451 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2455, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr, metadata !2456, metadata !DIExpression()), !dbg !2458
  %ptr_info = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2459
  %0 = bitcast %union.tree_node** %ptr_info to %struct.ptr_info_def**, !dbg !2459
  %1 = load %struct.ptr_info_def*, %struct.ptr_info_def** %0, align 8, !dbg !2459
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %1, metadata !2457, metadata !DIExpression()), !dbg !2458
  %2 = load i32, i32* @dump_flags, align 4, !dbg !2460
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %ptr, i32 %2) #6, !dbg !2461
  %tobool = icmp eq %struct.ptr_info_def* %1, null, !dbg !2462
  br i1 %tobool, label %if.else, label %if.then, !dbg !2464

if.then:                                          ; preds = %entry
  %pt = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %1, i64 0, i32 0, !dbg !2465
  tail call void @dump_points_to_solution(%struct._IO_FILE* %file, %struct.pt_solution* nonnull %pt) #8, !dbg !2466
  br label %if.end, !dbg !2466

if.else:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2467
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2468
  ret void, !dbg !2469
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_alias_info() local_unnamed_addr #4 !dbg !2470 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2473
  tail call void @dump_alias_info(%struct._IO_FILE* %0) #8, !dbg !2474
  ret void, !dbg !2475
}

; Function Attrs: nounwind uwtable
define dso_local %struct.ptr_info_def* @get_ptr_info(%union.tree_node* %t) local_unnamed_addr #4 !dbg !2476 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2480, metadata !DIExpression()), !dbg !2482
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2483
  %0 = bitcast %union.tree_node** %type to i64**, !dbg !2483
  %1 = load i64*, i64** %0, align 8, !dbg !2483
  %bf.load = load i64, i64* %1, align 8, !dbg !2483
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2483
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !2483
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !2483

lor.lhs.false:                                    ; preds = %entry
  %cmp7 = icmp eq i64 %bf.cast1, 12, !dbg !2483
  br i1 %cmp7, label %cond.end, label %cond.true, !dbg !2483

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 379, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2483
  br label %cond.end, !dbg !2483

cond.end:                                         ; preds = %entry, %lor.lhs.false, %cond.true
  %ptr_info = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2484
  %2 = bitcast %union.tree_node** %ptr_info to %struct.ptr_info_def**, !dbg !2484
  %3 = load %struct.ptr_info_def*, %struct.ptr_info_def** %2, align 8, !dbg !2484
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %3, metadata !2481, metadata !DIExpression()), !dbg !2482
  %cmp8 = icmp eq %struct.ptr_info_def* %3, null, !dbg !2485
  br i1 %cmp8, label %if.then, label %if.end, !dbg !2487

if.then:                                          ; preds = %cond.end
  %call = tail call i8* @ggc_alloc_cleared_stat(i64 16) #6, !dbg !2488
  %4 = bitcast i8* %call to %struct.ptr_info_def*, !dbg !2488
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %4, metadata !2481, metadata !DIExpression()), !dbg !2482
  %pt = bitcast i8* %call to %struct.pt_solution*, !dbg !2490
  tail call void @pt_solution_reset(%struct.pt_solution* %pt) #6, !dbg !2491
  %5 = bitcast %union.tree_node** %ptr_info to i8**, !dbg !2492
  store i8* %call, i8** %5, align 8, !dbg !2492
  br label %if.end, !dbg !2493

if.end:                                           ; preds = %if.then, %cond.end
  %pi.0 = phi %struct.ptr_info_def* [ %4, %if.then ], [ %3, %cond.end ], !dbg !2482
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %pi.0, metadata !2481, metadata !DIExpression()), !dbg !2482
  ret %struct.ptr_info_def* %pi.0, !dbg !2494
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i8* @ggc_alloc_cleared_stat(i64) local_unnamed_addr #1

declare dso_local void @pt_solution_reset(%struct.pt_solution*) local_unnamed_addr #1

declare dso_local void @dump_decl_set(%struct._IO_FILE*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @debug_points_to_info_for(%union.tree_node* %var) local_unnamed_addr #4 !dbg !2495 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2499, metadata !DIExpression()), !dbg !2500
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2501
  tail call void @dump_points_to_info_for(%struct._IO_FILE* %0, %union.tree_node* %var) #8, !dbg !2502
  ret void, !dbg !2503
}

; Function Attrs: nounwind uwtable
define dso_local void @ao_ref_init(%struct.ao_ref_s* %r, %union.tree_node* %ref) local_unnamed_addr #4 !dbg !2504 {
entry:
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r, metadata !2519, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata %union.tree_node* %ref, metadata !2520, metadata !DIExpression()), !dbg !2521
  %ref1 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %r, i64 0, i32 0, !dbg !2522
  store %union.tree_node* %ref, %union.tree_node** %ref1, align 8, !dbg !2523
  %base = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %r, i64 0, i32 1, !dbg !2524
  store %union.tree_node* null, %union.tree_node** %base, align 8, !dbg !2525
  %offset = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %r, i64 0, i32 2, !dbg !2526
  store i64 0, i64* %offset, align 8, !dbg !2527
  %size = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %r, i64 0, i32 3, !dbg !2528
  store i64 -1, i64* %size, align 8, !dbg !2529
  %max_size = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %r, i64 0, i32 4, !dbg !2530
  store i64 -1, i64* %max_size, align 8, !dbg !2531
  %ref_alias_set = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %r, i64 0, i32 5, !dbg !2532
  store i32 -1, i32* %ref_alias_set, align 8, !dbg !2533
  %base_alias_set = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %r, i64 0, i32 6, !dbg !2534
  store i32 -1, i32* %base_alias_set, align 4, !dbg !2535
  ret void, !dbg !2536
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @ao_ref_base(%struct.ao_ref_s* %ref) local_unnamed_addr #4 !dbg !2537 {
entry:
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !2541, metadata !DIExpression()), !dbg !2542
  %base = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 1, !dbg !2543
  %0 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !2543
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !2545
  br i1 %tobool, label %if.end, label %if.then, !dbg !2546

if.then:                                          ; preds = %entry
  br label %return, !dbg !2547

if.end:                                           ; preds = %entry
  %ref2 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 0, !dbg !2548
  %1 = load %union.tree_node*, %union.tree_node** %ref2, align 8, !dbg !2548
  %offset = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 2, !dbg !2549
  %size = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 3, !dbg !2550
  %max_size = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 4, !dbg !2551
  %call = tail call %union.tree_node* @get_ref_base_and_extent(%union.tree_node* %1, i64* nonnull %offset, i64* nonnull %size, i64* nonnull %max_size) #6, !dbg !2552
  store %union.tree_node* %call, %union.tree_node** %base, align 8, !dbg !2553
  br label %return, !dbg !2554

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ %call, %if.end ], !dbg !2542
  ret %union.tree_node* %retval.0, !dbg !2555
}

declare dso_local %union.tree_node* @get_ref_base_and_extent(%union.tree_node*, i64*, i64*, i64*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ao_ref_alias_set(%struct.ao_ref_s* %ref) local_unnamed_addr #4 !dbg !2556 {
entry:
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !2560, metadata !DIExpression()), !dbg !2561
  %ref_alias_set = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 5, !dbg !2562
  %0 = load i32, i32* %ref_alias_set, align 8, !dbg !2562
  %cmp = icmp eq i32 %0, -1, !dbg !2564
  br i1 %cmp, label %if.end, label %if.then, !dbg !2565

if.then:                                          ; preds = %entry
  br label %return, !dbg !2566

if.end:                                           ; preds = %entry
  %ref2 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 0, !dbg !2567
  %1 = load %union.tree_node*, %union.tree_node** %ref2, align 8, !dbg !2567
  %call = tail call i32 @get_alias_set(%union.tree_node* %1) #6, !dbg !2568
  store i32 %call, i32* %ref_alias_set, align 8, !dbg !2569
  br label %return, !dbg !2570

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call, %if.end ], !dbg !2561
  ret i32 %retval.0, !dbg !2571
}

declare dso_local i32 @get_alias_set(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ao_ref_init_from_ptr_and_size(%struct.ao_ref_s* %ref, %union.tree_node* %ptr, %union.tree_node* %size) local_unnamed_addr #4 !dbg !2572 {
entry:
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !2576, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr, metadata !2577, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata %union.tree_node* %size, metadata !2578, metadata !DIExpression()), !dbg !2581
  %0 = bitcast i64* %t1 to i8*, !dbg !2582
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2582
  %1 = bitcast i64* %t2 to i8*, !dbg !2582
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2582
  %ref1 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 0, !dbg !2583
  store %union.tree_node* null, %union.tree_node** %ref1, align 8, !dbg !2584
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2585
  %bf.load = load i64, i64* %2, align 8, !dbg !2585
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2587
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !2587
  br i1 %cmp, label %if.then, label %if.else, !dbg !2588

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2589
  %3 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2589
  %offset = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 2, !dbg !2590
  call void @llvm.dbg.value(metadata i64* %t1, metadata !2579, metadata !DIExpression(DW_OP_deref)), !dbg !2581
  call void @llvm.dbg.value(metadata i64* %t2, metadata !2580, metadata !DIExpression(DW_OP_deref)), !dbg !2581
  %call = call %union.tree_node* @get_ref_base_and_extent(%union.tree_node* %3, i64* nonnull %offset, i64* nonnull %t1, i64* nonnull %t2) #6, !dbg !2591
  %base2 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 1, !dbg !2592
  store %union.tree_node* %call, %union.tree_node** %base2, align 8, !dbg !2593
  br label %if.end, !dbg !2594

if.else:                                          ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16, !dbg !2595
  %call3 = tail call %union.tree_node* @build1_stat(i32 47, %union.tree_node* %4, %union.tree_node* %ptr) #6, !dbg !2595
  %base4 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 1, !dbg !2597
  store %union.tree_node* %call3, %union.tree_node** %base4, align 8, !dbg !2598
  %offset5 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 2, !dbg !2599
  store i64 0, i64* %offset5, align 8, !dbg !2600
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool = icmp eq %union.tree_node* %size, null, !dbg !2601
  br i1 %tobool, label %if.else20, label %land.lhs.true, !dbg !2603

land.lhs.true:                                    ; preds = %if.end
  %call6 = call i32 @host_integerp(%union.tree_node* nonnull %size, i32 0) #6, !dbg !2604
  %tobool7 = icmp eq i32 %call6, 0, !dbg !2604
  br i1 %tobool7, label %if.else20, label %land.lhs.true8, !dbg !2605

land.lhs.true8:                                   ; preds = %land.lhs.true
  %int_cst9 = getelementptr inbounds %union.tree_node, %union.tree_node* %size, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2606
  %low = bitcast i32* %int_cst9 to i64*, !dbg !2606
  %5 = load i64, i64* %low, align 8, !dbg !2606
  %6 = icmp ult i64 %5, 2305843009213693952, !dbg !2607
  br i1 %6, label %if.then14, label %if.else20, !dbg !2608

if.then14:                                        ; preds = %land.lhs.true8
  %mul18 = shl i64 %5, 3, !dbg !2609
  %size19 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 3, !dbg !2610
  store i64 %mul18, i64* %size19, align 8, !dbg !2611
  %max_size = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 4, !dbg !2612
  store i64 %mul18, i64* %max_size, align 8, !dbg !2613
  br label %if.end23, !dbg !2614

if.else20:                                        ; preds = %land.lhs.true, %if.end, %land.lhs.true8
  %size21 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 3, !dbg !2615
  store i64 -1, i64* %size21, align 8, !dbg !2616
  %max_size22 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 4, !dbg !2617
  store i64 -1, i64* %max_size22, align 8, !dbg !2618
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then14
  %ref_alias_set = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 5, !dbg !2619
  store i32 0, i32* %ref_alias_set, align 8, !dbg !2620
  %base_alias_set = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 6, !dbg !2621
  store i32 0, i32* %base_alias_set, align 4, !dbg !2622
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2623
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2623
  ret void, !dbg !2623
}

declare dso_local %union.tree_node* @build1_stat(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @host_integerp(%union.tree_node*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @refs_may_alias_p_1(%struct.ao_ref_s* %ref1, %struct.ao_ref_s* %ref2, i8 zeroext %tbaa_p) local_unnamed_addr #4 !dbg !2624 {
entry:
  %offset477 = alloca i64, align 8
  %size = alloca i64, align 8
  %max_size478 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref1, metadata !2628, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref2, metadata !2629, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 %tbaa_p, metadata !2630, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 0, metadata !2633, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 0, metadata !2634, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 -1, metadata !2635, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 -1, metadata !2636, metadata !DIExpression()), !dbg !2655
  %ref = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref1, i64 0, i32 0, !dbg !2656
  %0 = load %union.tree_node*, %union.tree_node** %ref, align 8, !dbg !2656
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !2656
  br i1 %tobool, label %land.lhs.true92, label %lor.lhs.false, !dbg !2656

lor.lhs.false:                                    ; preds = %entry
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2656
  %2 = bitcast %struct.ao_ref_s* %ref1 to i64**, !dbg !2656
  %bf.load = load i64, i64* %1, align 8, !dbg !2656
  %bf.cast74 = and i64 %bf.load, 65535, !dbg !2656
  %cmp = icmp eq i64 %bf.cast74, 32, !dbg !2656
  br i1 %cmp, label %land.lhs.true92, label %lor.lhs.false4, !dbg !2656

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp10 = icmp eq i64 %bf.cast74, 34, !dbg !2656
  br i1 %cmp10, label %land.lhs.true92, label %lor.lhs.false11, !dbg !2656

lor.lhs.false11:                                  ; preds = %lor.lhs.false4
  %cmp17 = icmp eq i64 %bf.cast74, 36, !dbg !2656
  br i1 %cmp17, label %land.lhs.true92, label %lor.lhs.false18, !dbg !2656

lor.lhs.false18:                                  ; preds = %lor.lhs.false11
  %cmp24 = icmp eq i64 %bf.cast74, 141, !dbg !2656
  br i1 %cmp24, label %land.lhs.true, label %lor.lhs.false49, !dbg !2656

land.lhs.true:                                    ; preds = %lor.lhs.false18
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2656
  %3 = bitcast i32* %var to i64**, !dbg !2656
  %4 = load i64*, i64** %3, align 8, !dbg !2656
  %bf.load27 = load i64, i64* %4, align 8, !dbg !2656
  %bf.cast2983 = and i64 %bf.load27, 65535, !dbg !2656
  %cmp30 = icmp eq i64 %bf.cast2983, 32, !dbg !2656
  br i1 %cmp30, label %land.lhs.true92, label %lor.lhs.false31, !dbg !2656

lor.lhs.false31:                                  ; preds = %land.lhs.true
  %cmp39 = icmp eq i64 %bf.cast2983, 34, !dbg !2656
  br i1 %cmp39, label %land.lhs.true92, label %lor.lhs.false40, !dbg !2656

lor.lhs.false40:                                  ; preds = %lor.lhs.false31
  %cmp48 = icmp eq i64 %bf.cast2983, 36, !dbg !2656
  br i1 %cmp48, label %land.lhs.true92, label %lor.lhs.false49, !dbg !2656

lor.lhs.false49:                                  ; preds = %lor.lhs.false40, %lor.lhs.false18
  %call = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* nonnull %0) #8, !dbg !2656
  %tobool51 = icmp eq i8 %call, 0, !dbg !2656
  br i1 %tobool51, label %lor.lhs.false52, label %land.lhs.true92, !dbg !2656

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %5 = load i64*, i64** %2, align 8, !dbg !2656
  %bf.load55 = load i64, i64* %5, align 8, !dbg !2656
  %bf.cast5778 = and i64 %bf.load55, 65535, !dbg !2656
  %cmp58 = icmp eq i64 %bf.cast5778, 47, !dbg !2656
  br i1 %cmp58, label %land.lhs.true92, label %lor.lhs.false60, !dbg !2656

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %cmp66 = icmp eq i64 %bf.cast5778, 48, !dbg !2656
  br i1 %cmp66, label %land.lhs.true92, label %lor.lhs.false68, !dbg !2656

lor.lhs.false68:                                  ; preds = %lor.lhs.false60
  %cmp74 = icmp eq i64 %bf.cast5778, 49, !dbg !2656
  br i1 %cmp74, label %land.lhs.true92, label %lor.lhs.false76, !dbg !2656

lor.lhs.false76:                                  ; preds = %lor.lhs.false68
  %cmp82 = icmp eq i64 %bf.cast5778, 152, !dbg !2656
  br i1 %cmp82, label %land.lhs.true92, label %lor.lhs.false84, !dbg !2656

lor.lhs.false84:                                  ; preds = %lor.lhs.false76
  %cmp90 = icmp eq i64 %bf.cast5778, 33, !dbg !2656
  br i1 %cmp90, label %land.lhs.true92, label %cond.true, !dbg !2656

land.lhs.true92:                                  ; preds = %lor.lhs.false49, %entry, %lor.lhs.false84, %lor.lhs.false76, %lor.lhs.false68, %lor.lhs.false60, %lor.lhs.false52, %lor.lhs.false40, %lor.lhs.false31, %land.lhs.true, %lor.lhs.false11, %lor.lhs.false4, %lor.lhs.false
  %ref93 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref2, i64 0, i32 0, !dbg !2656
  %6 = load %union.tree_node*, %union.tree_node** %ref93, align 8, !dbg !2656
  %tobool94 = icmp eq %union.tree_node* %6, null, !dbg !2656
  br i1 %tobool94, label %cond.end, label %lor.lhs.false95, !dbg !2656

lor.lhs.false95:                                  ; preds = %land.lhs.true92
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2656
  %8 = bitcast %struct.ao_ref_s* %ref2 to i64**, !dbg !2656
  %bf.load98 = load i64, i64* %7, align 8, !dbg !2656
  %bf.cast10062 = and i64 %bf.load98, 65535, !dbg !2656
  %cmp101 = icmp eq i64 %bf.cast10062, 32, !dbg !2656
  br i1 %cmp101, label %cond.end, label %lor.lhs.false103, !dbg !2656

lor.lhs.false103:                                 ; preds = %lor.lhs.false95
  %cmp109 = icmp eq i64 %bf.cast10062, 34, !dbg !2656
  br i1 %cmp109, label %cond.end, label %lor.lhs.false111, !dbg !2656

lor.lhs.false111:                                 ; preds = %lor.lhs.false103
  %cmp117 = icmp eq i64 %bf.cast10062, 36, !dbg !2656
  br i1 %cmp117, label %cond.end, label %lor.lhs.false119, !dbg !2656

lor.lhs.false119:                                 ; preds = %lor.lhs.false111
  %cmp125 = icmp eq i64 %bf.cast10062, 141, !dbg !2656
  br i1 %cmp125, label %land.lhs.true127, label %lor.lhs.false157, !dbg !2656

land.lhs.true127:                                 ; preds = %lor.lhs.false119
  %var130 = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2656
  %9 = bitcast i32* %var130 to i64**, !dbg !2656
  %10 = load i64*, i64** %9, align 8, !dbg !2656
  %bf.load132 = load i64, i64* %10, align 8, !dbg !2656
  %bf.cast13471 = and i64 %bf.load132, 65535, !dbg !2656
  %cmp135 = icmp eq i64 %bf.cast13471, 32, !dbg !2656
  br i1 %cmp135, label %cond.end, label %lor.lhs.false137, !dbg !2656

lor.lhs.false137:                                 ; preds = %land.lhs.true127
  %cmp145 = icmp eq i64 %bf.cast13471, 34, !dbg !2656
  br i1 %cmp145, label %cond.end, label %lor.lhs.false147, !dbg !2656

lor.lhs.false147:                                 ; preds = %lor.lhs.false137
  %cmp155 = icmp eq i64 %bf.cast13471, 36, !dbg !2656
  br i1 %cmp155, label %cond.end, label %lor.lhs.false157, !dbg !2656

lor.lhs.false157:                                 ; preds = %lor.lhs.false147, %lor.lhs.false119
  %call159 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* nonnull %6) #8, !dbg !2656
  %tobool161 = icmp eq i8 %call159, 0, !dbg !2656
  br i1 %tobool161, label %lor.lhs.false162, label %cond.end, !dbg !2656

lor.lhs.false162:                                 ; preds = %lor.lhs.false157
  %11 = load i64*, i64** %8, align 8, !dbg !2656
  %bf.load165 = load i64, i64* %11, align 8, !dbg !2656
  %bf.cast16766 = and i64 %bf.load165, 65535, !dbg !2656
  %cmp168 = icmp eq i64 %bf.cast16766, 47, !dbg !2656
  br i1 %cmp168, label %cond.end, label %lor.lhs.false170, !dbg !2656

lor.lhs.false170:                                 ; preds = %lor.lhs.false162
  %cmp176 = icmp eq i64 %bf.cast16766, 48, !dbg !2656
  br i1 %cmp176, label %cond.end, label %lor.lhs.false178, !dbg !2656

lor.lhs.false178:                                 ; preds = %lor.lhs.false170
  %cmp184 = icmp eq i64 %bf.cast16766, 49, !dbg !2656
  br i1 %cmp184, label %cond.end, label %lor.lhs.false186, !dbg !2656

lor.lhs.false186:                                 ; preds = %lor.lhs.false178
  %cmp192 = icmp eq i64 %bf.cast16766, 152, !dbg !2656
  br i1 %cmp192, label %cond.end, label %lor.lhs.false194, !dbg !2656

lor.lhs.false194:                                 ; preds = %lor.lhs.false186
  %cmp200 = icmp eq i64 %bf.cast16766, 33, !dbg !2656
  br i1 %cmp200, label %cond.end, label %cond.true, !dbg !2656

cond.true:                                        ; preds = %lor.lhs.false194, %lor.lhs.false84
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 786, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2656
  br label %cond.end, !dbg !2656

cond.end:                                         ; preds = %lor.lhs.false157, %land.lhs.true92, %lor.lhs.false95, %lor.lhs.false103, %lor.lhs.false111, %land.lhs.true127, %lor.lhs.false137, %lor.lhs.false147, %lor.lhs.false162, %lor.lhs.false170, %lor.lhs.false178, %lor.lhs.false186, %lor.lhs.false194, %cond.true
  %call202 = tail call %union.tree_node* @ao_ref_base(%struct.ao_ref_s* %ref1) #8, !dbg !2657
  call void @llvm.dbg.value(metadata %union.tree_node* %call202, metadata !2631, metadata !DIExpression()), !dbg !2655
  %offset = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref1, i64 0, i32 2, !dbg !2658
  %12 = load i64, i64* %offset, align 8, !dbg !2658
  call void @llvm.dbg.value(metadata i64 %12, metadata !2633, metadata !DIExpression()), !dbg !2655
  %max_size = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref1, i64 0, i32 4, !dbg !2659
  %13 = load i64, i64* %max_size, align 8, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %13, metadata !2635, metadata !DIExpression()), !dbg !2655
  %call203 = tail call %union.tree_node* @ao_ref_base(%struct.ao_ref_s* %ref2) #8, !dbg !2660
  call void @llvm.dbg.value(metadata %union.tree_node* %call203, metadata !2632, metadata !DIExpression()), !dbg !2655
  %offset204 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref2, i64 0, i32 2, !dbg !2661
  %14 = load i64, i64* %offset204, align 8, !dbg !2661
  call void @llvm.dbg.value(metadata i64 %14, metadata !2634, metadata !DIExpression()), !dbg !2655
  %max_size205 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref2, i64 0, i32 4, !dbg !2662
  %15 = load i64, i64* %max_size205, align 8, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %15, metadata !2636, metadata !DIExpression()), !dbg !2655
  %16 = getelementptr inbounds %union.tree_node, %union.tree_node* %call202, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2663
  %bf.load207 = load i64, i64* %16, align 8, !dbg !2663
  %bf.cast20919 = and i64 %bf.load207, 65535, !dbg !2665
  %cmp210 = icmp eq i64 %bf.cast20919, 141, !dbg !2665
  br i1 %cmp210, label %cleanup653, label %lor.lhs.false212, !dbg !2666

lor.lhs.false212:                                 ; preds = %cond.end
  %17 = getelementptr inbounds %union.tree_node, %union.tree_node* %call203, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2667
  %bf.load214 = load i64, i64* %17, align 8, !dbg !2667
  %bf.cast21620 = and i64 %bf.load214, 65535, !dbg !2668
  %cmp217 = icmp eq i64 %bf.cast21620, 141, !dbg !2668
  br i1 %cmp217, label %cleanup653, label %lor.lhs.false219, !dbg !2669

lor.lhs.false219:                                 ; preds = %lor.lhs.false212
  %cmp224 = icmp eq i64 %bf.cast20919, 33, !dbg !2670
  br i1 %cmp224, label %cleanup653, label %lor.lhs.false226, !dbg !2671

lor.lhs.false226:                                 ; preds = %lor.lhs.false219
  %cmp231 = icmp eq i64 %bf.cast21620, 33, !dbg !2672
  br i1 %cmp231, label %cleanup653, label %lor.lhs.false233, !dbg !2673

lor.lhs.false233:                                 ; preds = %lor.lhs.false226
  %call234 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call202) #6, !dbg !2674
  %tobool236 = icmp eq i8 %call234, 0, !dbg !2674
  br i1 %tobool236, label %lor.lhs.false237, label %cleanup653, !dbg !2675

lor.lhs.false237:                                 ; preds = %lor.lhs.false233
  %call238 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call203) #6, !dbg !2676
  %tobool240 = icmp eq i8 %call238, 0, !dbg !2676
  br i1 %tobool240, label %if.end, label %cleanup653, !dbg !2677

if.end:                                           ; preds = %lor.lhs.false237
  %bf.load242 = load i64, i64* %16, align 8, !dbg !2678
  %bf.cast24423 = and i64 %bf.load242, 65535, !dbg !2680
  %cmp245 = icmp eq i64 %bf.cast24423, 29, !dbg !2680
  br i1 %cmp245, label %cleanup653, label %lor.lhs.false247, !dbg !2681

lor.lhs.false247:                                 ; preds = %if.end
  %bf.load249 = load i64, i64* %17, align 8, !dbg !2682
  %bf.cast25124 = and i64 %bf.load249, 65535, !dbg !2683
  %cmp252 = icmp eq i64 %bf.cast25124, 29, !dbg !2683
  br i1 %cmp252, label %cleanup653, label %if.end255, !dbg !2684

if.end255:                                        ; preds = %lor.lhs.false247
  %cmp260 = icmp eq i64 %bf.cast24423, 32, !dbg !2685
  br i1 %cmp260, label %lor.end308, label %lor.lhs.false262, !dbg !2685

lor.lhs.false262:                                 ; preds = %if.end255
  %cmp267 = icmp eq i64 %bf.cast24423, 34, !dbg !2685
  br i1 %cmp267, label %lor.end308, label %lor.lhs.false269, !dbg !2685

lor.lhs.false269:                                 ; preds = %lor.lhs.false262
  %cmp274 = icmp eq i64 %bf.cast24423, 36, !dbg !2685
  br i1 %cmp274, label %lor.end308, label %lor.rhs, !dbg !2685

lor.rhs:                                          ; preds = %lor.lhs.false269
  %cmp280 = icmp eq i64 %bf.cast24423, 141, !dbg !2685
  br i1 %cmp280, label %land.rhs, label %lor.end308, !dbg !2685

land.rhs:                                         ; preds = %lor.rhs
  %var283 = getelementptr inbounds %union.tree_node, %union.tree_node* %call202, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2685
  %18 = bitcast i32* %var283 to i64**, !dbg !2685
  %19 = load i64*, i64** %18, align 8, !dbg !2685
  %bf.load285 = load i64, i64* %19, align 8, !dbg !2685
  %bf.cast28759 = and i64 %bf.load285, 65535, !dbg !2685
  %cmp288 = icmp eq i64 %bf.cast28759, 32, !dbg !2685
  br i1 %cmp288, label %lor.end308, label %lor.lhs.false290, !dbg !2685

lor.lhs.false290:                                 ; preds = %land.rhs
  %cmp297 = icmp eq i64 %bf.cast28759, 34, !dbg !2685
  br i1 %cmp297, label %lor.end308, label %lor.rhs299, !dbg !2685

lor.rhs299:                                       ; preds = %lor.lhs.false290
  %cmp306 = icmp eq i64 %bf.cast28759, 36, !dbg !2685
  br label %lor.end308, !dbg !2685

lor.end308:                                       ; preds = %lor.rhs, %lor.rhs299, %lor.lhs.false290, %land.rhs, %lor.lhs.false269, %lor.lhs.false262, %if.end255
  %20 = phi i1 [ true, %lor.lhs.false269 ], [ true, %lor.lhs.false262 ], [ true, %if.end255 ], [ false, %lor.rhs ], [ true, %lor.lhs.false290 ], [ true, %land.rhs ], [ %cmp306, %lor.rhs299 ]
  call void @llvm.dbg.value(metadata i1 %20, metadata !2637, metadata !DIExpression()), !dbg !2655
  %cmp314 = icmp eq i64 %bf.cast25124, 32, !dbg !2686
  br i1 %cmp314, label %lor.end367, label %lor.lhs.false316, !dbg !2686

lor.lhs.false316:                                 ; preds = %lor.end308
  %cmp321 = icmp eq i64 %bf.cast25124, 34, !dbg !2686
  br i1 %cmp321, label %lor.end367, label %lor.lhs.false323, !dbg !2686

lor.lhs.false323:                                 ; preds = %lor.lhs.false316
  %cmp328 = icmp eq i64 %bf.cast25124, 36, !dbg !2686
  br i1 %cmp328, label %lor.end367, label %lor.rhs330, !dbg !2686

lor.rhs330:                                       ; preds = %lor.lhs.false323
  %cmp335 = icmp eq i64 %bf.cast25124, 141, !dbg !2686
  br i1 %cmp335, label %land.rhs337, label %lor.end367, !dbg !2686

land.rhs337:                                      ; preds = %lor.rhs330
  %var339 = getelementptr inbounds %union.tree_node, %union.tree_node* %call203, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2686
  %21 = bitcast i32* %var339 to i64**, !dbg !2686
  %22 = load i64*, i64** %21, align 8, !dbg !2686
  %bf.load341 = load i64, i64* %22, align 8, !dbg !2686
  %bf.cast34356 = and i64 %bf.load341, 65535, !dbg !2686
  %cmp344 = icmp eq i64 %bf.cast34356, 32, !dbg !2686
  br i1 %cmp344, label %lor.end367, label %lor.lhs.false346, !dbg !2686

lor.lhs.false346:                                 ; preds = %land.rhs337
  %cmp353 = icmp eq i64 %bf.cast34356, 34, !dbg !2686
  br i1 %cmp353, label %lor.end367, label %lor.rhs355, !dbg !2686

lor.rhs355:                                       ; preds = %lor.lhs.false346
  %cmp362 = icmp eq i64 %bf.cast34356, 36, !dbg !2686
  br label %lor.end367, !dbg !2686

lor.end367:                                       ; preds = %lor.rhs330, %lor.rhs355, %lor.lhs.false346, %land.rhs337, %lor.lhs.false323, %lor.lhs.false316, %lor.end308
  %23 = phi i1 [ true, %lor.lhs.false323 ], [ true, %lor.lhs.false316 ], [ true, %lor.end308 ], [ false, %lor.rhs330 ], [ true, %lor.lhs.false346 ], [ true, %land.rhs337 ], [ %cmp362, %lor.rhs355 ]
  %or.cond = and i1 %20, %23, !dbg !2687
  br i1 %or.cond, label %if.then375, label %if.end377, !dbg !2687

if.then375:                                       ; preds = %lor.end367
  %call376 = tail call fastcc zeroext i8 @decl_refs_may_alias_p(%union.tree_node* %call202, i64 %12, i64 %13, %union.tree_node* %call203, i64 %14, i64 %15) #8, !dbg !2689
  br label %cleanup653, !dbg !2690

if.end377:                                        ; preds = %lor.end367
  %cmp382 = icmp eq i64 %bf.cast24423, 47, !dbg !2691
  br i1 %cmp382, label %lor.end398, label %lor.lhs.false384, !dbg !2691

lor.lhs.false384:                                 ; preds = %if.end377
  %cmp389 = icmp eq i64 %bf.cast24423, 48, !dbg !2691
  br i1 %cmp389, label %lor.end398, label %lor.rhs391, !dbg !2691

lor.rhs391:                                       ; preds = %lor.lhs.false384
  %cmp396 = icmp eq i64 %bf.cast24423, 49, !dbg !2691
  %phitmp = zext i1 %cmp396 to i8, !dbg !2691
  br label %lor.end398, !dbg !2691

lor.end398:                                       ; preds = %lor.rhs391, %lor.lhs.false384, %if.end377
  %24 = phi i8 [ 1, %lor.lhs.false384 ], [ 1, %if.end377 ], [ %phitmp, %lor.rhs391 ]
  call void @llvm.dbg.value(metadata i8 %24, metadata !2639, metadata !DIExpression()), !dbg !2655
  %cmp405 = icmp eq i64 %bf.cast25124, 47, !dbg !2692
  br i1 %cmp405, label %lor.end421, label %lor.lhs.false407, !dbg !2692

lor.lhs.false407:                                 ; preds = %lor.end398
  %cmp412 = icmp eq i64 %bf.cast25124, 48, !dbg !2692
  br i1 %cmp412, label %lor.end421, label %lor.rhs414, !dbg !2692

lor.rhs414:                                       ; preds = %lor.lhs.false407
  %cmp419 = icmp eq i64 %bf.cast25124, 49, !dbg !2692
  br label %lor.end421, !dbg !2692

lor.end421:                                       ; preds = %lor.rhs414, %lor.lhs.false407, %lor.end398
  %25 = phi i1 [ true, %lor.lhs.false407 ], [ true, %lor.end398 ], [ %cmp419, %lor.rhs414 ]
  %tobool425 = icmp ne i8 %24, 0, !dbg !2693
  %or.cond2 = and i1 %tobool425, %23, !dbg !2694
  %spec.select11 = select i1 %or.cond2, i64 %13, i64 %15, !dbg !2694
  %spec.select12 = select i1 %or.cond2, i64 %15, i64 %13, !dbg !2694
  %spec.select13 = select i1 %or.cond2, i64 %12, i64 %14, !dbg !2694
  %spec.select14 = select i1 %or.cond2, i64 %14, i64 %12, !dbg !2694
  %spec.select15 = select i1 %or.cond2, %union.tree_node* %call202, %union.tree_node* %call203, !dbg !2694
  %spec.select16 = select i1 %or.cond2, %union.tree_node* %call203, %union.tree_node* %call202, !dbg !2694
  %spec.select17 = select i1 %or.cond2, %struct.ao_ref_s* %ref1, %struct.ao_ref_s* %ref2, !dbg !2694
  %spec.select18 = select i1 %or.cond2, %struct.ao_ref_s* %ref2, %struct.ao_ref_s* %ref1, !dbg !2694
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %spec.select18, metadata !2628, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %spec.select17, metadata !2629, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select16, metadata !2631, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select15, metadata !2632, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %spec.select14, metadata !2633, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %spec.select13, metadata !2634, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %spec.select12, metadata !2635, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %spec.select11, metadata !2636, metadata !DIExpression()), !dbg !2655
  %tobool43588 = and i1 %20, %25, !dbg !2695
  %or.cond3 = or i1 %or.cond2, %tobool43588, !dbg !2695
  br i1 %or.cond3, label %land.lhs.true436, label %if.end586, !dbg !2695

land.lhs.true436:                                 ; preds = %lor.end421
  %26 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2696
  %tobool437 = icmp eq %struct.function* %26, null, !dbg !2696
  br i1 %tobool437, label %if.end586, label %land.lhs.true438, !dbg !2697

land.lhs.true438:                                 ; preds = %land.lhs.true436
  %call440 = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* nonnull %26) #8, !dbg !2698
  %tobool442 = icmp eq i8 %call440, 0, !dbg !2698
  br i1 %tobool442, label %if.end586, label %land.lhs.true443, !dbg !2699

land.lhs.true443:                                 ; preds = %land.lhs.true438
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %spec.select15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2700
  %27 = bitcast %union.tree_node** %operands to i64**, !dbg !2700
  %28 = load i64*, i64** %27, align 8, !dbg !2700
  %bf.load445 = load i64, i64* %28, align 8, !dbg !2700
  %bf.cast44744 = and i64 %bf.load445, 65535, !dbg !2701
  %cmp448 = icmp eq i64 %bf.cast44744, 141, !dbg !2701
  br i1 %cmp448, label %if.then450, label %if.end586, !dbg !2702

if.then450:                                       ; preds = %land.lhs.true443
  %def_stmt455 = getelementptr inbounds i64, i64* %28, i64 4, !dbg !2703
  %29 = bitcast i64* %def_stmt455 to %union.gimple_statement_d**, !dbg !2703
  %30 = load %union.gimple_statement_d*, %union.gimple_statement_d** %29, align 8, !dbg !2703
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %30, metadata !2647, metadata !DIExpression()), !dbg !2704
  %31 = bitcast i64* %offset477 to i8*, !dbg !2705
  %32 = bitcast i64* %size to i8*, !dbg !2705
  %33 = bitcast i64* %max_size478 to i8*, !dbg !2705
  br label %while.cond, !dbg !2706

while.cond:                                       ; preds = %cleanup, %if.then450
  %def_stmt.0 = phi %union.gimple_statement_d* [ %30, %if.then450 ], [ %def_stmt.1, %cleanup ], !dbg !2704
  %max_size2.1 = phi i64 [ %spec.select11, %if.then450 ], [ %max_size2.3, %cleanup ], !dbg !2707
  %offset2.1 = phi i64 [ %spec.select13, %if.then450 ], [ %offset2.2, %cleanup ], !dbg !2708
  %base2.1 = phi %union.tree_node* [ %spec.select15, %if.then450 ], [ %base2.2, %cleanup ], !dbg !2709
  %retval.0 = phi i8 [ undef, %if.then450 ], [ %retval.1, %cleanup ]
  call void @llvm.dbg.value(metadata %union.tree_node* %base2.1, metadata !2632, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %offset2.1, metadata !2634, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %max_size2.1, metadata !2636, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %def_stmt.0, metadata !2647, metadata !DIExpression()), !dbg !2704
  %call456 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %def_stmt.0) #8, !dbg !2710
  %tobool458 = icmp eq i8 %call456, 0, !dbg !2710
  br i1 %tobool458, label %while.end, label %land.rhs459, !dbg !2711

land.rhs459:                                      ; preds = %while.cond
  %call460 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %def_stmt.0) #8, !dbg !2712
  %cmp461 = icmp eq i32 %call460, 141, !dbg !2713
  br i1 %cmp461, label %while.body, label %lor.rhs463, !dbg !2714

lor.rhs463:                                       ; preds = %land.rhs459
  %call464 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %def_stmt.0) #8, !dbg !2715
  %cmp465 = icmp eq i32 %call464, 116, !dbg !2715
  br i1 %cmp465, label %while.body, label %lor.rhs467, !dbg !2715

lor.rhs467:                                       ; preds = %lor.rhs463
  %call468 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %def_stmt.0) #8, !dbg !2715
  %cmp469 = icmp eq i32 %call468, 113, !dbg !2715
  br i1 %cmp469, label %while.body, label %while.end, !dbg !2706

while.body:                                       ; preds = %lor.rhs463, %land.rhs459, %lor.rhs467
  %call476 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %def_stmt.0) #8, !dbg !2716
  call void @llvm.dbg.value(metadata %union.tree_node* %call476, metadata !2650, metadata !DIExpression()), !dbg !2705
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #7, !dbg !2717
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #7, !dbg !2717
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #7, !dbg !2717
  %34 = getelementptr inbounds %union.tree_node, %union.tree_node* %call476, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2718
  %bf.load480 = load i64, i64* %34, align 8, !dbg !2718
  %bf.cast48245 = and i64 %bf.load480, 65535, !dbg !2720
  %cmp483 = icmp eq i64 %bf.cast48245, 141, !dbg !2720
  br i1 %cmp483, label %land.lhs.true485, label %if.end504, !dbg !2721

land.lhs.true485:                                 ; preds = %while.body
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call476, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2722
  %35 = bitcast %union.tree_node** %type to i64**, !dbg !2722
  %36 = load i64*, i64** %35, align 8, !dbg !2722
  %bf.load487 = load i64, i64* %36, align 8, !dbg !2722
  %bf.cast48954 = and i64 %bf.load487, 65535, !dbg !2722
  %cmp490 = icmp eq i64 %bf.cast48954, 10, !dbg !2722
  br i1 %cmp490, label %if.then501, label %lor.lhs.false492, !dbg !2722

lor.lhs.false492:                                 ; preds = %land.lhs.true485
  %cmp499 = icmp eq i64 %bf.cast48954, 12, !dbg !2722
  br i1 %cmp499, label %if.then501, label %if.end504, !dbg !2723

if.then501:                                       ; preds = %lor.lhs.false492, %land.lhs.true485
  %def_stmt503 = getelementptr inbounds %union.tree_node, %union.tree_node* %call476, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2724
  %37 = bitcast %union.tree_node** %def_stmt503 to %union.gimple_statement_d**, !dbg !2724
  %38 = load %union.gimple_statement_d*, %union.gimple_statement_d** %37, align 8, !dbg !2724
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %38, metadata !2647, metadata !DIExpression()), !dbg !2704
  br label %cleanup, !dbg !2726, !llvm.loop !2727

if.end504:                                        ; preds = %lor.lhs.false492, %while.body
  %cmp509 = icmp eq i64 %bf.cast48245, 121, !dbg !2729
  br i1 %cmp509, label %if.end512, label %cleanup, !dbg !2731

if.end512:                                        ; preds = %if.end504
  %operands514 = getelementptr inbounds %union.tree_node, %union.tree_node* %call476, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2732
  %39 = load %union.tree_node*, %union.tree_node** %operands514, align 8, !dbg !2732
  call void @llvm.dbg.value(metadata %union.tree_node* %39, metadata !2650, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64* %offset477, metadata !2652, metadata !DIExpression(DW_OP_deref)), !dbg !2705
  call void @llvm.dbg.value(metadata i64* %size, metadata !2653, metadata !DIExpression(DW_OP_deref)), !dbg !2705
  call void @llvm.dbg.value(metadata i64* %max_size478, metadata !2654, metadata !DIExpression(DW_OP_deref)), !dbg !2705
  %call516 = call %union.tree_node* @get_ref_base_and_extent(%union.tree_node* %39, i64* nonnull %offset477, i64* nonnull %size, i64* nonnull %max_size478) #6, !dbg !2733
  call void @llvm.dbg.value(metadata %union.tree_node* %call516, metadata !2650, metadata !DIExpression()), !dbg !2705
  %40 = getelementptr inbounds %union.tree_node, %union.tree_node* %call516, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2734
  %bf.load518 = load i64, i64* %40, align 8, !dbg !2734
  %bf.cast52047 = and i64 %bf.load518, 65535, !dbg !2734
  %cmp521 = icmp eq i64 %bf.cast52047, 32, !dbg !2734
  br i1 %cmp521, label %if.then571, label %lor.lhs.false523, !dbg !2734

lor.lhs.false523:                                 ; preds = %if.end512
  %cmp528 = icmp eq i64 %bf.cast52047, 34, !dbg !2734
  br i1 %cmp528, label %if.then571, label %lor.lhs.false530, !dbg !2734

lor.lhs.false530:                                 ; preds = %lor.lhs.false523
  %cmp535 = icmp eq i64 %bf.cast52047, 36, !dbg !2734
  br i1 %cmp535, label %if.then571, label %lor.lhs.false537, !dbg !2734

lor.lhs.false537:                                 ; preds = %lor.lhs.false530
  %cmp542 = icmp eq i64 %bf.cast52047, 141, !dbg !2734
  br i1 %cmp542, label %land.lhs.true544, label %cleanup, !dbg !2734

land.lhs.true544:                                 ; preds = %lor.lhs.false537
  %var546 = getelementptr inbounds %union.tree_node, %union.tree_node* %call516, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2734
  %41 = bitcast i32* %var546 to i64**, !dbg !2734
  %42 = load i64*, i64** %41, align 8, !dbg !2734
  %bf.load548 = load i64, i64* %42, align 8, !dbg !2734
  %bf.cast55051 = and i64 %bf.load548, 65535, !dbg !2734
  %cmp551 = icmp eq i64 %bf.cast55051, 32, !dbg !2734
  br i1 %cmp551, label %if.then571, label %lor.lhs.false553, !dbg !2734

lor.lhs.false553:                                 ; preds = %land.lhs.true544
  %cmp560 = icmp eq i64 %bf.cast55051, 34, !dbg !2734
  br i1 %cmp560, label %if.then571, label %lor.lhs.false562, !dbg !2734

lor.lhs.false562:                                 ; preds = %lor.lhs.false553
  %cmp569 = icmp eq i64 %bf.cast55051, 36, !dbg !2734
  br i1 %cmp569, label %if.then571, label %cleanup, !dbg !2736

if.then571:                                       ; preds = %lor.lhs.false562, %lor.lhs.false553, %land.lhs.true544, %lor.lhs.false530, %lor.lhs.false523, %if.end512
  call void @llvm.dbg.value(metadata %union.tree_node* %call516, metadata !2632, metadata !DIExpression()), !dbg !2655
  %43 = load i64, i64* %offset477, align 8, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %43, metadata !2652, metadata !DIExpression()), !dbg !2705
  %add = add nsw i64 %offset2.1, %43, !dbg !2739
  call void @llvm.dbg.value(metadata i64 %add, metadata !2634, metadata !DIExpression()), !dbg !2655
  %44 = load i64, i64* %size, align 8, !dbg !2740
  call void @llvm.dbg.value(metadata i64 %44, metadata !2653, metadata !DIExpression()), !dbg !2705
  %45 = load i64, i64* %max_size478, align 8, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %45, metadata !2654, metadata !DIExpression()), !dbg !2705
  %cmp572 = icmp ne i64 %44, %45, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %45, metadata !2654, metadata !DIExpression()), !dbg !2705
  %cmp575 = icmp eq i64 %45, -1, !dbg !2744
  %or.cond5 = or i1 %cmp572, %cmp575, !dbg !2745
  %max_size2.2 = select i1 %or.cond5, i64 -1, i64 %max_size2.1, !dbg !2745
  call void @llvm.dbg.value(metadata i64 %max_size2.2, metadata !2636, metadata !DIExpression()), !dbg !2655
  %call579 = call fastcc zeroext i8 @decl_refs_may_alias_p(%union.tree_node* %spec.select16, i64 %spec.select14, i64 %spec.select12, %union.tree_node* %call516, i64 %add, i64 %max_size2.2) #8, !dbg !2746
  br label %cleanup, !dbg !2747

cleanup:                                          ; preds = %if.end504, %lor.lhs.false537, %lor.lhs.false562, %if.then571, %if.then501
  %cleanup.dest.slot.0 = phi i32 [ 2, %if.then501 ], [ 1, %if.then571 ], [ 3, %if.end504 ], [ 3, %lor.lhs.false562 ], [ 3, %lor.lhs.false537 ]
  %def_stmt.1 = phi %union.gimple_statement_d* [ %38, %if.then501 ], [ %def_stmt.0, %if.then571 ], [ %def_stmt.0, %if.end504 ], [ %def_stmt.0, %lor.lhs.false562 ], [ %def_stmt.0, %lor.lhs.false537 ], !dbg !2704
  %max_size2.3 = phi i64 [ %max_size2.1, %if.then501 ], [ %max_size2.2, %if.then571 ], [ %max_size2.1, %if.end504 ], [ %max_size2.1, %lor.lhs.false562 ], [ %max_size2.1, %lor.lhs.false537 ], !dbg !2655
  %offset2.2 = phi i64 [ %offset2.1, %if.then501 ], [ %add, %if.then571 ], [ %offset2.1, %if.end504 ], [ %offset2.1, %lor.lhs.false562 ], [ %offset2.1, %lor.lhs.false537 ], !dbg !2655
  %base2.2 = phi %union.tree_node* [ %base2.1, %if.then501 ], [ %call516, %if.then571 ], [ %base2.1, %if.end504 ], [ %base2.1, %lor.lhs.false562 ], [ %base2.1, %lor.lhs.false537 ], !dbg !2655
  %retval.1 = phi i8 [ %retval.0, %if.then501 ], [ %call579, %if.then571 ], [ %retval.0, %if.end504 ], [ %retval.0, %lor.lhs.false562 ], [ %retval.0, %lor.lhs.false537 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %base2.2, metadata !2632, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %offset2.2, metadata !2634, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %max_size2.3, metadata !2636, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %def_stmt.1, metadata !2647, metadata !DIExpression()), !dbg !2704
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #7, !dbg !2728
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #7, !dbg !2728
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #7, !dbg !2728
  switch i32 %cleanup.dest.slot.0, label %cleanup584.loopexit [
    i32 2, label %while.cond
    i32 3, label %while.end
  ]

while.end:                                        ; preds = %while.cond, %cleanup, %lor.rhs467
  %max_size2.4 = phi i64 [ %max_size2.3, %cleanup ], [ %max_size2.1, %lor.rhs467 ], [ %max_size2.1, %while.cond ], !dbg !2707
  %offset2.3 = phi i64 [ %offset2.2, %cleanup ], [ %offset2.1, %lor.rhs467 ], [ %offset2.1, %while.cond ], !dbg !2708
  %base2.3 = phi %union.tree_node* [ %base2.2, %cleanup ], [ %base2.1, %lor.rhs467 ], [ %base2.1, %while.cond ], !dbg !2709
  %retval.2 = phi i8 [ %retval.1, %cleanup ], [ %retval.0, %lor.rhs467 ], [ %retval.0, %while.cond ]
  call void @llvm.dbg.value(metadata %union.tree_node* %base2.3, metadata !2632, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %offset2.3, metadata !2634, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %max_size2.4, metadata !2636, metadata !DIExpression()), !dbg !2655
  br label %cleanup584, !dbg !2748

cleanup584.loopexit:                              ; preds = %cleanup
  %max_size2.3.lcssa = phi i64 [ %max_size2.3, %cleanup ], !dbg !2655
  %offset2.2.lcssa = phi i64 [ %offset2.2, %cleanup ], !dbg !2655
  %base2.2.lcssa = phi %union.tree_node* [ %base2.2, %cleanup ], !dbg !2655
  %retval.1.lcssa = phi i8 [ %retval.1, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %max_size2.3.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %offset2.2.lcssa, metadata !2634, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata %union.tree_node* %base2.2.lcssa, metadata !2632, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %max_size2.3.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %offset2.2.lcssa, metadata !2634, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata %union.tree_node* %base2.2.lcssa, metadata !2632, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %max_size2.3.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %offset2.2.lcssa, metadata !2634, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata %union.tree_node* %base2.2.lcssa, metadata !2632, metadata !DIExpression()), !dbg !2655
  br label %cleanup584

cleanup584:                                       ; preds = %cleanup584.loopexit, %while.end
  %cleanup.dest.slot.1 = phi i1 [ true, %while.end ], [ false, %cleanup584.loopexit ]
  %max_size2.5 = phi i64 [ %max_size2.4, %while.end ], [ %max_size2.3.lcssa, %cleanup584.loopexit ], !dbg !2707
  %offset2.4 = phi i64 [ %offset2.3, %while.end ], [ %offset2.2.lcssa, %cleanup584.loopexit ], !dbg !2708
  %base2.4 = phi %union.tree_node* [ %base2.3, %while.end ], [ %base2.2.lcssa, %cleanup584.loopexit ], !dbg !2709
  %retval.3 = phi i8 [ %retval.2, %while.end ], [ %retval.1.lcssa, %cleanup584.loopexit ]
  call void @llvm.dbg.value(metadata %union.tree_node* %base2.4, metadata !2632, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %offset2.4, metadata !2634, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %max_size2.5, metadata !2636, metadata !DIExpression()), !dbg !2655
  br i1 %cleanup.dest.slot.1, label %if.end586, label %cleanup653

if.end586:                                        ; preds = %land.lhs.true438, %land.lhs.true436, %cleanup584, %land.lhs.true443, %lor.end421
  %max_size2.6 = phi i64 [ %spec.select11, %land.lhs.true443 ], [ %spec.select11, %land.lhs.true438 ], [ %spec.select11, %land.lhs.true436 ], [ %spec.select11, %lor.end421 ], [ %max_size2.5, %cleanup584 ], !dbg !2707
  %offset2.5 = phi i64 [ %spec.select13, %land.lhs.true443 ], [ %spec.select13, %land.lhs.true438 ], [ %spec.select13, %land.lhs.true436 ], [ %spec.select13, %lor.end421 ], [ %offset2.4, %cleanup584 ], !dbg !2708
  %base2.5 = phi %union.tree_node* [ %spec.select15, %land.lhs.true443 ], [ %spec.select15, %land.lhs.true438 ], [ %spec.select15, %land.lhs.true436 ], [ %spec.select15, %lor.end421 ], [ %base2.4, %cleanup584 ], !dbg !2709
  call void @llvm.dbg.value(metadata %union.tree_node* %base2.5, metadata !2632, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %offset2.5, metadata !2634, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %max_size2.6, metadata !2636, metadata !DIExpression()), !dbg !2655
  %tobool588 = icmp ne i8 %tbaa_p, 0, !dbg !2749
  %46 = load i32, i32* @flag_strict_aliasing, align 4, !dbg !2751
  %tobool590 = icmp ne i32 %46, 0, !dbg !2751
  %or.cond6 = and i1 %tobool588, %tobool590, !dbg !2752
  br i1 %or.cond6, label %land.lhs.true591, label %if.end597, !dbg !2752

land.lhs.true591:                                 ; preds = %if.end586
  %call592 = call i32 @ao_ref_alias_set(%struct.ao_ref_s* %spec.select18) #8, !dbg !2753
  %call593 = call i32 @ao_ref_alias_set(%struct.ao_ref_s* %spec.select17) #8, !dbg !2754
  %call594 = call i32 @alias_sets_conflict_p(i32 %call592, i32 %call593) #6, !dbg !2755
  %tobool595 = icmp eq i32 %call594, 0, !dbg !2755
  br i1 %tobool595, label %cleanup653, label %if.end597, !dbg !2756

if.end597:                                        ; preds = %land.lhs.true591, %if.end586
  %ref598 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %spec.select18, i64 0, i32 0, !dbg !2757
  %47 = load %union.tree_node*, %union.tree_node** %ref598, align 8, !dbg !2757
  %tobool599 = icmp eq %union.tree_node* %47, null, !dbg !2759
  br i1 %tobool599, label %lor.lhs.false608, label %land.lhs.true600, !dbg !2760

land.lhs.true600:                                 ; preds = %if.end597
  %48 = getelementptr inbounds %union.tree_node, %union.tree_node* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2760
  %bf.load603 = load i64, i64* %48, align 8, !dbg !2761
  %bf.cast60543 = and i64 %bf.load603, 65535, !dbg !2762
  %cmp606 = icmp eq i64 %bf.cast60543, 152, !dbg !2762
  br i1 %cmp606, label %cleanup653, label %lor.lhs.false608, !dbg !2763

lor.lhs.false608:                                 ; preds = %if.end597, %land.lhs.true600
  %ref609 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %spec.select17, i64 0, i32 0, !dbg !2764
  %49 = load %union.tree_node*, %union.tree_node** %ref609, align 8, !dbg !2764
  %tobool610 = icmp eq %union.tree_node* %49, null, !dbg !2765
  br i1 %tobool610, label %if.end620, label %land.lhs.true611, !dbg !2766

land.lhs.true611:                                 ; preds = %lor.lhs.false608
  %50 = getelementptr inbounds %union.tree_node, %union.tree_node* %49, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2766
  %bf.load614 = load i64, i64* %50, align 8, !dbg !2767
  %bf.cast61642 = and i64 %bf.load614, 65535, !dbg !2768
  %cmp617 = icmp eq i64 %bf.cast61642, 152, !dbg !2768
  br i1 %cmp617, label %cleanup653, label %if.end620, !dbg !2769

if.end620:                                        ; preds = %lor.lhs.false608, %land.lhs.true611
  %cond623 = sext i1 %tobool588 to i32, !dbg !2770
  call void @llvm.dbg.value(metadata i32 %cond623, metadata !2641, metadata !DIExpression()), !dbg !2655
  br i1 %or.cond3, label %if.then629, label %if.else, !dbg !2771

if.then629:                                       ; preds = %if.end620
  %operands632 = getelementptr inbounds %union.tree_node, %union.tree_node* %base2.5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2773
  %51 = load %union.tree_node*, %union.tree_node** %operands632, align 8, !dbg !2773
  %call635 = call fastcc zeroext i8 @indirect_ref_may_alias_decl_p(%union.tree_node* %49, %union.tree_node* %51, i64 %offset2.5, i64 %max_size2.6, i32 %cond623, %union.tree_node* %47, %union.tree_node* %spec.select16, i64 %spec.select14, i64 %spec.select12, i32 %cond623) #8, !dbg !2774
  br label %cleanup653, !dbg !2775

if.else:                                          ; preds = %if.end620
  %tobool637 = xor i1 %or.cond2, %tobool425, !dbg !2776
  %or.cond8 = and i1 %tobool637, %25, !dbg !2778
  br i1 %or.cond8, label %if.then641, label %if.end652, !dbg !2778

if.then641:                                       ; preds = %if.else
  %operands644 = getelementptr inbounds %union.tree_node, %union.tree_node* %spec.select16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2779
  %52 = load %union.tree_node*, %union.tree_node** %operands644, align 8, !dbg !2779
  %operands648 = getelementptr inbounds %union.tree_node, %union.tree_node* %base2.5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2780
  %53 = load %union.tree_node*, %union.tree_node** %operands648, align 8, !dbg !2780
  %call650 = call fastcc zeroext i8 @indirect_refs_may_alias_p(%union.tree_node* %47, %union.tree_node* %52, i64 %spec.select14, i64 %spec.select12, i32 %cond623, %union.tree_node* %49, %union.tree_node* %53, i64 %offset2.5, i64 %max_size2.6, i32 %cond623) #8, !dbg !2781
  br label %cleanup653, !dbg !2782

if.end652:                                        ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 921, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2783
  br label %cleanup653, !dbg !2784

cleanup653:                                       ; preds = %land.lhs.true591, %lor.lhs.false237, %lor.lhs.false233, %land.lhs.true600, %land.lhs.true611, %if.end, %lor.lhs.false247, %cond.end, %lor.lhs.false212, %lor.lhs.false219, %lor.lhs.false226, %cleanup584, %if.end652, %if.then641, %if.then629, %if.then375
  %retval.4 = phi i8 [ %call376, %if.then375 ], [ %retval.3, %cleanup584 ], [ %call635, %if.then629 ], [ %call650, %if.then641 ], [ 0, %if.end652 ], [ 0, %lor.lhs.false237 ], [ 0, %lor.lhs.false233 ], [ 0, %lor.lhs.false226 ], [ 0, %lor.lhs.false219 ], [ 0, %lor.lhs.false212 ], [ 0, %cond.end ], [ 1, %lor.lhs.false247 ], [ 1, %if.end ], [ 0, %land.lhs.true591 ], [ 1, %land.lhs.true611 ], [ 1, %land.lhs.true600 ]
  ret i8 %retval.4, !dbg !2785
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @handled_component_p(%union.tree_node* %t) unnamed_addr #0 !dbg !2786 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2788, metadata !DIExpression()), !dbg !2789
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2790
  %bf.load = load i64, i64* %0, align 8, !dbg !2790
  %1 = trunc i64 %bf.load to i16, !dbg !2790
  switch i16 %1, label %sw.default [
    i16 42, label %return
    i16 41, label %return
    i16 45, label %return
    i16 46, label %return
    i16 118, label %return
    i16 43, label %return
    i16 44, label %return
  ], !dbg !2791

sw.default:                                       ; preds = %entry
  br label %return, !dbg !2792

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], !dbg !2794
  ret i8 %retval.0, !dbg !2795
}

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @decl_refs_may_alias_p(%union.tree_node* %base1, i64 %offset1, i64 %max_size1, %union.tree_node* %base2, i64 %offset2, i64 %max_size2) unnamed_addr #4 !dbg !2796 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %base1, metadata !2800, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %offset1, metadata !2801, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %max_size1, metadata !2802, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata %union.tree_node* %base2, metadata !2803, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %offset2, metadata !2804, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %max_size2, metadata !2805, metadata !DIExpression()), !dbg !2806
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %base1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2807
  %bf.load = load i64, i64* %0, align 8, !dbg !2807
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2807
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !2807
  br i1 %cmp, label %land.lhs.true41, label %lor.lhs.false, !dbg !2807

lor.lhs.false:                                    ; preds = %entry
  %cmp7 = icmp eq i64 %bf.cast1, 34, !dbg !2807
  br i1 %cmp7, label %land.lhs.true41, label %lor.lhs.false8, !dbg !2807

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %cmp13 = icmp eq i64 %bf.cast1, 36, !dbg !2807
  br i1 %cmp13, label %land.lhs.true41, label %lor.lhs.false14, !dbg !2807

lor.lhs.false14:                                  ; preds = %lor.lhs.false8
  %cmp19 = icmp eq i64 %bf.cast1, 141, !dbg !2807
  br i1 %cmp19, label %land.lhs.true, label %cond.true, !dbg !2807

land.lhs.true:                                    ; preds = %lor.lhs.false14
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %base1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2807
  %1 = bitcast i32* %var to i64**, !dbg !2807
  %2 = load i64*, i64** %1, align 8, !dbg !2807
  %bf.load21 = load i64, i64* %2, align 8, !dbg !2807
  %bf.cast235 = and i64 %bf.load21, 65535, !dbg !2807
  %cmp24 = icmp eq i64 %bf.cast235, 32, !dbg !2807
  br i1 %cmp24, label %land.lhs.true41, label %lor.lhs.false25, !dbg !2807

lor.lhs.false25:                                  ; preds = %land.lhs.true
  %cmp32 = icmp eq i64 %bf.cast235, 34, !dbg !2807
  br i1 %cmp32, label %land.lhs.true41, label %lor.lhs.false33, !dbg !2807

lor.lhs.false33:                                  ; preds = %lor.lhs.false25
  %cmp40 = icmp eq i64 %bf.cast235, 36, !dbg !2807
  br i1 %cmp40, label %land.lhs.true41, label %cond.true, !dbg !2807

land.lhs.true41:                                  ; preds = %lor.lhs.false33, %lor.lhs.false25, %land.lhs.true, %lor.lhs.false8, %lor.lhs.false, %entry
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %base2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2807
  %bf.load43 = load i64, i64* %3, align 8, !dbg !2807
  %bf.cast458 = and i64 %bf.load43, 65535, !dbg !2807
  %cmp46 = icmp eq i64 %bf.cast458, 32, !dbg !2807
  br i1 %cmp46, label %cond.end, label %lor.lhs.false47, !dbg !2807

lor.lhs.false47:                                  ; preds = %land.lhs.true41
  %cmp52 = icmp eq i64 %bf.cast458, 34, !dbg !2807
  br i1 %cmp52, label %cond.end, label %lor.lhs.false53, !dbg !2807

lor.lhs.false53:                                  ; preds = %lor.lhs.false47
  %cmp58 = icmp eq i64 %bf.cast458, 36, !dbg !2807
  br i1 %cmp58, label %cond.end, label %lor.lhs.false59, !dbg !2807

lor.lhs.false59:                                  ; preds = %lor.lhs.false53
  %cmp64 = icmp eq i64 %bf.cast458, 141, !dbg !2807
  br i1 %cmp64, label %land.lhs.true65, label %cond.true, !dbg !2807

land.lhs.true65:                                  ; preds = %lor.lhs.false59
  %var67 = getelementptr inbounds %union.tree_node, %union.tree_node* %base2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2807
  %4 = bitcast i32* %var67 to i64**, !dbg !2807
  %5 = load i64*, i64** %4, align 8, !dbg !2807
  %bf.load69 = load i64, i64* %5, align 8, !dbg !2807
  %bf.cast7112 = and i64 %bf.load69, 65535, !dbg !2807
  %cmp72 = icmp eq i64 %bf.cast7112, 32, !dbg !2807
  br i1 %cmp72, label %cond.end, label %lor.lhs.false73, !dbg !2807

lor.lhs.false73:                                  ; preds = %land.lhs.true65
  %cmp80 = icmp eq i64 %bf.cast7112, 34, !dbg !2807
  br i1 %cmp80, label %cond.end, label %lor.lhs.false81, !dbg !2807

lor.lhs.false81:                                  ; preds = %lor.lhs.false73
  %cmp88 = icmp eq i64 %bf.cast7112, 36, !dbg !2807
  br i1 %cmp88, label %cond.end, label %cond.true, !dbg !2807

cond.true:                                        ; preds = %lor.lhs.false81, %lor.lhs.false59, %lor.lhs.false33, %lor.lhs.false14
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 629, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2807
  br label %cond.end, !dbg !2807

cond.end:                                         ; preds = %land.lhs.true41, %lor.lhs.false47, %lor.lhs.false53, %land.lhs.true65, %lor.lhs.false73, %lor.lhs.false81, %cond.true
  %call = tail call i32 @operand_equal_p(%union.tree_node* %base1, %union.tree_node* %base2, i32 0) #6, !dbg !2808
  %tobool = icmp eq i32 %call, 0, !dbg !2808
  br i1 %tobool, label %return, label %if.end, !dbg !2810

if.end:                                           ; preds = %cond.end
  %call89 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 %offset1, i64 %max_size1, i64 %offset2, i64 %max_size2) #8, !dbg !2811
  br label %return, !dbg !2812

return:                                           ; preds = %cond.end, %if.end
  %retval.0 = phi i8 [ %call89, %if.end ], [ 0, %cond.end ], !dbg !2806
  ret i8 %retval.0, !dbg !2813
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %fun) unnamed_addr #0 !dbg !2814 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !2820, metadata !DIExpression()), !dbg !2821
  %tobool = icmp eq %struct.function* %fun, null, !dbg !2822
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !2823

land.lhs.true:                                    ; preds = %entry
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !2824
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2824
  %tobool1 = icmp eq %struct.gimple_df* %0, null, !dbg !2825
  br i1 %tobool1, label %land.end, label %land.rhs, !dbg !2826

land.rhs:                                         ; preds = %land.lhs.true
  %in_ssa_p = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %0, i64 0, i32 10, !dbg !2827
  %bf.load = load i8, i8* %in_ssa_p, align 8, !dbg !2827
  %bf.clear = and i8 %bf.load, 1, !dbg !2827
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry, %land.rhs
  %1 = phi i8 [ 0, %land.lhs.true ], [ 0, %entry ], [ %bf.clear, %land.rhs ]
  ret i8 %1, !dbg !2828
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2829 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2834, metadata !DIExpression()), !dbg !2835
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !2836
  %cmp = icmp eq i32 %call, 6, !dbg !2837
  %conv1 = zext i1 %cmp to i8, !dbg !2836
  ret i8 %conv1, !dbg !2838
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2839 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2843, metadata !DIExpression()), !dbg !2845
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #8, !dbg !2846
  call void @llvm.dbg.value(metadata i32 %call, metadata !2844, metadata !DIExpression()), !dbg !2845
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #8, !dbg !2847
  %cmp = icmp eq i32 %call1, 3, !dbg !2849
  br i1 %cmp, label %if.then, label %if.end, !dbg !2850

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #8, !dbg !2851
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2851
  %bf.load = load i64, i64* %0, align 8, !dbg !2851
  %1 = trunc i64 %bf.load to i32, !dbg !2851
  %bf.cast = and i32 %1, 65535, !dbg !2851
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !2844, metadata !DIExpression()), !dbg !2845
  br label %if.end, !dbg !2852

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !2845
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !2844, metadata !DIExpression()), !dbg !2845
  ret i32 %code.0, !dbg !2853
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2854 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2858, metadata !DIExpression()), !dbg !2859
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !2860
  ret %union.tree_node* %call, !dbg !2861
}

declare dso_local i32 @alias_sets_conflict_p(i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @indirect_ref_may_alias_decl_p(%union.tree_node* %ref1, %union.tree_node* %ptr1, i64 %offset1, i64 %max_size1, i32 %base1_alias_set, %union.tree_node* %ref2, %union.tree_node* %base2, i64 %offset2, i64 %max_size2, i32 %base2_alias_set) unnamed_addr #4 !dbg !2862 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ref1, metadata !2866, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr1, metadata !2867, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %offset1, metadata !2868, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %max_size1, metadata !2869, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 %base1_alias_set, metadata !2870, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata %union.tree_node* %ref2, metadata !2871, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata %union.tree_node* %base2, metadata !2872, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %offset2, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %max_size2, metadata !2874, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 %base2_alias_set, metadata !2875, metadata !DIExpression()), !dbg !2876
  %cmp = icmp eq i64 %max_size2, -1, !dbg !2877
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !2879

land.lhs.true:                                    ; preds = %entry
  %add = add nsw i64 %offset2, %max_size2, !dbg !2880
  %call = tail call fastcc zeroext i8 @ranges_overlap_p(i64 %offset1, i64 %max_size1, i64 0, i64 %add) #8, !dbg !2881
  %tobool = icmp eq i8 %call, 0, !dbg !2881
  br i1 %tobool, label %return, label %if.end, !dbg !2882

if.end:                                           ; preds = %land.lhs.true, %entry
  %call1 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(%union.tree_node* %ptr1, %union.tree_node* %base2) #8, !dbg !2883
  %tobool2 = icmp eq i8 %call1, 0, !dbg !2883
  br i1 %tobool2, label %return, label %if.end4, !dbg !2885

if.end4:                                          ; preds = %if.end
  %0 = load i32, i32* @flag_strict_aliasing, align 4, !dbg !2886
  %tobool5 = icmp eq i32 %0, 0, !dbg !2886
  br i1 %tobool5, label %return, label %if.end7, !dbg !2888

if.end7:                                          ; preds = %if.end4
  %cmp8 = icmp eq i32 %base1_alias_set, -1, !dbg !2889
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !2891

if.then9:                                         ; preds = %if.end7
  %call10 = tail call i32 @get_deref_alias_set(%union.tree_node* %ptr1) #6, !dbg !2892
  call void @llvm.dbg.value(metadata i32 %call10, metadata !2870, metadata !DIExpression()), !dbg !2876
  br label %if.end11, !dbg !2893

if.end11:                                         ; preds = %if.then9, %if.end7
  %base1_alias_set.addr.0 = phi i32 [ %call10, %if.then9 ], [ %base1_alias_set, %if.end7 ]
  call void @llvm.dbg.value(metadata i32 %base1_alias_set.addr.0, metadata !2870, metadata !DIExpression()), !dbg !2876
  %cmp12 = icmp eq i32 %base1_alias_set.addr.0, 0, !dbg !2894
  br i1 %cmp12, label %return, label %if.end14, !dbg !2896

if.end14:                                         ; preds = %if.end11
  %cmp15 = icmp eq i32 %base2_alias_set, -1, !dbg !2897
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !2899

if.then16:                                        ; preds = %if.end14
  %call17 = tail call i32 @get_alias_set(%union.tree_node* %base2) #6, !dbg !2900
  call void @llvm.dbg.value(metadata i32 %call17, metadata !2875, metadata !DIExpression()), !dbg !2876
  br label %if.end18, !dbg !2901

if.end18:                                         ; preds = %if.then16, %if.end14
  %base2_alias_set.addr.0 = phi i32 [ %call17, %if.then16 ], [ %base2_alias_set, %if.end14 ]
  call void @llvm.dbg.value(metadata i32 %base2_alias_set.addr.0, metadata !2875, metadata !DIExpression()), !dbg !2876
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2902
  %1 = bitcast %union.tree_node** %type to %struct.tree_common**, !dbg !2902
  %2 = load %struct.tree_common*, %struct.tree_common** %1, align 8, !dbg !2902
  %type20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %2, i64 0, i32 2, !dbg !2902
  %3 = load %union.tree_node*, %union.tree_node** %type20, align 8, !dbg !2902
  %type22 = getelementptr inbounds %union.tree_node, %union.tree_node* %base2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2904
  %4 = load %union.tree_node*, %union.tree_node** %type22, align 8, !dbg !2904
  %call23 = tail call fastcc i32 @same_type_for_tbaa(%union.tree_node* %3, %union.tree_node* %4) #8, !dbg !2905
  %cmp24 = icmp eq i32 %call23, 1, !dbg !2906
  br i1 %cmp24, label %if.then25, label %if.end27, !dbg !2907

if.then25:                                        ; preds = %if.end18
  %call26 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 %offset1, i64 %max_size1, i64 %offset2, i64 %max_size2) #8, !dbg !2908
  br label %return, !dbg !2909

if.end27:                                         ; preds = %if.end18
  %cmp28 = icmp eq i32 %base1_alias_set.addr.0, %base2_alias_set.addr.0, !dbg !2910
  br i1 %cmp28, label %if.end33, label %land.lhs.true29, !dbg !2912

land.lhs.true29:                                  ; preds = %if.end27
  %call30 = tail call zeroext i8 @alias_set_subset_of(i32 %base1_alias_set.addr.0, i32 %base2_alias_set.addr.0) #6, !dbg !2913
  %tobool31 = icmp eq i8 %call30, 0, !dbg !2913
  br i1 %tobool31, label %return, label %if.end33, !dbg !2914

if.end33:                                         ; preds = %land.lhs.true29, %if.end27
  %tobool34 = icmp ne %union.tree_node* %ref1, null, !dbg !2915
  %tobool36 = icmp ne %union.tree_node* %ref2, null, !dbg !2917
  %or.cond = and i1 %tobool34, %tobool36, !dbg !2918
  br i1 %or.cond, label %land.lhs.true37, label %return, !dbg !2918

land.lhs.true37:                                  ; preds = %if.end33
  %call38 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* nonnull %ref1) #8, !dbg !2919
  %tobool39 = icmp eq i8 %call38, 0, !dbg !2919
  br i1 %tobool39, label %return, label %land.lhs.true40, !dbg !2920

land.lhs.true40:                                  ; preds = %land.lhs.true37
  %call41 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* nonnull %ref2) #8, !dbg !2921
  %tobool43 = icmp eq i8 %call41, 0, !dbg !2921
  br i1 %tobool43, label %return, label %if.then44, !dbg !2922

if.then44:                                        ; preds = %land.lhs.true40
  %5 = load %struct.tree_common*, %struct.tree_common** %1, align 8, !dbg !2923
  %type48 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %5, i64 0, i32 2, !dbg !2923
  %6 = load %union.tree_node*, %union.tree_node** %type48, align 8, !dbg !2923
  %7 = load %union.tree_node*, %union.tree_node** %type22, align 8, !dbg !2924
  %call51 = tail call fastcc zeroext i8 @aliasing_component_refs_p(%union.tree_node* nonnull %ref1, %union.tree_node* %6, i64 %offset1, i64 %max_size1, %union.tree_node* nonnull %ref2, %union.tree_node* %7, i64 %offset2, i64 %max_size2) #8, !dbg !2925
  br label %return, !dbg !2926

return:                                           ; preds = %land.lhs.true, %land.lhs.true29, %land.lhs.true40, %land.lhs.true37, %if.end4, %if.end, %if.end33, %if.end11, %if.then44, %if.then25
  %retval.0 = phi i8 [ %call26, %if.then25 ], [ %call51, %if.then44 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 1, %if.end4 ], [ 1, %if.end11 ], [ 0, %land.lhs.true29 ], [ 1, %land.lhs.true40 ], [ 1, %land.lhs.true37 ], [ 1, %if.end33 ], !dbg !2876
  ret i8 %retval.0, !dbg !2927
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @indirect_refs_may_alias_p(%union.tree_node* %ref1, %union.tree_node* %ptr1, i64 %offset1, i64 %max_size1, i32 %base1_alias_set, %union.tree_node* %ref2, %union.tree_node* %ptr2, i64 %offset2, i64 %max_size2, i32 %base2_alias_set) unnamed_addr #4 !dbg !2928 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ref1, metadata !2930, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr1, metadata !2931, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %offset1, metadata !2932, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %max_size1, metadata !2933, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i32 %base1_alias_set, metadata !2934, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata %union.tree_node* %ref2, metadata !2935, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr2, metadata !2936, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %offset2, metadata !2937, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %max_size2, metadata !2938, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i32 %base2_alias_set, metadata !2939, metadata !DIExpression()), !dbg !2940
  %call = tail call i32 @operand_equal_p(%union.tree_node* %ptr1, %union.tree_node* %ptr2, i32 0) #6, !dbg !2941
  %tobool = icmp eq i32 %call, 0, !dbg !2941
  br i1 %tobool, label %if.end, label %if.then, !dbg !2943

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 %offset1, i64 %max_size1, i64 %offset2, i64 %max_size2) #8, !dbg !2944
  br label %return, !dbg !2945

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc zeroext i8 @ptr_derefs_may_alias_p(%union.tree_node* %ptr1, %union.tree_node* %ptr2) #8, !dbg !2946
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2946
  br i1 %tobool3, label %return, label %if.end5, !dbg !2948

if.end5:                                          ; preds = %if.end
  %0 = load i32, i32* @flag_strict_aliasing, align 4, !dbg !2949
  %tobool6 = icmp eq i32 %0, 0, !dbg !2949
  br i1 %tobool6, label %return, label %if.end8, !dbg !2951

if.end8:                                          ; preds = %if.end5
  %cmp = icmp eq i32 %base1_alias_set, -1, !dbg !2952
  br i1 %cmp, label %if.then9, label %if.end11, !dbg !2954

if.then9:                                         ; preds = %if.end8
  %call10 = tail call i32 @get_deref_alias_set(%union.tree_node* %ptr1) #6, !dbg !2955
  call void @llvm.dbg.value(metadata i32 %call10, metadata !2934, metadata !DIExpression()), !dbg !2940
  br label %if.end11, !dbg !2956

if.end11:                                         ; preds = %if.then9, %if.end8
  %base1_alias_set.addr.0 = phi i32 [ %call10, %if.then9 ], [ %base1_alias_set, %if.end8 ]
  call void @llvm.dbg.value(metadata i32 %base1_alias_set.addr.0, metadata !2934, metadata !DIExpression()), !dbg !2940
  %cmp12 = icmp eq i32 %base1_alias_set.addr.0, 0, !dbg !2957
  br i1 %cmp12, label %return, label %if.end14, !dbg !2959

if.end14:                                         ; preds = %if.end11
  %cmp15 = icmp eq i32 %base2_alias_set, -1, !dbg !2960
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !2962

if.then16:                                        ; preds = %if.end14
  %call17 = tail call i32 @get_deref_alias_set(%union.tree_node* %ptr2) #6, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %call17, metadata !2939, metadata !DIExpression()), !dbg !2940
  br label %if.end18, !dbg !2964

if.end18:                                         ; preds = %if.then16, %if.end14
  %base2_alias_set.addr.0 = phi i32 [ %call17, %if.then16 ], [ %base2_alias_set, %if.end14 ]
  call void @llvm.dbg.value(metadata i32 %base2_alias_set.addr.0, metadata !2939, metadata !DIExpression()), !dbg !2940
  %cmp19 = icmp eq i32 %base2_alias_set.addr.0, 0, !dbg !2965
  br i1 %cmp19, label %return, label %if.end21, !dbg !2967

if.end21:                                         ; preds = %if.end18
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2968
  %1 = bitcast %union.tree_node** %type to %struct.tree_common**, !dbg !2968
  %2 = load %struct.tree_common*, %struct.tree_common** %1, align 8, !dbg !2968
  %type23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %2, i64 0, i32 2, !dbg !2968
  %3 = load %union.tree_node*, %union.tree_node** %type23, align 8, !dbg !2968
  %type25 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2970
  %4 = bitcast %union.tree_node** %type25 to %struct.tree_common**, !dbg !2970
  %5 = load %struct.tree_common*, %struct.tree_common** %4, align 8, !dbg !2970
  %type27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %5, i64 0, i32 2, !dbg !2970
  %6 = load %union.tree_node*, %union.tree_node** %type27, align 8, !dbg !2970
  %call28 = tail call fastcc i32 @same_type_for_tbaa(%union.tree_node* %3, %union.tree_node* %6) #8, !dbg !2971
  %cmp29 = icmp eq i32 %call28, 1, !dbg !2972
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !2973

if.then30:                                        ; preds = %if.end21
  %call31 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 %offset1, i64 %max_size1, i64 %offset2, i64 %max_size2) #8, !dbg !2974
  br label %return, !dbg !2975

if.end32:                                         ; preds = %if.end21
  %cmp33 = icmp eq i32 %base1_alias_set.addr.0, %base2_alias_set.addr.0, !dbg !2976
  br i1 %cmp33, label %if.end37, label %land.lhs.true, !dbg !2978

land.lhs.true:                                    ; preds = %if.end32
  %call34 = tail call i32 @alias_sets_conflict_p(i32 %base1_alias_set.addr.0, i32 %base2_alias_set.addr.0) #6, !dbg !2979
  %tobool35 = icmp eq i32 %call34, 0, !dbg !2979
  br i1 %tobool35, label %return, label %if.end37, !dbg !2980

if.end37:                                         ; preds = %land.lhs.true, %if.end32
  %tobool38 = icmp ne %union.tree_node* %ref1, null, !dbg !2981
  %tobool40 = icmp ne %union.tree_node* %ref2, null, !dbg !2983
  %or.cond = and i1 %tobool38, %tobool40, !dbg !2984
  br i1 %or.cond, label %land.lhs.true41, label %return, !dbg !2984

land.lhs.true41:                                  ; preds = %if.end37
  %call42 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* nonnull %ref1) #8, !dbg !2985
  %tobool43 = icmp eq i8 %call42, 0, !dbg !2985
  br i1 %tobool43, label %return, label %land.lhs.true44, !dbg !2986

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %call45 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* nonnull %ref2) #8, !dbg !2987
  %tobool47 = icmp eq i8 %call45, 0, !dbg !2987
  br i1 %tobool47, label %return, label %if.then48, !dbg !2988

if.then48:                                        ; preds = %land.lhs.true44
  %7 = load %struct.tree_common*, %struct.tree_common** %1, align 8, !dbg !2989
  %type52 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %7, i64 0, i32 2, !dbg !2989
  %8 = load %union.tree_node*, %union.tree_node** %type52, align 8, !dbg !2989
  %9 = load %struct.tree_common*, %struct.tree_common** %4, align 8, !dbg !2990
  %type56 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %9, i64 0, i32 2, !dbg !2990
  %10 = load %union.tree_node*, %union.tree_node** %type56, align 8, !dbg !2990
  %call57 = tail call fastcc zeroext i8 @aliasing_component_refs_p(%union.tree_node* nonnull %ref1, %union.tree_node* %8, i64 %offset1, i64 %max_size1, %union.tree_node* nonnull %ref2, %union.tree_node* %10, i64 %offset2, i64 %max_size2) #8, !dbg !2991
  br label %return, !dbg !2992

return:                                           ; preds = %land.lhs.true, %land.lhs.true44, %land.lhs.true41, %if.end5, %if.end, %if.end37, %if.end18, %if.end11, %if.then48, %if.then30, %if.then
  %retval.0 = phi i8 [ %call1, %if.then ], [ %call31, %if.then30 ], [ %call57, %if.then48 ], [ 0, %if.end ], [ 1, %if.end5 ], [ 1, %if.end11 ], [ 1, %if.end18 ], [ 0, %land.lhs.true ], [ 1, %land.lhs.true44 ], [ 1, %land.lhs.true41 ], [ 1, %if.end37 ], !dbg !2940
  ret i8 %retval.0, !dbg !2993
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @refs_may_alias_p(%union.tree_node* %ref1, %union.tree_node* %ref2) local_unnamed_addr #4 !dbg !2994 {
entry:
  %r1 = alloca %struct.ao_ref_s, align 8
  %r2 = alloca %struct.ao_ref_s, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %ref1, metadata !2998, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata %union.tree_node* %ref2, metadata !2999, metadata !DIExpression()), !dbg !3003
  %0 = bitcast %struct.ao_ref_s* %r1 to i8*, !dbg !3004
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3004
  %1 = bitcast %struct.ao_ref_s* %r2 to i8*, !dbg !3004
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #7, !dbg !3004
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r1, metadata !3000, metadata !DIExpression(DW_OP_deref)), !dbg !3003
  call void @ao_ref_init(%struct.ao_ref_s* nonnull %r1, %union.tree_node* %ref1) #8, !dbg !3005
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r2, metadata !3001, metadata !DIExpression(DW_OP_deref)), !dbg !3003
  call void @ao_ref_init(%struct.ao_ref_s* nonnull %r2, %union.tree_node* %ref2) #8, !dbg !3006
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r1, metadata !3000, metadata !DIExpression(DW_OP_deref)), !dbg !3003
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r2, metadata !3001, metadata !DIExpression(DW_OP_deref)), !dbg !3003
  %call = call zeroext i8 @refs_may_alias_p_1(%struct.ao_ref_s* nonnull %r1, %struct.ao_ref_s* nonnull %r2, i8 zeroext 1) #8, !dbg !3007
  call void @llvm.dbg.value(metadata i8 %call, metadata !3002, metadata !DIExpression()), !dbg !3003
  %tobool = icmp eq i8 %call, 0, !dbg !3008
  br i1 %tobool, label %if.else, label %if.then, !dbg !3010

if.then:                                          ; preds = %entry
  %2 = load i64, i64* @alias_stats.0, align 8, !dbg !3011
  %inc = add i64 %2, 1, !dbg !3011
  store i64 %inc, i64* @alias_stats.0, align 8, !dbg !3011
  br label %if.end, !dbg !3011

if.else:                                          ; preds = %entry
  %3 = load i64, i64* @alias_stats.1, align 8, !dbg !3012
  %inc1 = add i64 %3, 1, !dbg !3012
  store i64 %inc1, i64* @alias_stats.1, align 8, !dbg !3012
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #7, !dbg !3013
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3013
  ret i8 %call, !dbg !3014
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @refs_anti_dependent_p(%union.tree_node* %load, %union.tree_node* %store) local_unnamed_addr #4 !dbg !3015 {
entry:
  %r1 = alloca %struct.ao_ref_s, align 8
  %r2 = alloca %struct.ao_ref_s, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %load, metadata !3017, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata %union.tree_node* %store, metadata !3018, metadata !DIExpression()), !dbg !3021
  %0 = bitcast %struct.ao_ref_s* %r1 to i8*, !dbg !3022
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3022
  %1 = bitcast %struct.ao_ref_s* %r2 to i8*, !dbg !3022
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #7, !dbg !3022
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r1, metadata !3019, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  call void @ao_ref_init(%struct.ao_ref_s* nonnull %r1, %union.tree_node* %load) #8, !dbg !3023
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r2, metadata !3020, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  call void @ao_ref_init(%struct.ao_ref_s* nonnull %r2, %union.tree_node* %store) #8, !dbg !3024
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r1, metadata !3019, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r2, metadata !3020, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  %call = call zeroext i8 @refs_may_alias_p_1(%struct.ao_ref_s* nonnull %r1, %struct.ao_ref_s* nonnull %r2, i8 zeroext 0) #8, !dbg !3025
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #7, !dbg !3026
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3026
  ret i8 %call, !dbg !3027
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @refs_output_dependent_p(%union.tree_node* %store1, %union.tree_node* %store2) local_unnamed_addr #4 !dbg !3028 {
entry:
  %r1 = alloca %struct.ao_ref_s, align 8
  %r2 = alloca %struct.ao_ref_s, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %store1, metadata !3030, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata %union.tree_node* %store2, metadata !3031, metadata !DIExpression()), !dbg !3034
  %0 = bitcast %struct.ao_ref_s* %r1 to i8*, !dbg !3035
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3035
  %1 = bitcast %struct.ao_ref_s* %r2 to i8*, !dbg !3035
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #7, !dbg !3035
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r1, metadata !3032, metadata !DIExpression(DW_OP_deref)), !dbg !3034
  call void @ao_ref_init(%struct.ao_ref_s* nonnull %r1, %union.tree_node* %store1) #8, !dbg !3036
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r2, metadata !3033, metadata !DIExpression(DW_OP_deref)), !dbg !3034
  call void @ao_ref_init(%struct.ao_ref_s* nonnull %r2, %union.tree_node* %store2) #8, !dbg !3037
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r1, metadata !3032, metadata !DIExpression(DW_OP_deref)), !dbg !3034
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r2, metadata !3033, metadata !DIExpression(DW_OP_deref)), !dbg !3034
  %call = call zeroext i8 @refs_may_alias_p_1(%struct.ao_ref_s* nonnull %r1, %struct.ao_ref_s* nonnull %r2, i8 zeroext 0) #8, !dbg !3038
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #7, !dbg !3039
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3039
  ret i8 %call, !dbg !3040
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ref_maybe_used_by_stmt_p(%union.gimple_statement_d* %stmt, %union.tree_node* %ref) local_unnamed_addr #4 !dbg !3041 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3045, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata %union.tree_node* %ref, metadata !3046, metadata !DIExpression()), !dbg !3050
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt) #8, !dbg !3051
  %tobool = icmp eq i8 %call, 0, !dbg !3051
  br i1 %tobool, label %if.else, label %if.then, !dbg !3052

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d* %stmt) #6, !dbg !3053
  %tobool2 = icmp eq i8 %call1, 0, !dbg !3053
  br i1 %tobool2, label %return, label %if.end, !dbg !3055

if.end:                                           ; preds = %if.then
  %call4 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #8, !dbg !3056
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3047, metadata !DIExpression()), !dbg !3057
  %call5 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call4) #6, !dbg !3058
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3058
  br i1 %tobool6, label %lor.lhs.false, label %return, !dbg !3060

lor.lhs.false:                                    ; preds = %if.end
  %call7 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call4) #6, !dbg !3061
  %tobool9 = icmp eq i8 %call7, 0, !dbg !3061
  br i1 %tobool9, label %lor.lhs.false10, label %return, !dbg !3062

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #8, !dbg !3063
  %cmp = icmp eq i32 %call11, 51, !dbg !3064
  br i1 %cmp, label %return, label %if.end14, !dbg !3065

if.end14:                                         ; preds = %lor.lhs.false10
  %call15 = tail call zeroext i8 @refs_may_alias_p(%union.tree_node* %call4, %union.tree_node* %ref) #8, !dbg !3066
  br label %return, !dbg !3067

if.else:                                          ; preds = %entry
  %call16 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %stmt) #8, !dbg !3068
  %tobool17 = icmp eq i8 %call16, 0, !dbg !3068
  br i1 %tobool17, label %return, label %if.then18, !dbg !3070

if.then18:                                        ; preds = %if.else
  %call19 = tail call fastcc zeroext i8 @ref_maybe_used_by_call_p(%union.gimple_statement_d* %stmt, %union.tree_node* %ref) #8, !dbg !3071
  br label %return, !dbg !3072

return:                                           ; preds = %lor.lhs.false, %if.end, %if.then, %if.else, %if.end14, %lor.lhs.false10, %if.then18
  %retval.1 = phi i8 [ %call19, %if.then18 ], [ %call15, %if.end14 ], [ 0, %if.then ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %if.else ], !dbg !3050
  ret i8 %retval.1, !dbg !3073
}

declare dso_local zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d*) local_unnamed_addr #1

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3074 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3076, metadata !DIExpression()), !dbg !3077
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3078
  %cmp = icmp eq i32 %call, 8, !dbg !3079
  %conv1 = zext i1 %cmp to i8, !dbg !3078
  ret i8 %conv1, !dbg !3080
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ref_maybe_used_by_call_p(%union.gimple_statement_d* %call, %union.tree_node* %ref) unnamed_addr #4 !dbg !3081 {
entry:
  %r = alloca %struct.ao_ref_s, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3083, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata %union.tree_node* %ref, metadata !3084, metadata !DIExpression()), !dbg !3087
  %0 = bitcast %struct.ao_ref_s* %r to i8*, !dbg !3088
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3088
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r, metadata !3085, metadata !DIExpression(DW_OP_deref)), !dbg !3087
  call void @ao_ref_init(%struct.ao_ref_s* nonnull %r, %union.tree_node* %ref) #8, !dbg !3089
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r, metadata !3085, metadata !DIExpression(DW_OP_deref)), !dbg !3087
  %call1 = call fastcc zeroext i8 @ref_maybe_used_by_call_p_1(%union.gimple_statement_d* %call, %struct.ao_ref_s* nonnull %r) #8, !dbg !3090
  call void @llvm.dbg.value(metadata i8 %call1, metadata !3086, metadata !DIExpression()), !dbg !3087
  %tobool = icmp eq i8 %call1, 0, !dbg !3091
  br i1 %tobool, label %if.else, label %if.then, !dbg !3093

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @alias_stats.2, align 8, !dbg !3094
  %inc = add i64 %1, 1, !dbg !3094
  store i64 %inc, i64* @alias_stats.2, align 8, !dbg !3094
  br label %if.end, !dbg !3094

if.else:                                          ; preds = %entry
  %2 = load i64, i64* @alias_stats.3, align 8, !dbg !3095
  %inc2 = add i64 %2, 1, !dbg !3095
  store i64 %inc2, i64* @alias_stats.3, align 8, !dbg !3095
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3096
  ret i8 %call1, !dbg !3097
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @stmt_may_clobber_ref_p_1(%union.gimple_statement_d* %stmt, %struct.ao_ref_s* %ref) local_unnamed_addr #4 !dbg !3098 {
entry:
  %r = alloca %struct.ao_ref_s, align 8
  %r15 = alloca %struct.ao_ref_s, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3102, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !3103, metadata !DIExpression()), !dbg !3113
  %call = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %stmt) #8, !dbg !3114
  %tobool = icmp eq i8 %call, 0, !dbg !3114
  br i1 %tobool, label %if.else, label %if.then, !dbg !3115

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !3116
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3104, metadata !DIExpression()), !dbg !3117
  %tobool2 = icmp eq %union.tree_node* %call1, null, !dbg !3118
  br i1 %tobool2, label %if.end9, label %land.lhs.true, !dbg !3119

land.lhs.true:                                    ; preds = %if.then
  %call3 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* nonnull %call1) #6, !dbg !3120
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3120
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !3121

if.then5:                                         ; preds = %land.lhs.true
  %0 = bitcast %struct.ao_ref_s* %r to i8*, !dbg !3122
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3122
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r, metadata !3107, metadata !DIExpression(DW_OP_deref)), !dbg !3123
  call void @ao_ref_init(%struct.ao_ref_s* nonnull %r, %union.tree_node* nonnull %call1) #8, !dbg !3124
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r, metadata !3107, metadata !DIExpression(DW_OP_deref)), !dbg !3123
  %call6 = call zeroext i8 @refs_may_alias_p_1(%struct.ao_ref_s* %ref, %struct.ao_ref_s* nonnull %r, i8 zeroext 1) #8, !dbg !3125
  %tobool7 = icmp eq i8 %call6, 0, !dbg !3125
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3127
  br i1 %tobool7, label %if.end9, label %return

if.end9:                                          ; preds = %land.lhs.true, %if.then, %if.then5
  %call10 = call fastcc zeroext i8 @call_may_clobber_ref_p_1(%union.gimple_statement_d* %stmt, %struct.ao_ref_s* %ref) #8, !dbg !3128
  br label %return, !dbg !3129

if.else:                                          ; preds = %entry
  %call12 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt) #8, !dbg !3130
  %tobool13 = icmp eq i8 %call12, 0, !dbg !3130
  br i1 %tobool13, label %if.else19, label %if.then14, !dbg !3131

if.then14:                                        ; preds = %if.else
  %1 = bitcast %struct.ao_ref_s* %r15 to i8*, !dbg !3132
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #7, !dbg !3132
  %call16 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !3133
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r15, metadata !3110, metadata !DIExpression(DW_OP_deref)), !dbg !3134
  call void @ao_ref_init(%struct.ao_ref_s* nonnull %r15, %union.tree_node* %call16) #8, !dbg !3135
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r15, metadata !3110, metadata !DIExpression(DW_OP_deref)), !dbg !3134
  %call17 = call zeroext i8 @refs_may_alias_p_1(%struct.ao_ref_s* %ref, %struct.ao_ref_s* nonnull %r15, i8 zeroext 1) #8, !dbg !3136
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #7, !dbg !3137
  br label %return

if.else19:                                        ; preds = %if.else
  %call20 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3138
  %cmp = icmp eq i32 %call20, 7, !dbg !3140
  %spec.select = zext i1 %cmp to i8, !dbg !3141
  ret i8 %spec.select, !dbg !3141

return:                                           ; preds = %if.end9, %if.then5, %if.then14
  %retval.2 = phi i8 [ %call17, %if.then14 ], [ %call10, %if.end9 ], [ 1, %if.then5 ], !dbg !3113
  ret i8 %retval.2, !dbg !3142
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3143 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3145, metadata !DIExpression()), !dbg !3146
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3147
  ret %union.tree_node* %call, !dbg !3148
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @call_may_clobber_ref_p_1(%union.gimple_statement_d* %call, %struct.ao_ref_s* %ref) unnamed_addr #4 !dbg !3149 {
entry:
  %dref = alloca %struct.ao_ref_s, align 8
  %dref53 = alloca %struct.ao_ref_s, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3151, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !3152, metadata !DIExpression()), !dbg !3184
  %call1 = tail call i32 @gimple_call_flags(%union.gimple_statement_d* %call) #6, !dbg !3185
  %and = and i32 %call1, 519, !dbg !3187
  %tobool = icmp eq i32 %and, 0, !dbg !3187
  br i1 %tobool, label %if.end, label %cleanup271, !dbg !3188

if.end:                                           ; preds = %entry
  %call2 = tail call %union.tree_node* @ao_ref_base(%struct.ao_ref_s* %ref) #8, !dbg !3189
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3153, metadata !DIExpression()), !dbg !3184
  %tobool3 = icmp eq %union.tree_node* %call2, null, !dbg !3190
  br i1 %tobool3, label %cleanup271, label %if.end5, !dbg !3192

if.end5:                                          ; preds = %if.end
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3193
  %bf.load = load i64, i64* %0, align 8, !dbg !3193
  %bf.cast7 = and i64 %bf.load, 65535, !dbg !3195
  %cmp = icmp eq i64 %bf.cast7, 141, !dbg !3195
  br i1 %cmp, label %cleanup271, label %lor.lhs.false, !dbg !3196

lor.lhs.false:                                    ; preds = %if.end5
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast7, !dbg !3197
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3197
  %cmp11 = icmp eq i32 %1, 1, !dbg !3197
  br i1 %cmp11, label %cleanup271, label %if.end13, !dbg !3198

if.end13:                                         ; preds = %lor.lhs.false
  %cmp20 = icmp eq i32 %1, 3, !dbg !3199
  br i1 %cmp20, label %land.lhs.true, label %if.end33, !dbg !3201

land.lhs.true:                                    ; preds = %if.end13
  %call21 = tail call fastcc zeroext i8 @may_be_aliased(%union.tree_node* nonnull %call2) #8, !dbg !3202
  %tobool22 = icmp eq i8 %call21, 0, !dbg !3202
  br i1 %tobool22, label %land.lhs.true23, label %if.end33, !dbg !3203

land.lhs.true23:                                  ; preds = %land.lhs.true
  %bf.load25 = load i64, i64* %0, align 8, !dbg !3204
  %bf.cast2724 = and i64 %bf.load25, 1048576, !dbg !3204
  %tobool28 = icmp eq i64 %bf.cast2724, 0, !dbg !3204
  br i1 %tobool28, label %lor.lhs.false29, label %cleanup271, !dbg !3205

lor.lhs.false29:                                  ; preds = %land.lhs.true23
  %call30 = tail call fastcc zeroext i8 @is_global_var(%union.tree_node* nonnull %call2) #8, !dbg !3206
  %tobool31 = icmp eq i8 %call30, 0, !dbg !3206
  br i1 %tobool31, label %cleanup271, label %if.end33, !dbg !3207

if.end33:                                         ; preds = %lor.lhs.false29, %land.lhs.true, %if.end13
  %call34 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call) #8, !dbg !3208
  call void @llvm.dbg.value(metadata %union.tree_node* %call34, metadata !3154, metadata !DIExpression()), !dbg !3184
  %cmp35 = icmp eq %union.tree_node* %call34, null, !dbg !3209
  br i1 %cmp35, label %if.end168, label %land.lhs.true36, !dbg !3210

land.lhs.true36:                                  ; preds = %if.end33
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call34, i64 0, i32 0, i32 5, !dbg !3211
  %bf.load37 = load i32, i32* %built_in_class, align 8, !dbg !3211
  %bf.clear39 = and i32 %bf.load37, 6144, !dbg !3211
  %cmp40 = icmp eq i32 %bf.clear39, 6144, !dbg !3212
  br i1 %cmp40, label %if.then41, label %if.end168, !dbg !3213

if.then41:                                        ; preds = %land.lhs.true36
  %bf.clear44 = and i32 %bf.load37, 2047, !dbg !3214
  switch i32 %bf.clear44, label %if.end168 [
    i32 341, label %sw.bb
    i32 349, label %sw.bb
    i32 330, label %sw.bb
    i32 331, label %sw.bb
    i32 332, label %sw.bb
    i32 335, label %sw.bb
    i32 336, label %sw.bb
    i32 338, label %sw.bb
    i32 347, label %sw.bb
    i32 333, label %sw.bb
    i32 325, label %sw.bb52
    i32 491, label %sw.bb58
    i32 422, label %sw.bb58
    i32 455, label %sw.bb121
    i32 84, label %sw.bb125
    i32 85, label %sw.bb125
    i32 86, label %sw.bb125
    i32 123, label %sw.bb125
    i32 124, label %sw.bb125
    i32 125, label %sw.bb125
    i32 78, label %sw.bb136
    i32 79, label %sw.bb136
    i32 80, label %sw.bb136
    i32 159, label %sw.bb136
    i32 160, label %sw.bb136
    i32 161, label %sw.bb136
    i32 192, label %sw.bb141
    i32 193, label %sw.bb141
    i32 194, label %sw.bb141
    i32 220, label %sw.bb153
    i32 221, label %sw.bb153
    i32 222, label %sw.bb153
  ], !dbg !3215

sw.bb:                                            ; preds = %if.then41, %if.then41, %if.then41, %if.then41, %if.then41, %if.then41, %if.then41, %if.then41, %if.then41, %if.then41
  %2 = bitcast %struct.ao_ref_s* %dref to i8*, !dbg !3216
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %2) #7, !dbg !3216
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3159, metadata !DIExpression()), !dbg !3217
  %call45 = tail call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call) #8, !dbg !3218
  %cmp46 = icmp eq i32 %call45, 3, !dbg !3220
  br i1 %cmp46, label %if.then47, label %if.end49, !dbg !3221

if.then47:                                        ; preds = %sw.bb
  %call48 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 2) #8, !dbg !3222
  call void @llvm.dbg.value(metadata %union.tree_node* %call48, metadata !3159, metadata !DIExpression()), !dbg !3217
  br label %if.end49, !dbg !3223

if.end49:                                         ; preds = %if.then47, %sw.bb
  %size.0 = phi %union.tree_node* [ %call48, %if.then47 ], [ null, %sw.bb ], !dbg !3217
  call void @llvm.dbg.value(metadata %union.tree_node* %size.0, metadata !3159, metadata !DIExpression()), !dbg !3217
  %call50 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 0) #8, !dbg !3224
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %dref, metadata !3155, metadata !DIExpression(DW_OP_deref)), !dbg !3217
  call void @ao_ref_init_from_ptr_and_size(%struct.ao_ref_s* nonnull %dref, %union.tree_node* %call50, %union.tree_node* %size.0) #8, !dbg !3225
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %dref, metadata !3155, metadata !DIExpression(DW_OP_deref)), !dbg !3217
  %call51 = call zeroext i8 @refs_may_alias_p_1(%struct.ao_ref_s* nonnull %dref, %struct.ao_ref_s* %ref, i8 zeroext 0) #8, !dbg !3226
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %2) #7, !dbg !3227
  br label %cleanup271

sw.bb52:                                          ; preds = %if.then41
  %3 = bitcast %struct.ao_ref_s* %dref53 to i8*, !dbg !3228
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #7, !dbg !3228
  %call55 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 2) #8, !dbg !3229
  call void @llvm.dbg.value(metadata %union.tree_node* %call55, metadata !3162, metadata !DIExpression()), !dbg !3230
  %call56 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 1) #8, !dbg !3231
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %dref53, metadata !3160, metadata !DIExpression(DW_OP_deref)), !dbg !3230
  call void @ao_ref_init_from_ptr_and_size(%struct.ao_ref_s* nonnull %dref53, %union.tree_node* %call56, %union.tree_node* %call55) #8, !dbg !3232
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %dref53, metadata !3160, metadata !DIExpression(DW_OP_deref)), !dbg !3230
  %call57 = call zeroext i8 @refs_may_alias_p_1(%struct.ao_ref_s* nonnull %dref53, %struct.ao_ref_s* %ref, i8 zeroext 0) #8, !dbg !3233
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #7, !dbg !3234
  br label %cleanup271

sw.bb58:                                          ; preds = %if.then41, %if.then41
  %4 = load i32, i32* @flag_errno_math, align 4, !dbg !3235
  %tobool59 = icmp eq i32 %4, 0, !dbg !3235
  br i1 %tobool59, label %if.end120, label %land.lhs.true60, !dbg !3236

land.lhs.true60:                                  ; preds = %sw.bb58
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3237
  %5 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3237
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !3238
  %cmp61 = icmp eq %union.tree_node* %5, %6, !dbg !3239
  br i1 %cmp61, label %if.then62, label %if.end120, !dbg !3240

if.then62:                                        ; preds = %land.lhs.true60
  %bf.load64 = load i64, i64* %0, align 8, !dbg !3241
  %bf.cast66 = and i64 %bf.load64, 65535, !dbg !3241
  %arrayidx68 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast66, !dbg !3241
  %7 = load i32, i32* %arrayidx68, align 4, !dbg !3241
  %cmp69 = icmp eq i32 %7, 3, !dbg !3241
  br i1 %cmp69, label %land.lhs.true70, label %if.else, !dbg !3243

land.lhs.true70:                                  ; preds = %if.then62
  %bf.cast7523 = and i64 %bf.load64, 67108864, !dbg !3244
  %tobool76 = icmp eq i64 %bf.cast7523, 0, !dbg !3244
  br i1 %tobool76, label %cleanup, label %if.else, !dbg !3245

if.else:                                          ; preds = %land.lhs.true70, %if.then62
  %cmp82 = icmp eq i64 %bf.cast66, 47, !dbg !3246
  br i1 %cmp82, label %land.lhs.true95, label %lor.lhs.false83, !dbg !3246

lor.lhs.false83:                                  ; preds = %if.else
  %cmp88 = icmp eq i64 %bf.cast66, 48, !dbg !3246
  br i1 %cmp88, label %land.lhs.true95, label %lor.lhs.false89, !dbg !3246

lor.lhs.false89:                                  ; preds = %lor.lhs.false83
  %cmp94 = icmp eq i64 %bf.cast66, 49, !dbg !3246
  br i1 %cmp94, label %land.lhs.true95, label %cleanup, !dbg !3248

land.lhs.true95:                                  ; preds = %lor.lhs.false89, %lor.lhs.false83, %if.else
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3249
  %8 = bitcast %union.tree_node** %operands to i64**, !dbg !3249
  %9 = load i64*, i64** %8, align 8, !dbg !3249
  %bf.load98 = load i64, i64* %9, align 8, !dbg !3249
  %bf.cast10021 = and i64 %bf.load98, 65535, !dbg !3250
  %cmp101 = icmp eq i64 %bf.cast10021, 141, !dbg !3250
  br i1 %cmp101, label %land.lhs.true102, label %cleanup, !dbg !3251

land.lhs.true102:                                 ; preds = %land.lhs.true95
  %ptr_info = getelementptr inbounds i64, i64* %9, i64 6, !dbg !3252
  %10 = bitcast i64* %ptr_info to %struct.ptr_info_def**, !dbg !3252
  %11 = load %struct.ptr_info_def*, %struct.ptr_info_def** %10, align 8, !dbg !3252
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %11, metadata !3163, metadata !DIExpression()), !dbg !3253
  %tobool106 = icmp eq %struct.ptr_info_def* %11, null, !dbg !3254
  br i1 %tobool106, label %cleanup, label %if.then107, !dbg !3255

if.then107:                                       ; preds = %land.lhs.true102
  %12 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %11, i64 0, i32 0, i32 0, !dbg !3256
  %bf.load108 = load i8, i8* %12, align 8, !dbg !3256
  %bf.clear109 = and i8 %bf.load108, 1, !dbg !3256
  %tobool111 = icmp eq i8 %bf.clear109, 0, !dbg !3257
  br i1 %tobool111, label %lor.rhs, label %lor.end, !dbg !3258

lor.rhs:                                          ; preds = %if.then107
  %bf.clear115 = lshr i8 %bf.load108, 1, !dbg !3258
  %bf.clear115.lobit = and i8 %bf.clear115, 1, !dbg !3258
  br label %lor.end, !dbg !3258

lor.end:                                          ; preds = %if.then107, %lor.rhs
  %13 = phi i8 [ 1, %if.then107 ], [ %bf.clear115.lobit, %lor.rhs ]
  br label %cleanup, !dbg !3259

cleanup:                                          ; preds = %land.lhs.true70, %land.lhs.true102, %land.lhs.true95, %lor.lhs.false89, %lor.end
  %cleanup.dest.slot.0 = phi i1 [ false, %lor.end ], [ false, %land.lhs.true70 ], [ true, %lor.lhs.false89 ], [ true, %land.lhs.true95 ], [ true, %land.lhs.true102 ]
  %retval.0 = phi i8 [ %13, %lor.end ], [ 1, %land.lhs.true70 ], [ undef, %lor.lhs.false89 ], [ undef, %land.lhs.true95 ], [ undef, %land.lhs.true102 ]
  br i1 %cleanup.dest.slot.0, label %if.end120, label %cleanup271

if.end120:                                        ; preds = %sw.bb58, %cleanup, %land.lhs.true60
  br label %cleanup271, !dbg !3260

sw.bb121:                                         ; preds = %if.then41
  %call122 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 0) #8, !dbg !3261
  call void @llvm.dbg.value(metadata %union.tree_node* %call122, metadata !3166, metadata !DIExpression()), !dbg !3262
  %call123 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(%union.tree_node* %call122, %struct.ao_ref_s* %ref) #8, !dbg !3263
  br label %cleanup271

sw.bb125:                                         ; preds = %if.then41, %if.then41, %if.then41, %if.then41, %if.then41, %if.then41
  %call126 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 1) #8, !dbg !3264
  call void @llvm.dbg.value(metadata %union.tree_node* %call126, metadata !3168, metadata !DIExpression()), !dbg !3265
  %call127 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(%union.tree_node* %call126, %struct.ao_ref_s* %ref) #8, !dbg !3266
  %tobool128 = icmp eq i8 %call127, 0, !dbg !3266
  br i1 %tobool128, label %if.end130, label %cleanup134, !dbg !3268

if.end130:                                        ; preds = %sw.bb125
  %14 = load i32, i32* @flag_errno_math, align 4, !dbg !3269
  %tobool131 = icmp ne i32 %14, 0, !dbg !3269
  br label %cleanup134, !dbg !3265

cleanup134:                                       ; preds = %sw.bb125, %if.end130
  %cleanup.dest.slot.1 = phi i1 [ false, %sw.bb125 ], [ %tobool131, %if.end130 ]
  %retval.1 = phi i8 [ 1, %sw.bb125 ], [ 0, %if.end130 ]
  br i1 %cleanup.dest.slot.1, label %if.end168, label %cleanup271

sw.bb136:                                         ; preds = %if.then41, %if.then41, %if.then41, %if.then41, %if.then41, %if.then41
  %call138 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 1) #8, !dbg !3271
  call void @llvm.dbg.value(metadata %union.tree_node* %call138, metadata !3170, metadata !DIExpression()), !dbg !3272
  %call139 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(%union.tree_node* %call138, %struct.ao_ref_s* %ref) #8, !dbg !3273
  br label %cleanup271

sw.bb141:                                         ; preds = %if.then41, %if.then41, %if.then41
  %call143 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 2) #8, !dbg !3274
  call void @llvm.dbg.value(metadata %union.tree_node* %call143, metadata !3172, metadata !DIExpression()), !dbg !3275
  %call144 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(%union.tree_node* %call143, %struct.ao_ref_s* %ref) #8, !dbg !3276
  %tobool145 = icmp eq i8 %call144, 0, !dbg !3276
  br i1 %tobool145, label %if.end147, label %cleanup151, !dbg !3278

if.end147:                                        ; preds = %sw.bb141
  %15 = load i32, i32* @flag_errno_math, align 4, !dbg !3279
  %tobool148 = icmp ne i32 %15, 0, !dbg !3279
  br label %cleanup151, !dbg !3275

cleanup151:                                       ; preds = %sw.bb141, %if.end147
  %cleanup.dest.slot.2 = phi i1 [ false, %sw.bb141 ], [ %tobool148, %if.end147 ]
  %retval.2 = phi i8 [ 1, %sw.bb141 ], [ 0, %if.end147 ]
  br i1 %cleanup.dest.slot.2, label %if.end168, label %cleanup271

sw.bb153:                                         ; preds = %if.then41, %if.then41, %if.then41
  %call154 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 1) #8, !dbg !3281
  call void @llvm.dbg.value(metadata %union.tree_node* %call154, metadata !3174, metadata !DIExpression()), !dbg !3282
  %call155 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 2) #8, !dbg !3283
  call void @llvm.dbg.value(metadata %union.tree_node* %call155, metadata !3176, metadata !DIExpression()), !dbg !3282
  %call156 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(%union.tree_node* %call154, %struct.ao_ref_s* %ref) #8, !dbg !3284
  %tobool158 = icmp eq i8 %call156, 0, !dbg !3284
  br i1 %tobool158, label %lor.rhs159, label %lor.end163, !dbg !3285

lor.rhs159:                                       ; preds = %sw.bb153
  %call160 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(%union.tree_node* %call155, %struct.ao_ref_s* %ref) #8, !dbg !3286
  %tobool162 = icmp ne i8 %call160, 0, !dbg !3285
  %phitmp15 = zext i1 %tobool162 to i8, !dbg !3285
  br label %lor.end163, !dbg !3285

lor.end163:                                       ; preds = %sw.bb153, %lor.rhs159
  %16 = phi i8 [ 1, %sw.bb153 ], [ %phitmp15, %lor.rhs159 ]
  br label %cleanup271

if.end168:                                        ; preds = %if.end33, %cleanup151, %cleanup134, %if.then41, %land.lhs.true36
  %retval.4 = phi i8 [ undef, %land.lhs.true36 ], [ undef, %if.end33 ], [ %retval.2, %cleanup151 ], [ %retval.1, %cleanup134 ], [ undef, %if.then41 ]
  br i1 %cmp35, label %if.end204, label %land.lhs.true171, !dbg !3287

land.lhs.true171:                                 ; preds = %if.end168
  %bf.load173 = load i64, i64* %0, align 8, !dbg !3288
  %bf.cast17512 = and i64 %bf.load173, 65535, !dbg !3289
  %cmp176 = icmp eq i64 %bf.cast17512, 32, !dbg !3289
  br i1 %cmp176, label %land.lhs.true178, label %if.end204, !dbg !3290

land.lhs.true178:                                 ; preds = %land.lhs.true171
  %bf.cast18313 = and i64 %bf.load173, 67108864, !dbg !3291
  %tobool184 = icmp eq i64 %bf.cast18313, 0, !dbg !3291
  br i1 %tobool184, label %if.end204, label %land.lhs.true185, !dbg !3292

land.lhs.true185:                                 ; preds = %land.lhs.true178
  %bf.cast19014 = and i64 %bf.load173, 134217728, !dbg !3293
  %tobool191 = icmp eq i64 %bf.cast19014, 0, !dbg !3293
  br i1 %tobool191, label %if.then192, label %if.end204, !dbg !3294

if.then192:                                       ; preds = %land.lhs.true185
  %call193 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* nonnull %call34) #6, !dbg !3295
  %call194 = tail call %struct.bitmap_head_def* @ipa_reference_get_not_written_global(%struct.cgraph_node* %call193) #6, !dbg !3297
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call194, metadata !3177, metadata !DIExpression()), !dbg !3298
  %tobool195 = icmp eq %struct.bitmap_head_def* %call194, null, !dbg !3299
  br i1 %tobool195, label %if.end200, label %land.lhs.true196, !dbg !3300

land.lhs.true196:                                 ; preds = %if.then192
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3301
  %17 = load i32, i32* %uid, align 4, !dbg !3301
  %call197 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull %call194, i32 %17) #6, !dbg !3302
  %tobool198 = icmp eq i32 %call197, 0, !dbg !3302
  br i1 %tobool198, label %if.end200, label %cleanup201, !dbg !3303

if.end200:                                        ; preds = %land.lhs.true196, %if.then192
  br label %cleanup201, !dbg !3304

cleanup201:                                       ; preds = %land.lhs.true196, %if.end200
  %cleanup.dest.slot.3 = phi i1 [ true, %if.end200 ], [ false, %land.lhs.true196 ]
  %retval.5 = phi i8 [ %retval.4, %if.end200 ], [ 0, %land.lhs.true196 ]
  br i1 %cleanup.dest.slot.3, label %if.end204, label %cleanup271

if.end204:                                        ; preds = %land.lhs.true185, %land.lhs.true178, %if.end168, %cleanup201, %land.lhs.true171
  %bf.load206 = load i64, i64* %0, align 8, !dbg !3305
  %bf.cast208 = and i64 %bf.load206, 65535, !dbg !3305
  %arrayidx210 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast208, !dbg !3305
  %18 = load i32, i32* %arrayidx210, align 4, !dbg !3305
  %cmp211 = icmp eq i32 %18, 3, !dbg !3305
  br i1 %cmp211, label %if.then213, label %if.else215, !dbg !3306

if.then213:                                       ; preds = %if.end204
  %call214 = tail call fastcc zeroext i8 @is_call_clobbered(%union.tree_node* nonnull %call2) #8, !dbg !3307
  br label %cleanup271, !dbg !3308

if.else215:                                       ; preds = %if.end204
  %cmp220 = icmp eq i64 %bf.cast208, 47, !dbg !3309
  br i1 %cmp220, label %land.lhs.true236, label %lor.lhs.false222, !dbg !3309

lor.lhs.false222:                                 ; preds = %if.else215
  %cmp227 = icmp eq i64 %bf.cast208, 48, !dbg !3309
  br i1 %cmp227, label %land.lhs.true236, label %lor.lhs.false229, !dbg !3309

lor.lhs.false229:                                 ; preds = %lor.lhs.false222
  %cmp234 = icmp eq i64 %bf.cast208, 49, !dbg !3309
  br i1 %cmp234, label %land.lhs.true236, label %cleanup271, !dbg !3310

land.lhs.true236:                                 ; preds = %lor.lhs.false229, %lor.lhs.false222, %if.else215
  %operands238 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3311
  %19 = bitcast %union.tree_node** %operands238 to i64**, !dbg !3311
  %20 = load i64*, i64** %19, align 8, !dbg !3311
  %bf.load241 = load i64, i64* %20, align 8, !dbg !3311
  %bf.cast24311 = and i64 %bf.load241, 65535, !dbg !3312
  %cmp244 = icmp eq i64 %bf.cast24311, 141, !dbg !3312
  br i1 %cmp244, label %if.then246, label %cleanup271, !dbg !3313

if.then246:                                       ; preds = %land.lhs.true236
  %ptr_info252 = getelementptr inbounds i64, i64* %20, i64 6, !dbg !3314
  %21 = bitcast i64* %ptr_info252 to %struct.ptr_info_def**, !dbg !3314
  %22 = load %struct.ptr_info_def*, %struct.ptr_info_def** %21, align 8, !dbg !3314
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %22, metadata !3180, metadata !DIExpression()), !dbg !3315
  %tobool253 = icmp eq %struct.ptr_info_def* %22, null, !dbg !3316
  br i1 %tobool253, label %cleanup271, label %if.end255, !dbg !3318

if.end255:                                        ; preds = %if.then246
  %pt256 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %22, i64 0, i32 0, !dbg !3319
  %call257 = tail call zeroext i8 @pt_solution_includes_global(%struct.pt_solution* nonnull %pt256) #6, !dbg !3320
  %tobool259 = icmp eq i8 %call257, 0, !dbg !3320
  br i1 %tobool259, label %lor.rhs260, label %lor.end265, !dbg !3321

lor.rhs260:                                       ; preds = %if.end255
  %23 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3322
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %23, i64 0, i32 3, !dbg !3323
  %24 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3323
  %escaped = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %24, i64 0, i32 4, !dbg !3324
  %call262 = tail call zeroext i8 @pt_solutions_intersect(%struct.pt_solution* nonnull %escaped, %struct.pt_solution* nonnull %pt256) #6, !dbg !3325
  %tobool264 = icmp ne i8 %call262, 0, !dbg !3321
  %phitmp = zext i1 %tobool264 to i8, !dbg !3321
  br label %lor.end265, !dbg !3321

lor.end265:                                       ; preds = %if.end255, %lor.rhs260
  %25 = phi i8 [ 1, %if.end255 ], [ %phitmp, %lor.rhs260 ]
  br label %cleanup271, !dbg !3326

cleanup271:                                       ; preds = %lor.lhs.false29, %land.lhs.true23, %if.then246, %if.end, %entry, %land.lhs.true236, %lor.lhs.false229, %lor.end265, %if.end5, %lor.lhs.false, %cleanup, %cleanup134, %cleanup151, %cleanup201, %if.then213, %lor.end163, %sw.bb136, %sw.bb121, %if.end120, %sw.bb52, %if.end49
  %retval.7 = phi i8 [ %call214, %if.then213 ], [ %retval.5, %cleanup201 ], [ %16, %lor.end163 ], [ %retval.2, %cleanup151 ], [ %call139, %sw.bb136 ], [ %retval.1, %cleanup134 ], [ %call123, %sw.bb121 ], [ %retval.0, %cleanup ], [ 0, %if.end120 ], [ %call57, %sw.bb52 ], [ %call51, %if.end49 ], [ 0, %entry ], [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %if.end5 ], [ 0, %lor.lhs.false29 ], [ 0, %land.lhs.true23 ], [ %25, %lor.end265 ], [ 1, %if.then246 ], [ 1, %lor.lhs.false229 ], [ 1, %land.lhs.true236 ], !dbg !3184
  ret i8 %retval.7, !dbg !3327
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3328 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3330, metadata !DIExpression()), !dbg !3331
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3332
  ret %union.tree_node* %call, !dbg !3333
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3334 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3338, metadata !DIExpression()), !dbg !3339
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3340
  %bf.load = load i32, i32* %0, align 8, !dbg !3340
  %bf.clear = and i32 %bf.load, 255, !dbg !3340
  ret i32 %bf.clear, !dbg !3341
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @stmt_may_clobber_ref_p(%union.gimple_statement_d* %stmt, %union.tree_node* %ref) local_unnamed_addr #4 !dbg !3342 {
entry:
  %r = alloca %struct.ao_ref_s, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3344, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata %union.tree_node* %ref, metadata !3345, metadata !DIExpression()), !dbg !3347
  %0 = bitcast %struct.ao_ref_s* %r to i8*, !dbg !3348
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3348
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r, metadata !3346, metadata !DIExpression(DW_OP_deref)), !dbg !3347
  call void @ao_ref_init(%struct.ao_ref_s* nonnull %r, %union.tree_node* %ref) #8, !dbg !3349
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r, metadata !3346, metadata !DIExpression(DW_OP_deref)), !dbg !3347
  %call = call zeroext i8 @stmt_may_clobber_ref_p_1(%union.gimple_statement_d* %stmt, %struct.ao_ref_s* nonnull %r) #8, !dbg !3350
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3351
  ret i8 %call, !dbg !3352
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @get_continuation_for_phi(%union.gimple_statement_d* %phi, %struct.ao_ref_s* %ref, %struct.bitmap_head_def** %visited) local_unnamed_addr #4 !dbg !3353 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3358, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !3359, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %visited, metadata !3360, metadata !DIExpression()), !dbg !3369
  %call = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #8, !dbg !3370
  call void @llvm.dbg.value(metadata i32 %call, metadata !3361, metadata !DIExpression()), !dbg !3369
  switch i32 %call, label %if.end64 [
    i32 1, label %if.then
    i32 2, label %if.then4
  ], !dbg !3371

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 0) #8, !dbg !3372
  %call2 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call1) #8, !dbg !3372
  br label %cleanup65, !dbg !3374

if.then4:                                         ; preds = %entry
  %call5 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 0) #8, !dbg !3375
  %call6 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call5) #8, !dbg !3375
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !3362, metadata !DIExpression()), !dbg !3376
  %call7 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 1) #8, !dbg !3377
  %call8 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call7) #8, !dbg !3377
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !3365, metadata !DIExpression()), !dbg !3376
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3378
  %0 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3378
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %0, align 8, !dbg !3378
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !3366, metadata !DIExpression()), !dbg !3376
  %def_stmt10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3379
  %2 = bitcast %union.tree_node** %def_stmt10 to %union.gimple_statement_d**, !dbg !3379
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %2, align 8, !dbg !3379
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %3, metadata !3367, metadata !DIExpression()), !dbg !3376
  %cmp11 = icmp eq %union.tree_node* %call6, %call8, !dbg !3380
  br i1 %cmp11, label %cleanup, label %if.else, !dbg !3382

if.else:                                          ; preds = %if.then4
  %call13 = tail call fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %1) #8, !dbg !3383
  %tobool = icmp eq i8 %call13, 0, !dbg !3383
  br i1 %tobool, label %lor.lhs.false, label %if.then21, !dbg !3385

lor.lhs.false:                                    ; preds = %if.else
  %call14 = tail call fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %3) #8, !dbg !3386
  %tobool15 = icmp eq i8 %call14, 0, !dbg !3386
  br i1 %tobool15, label %land.lhs.true, label %if.else26, !dbg !3387

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call16 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %3) #8, !dbg !3388
  %call17 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %1) #8, !dbg !3389
  %call18 = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %call16, %struct.basic_block_def* %call17) #6, !dbg !3390
  %tobool20 = icmp eq i8 %call18, 0, !dbg !3390
  br i1 %tobool20, label %if.else26, label %if.then21, !dbg !3391

if.then21:                                        ; preds = %land.lhs.true, %if.else
  %call22 = tail call fastcc zeroext i8 @maybe_skip_until(%union.gimple_statement_d* %phi, %union.tree_node* %call6, %struct.ao_ref_s* %ref, %union.tree_node* %call8, %struct.bitmap_head_def** %visited) #8, !dbg !3392
  %tobool23 = icmp eq i8 %call22, 0, !dbg !3392
  br i1 %tobool23, label %if.end59, label %cleanup, !dbg !3395

if.else26:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %call27 = tail call fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %3) #8, !dbg !3396
  %tobool29 = icmp eq i8 %call27, 0, !dbg !3396
  br i1 %tobool29, label %lor.lhs.false30, label %if.then36, !dbg !3398

lor.lhs.false30:                                  ; preds = %if.else26
  %call31 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %1) #8, !dbg !3399
  %call32 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %3) #8, !dbg !3400
  %call33 = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %call31, %struct.basic_block_def* %call32) #6, !dbg !3401
  %tobool35 = icmp eq i8 %call33, 0, !dbg !3401
  br i1 %tobool35, label %if.else41, label %if.then36, !dbg !3402

if.then36:                                        ; preds = %lor.lhs.false30, %if.else26
  %call37 = tail call fastcc zeroext i8 @maybe_skip_until(%union.gimple_statement_d* %phi, %union.tree_node* %call8, %struct.ao_ref_s* %ref, %union.tree_node* %call6, %struct.bitmap_head_def** %visited) #8, !dbg !3403
  %tobool38 = icmp eq i8 %call37, 0, !dbg !3403
  br i1 %tobool38, label %if.end59, label %cleanup, !dbg !3406

if.else41:                                        ; preds = %lor.lhs.false30
  %call42 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %1) #8, !dbg !3407
  call void @llvm.dbg.value(metadata %union.tree_node* %call42, metadata !3368, metadata !DIExpression()), !dbg !3376
  %tobool43 = icmp eq %union.tree_node* %call42, null, !dbg !3409
  br i1 %tobool43, label %if.end59, label %land.lhs.true44, !dbg !3410

land.lhs.true44:                                  ; preds = %if.else41
  %call45 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %3) #8, !dbg !3411
  %cmp46 = icmp eq %union.tree_node* %call42, %call45, !dbg !3412
  br i1 %cmp46, label %if.then48, label %if.end59, !dbg !3413

if.then48:                                        ; preds = %land.lhs.true44
  %call49 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(%union.gimple_statement_d* %1, %struct.ao_ref_s* %ref) #8, !dbg !3414
  %tobool50 = icmp eq i8 %call49, 0, !dbg !3414
  br i1 %tobool50, label %land.lhs.true51, label %if.end59, !dbg !3417

land.lhs.true51:                                  ; preds = %if.then48
  %call52 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(%union.gimple_statement_d* %3, %struct.ao_ref_s* %ref) #8, !dbg !3418
  %tobool53 = icmp eq i8 %call52, 0, !dbg !3418
  br i1 %tobool53, label %cleanup, label %if.end59, !dbg !3419

if.end59:                                         ; preds = %if.then21, %if.then36, %land.lhs.true51, %if.then48, %if.else41, %land.lhs.true44
  br label %cleanup, !dbg !3420

cleanup:                                          ; preds = %if.then21, %if.then36, %land.lhs.true51, %if.then4, %if.end59
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end59 ], [ false, %if.then4 ], [ false, %if.then21 ], [ false, %if.then36 ], [ false, %land.lhs.true51 ]
  %retval.0 = phi %union.tree_node* [ undef, %if.end59 ], [ %call6, %if.then4 ], [ %call6, %if.then21 ], [ %call8, %if.then36 ], [ %call42, %land.lhs.true51 ]
  br i1 %cleanup.dest.slot.0, label %if.end64, label %cleanup65

if.end64:                                         ; preds = %cleanup, %entry
  br label %cleanup65, !dbg !3421

cleanup65:                                        ; preds = %cleanup, %if.end64, %if.then
  %retval.1 = phi %union.tree_node* [ %call2, %if.then ], [ %retval.0, %cleanup ], [ null, %if.end64 ], !dbg !3369
  ret %union.tree_node* %retval.1, !dbg !3422
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3423 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3427, metadata !DIExpression()), !dbg !3428
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !3429
  %0 = load i32, i32* %nargs, align 4, !dbg !3429
  ret i32 %0, !dbg !3430
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3431 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3438, metadata !DIExpression()), !dbg !3439
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3440
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3440
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3441
  ret %union.tree_node* %1, !dbg !3442
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3443 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3447, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i32 %i, metadata !3448, metadata !DIExpression()), !dbg !3449
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #8, !dbg !3450
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3451
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3452
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3453 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3455, metadata !DIExpression()), !dbg !3456
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3457
  %cmp = icmp eq i32 %call, 18, !dbg !3458
  %conv1 = zext i1 %cmp to i8, !dbg !3457
  ret i8 %conv1, !dbg !3459
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3460 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3464, metadata !DIExpression()), !dbg !3465
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3466
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3466
  ret %struct.basic_block_def* %0, !dbg !3467
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @maybe_skip_until(%union.gimple_statement_d* %phi, %union.tree_node* %target, %struct.ao_ref_s* %ref, %union.tree_node* %vuse, %struct.bitmap_head_def** %visited) unnamed_addr #4 !dbg !3468 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3472, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata %union.tree_node* %target, metadata !3473, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !3474, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata %union.tree_node* %vuse, metadata !3475, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %visited, metadata !3476, metadata !DIExpression()), !dbg !3479
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !3480
  %tobool = icmp eq %struct.bitmap_head_def* %0, null, !dbg !3480
  br i1 %tobool, label %if.then, label %if.end, !dbg !3482

if.then:                                          ; preds = %entry
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3483
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** %visited, align 8, !dbg !3484
  br label %if.end, !dbg !3485

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct.bitmap_head_def* [ %0, %entry ], [ %call, %if.then ], !dbg !3486
  %call1 = tail call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %phi) #8, !dbg !3487
  %call2 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call1) #8, !dbg !3487
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3487
  %2 = bitcast %union.tree_node** %version to i32*, !dbg !3487
  %3 = load i32, i32* %2, align 8, !dbg !3487
  %call3 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %1, i32 %3) #6, !dbg !3488
  br label %while.cond, !dbg !3489

while.cond:                                       ; preds = %cleanup, %if.end
  %vuse.addr.0 = phi %union.tree_node* [ %vuse, %if.end ], [ %vuse.addr.1, %cleanup ]
  %retval.0 = phi i8 [ undef, %if.end ], [ %retval.1, %cleanup ]
  call void @llvm.dbg.value(metadata %union.tree_node* %vuse.addr.0, metadata !3475, metadata !DIExpression()), !dbg !3479
  %cmp = icmp eq %union.tree_node* %vuse.addr.0, %target, !dbg !3490
  br i1 %cmp, label %return, label %while.body, !dbg !3489

while.body:                                       ; preds = %while.cond
  %def_stmt5 = getelementptr inbounds %union.tree_node, %union.tree_node* %vuse.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3491
  %4 = bitcast %union.tree_node** %def_stmt5 to %union.gimple_statement_d**, !dbg !3491
  %5 = load %union.gimple_statement_d*, %union.gimple_statement_d** %4, align 8, !dbg !3491
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %5, metadata !3477, metadata !DIExpression()), !dbg !3492
  %call6 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %5) #8, !dbg !3493
  %cmp7 = icmp eq i32 %call6, 16, !dbg !3495
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !3496

if.then8:                                         ; preds = %while.body
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !3497
  %call9 = tail call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %5) #8, !dbg !3500
  %call10 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call9) #8, !dbg !3500
  %version12 = getelementptr inbounds %union.tree_node, %union.tree_node* %call10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3500
  %7 = bitcast %union.tree_node** %version12 to i32*, !dbg !3500
  %8 = load i32, i32* %7, align 8, !dbg !3500
  %call13 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %6, i32 %8) #6, !dbg !3501
  %tobool14 = icmp eq i32 %call13, 0, !dbg !3501
  br i1 %tobool14, label %if.end16, label %cleanup, !dbg !3502

if.end16:                                         ; preds = %if.then8
  %call17 = tail call %union.tree_node* @get_continuation_for_phi(%union.gimple_statement_d* %5, %struct.ao_ref_s* %ref, %struct.bitmap_head_def** %visited) #8, !dbg !3503
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !3475, metadata !DIExpression()), !dbg !3479
  %tobool18 = icmp ne %union.tree_node* %call17, null, !dbg !3504
  %. = select i1 %tobool18, i32 2, i32 1, !dbg !3506
  %retval.0. = select i1 %tobool18, i8 %retval.0, i8 0, !dbg !3506
  br label %cleanup, !dbg !3506, !llvm.loop !3507

if.else:                                          ; preds = %while.body
  %call21 = tail call fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %5) #8, !dbg !3509
  %tobool22 = icmp eq i8 %call21, 0, !dbg !3509
  br i1 %tobool22, label %lor.lhs.false, label %cleanup, !dbg !3511

lor.lhs.false:                                    ; preds = %if.else
  %call23 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(%union.gimple_statement_d* %5, %struct.ao_ref_s* %ref) #8, !dbg !3512
  %tobool25 = icmp eq i8 %call23, 0, !dbg !3512
  br i1 %tobool25, label %if.end28, label %cleanup, !dbg !3513

if.end28:                                         ; preds = %lor.lhs.false
  %call29 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %5) #8, !dbg !3514
  call void @llvm.dbg.value(metadata %union.tree_node* %call29, metadata !3475, metadata !DIExpression()), !dbg !3479
  br label %cleanup, !dbg !3508

cleanup:                                          ; preds = %if.then8, %lor.lhs.false, %if.else, %if.end16, %if.end28
  %vuse.addr.1 = phi %union.tree_node* [ %call29, %if.end28 ], [ %vuse.addr.0, %if.then8 ], [ %call17, %if.end16 ], [ %vuse.addr.0, %lor.lhs.false ], [ %vuse.addr.0, %if.else ]
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end28 ], [ 1, %if.then8 ], [ %., %if.end16 ], [ 1, %lor.lhs.false ], [ 1, %if.else ]
  %retval.1 = phi i8 [ %retval.0, %if.end28 ], [ 1, %if.then8 ], [ %retval.0., %if.end16 ], [ 0, %lor.lhs.false ], [ 0, %if.else ]
  call void @llvm.dbg.value(metadata %union.tree_node* %vuse.addr.1, metadata !3475, metadata !DIExpression()), !dbg !3479
  %switch = icmp eq i32 %cleanup.dest.slot.0, 1
  br i1 %switch, label %return, label %while.cond

return:                                           ; preds = %while.cond, %cleanup
  %retval.2 = phi i8 [ %retval.1, %cleanup ], [ 1, %while.cond ], !dbg !3479
  ret i8 %retval.2, !dbg !3515
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3516 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3518, metadata !DIExpression()), !dbg !3519
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !3520
  %tobool = icmp eq i8 %call, 0, !dbg !3520
  br i1 %tobool, label %return, label %if.end, !dbg !3522

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !3523
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !3523
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3523
  br label %return, !dbg !3524

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3519
  ret %union.tree_node* %retval.0, !dbg !3525
}

; Function Attrs: nounwind uwtable
define dso_local i8* @walk_non_aliased_vuses(%struct.ao_ref_s* %ref, %union.tree_node* %vuse, i8* (%struct.ao_ref_s*, %union.tree_node*, i8*)* %walker, i8* (%struct.ao_ref_s*, %union.tree_node*, i8*)* %translate, i8* %data) local_unnamed_addr #4 !dbg !3526 {
entry:
  %visited = alloca %struct.bitmap_head_def*, align 8
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !3533, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata %union.tree_node* %vuse, metadata !3534, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8* (%struct.ao_ref_s*, %union.tree_node*, i8*)* %walker, metadata !3535, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8* (%struct.ao_ref_s*, %union.tree_node*, i8*)* %translate, metadata !3536, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8* %data, metadata !3537, metadata !DIExpression()), !dbg !3542
  %0 = bitcast %struct.bitmap_head_def** %visited to i8*, !dbg !3543
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3543
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3538, metadata !DIExpression()), !dbg !3542
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %visited, align 8, !dbg !3544
  %1 = load i8, i8* @timevar_enable, align 1, !dbg !3545
  %tobool = icmp eq i8 %1, 0, !dbg !3545
  br i1 %tobool, label %do.end, label %if.then, !dbg !3548

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 39) #6, !dbg !3545
  br label %do.end, !dbg !3545

do.end:                                           ; preds = %entry, %if.then
  %tobool16 = icmp eq i8* (%struct.ao_ref_s*, %union.tree_node*, i8*)* %translate, null, !dbg !3549
  br i1 %tobool16, label %do.end.split.us, label %do.end.do.end.split_crit_edge, !dbg !3556

do.end.do.end.split_crit_edge:                    ; preds = %do.end
  br label %do.body1, !dbg !3556

do.end.split.us:                                  ; preds = %do.end
  br label %do.body1.us, !dbg !3556

do.body1.us:                                      ; preds = %cleanup.us, %do.end.split.us
  %vuse.addr.0.us = phi %union.tree_node* [ %vuse, %do.end.split.us ], [ %vuse.addr.2.us, %cleanup.us ]
  call void @llvm.dbg.value(metadata %union.tree_node* %vuse.addr.0.us, metadata !3534, metadata !DIExpression()), !dbg !3542
  %call.us = call i8* %walker(%struct.ao_ref_s* %ref, %union.tree_node* %vuse.addr.0.us, i8* %data) #6, !dbg !3557
  call void @llvm.dbg.value(metadata i8* %call.us, metadata !3539, metadata !DIExpression()), !dbg !3542
  %tobool2.us = icmp eq i8* %call.us, null, !dbg !3558
  br i1 %tobool2.us, label %if.end4.us, label %cleanup.us, !dbg !3560

if.end4.us:                                       ; preds = %do.body1.us
  %def_stmt5.us = getelementptr inbounds %union.tree_node, %union.tree_node* %vuse.addr.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3561
  %2 = bitcast %union.tree_node** %def_stmt5.us to %union.gimple_statement_d**, !dbg !3561
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %2, align 8, !dbg !3561
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %3, metadata !3540, metadata !DIExpression()), !dbg !3562
  %call6.us = call fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %3) #8, !dbg !3563
  %tobool7.us = icmp eq i8 %call6.us, 0, !dbg !3563
  br i1 %tobool7.us, label %if.else.us, label %cleanup.us, !dbg !3564

if.else.us:                                       ; preds = %if.end4.us
  %call9.us = call fastcc i32 @gimple_code(%union.gimple_statement_d* %3) #8, !dbg !3565
  %cmp.us = icmp eq i32 %call9.us, 16, !dbg !3566
  br i1 %cmp.us, label %if.then10.us, label %if.else12.us, !dbg !3567

if.else12.us:                                     ; preds = %if.else.us
  %call13.us = call zeroext i8 @stmt_may_clobber_ref_p_1(%union.gimple_statement_d* %3, %struct.ao_ref_s* %ref) #8, !dbg !3568
  %tobool14.us = icmp eq i8 %call13.us, 0, !dbg !3568
  br i1 %tobool14.us, label %if.end27.us, label %if.then15.us, !dbg !3569

if.then15.us:                                     ; preds = %if.else12.us
  br label %cleanup.us, !dbg !3570

if.end27.us:                                      ; preds = %if.else12.us
  call void @llvm.dbg.value(metadata i8* %call.us, metadata !3539, metadata !DIExpression()), !dbg !3542
  %call28.us = call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %3) #8, !dbg !3571
  call void @llvm.dbg.value(metadata %union.tree_node* %call28.us, metadata !3534, metadata !DIExpression()), !dbg !3542
  br label %cleanup.us

if.then10.us:                                     ; preds = %if.else.us
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %visited, metadata !3538, metadata !DIExpression(DW_OP_deref)), !dbg !3542
  %call11.us = call %union.tree_node* @get_continuation_for_phi(%union.gimple_statement_d* %3, %struct.ao_ref_s* %ref, %struct.bitmap_head_def** nonnull %visited) #8, !dbg !3572
  call void @llvm.dbg.value(metadata %union.tree_node* %call11.us, metadata !3534, metadata !DIExpression()), !dbg !3542
  br label %cleanup.us, !dbg !3573

cleanup.us:                                       ; preds = %if.then15.us, %if.then10.us, %if.end27.us, %if.end4.us, %do.body1.us
  %vuse.addr.2.us = phi %union.tree_node* [ %vuse.addr.0.us, %do.body1.us ], [ %vuse.addr.0.us, %if.end4.us ], [ %vuse.addr.0.us, %if.then15.us ], [ %call11.us, %if.then10.us ], [ %call28.us, %if.end27.us ]
  %cleanup.dest.slot.0.us = phi i1 [ false, %do.body1.us ], [ false, %if.end4.us ], [ false, %if.then15.us ], [ true, %if.then10.us ], [ true, %if.end27.us ]
  call void @llvm.dbg.value(metadata %union.tree_node* %vuse.addr.2.us, metadata !3534, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8* %call.us, metadata !3539, metadata !DIExpression()), !dbg !3542
  %tobool32.us = icmp ne %union.tree_node* %vuse.addr.2.us, null, !dbg !3574
  %or.cond.us = and i1 %cleanup.dest.slot.0.us, %tobool32.us
  br i1 %or.cond.us, label %do.body1.us, label %do.end33.us-lcssa.us, !llvm.loop !3575

do.end33.us-lcssa.us:                             ; preds = %cleanup.us
  %call.us.lcssa = phi i8* [ %call.us, %cleanup.us ], !dbg !3557
  br label %do.end33, !dbg !3577

do.body1:                                         ; preds = %cleanup, %do.end.do.end.split_crit_edge
  %vuse.addr.0 = phi %union.tree_node* [ %vuse, %do.end.do.end.split_crit_edge ], [ %vuse.addr.2, %cleanup ]
  call void @llvm.dbg.value(metadata %union.tree_node* %vuse.addr.0, metadata !3534, metadata !DIExpression()), !dbg !3542
  %call = call i8* %walker(%struct.ao_ref_s* %ref, %union.tree_node* %vuse.addr.0, i8* %data) #6, !dbg !3557
  call void @llvm.dbg.value(metadata i8* %call, metadata !3539, metadata !DIExpression()), !dbg !3542
  %tobool2 = icmp eq i8* %call, null, !dbg !3558
  br i1 %tobool2, label %if.end4, label %cleanup, !dbg !3560

if.end4:                                          ; preds = %do.body1
  %def_stmt5 = getelementptr inbounds %union.tree_node, %union.tree_node* %vuse.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3561
  %4 = bitcast %union.tree_node** %def_stmt5 to %union.gimple_statement_d**, !dbg !3561
  %5 = load %union.gimple_statement_d*, %union.gimple_statement_d** %4, align 8, !dbg !3561
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %5, metadata !3540, metadata !DIExpression()), !dbg !3562
  %call6 = call fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %5) #8, !dbg !3563
  %tobool7 = icmp eq i8 %call6, 0, !dbg !3563
  br i1 %tobool7, label %if.else, label %cleanup, !dbg !3564

if.else:                                          ; preds = %if.end4
  %call9 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %5) #8, !dbg !3565
  %cmp = icmp eq i32 %call9, 16, !dbg !3566
  br i1 %cmp, label %if.then10, label %if.else12, !dbg !3567

if.then10:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %visited, metadata !3538, metadata !DIExpression(DW_OP_deref)), !dbg !3542
  %call11 = call %union.tree_node* @get_continuation_for_phi(%union.gimple_statement_d* %5, %struct.ao_ref_s* %ref, %struct.bitmap_head_def** nonnull %visited) #8, !dbg !3572
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !3534, metadata !DIExpression()), !dbg !3542
  br label %cleanup, !dbg !3573

if.else12:                                        ; preds = %if.else
  %call13 = call zeroext i8 @stmt_may_clobber_ref_p_1(%union.gimple_statement_d* %5, %struct.ao_ref_s* %ref) #8, !dbg !3568
  %tobool14 = icmp eq i8 %call13, 0, !dbg !3568
  br i1 %tobool14, label %if.end27, label %if.then15, !dbg !3569

if.then15:                                        ; preds = %if.else12
  %call19 = call i8* %translate(%struct.ao_ref_s* %ref, %union.tree_node* %vuse.addr.0, i8* %data) #6, !dbg !3579
  call void @llvm.dbg.value(metadata i8* %call19, metadata !3539, metadata !DIExpression()), !dbg !3542
  %magicptr = ptrtoint i8* %call19 to i64, !dbg !3580
  switch i64 %magicptr, label %if.then24 [
    i64 -1, label %cleanup
    i64 0, label %if.end27
  ], !dbg !3580

if.then24:                                        ; preds = %if.then15
  br label %cleanup, !dbg !3581

if.end27:                                         ; preds = %if.else12, %if.then15
  %res.0 = phi i8* [ null, %if.else12 ], [ %call19, %if.then15 ], !dbg !3562
  call void @llvm.dbg.value(metadata i8* %res.0, metadata !3539, metadata !DIExpression()), !dbg !3542
  %call28 = call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %5) #8, !dbg !3571
  call void @llvm.dbg.value(metadata %union.tree_node* %call28, metadata !3534, metadata !DIExpression()), !dbg !3542
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.body1, %if.end27, %if.then10, %if.then15, %if.then24
  %res.2 = phi i8* [ %call19, %if.then24 ], [ %call, %do.body1 ], [ null, %if.end4 ], [ null, %if.then15 ], [ null, %if.then10 ], [ %res.0, %if.end27 ], !dbg !3562
  %vuse.addr.2 = phi %union.tree_node* [ %vuse.addr.0, %if.then24 ], [ %vuse.addr.0, %do.body1 ], [ %vuse.addr.0, %if.end4 ], [ %vuse.addr.0, %if.then15 ], [ %call11, %if.then10 ], [ %call28, %if.end27 ]
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then24 ], [ false, %do.body1 ], [ false, %if.end4 ], [ false, %if.then15 ], [ true, %if.then10 ], [ true, %if.end27 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %vuse.addr.2, metadata !3534, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8* %res.2, metadata !3539, metadata !DIExpression()), !dbg !3542
  %tobool32 = icmp ne %union.tree_node* %vuse.addr.2, null, !dbg !3574
  %or.cond = and i1 %cleanup.dest.slot.0, %tobool32
  br i1 %or.cond, label %do.body1, label %do.end33.us-lcssa, !llvm.loop !3575

do.end33.us-lcssa:                                ; preds = %cleanup
  %res.2.lcssa2 = phi i8* [ %res.2, %cleanup ], !dbg !3562
  call void @llvm.dbg.value(metadata i8* %res.2.lcssa2, metadata !3539, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8* %res.2.lcssa2, metadata !3539, metadata !DIExpression()), !dbg !3542
  br label %do.end33, !dbg !3577

do.end33:                                         ; preds = %do.end33.us-lcssa.us, %do.end33.us-lcssa
  %res.2.lcssa = phi i8* [ %res.2.lcssa2, %do.end33.us-lcssa ], [ %call.us.lcssa, %do.end33.us-lcssa.us ], !dbg !3562
  call void @llvm.dbg.value(metadata i8* %res.2.lcssa, metadata !3539, metadata !DIExpression()), !dbg !3542
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !3577
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %6, metadata !3538, metadata !DIExpression()), !dbg !3542
  %tobool34 = icmp eq %struct.bitmap_head_def* %6, null, !dbg !3577
  br i1 %tobool34, label %do.body37, label %if.then35, !dbg !3584

if.then35:                                        ; preds = %do.end33
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %6, metadata !3538, metadata !DIExpression()), !dbg !3542
  call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %6) #6, !dbg !3585
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3538, metadata !DIExpression()), !dbg !3542
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %visited, align 8, !dbg !3585
  br label %do.body37, !dbg !3585

do.body37:                                        ; preds = %do.end33, %if.then35
  %7 = load i8, i8* @timevar_enable, align 1, !dbg !3586
  %tobool38 = icmp eq i8 %7, 0, !dbg !3586
  br i1 %tobool38, label %do.end42, label %if.then39, !dbg !3589

if.then39:                                        ; preds = %do.body37
  call void @timevar_pop_1(i32 39) #6, !dbg !3586
  br label %do.end42, !dbg !3586

do.end42:                                         ; preds = %do.body37, %if.then39
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3590
  ret i8* %res.2.lcssa, !dbg !3591
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #1

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @walk_aliased_vdefs(%struct.ao_ref_s* %ref, %union.tree_node* %vdef, i8 (%struct.ao_ref_s*, %union.tree_node*, i8*)* %walker, i8* %data, %struct.bitmap_head_def** %visited) local_unnamed_addr #4 !dbg !3592 {
entry:
  %local_visited = alloca %struct.bitmap_head_def*, align 8
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !3599, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata %union.tree_node* %vdef, metadata !3600, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i8 (%struct.ao_ref_s*, %union.tree_node*, i8*)* %walker, metadata !3601, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i8* %data, metadata !3602, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %visited, metadata !3603, metadata !DIExpression()), !dbg !3606
  %0 = bitcast %struct.bitmap_head_def** %local_visited to i8*, !dbg !3607
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3607
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3604, metadata !DIExpression()), !dbg !3606
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %local_visited, align 8, !dbg !3608
  %1 = load i8, i8* @timevar_enable, align 1, !dbg !3609
  %tobool = icmp eq i8 %1, 0, !dbg !3609
  br i1 %tobool, label %do.end, label %if.then, !dbg !3612

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 39) #6, !dbg !3609
  br label %do.end, !dbg !3609

do.end:                                           ; preds = %entry, %if.then
  %tobool1 = icmp eq %struct.bitmap_head_def** %visited, null, !dbg !3613
  %visited.local_visited = select i1 %tobool1, %struct.bitmap_head_def** %local_visited, %struct.bitmap_head_def** %visited, !dbg !3613
  %call = call fastcc i32 @walk_aliased_vdefs_1(%struct.ao_ref_s* %ref, %union.tree_node* %vdef, i8 (%struct.ao_ref_s*, %union.tree_node*, i8*)* %walker, i8* %data, %struct.bitmap_head_def** %visited.local_visited, i32 0) #8, !dbg !3614
  call void @llvm.dbg.value(metadata i32 %call, metadata !3605, metadata !DIExpression()), !dbg !3606
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_visited, align 8, !dbg !3615
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %2, metadata !3604, metadata !DIExpression()), !dbg !3606
  %tobool2 = icmp eq %struct.bitmap_head_def* %2, null, !dbg !3615
  br i1 %tobool2, label %do.body5, label %if.then3, !dbg !3617

if.then3:                                         ; preds = %do.end
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %2, metadata !3604, metadata !DIExpression()), !dbg !3606
  call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %2) #6, !dbg !3618
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3604, metadata !DIExpression()), !dbg !3606
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %local_visited, align 8, !dbg !3618
  br label %do.body5, !dbg !3618

do.body5:                                         ; preds = %do.end, %if.then3
  %3 = load i8, i8* @timevar_enable, align 1, !dbg !3619
  %tobool6 = icmp eq i8 %3, 0, !dbg !3619
  br i1 %tobool6, label %do.end10, label %if.then7, !dbg !3622

if.then7:                                         ; preds = %do.body5
  call void @timevar_pop_1(i32 39) #6, !dbg !3619
  br label %do.end10, !dbg !3619

do.end10:                                         ; preds = %do.body5, %if.then7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3623
  ret i32 %call, !dbg !3624
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @walk_aliased_vdefs_1(%struct.ao_ref_s* %ref, %union.tree_node* %vdef, i8 (%struct.ao_ref_s*, %union.tree_node*, i8*)* %walker, i8* %data, %struct.bitmap_head_def** %visited, i32 %cnt) unnamed_addr #4 !dbg !3625 {
entry:
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !3629, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata %union.tree_node* %vdef, metadata !3630, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i8 (%struct.ao_ref_s*, %union.tree_node*, i8*)* %walker, metadata !3631, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i8* %data, metadata !3632, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %visited, metadata !3633, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 0, metadata !3634, metadata !DIExpression()), !dbg !3641
  %tobool20 = icmp eq %struct.ao_ref_s* %ref, null, !dbg !3642
  br i1 %tobool20, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !3644

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %do.body, !dbg !3644

entry.split.us:                                   ; preds = %entry
  br label %do.body.us, !dbg !3644

do.body.us:                                       ; preds = %cleanup.us, %entry.split.us
  %cnt.addr.0.us = phi i32 [ 0, %entry.split.us ], [ %cnt.addr.2.us, %cleanup.us ]
  %vdef.addr.0.us = phi %union.tree_node* [ %vdef, %entry.split.us ], [ %vdef.addr.1.us, %cleanup.us ]
  %retval.0.us = phi i32 [ undef, %entry.split.us ], [ %retval.1.us, %cleanup.us ]
  call void @llvm.dbg.value(metadata %union.tree_node* %vdef.addr.0.us, metadata !3630, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %cnt.addr.0.us, metadata !3634, metadata !DIExpression()), !dbg !3641
  %def_stmt1.us = getelementptr inbounds %union.tree_node, %union.tree_node* %vdef.addr.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3645
  %0 = bitcast %union.tree_node** %def_stmt1.us to %union.gimple_statement_d**, !dbg !3645
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %0, align 8, !dbg !3645
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !3635, metadata !DIExpression()), !dbg !3646
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !3647
  %tobool.us = icmp eq %struct.bitmap_head_def* %2, null, !dbg !3647
  br i1 %tobool.us, label %if.end.us, label %land.lhs.true.us, !dbg !3649

land.lhs.true.us:                                 ; preds = %do.body.us
  %version.us = getelementptr inbounds %union.tree_node, %union.tree_node* %vdef.addr.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3650
  %3 = bitcast %union.tree_node** %version.us to i32*, !dbg !3650
  %4 = load i32, i32* %3, align 8, !dbg !3650
  %call.us = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull %2, i32 %4) #6, !dbg !3651
  %tobool3.us = icmp eq i8 %call.us, 0, !dbg !3651
  br i1 %tobool3.us, label %cleanup.us, label %if.end.us, !dbg !3652

if.end.us:                                        ; preds = %land.lhs.true.us, %do.body.us
  %call4.us = tail call fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %1) #8, !dbg !3653
  %tobool5.us = icmp eq i8 %call4.us, 0, !dbg !3653
  br i1 %tobool5.us, label %if.else.us, label %cleanup.us, !dbg !3654

if.else.us:                                       ; preds = %if.end.us
  %call7.us = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %1) #8, !dbg !3655
  %cmp.us = icmp eq i32 %call7.us, 16, !dbg !3656
  br i1 %cmp.us, label %if.then8.us, label %if.end18.us, !dbg !3657

if.end18.us:                                      ; preds = %if.else.us
  %inc19.us = add i32 %cnt.addr.0.us, 1, !dbg !3658
  call void @llvm.dbg.value(metadata i32 %inc19.us, metadata !3634, metadata !DIExpression()), !dbg !3641
  %call25.us = tail call zeroext i8 %walker(%struct.ao_ref_s* null, %union.tree_node* %vdef.addr.0.us, i8* %data) #6, !dbg !3659
  %tobool27.us = icmp eq i8 %call25.us, 0, !dbg !3659
  br i1 %tobool27.us, label %if.end29.us, label %cleanup.us, !dbg !3660

if.end29.us:                                      ; preds = %if.end18.us
  %call30.us = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %1) #8, !dbg !3661
  call void @llvm.dbg.value(metadata %union.tree_node* %call30.us, metadata !3630, metadata !DIExpression()), !dbg !3641
  br label %cleanup.us, !dbg !3662

if.then8.us:                                      ; preds = %if.else.us
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !3663
  %tobool9.us = icmp eq %struct.bitmap_head_def* %5, null, !dbg !3663
  br i1 %tobool9.us, label %if.then10.us, label %if.end12.us, !dbg !3665

if.then10.us:                                     ; preds = %if.then8.us
  %call11.us = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3666
  store %struct.bitmap_head_def* %call11.us, %struct.bitmap_head_def** %visited, align 8, !dbg !3667
  br label %if.end12.us, !dbg !3668

if.end12.us:                                      ; preds = %if.then10.us, %if.then8.us
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3669
  br label %for.cond.us, !dbg !3670

for.cond.us:                                      ; preds = %for.body.us, %if.end12.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.us ], [ 0, %if.end12.us ]
  %cnt.addr.1.us = phi i32 [ %add.us, %for.body.us ], [ %cnt.addr.0.us, %if.end12.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3637, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i32 %cnt.addr.1.us, metadata !3634, metadata !DIExpression()), !dbg !3641
  %call13.us = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %1) #8, !dbg !3672
  %6 = zext i32 %call13.us to i64, !dbg !3674
  %cmp14.us = icmp ult i64 %indvars.iv, %6, !dbg !3674
  br i1 %cmp14.us, label %for.body.us, label %cleanup.loopexit.us, !dbg !3675

cleanup.us:                                       ; preds = %cleanup.loopexit.us, %if.end29.us, %if.end18.us, %if.end.us, %land.lhs.true.us
  %cnt.addr.2.us = phi i32 [ %inc19.us, %if.end29.us ], [ %cnt.addr.0.us, %land.lhs.true.us ], [ %cnt.addr.0.us, %if.end.us ], [ %inc19.us, %if.end18.us ], [ %cnt.addr.1.us.lcssa, %cleanup.loopexit.us ]
  %cleanup.dest.slot.0.us = phi i1 [ true, %if.end29.us ], [ false, %land.lhs.true.us ], [ false, %if.end.us ], [ false, %if.end18.us ], [ false, %cleanup.loopexit.us ]
  %vdef.addr.1.us = phi %union.tree_node* [ %call30.us, %if.end29.us ], [ %vdef.addr.0.us, %land.lhs.true.us ], [ %vdef.addr.0.us, %if.end.us ], [ %vdef.addr.0.us, %if.end18.us ], [ %vdef.addr.0.us, %cleanup.loopexit.us ]
  %retval.1.us = phi i32 [ %retval.0.us, %if.end29.us ], [ %cnt.addr.0.us, %land.lhs.true.us ], [ %cnt.addr.0.us, %if.end.us ], [ %inc19.us, %if.end18.us ], [ %cnt.addr.1.us.lcssa, %cleanup.loopexit.us ]
  call void @llvm.dbg.value(metadata %union.tree_node* %vdef.addr.1.us, metadata !3630, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %cnt.addr.2.us, metadata !3634, metadata !DIExpression()), !dbg !3641
  br i1 %cleanup.dest.slot.0.us, label %do.body.us, label %do.end.us-lcssa.us

for.body.us:                                      ; preds = %for.cond.us
  %call15.us = tail call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %1, i64 %indvars.iv) #8, !dbg !3676
  %call16.us = tail call fastcc i32 @walk_aliased_vdefs_1(%struct.ao_ref_s* null, %union.tree_node* %call15.us, i8 (%struct.ao_ref_s*, %union.tree_node*, i8*)* %walker, i8* %data, %struct.bitmap_head_def** %visited, i32 0) #8, !dbg !3677
  %add.us = add i32 %cnt.addr.1.us, %call16.us, !dbg !3678
  call void @llvm.dbg.value(metadata i32 %add.us, metadata !3634, metadata !DIExpression()), !dbg !3641
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3679
  br label %for.cond.us, !dbg !3680, !llvm.loop !3681

cleanup.loopexit.us:                              ; preds = %for.cond.us
  %cnt.addr.1.us.lcssa = phi i32 [ %cnt.addr.1.us, %for.cond.us ]
  call void @llvm.dbg.value(metadata i32 %cnt.addr.1.us.lcssa, metadata !3634, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %cnt.addr.1.us.lcssa, metadata !3634, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %cnt.addr.1.us.lcssa, metadata !3634, metadata !DIExpression()), !dbg !3641
  br label %cleanup.us

do.end.us-lcssa.us:                               ; preds = %cleanup.us
  %retval.1.us.lcssa = phi i32 [ %retval.1.us, %cleanup.us ]
  br label %do.end, !dbg !3683

do.body:                                          ; preds = %cleanup, %entry.entry.split_crit_edge
  %cnt.addr.0 = phi i32 [ 0, %entry.entry.split_crit_edge ], [ %cnt.addr.2, %cleanup ]
  %vdef.addr.0 = phi %union.tree_node* [ %vdef, %entry.entry.split_crit_edge ], [ %vdef.addr.1, %cleanup ]
  %retval.0 = phi i32 [ undef, %entry.entry.split_crit_edge ], [ %retval.1, %cleanup ]
  call void @llvm.dbg.value(metadata %union.tree_node* %vdef.addr.0, metadata !3630, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %cnt.addr.0, metadata !3634, metadata !DIExpression()), !dbg !3641
  %def_stmt1 = getelementptr inbounds %union.tree_node, %union.tree_node* %vdef.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3645
  %7 = bitcast %union.tree_node** %def_stmt1 to %union.gimple_statement_d**, !dbg !3645
  %8 = load %union.gimple_statement_d*, %union.gimple_statement_d** %7, align 8, !dbg !3645
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %8, metadata !3635, metadata !DIExpression()), !dbg !3646
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !3647
  %tobool = icmp eq %struct.bitmap_head_def* %9, null, !dbg !3647
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3649

land.lhs.true:                                    ; preds = %do.body
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %vdef.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3650
  %10 = bitcast %union.tree_node** %version to i32*, !dbg !3650
  %11 = load i32, i32* %10, align 8, !dbg !3650
  %call = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull %9, i32 %11) #6, !dbg !3651
  %tobool3 = icmp eq i8 %call, 0, !dbg !3651
  br i1 %tobool3, label %cleanup, label %if.end, !dbg !3652

if.end:                                           ; preds = %land.lhs.true, %do.body
  %call4 = tail call fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %8) #8, !dbg !3653
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3653
  br i1 %tobool5, label %if.else, label %cleanup, !dbg !3654

if.else:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %8) #8, !dbg !3655
  %cmp = icmp eq i32 %call7, 16, !dbg !3656
  br i1 %cmp, label %if.then8, label %if.end18, !dbg !3657

if.then8:                                         ; preds = %if.else
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !3663
  %tobool9 = icmp eq %struct.bitmap_head_def* %12, null, !dbg !3663
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !3665

if.then10:                                        ; preds = %if.then8
  %call11 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3666
  store %struct.bitmap_head_def* %call11, %struct.bitmap_head_def** %visited, align 8, !dbg !3667
  br label %if.end12, !dbg !3668

if.end12:                                         ; preds = %if.then8, %if.then10
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3669
  br label %for.cond, !dbg !3670

for.cond:                                         ; preds = %for.body, %if.end12
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.body ], [ 0, %if.end12 ]
  %cnt.addr.1 = phi i32 [ %add, %for.body ], [ %cnt.addr.0, %if.end12 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !3637, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i32 %cnt.addr.1, metadata !3634, metadata !DIExpression()), !dbg !3641
  %call13 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %8) #8, !dbg !3672
  %13 = zext i32 %call13 to i64, !dbg !3674
  %cmp14 = icmp ult i64 %indvars.iv2, %13, !dbg !3674
  br i1 %cmp14, label %for.body, label %cleanup.loopexit, !dbg !3675

for.body:                                         ; preds = %for.cond
  %call15 = tail call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %8, i64 %indvars.iv2) #8, !dbg !3676
  %call16 = tail call fastcc i32 @walk_aliased_vdefs_1(%struct.ao_ref_s* nonnull %ref, %union.tree_node* %call15, i8 (%struct.ao_ref_s*, %union.tree_node*, i8*)* %walker, i8* %data, %struct.bitmap_head_def** %visited, i32 0) #8, !dbg !3677
  %add = add i32 %cnt.addr.1, %call16, !dbg !3678
  call void @llvm.dbg.value(metadata i32 %add, metadata !3634, metadata !DIExpression()), !dbg !3641
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !3679
  br label %for.cond, !dbg !3680, !llvm.loop !3681

if.end18:                                         ; preds = %if.else
  %inc19 = add i32 %cnt.addr.0, 1, !dbg !3658
  call void @llvm.dbg.value(metadata i32 %inc19, metadata !3634, metadata !DIExpression()), !dbg !3641
  %call21 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(%union.gimple_statement_d* %8, %struct.ao_ref_s* nonnull %ref) #8, !dbg !3684
  %tobool23 = icmp eq i8 %call21, 0, !dbg !3684
  br i1 %tobool23, label %if.end29, label %land.lhs.true24, !dbg !3685

land.lhs.true24:                                  ; preds = %if.end18
  %call25 = tail call zeroext i8 %walker(%struct.ao_ref_s* nonnull %ref, %union.tree_node* %vdef.addr.0, i8* %data) #6, !dbg !3659
  %tobool27 = icmp eq i8 %call25, 0, !dbg !3659
  br i1 %tobool27, label %if.end29, label %cleanup, !dbg !3660

if.end29:                                         ; preds = %if.end18, %land.lhs.true24
  %call30 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %8) #8, !dbg !3661
  call void @llvm.dbg.value(metadata %union.tree_node* %call30, metadata !3630, metadata !DIExpression()), !dbg !3641
  br label %cleanup, !dbg !3662

cleanup.loopexit:                                 ; preds = %for.cond
  %cnt.addr.1.lcssa = phi i32 [ %cnt.addr.1, %for.cond ]
  call void @llvm.dbg.value(metadata i32 %cnt.addr.1.lcssa, metadata !3634, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %cnt.addr.1.lcssa, metadata !3634, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %cnt.addr.1.lcssa, metadata !3634, metadata !DIExpression()), !dbg !3641
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %land.lhs.true, %land.lhs.true24, %if.end, %if.end29
  %cnt.addr.2 = phi i32 [ %inc19, %if.end29 ], [ %cnt.addr.0, %land.lhs.true ], [ %cnt.addr.0, %if.end ], [ %inc19, %land.lhs.true24 ], [ %cnt.addr.1.lcssa, %cleanup.loopexit ]
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end29 ], [ false, %land.lhs.true ], [ false, %if.end ], [ false, %land.lhs.true24 ], [ false, %cleanup.loopexit ]
  %vdef.addr.1 = phi %union.tree_node* [ %call30, %if.end29 ], [ %vdef.addr.0, %land.lhs.true ], [ %vdef.addr.0, %if.end ], [ %vdef.addr.0, %land.lhs.true24 ], [ %vdef.addr.0, %cleanup.loopexit ]
  %retval.1 = phi i32 [ %retval.0, %if.end29 ], [ %cnt.addr.0, %land.lhs.true ], [ %cnt.addr.0, %if.end ], [ %inc19, %land.lhs.true24 ], [ %cnt.addr.1.lcssa, %cleanup.loopexit ]
  call void @llvm.dbg.value(metadata %union.tree_node* %vdef.addr.1, metadata !3630, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %cnt.addr.2, metadata !3634, metadata !DIExpression()), !dbg !3641
  br i1 %cleanup.dest.slot.0, label %do.body, label %do.end.us-lcssa

do.end.us-lcssa:                                  ; preds = %cleanup
  %retval.1.lcssa4 = phi i32 [ %retval.1, %cleanup ]
  br label %do.end, !dbg !3683

do.end:                                           ; preds = %do.end.us-lcssa.us, %do.end.us-lcssa
  %retval.1.lcssa = phi i32 [ %retval.1.lcssa4, %do.end.us-lcssa ], [ %retval.1.us.lcssa, %do.end.us-lcssa.us ]
  ret i32 %retval.1.lcssa, !dbg !3683
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @first_htab_element(%struct.htab_iterator* %hti, %struct.htab* %table) unnamed_addr #0 !dbg !3686 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !3691, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata %struct.htab* %table, metadata !3692, metadata !DIExpression()), !dbg !3695
  %htab = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 0, !dbg !3696
  store %struct.htab* %table, %struct.htab** %htab, align 8, !dbg !3697
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %table, i64 0, i32 3, !dbg !3698
  %0 = bitcast i8*** %entries to i64*, !dbg !3698
  %1 = load i64, i64* %0, align 8, !dbg !3698
  %slot = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !3699
  %2 = bitcast i8*** %slot to i64*, !dbg !3700
  store i64 %1, i64* %2, align 8, !dbg !3700
  %.cast = inttoptr i64 %1 to i8**, !dbg !3701
  %call = tail call i64 @htab_size(%struct.htab* %table) #6, !dbg !3702
  %add.ptr = getelementptr inbounds i8*, i8** %.cast, i64 %call, !dbg !3703
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !3704
  store i8** %add.ptr, i8*** %limit, align 8, !dbg !3705
  %.pre3 = load i8**, i8*** %slot, align 8, !dbg !3706
  br label %do.body, !dbg !3707

do.body:                                          ; preds = %do.cond, %entry
  %3 = phi i8** [ %incdec.ptr, %do.cond ], [ %.pre3, %entry ]
  %indvars2 = bitcast i8** %3 to i64*, !dbg !3706
  %4 = load i64, i64* %indvars2, align 8, !dbg !3708
  %switch1 = icmp ult i64 %4, 2, !dbg !3709
  br i1 %switch1, label %do.cond, label %do.end

do.cond:                                          ; preds = %do.body
  %incdec.ptr = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !3711
  store i8** %incdec.ptr, i8*** %slot, align 8, !dbg !3711
  %cmp6 = icmp ult i8** %incdec.ptr, %add.ptr, !dbg !3712
  br i1 %cmp6, label %do.body, label %do.end, !dbg !3713, !llvm.loop !3714

do.end:                                           ; preds = %do.body, %do.cond
  %5 = phi i8** [ %3, %do.body ], [ %incdec.ptr, %do.cond ]
  %6 = phi i8** [ %3, %do.body ], [ %incdec.ptr, %do.cond ], !dbg !3716
  %cmp9 = icmp ult i8** %6, %add.ptr, !dbg !3718
  br i1 %cmp9, label %if.then10, label %return, !dbg !3719

if.then10:                                        ; preds = %do.end
  %7 = load i8*, i8** %5, align 8, !dbg !3720
  br label %return, !dbg !3721

return:                                           ; preds = %do.end, %if.then10
  %retval.0 = phi i8* [ %7, %if.then10 ], [ null, %do.end ], !dbg !3695
  ret i8* %retval.0, !dbg !3722
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %fun) unnamed_addr #0 !dbg !3723 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3727, metadata !DIExpression()), !dbg !3728
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !3729
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3729
  %tobool = icmp eq %struct.gimple_df* %0, null, !dbg !3731
  br i1 %tobool, label %return, label %if.end, !dbg !3732

if.end:                                           ; preds = %entry
  %referenced_vars = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %0, i64 0, i32 0, !dbg !3733
  %1 = load %struct.htab*, %struct.htab** %referenced_vars, align 8, !dbg !3733
  br label %return, !dbg !3734

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.htab* [ %1, %if.end ], [ null, %entry ], !dbg !3728
  ret %struct.htab* %retval.0, !dbg !3735
}

declare dso_local i64 @htab_size(%struct.htab*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_htab_p(%struct.htab_iterator* %hti) unnamed_addr #0 !dbg !3736 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !3742, metadata !DIExpression()), !dbg !3743
  %slot = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !3744
  %0 = load i8**, i8*** %slot, align 8, !dbg !3744
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !3746
  %1 = load i8**, i8*** %limit, align 8, !dbg !3746
  %cmp = icmp uge i8** %0, %1, !dbg !3747
  %. = zext i1 %cmp to i8, !dbg !3743
  ret i8 %., !dbg !3748
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @next_htab_element(%struct.htab_iterator* %hti) unnamed_addr #0 !dbg !3749 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !3753, metadata !DIExpression()), !dbg !3756
  %slot1 = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !3757
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !3756
  %.pre = load i8**, i8*** %slot1, align 8, !dbg !3758
  %.pre3 = load i8**, i8*** %limit, align 8, !dbg !3759
  br label %while.cond, !dbg !3760

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi i8** [ %.pre, %entry ], [ %incdec.ptr, %while.body ], !dbg !3758
  %retval.0 = phi i8* [ undef, %entry ], [ %spec.select2, %while.body ]
  %incdec.ptr = getelementptr inbounds i8*, i8** %0, i64 1, !dbg !3758
  store i8** %incdec.ptr, i8*** %slot1, align 8, !dbg !3758
  %cmp = icmp ult i8** %incdec.ptr, %.pre3, !dbg !3761
  br i1 %cmp, label %while.body, label %return, !dbg !3760

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %incdec.ptr, align 8, !dbg !3762
  call void @llvm.dbg.value(metadata i8* %1, metadata !3754, metadata !DIExpression()), !dbg !3763
  %switch1 = icmp ult i8* %1, inttoptr (i64 2 to i8*), !dbg !3764
  %spec.select2 = select i1 %switch1, i8* %retval.0, i8* %1, !dbg !3764
  br i1 %switch1, label %while.cond, label %return, !llvm.loop !3766

return:                                           ; preds = %while.cond, %while.body
  %retval.2 = phi i8* [ %spec.select2, %while.body ], [ null, %while.cond ], !dbg !3756
  ret i8* %retval.2, !dbg !3768
}

declare dso_local i32 @operand_equal_p(%union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ranges_overlap_p(i64 %pos1, i64 %size1, i64 %pos2, i64 %size2) unnamed_addr #0 !dbg !3769 {
entry:
  call void @llvm.dbg.value(metadata i64 %pos1, metadata !3773, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i64 %size1, metadata !3774, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i64 %pos2, metadata !3775, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i64 %size2, metadata !3776, metadata !DIExpression()), !dbg !3777
  %cmp = icmp ult i64 %pos1, %pos2, !dbg !3778
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !3780

land.lhs.true:                                    ; preds = %entry
  %cmp1 = icmp eq i64 %size2, -1, !dbg !3781
  %add = add i64 %pos2, %size2, !dbg !3782
  %cmp2 = icmp ugt i64 %add, %pos1, !dbg !3783
  %or.cond = or i1 %cmp1, %cmp2, !dbg !3784
  br i1 %or.cond, label %return, label %if.end, !dbg !3784

if.end:                                           ; preds = %entry, %land.lhs.true
  %cmp3 = icmp ult i64 %pos2, %pos1, !dbg !3785
  br i1 %cmp3, label %if.end10, label %land.lhs.true4, !dbg !3787

land.lhs.true4:                                   ; preds = %if.end
  %cmp5 = icmp eq i64 %size1, -1, !dbg !3788
  %add7 = add i64 %pos1, %size1, !dbg !3789
  %cmp8 = icmp ugt i64 %add7, %pos2, !dbg !3790
  %or.cond1 = or i1 %cmp5, %cmp8, !dbg !3791
  br i1 %or.cond1, label %return, label %if.end10, !dbg !3791

if.end10:                                         ; preds = %if.end, %land.lhs.true4
  br label %return, !dbg !3792

return:                                           ; preds = %land.lhs.true4, %land.lhs.true, %if.end10
  %retval.0 = phi i8 [ 0, %if.end10 ], [ 1, %land.lhs.true ], [ 1, %land.lhs.true4 ], !dbg !3777
  ret i8 %retval.0, !dbg !3793
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3794 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3796, metadata !DIExpression()), !dbg !3798
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3799
  call void @llvm.dbg.value(metadata i32 %call, metadata !3797, metadata !DIExpression()), !dbg !3798
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3800

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3802
  %bf.load = load i32, i32* %0, align 8, !dbg !3802
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3802
  br label %cleanup, !dbg !3803

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3804
  br label %cleanup, !dbg !3806

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3798
  ret i32 %retval.0, !dbg !3807
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3808 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3812, metadata !DIExpression()), !dbg !3813
  %idxprom = sext i32 %code to i64, !dbg !3814
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3814
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3814
  %conv = zext i8 %0 to i32, !dbg !3815
  ret i32 %conv, !dbg !3816
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3817 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3821, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %i, metadata !3822, metadata !DIExpression()), !dbg !3823
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3824
  %tobool = icmp eq i8 %call, 0, !dbg !3824
  br i1 %tobool, label %return, label %if.then, !dbg !3826

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3827
  %idxprom = zext i32 %i to i64, !dbg !3827
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3827
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3827
  br label %return, !dbg !3829

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3830
  ret %union.tree_node* %retval.0, !dbg !3831
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3832 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3834, metadata !DIExpression()), !dbg !3835
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3836
  %cmp = icmp eq i32 %call, 0, !dbg !3837
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3838

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3839
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3840
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3841
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3842 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3846, metadata !DIExpression()), !dbg !3848
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !3849
  %idxprom = zext i32 %call to i64, !dbg !3850
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3850
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3850
  call void @llvm.dbg.value(metadata i64 %0, metadata !3847, metadata !DIExpression()), !dbg !3848
  %cmp = icmp eq i64 %0, 0, !dbg !3851
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3851

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3851
  br label %cond.end, !dbg !3851

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3852
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3853
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3854
  ret %union.tree_node** %2, !dbg !3855
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3856 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3860, metadata !DIExpression()), !dbg !3861
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3862
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !3863
  ret i32 %call1, !dbg !3864
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3865 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3869, metadata !DIExpression()), !dbg !3870
  %idxprom = zext i32 %code to i64, !dbg !3871
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3871
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3871
  ret i32 %0, !dbg !3872
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ptr_deref_may_alias_decl_p(%union.tree_node* %ptr, %union.tree_node* %decl) unnamed_addr #4 !dbg !3873 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr, metadata !3875, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3876, metadata !DIExpression()), !dbg !3881
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3882
  %bf.load = load i64, i64* %0, align 8, !dbg !3882
  %bf.cast6 = and i64 %bf.load, 65535, !dbg !3882
  %cmp = icmp eq i64 %bf.cast6, 141, !dbg !3882
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3882

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast6, 121, !dbg !3882
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false6, !dbg !3882

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i64 %bf.cast6, 23, !dbg !3882
  br i1 %cmp11, label %land.lhs.true, label %cond.true, !dbg !3882

land.lhs.true:                                    ; preds = %lor.lhs.false6, %lor.lhs.false, %entry
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3882
  %bf.load13 = load i64, i64* %1, align 8, !dbg !3882
  %bf.cast1522 = and i64 %bf.load13, 65535, !dbg !3882
  %cmp16 = icmp eq i64 %bf.cast1522, 32, !dbg !3882
  br i1 %cmp16, label %cond.end, label %lor.lhs.false17, !dbg !3882

lor.lhs.false17:                                  ; preds = %land.lhs.true
  %cmp22 = icmp eq i64 %bf.cast1522, 34, !dbg !3882
  br i1 %cmp22, label %cond.end, label %lor.lhs.false23, !dbg !3882

lor.lhs.false23:                                  ; preds = %lor.lhs.false17
  %cmp28 = icmp eq i64 %bf.cast1522, 36, !dbg !3882
  br i1 %cmp28, label %cond.end, label %cond.true, !dbg !3882

cond.true:                                        ; preds = %lor.lhs.false23, %lor.lhs.false6
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3882
  br label %cond.end, !dbg !3882

cond.end:                                         ; preds = %land.lhs.true, %lor.lhs.false17, %lor.lhs.false23, %cond.true
  %call = tail call fastcc zeroext i8 @may_be_aliased(%union.tree_node* %decl) #8, !dbg !3883
  %tobool = icmp eq i8 %call, 0, !dbg !3883
  br i1 %tobool, label %cleanup158, label %if.end, !dbg !3885

if.end:                                           ; preds = %cond.end
  %bf.load30 = load i64, i64* %0, align 8, !dbg !3886
  %bf.cast329 = and i64 %bf.load30, 65535, !dbg !3887
  %cmp33 = icmp eq i64 %bf.cast329, 121, !dbg !3887
  br i1 %cmp33, label %if.then34, label %if.end122, !dbg !3888

if.then34:                                        ; preds = %if.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3889
  %2 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3889
  %call36 = tail call %union.tree_node* @get_base_address(%union.tree_node* %2) #6, !dbg !3890
  call void @llvm.dbg.value(metadata %union.tree_node* %call36, metadata !3878, metadata !DIExpression()), !dbg !3891
  %cond4 = icmp eq %union.tree_node* %call36, null, !dbg !3892
  br i1 %cond4, label %if.else120, label %land.lhs.true38, !dbg !3892

land.lhs.true38:                                  ; preds = %if.then34
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call36, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3894
  %bf.load40 = load i64, i64* %3, align 8, !dbg !3894
  %bf.cast4212 = and i64 %bf.load40, 65535, !dbg !3894
  %cmp43 = icmp eq i64 %bf.cast4212, 47, !dbg !3894
  br i1 %cmp43, label %if.then56, label %lor.lhs.false44, !dbg !3894

lor.lhs.false44:                                  ; preds = %land.lhs.true38
  %cmp49 = icmp eq i64 %bf.cast4212, 48, !dbg !3894
  br i1 %cmp49, label %if.then56, label %lor.lhs.false50, !dbg !3894

lor.lhs.false50:                                  ; preds = %lor.lhs.false44
  %cmp55 = icmp eq i64 %bf.cast4212, 49, !dbg !3894
  br i1 %cmp55, label %if.then56, label %if.else, !dbg !3895

if.then56:                                        ; preds = %lor.lhs.false50, %lor.lhs.false44, %land.lhs.true38
  %operands58 = getelementptr inbounds %union.tree_node, %union.tree_node* %call36, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3896
  %4 = load %union.tree_node*, %union.tree_node** %operands58, align 8, !dbg !3896
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !3875, metadata !DIExpression()), !dbg !3881
  br label %cleanup, !dbg !3897

if.else:                                          ; preds = %lor.lhs.false50
  %cmp66 = icmp eq i64 %bf.cast4212, 32, !dbg !3898
  br i1 %cmp66, label %if.then107, label %lor.lhs.false67, !dbg !3898

lor.lhs.false67:                                  ; preds = %if.else
  %cmp72 = icmp eq i64 %bf.cast4212, 34, !dbg !3898
  br i1 %cmp72, label %if.then107, label %lor.lhs.false73, !dbg !3898

lor.lhs.false73:                                  ; preds = %lor.lhs.false67
  %cmp78 = icmp eq i64 %bf.cast4212, 36, !dbg !3898
  br i1 %cmp78, label %if.then107, label %lor.lhs.false79, !dbg !3898

lor.lhs.false79:                                  ; preds = %lor.lhs.false73
  %cmp84 = icmp eq i64 %bf.cast4212, 141, !dbg !3898
  br i1 %cmp84, label %land.lhs.true85, label %if.else109, !dbg !3898

land.lhs.true85:                                  ; preds = %lor.lhs.false79
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call36, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3898
  %5 = bitcast i32* %var to i64**, !dbg !3898
  %6 = load i64*, i64** %5, align 8, !dbg !3898
  %bf.load87 = load i64, i64* %6, align 8, !dbg !3898
  %bf.cast8919 = and i64 %bf.load87, 65535, !dbg !3898
  %cmp90 = icmp eq i64 %bf.cast8919, 32, !dbg !3898
  br i1 %cmp90, label %if.then107, label %lor.lhs.false91, !dbg !3898

lor.lhs.false91:                                  ; preds = %land.lhs.true85
  %cmp98 = icmp eq i64 %bf.cast8919, 34, !dbg !3898
  br i1 %cmp98, label %if.then107, label %lor.lhs.false99, !dbg !3898

lor.lhs.false99:                                  ; preds = %lor.lhs.false91
  %cmp106 = icmp eq i64 %bf.cast8919, 36, !dbg !3898
  br i1 %cmp106, label %if.then107, label %if.else109, !dbg !3900

if.then107:                                       ; preds = %lor.lhs.false99, %lor.lhs.false91, %land.lhs.true85, %lor.lhs.false73, %lor.lhs.false67, %if.else
  %call108 = tail call i32 @operand_equal_p(%union.tree_node* nonnull %call36, %union.tree_node* %decl, i32 0) #6, !dbg !3901
  %conv = trunc i32 %call108 to i8, !dbg !3901
  br label %cleanup, !dbg !3902

if.else109:                                       ; preds = %lor.lhs.false99, %lor.lhs.false79
  %arrayidx116 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast4212, !dbg !3903
  %7 = load i32, i32* %arrayidx116, align 4, !dbg !3903
  %cmp117 = icmp eq i32 %7, 1, !dbg !3903
  br i1 %cmp117, label %cleanup, label %if.else120, !dbg !3905

if.else120:                                       ; preds = %if.then34, %if.else109
  br label %cleanup, !dbg !3906

cleanup:                                          ; preds = %if.else109, %if.then56, %if.else120, %if.then107
  %cleanup.dest.slot.0 = phi i1 [ true, %if.then56 ], [ false, %if.then107 ], [ false, %if.else120 ], [ false, %if.else109 ]
  %ptr.addr.0 = phi %union.tree_node* [ %4, %if.then56 ], [ %ptr, %if.then107 ], [ %ptr, %if.else120 ], [ %ptr, %if.else109 ]
  %retval.0 = phi i8 [ undef, %if.then56 ], [ %conv, %if.then107 ], [ 1, %if.else120 ], [ 0, %if.else109 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr.addr.0, metadata !3875, metadata !DIExpression()), !dbg !3881
  br i1 %cleanup.dest.slot.0, label %cleanup.if.end122_crit_edge, label %cleanup158

cleanup.if.end122_crit_edge:                      ; preds = %cleanup
  %.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3907
  %bf.load124.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !3909
  %.pre = and i64 %bf.load124.pre, 65535, !dbg !3910
  br label %if.end122

if.end122:                                        ; preds = %cleanup.if.end122_crit_edge, %if.end
  %bf.cast12610.pre-phi = phi i64 [ %.pre, %cleanup.if.end122_crit_edge ], [ %bf.cast329, %if.end ], !dbg !3910
  %ptr.addr.1 = phi %union.tree_node* [ %ptr.addr.0, %cleanup.if.end122_crit_edge ], [ %ptr, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr.addr.1, metadata !3875, metadata !DIExpression()), !dbg !3881
  %cmp127 = icmp eq i64 %bf.cast12610.pre-phi, 23, !dbg !3910
  br i1 %cmp127, label %cleanup158, label %if.end130, !dbg !3911

if.end130:                                        ; preds = %if.end122
  %ptr_info = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3912
  %8 = bitcast %union.tree_node** %ptr_info to %struct.ptr_info_def**, !dbg !3912
  %9 = load %struct.ptr_info_def*, %struct.ptr_info_def** %8, align 8, !dbg !3912
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %9, metadata !3877, metadata !DIExpression()), !dbg !3881
  %tobool132 = icmp eq %struct.ptr_info_def* %9, null, !dbg !3913
  br i1 %tobool132, label %cleanup158, label %if.end134, !dbg !3915

if.end134:                                        ; preds = %if.end130
  %decl_restricted_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3916
  %10 = bitcast i40* %decl_restricted_flag to i64*, !dbg !3916
  %bf.load135 = load i64, i64* %10, align 8, !dbg !3916
  %bf.cast13711 = and i64 %bf.load135, 536870912, !dbg !3916
  %tobool138 = icmp eq i64 %bf.cast13711, 0, !dbg !3916
  br i1 %tobool138, label %if.end155, label %land.lhs.true139, !dbg !3918

land.lhs.true139:                                 ; preds = %if.end134
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3919
  %11 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3919
  %12 = load %struct.tree_type*, %struct.tree_type** %11, align 8, !dbg !3919
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %12, i64 0, i32 6, !dbg !3919
  %bf.load141 = load i32, i32* %restrict_flag, align 4, !dbg !3919
  %bf.clear143 = and i32 %bf.load141, 8192, !dbg !3919
  %tobool144 = icmp eq i32 %bf.clear143, 0, !dbg !3919
  br i1 %tobool144, label %if.end155, label %land.lhs.true145, !dbg !3920

land.lhs.true145:                                 ; preds = %land.lhs.true139
  %13 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %9, i64 0, i32 0, i32 0, !dbg !3921
  %bf.load146 = load i8, i8* %13, align 8, !dbg !3921
  %bf.clear148 = and i8 %bf.load146, 32, !dbg !3921
  %tobool150 = icmp eq i8 %bf.clear148, 0, !dbg !3922
  br i1 %tobool150, label %if.end155, label %if.then151, !dbg !3923

if.then151:                                       ; preds = %land.lhs.true145
  %vars = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %9, i64 0, i32 0, i32 1, !dbg !3924
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %vars, align 8, !dbg !3924
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3925
  %15 = load i32, i32* %uid, align 4, !dbg !3925
  %call153 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %14, i32 %15) #6, !dbg !3926
  %conv154 = trunc i32 %call153 to i8, !dbg !3926
  br label %cleanup158, !dbg !3927

if.end155:                                        ; preds = %land.lhs.true145, %land.lhs.true139, %if.end134
  %pt156 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %9, i64 0, i32 0, !dbg !3928
  %call157 = tail call zeroext i8 @pt_solution_includes(%struct.pt_solution* nonnull %pt156, %union.tree_node* %decl) #6, !dbg !3929
  br label %cleanup158, !dbg !3930

cleanup158:                                       ; preds = %if.end130, %cond.end, %if.end122, %cleanup, %if.end155, %if.then151
  %retval.1 = phi i8 [ %retval.0, %cleanup ], [ %conv154, %if.then151 ], [ %call157, %if.end155 ], [ 0, %cond.end ], [ 1, %if.end122 ], [ 1, %if.end130 ]
  ret i8 %retval.1, !dbg !3931
}

declare dso_local i32 @get_deref_alias_set(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @same_type_for_tbaa(%union.tree_node* %type1, %union.tree_node* %type2) unnamed_addr #0 !dbg !3932 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type1, metadata !3936, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata %union.tree_node* %type2, metadata !3937, metadata !DIExpression()), !dbg !3938
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type1, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3939
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3939
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3936, metadata !DIExpression()), !dbg !3938
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %type2, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3940
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !3940
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3937, metadata !DIExpression()), !dbg !3938
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 1, !dbg !3941
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8, !dbg !3941
  %cmp = icmp eq %union.tree_node* %5, null, !dbg !3941
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !3943

lor.lhs.false:                                    ; preds = %entry
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 1, !dbg !3944
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8, !dbg !3944
  %cmp8 = icmp eq %union.tree_node* %7, null, !dbg !3944
  br i1 %cmp8, label %return, label %if.end, !dbg !3945

if.end:                                           ; preds = %lor.lhs.false
  %cmp13 = icmp eq %union.tree_node* %5, %7, !dbg !3946
  br i1 %cmp13, label %return, label %if.end15, !dbg !3948

if.end15:                                         ; preds = %if.end
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3949
  %bf.load = load i64, i64* %8, align 8, !dbg !3949
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3951
  %cmp16 = icmp eq i64 %bf.cast1, 15, !dbg !3951
  br i1 %cmp16, label %land.lhs.true, label %if.end23, !dbg !3952

land.lhs.true:                                    ; preds = %if.end15
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3953
  %bf.load18 = load i64, i64* %9, align 8, !dbg !3953
  %bf.cast202 = and i64 %bf.load18, 65535, !dbg !3954
  %cmp21 = icmp eq i64 %bf.cast202, 15, !dbg !3954
  br i1 %cmp21, label %return, label %if.end23, !dbg !3955

if.end23:                                         ; preds = %land.lhs.true, %if.end15
  %call = tail call i32 @get_alias_set(%union.tree_node* %1) #6, !dbg !3956
  %call24 = tail call i32 @get_alias_set(%union.tree_node* %3) #6, !dbg !3958
  %cmp25 = icmp eq i32 %call, %call24, !dbg !3959
  %. = sext i1 %cmp25 to i32, !dbg !3938
  br label %return, !dbg !3938

return:                                           ; preds = %if.end23, %land.lhs.true, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -1, %lor.lhs.false ], [ -1, %entry ], [ 1, %if.end ], [ -1, %land.lhs.true ], [ %., %if.end23 ], !dbg !3938
  ret i32 %retval.0, !dbg !3960
}

declare dso_local zeroext i8 @alias_set_subset_of(i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @aliasing_component_refs_p(%union.tree_node* %ref1, %union.tree_node* %type1, i64 %offset1, i64 %max_size1, %union.tree_node* %ref2, %union.tree_node* %type2, i64 %offset2, i64 %max_size2) unnamed_addr #4 !dbg !3961 {
entry:
  %ref1.addr = alloca %union.tree_node*, align 8
  %ref2.addr = alloca %union.tree_node*, align 8
  %offadj = alloca i64, align 8
  %sztmp = alloca i64, align 8
  %msztmp = alloca i64, align 8
  %offadj40 = alloca i64, align 8
  %sztmp41 = alloca i64, align 8
  %msztmp42 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %ref1, metadata !3965, metadata !DIExpression()), !dbg !3987
  store %union.tree_node* %ref1, %union.tree_node** %ref1.addr, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %type1, metadata !3966, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i64 %offset1, metadata !3967, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i64 %max_size1, metadata !3968, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata %union.tree_node* %ref2, metadata !3969, metadata !DIExpression()), !dbg !3987
  store %union.tree_node* %ref2, %union.tree_node** %ref2.addr, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %type2, metadata !3970, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i64 %offset2, metadata !3971, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i64 %max_size2, metadata !3972, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata %union.tree_node** %ref2.addr, metadata !3973, metadata !DIExpression()), !dbg !3987
  br label %while.cond, !dbg !3988

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi %union.tree_node* [ %ref2, %entry ], [ %.pre, %while.body ], !dbg !3989
  %refp.0 = phi %union.tree_node** [ %ref2.addr, %entry ], [ %operands, %while.body ], !dbg !3987
  call void @llvm.dbg.value(metadata %union.tree_node** %refp.0, metadata !3973, metadata !DIExpression()), !dbg !3987
  %call = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %0) #8, !dbg !3990
  %tobool = icmp eq i8 %call, 0, !dbg !3990
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3991

land.rhs:                                         ; preds = %while.cond
  %1 = bitcast %union.tree_node** %refp.0 to %struct.tree_common**, !dbg !3992
  %2 = load %struct.tree_common*, %struct.tree_common** %1, align 8, !dbg !3992
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %2, i64 0, i32 2, !dbg !3992
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3992
  %call1 = tail call fastcc i32 @same_type_for_tbaa(%union.tree_node* %3, %union.tree_node* %type1) #8, !dbg !3993
  %cmp = icmp eq i32 %call1, 0, !dbg !3994
  br label %land.end

land.end:                                         ; preds = %while.cond, %land.rhs
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !3987
  %5 = load %union.tree_node*, %union.tree_node** %refp.0, align 8, !dbg !3987
  br i1 %4, label %while.body, label %while.end, !dbg !3988

while.body:                                       ; preds = %land.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3995
  call void @llvm.dbg.value(metadata %union.tree_node** %operands, metadata !3973, metadata !DIExpression()), !dbg !3987
  %.pre = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3989
  br label %while.cond, !dbg !3988, !llvm.loop !3996

while.end:                                        ; preds = %land.end
  %.lcssa4 = phi %union.tree_node* [ %5, %land.end ], !dbg !3987
  %refp.0.lcssa = phi %union.tree_node** [ %refp.0, %land.end ], !dbg !3987
  call void @llvm.dbg.value(metadata %union.tree_node** %refp.0.lcssa, metadata !3973, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata %union.tree_node** %refp.0.lcssa, metadata !3973, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata %union.tree_node** %refp.0.lcssa, metadata !3973, metadata !DIExpression()), !dbg !3987
  %type4 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3997
  %6 = load %union.tree_node*, %union.tree_node** %type4, align 8, !dbg !3997
  %call5 = tail call fastcc i32 @same_type_for_tbaa(%union.tree_node* %6, %union.tree_node* %type1) #8, !dbg !3998
  call void @llvm.dbg.value(metadata i32 %call5, metadata !3974, metadata !DIExpression()), !dbg !3987
  switch i32 %call5, label %while.cond14.preheader [
    i32 -1, label %cleanup
    i32 1, label %if.then10
  ], !dbg !3999

while.cond14.preheader:                           ; preds = %while.end
  br label %while.cond14, !dbg !4000

if.then10:                                        ; preds = %while.end
  %7 = bitcast i64* %offadj to i8*, !dbg !4001
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !4001
  %8 = bitcast i64* %sztmp to i8*, !dbg !4001
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !4001
  %9 = bitcast i64* %msztmp to i8*, !dbg !4001
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7, !dbg !4001
  %10 = load %union.tree_node*, %union.tree_node** %refp.0.lcssa, align 8, !dbg !4002
  call void @llvm.dbg.value(metadata i64* %offadj, metadata !3975, metadata !DIExpression(DW_OP_deref)), !dbg !4003
  call void @llvm.dbg.value(metadata i64* %sztmp, metadata !3979, metadata !DIExpression(DW_OP_deref)), !dbg !4003
  call void @llvm.dbg.value(metadata i64* %msztmp, metadata !3980, metadata !DIExpression(DW_OP_deref)), !dbg !4003
  %call11 = call %union.tree_node* @get_ref_base_and_extent(%union.tree_node* %10, i64* nonnull %offadj, i64* nonnull %sztmp, i64* nonnull %msztmp) #6, !dbg !4004
  %11 = load i64, i64* %offadj, align 8, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %11, metadata !3975, metadata !DIExpression()), !dbg !4003
  %sub = sub nsw i64 %offset2, %11, !dbg !4006
  call void @llvm.dbg.value(metadata i64 %sub, metadata !3971, metadata !DIExpression()), !dbg !3987
  %call12 = call fastcc zeroext i8 @ranges_overlap_p(i64 %offset1, i64 %max_size1, i64 %sub, i64 %max_size2) #8, !dbg !4007
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7, !dbg !4008
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !4008
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !4008
  br label %cleanup

while.cond14:                                     ; preds = %while.cond14.preheader, %while.body25
  %12 = phi %union.tree_node* [ %.pre2, %while.body25 ], [ %ref1, %while.cond14.preheader ], !dbg !4009
  %refp.1 = phi %union.tree_node** [ %operands27, %while.body25 ], [ %ref1.addr, %while.cond14.preheader ], !dbg !3987
  call void @llvm.dbg.value(metadata %union.tree_node** %refp.1, metadata !3973, metadata !DIExpression()), !dbg !3987
  %call15 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %12) #8, !dbg !4010
  %tobool17 = icmp eq i8 %call15, 0, !dbg !4010
  br i1 %tobool17, label %land.end24, label %land.rhs18, !dbg !4011

land.rhs18:                                       ; preds = %while.cond14
  %13 = bitcast %union.tree_node** %refp.1 to %struct.tree_common**, !dbg !4012
  %14 = load %struct.tree_common*, %struct.tree_common** %13, align 8, !dbg !4012
  %type20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %14, i64 0, i32 2, !dbg !4012
  %15 = load %union.tree_node*, %union.tree_node** %type20, align 8, !dbg !4012
  %call21 = tail call fastcc i32 @same_type_for_tbaa(%union.tree_node* %15, %union.tree_node* %type2) #8, !dbg !4013
  %cmp22 = icmp eq i32 %call21, 0, !dbg !4014
  br label %land.end24

land.end24:                                       ; preds = %while.cond14, %land.rhs18
  %16 = phi i1 [ false, %while.cond14 ], [ %cmp22, %land.rhs18 ], !dbg !3987
  %17 = load %union.tree_node*, %union.tree_node** %refp.1, align 8, !dbg !3987
  br i1 %16, label %while.body25, label %while.end29, !dbg !4000

while.body25:                                     ; preds = %land.end24
  %operands27 = getelementptr inbounds %union.tree_node, %union.tree_node* %17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4015
  call void @llvm.dbg.value(metadata %union.tree_node** %operands27, metadata !3973, metadata !DIExpression()), !dbg !3987
  %.pre2 = load %union.tree_node*, %union.tree_node** %operands27, align 8, !dbg !4009
  br label %while.cond14, !dbg !4000, !llvm.loop !4016

while.end29:                                      ; preds = %land.end24
  %.lcssa = phi %union.tree_node* [ %17, %land.end24 ], !dbg !3987
  %refp.1.lcssa = phi %union.tree_node** [ %refp.1, %land.end24 ], !dbg !3987
  call void @llvm.dbg.value(metadata %union.tree_node** %refp.1.lcssa, metadata !3973, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata %union.tree_node** %refp.1.lcssa, metadata !3973, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata %union.tree_node** %refp.1.lcssa, metadata !3973, metadata !DIExpression()), !dbg !3987
  %type31 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4017
  %18 = load %union.tree_node*, %union.tree_node** %type31, align 8, !dbg !4017
  %call32 = tail call fastcc i32 @same_type_for_tbaa(%union.tree_node* %18, %union.tree_node* %type2) #8, !dbg !4018
  call void @llvm.dbg.value(metadata i32 %call32, metadata !3974, metadata !DIExpression()), !dbg !3987
  switch i32 %call32, label %if.end47 [
    i32 -1, label %cleanup
    i32 1, label %if.then39
  ], !dbg !4019

if.then39:                                        ; preds = %while.end29
  %19 = bitcast i64* %offadj40 to i8*, !dbg !4020
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #7, !dbg !4020
  %20 = bitcast i64* %sztmp41 to i8*, !dbg !4020
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #7, !dbg !4020
  %21 = bitcast i64* %msztmp42 to i8*, !dbg !4020
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #7, !dbg !4020
  %22 = load %union.tree_node*, %union.tree_node** %refp.1.lcssa, align 8, !dbg !4021
  call void @llvm.dbg.value(metadata i64* %offadj40, metadata !3981, metadata !DIExpression(DW_OP_deref)), !dbg !4022
  call void @llvm.dbg.value(metadata i64* %sztmp41, metadata !3985, metadata !DIExpression(DW_OP_deref)), !dbg !4022
  call void @llvm.dbg.value(metadata i64* %msztmp42, metadata !3986, metadata !DIExpression(DW_OP_deref)), !dbg !4022
  %call43 = call %union.tree_node* @get_ref_base_and_extent(%union.tree_node* %22, i64* nonnull %offadj40, i64* nonnull %sztmp41, i64* nonnull %msztmp42) #6, !dbg !4023
  %23 = load i64, i64* %offadj40, align 8, !dbg !4024
  call void @llvm.dbg.value(metadata i64 %23, metadata !3981, metadata !DIExpression()), !dbg !4022
  %sub44 = sub nsw i64 %offset1, %23, !dbg !4025
  call void @llvm.dbg.value(metadata i64 %sub44, metadata !3967, metadata !DIExpression()), !dbg !3987
  %call45 = call fastcc zeroext i8 @ranges_overlap_p(i64 %sub44, i64 %max_size1, i64 %offset2, i64 %max_size2) #8, !dbg !4026
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !4027
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #7, !dbg !4027
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !4027
  br label %cleanup

if.end47:                                         ; preds = %while.end29
  br label %cleanup, !dbg !4028

cleanup:                                          ; preds = %while.end29, %while.end, %if.end47, %if.then39, %if.then10
  %retval.0 = phi i8 [ %call12, %if.then10 ], [ %call45, %if.then39 ], [ 0, %if.end47 ], [ 1, %while.end ], [ 1, %while.end29 ], !dbg !3987
  ret i8 %retval.0, !dbg !4029
}

declare dso_local %union.tree_node* @get_base_address(%union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @pt_solution_includes(%struct.pt_solution*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ptr_derefs_may_alias_p(%union.tree_node* %ptr1, %union.tree_node* %ptr2) unnamed_addr #4 !dbg !4030 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr1, metadata !4032, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr2, metadata !4033, metadata !DIExpression()), !dbg !4042
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4043
  %bf.load = load i64, i64* %0, align 8, !dbg !4043
  %bf.cast7 = and i64 %bf.load, 65535, !dbg !4043
  %cmp = icmp eq i64 %bf.cast7, 141, !dbg !4043
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !4043

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast7, 121, !dbg !4043
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false6, !dbg !4043

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i64 %bf.cast7, 23, !dbg !4043
  br i1 %cmp11, label %land.lhs.true, label %cond.true, !dbg !4043

land.lhs.true:                                    ; preds = %lor.lhs.false6, %lor.lhs.false, %entry
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4043
  %bf.load13 = load i64, i64* %1, align 8, !dbg !4043
  %bf.cast1534 = and i64 %bf.load13, 65535, !dbg !4043
  %cmp16 = icmp eq i64 %bf.cast1534, 141, !dbg !4043
  br i1 %cmp16, label %cond.end, label %lor.lhs.false17, !dbg !4043

lor.lhs.false17:                                  ; preds = %land.lhs.true
  %cmp22 = icmp eq i64 %bf.cast1534, 121, !dbg !4043
  br i1 %cmp22, label %cond.end, label %lor.lhs.false23, !dbg !4043

lor.lhs.false23:                                  ; preds = %lor.lhs.false17
  %cmp28 = icmp eq i64 %bf.cast1534, 23, !dbg !4043
  br i1 %cmp28, label %cond.end, label %cond.true, !dbg !4043

cond.true:                                        ; preds = %lor.lhs.false23, %lor.lhs.false6
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 236, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !4043
  %bf.load30.pre = load i64, i64* %0, align 8, !dbg !4044
  br label %cond.end, !dbg !4043

cond.end:                                         ; preds = %land.lhs.true, %lor.lhs.false17, %lor.lhs.false23, %cond.true
  %bf.load30 = phi i64 [ %bf.load, %land.lhs.true ], [ %bf.load, %lor.lhs.false17 ], [ %bf.load, %lor.lhs.false23 ], [ %bf.load30.pre, %cond.true ], !dbg !4044
  %bf.cast3210 = and i64 %bf.load30, 65535, !dbg !4045
  %cmp33 = icmp eq i64 %bf.cast3210, 121, !dbg !4045
  br i1 %cmp33, label %if.then, label %if.end107, !dbg !4046

if.then:                                          ; preds = %cond.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4047
  %2 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !4047
  %call = tail call %union.tree_node* @get_base_address(%union.tree_node* %2) #6, !dbg !4048
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4036, metadata !DIExpression()), !dbg !4049
  %cond4 = icmp eq %union.tree_node* %call, null, !dbg !4050
  br i1 %cond4, label %cleanup, label %land.lhs.true35, !dbg !4050

land.lhs.true35:                                  ; preds = %if.then
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4052
  %bf.load37 = load i64, i64* %3, align 8, !dbg !4052
  %bf.cast3924 = and i64 %bf.load37, 65535, !dbg !4052
  %cmp40 = icmp eq i64 %bf.cast3924, 47, !dbg !4052
  br i1 %cmp40, label %if.then53, label %lor.lhs.false41, !dbg !4052

lor.lhs.false41:                                  ; preds = %land.lhs.true35
  %cmp46 = icmp eq i64 %bf.cast3924, 48, !dbg !4052
  br i1 %cmp46, label %if.then53, label %lor.lhs.false47, !dbg !4052

lor.lhs.false47:                                  ; preds = %lor.lhs.false41
  %cmp52 = icmp eq i64 %bf.cast3924, 49, !dbg !4052
  br i1 %cmp52, label %if.then53, label %if.else, !dbg !4053

if.then53:                                        ; preds = %lor.lhs.false47, %lor.lhs.false41, %land.lhs.true35
  %operands55 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4054
  %4 = load %union.tree_node*, %union.tree_node** %operands55, align 8, !dbg !4054
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !4032, metadata !DIExpression()), !dbg !4042
  br label %cleanup, !dbg !4055

if.else:                                          ; preds = %lor.lhs.false47
  %cmp63 = icmp eq i64 %bf.cast3924, 32, !dbg !4056
  br i1 %cmp63, label %if.then104, label %lor.lhs.false64, !dbg !4056

lor.lhs.false64:                                  ; preds = %if.else
  %cmp69 = icmp eq i64 %bf.cast3924, 34, !dbg !4056
  br i1 %cmp69, label %if.then104, label %lor.lhs.false70, !dbg !4056

lor.lhs.false70:                                  ; preds = %lor.lhs.false64
  %cmp75 = icmp eq i64 %bf.cast3924, 36, !dbg !4056
  br i1 %cmp75, label %if.then104, label %lor.lhs.false76, !dbg !4056

lor.lhs.false76:                                  ; preds = %lor.lhs.false70
  %cmp81 = icmp eq i64 %bf.cast3924, 141, !dbg !4056
  br i1 %cmp81, label %land.lhs.true82, label %cleanup, !dbg !4056

land.lhs.true82:                                  ; preds = %lor.lhs.false76
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4056
  %5 = bitcast i32* %var to i64**, !dbg !4056
  %6 = load i64*, i64** %5, align 8, !dbg !4056
  %bf.load84 = load i64, i64* %6, align 8, !dbg !4056
  %bf.cast8631 = and i64 %bf.load84, 65535, !dbg !4056
  %cmp87 = icmp eq i64 %bf.cast8631, 32, !dbg !4056
  br i1 %cmp87, label %if.then104, label %lor.lhs.false88, !dbg !4056

lor.lhs.false88:                                  ; preds = %land.lhs.true82
  %cmp95 = icmp eq i64 %bf.cast8631, 34, !dbg !4056
  br i1 %cmp95, label %if.then104, label %lor.lhs.false96, !dbg !4056

lor.lhs.false96:                                  ; preds = %lor.lhs.false88
  %cmp103 = icmp eq i64 %bf.cast8631, 36, !dbg !4056
  br i1 %cmp103, label %if.then104, label %cleanup, !dbg !4058

if.then104:                                       ; preds = %lor.lhs.false96, %lor.lhs.false88, %land.lhs.true82, %lor.lhs.false70, %lor.lhs.false64, %if.else
  %call105 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(%union.tree_node* %ptr2, %union.tree_node* nonnull %call) #8, !dbg !4059
  br label %cleanup, !dbg !4060

cleanup:                                          ; preds = %if.then, %lor.lhs.false76, %lor.lhs.false96, %if.then53, %if.then104
  %cleanup.dest.slot.0 = phi i1 [ true, %if.then53 ], [ false, %if.then104 ], [ false, %if.then ], [ false, %lor.lhs.false96 ], [ false, %lor.lhs.false76 ]
  %ptr1.addr.0 = phi %union.tree_node* [ %4, %if.then53 ], [ %ptr1, %if.then104 ], [ %ptr1, %if.then ], [ %ptr1, %lor.lhs.false96 ], [ %ptr1, %lor.lhs.false76 ]
  %retval.0 = phi i8 [ undef, %if.then53 ], [ %call105, %if.then104 ], [ 1, %if.then ], [ 1, %lor.lhs.false96 ], [ 1, %lor.lhs.false76 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr1.addr.0, metadata !4032, metadata !DIExpression()), !dbg !4042
  br i1 %cleanup.dest.slot.0, label %if.end107, label %cleanup246

if.end107:                                        ; preds = %cleanup, %cond.end
  %ptr1.addr.1 = phi %union.tree_node* [ %ptr1, %cond.end ], [ %ptr1.addr.0, %cleanup ]
  %retval.1 = phi i8 [ undef, %cond.end ], [ %retval.0, %cleanup ]
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr1.addr.1, metadata !4032, metadata !DIExpression()), !dbg !4042
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4061
  %bf.load109 = load i64, i64* %7, align 8, !dbg !4061
  %bf.cast11111 = and i64 %bf.load109, 65535, !dbg !4062
  %cmp112 = icmp eq i64 %bf.cast11111, 121, !dbg !4062
  br i1 %cmp112, label %if.then113, label %if.end199, !dbg !4063

if.then113:                                       ; preds = %if.end107
  %operands116 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4064
  %8 = load %union.tree_node*, %union.tree_node** %operands116, align 8, !dbg !4064
  %call118 = tail call %union.tree_node* @get_base_address(%union.tree_node* %8) #6, !dbg !4065
  call void @llvm.dbg.value(metadata %union.tree_node* %call118, metadata !4039, metadata !DIExpression()), !dbg !4066
  %cond5 = icmp eq %union.tree_node* %call118, null, !dbg !4067
  br i1 %cond5, label %cleanup196, label %land.lhs.true120, !dbg !4067

land.lhs.true120:                                 ; preds = %if.then113
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %call118, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4069
  %bf.load122 = load i64, i64* %9, align 8, !dbg !4069
  %bf.cast12414 = and i64 %bf.load122, 65535, !dbg !4069
  %cmp125 = icmp eq i64 %bf.cast12414, 47, !dbg !4069
  br i1 %cmp125, label %if.then138, label %lor.lhs.false126, !dbg !4069

lor.lhs.false126:                                 ; preds = %land.lhs.true120
  %cmp131 = icmp eq i64 %bf.cast12414, 48, !dbg !4069
  br i1 %cmp131, label %if.then138, label %lor.lhs.false132, !dbg !4069

lor.lhs.false132:                                 ; preds = %lor.lhs.false126
  %cmp137 = icmp eq i64 %bf.cast12414, 49, !dbg !4069
  br i1 %cmp137, label %if.then138, label %if.else142, !dbg !4070

if.then138:                                       ; preds = %lor.lhs.false132, %lor.lhs.false126, %land.lhs.true120
  %operands140 = getelementptr inbounds %union.tree_node, %union.tree_node* %call118, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4071
  %10 = load %union.tree_node*, %union.tree_node** %operands140, align 8, !dbg !4071
  call void @llvm.dbg.value(metadata %union.tree_node* %10, metadata !4033, metadata !DIExpression()), !dbg !4042
  br label %cleanup196, !dbg !4072

if.else142:                                       ; preds = %lor.lhs.false132
  %cmp149 = icmp eq i64 %bf.cast12414, 32, !dbg !4073
  br i1 %cmp149, label %if.then192, label %lor.lhs.false150, !dbg !4073

lor.lhs.false150:                                 ; preds = %if.else142
  %cmp155 = icmp eq i64 %bf.cast12414, 34, !dbg !4073
  br i1 %cmp155, label %if.then192, label %lor.lhs.false156, !dbg !4073

lor.lhs.false156:                                 ; preds = %lor.lhs.false150
  %cmp161 = icmp eq i64 %bf.cast12414, 36, !dbg !4073
  br i1 %cmp161, label %if.then192, label %lor.lhs.false162, !dbg !4073

lor.lhs.false162:                                 ; preds = %lor.lhs.false156
  %cmp167 = icmp eq i64 %bf.cast12414, 141, !dbg !4073
  br i1 %cmp167, label %land.lhs.true168, label %cleanup196, !dbg !4073

land.lhs.true168:                                 ; preds = %lor.lhs.false162
  %var170 = getelementptr inbounds %union.tree_node, %union.tree_node* %call118, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4073
  %11 = bitcast i32* %var170 to i64**, !dbg !4073
  %12 = load i64*, i64** %11, align 8, !dbg !4073
  %bf.load172 = load i64, i64* %12, align 8, !dbg !4073
  %bf.cast17421 = and i64 %bf.load172, 65535, !dbg !4073
  %cmp175 = icmp eq i64 %bf.cast17421, 32, !dbg !4073
  br i1 %cmp175, label %if.then192, label %lor.lhs.false176, !dbg !4073

lor.lhs.false176:                                 ; preds = %land.lhs.true168
  %cmp183 = icmp eq i64 %bf.cast17421, 34, !dbg !4073
  br i1 %cmp183, label %if.then192, label %lor.lhs.false184, !dbg !4073

lor.lhs.false184:                                 ; preds = %lor.lhs.false176
  %cmp191 = icmp eq i64 %bf.cast17421, 36, !dbg !4073
  br i1 %cmp191, label %if.then192, label %cleanup196, !dbg !4075

if.then192:                                       ; preds = %lor.lhs.false184, %lor.lhs.false176, %land.lhs.true168, %lor.lhs.false156, %lor.lhs.false150, %if.else142
  %call193 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(%union.tree_node* %ptr1.addr.1, %union.tree_node* nonnull %call118) #8, !dbg !4076
  br label %cleanup196, !dbg !4077

cleanup196:                                       ; preds = %if.then113, %lor.lhs.false162, %lor.lhs.false184, %if.then138, %if.then192
  %cleanup.dest.slot.1 = phi i1 [ true, %if.then138 ], [ false, %if.then192 ], [ false, %if.then113 ], [ false, %lor.lhs.false184 ], [ false, %lor.lhs.false162 ]
  %ptr2.addr.0 = phi %union.tree_node* [ %10, %if.then138 ], [ %ptr2, %if.then192 ], [ %ptr2, %if.then113 ], [ %ptr2, %lor.lhs.false184 ], [ %ptr2, %lor.lhs.false162 ]
  %retval.2 = phi i8 [ %retval.1, %if.then138 ], [ %call193, %if.then192 ], [ 1, %if.then113 ], [ 1, %lor.lhs.false184 ], [ 1, %lor.lhs.false162 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr2.addr.0, metadata !4033, metadata !DIExpression()), !dbg !4042
  br i1 %cleanup.dest.slot.1, label %if.end199, label %cleanup246

if.end199:                                        ; preds = %cleanup196, %if.end107
  %ptr2.addr.1 = phi %union.tree_node* [ %ptr2, %if.end107 ], [ %ptr2.addr.0, %cleanup196 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr2.addr.1, metadata !4033, metadata !DIExpression()), !dbg !4042
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr1.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4078
  %bf.load201 = load i64, i64* %13, align 8, !dbg !4078
  %bf.cast20312 = and i64 %bf.load201, 65535, !dbg !4080
  %cmp204 = icmp eq i64 %bf.cast20312, 23, !dbg !4080
  br i1 %cmp204, label %cleanup246, label %lor.lhs.false205, !dbg !4081

lor.lhs.false205:                                 ; preds = %if.end199
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr2.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4082
  %bf.load207 = load i64, i64* %14, align 8, !dbg !4082
  %bf.cast20913 = and i64 %bf.load207, 65535, !dbg !4083
  %cmp210 = icmp eq i64 %bf.cast20913, 23, !dbg !4083
  %cmp213 = icmp eq %union.tree_node* %ptr1.addr.1, %ptr2.addr.1, !dbg !4084
  %or.cond6 = or i1 %cmp210, %cmp213, !dbg !4086
  br i1 %or.cond6, label %cleanup246, label %if.end215, !dbg !4086

if.end215:                                        ; preds = %lor.lhs.false205
  %ptr_info = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr1.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4087
  %15 = bitcast %union.tree_node** %ptr_info to %struct.ptr_info_def**, !dbg !4087
  %16 = load %struct.ptr_info_def*, %struct.ptr_info_def** %15, align 8, !dbg !4087
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %16, metadata !4034, metadata !DIExpression()), !dbg !4042
  %ptr_info218 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr2.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4088
  %17 = bitcast %union.tree_node** %ptr_info218 to %struct.ptr_info_def**, !dbg !4088
  %18 = load %struct.ptr_info_def*, %struct.ptr_info_def** %17, align 8, !dbg !4088
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %18, metadata !4035, metadata !DIExpression()), !dbg !4042
  %tobool219 = icmp ne %struct.ptr_info_def* %16, null, !dbg !4089
  %tobool221 = icmp ne %struct.ptr_info_def* %18, null, !dbg !4091
  %or.cond = and i1 %tobool219, %tobool221, !dbg !4092
  br i1 %or.cond, label %if.end223, label %cleanup246, !dbg !4092

if.end223:                                        ; preds = %if.end215
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr1.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4093
  %19 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !4093
  %20 = load %struct.tree_type*, %struct.tree_type** %19, align 8, !dbg !4093
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %20, i64 0, i32 6, !dbg !4093
  %bf.load225 = load i32, i32* %restrict_flag, align 4, !dbg !4093
  %bf.clear226 = and i32 %bf.load225, 8192, !dbg !4093
  %tobool227 = icmp eq i32 %bf.clear226, 0, !dbg !4093
  br i1 %tobool227, label %if.end242, label %land.lhs.true228, !dbg !4095

land.lhs.true228:                                 ; preds = %if.end223
  %type230 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr2.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4096
  %21 = bitcast %union.tree_node** %type230 to %struct.tree_type**, !dbg !4096
  %22 = load %struct.tree_type*, %struct.tree_type** %21, align 8, !dbg !4096
  %restrict_flag232 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %22, i64 0, i32 6, !dbg !4096
  %bf.load233 = load i32, i32* %restrict_flag232, align 4, !dbg !4096
  %bf.clear235 = and i32 %bf.load233, 8192, !dbg !4096
  %tobool236 = icmp eq i32 %bf.clear235, 0, !dbg !4096
  br i1 %tobool236, label %if.end242, label %land.lhs.true237, !dbg !4097

land.lhs.true237:                                 ; preds = %land.lhs.true228
  %pt = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %16, i64 0, i32 0, !dbg !4098
  %pt238 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %18, i64 0, i32 0, !dbg !4099
  %call239 = tail call zeroext i8 @pt_solutions_same_restrict_base(%struct.pt_solution* nonnull %pt, %struct.pt_solution* nonnull %pt238) #6, !dbg !4100
  %tobool240 = icmp eq i8 %call239, 0, !dbg !4100
  br i1 %tobool240, label %cleanup246, label %if.end242, !dbg !4101

if.end242:                                        ; preds = %land.lhs.true237, %land.lhs.true228, %if.end223
  %pt243 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %16, i64 0, i32 0, !dbg !4102
  %pt244 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %18, i64 0, i32 0, !dbg !4103
  %call245 = tail call zeroext i8 @pt_solutions_intersect(%struct.pt_solution* nonnull %pt243, %struct.pt_solution* nonnull %pt244) #6, !dbg !4104
  br label %cleanup246, !dbg !4105

cleanup246:                                       ; preds = %land.lhs.true237, %if.end215, %if.end199, %lor.lhs.false205, %cleanup, %cleanup196, %if.end242
  %retval.3 = phi i8 [ %retval.0, %cleanup ], [ %retval.2, %cleanup196 ], [ %call245, %if.end242 ], [ 1, %lor.lhs.false205 ], [ 1, %if.end199 ], [ 1, %if.end215 ], [ 0, %land.lhs.true237 ]
  ret i8 %retval.3, !dbg !4106
}

declare dso_local zeroext i8 @pt_solutions_same_restrict_base(%struct.pt_solution*, %struct.pt_solution*) local_unnamed_addr #1

declare dso_local zeroext i8 @pt_solutions_intersect(%struct.pt_solution*, %struct.pt_solution*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ref_maybe_used_by_call_p_1(%union.gimple_statement_d* %call, %struct.ao_ref_s* %ref) unnamed_addr #4 !dbg !4107 {
entry:
  %dref = alloca %struct.ao_ref_s, align 8
  %dref35 = alloca %struct.ao_ref_s, align 8
  %r = alloca %struct.ao_ref_s, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !4109, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !4110, metadata !DIExpression()), !dbg !4145
  %call1 = tail call i32 @gimple_call_flags(%union.gimple_statement_d* %call) #6, !dbg !4146
  call void @llvm.dbg.value(metadata i32 %call1, metadata !4114, metadata !DIExpression()), !dbg !4145
  %call2 = tail call fastcc %union.tree_node* @gimple_call_chain(%union.gimple_statement_d* %call) #8, !dbg !4147
  %tobool = icmp eq %union.tree_node* %call2, null, !dbg !4147
  %and = and i32 %call1, 513, !dbg !4149
  %tobool3 = icmp ne i32 %and, 0, !dbg !4149
  %or.cond = and i1 %tobool, %tobool3, !dbg !4150
  br i1 %or.cond, label %process_args, label %if.end, !dbg !4150

if.end:                                           ; preds = %entry
  %call4 = tail call %union.tree_node* @ao_ref_base(%struct.ao_ref_s* %ref) #8, !dbg !4151
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !4111, metadata !DIExpression()), !dbg !4145
  %tobool5 = icmp eq %union.tree_node* %call4, null, !dbg !4152
  br i1 %tobool5, label %cleanup252, label %if.end7, !dbg !4154

if.end7:                                          ; preds = %if.end
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4155
  %bf.load = load i64, i64* %0, align 8, !dbg !4155
  %bf.cast = and i64 %bf.load, 65535, !dbg !4155
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !4155
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4155
  %cmp = icmp eq i32 %1, 3, !dbg !4155
  br i1 %cmp, label %land.lhs.true9, label %if.end16, !dbg !4157

land.lhs.true9:                                   ; preds = %if.end7
  %call10 = tail call fastcc zeroext i8 @may_be_aliased(%union.tree_node* nonnull %call4) #8, !dbg !4158
  %tobool11 = icmp eq i8 %call10, 0, !dbg !4158
  br i1 %tobool11, label %land.lhs.true12, label %if.end16, !dbg !4159

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %call13 = tail call fastcc zeroext i8 @is_global_var(%union.tree_node* nonnull %call4) #8, !dbg !4160
  %tobool14 = icmp eq i8 %call13, 0, !dbg !4160
  br i1 %tobool14, label %process_args, label %if.end16, !dbg !4161

if.end16:                                         ; preds = %land.lhs.true12, %land.lhs.true9, %if.end7
  %call17 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call) #8, !dbg !4162
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !4112, metadata !DIExpression()), !dbg !4145
  %cmp18 = icmp eq %union.tree_node* %call17, null, !dbg !4163
  br i1 %cmp18, label %if.end41, label %land.lhs.true19, !dbg !4164

land.lhs.true19:                                  ; preds = %if.end16
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call17, i64 0, i32 0, i32 5, !dbg !4165
  %bf.load20 = load i32, i32* %built_in_class, align 8, !dbg !4165
  %bf.clear21 = and i32 %bf.load20, 6144, !dbg !4165
  %cmp22 = icmp eq i32 %bf.clear21, 6144, !dbg !4166
  br i1 %cmp22, label %if.then23, label %if.end41, !dbg !4167

if.then23:                                        ; preds = %land.lhs.true19
  %bf.clear26 = and i32 %bf.load20, 2047, !dbg !4168
  switch i32 %bf.clear26, label %if.end41 [
    i32 341, label %sw.bb
    i32 349, label %sw.bb
    i32 330, label %sw.bb
    i32 331, label %sw.bb
    i32 332, label %sw.bb
    i32 335, label %sw.bb
    i32 336, label %sw.bb
    i32 338, label %sw.bb
    i32 347, label %sw.bb
    i32 325, label %sw.bb34
    i32 455, label %cleanup252
    i32 491, label %cleanup252
    i32 422, label %cleanup252
    i32 333, label %cleanup252
    i32 78, label %cleanup252
    i32 79, label %cleanup252
    i32 80, label %cleanup252
    i32 84, label %cleanup252
    i32 85, label %cleanup252
    i32 86, label %cleanup252
    i32 123, label %cleanup252
    i32 124, label %cleanup252
    i32 125, label %cleanup252
    i32 159, label %cleanup252
    i32 160, label %cleanup252
    i32 161, label %cleanup252
    i32 192, label %cleanup252
    i32 193, label %cleanup252
    i32 194, label %cleanup252
    i32 220, label %cleanup252
    i32 221, label %cleanup252
    i32 222, label %cleanup252
  ], !dbg !4169

sw.bb:                                            ; preds = %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23
  %2 = bitcast %struct.ao_ref_s* %dref to i8*, !dbg !4170
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %2) #7, !dbg !4170
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !4119, metadata !DIExpression()), !dbg !4171
  %call27 = tail call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call) #8, !dbg !4172
  %cmp28 = icmp eq i32 %call27, 3, !dbg !4174
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !4175

if.then29:                                        ; preds = %sw.bb
  %call30 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 2) #8, !dbg !4176
  call void @llvm.dbg.value(metadata %union.tree_node* %call30, metadata !4119, metadata !DIExpression()), !dbg !4171
  br label %if.end31, !dbg !4177

if.end31:                                         ; preds = %if.then29, %sw.bb
  %size.0 = phi %union.tree_node* [ %call30, %if.then29 ], [ null, %sw.bb ], !dbg !4171
  call void @llvm.dbg.value(metadata %union.tree_node* %size.0, metadata !4119, metadata !DIExpression()), !dbg !4171
  %call32 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 1) #8, !dbg !4178
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %dref, metadata !4115, metadata !DIExpression(DW_OP_deref)), !dbg !4171
  call void @ao_ref_init_from_ptr_and_size(%struct.ao_ref_s* nonnull %dref, %union.tree_node* %call32, %union.tree_node* %size.0) #8, !dbg !4179
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %dref, metadata !4115, metadata !DIExpression(DW_OP_deref)), !dbg !4171
  %call33 = call zeroext i8 @refs_may_alias_p_1(%struct.ao_ref_s* nonnull %dref, %struct.ao_ref_s* %ref, i8 zeroext 0) #8, !dbg !4180
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %2) #7, !dbg !4181
  br label %cleanup252

sw.bb34:                                          ; preds = %if.then23
  %3 = bitcast %struct.ao_ref_s* %dref35 to i8*, !dbg !4182
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #7, !dbg !4182
  %call37 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 2) #8, !dbg !4183
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !4122, metadata !DIExpression()), !dbg !4184
  %call38 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 0) #8, !dbg !4185
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %dref35, metadata !4120, metadata !DIExpression(DW_OP_deref)), !dbg !4184
  call void @ao_ref_init_from_ptr_and_size(%struct.ao_ref_s* nonnull %dref35, %union.tree_node* %call38, %union.tree_node* %call37) #8, !dbg !4186
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %dref35, metadata !4120, metadata !DIExpression(DW_OP_deref)), !dbg !4184
  %call39 = call zeroext i8 @refs_may_alias_p_1(%struct.ao_ref_s* nonnull %dref35, %struct.ao_ref_s* %ref, i8 zeroext 0) #8, !dbg !4187
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #7, !dbg !4188
  br label %cleanup252

if.end41:                                         ; preds = %if.end16, %if.then23, %land.lhs.true19
  %bf.load43 = load i64, i64* %0, align 8, !dbg !4189
  %bf.cast456 = and i64 %bf.load43, 65535, !dbg !4190
  %cmp46 = icmp eq i64 %bf.cast456, 32, !dbg !4190
  br i1 %cmp46, label %land.lhs.true47, label %if.end72, !dbg !4191

land.lhs.true47:                                  ; preds = %if.end41
  %bf.cast5217 = and i64 %bf.load43, 67108864, !dbg !4192
  %tobool53 = icmp eq i64 %bf.cast5217, 0, !dbg !4192
  br i1 %tobool53, label %if.end72, label %land.lhs.true54, !dbg !4193

land.lhs.true54:                                  ; preds = %land.lhs.true47
  %bf.cast5918 = and i64 %bf.load43, 134217728, !dbg !4194
  %tobool60 = icmp eq i64 %bf.cast5918, 0, !dbg !4194
  br i1 %tobool60, label %if.then61, label %if.end72, !dbg !4195

if.then61:                                        ; preds = %land.lhs.true54
  br i1 %cmp18, label %if.end71, label %land.lhs.true63, !dbg !4196

land.lhs.true63:                                  ; preds = %if.then61
  %call64 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* nonnull %call17) #6, !dbg !4198
  %call65 = tail call %struct.bitmap_head_def* @ipa_reference_get_not_read_global(%struct.cgraph_node* %call64) #6, !dbg !4199
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call65, metadata !4123, metadata !DIExpression()), !dbg !4200
  %tobool66 = icmp eq %struct.bitmap_head_def* %call65, null, !dbg !4201
  br i1 %tobool66, label %if.end71, label %land.lhs.true67, !dbg !4202

land.lhs.true67:                                  ; preds = %land.lhs.true63
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4203
  %4 = load i32, i32* %uid, align 4, !dbg !4203
  %call68 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull %call65, i32 %4) #6, !dbg !4204
  %tobool69 = icmp eq i32 %call68, 0, !dbg !4204
  br i1 %tobool69, label %if.end71, label %cleanup, !dbg !4205

if.end71:                                         ; preds = %land.lhs.true67, %land.lhs.true63, %if.then61
  br label %cleanup, !dbg !4206

cleanup:                                          ; preds = %land.lhs.true67, %if.end71
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end71 ], [ false, %land.lhs.true67 ]
  br i1 %cleanup.dest.slot.0, label %cleanup.if.end72_crit_edge, label %process_args

cleanup.if.end72_crit_edge:                       ; preds = %cleanup
  %bf.load77.pre = load i64, i64* %0, align 8, !dbg !4207
  %.pre = and i64 %bf.load77.pre, 65535, !dbg !4207
  br label %if.end72

if.end72:                                         ; preds = %cleanup.if.end72_crit_edge, %land.lhs.true54, %land.lhs.true47, %if.end41
  %bf.cast79.pre-phi = phi i64 [ %.pre, %cleanup.if.end72_crit_edge ], [ 32, %land.lhs.true54 ], [ 32, %land.lhs.true47 ], [ %bf.cast456, %if.end41 ], !dbg !4207
  %and73 = and i32 %call1, 519, !dbg !4208
  %tobool74 = icmp eq i32 %and73, 0, !dbg !4208
  %arrayidx81 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast79.pre-phi, !dbg !4207
  %5 = load i32, i32* %arrayidx81, align 4, !dbg !4207
  %cmp82 = icmp eq i32 %5, 3, !dbg !4207
  br i1 %tobool74, label %if.else140, label %if.then75, !dbg !4209

if.then75:                                        ; preds = %if.end72
  br i1 %cmp82, label %if.then83, label %if.else, !dbg !4210

if.then83:                                        ; preds = %if.then75
  %call84 = tail call fastcc zeroext i8 @is_call_used(%union.tree_node* nonnull %call4) #8, !dbg !4211
  %tobool85 = icmp eq i8 %call84, 0, !dbg !4211
  br i1 %tobool85, label %process_args, label %cleanup252, !dbg !4214

if.else:                                          ; preds = %if.then75
  %cmp92 = icmp eq i64 %bf.cast79.pre-phi, 47, !dbg !4215
  br i1 %cmp92, label %land.lhs.true104, label %lor.lhs.false, !dbg !4215

lor.lhs.false:                                    ; preds = %if.else
  %cmp97 = icmp eq i64 %bf.cast79.pre-phi, 48, !dbg !4215
  br i1 %cmp97, label %land.lhs.true104, label %lor.lhs.false98, !dbg !4215

lor.lhs.false98:                                  ; preds = %lor.lhs.false
  %cmp103 = icmp eq i64 %bf.cast79.pre-phi, 49, !dbg !4215
  br i1 %cmp103, label %land.lhs.true104, label %cleanup252, !dbg !4216

land.lhs.true104:                                 ; preds = %lor.lhs.false98, %lor.lhs.false, %if.else
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4217
  %6 = bitcast %union.tree_node** %operands to i64**, !dbg !4217
  %7 = load i64*, i64** %6, align 8, !dbg !4217
  %bf.load107 = load i64, i64* %7, align 8, !dbg !4217
  %bf.cast10916 = and i64 %bf.load107, 65535, !dbg !4218
  %cmp110 = icmp eq i64 %bf.cast10916, 141, !dbg !4218
  br i1 %cmp110, label %if.then111, label %cleanup252, !dbg !4219

if.then111:                                       ; preds = %land.lhs.true104
  %ptr_info = getelementptr inbounds i64, i64* %7, i64 6, !dbg !4220
  %8 = bitcast i64* %ptr_info to %struct.ptr_info_def**, !dbg !4220
  %9 = load %struct.ptr_info_def*, %struct.ptr_info_def** %8, align 8, !dbg !4220
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %9, metadata !4126, metadata !DIExpression()), !dbg !4221
  %tobool115 = icmp eq %struct.ptr_info_def* %9, null, !dbg !4222
  br i1 %tobool115, label %cleanup134, label %if.end117, !dbg !4224

if.end117:                                        ; preds = %if.then111
  %pt = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %9, i64 0, i32 0, !dbg !4225
  %call118 = tail call zeroext i8 @pt_solution_includes_global(%struct.pt_solution* nonnull %pt) #6, !dbg !4227
  %tobool119 = icmp eq i8 %call118, 0, !dbg !4227
  br i1 %tobool119, label %lor.lhs.false120, label %cleanup134, !dbg !4228

lor.lhs.false120:                                 ; preds = %if.end117
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4229
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 3, !dbg !4230
  %11 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !4230
  %callused = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %11, i64 0, i32 5, !dbg !4231
  %call122 = tail call zeroext i8 @pt_solutions_intersect(%struct.pt_solution* nonnull %callused, %struct.pt_solution* nonnull %pt) #6, !dbg !4232
  %tobool124 = icmp eq i8 %call122, 0, !dbg !4232
  br i1 %tobool124, label %lor.lhs.false125, label %cleanup134, !dbg !4233

lor.lhs.false125:                                 ; preds = %lor.lhs.false120
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4234
  %gimple_df127 = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 3, !dbg !4235
  %13 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df127, align 8, !dbg !4235
  %escaped = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %13, i64 0, i32 4, !dbg !4236
  %call129 = tail call zeroext i8 @pt_solutions_intersect(%struct.pt_solution* nonnull %escaped, %struct.pt_solution* nonnull %pt) #6, !dbg !4237
  %tobool131 = icmp eq i8 %call129, 0, !dbg !4237
  br label %cleanup134, !dbg !4238

cleanup134:                                       ; preds = %lor.lhs.false120, %if.end117, %if.then111, %lor.lhs.false125
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then111 ], [ false, %lor.lhs.false120 ], [ false, %if.end117 ], [ %tobool131, %lor.lhs.false125 ]
  br i1 %cleanup.dest.slot.1, label %process_args, label %cleanup252

if.else140:                                       ; preds = %if.end72
  br i1 %cmp82, label %if.then149, label %if.else154, !dbg !4239

if.then149:                                       ; preds = %if.else140
  %call150 = tail call fastcc zeroext i8 @is_call_clobbered(%union.tree_node* nonnull %call4) #8, !dbg !4240
  %tobool151 = icmp eq i8 %call150, 0, !dbg !4240
  br i1 %tobool151, label %process_args, label %cleanup252, !dbg !4243

if.else154:                                       ; preds = %if.else140
  %cmp159 = icmp eq i64 %bf.cast79.pre-phi, 47, !dbg !4244
  br i1 %cmp159, label %land.lhs.true175, label %lor.lhs.false161, !dbg !4244

lor.lhs.false161:                                 ; preds = %if.else154
  %cmp166 = icmp eq i64 %bf.cast79.pre-phi, 48, !dbg !4244
  br i1 %cmp166, label %land.lhs.true175, label %lor.lhs.false168, !dbg !4244

lor.lhs.false168:                                 ; preds = %lor.lhs.false161
  %cmp173 = icmp eq i64 %bf.cast79.pre-phi, 49, !dbg !4244
  br i1 %cmp173, label %land.lhs.true175, label %cleanup252, !dbg !4245

land.lhs.true175:                                 ; preds = %lor.lhs.false168, %lor.lhs.false161, %if.else154
  %operands177 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4246
  %14 = bitcast %union.tree_node** %operands177 to i64**, !dbg !4246
  %15 = load i64*, i64** %14, align 8, !dbg !4246
  %bf.load180 = load i64, i64* %15, align 8, !dbg !4246
  %bf.cast18210 = and i64 %bf.load180, 65535, !dbg !4247
  %cmp183 = icmp eq i64 %bf.cast18210, 141, !dbg !4247
  br i1 %cmp183, label %if.then185, label %cleanup252, !dbg !4248

if.then185:                                       ; preds = %land.lhs.true175
  %ptr_info191 = getelementptr inbounds i64, i64* %15, i64 6, !dbg !4249
  %16 = bitcast i64* %ptr_info191 to %struct.ptr_info_def**, !dbg !4249
  %17 = load %struct.ptr_info_def*, %struct.ptr_info_def** %16, align 8, !dbg !4249
  call void @llvm.dbg.value(metadata %struct.ptr_info_def* %17, metadata !4132, metadata !DIExpression()), !dbg !4250
  %tobool192 = icmp eq %struct.ptr_info_def* %17, null, !dbg !4251
  br i1 %tobool192, label %cleanup209, label %if.end194, !dbg !4253

if.end194:                                        ; preds = %if.then185
  %pt195 = getelementptr inbounds %struct.ptr_info_def, %struct.ptr_info_def* %17, i64 0, i32 0, !dbg !4254
  %call196 = tail call zeroext i8 @pt_solution_includes_global(%struct.pt_solution* nonnull %pt195) #6, !dbg !4256
  %tobool198 = icmp eq i8 %call196, 0, !dbg !4256
  br i1 %tobool198, label %lor.lhs.false199, label %cleanup209, !dbg !4257

lor.lhs.false199:                                 ; preds = %if.end194
  %18 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4258
  %gimple_df201 = getelementptr inbounds %struct.function, %struct.function* %18, i64 0, i32 3, !dbg !4259
  %19 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df201, align 8, !dbg !4259
  %escaped202 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %19, i64 0, i32 4, !dbg !4260
  %call204 = tail call zeroext i8 @pt_solutions_intersect(%struct.pt_solution* nonnull %escaped202, %struct.pt_solution* nonnull %pt195) #6, !dbg !4261
  %tobool206 = icmp eq i8 %call204, 0, !dbg !4261
  br label %cleanup209, !dbg !4262

cleanup209:                                       ; preds = %if.end194, %if.then185, %lor.lhs.false199
  %cleanup.dest.slot.2 = phi i1 [ false, %if.then185 ], [ false, %if.end194 ], [ %tobool206, %lor.lhs.false199 ]
  br i1 %cleanup.dest.slot.2, label %process_args, label %cleanup252

process_args:                                     ; preds = %land.lhs.true12, %if.then83, %if.then149, %cleanup134, %cleanup209, %cleanup, %entry
  call void @llvm.dbg.label(metadata !4144), !dbg !4263
  call void @llvm.dbg.value(metadata i32 0, metadata !4113, metadata !DIExpression()), !dbg !4145
  %20 = bitcast %struct.ao_ref_s* %r to i8*, !dbg !4264
  br label %for.cond, !dbg !4265

for.cond:                                         ; preds = %for.inc, %process_args
  %i.0 = phi i32 [ 0, %process_args ], [ %inc, %for.inc ], !dbg !4266
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4113, metadata !DIExpression()), !dbg !4145
  %call216 = call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call) #8, !dbg !4267
  %cmp217 = icmp ult i32 %i.0, %call216, !dbg !4268
  br i1 %cmp217, label %for.body, label %cleanup252.loopexit, !dbg !4269

for.body:                                         ; preds = %for.cond
  %call219 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 %i.0) #8, !dbg !4270
  call void @llvm.dbg.value(metadata %union.tree_node* %call219, metadata !4137, metadata !DIExpression()), !dbg !4271
  %21 = getelementptr inbounds %union.tree_node, %union.tree_node* %call219, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4272
  %bf.load221 = load i64, i64* %21, align 8, !dbg !4272
  %bf.cast22311 = and i64 %bf.load221, 65535, !dbg !4274
  %cmp224 = icmp eq i64 %bf.cast22311, 150, !dbg !4274
  br i1 %cmp224, label %if.then226, label %if.end230, !dbg !4275

if.then226:                                       ; preds = %for.body
  %operands228 = getelementptr inbounds %union.tree_node, %union.tree_node* %call219, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4276
  %22 = load %union.tree_node*, %union.tree_node** %operands228, align 8, !dbg !4276
  call void @llvm.dbg.value(metadata %union.tree_node* %22, metadata !4137, metadata !DIExpression()), !dbg !4271
  %.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4277
  %bf.load232.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !4278
  %.pre22 = and i64 %bf.load232.pre, 65535, !dbg !4279
  br label %if.end230, !dbg !4280

if.end230:                                        ; preds = %if.then226, %for.body
  %bf.cast23412.pre-phi = phi i64 [ %.pre22, %if.then226 ], [ %bf.cast22311, %for.body ], !dbg !4279
  %op.0 = phi %union.tree_node* [ %22, %if.then226 ], [ %call219, %for.body ], !dbg !4271
  call void @llvm.dbg.value(metadata %union.tree_node* %op.0, metadata !4137, metadata !DIExpression()), !dbg !4271
  %cmp235 = icmp eq i64 %bf.cast23412.pre-phi, 141, !dbg !4279
  br i1 %cmp235, label %if.end248, label %land.lhs.true237, !dbg !4281

land.lhs.true237:                                 ; preds = %if.end230
  %call238 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %op.0) #6, !dbg !4282
  %tobool239 = icmp eq i8 %call238, 0, !dbg !4282
  br i1 %tobool239, label %if.then240, label %if.end248, !dbg !4283

if.then240:                                       ; preds = %land.lhs.true237
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %20) #7, !dbg !4284
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r, metadata !4141, metadata !DIExpression(DW_OP_deref)), !dbg !4264
  call void @ao_ref_init(%struct.ao_ref_s* nonnull %r, %union.tree_node* %op.0) #8, !dbg !4285
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %r, metadata !4141, metadata !DIExpression(DW_OP_deref)), !dbg !4264
  %call241 = call zeroext i8 @refs_may_alias_p_1(%struct.ao_ref_s* nonnull %r, %struct.ao_ref_s* %ref, i8 zeroext 1) #8, !dbg !4286
  %tobool242 = icmp ne i8 %call241, 0, !dbg !4286
  %. = zext i1 %tobool242 to i32, !dbg !4277
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %20) #7, !dbg !4288
  br i1 %tobool242, label %cleanup249, label %if.end248

if.end248:                                        ; preds = %if.then240, %land.lhs.true237, %if.end230
  br label %cleanup249, !dbg !4289

cleanup249:                                       ; preds = %if.then240, %if.end248
  %cleanup.dest.slot.4 = phi i32 [ 0, %if.end248 ], [ %., %if.then240 ]
  %cond = icmp eq i32 %cleanup.dest.slot.4, 0
  br i1 %cond, label %for.inc, label %cleanup252.loopexit

for.inc:                                          ; preds = %cleanup249
  %inc = add i32 %i.0, 1, !dbg !4290
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4113, metadata !DIExpression()), !dbg !4145
  br label %for.cond, !dbg !4291, !llvm.loop !4292

cleanup252.loopexit:                              ; preds = %cleanup249, %for.cond
  %retval.10.ph = phi i8 [ 0, %for.cond ], [ 1, %cleanup249 ]
  br label %cleanup252, !dbg !4294

cleanup252:                                       ; preds = %cleanup252.loopexit, %if.then83, %if.then149, %if.end, %lor.lhs.false168, %land.lhs.true175, %lor.lhs.false98, %land.lhs.true104, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %if.then23, %cleanup134, %cleanup209, %sw.bb34, %if.end31
  %retval.10 = phi i8 [ 1, %cleanup134 ], [ 1, %cleanup209 ], [ %call39, %sw.bb34 ], [ %call33, %if.end31 ], [ 1, %if.end ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 0, %if.then23 ], [ 1, %if.then83 ], [ 1, %land.lhs.true104 ], [ 1, %lor.lhs.false98 ], [ 1, %if.then149 ], [ 1, %land.lhs.true175 ], [ 1, %lor.lhs.false168 ], [ %retval.10.ph, %cleanup252.loopexit ]
  ret i8 %retval.10, !dbg !4294
}

declare dso_local i32 @gimple_call_flags(%union.gimple_statement_d*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_chain(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4295 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4297, metadata !DIExpression()), !dbg !4298
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #8, !dbg !4299
  ret %union.tree_node* %call, !dbg !4300
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_global_var(%union.tree_node* %t) unnamed_addr #0 !dbg !4301 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4303, metadata !DIExpression()), !dbg !4304
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4305
  %bf.load = load i64, i64* %0, align 8, !dbg !4305
  %bf.cast1 = and i64 %bf.load, 67108864, !dbg !4305
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !4305
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !4306

lor.rhs:                                          ; preds = %entry
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4307
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !4307
  %bf.load1 = load i64, i64* %1, align 8, !dbg !4307
  %bf.cast42 = lshr i64 %bf.load1, 25, !dbg !4306
  %2 = trunc i64 %bf.cast42 to i8, !dbg !4306
  %3 = and i8 %2, 1, !dbg !4306
  br label %lor.end, !dbg !4306

lor.end:                                          ; preds = %entry, %lor.rhs
  %4 = phi i8 [ 1, %entry ], [ %3, %lor.rhs ]
  ret i8 %4, !dbg !4308
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4309 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4311, metadata !DIExpression()), !dbg !4313
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #8, !dbg !4314
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4312, metadata !DIExpression()), !dbg !4313
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4315
  %bf.load = load i64, i64* %0, align 8, !dbg !4315
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4317
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !4317
  br i1 %cmp, label %if.then, label %cleanup, !dbg !4318

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4319
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !4319
  br label %cleanup, !dbg !4320

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !4313
  ret %union.tree_node* %retval.0, !dbg !4321
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4322 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4324, metadata !DIExpression()), !dbg !4326
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !4327
  call void @llvm.dbg.value(metadata i32 %call, metadata !4325, metadata !DIExpression()), !dbg !4326
  %sub = add i32 %call, -3, !dbg !4328
  ret i32 %sub, !dbg !4329
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4330 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4332, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 %index, metadata !4333, metadata !DIExpression()), !dbg !4334
  %add = add i32 %index, 3, !dbg !4335
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add) #8, !dbg !4336
  ret %union.tree_node* %call, !dbg !4337
}

declare dso_local %struct.bitmap_head_def* @ipa_reference_get_not_read_global(%struct.cgraph_node*) local_unnamed_addr #1

declare dso_local %struct.cgraph_node* @cgraph_node(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_call_used(%union.tree_node* %var) unnamed_addr #0 !dbg !4338 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4340, metadata !DIExpression()), !dbg !4341
  %call = tail call fastcc zeroext i8 @is_call_clobbered(%union.tree_node* %var) #8, !dbg !4342
  %tobool = icmp eq i8 %call, 0, !dbg !4342
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !4343

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var) #8, !dbg !4344
  %tobool3 = icmp eq i8 %call1, 0, !dbg !4344
  br i1 %tobool3, label %lor.end, label %land.rhs, !dbg !4345

land.rhs:                                         ; preds = %lor.rhs
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4346
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !4347
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !4347
  %callused = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 5, !dbg !4348
  %call4 = tail call zeroext i8 @pt_solution_includes(%struct.pt_solution* nonnull %callused, %union.tree_node* %var) #6, !dbg !4349
  %tobool6 = icmp ne i8 %call4, 0, !dbg !4345
  %phitmp = zext i1 %tobool6 to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry, %land.rhs
  %2 = phi i8 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !4350
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_call_clobbered(%union.tree_node* %var) unnamed_addr #0 !dbg !4351 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4353, metadata !DIExpression()), !dbg !4354
  %call = tail call fastcc zeroext i8 @is_global_var(%union.tree_node* %var) #8, !dbg !4355
  %tobool = icmp eq i8 %call, 0, !dbg !4355
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !4356

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var) #8, !dbg !4357
  %tobool3 = icmp eq i8 %call1, 0, !dbg !4357
  br i1 %tobool3, label %lor.end, label %land.rhs, !dbg !4358

land.rhs:                                         ; preds = %lor.rhs
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4359
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !4360
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !4360
  %escaped = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 4, !dbg !4361
  %call4 = tail call zeroext i8 @pt_solution_includes(%struct.pt_solution* nonnull %escaped, %union.tree_node* %var) #6, !dbg !4362
  %tobool6 = icmp ne i8 %call4, 0, !dbg !4358
  %phitmp = zext i1 %tobool6 to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry, %land.rhs
  %2 = phi i8 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !4363
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4364 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4366, metadata !DIExpression()), !dbg !4367
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !4368
  ret %union.tree_node* %call, !dbg !4369
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4370 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4372, metadata !DIExpression()), !dbg !4373
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !4374
  %0 = load i32, i32* %num_ops, align 4, !dbg !4374
  ret i32 %0, !dbg !4375
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(%union.tree_node* %ptr, %struct.ao_ref_s* %ref) unnamed_addr #4 !dbg !4376 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr, metadata !4380, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !4381, metadata !DIExpression()), !dbg !4383
  %call = tail call %union.tree_node* @ao_ref_base(%struct.ao_ref_s* %ref) #8, !dbg !4384
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4382, metadata !DIExpression()), !dbg !4383
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4385
  %bf.load = load i64, i64* %0, align 8, !dbg !4385
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4385
  %cmp = icmp eq i64 %bf.cast1, 47, !dbg !4385
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4385

lor.lhs.false:                                    ; preds = %entry
  %cmp6 = icmp eq i64 %bf.cast1, 48, !dbg !4385
  br i1 %cmp6, label %if.then, label %lor.lhs.false7, !dbg !4385

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %cmp12 = icmp eq i64 %bf.cast1, 49, !dbg !4385
  br i1 %cmp12, label %if.then, label %if.else, !dbg !4387

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4388
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !4388
  %call13 = tail call fastcc zeroext i8 @ptr_derefs_may_alias_p(%union.tree_node* %ptr, %union.tree_node* %1) #8, !dbg !4389
  br label %cleanup, !dbg !4390

if.else:                                          ; preds = %lor.lhs.false7
  %cmp18 = icmp eq i64 %bf.cast1, 32, !dbg !4391
  br i1 %cmp18, label %if.then58, label %lor.lhs.false19, !dbg !4391

lor.lhs.false19:                                  ; preds = %if.else
  %cmp24 = icmp eq i64 %bf.cast1, 34, !dbg !4391
  br i1 %cmp24, label %if.then58, label %lor.lhs.false25, !dbg !4391

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %cmp30 = icmp eq i64 %bf.cast1, 36, !dbg !4391
  br i1 %cmp30, label %if.then58, label %lor.lhs.false31, !dbg !4391

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %cmp36 = icmp eq i64 %bf.cast1, 141, !dbg !4391
  br i1 %cmp36, label %land.lhs.true, label %cleanup, !dbg !4391

land.lhs.true:                                    ; preds = %lor.lhs.false31
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4391
  %2 = bitcast i32* %var to i64**, !dbg !4391
  %3 = load i64*, i64** %2, align 8, !dbg !4391
  %bf.load38 = load i64, i64* %3, align 8, !dbg !4391
  %bf.cast408 = and i64 %bf.load38, 65535, !dbg !4391
  %cmp41 = icmp eq i64 %bf.cast408, 32, !dbg !4391
  br i1 %cmp41, label %if.then58, label %lor.lhs.false42, !dbg !4391

lor.lhs.false42:                                  ; preds = %land.lhs.true
  %cmp49 = icmp eq i64 %bf.cast408, 34, !dbg !4391
  br i1 %cmp49, label %if.then58, label %lor.lhs.false50, !dbg !4391

lor.lhs.false50:                                  ; preds = %lor.lhs.false42
  %cmp57 = icmp eq i64 %bf.cast408, 36, !dbg !4391
  br i1 %cmp57, label %if.then58, label %cleanup, !dbg !4393

if.then58:                                        ; preds = %lor.lhs.false50, %lor.lhs.false42, %land.lhs.true, %lor.lhs.false25, %lor.lhs.false19, %if.else
  %call59 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(%union.tree_node* %ptr, %union.tree_node* %call) #8, !dbg !4394
  br label %cleanup, !dbg !4395

cleanup:                                          ; preds = %lor.lhs.false50, %lor.lhs.false31, %if.then58, %if.then
  %retval.0 = phi i8 [ %call13, %if.then ], [ %call59, %if.then58 ], [ 1, %lor.lhs.false31 ], [ 1, %lor.lhs.false50 ], !dbg !4383
  ret i8 %retval.0, !dbg !4396
}

declare dso_local %struct.bitmap_head_def* @ipa_reference_get_not_written_global(%struct.cgraph_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4397 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4402, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i32 %index, metadata !4403, metadata !DIExpression()), !dbg !4404
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !4405
  %0 = load i32, i32* %capacity, align 8, !dbg !4405
  %cmp = icmp ult i32 %0, %index, !dbg !4405
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4405

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !4405
  br label %cond.end, !dbg !4405

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !4406
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !4406
  ret %struct.phi_arg_d* %arrayidx, !dbg !4407
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !4408 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !4413, metadata !DIExpression()), !dbg !4414
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !4415
  ret %union.tree_node* %0, !dbg !4416
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4417 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4419, metadata !DIExpression()), !dbg !4420
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !4421
  ret %union.tree_node** %result, !dbg !4422
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4423 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4425, metadata !DIExpression()), !dbg !4426
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4427
  %cmp = icmp ugt i32 %call, 5, !dbg !4428
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4429

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4430
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4431
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4432
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !4433 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4437, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64 %index, metadata !4438, metadata !DIExpression()), !dbg !4440
  %conv = trunc i64 %index to i32, !dbg !4441
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #8, !dbg !4442
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !4439, metadata !DIExpression()), !dbg !4440
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4443
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #8, !dbg !4444
  ret %union.tree_node* %call1, !dbg !4445
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1768, !1769, !1770}
!llvm.ident = !{!1771}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 64))
!1 = distinct !DIGlobalVariable(name: "alias_stats", scope: !2, file: !3, line: 112, type: !1757, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !448, globals: !1755, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-alias.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !335, !340, !345, !363, !370, !377, !416, !422}
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
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !378, line: 51, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!380 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!384 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!385 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!386 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!387 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!388 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!389 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!390 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!391 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!392 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!393 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!394 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!395 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!396 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!397 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!398 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!399 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!400 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!401 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!402 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!403 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!404 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!405 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!406 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!407 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!408 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!409 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!410 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!411 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!412 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!413 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!414 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!415 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!416 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !378, line: 80, baseType: !7, size: 32, elements: !417)
!417 = !{!418, !419, !420, !421}
!418 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!419 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!420 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!421 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!422 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !378, line: 727, baseType: !7, size: 32, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!424 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!425 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!426 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!427 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!428 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!429 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!430 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!431 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!432 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!433 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!434 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!435 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!436 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!437 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!438 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!439 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!440 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!441 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!442 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!443 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!444 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!445 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!446 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!447 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!448 = !{!449, !450, !451, !452, !455, !456, !134, !458, !1478, !1300, !512, !416, !783, !1753, !817, !453}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!451 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !459, line: 56, baseType: !460)
!459 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !462)
!462 = !{!463, !496, !502, !515, !534, !545, !550, !559, !565, !578, !590, !628, !1086, !1114, !1131, !1132, !1137, !1146, !1152, !1157, !1161, !1165, !1404, !1451, !1457, !1463, !1470, !1483, !1497, !1514, !1526, !1548, !1563, !1735}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !461, file: !135, line: 3372, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !465)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !464, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !464, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !464, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !464, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !464, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !464, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !464, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !464, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !464, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !464, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !464, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !464, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !464, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !464, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !464, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !464, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !464, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !464, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !464, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !464, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !464, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !464, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !464, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !464, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !464, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !464, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !464, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !464, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !464, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !464, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !461, file: !135, line: 3373, baseType: !497, size: 192)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !498)
!498 = !{!499, !500, !501}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !497, file: !135, line: 403, baseType: !464, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !497, file: !135, line: 404, baseType: !458, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !135, line: 405, baseType: !458, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !461, file: !135, line: 3374, baseType: !503, size: 320)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !503, file: !135, line: 1385, baseType: !497, size: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !503, file: !135, line: 1386, baseType: !507, size: 128, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !508, line: 58, baseType: !509)
!508 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 54, size: 128, elements: !510)
!510 = !{!511, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !509, file: !508, line: 56, baseType: !512, size: 64)
!512 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !509, file: !508, line: 57, baseType: !514, size: 64, offset: 64)
!514 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !461, file: !135, line: 3375, baseType: !516, size: 256)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !516, file: !135, line: 1398, baseType: !497, size: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !516, file: !135, line: 1399, baseType: !520, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !522, line: 52, size: 256, elements: !523)
!522 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!523 = !{!524, !525, !526, !527, !528, !529, !530}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !521, file: !522, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !521, file: !522, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !521, file: !522, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !521, file: !522, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !521, file: !522, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !521, file: !522, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !521, file: !522, line: 62, baseType: !531, size: 192, offset: 64)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 192, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 3)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !461, file: !135, line: 3376, baseType: !535, size: 256)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !535, file: !135, line: 1409, baseType: !497, size: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !535, file: !135, line: 1410, baseType: !539, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !541, line: 27, size: 192, elements: !542)
!541 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !540, file: !541, line: 29, baseType: !507, size: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !540, file: !541, line: 30, baseType: !5, size: 32, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !461, file: !135, line: 3377, baseType: !546, size: 256)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !546, file: !135, line: 1438, baseType: !497, size: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !546, file: !135, line: 1439, baseType: !458, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !461, file: !135, line: 3378, baseType: !551, size: 256)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !552)
!552 = !{!553, !554, !555}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !551, file: !135, line: 1419, baseType: !497, size: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !551, file: !135, line: 1420, baseType: !451, size: 32, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !551, file: !135, line: 1421, baseType: !556, size: 8, offset: 224)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 8, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 1)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !461, file: !135, line: 3379, baseType: !560, size: 320)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !561)
!561 = !{!562, !563, !564}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !560, file: !135, line: 1429, baseType: !497, size: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !560, file: !135, line: 1430, baseType: !458, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !560, file: !135, line: 1431, baseType: !458, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !461, file: !135, line: 3380, baseType: !566, size: 320)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !566, file: !135, line: 1461, baseType: !497, size: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !566, file: !135, line: 1462, baseType: !570, size: 128, offset: 192)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !571, line: 31, size: 128, elements: !572)
!571 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!572 = !{!573, !576, !577}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !570, file: !571, line: 32, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !570, file: !571, line: 33, baseType: !7, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !570, file: !571, line: 34, baseType: !7, size: 32, offset: 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !461, file: !135, line: 3381, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !580)
!580 = !{!581, !582, !587, !588, !589}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !579, file: !135, line: 2508, baseType: !497, size: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !579, file: !135, line: 2509, baseType: !583, size: 32, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !584, line: 58, baseType: !585)
!584 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !586, line: 44, baseType: !7)
!586 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!587 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !579, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !579, file: !135, line: 2511, baseType: !458, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !579, file: !135, line: 2512, baseType: !458, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !461, file: !135, line: 3382, baseType: !591, size: 896)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !591, file: !135, line: 2653, baseType: !579, size: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !591, file: !135, line: 2654, baseType: !458, size: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !591, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !591, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !591, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !591, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !591, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !591, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !591, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !591, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !591, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !591, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !591, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !591, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !591, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !591, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !591, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !591, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !591, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !591, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !591, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !591, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !591, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !591, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !591, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !591, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !591, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !591, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !591, file: !135, line: 2705, baseType: !458, size: 64, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !591, file: !135, line: 2706, baseType: !458, size: 64, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !591, file: !135, line: 2707, baseType: !458, size: 64, offset: 704)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !591, file: !135, line: 2708, baseType: !458, size: 64, offset: 768)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !591, file: !135, line: 2711, baseType: !626, size: 64, offset: 832)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !461, file: !135, line: 3383, baseType: !629, size: 960)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !629, file: !135, line: 2757, baseType: !591, size: 896)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !629, file: !135, line: 2758, baseType: !633, size: 64, offset: 896)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !459, line: 50, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !636, line: 240, size: 384, elements: !637)
!636 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !635, file: !636, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !635, file: !636, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !635, file: !636, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !635, file: !636, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !635, file: !636, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !635, file: !636, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !635, file: !636, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !635, file: !636, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !635, file: !636, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !635, file: !636, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !635, file: !636, line: 321, baseType: !649, size: 320, offset: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !636, line: 315, size: 320, elements: !650)
!650 = !{!651, !1053, !1055, !1084, !1085}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !649, file: !636, line: 316, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 64, elements: !557)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !636, line: 183, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !636, line: 166, size: 64, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !668, !669, !681, !684, !744, !745, !1030, !1043, !1050}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !654, file: !636, line: 168, baseType: !451, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !654, file: !636, line: 169, baseType: !7, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !654, file: !636, line: 170, baseType: !456, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !654, file: !636, line: 171, baseType: !633, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !654, file: !636, line: 172, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !459, line: 53, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !636, line: 359, size: 128, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !663, file: !636, line: 360, baseType: !451, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !663, file: !636, line: 361, baseType: !667, size: 64, offset: 64)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 64, elements: !557)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !654, file: !636, line: 173, baseType: !5, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !654, file: !636, line: 174, baseType: !670, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !636, line: 133, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !636, line: 115, size: 32, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !671, file: !636, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !671, file: !636, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !671, file: !636, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !671, file: !636, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !671, file: !636, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !671, file: !636, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !671, file: !636, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !671, file: !636, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !654, file: !636, line: 175, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !636, line: 175, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !654, file: !636, line: 176, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !687, line: 75, size: 256, elements: !688)
!687 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!688 = !{!689, !703, !704, !705}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !686, file: !687, line: 76, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !687, line: 68, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !687, line: 63, size: 320, elements: !693)
!693 = !{!694, !696, !697, !698}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !687, line: 64, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !692, file: !687, line: 65, baseType: !695, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !692, file: !687, line: 66, baseType: !7, size: 32, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !692, file: !687, line: 67, baseType: !699, size: 128, offset: 192)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 128, elements: !701)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !687, line: 29, baseType: !512)
!701 = !{!702}
!702 = !DISubrange(count: 2)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !686, file: !687, line: 77, baseType: !690, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !686, file: !687, line: 78, baseType: !7, size: 32, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !686, file: !687, line: 79, baseType: !706, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !687, line: 49, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !687, line: 45, size: 832, elements: !709)
!709 = !{!710, !711, !712}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !708, file: !687, line: 46, baseType: !695, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !708, file: !687, line: 47, baseType: !685, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !708, file: !687, line: 48, baseType: !713, size: 704, offset: 128)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !714, line: 164, size: 704, elements: !715)
!714 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!715 = !{!716, !717, !727, !728, !729, !730, !731, !732, !736, !740, !741, !742, !743}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !713, file: !714, line: 166, baseType: !514, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !713, file: !714, line: 167, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !714, line: 157, size: 192, elements: !720)
!720 = !{!721, !722, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !719, file: !714, line: 159, baseType: !453, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !719, file: !714, line: 160, baseType: !718, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !719, file: !714, line: 161, baseType: !724, size: 32, offset: 128)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 32, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 4)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !713, file: !714, line: 168, baseType: !453, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !713, file: !714, line: 169, baseType: !453, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !713, file: !714, line: 170, baseType: !453, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !713, file: !714, line: 171, baseType: !514, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !713, file: !714, line: 172, baseType: !451, size: 32, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !713, file: !714, line: 176, baseType: !733, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!718, !455, !514}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !713, file: !714, line: 177, baseType: !737, size: 64, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !455, !718}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !713, file: !714, line: 178, baseType: !455, size: 64, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !713, file: !714, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !713, file: !714, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !713, file: !714, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !654, file: !636, line: 177, baseType: !458, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !654, file: !636, line: 178, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !330, line: 217, size: 832, elements: !748)
!748 = !{!749, !995, !996, !997, !1000, !1004, !1005, !1006, !1024, !1025, !1026, !1027, !1028, !1029}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !747, file: !330, line: 219, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !330, line: 151, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !330, line: 151, size: 128, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !752, file: !330, line: 151, baseType: !755, size: 128)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !330, line: 150, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !330, line: 150, size: 128, elements: !757)
!757 = !{!758, !759, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !756, file: !330, line: 150, baseType: !7, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !756, file: !330, line: 150, baseType: !7, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !756, file: !330, line: 150, baseType: !761, size: 64, offset: 64)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 64, elements: !557)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !459, line: 108, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !330, line: 122, size: 512, elements: !765)
!765 = !{!766, !767, !768, !987, !988, !989, !990, !991, !992, !993}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !764, file: !330, line: 124, baseType: !746, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !764, file: !330, line: 125, baseType: !746, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !764, file: !330, line: 131, baseType: !769, size: 64, offset: 128)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !330, line: 128, size: 64, elements: !770)
!770 = !{!771, !986}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !769, file: !330, line: 129, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !459, line: 66, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !378, line: 143, size: 192, elements: !775)
!775 = !{!776, !984, !985}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !774, file: !378, line: 145, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !459, line: 69, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !378, line: 136, size: 192, elements: !780)
!780 = !{!781, !982, !983}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !779, file: !378, line: 137, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !459, line: 58, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !378, line: 737, size: 768, elements: !785)
!785 = !{!786, !803, !837, !843, !848, !853, !860, !866, !872, !877, !891, !896, !902, !907, !917, !922, !940, !947, !954, !960, !965, !971, !977}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !784, file: !378, line: 738, baseType: !787, size: 256)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !378, line: 271, size: 256, elements: !788)
!788 = !{!789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !787, file: !378, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !787, file: !378, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !787, file: !378, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !787, file: !378, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !787, file: !378, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !787, file: !378, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !787, file: !378, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !787, file: !378, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !787, file: !378, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !787, file: !378, line: 312, baseType: !7, size: 32, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !787, file: !378, line: 316, baseType: !583, size: 32, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !787, file: !378, line: 319, baseType: !7, size: 32, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !787, file: !378, line: 323, baseType: !746, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !787, file: !378, line: 327, baseType: !458, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !784, file: !378, line: 739, baseType: !804, size: 448)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !378, line: 350, size: 448, elements: !805)
!805 = !{!806, !835}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !804, file: !378, line: 353, baseType: !807, size: 384)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !378, line: 333, size: 384, elements: !808)
!808 = !{!809, !810, !818}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !807, file: !378, line: 336, baseType: !787, size: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !807, file: !378, line: 343, baseType: !811, size: 64, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !813, line: 37, size: 128, elements: !814)
!813 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !812, file: !813, line: 39, baseType: !811, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !812, file: !813, line: 40, baseType: !817, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !807, file: !378, line: 344, baseType: !819, size: 64, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !813, line: 45, size: 320, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !820, file: !813, line: 47, baseType: !819, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !820, file: !813, line: 48, baseType: !824, size: 256, offset: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !825)
!825 = !{!826, !828, !829, !834}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !824, file: !135, line: 1884, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !824, file: !135, line: 1885, baseType: !827, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !824, file: !135, line: 1891, baseType: !830, size: 64, offset: 128)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !135, line: 1891, size: 64, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !830, file: !135, line: 1891, baseType: !782, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !830, file: !135, line: 1891, baseType: !458, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !824, file: !135, line: 1892, baseType: !817, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !804, file: !378, line: 359, baseType: !836, size: 64, offset: 384)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 64, elements: !557)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !784, file: !378, line: 740, baseType: !838, size: 512)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !378, line: 365, size: 512, elements: !839)
!839 = !{!840, !841, !842}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !838, file: !378, line: 368, baseType: !807, size: 384)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !838, file: !378, line: 373, baseType: !458, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !838, file: !378, line: 374, baseType: !458, size: 64, offset: 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !784, file: !378, line: 741, baseType: !844, size: 576)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !378, line: 380, size: 576, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !844, file: !378, line: 383, baseType: !838, size: 512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !844, file: !378, line: 389, baseType: !836, size: 64, offset: 512)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !784, file: !378, line: 742, baseType: !849, size: 320)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !378, line: 395, size: 320, elements: !850)
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !849, file: !378, line: 397, baseType: !787, size: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !849, file: !378, line: 400, baseType: !772, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !784, file: !378, line: 743, baseType: !854, size: 448)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !378, line: 406, size: 448, elements: !855)
!855 = !{!856, !857, !858, !859}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !854, file: !378, line: 408, baseType: !787, size: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !854, file: !378, line: 412, baseType: !458, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !854, file: !378, line: 420, baseType: !458, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !854, file: !378, line: 423, baseType: !772, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !784, file: !378, line: 744, baseType: !861, size: 384)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !378, line: 429, size: 384, elements: !862)
!862 = !{!863, !864, !865}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !861, file: !378, line: 431, baseType: !787, size: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !861, file: !378, line: 434, baseType: !458, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !861, file: !378, line: 437, baseType: !772, size: 64, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !784, file: !378, line: 745, baseType: !867, size: 384)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !378, line: 443, size: 384, elements: !868)
!868 = !{!869, !870, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !867, file: !378, line: 445, baseType: !787, size: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !867, file: !378, line: 449, baseType: !458, size: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !867, file: !378, line: 453, baseType: !772, size: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !784, file: !378, line: 746, baseType: !873, size: 320)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !378, line: 459, size: 320, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !873, file: !378, line: 461, baseType: !787, size: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !873, file: !378, line: 464, baseType: !458, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !784, file: !378, line: 747, baseType: !878, size: 768)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !378, line: 469, size: 768, elements: !879)
!879 = !{!880, !881, !882, !883, !884}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !878, file: !378, line: 471, baseType: !787, size: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !878, file: !378, line: 474, baseType: !7, size: 32, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !878, file: !378, line: 475, baseType: !7, size: 32, offset: 288)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !878, file: !378, line: 478, baseType: !458, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !878, file: !378, line: 481, baseType: !885, size: 384, offset: 384)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 384, elements: !557)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !887)
!887 = !{!888, !889, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !886, file: !135, line: 1920, baseType: !824, size: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !886, file: !135, line: 1921, baseType: !458, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !886, file: !135, line: 1922, baseType: !583, size: 32, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !784, file: !378, line: 748, baseType: !892, size: 320)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !378, line: 487, size: 320, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !892, file: !378, line: 490, baseType: !787, size: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !892, file: !378, line: 494, baseType: !451, size: 32, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !784, file: !378, line: 749, baseType: !897, size: 384)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !378, line: 500, size: 384, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !897, file: !378, line: 502, baseType: !787, size: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !897, file: !378, line: 506, baseType: !772, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !897, file: !378, line: 510, baseType: !772, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !784, file: !378, line: 750, baseType: !903, size: 320)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !378, line: 529, size: 320, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !903, file: !378, line: 531, baseType: !787, size: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !903, file: !378, line: 540, baseType: !772, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !784, file: !378, line: 751, baseType: !908, size: 704)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !378, line: 546, size: 704, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !908, file: !378, line: 549, baseType: !838, size: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !908, file: !378, line: 553, baseType: !456, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !908, file: !378, line: 557, baseType: !450, size: 8, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !908, file: !378, line: 558, baseType: !450, size: 8, offset: 584)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !908, file: !378, line: 559, baseType: !450, size: 8, offset: 592)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !908, file: !378, line: 560, baseType: !450, size: 8, offset: 600)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !908, file: !378, line: 566, baseType: !836, size: 64, offset: 640)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !784, file: !378, line: 752, baseType: !918, size: 384)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !378, line: 571, size: 384, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !918, file: !378, line: 573, baseType: !849, size: 320)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !918, file: !378, line: 577, baseType: !458, size: 64, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !784, file: !378, line: 753, baseType: !923, size: 576)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !378, line: 600, size: 576, elements: !924)
!924 = !{!925, !926, !927, !930, !939}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !923, file: !378, line: 602, baseType: !849, size: 320)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !923, file: !378, line: 605, baseType: !458, size: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !923, file: !378, line: 609, baseType: !928, size: 64, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !929, line: 46, baseType: !512)
!929 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!930 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !923, file: !378, line: 612, baseType: !931, size: 64, offset: 448)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !378, line: 581, size: 320, elements: !933)
!933 = !{!934, !935, !936, !937, !938}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !932, file: !378, line: 583, baseType: !134, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !932, file: !378, line: 586, baseType: !458, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !932, file: !378, line: 589, baseType: !458, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !932, file: !378, line: 592, baseType: !458, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !932, file: !378, line: 595, baseType: !458, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !923, file: !378, line: 616, baseType: !772, size: 64, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !784, file: !378, line: 754, baseType: !941, size: 512)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !378, line: 622, size: 512, elements: !942)
!942 = !{!943, !944, !945, !946}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !941, file: !378, line: 624, baseType: !849, size: 320)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !941, file: !378, line: 628, baseType: !458, size: 64, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !941, file: !378, line: 632, baseType: !458, size: 64, offset: 384)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !941, file: !378, line: 636, baseType: !458, size: 64, offset: 448)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !784, file: !378, line: 755, baseType: !948, size: 704)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !378, line: 642, size: 704, elements: !949)
!949 = !{!950, !951, !952, !953}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !948, file: !378, line: 644, baseType: !941, size: 512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !948, file: !378, line: 648, baseType: !458, size: 64, offset: 512)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !948, file: !378, line: 652, baseType: !458, size: 64, offset: 576)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !948, file: !378, line: 653, baseType: !458, size: 64, offset: 640)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !784, file: !378, line: 756, baseType: !955, size: 448)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !378, line: 663, size: 448, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !955, file: !378, line: 665, baseType: !849, size: 320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !955, file: !378, line: 668, baseType: !458, size: 64, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !955, file: !378, line: 673, baseType: !458, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !784, file: !378, line: 757, baseType: !961, size: 384)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !378, line: 694, size: 384, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !961, file: !378, line: 696, baseType: !849, size: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !961, file: !378, line: 699, baseType: !458, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !784, file: !378, line: 758, baseType: !966, size: 384)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !378, line: 681, size: 384, elements: !967)
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !966, file: !378, line: 683, baseType: !787, size: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !966, file: !378, line: 686, baseType: !458, size: 64, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !966, file: !378, line: 689, baseType: !458, size: 64, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !784, file: !378, line: 759, baseType: !972, size: 384)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !378, line: 707, size: 384, elements: !973)
!973 = !{!974, !975, !976}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !972, file: !378, line: 709, baseType: !787, size: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !972, file: !378, line: 712, baseType: !458, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !972, file: !378, line: 712, baseType: !458, size: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !784, file: !378, line: 760, baseType: !978, size: 320)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !378, line: 718, size: 320, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !978, file: !378, line: 720, baseType: !787, size: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !978, file: !378, line: 723, baseType: !458, size: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !779, file: !378, line: 138, baseType: !778, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !779, file: !378, line: 139, baseType: !778, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !774, file: !378, line: 146, baseType: !777, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !774, file: !378, line: 152, baseType: !772, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !769, file: !330, line: 130, baseType: !633, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !764, file: !330, line: 134, baseType: !455, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !764, file: !330, line: 137, baseType: !458, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !764, file: !330, line: 138, baseType: !583, size: 32, offset: 320)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !764, file: !330, line: 142, baseType: !7, size: 32, offset: 352)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !330, line: 144, baseType: !451, size: 32, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !764, file: !330, line: 145, baseType: !451, size: 32, offset: 416)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !764, file: !330, line: 146, baseType: !994, size: 64, offset: 448)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !330, line: 119, baseType: !514)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !747, file: !330, line: 220, baseType: !750, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !747, file: !330, line: 223, baseType: !455, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !747, file: !330, line: 226, baseType: !998, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !330, line: 185, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !747, file: !330, line: 229, baseType: !1001, size: 128, offset: 256)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 128, elements: !701)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !330, line: 229, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !747, file: !330, line: 232, baseType: !746, size: 64, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !747, file: !330, line: 233, baseType: !746, size: 64, offset: 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !747, file: !330, line: 238, baseType: !1007, size: 64, offset: 512)
!1007 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !330, line: 235, size: 64, elements: !1008)
!1008 = !{!1009, !1015}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1007, file: !330, line: 236, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !330, line: 273, size: 128, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1011, file: !330, line: 275, baseType: !772, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1011, file: !330, line: 278, baseType: !772, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1007, file: !330, line: 237, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !330, line: 259, size: 320, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1023}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1017, file: !330, line: 261, baseType: !633, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1017, file: !330, line: 262, baseType: !633, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1017, file: !330, line: 266, baseType: !633, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1017, file: !330, line: 267, baseType: !633, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1017, file: !330, line: 270, baseType: !451, size: 32, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !747, file: !330, line: 241, baseType: !994, size: 64, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !747, file: !330, line: 244, baseType: !451, size: 32, offset: 640)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !747, file: !330, line: 247, baseType: !451, size: 32, offset: 672)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !747, file: !330, line: 250, baseType: !451, size: 32, offset: 704)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !747, file: !330, line: 253, baseType: !451, size: 32, offset: 736)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !330, line: 256, baseType: !451, size: 32, offset: 768)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !654, file: !636, line: 179, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !636, line: 150, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !636, line: 142, size: 320, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1041, !1042}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1033, file: !636, line: 144, baseType: !458, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1033, file: !636, line: 145, baseType: !633, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1033, file: !636, line: 146, baseType: !633, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1033, file: !636, line: 147, baseType: !1039, size: 32, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1040, line: 31, baseType: !451)
!1040 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1033, file: !636, line: 148, baseType: !7, size: 32, offset: 224)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1033, file: !636, line: 149, baseType: !450, size: 8, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !654, file: !636, line: 180, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !636, line: 162, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !636, line: 159, size: 128, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1046, file: !636, line: 160, baseType: !458, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1046, file: !636, line: 161, baseType: !514, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !654, file: !636, line: 181, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !636, line: 181, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !649, file: !636, line: 317, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 64, elements: !557)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !649, file: !636, line: 318, baseType: !1056, size: 320)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !636, line: 188, size: 320, elements: !1057)
!1057 = !{!1058, !1060, !1083}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1056, file: !636, line: 190, baseType: !1059, size: 192)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 192, elements: !532)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1056, file: !636, line: 193, baseType: !1061, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !636, line: 206, size: 320, elements: !1063)
!1063 = !{!1064, !1068, !1069, !1070, !1082}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1062, file: !636, line: 208, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !459, line: 62, baseType: !1067)
!1067 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !459, line: 61, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1062, file: !636, line: 211, baseType: !7, size: 32, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1062, file: !636, line: 214, baseType: !514, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1062, file: !636, line: 224, baseType: !1071, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !636, line: 202, baseType: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !636, line: 202, size: 128, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1073, file: !636, line: 202, baseType: !1076, size: 128)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !636, line: 200, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !636, line: 200, size: 128, elements: !1078)
!1078 = !{!1079, !1080, !1081}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1077, file: !636, line: 200, baseType: !7, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1077, file: !636, line: 200, baseType: !7, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1077, file: !636, line: 200, baseType: !667, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1062, file: !636, line: 234, baseType: !1071, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1056, file: !636, line: 197, baseType: !514, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !649, file: !636, line: 319, baseType: !521, size: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !649, file: !636, line: 320, baseType: !540, size: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !461, file: !135, line: 3384, baseType: !1087, size: 1472)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !1088)
!1088 = !{!1089, !1110, !1111, !1112, !1113}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1087, file: !135, line: 3115, baseType: !1090, size: 1216)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1090, file: !135, line: 2985, baseType: !629, size: 960)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1090, file: !135, line: 2986, baseType: !458, size: 64, offset: 960)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1090, file: !135, line: 2987, baseType: !458, size: 64, offset: 1024)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1090, file: !135, line: 2988, baseType: !458, size: 64, offset: 1088)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1090, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1090, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1090, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1090, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1090, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1090, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1090, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1090, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1090, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1090, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1090, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1090, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1090, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1090, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1087, file: !135, line: 3117, baseType: !458, size: 64, offset: 1216)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1087, file: !135, line: 3119, baseType: !458, size: 64, offset: 1280)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1087, file: !135, line: 3121, baseType: !458, size: 64, offset: 1344)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1087, file: !135, line: 3123, baseType: !458, size: 64, offset: 1408)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !461, file: !135, line: 3385, baseType: !1115, size: 1088)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !1116)
!1116 = !{!1117, !1118, !1119}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1115, file: !135, line: 2875, baseType: !629, size: 960)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1115, file: !135, line: 2876, baseType: !633, size: 64, offset: 960)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1115, file: !135, line: 2877, baseType: !1120, size: 64, offset: 1024)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1122, line: 172, size: 128, elements: !1123)
!1122 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129, !1130}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1121, file: !1122, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1121, file: !1122, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1121, file: !1122, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1121, file: !1122, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1121, file: !1122, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1121, file: !1122, line: 195, baseType: !7, size: 32, offset: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1121, file: !1122, line: 199, baseType: !458, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !461, file: !135, line: 3386, baseType: !1090, size: 1216)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !461, file: !135, line: 3387, baseType: !1133, size: 1280)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !1134)
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1133, file: !135, line: 3094, baseType: !1090, size: 1216)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1133, file: !135, line: 3095, baseType: !1120, size: 64, offset: 1216)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !461, file: !135, line: 3388, baseType: !1138, size: 1216)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1138, file: !135, line: 2825, baseType: !591, size: 896)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1138, file: !135, line: 2827, baseType: !458, size: 64, offset: 896)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1138, file: !135, line: 2828, baseType: !458, size: 64, offset: 960)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1138, file: !135, line: 2829, baseType: !458, size: 64, offset: 1024)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1138, file: !135, line: 2830, baseType: !458, size: 64, offset: 1088)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1138, file: !135, line: 2831, baseType: !458, size: 64, offset: 1152)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !461, file: !135, line: 3389, baseType: !1147, size: 1024)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1147, file: !135, line: 2851, baseType: !629, size: 960)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1147, file: !135, line: 2852, baseType: !451, size: 32, offset: 960)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1147, file: !135, line: 2853, baseType: !451, size: 32, offset: 992)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !461, file: !135, line: 3390, baseType: !1153, size: 1024)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !1154)
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1153, file: !135, line: 2858, baseType: !629, size: 960)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1153, file: !135, line: 2859, baseType: !1120, size: 64, offset: 960)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !461, file: !135, line: 3391, baseType: !1158, size: 960)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !1159)
!1159 = !{!1160}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1158, file: !135, line: 2863, baseType: !629, size: 960)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !461, file: !135, line: 3392, baseType: !1162, size: 1472)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !1163)
!1163 = !{!1164}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1162, file: !135, line: 3305, baseType: !1087, size: 1472)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !461, file: !135, line: 3393, baseType: !1166, size: 1792)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !1167)
!1167 = !{!1168, !1169, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1166, file: !135, line: 3249, baseType: !1087, size: 1472)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1166, file: !135, line: 3251, baseType: !1170, size: 64, offset: 1472)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1172, line: 463, size: 1152, elements: !1173)
!1172 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1173 = !{!1174, !1177, !1208, !1209, !1324, !1327, !1328, !1329, !1330, !1331, !1332, !1356, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1171, file: !1172, line: 464, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1172, line: 464, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1171, file: !1172, line: 467, baseType: !1178, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !330, line: 374, size: 640, elements: !1180)
!1180 = !{!1181, !1183, !1184, !1197, !1198, !1199, !1200, !1201, !1202, !1204, !1206, !1207}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1179, file: !330, line: 377, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !459, line: 111, baseType: !746)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1179, file: !330, line: 378, baseType: !1182, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1179, file: !330, line: 381, baseType: !1185, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !330, line: 282, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !330, line: 282, size: 128, elements: !1188)
!1188 = !{!1189}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1187, file: !330, line: 282, baseType: !1190, size: 128)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !330, line: 281, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !330, line: 281, size: 128, elements: !1192)
!1192 = !{!1193, !1194, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1191, file: !330, line: 281, baseType: !7, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1191, file: !330, line: 281, baseType: !7, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1191, file: !330, line: 281, baseType: !1196, size: 64, offset: 64)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1182, size: 64, elements: !557)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1179, file: !330, line: 384, baseType: !451, size: 32, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1179, file: !330, line: 387, baseType: !451, size: 32, offset: 224)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1179, file: !330, line: 390, baseType: !451, size: 32, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1179, file: !330, line: 394, baseType: !1185, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1179, file: !330, line: 396, baseType: !329, size: 32, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1179, file: !330, line: 399, baseType: !1203, size: 64, offset: 416)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !701)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1179, file: !330, line: 402, baseType: !1205, size: 64, offset: 480)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !701)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1179, file: !330, line: 406, baseType: !451, size: 32, offset: 544)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1179, file: !330, line: 409, baseType: !451, size: 32, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1171, file: !1172, line: 470, baseType: !773, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1171, file: !1172, line: 473, baseType: !1210, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1122, line: 39, size: 1152, elements: !1212)
!1212 = !{!1213, !1263, !1276, !1288, !1289, !1301, !1302, !1306, !1307, !1308, !1309, !1310}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1211, file: !1122, line: 41, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1215, line: 144, baseType: !1216)
!1215 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1215, line: 100, size: 896, elements: !1218)
!1218 = !{!1219, !1227, !1232, !1237, !1239, !1240, !1241, !1242, !1243, !1244, !1249, !1251, !1252, !1257, !1262}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1217, file: !1215, line: 102, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1215, line: 52, baseType: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1215, line: 47, baseType: !7)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1217, file: !1215, line: 105, baseType: !1228, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1215, line: 59, baseType: !1229)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!451, !1225, !1225}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1217, file: !1215, line: 108, baseType: !1233, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1215, line: 63, baseType: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !455}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1217, file: !1215, line: 111, baseType: !1238, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1217, file: !1215, line: 114, baseType: !928, size: 64, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1217, file: !1215, line: 117, baseType: !928, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1217, file: !1215, line: 120, baseType: !928, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1217, file: !1215, line: 124, baseType: !7, size: 32, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1217, file: !1215, line: 128, baseType: !7, size: 32, offset: 480)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1217, file: !1215, line: 131, baseType: !1245, size: 64, offset: 512)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1215, line: 75, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!455, !928, !928}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1217, file: !1215, line: 132, baseType: !1250, size: 64, offset: 576)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1215, line: 78, baseType: !1234)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1217, file: !1215, line: 135, baseType: !455, size: 64, offset: 640)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1217, file: !1215, line: 136, baseType: !1253, size: 64, offset: 704)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1215, line: 82, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!455, !455, !928, !928}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1217, file: !1215, line: 137, baseType: !1258, size: 64, offset: 768)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1215, line: 83, baseType: !1259)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !455, !455}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1217, file: !1215, line: 141, baseType: !7, size: 32, offset: 832)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1211, file: !1122, line: 48, baseType: !1264, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !378, line: 35, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !378, line: 35, size: 128, elements: !1267)
!1267 = !{!1268}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1266, file: !378, line: 35, baseType: !1269, size: 128)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !378, line: 33, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !378, line: 33, size: 128, elements: !1271)
!1271 = !{!1272, !1273, !1274}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1270, file: !378, line: 33, baseType: !7, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1270, file: !378, line: 33, baseType: !7, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1270, file: !378, line: 33, baseType: !1275, size: 64, offset: 64)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !782, size: 64, elements: !557)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1211, file: !1122, line: 51, baseType: !1277, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !1280)
!1280 = !{!1281}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1279, file: !135, line: 183, baseType: !1282, size: 128)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !1283)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !1284)
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1283, file: !135, line: 182, baseType: !7, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1283, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1283, file: !135, line: 182, baseType: !836, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1211, file: !1122, line: 54, baseType: !458, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1211, file: !1122, line: 57, baseType: !1290, size: 128, offset: 256)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1291, line: 31, size: 128, elements: !1292)
!1291 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298, !1299}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1290, file: !1291, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1290, file: !1291, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1290, file: !1291, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1290, file: !1291, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1290, file: !1291, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1290, file: !1291, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1290, file: !1291, line: 56, baseType: !1300, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !459, line: 47, baseType: !685)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1211, file: !1122, line: 60, baseType: !1290, size: 128, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1211, file: !1122, line: 64, baseType: !1303, size: 64, offset: 512)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1305, line: 33, flags: DIFlagFwdDecl)
!1305 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1211, file: !1122, line: 67, baseType: !458, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1211, file: !1122, line: 73, baseType: !1214, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1211, file: !1122, line: 77, baseType: !1300, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1211, file: !1122, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1211, file: !1122, line: 82, baseType: !1311, size: 320, offset: 832)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !813, line: 62, size: 320, elements: !1312)
!1312 = !{!1313, !1319, !1320, !1321, !1322, !1323}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1311, file: !813, line: 63, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !813, line: 56, size: 128, elements: !1316)
!1316 = !{!1317, !1318}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1315, file: !813, line: 57, baseType: !1314, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1315, file: !813, line: 58, baseType: !556, size: 8, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1311, file: !813, line: 64, baseType: !7, size: 32, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1311, file: !813, line: 66, baseType: !7, size: 32, offset: 96)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1311, file: !813, line: 68, baseType: !450, size: 8, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1311, file: !813, line: 70, baseType: !811, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1311, file: !813, line: 71, baseType: !819, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1171, file: !1172, line: 476, baseType: !1325, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1172, line: 476, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1171, file: !1172, line: 479, baseType: !1214, size: 64, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1171, file: !1172, line: 484, baseType: !458, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1171, file: !1172, line: 488, baseType: !458, size: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1171, file: !1172, line: 493, baseType: !458, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1171, file: !1172, line: 496, baseType: !458, size: 64, offset: 576)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1171, file: !1172, line: 501, baseType: !1333, size: 64, offset: 640)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !341, line: 2355, size: 576, elements: !1335)
!1335 = !{!1336, !1339, !1340, !1341, !1342, !1344, !1345, !1350, !1351, !1352, !1353, !1354, !1355}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1334, file: !341, line: 2356, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !341, line: 2356, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1334, file: !341, line: 2357, baseType: !456, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1334, file: !341, line: 2358, baseType: !451, size: 32, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1334, file: !341, line: 2359, baseType: !451, size: 32, offset: 160)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1334, file: !341, line: 2360, baseType: !1343, size: 128, offset: 192)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 128, elements: !725)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1334, file: !341, line: 2364, baseType: !451, size: 32, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1334, file: !341, line: 2367, baseType: !1346, size: 128, offset: 384)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !341, line: 2349, size: 128, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1346, file: !341, line: 2351, baseType: !633, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1346, file: !341, line: 2352, baseType: !514, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1334, file: !341, line: 2371, baseType: !340, size: 32, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1334, file: !341, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1334, file: !341, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1334, file: !341, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1334, file: !341, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1334, file: !341, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1171, file: !1172, line: 504, baseType: !1357, size: 64, offset: 704)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1172, line: 504, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1171, file: !1172, line: 507, baseType: !1214, size: 64, offset: 768)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1171, file: !1172, line: 510, baseType: !451, size: 32, offset: 832)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1171, file: !1172, line: 513, baseType: !451, size: 32, offset: 864)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1171, file: !1172, line: 516, baseType: !583, size: 32, offset: 896)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1171, file: !1172, line: 519, baseType: !583, size: 32, offset: 928)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1171, file: !1172, line: 522, baseType: !7, size: 32, offset: 960)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1171, file: !1172, line: 523, baseType: !7, size: 32, offset: 992)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1171, file: !1172, line: 528, baseType: !456, size: 64, offset: 1024)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1171, file: !1172, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1171, file: !1172, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1171, file: !1172, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1171, file: !1172, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1171, file: !1172, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1171, file: !1172, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1171, file: !1172, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1171, file: !1172, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1171, file: !1172, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1171, file: !1172, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1171, file: !1172, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1171, file: !1172, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1171, file: !1172, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1171, file: !1172, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1171, file: !1172, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1171, file: !1172, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1166, file: !135, line: 3254, baseType: !458, size: 64, offset: 1536)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1166, file: !135, line: 3257, baseType: !458, size: 64, offset: 1600)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1166, file: !135, line: 3258, baseType: !458, size: 64, offset: 1664)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1166, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1166, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1166, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1166, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1166, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1166, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1166, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1166, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1166, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1166, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1166, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1166, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1166, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1166, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1166, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1166, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1166, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1166, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !461, file: !135, line: 3394, baseType: !1405, size: 1344)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1405, file: !135, line: 2280, baseType: !497, size: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1405, file: !135, line: 2281, baseType: !458, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1405, file: !135, line: 2282, baseType: !458, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1405, file: !135, line: 2283, baseType: !458, size: 64, offset: 320)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1405, file: !135, line: 2284, baseType: !458, size: 64, offset: 384)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1405, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1405, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1405, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1405, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1405, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1405, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1405, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1405, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1405, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1405, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1405, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1405, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1405, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1405, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1405, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1405, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1405, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1405, file: !135, line: 2306, baseType: !1039, size: 32, offset: 544)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1405, file: !135, line: 2307, baseType: !458, size: 64, offset: 576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1405, file: !135, line: 2308, baseType: !458, size: 64, offset: 640)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1405, file: !135, line: 2314, baseType: !1433, size: 64, offset: 704)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !1434)
!1434 = !{!1435, !1436, !1437}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1433, file: !135, line: 2310, baseType: !451, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1433, file: !135, line: 2311, baseType: !456, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1433, file: !135, line: 2312, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1405, file: !135, line: 2315, baseType: !458, size: 64, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1405, file: !135, line: 2316, baseType: !458, size: 64, offset: 832)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1405, file: !135, line: 2317, baseType: !458, size: 64, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1405, file: !135, line: 2318, baseType: !458, size: 64, offset: 960)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1405, file: !135, line: 2319, baseType: !458, size: 64, offset: 1024)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1405, file: !135, line: 2320, baseType: !458, size: 64, offset: 1088)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1405, file: !135, line: 2321, baseType: !458, size: 64, offset: 1152)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1405, file: !135, line: 2322, baseType: !458, size: 64, offset: 1216)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1405, file: !135, line: 2324, baseType: !1449, size: 64, offset: 1280)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !461, file: !135, line: 3395, baseType: !1452, size: 320)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !1453)
!1453 = !{!1454, !1455, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1452, file: !135, line: 1470, baseType: !497, size: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1452, file: !135, line: 1471, baseType: !458, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1452, file: !135, line: 1472, baseType: !458, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !461, file: !135, line: 3396, baseType: !1458, size: 320)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !1459)
!1459 = !{!1460, !1461, !1462}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1458, file: !135, line: 1483, baseType: !497, size: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1458, file: !135, line: 1484, baseType: !451, size: 32, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1458, file: !135, line: 1485, baseType: !836, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !461, file: !135, line: 3397, baseType: !1464, size: 384)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1464, file: !135, line: 1830, baseType: !497, size: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1464, file: !135, line: 1831, baseType: !583, size: 32, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1464, file: !135, line: 1832, baseType: !458, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1464, file: !135, line: 1835, baseType: !836, size: 64, offset: 320)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !461, file: !135, line: 3398, baseType: !1471, size: 704)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1482}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1471, file: !135, line: 1899, baseType: !497, size: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1471, file: !135, line: 1902, baseType: !458, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1471, file: !135, line: 1905, baseType: !782, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1471, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1471, file: !135, line: 1911, baseType: !1478, size: 64, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1122, line: 117, size: 128, elements: !1480)
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1479, file: !1122, line: 120, baseType: !1290, size: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1471, file: !135, line: 1914, baseType: !824, size: 256, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !461, file: !135, line: 3399, baseType: !1484, size: 704)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1484, file: !135, line: 2009, baseType: !497, size: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1484, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1484, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1484, file: !135, line: 2014, baseType: !583, size: 32, offset: 224)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1484, file: !135, line: 2016, baseType: !458, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1484, file: !135, line: 2017, baseType: !1277, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1484, file: !135, line: 2019, baseType: !458, size: 64, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1484, file: !135, line: 2020, baseType: !458, size: 64, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1484, file: !135, line: 2021, baseType: !458, size: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1484, file: !135, line: 2022, baseType: !458, size: 64, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1484, file: !135, line: 2023, baseType: !458, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !461, file: !135, line: 3400, baseType: !1498, size: 832)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !1499)
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1498, file: !135, line: 2431, baseType: !497, size: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1498, file: !135, line: 2433, baseType: !458, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1498, file: !135, line: 2434, baseType: !458, size: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1498, file: !135, line: 2435, baseType: !458, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1498, file: !135, line: 2436, baseType: !458, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1498, file: !135, line: 2437, baseType: !1277, size: 64, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1498, file: !135, line: 2438, baseType: !458, size: 64, offset: 512)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1498, file: !135, line: 2440, baseType: !458, size: 64, offset: 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1498, file: !135, line: 2441, baseType: !458, size: 64, offset: 640)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1498, file: !135, line: 2443, baseType: !1510, size: 128, offset: 704)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !1511)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !1512)
!1512 = !{!1513}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1511, file: !135, line: 182, baseType: !1282, size: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !461, file: !135, line: 3401, baseType: !1515, size: 320)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !1516)
!1516 = !{!1517, !1518, !1525}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1515, file: !135, line: 3329, baseType: !497, size: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1515, file: !135, line: 3330, baseType: !1519, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !1521)
!1521 = !{!1522, !1523, !1524}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1520, file: !135, line: 3322, baseType: !1519, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1520, file: !135, line: 3323, baseType: !1519, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1520, file: !135, line: 3324, baseType: !458, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1515, file: !135, line: 3331, baseType: !1519, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !461, file: !135, line: 3402, baseType: !1527, size: 256)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !1528)
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1527, file: !135, line: 1541, baseType: !497, size: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1527, file: !135, line: 1542, baseType: !1531, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1533, file: !135, line: 1538, baseType: !1536, size: 192)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !1538)
!1538 = !{!1539, !1540, !1541}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1537, file: !135, line: 1537, baseType: !7, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1537, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1537, file: !135, line: 1537, baseType: !1542, size: 128, offset: 64)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1543, size: 128, elements: !557)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !1545)
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1544, file: !135, line: 1533, baseType: !458, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1544, file: !135, line: 1534, baseType: !458, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !461, file: !135, line: 3403, baseType: !1549, size: 512)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1554, !1560, !1561, !1562}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1549, file: !135, line: 1939, baseType: !497, size: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1549, file: !135, line: 1940, baseType: !583, size: 32, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1549, file: !135, line: 1941, baseType: !345, size: 32, offset: 224)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1549, file: !135, line: 1946, baseType: !1555, size: 32, offset: 256)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !1556)
!1556 = !{!1557, !1558, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1555, file: !135, line: 1943, baseType: !363, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1555, file: !135, line: 1944, baseType: !370, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1555, file: !135, line: 1945, baseType: !134, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1549, file: !135, line: 1950, baseType: !772, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1549, file: !135, line: 1951, baseType: !772, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1549, file: !135, line: 1953, baseType: !836, size: 64, offset: 448)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !461, file: !135, line: 3404, baseType: !1564, size: 1664)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !1565)
!1565 = !{!1566, !1567}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1564, file: !135, line: 3338, baseType: !497, size: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1564, file: !135, line: 3341, baseType: !1568, size: 1472, offset: 192)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1569, line: 410, size: 1472, elements: !1570)
!1569 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1570 = !{!1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1568, file: !1569, line: 412, baseType: !451, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1568, file: !1569, line: 413, baseType: !451, size: 32, offset: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1568, file: !1569, line: 414, baseType: !451, size: 32, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1568, file: !1569, line: 415, baseType: !451, size: 32, offset: 96)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1568, file: !1569, line: 416, baseType: !451, size: 32, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1568, file: !1569, line: 417, baseType: !451, size: 32, offset: 160)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1568, file: !1569, line: 418, baseType: !450, size: 8, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1568, file: !1569, line: 419, baseType: !450, size: 8, offset: 200)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1568, file: !1569, line: 420, baseType: !1580, size: 8, offset: 208)
!1580 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1568, file: !1569, line: 421, baseType: !1580, size: 8, offset: 216)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1568, file: !1569, line: 422, baseType: !1580, size: 8, offset: 224)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1568, file: !1569, line: 423, baseType: !1580, size: 8, offset: 232)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1568, file: !1569, line: 424, baseType: !1580, size: 8, offset: 240)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1568, file: !1569, line: 425, baseType: !1580, size: 8, offset: 248)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1568, file: !1569, line: 426, baseType: !1580, size: 8, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1568, file: !1569, line: 427, baseType: !1580, size: 8, offset: 264)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1568, file: !1569, line: 428, baseType: !1580, size: 8, offset: 272)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1568, file: !1569, line: 429, baseType: !1580, size: 8, offset: 280)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1568, file: !1569, line: 430, baseType: !1580, size: 8, offset: 288)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1568, file: !1569, line: 431, baseType: !1580, size: 8, offset: 296)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1568, file: !1569, line: 432, baseType: !1580, size: 8, offset: 304)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1568, file: !1569, line: 433, baseType: !1580, size: 8, offset: 312)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1568, file: !1569, line: 434, baseType: !1580, size: 8, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1568, file: !1569, line: 435, baseType: !1580, size: 8, offset: 328)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1568, file: !1569, line: 436, baseType: !1580, size: 8, offset: 336)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1568, file: !1569, line: 437, baseType: !1580, size: 8, offset: 344)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1568, file: !1569, line: 438, baseType: !1580, size: 8, offset: 352)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1568, file: !1569, line: 439, baseType: !1580, size: 8, offset: 360)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1568, file: !1569, line: 440, baseType: !1580, size: 8, offset: 368)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1568, file: !1569, line: 441, baseType: !1580, size: 8, offset: 376)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1568, file: !1569, line: 442, baseType: !1580, size: 8, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1568, file: !1569, line: 443, baseType: !1580, size: 8, offset: 392)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1568, file: !1569, line: 444, baseType: !1580, size: 8, offset: 400)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1568, file: !1569, line: 445, baseType: !1580, size: 8, offset: 408)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1568, file: !1569, line: 446, baseType: !1580, size: 8, offset: 416)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1568, file: !1569, line: 447, baseType: !1580, size: 8, offset: 424)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1568, file: !1569, line: 448, baseType: !1580, size: 8, offset: 432)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1568, file: !1569, line: 449, baseType: !1580, size: 8, offset: 440)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1568, file: !1569, line: 450, baseType: !1580, size: 8, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1568, file: !1569, line: 451, baseType: !1580, size: 8, offset: 456)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1568, file: !1569, line: 452, baseType: !1580, size: 8, offset: 464)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1568, file: !1569, line: 453, baseType: !1580, size: 8, offset: 472)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1568, file: !1569, line: 454, baseType: !1580, size: 8, offset: 480)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1568, file: !1569, line: 455, baseType: !1580, size: 8, offset: 488)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1568, file: !1569, line: 456, baseType: !1580, size: 8, offset: 496)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1568, file: !1569, line: 457, baseType: !1580, size: 8, offset: 504)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1568, file: !1569, line: 458, baseType: !1580, size: 8, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1568, file: !1569, line: 459, baseType: !1580, size: 8, offset: 520)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1568, file: !1569, line: 460, baseType: !1580, size: 8, offset: 528)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1568, file: !1569, line: 461, baseType: !1580, size: 8, offset: 536)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1568, file: !1569, line: 462, baseType: !1580, size: 8, offset: 544)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1568, file: !1569, line: 463, baseType: !1580, size: 8, offset: 552)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1568, file: !1569, line: 464, baseType: !1580, size: 8, offset: 560)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1568, file: !1569, line: 465, baseType: !1580, size: 8, offset: 568)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1568, file: !1569, line: 466, baseType: !1580, size: 8, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1568, file: !1569, line: 467, baseType: !1580, size: 8, offset: 584)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1568, file: !1569, line: 468, baseType: !1580, size: 8, offset: 592)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1568, file: !1569, line: 469, baseType: !1580, size: 8, offset: 600)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1568, file: !1569, line: 470, baseType: !1580, size: 8, offset: 608)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1568, file: !1569, line: 471, baseType: !1580, size: 8, offset: 616)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1568, file: !1569, line: 472, baseType: !1580, size: 8, offset: 624)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1568, file: !1569, line: 473, baseType: !1580, size: 8, offset: 632)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1568, file: !1569, line: 474, baseType: !1580, size: 8, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1568, file: !1569, line: 475, baseType: !1580, size: 8, offset: 648)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1568, file: !1569, line: 476, baseType: !1580, size: 8, offset: 656)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1568, file: !1569, line: 477, baseType: !1580, size: 8, offset: 664)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1568, file: !1569, line: 478, baseType: !1580, size: 8, offset: 672)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1568, file: !1569, line: 479, baseType: !1580, size: 8, offset: 680)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1568, file: !1569, line: 480, baseType: !1580, size: 8, offset: 688)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1568, file: !1569, line: 481, baseType: !1580, size: 8, offset: 696)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1568, file: !1569, line: 482, baseType: !1580, size: 8, offset: 704)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1568, file: !1569, line: 483, baseType: !1580, size: 8, offset: 712)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1568, file: !1569, line: 484, baseType: !1580, size: 8, offset: 720)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1568, file: !1569, line: 485, baseType: !1580, size: 8, offset: 728)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1568, file: !1569, line: 486, baseType: !1580, size: 8, offset: 736)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1568, file: !1569, line: 487, baseType: !1580, size: 8, offset: 744)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1568, file: !1569, line: 488, baseType: !1580, size: 8, offset: 752)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1568, file: !1569, line: 489, baseType: !1580, size: 8, offset: 760)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1568, file: !1569, line: 490, baseType: !1580, size: 8, offset: 768)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1568, file: !1569, line: 491, baseType: !1580, size: 8, offset: 776)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1568, file: !1569, line: 492, baseType: !1580, size: 8, offset: 784)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1568, file: !1569, line: 493, baseType: !1580, size: 8, offset: 792)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1568, file: !1569, line: 494, baseType: !1580, size: 8, offset: 800)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1568, file: !1569, line: 495, baseType: !1580, size: 8, offset: 808)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1568, file: !1569, line: 496, baseType: !1580, size: 8, offset: 816)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1568, file: !1569, line: 497, baseType: !1580, size: 8, offset: 824)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1568, file: !1569, line: 498, baseType: !1580, size: 8, offset: 832)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1568, file: !1569, line: 499, baseType: !1580, size: 8, offset: 840)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1568, file: !1569, line: 500, baseType: !1580, size: 8, offset: 848)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1568, file: !1569, line: 501, baseType: !1580, size: 8, offset: 856)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1568, file: !1569, line: 502, baseType: !1580, size: 8, offset: 864)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1568, file: !1569, line: 503, baseType: !1580, size: 8, offset: 872)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1568, file: !1569, line: 504, baseType: !1580, size: 8, offset: 880)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1568, file: !1569, line: 505, baseType: !1580, size: 8, offset: 888)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1568, file: !1569, line: 506, baseType: !1580, size: 8, offset: 896)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1568, file: !1569, line: 507, baseType: !1580, size: 8, offset: 904)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1568, file: !1569, line: 508, baseType: !1580, size: 8, offset: 912)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1568, file: !1569, line: 509, baseType: !1580, size: 8, offset: 920)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1568, file: !1569, line: 510, baseType: !1580, size: 8, offset: 928)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1568, file: !1569, line: 511, baseType: !1580, size: 8, offset: 936)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1568, file: !1569, line: 512, baseType: !1580, size: 8, offset: 944)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1568, file: !1569, line: 513, baseType: !1580, size: 8, offset: 952)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1568, file: !1569, line: 514, baseType: !1580, size: 8, offset: 960)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1568, file: !1569, line: 515, baseType: !1580, size: 8, offset: 968)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1568, file: !1569, line: 516, baseType: !1580, size: 8, offset: 976)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1568, file: !1569, line: 517, baseType: !1580, size: 8, offset: 984)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1568, file: !1569, line: 518, baseType: !1580, size: 8, offset: 992)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1568, file: !1569, line: 519, baseType: !1580, size: 8, offset: 1000)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1568, file: !1569, line: 520, baseType: !1580, size: 8, offset: 1008)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1568, file: !1569, line: 521, baseType: !1580, size: 8, offset: 1016)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1568, file: !1569, line: 522, baseType: !1580, size: 8, offset: 1024)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1568, file: !1569, line: 523, baseType: !1580, size: 8, offset: 1032)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1568, file: !1569, line: 524, baseType: !1580, size: 8, offset: 1040)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1568, file: !1569, line: 525, baseType: !1580, size: 8, offset: 1048)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1568, file: !1569, line: 526, baseType: !1580, size: 8, offset: 1056)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1568, file: !1569, line: 527, baseType: !1580, size: 8, offset: 1064)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1568, file: !1569, line: 528, baseType: !1580, size: 8, offset: 1072)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1568, file: !1569, line: 529, baseType: !1580, size: 8, offset: 1080)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1568, file: !1569, line: 530, baseType: !1580, size: 8, offset: 1088)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1568, file: !1569, line: 531, baseType: !1580, size: 8, offset: 1096)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1568, file: !1569, line: 532, baseType: !1580, size: 8, offset: 1104)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1568, file: !1569, line: 533, baseType: !1580, size: 8, offset: 1112)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1568, file: !1569, line: 534, baseType: !1580, size: 8, offset: 1120)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1568, file: !1569, line: 535, baseType: !1580, size: 8, offset: 1128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1568, file: !1569, line: 536, baseType: !1580, size: 8, offset: 1136)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1568, file: !1569, line: 537, baseType: !1580, size: 8, offset: 1144)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1568, file: !1569, line: 538, baseType: !1580, size: 8, offset: 1152)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1568, file: !1569, line: 539, baseType: !1580, size: 8, offset: 1160)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1568, file: !1569, line: 540, baseType: !1580, size: 8, offset: 1168)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1568, file: !1569, line: 541, baseType: !1580, size: 8, offset: 1176)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1568, file: !1569, line: 542, baseType: !1580, size: 8, offset: 1184)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1568, file: !1569, line: 543, baseType: !1580, size: 8, offset: 1192)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1568, file: !1569, line: 544, baseType: !1580, size: 8, offset: 1200)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1568, file: !1569, line: 545, baseType: !1580, size: 8, offset: 1208)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1568, file: !1569, line: 546, baseType: !1580, size: 8, offset: 1216)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1568, file: !1569, line: 547, baseType: !1580, size: 8, offset: 1224)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1568, file: !1569, line: 548, baseType: !1580, size: 8, offset: 1232)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1568, file: !1569, line: 549, baseType: !1580, size: 8, offset: 1240)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1568, file: !1569, line: 550, baseType: !1580, size: 8, offset: 1248)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1568, file: !1569, line: 551, baseType: !1580, size: 8, offset: 1256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1568, file: !1569, line: 552, baseType: !1580, size: 8, offset: 1264)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1568, file: !1569, line: 553, baseType: !1580, size: 8, offset: 1272)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1568, file: !1569, line: 554, baseType: !1580, size: 8, offset: 1280)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1568, file: !1569, line: 555, baseType: !1580, size: 8, offset: 1288)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1568, file: !1569, line: 556, baseType: !1580, size: 8, offset: 1296)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1568, file: !1569, line: 557, baseType: !1580, size: 8, offset: 1304)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1568, file: !1569, line: 558, baseType: !1580, size: 8, offset: 1312)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1568, file: !1569, line: 559, baseType: !1580, size: 8, offset: 1320)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1568, file: !1569, line: 560, baseType: !1580, size: 8, offset: 1328)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1568, file: !1569, line: 561, baseType: !1580, size: 8, offset: 1336)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1568, file: !1569, line: 562, baseType: !1580, size: 8, offset: 1344)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1568, file: !1569, line: 563, baseType: !1580, size: 8, offset: 1352)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1568, file: !1569, line: 564, baseType: !1580, size: 8, offset: 1360)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1568, file: !1569, line: 565, baseType: !1580, size: 8, offset: 1368)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1568, file: !1569, line: 566, baseType: !1580, size: 8, offset: 1376)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1568, file: !1569, line: 567, baseType: !1580, size: 8, offset: 1384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1568, file: !1569, line: 568, baseType: !1580, size: 8, offset: 1392)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1568, file: !1569, line: 569, baseType: !1580, size: 8, offset: 1400)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1568, file: !1569, line: 570, baseType: !1580, size: 8, offset: 1408)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1568, file: !1569, line: 571, baseType: !1580, size: 8, offset: 1416)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1568, file: !1569, line: 572, baseType: !1580, size: 8, offset: 1424)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1568, file: !1569, line: 573, baseType: !1580, size: 8, offset: 1432)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1568, file: !1569, line: 574, baseType: !1580, size: 8, offset: 1440)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !461, file: !135, line: 3405, baseType: !1736, size: 384)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !1737)
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1736, file: !135, line: 3353, baseType: !497, size: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1736, file: !135, line: 3356, baseType: !1740, size: 192, offset: 192)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1569, line: 578, size: 192, elements: !1741)
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1740, file: !1569, line: 580, baseType: !451, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1740, file: !1569, line: 581, baseType: !451, size: 32, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1740, file: !1569, line: 582, baseType: !451, size: 32, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1740, file: !1569, line: 583, baseType: !451, size: 32, offset: 96)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1740, file: !1569, line: 584, baseType: !450, size: 8, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1740, file: !1569, line: 585, baseType: !450, size: 8, offset: 136)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1740, file: !1569, line: 586, baseType: !450, size: 8, offset: 144)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1740, file: !1569, line: 587, baseType: !450, size: 8, offset: 152)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1740, file: !1569, line: 588, baseType: !450, size: 8, offset: 160)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1740, file: !1569, line: 589, baseType: !450, size: 8, offset: 168)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1740, file: !1569, line: 590, baseType: !450, size: 8, offset: 176)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!1755 = !{!1756}
!1756 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 105, size: 384, elements: !1758)
!1758 = !{!1759, !1760, !1761, !1762, !1763, !1764}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "refs_may_alias_p_may_alias", scope: !1757, file: !3, line: 106, baseType: !512, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "refs_may_alias_p_no_alias", scope: !1757, file: !3, line: 107, baseType: !512, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ref_maybe_used_by_call_p_may_alias", scope: !1757, file: !3, line: 108, baseType: !512, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ref_maybe_used_by_call_p_no_alias", scope: !1757, file: !3, line: 109, baseType: !512, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "call_may_clobber_ref_p_may_alias", scope: !1757, file: !3, line: 110, baseType: !512, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "call_may_clobber_ref_p_no_alias", scope: !1757, file: !3, line: 111, baseType: !512, size: 64, offset: 320)
!1765 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 64, 64))
!1766 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 128, 64))
!1767 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 192, 64))
!1768 = !{i32 2, !"Dwarf Version", i32 4}
!1769 = !{i32 2, !"Debug Info Version", i32 3}
!1770 = !{i32 1, !"wchar_size", i32 4}
!1771 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1772 = distinct !DISubprogram(name: "vprintf", scope: !1773, file: !1773, line: 39, type: !1774, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1784)
!1773 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!451, !1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !456)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1779)
!1779 = !{!1780, !1781, !1782, !1783}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1778, file: !3, baseType: !7, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1778, file: !3, baseType: !7, size: 32, offset: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1778, file: !3, baseType: !455, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1778, file: !3, baseType: !455, size: 64, offset: 128)
!1784 = !{!1785, !1786}
!1785 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1772, file: !1773, line: 39, type: !1776)
!1786 = !DILocalVariable(name: "__arg", arg: 2, scope: !1772, file: !1773, line: 39, type: !1777)
!1787 = !DILocation(line: 0, scope: !1772)
!1788 = !DILocation(line: 41, column: 20, scope: !1772)
!1789 = !DILocation(line: 41, column: 10, scope: !1772)
!1790 = !DILocation(line: 41, column: 3, scope: !1772)
!1791 = distinct !DISubprogram(name: "getchar", scope: !1773, file: !1773, line: 47, type: !1792, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1794)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!451}
!1794 = !{}
!1795 = !DILocation(line: 49, column: 16, scope: !1791)
!1796 = !DILocation(line: 49, column: 10, scope: !1791)
!1797 = !DILocation(line: 49, column: 3, scope: !1791)
!1798 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1773, file: !1773, line: 56, type: !1799, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1852)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!451, !1801}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1803, line: 7, baseType: !1804)
!1803 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1805, line: 49, size: 1728, elements: !1806)
!1805 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1806 = !{!1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1822, !1824, !1825, !1826, !1829, !1831, !1832, !1833, !1836, !1838, !1841, !1844, !1845, !1846, !1847, !1848}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1804, file: !1805, line: 51, baseType: !451, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1804, file: !1805, line: 54, baseType: !453, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1804, file: !1805, line: 55, baseType: !453, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1804, file: !1805, line: 56, baseType: !453, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1804, file: !1805, line: 57, baseType: !453, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1804, file: !1805, line: 58, baseType: !453, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1804, file: !1805, line: 59, baseType: !453, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1804, file: !1805, line: 60, baseType: !453, size: 64, offset: 448)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1804, file: !1805, line: 61, baseType: !453, size: 64, offset: 512)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1804, file: !1805, line: 64, baseType: !453, size: 64, offset: 576)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1804, file: !1805, line: 65, baseType: !453, size: 64, offset: 640)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1804, file: !1805, line: 66, baseType: !453, size: 64, offset: 704)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1804, file: !1805, line: 68, baseType: !1820, size: 64, offset: 768)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1805, line: 36, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1804, file: !1805, line: 70, baseType: !1823, size: 64, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1804, file: !1805, line: 72, baseType: !451, size: 32, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1804, file: !1805, line: 73, baseType: !451, size: 32, offset: 928)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1804, file: !1805, line: 74, baseType: !1827, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1828, line: 152, baseType: !514)
!1828 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1804, file: !1805, line: 77, baseType: !1830, size: 16, offset: 1024)
!1830 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1804, file: !1805, line: 78, baseType: !1580, size: 8, offset: 1040)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1804, file: !1805, line: 79, baseType: !556, size: 8, offset: 1048)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1804, file: !1805, line: 81, baseType: !1834, size: 64, offset: 1088)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1805, line: 43, baseType: null)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1804, file: !1805, line: 89, baseType: !1837, size: 64, offset: 1152)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1828, line: 153, baseType: !514)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1804, file: !1805, line: 91, baseType: !1839, size: 64, offset: 1216)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1805, line: 37, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1804, file: !1805, line: 92, baseType: !1842, size: 64, offset: 1280)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1805, line: 38, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1804, file: !1805, line: 93, baseType: !1823, size: 64, offset: 1344)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1804, file: !1805, line: 94, baseType: !455, size: 64, offset: 1408)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1804, file: !1805, line: 95, baseType: !928, size: 64, offset: 1472)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1804, file: !1805, line: 96, baseType: !451, size: 32, offset: 1536)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1804, file: !1805, line: 98, baseType: !1849, size: 160, offset: 1568)
!1849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 160, elements: !1850)
!1850 = !{!1851}
!1851 = !DISubrange(count: 20)
!1852 = !{!1853}
!1853 = !DILocalVariable(name: "__fp", arg: 1, scope: !1798, file: !1773, line: 56, type: !1801)
!1854 = !DILocation(line: 0, scope: !1798)
!1855 = !DILocation(line: 58, column: 10, scope: !1798)
!1856 = !DILocation(line: 58, column: 3, scope: !1798)
!1857 = distinct !DISubprogram(name: "getc_unlocked", scope: !1773, file: !1773, line: 66, type: !1799, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1858)
!1858 = !{!1859}
!1859 = !DILocalVariable(name: "__fp", arg: 1, scope: !1857, file: !1773, line: 66, type: !1801)
!1860 = !DILocation(line: 0, scope: !1857)
!1861 = !DILocation(line: 68, column: 10, scope: !1857)
!1862 = !DILocation(line: 68, column: 3, scope: !1857)
!1863 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1773, file: !1773, line: 73, type: !1792, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1794)
!1864 = !DILocation(line: 75, column: 10, scope: !1863)
!1865 = !DILocation(line: 75, column: 3, scope: !1863)
!1866 = distinct !DISubprogram(name: "putchar", scope: !1773, file: !1773, line: 82, type: !1867, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!451, !451}
!1869 = !{!1870}
!1870 = !DILocalVariable(name: "__c", arg: 1, scope: !1866, file: !1773, line: 82, type: !451)
!1871 = !DILocation(line: 0, scope: !1866)
!1872 = !DILocation(line: 84, column: 21, scope: !1866)
!1873 = !DILocation(line: 84, column: 10, scope: !1866)
!1874 = !DILocation(line: 84, column: 3, scope: !1866)
!1875 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1773, file: !1773, line: 91, type: !1876, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1878)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!451, !451, !1801}
!1878 = !{!1879, !1880}
!1879 = !DILocalVariable(name: "__c", arg: 1, scope: !1875, file: !1773, line: 91, type: !451)
!1880 = !DILocalVariable(name: "__stream", arg: 2, scope: !1875, file: !1773, line: 91, type: !1801)
!1881 = !DILocation(line: 0, scope: !1875)
!1882 = !DILocation(line: 93, column: 10, scope: !1875)
!1883 = !DILocation(line: 93, column: 3, scope: !1875)
!1884 = distinct !DISubprogram(name: "putc_unlocked", scope: !1773, file: !1773, line: 101, type: !1876, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1885)
!1885 = !{!1886, !1887}
!1886 = !DILocalVariable(name: "__c", arg: 1, scope: !1884, file: !1773, line: 101, type: !451)
!1887 = !DILocalVariable(name: "__stream", arg: 2, scope: !1884, file: !1773, line: 101, type: !1801)
!1888 = !DILocation(line: 0, scope: !1884)
!1889 = !DILocation(line: 103, column: 10, scope: !1884)
!1890 = !DILocation(line: 103, column: 3, scope: !1884)
!1891 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1773, file: !1773, line: 108, type: !1867, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1892)
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "__c", arg: 1, scope: !1891, file: !1773, line: 108, type: !451)
!1894 = !DILocation(line: 0, scope: !1891)
!1895 = !DILocation(line: 110, column: 10, scope: !1891)
!1896 = !DILocation(line: 110, column: 3, scope: !1891)
!1897 = distinct !DISubprogram(name: "getline", scope: !1773, file: !1773, line: 118, type: !1898, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1902)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!1900, !452, !1901, !1801}
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1828, line: 193, baseType: !514)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!1902 = !{!1903, !1904, !1905}
!1903 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1897, file: !1773, line: 118, type: !452)
!1904 = !DILocalVariable(name: "__n", arg: 2, scope: !1897, file: !1773, line: 118, type: !1901)
!1905 = !DILocalVariable(name: "__stream", arg: 3, scope: !1897, file: !1773, line: 118, type: !1801)
!1906 = !DILocation(line: 0, scope: !1897)
!1907 = !DILocation(line: 120, column: 10, scope: !1897)
!1908 = !DILocation(line: 120, column: 3, scope: !1897)
!1909 = distinct !DISubprogram(name: "feof_unlocked", scope: !1773, file: !1773, line: 128, type: !1799, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1910)
!1910 = !{!1911}
!1911 = !DILocalVariable(name: "__stream", arg: 1, scope: !1909, file: !1773, line: 128, type: !1801)
!1912 = !DILocation(line: 0, scope: !1909)
!1913 = !DILocation(line: 130, column: 10, scope: !1909)
!1914 = !DILocation(line: 130, column: 3, scope: !1909)
!1915 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1773, file: !1773, line: 135, type: !1799, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1916)
!1916 = !{!1917}
!1917 = !DILocalVariable(name: "__stream", arg: 1, scope: !1915, file: !1773, line: 135, type: !1801)
!1918 = !DILocation(line: 0, scope: !1915)
!1919 = !DILocation(line: 137, column: 10, scope: !1915)
!1920 = !DILocation(line: 137, column: 3, scope: !1915)
!1921 = distinct !DISubprogram(name: "tolower", scope: !1922, file: !1922, line: 207, type: !1867, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1923)
!1922 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1923 = !{!1924}
!1924 = !DILocalVariable(name: "__c", arg: 1, scope: !1921, file: !1922, line: 207, type: !451)
!1925 = !DILocation(line: 0, scope: !1921)
!1926 = !DILocation(line: 209, column: 22, scope: !1921)
!1927 = !DILocation(line: 209, column: 39, scope: !1921)
!1928 = !DILocation(line: 209, column: 38, scope: !1921)
!1929 = !DILocation(line: 209, column: 37, scope: !1921)
!1930 = !DILocation(line: 209, column: 10, scope: !1921)
!1931 = !DILocation(line: 209, column: 3, scope: !1921)
!1932 = distinct !DISubprogram(name: "toupper", scope: !1922, file: !1922, line: 213, type: !1867, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1933)
!1933 = !{!1934}
!1934 = !DILocalVariable(name: "__c", arg: 1, scope: !1932, file: !1922, line: 213, type: !451)
!1935 = !DILocation(line: 0, scope: !1932)
!1936 = !DILocation(line: 215, column: 22, scope: !1932)
!1937 = !DILocation(line: 215, column: 39, scope: !1932)
!1938 = !DILocation(line: 215, column: 38, scope: !1932)
!1939 = !DILocation(line: 215, column: 37, scope: !1932)
!1940 = !DILocation(line: 215, column: 10, scope: !1932)
!1941 = !DILocation(line: 215, column: 3, scope: !1932)
!1942 = distinct !DISubprogram(name: "atoi", scope: !1943, file: !1943, line: 361, type: !1944, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1946)
!1943 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!451, !456}
!1946 = !{!1947}
!1947 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1942, file: !1943, line: 361, type: !456)
!1948 = !DILocation(line: 0, scope: !1942)
!1949 = !DILocation(line: 363, column: 16, scope: !1942)
!1950 = !DILocation(line: 363, column: 10, scope: !1942)
!1951 = !DILocation(line: 363, column: 3, scope: !1942)
!1952 = distinct !DISubprogram(name: "atol", scope: !1943, file: !1943, line: 366, type: !1953, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!514, !456}
!1955 = !{!1956}
!1956 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1952, file: !1943, line: 366, type: !456)
!1957 = !DILocation(line: 0, scope: !1952)
!1958 = !DILocation(line: 368, column: 10, scope: !1952)
!1959 = !DILocation(line: 368, column: 3, scope: !1952)
!1960 = distinct !DISubprogram(name: "atoll", scope: !1943, file: !1943, line: 373, type: !1961, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1964)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!1963, !456}
!1963 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1964 = !{!1965}
!1965 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1960, file: !1943, line: 373, type: !456)
!1966 = !DILocation(line: 0, scope: !1960)
!1967 = !DILocation(line: 375, column: 10, scope: !1960)
!1968 = !DILocation(line: 375, column: 3, scope: !1960)
!1969 = distinct !DISubprogram(name: "bsearch", scope: !1970, file: !1970, line: 20, type: !1971, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!1970 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!455, !1225, !1225, !928, !928, !1973}
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1943, line: 808, baseType: !1229)
!1974 = !{!1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984}
!1975 = !DILocalVariable(name: "__key", arg: 1, scope: !1969, file: !1970, line: 20, type: !1225)
!1976 = !DILocalVariable(name: "__base", arg: 2, scope: !1969, file: !1970, line: 20, type: !1225)
!1977 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1969, file: !1970, line: 20, type: !928)
!1978 = !DILocalVariable(name: "__size", arg: 4, scope: !1969, file: !1970, line: 20, type: !928)
!1979 = !DILocalVariable(name: "__compar", arg: 5, scope: !1969, file: !1970, line: 21, type: !1973)
!1980 = !DILocalVariable(name: "__l", scope: !1969, file: !1970, line: 23, type: !928)
!1981 = !DILocalVariable(name: "__u", scope: !1969, file: !1970, line: 23, type: !928)
!1982 = !DILocalVariable(name: "__idx", scope: !1969, file: !1970, line: 23, type: !928)
!1983 = !DILocalVariable(name: "__p", scope: !1969, file: !1970, line: 24, type: !1225)
!1984 = !DILocalVariable(name: "__comparison", scope: !1969, file: !1970, line: 25, type: !451)
!1985 = !DILocation(line: 0, scope: !1969)
!1986 = !DILocation(line: 29, column: 3, scope: !1969)
!1987 = !DILocation(line: 27, column: 7, scope: !1969)
!1988 = !DILocation(line: 29, column: 14, scope: !1969)
!1989 = !DILocation(line: 31, column: 20, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1969, file: !1970, line: 30, column: 5)
!1991 = !DILocation(line: 31, column: 27, scope: !1990)
!1992 = !DILocation(line: 32, column: 56, scope: !1990)
!1993 = !DILocation(line: 32, column: 47, scope: !1990)
!1994 = !DILocation(line: 33, column: 22, scope: !1990)
!1995 = !DILocation(line: 34, column: 24, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1990, file: !1970, line: 34, column: 11)
!1997 = !DILocation(line: 34, column: 11, scope: !1990)
!1998 = !DILocation(line: 36, column: 29, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1996, file: !1970, line: 36, column: 16)
!2000 = !DILocation(line: 36, column: 16, scope: !1996)
!2001 = !DILocation(line: 37, column: 14, scope: !1999)
!2002 = distinct !{!2002, !1986, !2003}
!2003 = !DILocation(line: 40, column: 5, scope: !1969)
!2004 = !DILocation(line: 43, column: 1, scope: !1969)
!2005 = distinct !DISubprogram(name: "atof", scope: !2006, file: !2006, line: 25, type: !2007, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2010)
!2006 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!2009, !456}
!2009 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2010 = !{!2011}
!2011 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2005, file: !2006, line: 25, type: !456)
!2012 = !DILocation(line: 0, scope: !2005)
!2013 = !DILocation(line: 27, column: 10, scope: !2005)
!2014 = !DILocation(line: 27, column: 3, scope: !2005)
!2015 = distinct !DISubprogram(name: "strtoimax", scope: !2016, file: !2016, line: 324, type: !2017, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2023)
!2016 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!2019, !1776, !2022, !451}
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2020, line: 101, baseType: !2021)
!2020 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1828, line: 72, baseType: !514)
!2022 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !452)
!2023 = !{!2024, !2025, !2026}
!2024 = !DILocalVariable(name: "nptr", arg: 1, scope: !2015, file: !2016, line: 324, type: !1776)
!2025 = !DILocalVariable(name: "endptr", arg: 2, scope: !2015, file: !2016, line: 324, type: !2022)
!2026 = !DILocalVariable(name: "base", arg: 3, scope: !2015, file: !2016, line: 324, type: !451)
!2027 = !DILocation(line: 0, scope: !2015)
!2028 = !DILocation(line: 327, column: 10, scope: !2015)
!2029 = !DILocation(line: 327, column: 3, scope: !2015)
!2030 = distinct !DISubprogram(name: "strtoumax", scope: !2016, file: !2016, line: 336, type: !2031, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2035)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!2033, !1776, !2022, !451}
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2020, line: 102, baseType: !2034)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1828, line: 73, baseType: !512)
!2035 = !{!2036, !2037, !2038}
!2036 = !DILocalVariable(name: "nptr", arg: 1, scope: !2030, file: !2016, line: 336, type: !1776)
!2037 = !DILocalVariable(name: "endptr", arg: 2, scope: !2030, file: !2016, line: 336, type: !2022)
!2038 = !DILocalVariable(name: "base", arg: 3, scope: !2030, file: !2016, line: 336, type: !451)
!2039 = !DILocation(line: 0, scope: !2030)
!2040 = !DILocation(line: 339, column: 10, scope: !2030)
!2041 = !DILocation(line: 339, column: 3, scope: !2030)
!2042 = distinct !DISubprogram(name: "wcstoimax", scope: !2016, file: !2016, line: 348, type: !2043, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2052)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!2019, !2045, !2049, !451}
!2045 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2046)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2016, line: 34, baseType: !451)
!2049 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2050)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2052 = !{!2053, !2054, !2055}
!2053 = !DILocalVariable(name: "nptr", arg: 1, scope: !2042, file: !2016, line: 348, type: !2045)
!2054 = !DILocalVariable(name: "endptr", arg: 2, scope: !2042, file: !2016, line: 348, type: !2049)
!2055 = !DILocalVariable(name: "base", arg: 3, scope: !2042, file: !2016, line: 348, type: !451)
!2056 = !DILocation(line: 0, scope: !2042)
!2057 = !DILocation(line: 351, column: 10, scope: !2042)
!2058 = !DILocation(line: 351, column: 3, scope: !2042)
!2059 = distinct !DISubprogram(name: "wcstoumax", scope: !2016, file: !2016, line: 362, type: !2060, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!2033, !2045, !2049, !451}
!2062 = !{!2063, !2064, !2065}
!2063 = !DILocalVariable(name: "nptr", arg: 1, scope: !2059, file: !2016, line: 362, type: !2045)
!2064 = !DILocalVariable(name: "endptr", arg: 2, scope: !2059, file: !2016, line: 362, type: !2049)
!2065 = !DILocalVariable(name: "base", arg: 3, scope: !2059, file: !2016, line: 362, type: !451)
!2066 = !DILocation(line: 0, scope: !2059)
!2067 = !DILocation(line: 365, column: 10, scope: !2059)
!2068 = !DILocation(line: 365, column: 3, scope: !2059)
!2069 = distinct !DISubprogram(name: "stat", scope: !2070, file: !2070, line: 453, type: !2071, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2070 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!451, !456, !2073}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2075, line: 46, size: 1152, elements: !2076)
!2075 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2076 = !{!2077, !2079, !2081, !2083, !2085, !2087, !2089, !2090, !2091, !2092, !2094, !2096, !2104, !2105, !2106}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2074, file: !2075, line: 48, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1828, line: 145, baseType: !512)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2074, file: !2075, line: 53, baseType: !2080, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1828, line: 148, baseType: !512)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2074, file: !2075, line: 61, baseType: !2082, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1828, line: 151, baseType: !512)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2074, file: !2075, line: 62, baseType: !2084, size: 32, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1828, line: 150, baseType: !7)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2074, file: !2075, line: 64, baseType: !2086, size: 32, offset: 224)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1828, line: 146, baseType: !7)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2074, file: !2075, line: 65, baseType: !2088, size: 32, offset: 256)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1828, line: 147, baseType: !7)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2074, file: !2075, line: 67, baseType: !451, size: 32, offset: 288)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2074, file: !2075, line: 69, baseType: !2078, size: 64, offset: 320)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2074, file: !2075, line: 74, baseType: !1827, size: 64, offset: 384)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2074, file: !2075, line: 78, baseType: !2093, size: 64, offset: 448)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1828, line: 174, baseType: !514)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2074, file: !2075, line: 80, baseType: !2095, size: 64, offset: 512)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1828, line: 179, baseType: !514)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2074, file: !2075, line: 91, baseType: !2097, size: 128, offset: 576)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2098, line: 10, size: 128, elements: !2099)
!2098 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2099 = !{!2100, !2102}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2097, file: !2098, line: 12, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1828, line: 160, baseType: !514)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2097, file: !2098, line: 16, baseType: !2103, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1828, line: 196, baseType: !514)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2074, file: !2075, line: 92, baseType: !2097, size: 128, offset: 704)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2074, file: !2075, line: 93, baseType: !2097, size: 128, offset: 832)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2074, file: !2075, line: 106, baseType: !2107, size: 192, offset: 960)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2103, size: 192, elements: !532)
!2108 = !{!2109, !2110}
!2109 = !DILocalVariable(name: "__path", arg: 1, scope: !2069, file: !2070, line: 453, type: !456)
!2110 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2069, file: !2070, line: 453, type: !2073)
!2111 = !DILocation(line: 0, scope: !2069)
!2112 = !DILocation(line: 455, column: 10, scope: !2069)
!2113 = !DILocation(line: 455, column: 3, scope: !2069)
!2114 = distinct !DISubprogram(name: "lstat", scope: !2070, file: !2070, line: 460, type: !2071, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2115)
!2115 = !{!2116, !2117}
!2116 = !DILocalVariable(name: "__path", arg: 1, scope: !2114, file: !2070, line: 460, type: !456)
!2117 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2114, file: !2070, line: 460, type: !2073)
!2118 = !DILocation(line: 0, scope: !2114)
!2119 = !DILocation(line: 462, column: 10, scope: !2114)
!2120 = !DILocation(line: 462, column: 3, scope: !2114)
!2121 = distinct !DISubprogram(name: "fstat", scope: !2070, file: !2070, line: 467, type: !2122, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!451, !451, !2073}
!2124 = !{!2125, !2126}
!2125 = !DILocalVariable(name: "__fd", arg: 1, scope: !2121, file: !2070, line: 467, type: !451)
!2126 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2121, file: !2070, line: 467, type: !2073)
!2127 = !DILocation(line: 0, scope: !2121)
!2128 = !DILocation(line: 469, column: 10, scope: !2121)
!2129 = !DILocation(line: 469, column: 3, scope: !2121)
!2130 = distinct !DISubprogram(name: "fstatat", scope: !2070, file: !2070, line: 474, type: !2131, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!451, !451, !456, !2073, !451}
!2133 = !{!2134, !2135, !2136, !2137}
!2134 = !DILocalVariable(name: "__fd", arg: 1, scope: !2130, file: !2070, line: 474, type: !451)
!2135 = !DILocalVariable(name: "__filename", arg: 2, scope: !2130, file: !2070, line: 474, type: !456)
!2136 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2130, file: !2070, line: 474, type: !2073)
!2137 = !DILocalVariable(name: "__flag", arg: 4, scope: !2130, file: !2070, line: 474, type: !451)
!2138 = !DILocation(line: 0, scope: !2130)
!2139 = !DILocation(line: 477, column: 10, scope: !2130)
!2140 = !DILocation(line: 477, column: 3, scope: !2130)
!2141 = distinct !DISubprogram(name: "mknod", scope: !2070, file: !2070, line: 483, type: !2142, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!451, !456, !2084, !2078}
!2144 = !{!2145, !2146, !2147}
!2145 = !DILocalVariable(name: "__path", arg: 1, scope: !2141, file: !2070, line: 483, type: !456)
!2146 = !DILocalVariable(name: "__mode", arg: 2, scope: !2141, file: !2070, line: 483, type: !2084)
!2147 = !DILocalVariable(name: "__dev", arg: 3, scope: !2141, file: !2070, line: 483, type: !2078)
!2148 = !DILocation(line: 0, scope: !2141)
!2149 = !DILocation(line: 485, column: 10, scope: !2141)
!2150 = !DILocation(line: 485, column: 3, scope: !2141)
!2151 = distinct !DISubprogram(name: "mknodat", scope: !2070, file: !2070, line: 491, type: !2152, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2154)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!451, !451, !456, !2084, !2078}
!2154 = !{!2155, !2156, !2157, !2158}
!2155 = !DILocalVariable(name: "__fd", arg: 1, scope: !2151, file: !2070, line: 491, type: !451)
!2156 = !DILocalVariable(name: "__path", arg: 2, scope: !2151, file: !2070, line: 491, type: !456)
!2157 = !DILocalVariable(name: "__mode", arg: 3, scope: !2151, file: !2070, line: 491, type: !2084)
!2158 = !DILocalVariable(name: "__dev", arg: 4, scope: !2151, file: !2070, line: 491, type: !2078)
!2159 = !DILocation(line: 0, scope: !2151)
!2160 = !DILocation(line: 494, column: 10, scope: !2151)
!2161 = !DILocation(line: 494, column: 3, scope: !2151)
!2162 = distinct !DISubprogram(name: "stat64", scope: !2070, file: !2070, line: 502, type: !2163, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2185)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!451, !456, !2165}
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2075, line: 119, size: 1152, elements: !2167)
!2167 = !{!2168, !2169, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2181, !2182, !2183, !2184}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2166, file: !2075, line: 121, baseType: !2078, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2166, file: !2075, line: 123, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1828, line: 149, baseType: !512)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2166, file: !2075, line: 124, baseType: !2082, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2166, file: !2075, line: 125, baseType: !2084, size: 32, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2166, file: !2075, line: 132, baseType: !2086, size: 32, offset: 224)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2166, file: !2075, line: 133, baseType: !2088, size: 32, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2166, file: !2075, line: 135, baseType: !451, size: 32, offset: 288)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2166, file: !2075, line: 136, baseType: !2078, size: 64, offset: 320)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2166, file: !2075, line: 137, baseType: !1827, size: 64, offset: 384)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2166, file: !2075, line: 143, baseType: !2093, size: 64, offset: 448)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2166, file: !2075, line: 144, baseType: !2180, size: 64, offset: 512)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1828, line: 180, baseType: !514)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2166, file: !2075, line: 152, baseType: !2097, size: 128, offset: 576)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2166, file: !2075, line: 153, baseType: !2097, size: 128, offset: 704)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2166, file: !2075, line: 154, baseType: !2097, size: 128, offset: 832)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2166, file: !2075, line: 164, baseType: !2107, size: 192, offset: 960)
!2185 = !{!2186, !2187}
!2186 = !DILocalVariable(name: "__path", arg: 1, scope: !2162, file: !2070, line: 502, type: !456)
!2187 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2162, file: !2070, line: 502, type: !2165)
!2188 = !DILocation(line: 0, scope: !2162)
!2189 = !DILocation(line: 504, column: 10, scope: !2162)
!2190 = !DILocation(line: 504, column: 3, scope: !2162)
!2191 = distinct !DISubprogram(name: "lstat64", scope: !2070, file: !2070, line: 509, type: !2163, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2192)
!2192 = !{!2193, !2194}
!2193 = !DILocalVariable(name: "__path", arg: 1, scope: !2191, file: !2070, line: 509, type: !456)
!2194 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2191, file: !2070, line: 509, type: !2165)
!2195 = !DILocation(line: 0, scope: !2191)
!2196 = !DILocation(line: 511, column: 10, scope: !2191)
!2197 = !DILocation(line: 511, column: 3, scope: !2191)
!2198 = distinct !DISubprogram(name: "fstat64", scope: !2070, file: !2070, line: 516, type: !2199, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!451, !451, !2165}
!2201 = !{!2202, !2203}
!2202 = !DILocalVariable(name: "__fd", arg: 1, scope: !2198, file: !2070, line: 516, type: !451)
!2203 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2198, file: !2070, line: 516, type: !2165)
!2204 = !DILocation(line: 0, scope: !2198)
!2205 = !DILocation(line: 518, column: 10, scope: !2198)
!2206 = !DILocation(line: 518, column: 3, scope: !2198)
!2207 = distinct !DISubprogram(name: "fstatat64", scope: !2070, file: !2070, line: 523, type: !2208, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2210)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!451, !451, !456, !2165, !451}
!2210 = !{!2211, !2212, !2213, !2214}
!2211 = !DILocalVariable(name: "__fd", arg: 1, scope: !2207, file: !2070, line: 523, type: !451)
!2212 = !DILocalVariable(name: "__filename", arg: 2, scope: !2207, file: !2070, line: 523, type: !456)
!2213 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2207, file: !2070, line: 523, type: !2165)
!2214 = !DILocalVariable(name: "__flag", arg: 4, scope: !2207, file: !2070, line: 523, type: !451)
!2215 = !DILocation(line: 0, scope: !2207)
!2216 = !DILocation(line: 526, column: 10, scope: !2207)
!2217 = !DILocation(line: 526, column: 3, scope: !2207)
!2218 = distinct !DISubprogram(name: "dump_alias_stats", scope: !3, file: !3, line: 115, type: !2219, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !1801}
!2221 = !{!2222}
!2222 = !DILocalVariable(name: "s", arg: 1, scope: !2218, file: !3, line: 115, type: !1801)
!2223 = !DILocation(line: 0, scope: !2218)
!2224 = !DILocation(line: 117, column: 3, scope: !2218)
!2225 = !DILocation(line: 121, column: 17, scope: !2218)
!2226 = !DILocation(line: 123, column: 19, scope: !2218)
!2227 = !DILocation(line: 123, column: 5, scope: !2218)
!2228 = !DILocation(line: 118, column: 3, scope: !2218)
!2229 = !DILocation(line: 127, column: 17, scope: !2218)
!2230 = !DILocation(line: 128, column: 17, scope: !2218)
!2231 = !DILocation(line: 129, column: 19, scope: !2218)
!2232 = !DILocation(line: 129, column: 5, scope: !2218)
!2233 = !DILocation(line: 124, column: 3, scope: !2218)
!2234 = !DILocation(line: 130, column: 3, scope: !2218)
!2235 = !DILocation(line: 136, column: 1, scope: !2218)
!2236 = distinct !DISubprogram(name: "ptr_deref_may_alias_global_p", scope: !3, file: !3, line: 142, type: !2237, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!450, !458}
!2239 = !{!2240, !2241}
!2240 = !DILocalVariable(name: "ptr", arg: 1, scope: !2236, file: !3, line: 142, type: !458)
!2241 = !DILocalVariable(name: "pi", scope: !2236, file: !3, line: 144, type: !1478)
!2242 = !DILocation(line: 0, scope: !2236)
!2243 = !DILocation(line: 148, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 148, column: 7)
!2245 = !DILocation(line: 148, column: 23, scope: !2244)
!2246 = !DILocation(line: 148, column: 7, scope: !2236)
!2247 = !DILocation(line: 151, column: 8, scope: !2236)
!2248 = !DILocation(line: 155, column: 8, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 155, column: 7)
!2250 = !DILocation(line: 155, column: 7, scope: !2236)
!2251 = !DILocation(line: 159, column: 44, scope: !2236)
!2252 = !DILocation(line: 159, column: 10, scope: !2236)
!2253 = !DILocation(line: 159, column: 3, scope: !2236)
!2254 = !DILocation(line: 160, column: 1, scope: !2236)
!2255 = distinct !DISubprogram(name: "dump_alias_info", scope: !3, file: !3, line: 317, type: !2219, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2256)
!2256 = !{!2257, !2258, !2259, !2260, !2271, !2272, !2276}
!2257 = !DILocalVariable(name: "file", arg: 1, scope: !2255, file: !3, line: 317, type: !1801)
!2258 = !DILocalVariable(name: "i", scope: !2255, file: !3, line: 319, type: !928)
!2259 = !DILocalVariable(name: "funcname", scope: !2255, file: !3, line: 320, type: !456)
!2260 = !DILocalVariable(name: "rvi", scope: !2255, file: !3, line: 322, type: !2261)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenced_var_iterator", file: !1122, line: 336, baseType: !2262)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1122, line: 333, size: 192, elements: !2263)
!2263 = !{!2264}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "hti", scope: !2262, file: !1122, line: 335, baseType: !2265, size: 192)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_iterator", file: !1122, line: 98, baseType: !2266)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1122, line: 93, size: 192, elements: !2267)
!2267 = !{!2268, !2269, !2270}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "htab", scope: !2266, file: !1122, line: 95, baseType: !1214, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2266, file: !1122, line: 96, baseType: !1238, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2266, file: !1122, line: 97, baseType: !1238, size: 64, offset: 128)
!2271 = !DILocalVariable(name: "var", scope: !2255, file: !3, line: 323, type: !458)
!2272 = !DILocalVariable(name: "ptr", scope: !2273, file: !3, line: 346, type: !458)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 345, column: 5)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 344, column: 3)
!2275 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 344, column: 3)
!2276 = !DILocalVariable(name: "pi", scope: !2273, file: !3, line: 347, type: !1478)
!2277 = !DILocation(line: 0, scope: !2255)
!2278 = !DILocation(line: 321, column: 18, scope: !2255)
!2279 = !DILocation(line: 321, column: 39, scope: !2255)
!2280 = !DILocation(line: 321, column: 7, scope: !2255)
!2281 = !DILocation(line: 322, column: 3, scope: !2255)
!2282 = !DILocation(line: 325, column: 3, scope: !2255)
!2283 = !DILocation(line: 327, column: 3, scope: !2255)
!2284 = !DILocation(line: 329, column: 3, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 329, column: 3)
!2286 = !DILocation(line: 0, scope: !2285)
!2287 = !DILocation(line: 329, column: 3, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 329, column: 3)
!2289 = !DILocation(line: 331, column: 11, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 331, column: 11)
!2291 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 330, column: 5)
!2292 = !DILocation(line: 331, column: 11, scope: !2291)
!2293 = !DILocation(line: 332, column: 2, scope: !2290)
!2294 = distinct !{!2294, !2284, !2295}
!2295 = !DILocation(line: 333, column: 5, scope: !2285)
!2296 = !DILocation(line: 335, column: 3, scope: !2255)
!2297 = !DILocation(line: 337, column: 3, scope: !2255)
!2298 = !DILocation(line: 338, column: 35, scope: !2255)
!2299 = !DILocation(line: 338, column: 41, scope: !2255)
!2300 = !DILocation(line: 338, column: 52, scope: !2255)
!2301 = !DILocation(line: 338, column: 3, scope: !2255)
!2302 = !DILocation(line: 339, column: 3, scope: !2255)
!2303 = !DILocation(line: 340, column: 35, scope: !2255)
!2304 = !DILocation(line: 340, column: 41, scope: !2255)
!2305 = !DILocation(line: 340, column: 52, scope: !2255)
!2306 = !DILocation(line: 340, column: 3, scope: !2255)
!2307 = !DILocation(line: 342, column: 3, scope: !2255)
!2308 = !DILocation(line: 344, column: 8, scope: !2275)
!2309 = !DILocation(line: 0, scope: !2275)
!2310 = !DILocation(line: 344, column: 19, scope: !2274)
!2311 = !DILocation(line: 344, column: 17, scope: !2274)
!2312 = !DILocation(line: 344, column: 3, scope: !2275)
!2313 = !DILocation(line: 346, column: 18, scope: !2273)
!2314 = !DILocation(line: 0, scope: !2273)
!2315 = !DILocation(line: 349, column: 15, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 349, column: 11)
!2317 = !DILocation(line: 350, column: 4, scope: !2316)
!2318 = !DILocation(line: 350, column: 7, scope: !2316)
!2319 = !DILocation(line: 349, column: 11, scope: !2273)
!2320 = !DILocation(line: 353, column: 12, scope: !2273)
!2321 = !DILocation(line: 354, column: 11, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 354, column: 11)
!2323 = !DILocation(line: 354, column: 11, scope: !2273)
!2324 = !DILocation(line: 355, column: 2, scope: !2322)
!2325 = !DILocation(line: 344, column: 35, scope: !2274)
!2326 = !DILocation(line: 344, column: 3, scope: !2274)
!2327 = distinct !{!2327, !2312, !2328}
!2328 = !DILocation(line: 356, column: 5, scope: !2275)
!2329 = !DILocation(line: 358, column: 3, scope: !2255)
!2330 = !DILocation(line: 359, column: 1, scope: !2255)
!2331 = distinct !DISubprogram(name: "first_referenced_var", scope: !2332, file: !2332, line: 105, type: !2333, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2336)
!2332 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!458, !2335}
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2336 = !{!2337}
!2337 = !DILocalVariable(name: "iter", arg: 1, scope: !2331, file: !2332, line: 105, type: !2335)
!2338 = !DILocation(line: 0, scope: !2331)
!2339 = !DILocation(line: 107, column: 44, scope: !2331)
!2340 = !DILocation(line: 108, column: 33, scope: !2331)
!2341 = !DILocation(line: 108, column: 9, scope: !2331)
!2342 = !DILocation(line: 107, column: 17, scope: !2331)
!2343 = !DILocation(line: 107, column: 10, scope: !2331)
!2344 = !DILocation(line: 107, column: 3, scope: !2331)
!2345 = distinct !DISubprogram(name: "end_referenced_vars_p", scope: !2332, file: !2332, line: 115, type: !2346, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2350)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!450, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2261)
!2350 = !{!2351}
!2351 = !DILocalVariable(name: "iter", arg: 1, scope: !2345, file: !2332, line: 115, type: !2348)
!2352 = !DILocation(line: 0, scope: !2345)
!2353 = !DILocation(line: 117, column: 29, scope: !2345)
!2354 = !DILocation(line: 117, column: 10, scope: !2345)
!2355 = !DILocation(line: 117, column: 3, scope: !2345)
!2356 = distinct !DISubprogram(name: "may_be_aliased", scope: !2332, file: !2332, line: 586, type: !2357, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2362)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!450, !2359}
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !459, line: 59, baseType: !2360)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!2362 = !{!2363}
!2363 = !DILocalVariable(name: "var", arg: 1, scope: !2356, file: !2332, line: 586, type: !2359)
!2364 = !DILocation(line: 0, scope: !2356)
!2365 = !DILocation(line: 588, column: 11, scope: !2356)
!2366 = !DILocation(line: 588, column: 27, scope: !2356)
!2367 = !DILocation(line: 589, column: 4, scope: !2356)
!2368 = !DILocation(line: 589, column: 10, scope: !2356)
!2369 = !DILocation(line: 589, column: 28, scope: !2356)
!2370 = !DILocation(line: 589, column: 31, scope: !2356)
!2371 = !DILocation(line: 589, column: 49, scope: !2356)
!2372 = !DILocation(line: 589, column: 52, scope: !2356)
!2373 = !DILocation(line: 590, column: 9, scope: !2356)
!2374 = !DILocation(line: 590, column: 12, scope: !2356)
!2375 = !DILocation(line: 591, column: 9, scope: !2356)
!2376 = !DILocation(line: 591, column: 13, scope: !2356)
!2377 = !DILocation(line: 592, column: 4, scope: !2356)
!2378 = !DILocation(line: 592, column: 8, scope: !2356)
!2379 = !DILocation(line: 593, column: 8, scope: !2356)
!2380 = !DILocation(line: 593, column: 11, scope: !2356)
!2381 = !DILocation(line: 594, column: 8, scope: !2356)
!2382 = !DILocation(line: 594, column: 11, scope: !2356)
!2383 = !DILocation(line: 588, column: 3, scope: !2356)
!2384 = distinct !DISubprogram(name: "next_referenced_var", scope: !2332, file: !2332, line: 124, type: !2333, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2385)
!2385 = !{!2386}
!2386 = !DILocalVariable(name: "iter", arg: 1, scope: !2384, file: !2332, line: 124, type: !2335)
!2387 = !DILocation(line: 0, scope: !2384)
!2388 = !DILocation(line: 126, column: 43, scope: !2384)
!2389 = !DILocation(line: 126, column: 17, scope: !2384)
!2390 = !DILocation(line: 126, column: 10, scope: !2384)
!2391 = !DILocation(line: 126, column: 3, scope: !2384)
!2392 = distinct !DISubprogram(name: "dump_points_to_solution", scope: !3, file: !3, line: 395, type: !2393, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2396)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !1801, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "file", arg: 1, scope: !2392, file: !3, line: 395, type: !1801)
!2398 = !DILocalVariable(name: "pt", arg: 2, scope: !2392, file: !3, line: 395, type: !2395)
!2399 = !DILocation(line: 0, scope: !2392)
!2400 = !DILocation(line: 397, column: 11, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 397, column: 7)
!2402 = !DILocation(line: 397, column: 7, scope: !2401)
!2403 = !DILocation(line: 397, column: 7, scope: !2392)
!2404 = !DILocation(line: 398, column: 5, scope: !2401)
!2405 = !DILocation(line: 400, column: 11, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 400, column: 7)
!2407 = !DILocation(line: 400, column: 7, scope: !2406)
!2408 = !DILocation(line: 400, column: 7, scope: !2392)
!2409 = !DILocation(line: 401, column: 5, scope: !2406)
!2410 = !DILocation(line: 403, column: 11, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 403, column: 7)
!2412 = !DILocation(line: 403, column: 7, scope: !2411)
!2413 = !DILocation(line: 403, column: 7, scope: !2392)
!2414 = !DILocation(line: 404, column: 5, scope: !2411)
!2415 = !DILocation(line: 406, column: 11, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 406, column: 7)
!2417 = !DILocation(line: 406, column: 7, scope: !2416)
!2418 = !DILocation(line: 406, column: 7, scope: !2392)
!2419 = !DILocation(line: 407, column: 5, scope: !2416)
!2420 = !DILocation(line: 409, column: 11, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 409, column: 7)
!2422 = !DILocation(line: 409, column: 7, scope: !2421)
!2423 = !DILocation(line: 409, column: 7, scope: !2392)
!2424 = !DILocation(line: 411, column: 7, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 410, column: 5)
!2426 = !DILocation(line: 412, column: 32, scope: !2425)
!2427 = !DILocation(line: 412, column: 7, scope: !2425)
!2428 = !DILocation(line: 413, column: 15, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 413, column: 11)
!2430 = !DILocation(line: 413, column: 11, scope: !2429)
!2431 = !DILocation(line: 413, column: 11, scope: !2425)
!2432 = !DILocation(line: 414, column: 2, scope: !2429)
!2433 = !DILocation(line: 416, column: 1, scope: !2392)
!2434 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !135, file: !135, line: 182, type: !2435, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2439)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!7, !2437}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!2439 = !{!2440}
!2440 = !DILocalVariable(name: "vec_", arg: 1, scope: !2434, file: !135, line: 182, type: !2437)
!2441 = !DILocation(line: 0, scope: !2434)
!2442 = !DILocation(line: 182, column: 1, scope: !2434)
!2443 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !135, file: !135, line: 182, type: !2444, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!458, !2437, !7}
!2446 = !{!2447, !2448}
!2447 = !DILocalVariable(name: "vec_", arg: 1, scope: !2443, file: !135, line: 182, type: !2437)
!2448 = !DILocalVariable(name: "ix_", arg: 2, scope: !2443, file: !135, line: 182, type: !7)
!2449 = !DILocation(line: 0, scope: !2443)
!2450 = !DILocation(line: 182, column: 1, scope: !2443)
!2451 = distinct !DISubprogram(name: "dump_points_to_info_for", scope: !3, file: !3, line: 421, type: !2452, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{null, !1801, !458}
!2454 = !{!2455, !2456, !2457}
!2455 = !DILocalVariable(name: "file", arg: 1, scope: !2451, file: !3, line: 421, type: !1801)
!2456 = !DILocalVariable(name: "ptr", arg: 2, scope: !2451, file: !3, line: 421, type: !458)
!2457 = !DILocalVariable(name: "pi", scope: !2451, file: !3, line: 423, type: !1478)
!2458 = !DILocation(line: 0, scope: !2451)
!2459 = !DILocation(line: 423, column: 29, scope: !2451)
!2460 = !DILocation(line: 425, column: 34, scope: !2451)
!2461 = !DILocation(line: 425, column: 3, scope: !2451)
!2462 = !DILocation(line: 427, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 427, column: 7)
!2464 = !DILocation(line: 427, column: 7, scope: !2451)
!2465 = !DILocation(line: 428, column: 41, scope: !2463)
!2466 = !DILocation(line: 428, column: 5, scope: !2463)
!2467 = !DILocation(line: 430, column: 5, scope: !2463)
!2468 = !DILocation(line: 432, column: 3, scope: !2451)
!2469 = !DILocation(line: 433, column: 1, scope: !2451)
!2470 = distinct !DISubprogram(name: "debug_alias_info", scope: !3, file: !3, line: 365, type: !2471, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1794)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{null}
!2473 = !DILocation(line: 367, column: 20, scope: !2470)
!2474 = !DILocation(line: 367, column: 3, scope: !2470)
!2475 = !DILocation(line: 368, column: 1, scope: !2470)
!2476 = distinct !DISubprogram(name: "get_ptr_info", scope: !3, file: !3, line: 375, type: !2477, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!1478, !458}
!2479 = !{!2480, !2481}
!2480 = !DILocalVariable(name: "t", arg: 1, scope: !2476, file: !3, line: 375, type: !458)
!2481 = !DILocalVariable(name: "pi", scope: !2476, file: !3, line: 377, type: !1478)
!2482 = !DILocation(line: 0, scope: !2476)
!2483 = !DILocation(line: 379, column: 3, scope: !2476)
!2484 = !DILocation(line: 381, column: 8, scope: !2476)
!2485 = !DILocation(line: 382, column: 10, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 382, column: 7)
!2487 = !DILocation(line: 382, column: 7, scope: !2476)
!2488 = !DILocation(line: 384, column: 12, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 383, column: 5)
!2490 = !DILocation(line: 385, column: 31, scope: !2489)
!2491 = !DILocation(line: 385, column: 7, scope: !2489)
!2492 = !DILocation(line: 386, column: 29, scope: !2489)
!2493 = !DILocation(line: 387, column: 5, scope: !2489)
!2494 = !DILocation(line: 389, column: 3, scope: !2476)
!2495 = distinct !DISubprogram(name: "debug_points_to_info_for", scope: !3, file: !3, line: 439, type: !2496, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !458}
!2498 = !{!2499}
!2499 = !DILocalVariable(name: "var", arg: 1, scope: !2495, file: !3, line: 439, type: !458)
!2500 = !DILocation(line: 0, scope: !2495)
!2501 = !DILocation(line: 441, column: 28, scope: !2495)
!2502 = !DILocation(line: 441, column: 3, scope: !2495)
!2503 = !DILocation(line: 442, column: 1, scope: !2495)
!2504 = distinct !DISubprogram(name: "ao_ref_init", scope: !3, file: !3, line: 448, type: !2505, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2518)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !2507, !458}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "ao_ref", file: !1291, line: 86, baseType: !2509)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ao_ref_s", file: !1291, line: 63, size: 384, elements: !2510)
!2510 = !{!2511, !2512, !2513, !2514, !2515, !2516, !2517}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2509, file: !1291, line: 67, baseType: !458, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2509, file: !1291, line: 73, baseType: !458, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2509, file: !1291, line: 75, baseType: !514, size: 64, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2509, file: !1291, line: 77, baseType: !514, size: 64, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !2509, file: !1291, line: 79, baseType: !514, size: 64, offset: 256)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "ref_alias_set", scope: !2509, file: !1291, line: 82, baseType: !1039, size: 32, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "base_alias_set", scope: !2509, file: !1291, line: 85, baseType: !1039, size: 32, offset: 352)
!2518 = !{!2519, !2520}
!2519 = !DILocalVariable(name: "r", arg: 1, scope: !2504, file: !3, line: 448, type: !2507)
!2520 = !DILocalVariable(name: "ref", arg: 2, scope: !2504, file: !3, line: 448, type: !458)
!2521 = !DILocation(line: 0, scope: !2504)
!2522 = !DILocation(line: 450, column: 6, scope: !2504)
!2523 = !DILocation(line: 450, column: 10, scope: !2504)
!2524 = !DILocation(line: 451, column: 6, scope: !2504)
!2525 = !DILocation(line: 451, column: 11, scope: !2504)
!2526 = !DILocation(line: 452, column: 6, scope: !2504)
!2527 = !DILocation(line: 452, column: 13, scope: !2504)
!2528 = !DILocation(line: 453, column: 6, scope: !2504)
!2529 = !DILocation(line: 453, column: 11, scope: !2504)
!2530 = !DILocation(line: 454, column: 6, scope: !2504)
!2531 = !DILocation(line: 454, column: 15, scope: !2504)
!2532 = !DILocation(line: 455, column: 6, scope: !2504)
!2533 = !DILocation(line: 455, column: 20, scope: !2504)
!2534 = !DILocation(line: 456, column: 6, scope: !2504)
!2535 = !DILocation(line: 456, column: 21, scope: !2504)
!2536 = !DILocation(line: 457, column: 1, scope: !2504)
!2537 = distinct !DISubprogram(name: "ao_ref_base", scope: !3, file: !3, line: 462, type: !2538, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2540)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!458, !2507}
!2540 = !{!2541}
!2541 = !DILocalVariable(name: "ref", arg: 1, scope: !2537, file: !3, line: 462, type: !2507)
!2542 = !DILocation(line: 0, scope: !2537)
!2543 = !DILocation(line: 464, column: 12, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 464, column: 7)
!2545 = !DILocation(line: 464, column: 7, scope: !2544)
!2546 = !DILocation(line: 464, column: 7, scope: !2537)
!2547 = !DILocation(line: 465, column: 5, scope: !2544)
!2548 = !DILocation(line: 466, column: 45, scope: !2537)
!2549 = !DILocation(line: 466, column: 56, scope: !2537)
!2550 = !DILocation(line: 466, column: 70, scope: !2537)
!2551 = !DILocation(line: 467, column: 18, scope: !2537)
!2552 = !DILocation(line: 466, column: 15, scope: !2537)
!2553 = !DILocation(line: 466, column: 13, scope: !2537)
!2554 = !DILocation(line: 468, column: 3, scope: !2537)
!2555 = !DILocation(line: 469, column: 1, scope: !2537)
!2556 = distinct !DISubprogram(name: "ao_ref_alias_set", scope: !3, file: !3, line: 485, type: !2557, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!1039, !2507}
!2559 = !{!2560}
!2560 = !DILocalVariable(name: "ref", arg: 1, scope: !2556, file: !3, line: 485, type: !2507)
!2561 = !DILocation(line: 0, scope: !2556)
!2562 = !DILocation(line: 487, column: 12, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 487, column: 7)
!2564 = !DILocation(line: 487, column: 26, scope: !2563)
!2565 = !DILocation(line: 487, column: 7, scope: !2556)
!2566 = !DILocation(line: 488, column: 5, scope: !2563)
!2567 = !DILocation(line: 489, column: 44, scope: !2556)
!2568 = !DILocation(line: 489, column: 24, scope: !2556)
!2569 = !DILocation(line: 489, column: 22, scope: !2556)
!2570 = !DILocation(line: 490, column: 3, scope: !2556)
!2571 = !DILocation(line: 491, column: 1, scope: !2556)
!2572 = distinct !DISubprogram(name: "ao_ref_init_from_ptr_and_size", scope: !3, file: !3, line: 499, type: !2573, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !2507, !458, !458}
!2575 = !{!2576, !2577, !2578, !2579, !2580}
!2576 = !DILocalVariable(name: "ref", arg: 1, scope: !2572, file: !3, line: 499, type: !2507)
!2577 = !DILocalVariable(name: "ptr", arg: 2, scope: !2572, file: !3, line: 499, type: !458)
!2578 = !DILocalVariable(name: "size", arg: 3, scope: !2572, file: !3, line: 499, type: !458)
!2579 = !DILocalVariable(name: "t1", scope: !2572, file: !3, line: 501, type: !514)
!2580 = !DILocalVariable(name: "t2", scope: !2572, file: !3, line: 501, type: !514)
!2581 = !DILocation(line: 0, scope: !2572)
!2582 = !DILocation(line: 501, column: 3, scope: !2572)
!2583 = !DILocation(line: 502, column: 8, scope: !2572)
!2584 = !DILocation(line: 502, column: 12, scope: !2572)
!2585 = !DILocation(line: 503, column: 7, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 503, column: 7)
!2587 = !DILocation(line: 503, column: 23, scope: !2586)
!2588 = !DILocation(line: 503, column: 7, scope: !2572)
!2589 = !DILocation(line: 504, column: 42, scope: !2586)
!2590 = !DILocation(line: 505, column: 13, scope: !2586)
!2591 = !DILocation(line: 504, column: 17, scope: !2586)
!2592 = !DILocation(line: 504, column: 10, scope: !2586)
!2593 = !DILocation(line: 504, column: 15, scope: !2586)
!2594 = !DILocation(line: 504, column: 5, scope: !2586)
!2595 = !DILocation(line: 508, column: 19, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 507, column: 5)
!2597 = !DILocation(line: 508, column: 12, scope: !2596)
!2598 = !DILocation(line: 508, column: 17, scope: !2596)
!2599 = !DILocation(line: 509, column: 12, scope: !2596)
!2600 = !DILocation(line: 509, column: 19, scope: !2596)
!2601 = !DILocation(line: 511, column: 7, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 511, column: 7)
!2603 = !DILocation(line: 512, column: 7, scope: !2602)
!2604 = !DILocation(line: 512, column: 10, scope: !2602)
!2605 = !DILocation(line: 513, column: 7, scope: !2602)
!2606 = !DILocation(line: 513, column: 10, scope: !2602)
!2607 = !DILocation(line: 513, column: 42, scope: !2602)
!2608 = !DILocation(line: 511, column: 7, scope: !2572)
!2609 = !DILocation(line: 514, column: 57, scope: !2602)
!2610 = !DILocation(line: 514, column: 26, scope: !2602)
!2611 = !DILocation(line: 514, column: 31, scope: !2602)
!2612 = !DILocation(line: 514, column: 10, scope: !2602)
!2613 = !DILocation(line: 514, column: 19, scope: !2602)
!2614 = !DILocation(line: 514, column: 5, scope: !2602)
!2615 = !DILocation(line: 516, column: 26, scope: !2602)
!2616 = !DILocation(line: 516, column: 31, scope: !2602)
!2617 = !DILocation(line: 516, column: 10, scope: !2602)
!2618 = !DILocation(line: 516, column: 19, scope: !2602)
!2619 = !DILocation(line: 517, column: 8, scope: !2572)
!2620 = !DILocation(line: 517, column: 22, scope: !2572)
!2621 = !DILocation(line: 518, column: 8, scope: !2572)
!2622 = !DILocation(line: 518, column: 23, scope: !2572)
!2623 = !DILocation(line: 519, column: 1, scope: !2572)
!2624 = distinct !DISubprogram(name: "refs_may_alias_p_1", scope: !3, file: !3, line: 767, type: !2625, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!450, !2507, !2507, !450}
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2645, !2646, !2647, !2650, !2652, !2653, !2654}
!2628 = !DILocalVariable(name: "ref1", arg: 1, scope: !2624, file: !3, line: 767, type: !2507)
!2629 = !DILocalVariable(name: "ref2", arg: 2, scope: !2624, file: !3, line: 767, type: !2507)
!2630 = !DILocalVariable(name: "tbaa_p", arg: 3, scope: !2624, file: !3, line: 767, type: !450)
!2631 = !DILocalVariable(name: "base1", scope: !2624, file: !3, line: 769, type: !458)
!2632 = !DILocalVariable(name: "base2", scope: !2624, file: !3, line: 769, type: !458)
!2633 = !DILocalVariable(name: "offset1", scope: !2624, file: !3, line: 770, type: !514)
!2634 = !DILocalVariable(name: "offset2", scope: !2624, file: !3, line: 770, type: !514)
!2635 = !DILocalVariable(name: "max_size1", scope: !2624, file: !3, line: 771, type: !514)
!2636 = !DILocalVariable(name: "max_size2", scope: !2624, file: !3, line: 771, type: !514)
!2637 = !DILocalVariable(name: "var1_p", scope: !2624, file: !3, line: 772, type: !450)
!2638 = !DILocalVariable(name: "var2_p", scope: !2624, file: !3, line: 772, type: !450)
!2639 = !DILocalVariable(name: "ind1_p", scope: !2624, file: !3, line: 772, type: !450)
!2640 = !DILocalVariable(name: "ind2_p", scope: !2624, file: !3, line: 772, type: !450)
!2641 = !DILocalVariable(name: "set", scope: !2624, file: !3, line: 773, type: !1039)
!2642 = !DILocalVariable(name: "tmp1", scope: !2643, file: !3, line: 828, type: !514)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 827, column: 5)
!2644 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 826, column: 7)
!2645 = !DILocalVariable(name: "tmp2", scope: !2643, file: !3, line: 829, type: !458)
!2646 = !DILocalVariable(name: "tmp3", scope: !2643, file: !3, line: 830, type: !2507)
!2647 = !DILocalVariable(name: "def_stmt", scope: !2648, file: !3, line: 855, type: !782)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 854, column: 5)
!2649 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 850, column: 7)
!2650 = !DILocalVariable(name: "rhs", scope: !2651, file: !3, line: 860, type: !458)
!2651 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 859, column: 2)
!2652 = !DILocalVariable(name: "offset", scope: !2651, file: !3, line: 861, type: !514)
!2653 = !DILocalVariable(name: "size", scope: !2651, file: !3, line: 861, type: !514)
!2654 = !DILocalVariable(name: "max_size", scope: !2651, file: !3, line: 861, type: !514)
!2655 = !DILocation(line: 0, scope: !2624)
!2656 = !DILocation(line: 775, column: 3, scope: !2624)
!2657 = !DILocation(line: 789, column: 11, scope: !2624)
!2658 = !DILocation(line: 790, column: 19, scope: !2624)
!2659 = !DILocation(line: 791, column: 21, scope: !2624)
!2660 = !DILocation(line: 792, column: 11, scope: !2624)
!2661 = !DILocation(line: 793, column: 19, scope: !2624)
!2662 = !DILocation(line: 794, column: 21, scope: !2624)
!2663 = !DILocation(line: 799, column: 7, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 799, column: 7)
!2665 = !DILocation(line: 799, column: 25, scope: !2664)
!2666 = !DILocation(line: 800, column: 7, scope: !2664)
!2667 = !DILocation(line: 800, column: 10, scope: !2664)
!2668 = !DILocation(line: 800, column: 28, scope: !2664)
!2669 = !DILocation(line: 801, column: 7, scope: !2664)
!2670 = !DILocation(line: 801, column: 28, scope: !2664)
!2671 = !DILocation(line: 802, column: 7, scope: !2664)
!2672 = !DILocation(line: 802, column: 28, scope: !2664)
!2673 = !DILocation(line: 803, column: 7, scope: !2664)
!2674 = !DILocation(line: 803, column: 10, scope: !2664)
!2675 = !DILocation(line: 804, column: 7, scope: !2664)
!2676 = !DILocation(line: 804, column: 10, scope: !2664)
!2677 = !DILocation(line: 799, column: 7, scope: !2624)
!2678 = !DILocation(line: 809, column: 7, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 809, column: 7)
!2680 = !DILocation(line: 809, column: 25, scope: !2679)
!2681 = !DILocation(line: 810, column: 7, scope: !2679)
!2682 = !DILocation(line: 810, column: 10, scope: !2679)
!2683 = !DILocation(line: 810, column: 28, scope: !2679)
!2684 = !DILocation(line: 809, column: 7, scope: !2624)
!2685 = !DILocation(line: 817, column: 12, scope: !2624)
!2686 = !DILocation(line: 818, column: 12, scope: !2624)
!2687 = !DILocation(line: 819, column: 14, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 819, column: 7)
!2689 = !DILocation(line: 820, column: 12, scope: !2688)
!2690 = !DILocation(line: 820, column: 5, scope: !2688)
!2691 = !DILocation(line: 823, column: 12, scope: !2624)
!2692 = !DILocation(line: 824, column: 12, scope: !2624)
!2693 = !DILocation(line: 826, column: 7, scope: !2644)
!2694 = !DILocation(line: 826, column: 14, scope: !2644)
!2695 = !DILocation(line: 850, column: 14, scope: !2649)
!2696 = !DILocation(line: 851, column: 10, scope: !2649)
!2697 = !DILocation(line: 852, column: 7, scope: !2649)
!2698 = !DILocation(line: 852, column: 10, scope: !2649)
!2699 = !DILocation(line: 853, column: 7, scope: !2649)
!2700 = !DILocation(line: 853, column: 10, scope: !2649)
!2701 = !DILocation(line: 853, column: 46, scope: !2649)
!2702 = !DILocation(line: 850, column: 7, scope: !2624)
!2703 = !DILocation(line: 855, column: 25, scope: !2648)
!2704 = !DILocation(line: 0, scope: !2648)
!2705 = !DILocation(line: 0, scope: !2651)
!2706 = !DILocation(line: 856, column: 7, scope: !2648)
!2707 = !DILocation(line: 832, column: 58, scope: !2643)
!2708 = !DILocation(line: 831, column: 50, scope: !2643)
!2709 = !DILocation(line: 833, column: 42, scope: !2643)
!2710 = !DILocation(line: 856, column: 14, scope: !2648)
!2711 = !DILocation(line: 857, column: 7, scope: !2648)
!2712 = !DILocation(line: 857, column: 11, scope: !2648)
!2713 = !DILocation(line: 857, column: 45, scope: !2648)
!2714 = !DILocation(line: 858, column: 4, scope: !2648)
!2715 = !DILocation(line: 858, column: 7, scope: !2648)
!2716 = !DILocation(line: 860, column: 15, scope: !2651)
!2717 = !DILocation(line: 861, column: 4, scope: !2651)
!2718 = !DILocation(line: 864, column: 8, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 864, column: 8)
!2720 = !DILocation(line: 864, column: 24, scope: !2719)
!2721 = !DILocation(line: 865, column: 8, scope: !2719)
!2722 = !DILocation(line: 865, column: 11, scope: !2719)
!2723 = !DILocation(line: 864, column: 8, scope: !2651)
!2724 = !DILocation(line: 867, column: 19, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 866, column: 6)
!2726 = !DILocation(line: 868, column: 8, scope: !2725)
!2727 = distinct !{!2727, !2706, !2728}
!2728 = !DILocation(line: 891, column: 2, scope: !2648)
!2729 = !DILocation(line: 870, column: 24, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 870, column: 8)
!2731 = !DILocation(line: 870, column: 8, scope: !2651)
!2732 = !DILocation(line: 875, column: 10, scope: !2651)
!2733 = !DILocation(line: 876, column: 10, scope: !2651)
!2734 = !DILocation(line: 877, column: 8, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 877, column: 8)
!2736 = !DILocation(line: 877, column: 8, scope: !2651)
!2737 = !DILocation(line: 880, column: 19, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 878, column: 6)
!2739 = !DILocation(line: 880, column: 16, scope: !2738)
!2740 = !DILocation(line: 881, column: 12, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 881, column: 12)
!2742 = !DILocation(line: 881, column: 20, scope: !2741)
!2743 = !DILocation(line: 881, column: 17, scope: !2741)
!2744 = !DILocation(line: 882, column: 17, scope: !2741)
!2745 = !DILocation(line: 882, column: 5, scope: !2741)
!2746 = !DILocation(line: 884, column: 15, scope: !2738)
!2747 = !DILocation(line: 884, column: 8, scope: !2738)
!2748 = !DILocation(line: 892, column: 5, scope: !2649)
!2749 = !DILocation(line: 895, column: 7, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 895, column: 7)
!2751 = !DILocation(line: 896, column: 10, scope: !2750)
!2752 = !DILocation(line: 896, column: 7, scope: !2750)
!2753 = !DILocation(line: 897, column: 34, scope: !2750)
!2754 = !DILocation(line: 898, column: 6, scope: !2750)
!2755 = !DILocation(line: 897, column: 11, scope: !2750)
!2756 = !DILocation(line: 895, column: 7, scope: !2624)
!2757 = !DILocation(line: 904, column: 14, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 904, column: 7)
!2759 = !DILocation(line: 904, column: 8, scope: !2758)
!2760 = !DILocation(line: 904, column: 18, scope: !2758)
!2761 = !DILocation(line: 904, column: 21, scope: !2758)
!2762 = !DILocation(line: 904, column: 43, scope: !2758)
!2763 = !DILocation(line: 905, column: 7, scope: !2758)
!2764 = !DILocation(line: 905, column: 17, scope: !2758)
!2765 = !DILocation(line: 905, column: 11, scope: !2758)
!2766 = !DILocation(line: 905, column: 21, scope: !2758)
!2767 = !DILocation(line: 905, column: 24, scope: !2758)
!2768 = !DILocation(line: 905, column: 46, scope: !2758)
!2769 = !DILocation(line: 904, column: 7, scope: !2624)
!2770 = !DILocation(line: 909, column: 9, scope: !2624)
!2771 = !DILocation(line: 910, column: 14, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 910, column: 7)
!2773 = !DILocation(line: 911, column: 54, scope: !2772)
!2774 = !DILocation(line: 911, column: 12, scope: !2772)
!2775 = !DILocation(line: 911, column: 5, scope: !2772)
!2776 = !DILocation(line: 915, column: 12, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 915, column: 12)
!2778 = !DILocation(line: 915, column: 19, scope: !2777)
!2779 = !DILocation(line: 916, column: 50, scope: !2777)
!2780 = !DILocation(line: 918, column: 22, scope: !2777)
!2781 = !DILocation(line: 916, column: 12, scope: !2777)
!2782 = !DILocation(line: 916, column: 5, scope: !2777)
!2783 = !DILocation(line: 921, column: 3, scope: !2624)
!2784 = !DILocation(line: 923, column: 5, scope: !2624)
!2785 = !DILocation(line: 925, column: 1, scope: !2624)
!2786 = distinct !DISubprogram(name: "handled_component_p", scope: !135, file: !135, line: 4551, type: !2357, scopeLine: 4552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2787)
!2787 = !{!2788}
!2788 = !DILocalVariable(name: "t", arg: 1, scope: !2786, file: !135, line: 4551, type: !2359)
!2789 = !DILocation(line: 0, scope: !2786)
!2790 = !DILocation(line: 4553, column: 11, scope: !2786)
!2791 = !DILocation(line: 4553, column: 3, scope: !2786)
!2792 = !DILocation(line: 4565, column: 7, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2786, file: !135, line: 4554, column: 5)
!2794 = !DILocation(line: 0, scope: !2793)
!2795 = !DILocation(line: 4567, column: 1, scope: !2786)
!2796 = distinct !DISubprogram(name: "decl_refs_may_alias_p", scope: !3, file: !3, line: 624, type: !2797, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!450, !458, !514, !514, !458, !514, !514}
!2799 = !{!2800, !2801, !2802, !2803, !2804, !2805}
!2800 = !DILocalVariable(name: "base1", arg: 1, scope: !2796, file: !3, line: 624, type: !458)
!2801 = !DILocalVariable(name: "offset1", arg: 2, scope: !2796, file: !3, line: 625, type: !514)
!2802 = !DILocalVariable(name: "max_size1", arg: 3, scope: !2796, file: !3, line: 625, type: !514)
!2803 = !DILocalVariable(name: "base2", arg: 4, scope: !2796, file: !3, line: 626, type: !458)
!2804 = !DILocalVariable(name: "offset2", arg: 5, scope: !2796, file: !3, line: 627, type: !514)
!2805 = !DILocalVariable(name: "max_size2", arg: 6, scope: !2796, file: !3, line: 627, type: !514)
!2806 = !DILocation(line: 0, scope: !2796)
!2807 = !DILocation(line: 629, column: 3, scope: !2796)
!2808 = !DILocation(line: 632, column: 8, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 632, column: 7)
!2810 = !DILocation(line: 632, column: 7, scope: !2796)
!2811 = !DILocation(line: 637, column: 10, scope: !2796)
!2812 = !DILocation(line: 637, column: 3, scope: !2796)
!2813 = !DILocation(line: 638, column: 1, scope: !2796)
!2814 = distinct !DISubprogram(name: "gimple_in_ssa_p", scope: !2332, file: !2332, line: 33, type: !2815, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2819)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!450, !2817}
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1171)
!2819 = !{!2820}
!2820 = !DILocalVariable(name: "fun", arg: 1, scope: !2814, file: !2332, line: 33, type: !2817)
!2821 = !DILocation(line: 0, scope: !2814)
!2822 = !DILocation(line: 35, column: 10, scope: !2814)
!2823 = !DILocation(line: 35, column: 14, scope: !2814)
!2824 = !DILocation(line: 35, column: 22, scope: !2814)
!2825 = !DILocation(line: 35, column: 17, scope: !2814)
!2826 = !DILocation(line: 35, column: 32, scope: !2814)
!2827 = !DILocation(line: 35, column: 51, scope: !2814)
!2828 = !DILocation(line: 35, column: 3, scope: !2814)
!2829 = distinct !DISubprogram(name: "is_gimple_assign", scope: !378, file: !378, line: 1677, type: !2830, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2833)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!450, !2832}
!2832 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !459, line: 60, baseType: !1753)
!2833 = !{!2834}
!2834 = !DILocalVariable(name: "gs", arg: 1, scope: !2829, file: !378, line: 1677, type: !2832)
!2835 = !DILocation(line: 0, scope: !2829)
!2836 = !DILocation(line: 1679, column: 10, scope: !2829)
!2837 = !DILocation(line: 1679, column: 27, scope: !2829)
!2838 = !DILocation(line: 1679, column: 3, scope: !2829)
!2839 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !378, file: !378, line: 1815, type: !2840, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!134, !2832}
!2842 = !{!2843, !2844}
!2843 = !DILocalVariable(name: "gs", arg: 1, scope: !2839, file: !378, line: 1815, type: !2832)
!2844 = !DILocalVariable(name: "code", scope: !2839, file: !378, line: 1817, type: !134)
!2845 = !DILocation(line: 0, scope: !2839)
!2846 = !DILocation(line: 1820, column: 10, scope: !2839)
!2847 = !DILocation(line: 1821, column: 7, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2839, file: !378, line: 1821, column: 7)
!2849 = !DILocation(line: 1821, column: 35, scope: !2848)
!2850 = !DILocation(line: 1821, column: 7, scope: !2839)
!2851 = !DILocation(line: 1822, column: 12, scope: !2848)
!2852 = !DILocation(line: 1822, column: 5, scope: !2848)
!2853 = !DILocation(line: 1824, column: 3, scope: !2839)
!2854 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !378, file: !378, line: 1727, type: !2855, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!458, !2832}
!2857 = !{!2858}
!2858 = !DILocalVariable(name: "gs", arg: 1, scope: !2854, file: !378, line: 1727, type: !2832)
!2859 = !DILocation(line: 0, scope: !2854)
!2860 = !DILocation(line: 1730, column: 10, scope: !2854)
!2861 = !DILocation(line: 1730, column: 3, scope: !2854)
!2862 = distinct !DISubprogram(name: "indirect_ref_may_alias_decl_p", scope: !3, file: !3, line: 648, type: !2863, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!450, !458, !458, !514, !514, !1039, !458, !458, !514, !514, !1039}
!2865 = !{!2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875}
!2866 = !DILocalVariable(name: "ref1", arg: 1, scope: !2862, file: !3, line: 648, type: !458)
!2867 = !DILocalVariable(name: "ptr1", arg: 2, scope: !2862, file: !3, line: 648, type: !458)
!2868 = !DILocalVariable(name: "offset1", arg: 3, scope: !2862, file: !3, line: 649, type: !514)
!2869 = !DILocalVariable(name: "max_size1", arg: 4, scope: !2862, file: !3, line: 649, type: !514)
!2870 = !DILocalVariable(name: "base1_alias_set", arg: 5, scope: !2862, file: !3, line: 650, type: !1039)
!2871 = !DILocalVariable(name: "ref2", arg: 6, scope: !2862, file: !3, line: 651, type: !458)
!2872 = !DILocalVariable(name: "base2", arg: 7, scope: !2862, file: !3, line: 651, type: !458)
!2873 = !DILocalVariable(name: "offset2", arg: 8, scope: !2862, file: !3, line: 652, type: !514)
!2874 = !DILocalVariable(name: "max_size2", arg: 9, scope: !2862, file: !3, line: 652, type: !514)
!2875 = !DILocalVariable(name: "base2_alias_set", arg: 10, scope: !2862, file: !3, line: 653, type: !1039)
!2876 = !DILocation(line: 0, scope: !2862)
!2877 = !DILocation(line: 660, column: 17, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 660, column: 7)
!2879 = !DILocation(line: 661, column: 7, scope: !2878)
!2880 = !DILocation(line: 661, column: 60, scope: !2878)
!2881 = !DILocation(line: 661, column: 11, scope: !2878)
!2882 = !DILocation(line: 660, column: 7, scope: !2862)
!2883 = !DILocation(line: 663, column: 8, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 663, column: 7)
!2885 = !DILocation(line: 663, column: 7, scope: !2862)
!2886 = !DILocation(line: 667, column: 8, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 667, column: 7)
!2888 = !DILocation(line: 667, column: 7, scope: !2862)
!2889 = !DILocation(line: 671, column: 23, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 671, column: 7)
!2891 = !DILocation(line: 671, column: 7, scope: !2862)
!2892 = !DILocation(line: 672, column: 23, scope: !2890)
!2893 = !DILocation(line: 672, column: 5, scope: !2890)
!2894 = !DILocation(line: 673, column: 23, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 673, column: 7)
!2896 = !DILocation(line: 673, column: 7, scope: !2862)
!2897 = !DILocation(line: 675, column: 23, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 675, column: 7)
!2899 = !DILocation(line: 675, column: 7, scope: !2862)
!2900 = !DILocation(line: 676, column: 23, scope: !2898)
!2901 = !DILocation(line: 676, column: 5, scope: !2898)
!2902 = !DILocation(line: 681, column: 27, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 681, column: 7)
!2904 = !DILocation(line: 682, column: 6, scope: !2903)
!2905 = !DILocation(line: 681, column: 7, scope: !2903)
!2906 = !DILocation(line: 682, column: 25, scope: !2903)
!2907 = !DILocation(line: 681, column: 7, scope: !2862)
!2908 = !DILocation(line: 683, column: 12, scope: !2903)
!2909 = !DILocation(line: 683, column: 5, scope: !2903)
!2910 = !DILocation(line: 687, column: 23, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 687, column: 7)
!2912 = !DILocation(line: 688, column: 7, scope: !2911)
!2913 = !DILocation(line: 688, column: 11, scope: !2911)
!2914 = !DILocation(line: 687, column: 7, scope: !2862)
!2915 = !DILocation(line: 692, column: 7, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 692, column: 7)
!2917 = !DILocation(line: 692, column: 15, scope: !2916)
!2918 = !DILocation(line: 692, column: 12, scope: !2916)
!2919 = !DILocation(line: 693, column: 10, scope: !2916)
!2920 = !DILocation(line: 694, column: 7, scope: !2916)
!2921 = !DILocation(line: 694, column: 10, scope: !2916)
!2922 = !DILocation(line: 692, column: 7, scope: !2862)
!2923 = !DILocation(line: 695, column: 45, scope: !2916)
!2924 = !DILocation(line: 697, column: 17, scope: !2916)
!2925 = !DILocation(line: 695, column: 12, scope: !2916)
!2926 = !DILocation(line: 695, column: 5, scope: !2916)
!2927 = !DILocation(line: 701, column: 1, scope: !2862)
!2928 = distinct !DISubprogram(name: "indirect_refs_may_alias_p", scope: !3, file: !3, line: 711, type: !2863, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2929)
!2929 = !{!2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939}
!2930 = !DILocalVariable(name: "ref1", arg: 1, scope: !2928, file: !3, line: 711, type: !458)
!2931 = !DILocalVariable(name: "ptr1", arg: 2, scope: !2928, file: !3, line: 711, type: !458)
!2932 = !DILocalVariable(name: "offset1", arg: 3, scope: !2928, file: !3, line: 712, type: !514)
!2933 = !DILocalVariable(name: "max_size1", arg: 4, scope: !2928, file: !3, line: 712, type: !514)
!2934 = !DILocalVariable(name: "base1_alias_set", arg: 5, scope: !2928, file: !3, line: 713, type: !1039)
!2935 = !DILocalVariable(name: "ref2", arg: 6, scope: !2928, file: !3, line: 714, type: !458)
!2936 = !DILocalVariable(name: "ptr2", arg: 7, scope: !2928, file: !3, line: 714, type: !458)
!2937 = !DILocalVariable(name: "offset2", arg: 8, scope: !2928, file: !3, line: 715, type: !514)
!2938 = !DILocalVariable(name: "max_size2", arg: 9, scope: !2928, file: !3, line: 715, type: !514)
!2939 = !DILocalVariable(name: "base2_alias_set", arg: 10, scope: !2928, file: !3, line: 716, type: !1039)
!2940 = !DILocation(line: 0, scope: !2928)
!2941 = !DILocation(line: 721, column: 7, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 721, column: 7)
!2943 = !DILocation(line: 721, column: 7, scope: !2928)
!2944 = !DILocation(line: 722, column: 12, scope: !2942)
!2945 = !DILocation(line: 722, column: 5, scope: !2942)
!2946 = !DILocation(line: 723, column: 8, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 723, column: 7)
!2948 = !DILocation(line: 723, column: 7, scope: !2928)
!2949 = !DILocation(line: 727, column: 8, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 727, column: 7)
!2951 = !DILocation(line: 727, column: 7, scope: !2928)
!2952 = !DILocation(line: 731, column: 23, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 731, column: 7)
!2954 = !DILocation(line: 731, column: 7, scope: !2928)
!2955 = !DILocation(line: 732, column: 23, scope: !2953)
!2956 = !DILocation(line: 732, column: 5, scope: !2953)
!2957 = !DILocation(line: 733, column: 23, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 733, column: 7)
!2959 = !DILocation(line: 733, column: 7, scope: !2928)
!2960 = !DILocation(line: 735, column: 23, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 735, column: 7)
!2962 = !DILocation(line: 735, column: 7, scope: !2928)
!2963 = !DILocation(line: 736, column: 23, scope: !2961)
!2964 = !DILocation(line: 736, column: 5, scope: !2961)
!2965 = !DILocation(line: 737, column: 23, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 737, column: 7)
!2967 = !DILocation(line: 737, column: 7, scope: !2928)
!2968 = !DILocation(line: 743, column: 27, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 743, column: 7)
!2970 = !DILocation(line: 744, column: 6, scope: !2969)
!2971 = !DILocation(line: 743, column: 7, scope: !2969)
!2972 = !DILocation(line: 744, column: 36, scope: !2969)
!2973 = !DILocation(line: 743, column: 7, scope: !2928)
!2974 = !DILocation(line: 745, column: 12, scope: !2969)
!2975 = !DILocation(line: 745, column: 5, scope: !2969)
!2976 = !DILocation(line: 748, column: 23, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 748, column: 7)
!2978 = !DILocation(line: 749, column: 7, scope: !2977)
!2979 = !DILocation(line: 749, column: 11, scope: !2977)
!2980 = !DILocation(line: 748, column: 7, scope: !2928)
!2981 = !DILocation(line: 753, column: 7, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 753, column: 7)
!2983 = !DILocation(line: 753, column: 15, scope: !2982)
!2984 = !DILocation(line: 753, column: 12, scope: !2982)
!2985 = !DILocation(line: 754, column: 10, scope: !2982)
!2986 = !DILocation(line: 755, column: 7, scope: !2982)
!2987 = !DILocation(line: 755, column: 10, scope: !2982)
!2988 = !DILocation(line: 753, column: 7, scope: !2928)
!2989 = !DILocation(line: 756, column: 45, scope: !2982)
!2990 = !DILocation(line: 758, column: 17, scope: !2982)
!2991 = !DILocation(line: 756, column: 12, scope: !2982)
!2992 = !DILocation(line: 756, column: 5, scope: !2982)
!2993 = !DILocation(line: 762, column: 1, scope: !2928)
!2994 = distinct !DISubprogram(name: "refs_may_alias_p", scope: !3, file: !3, line: 928, type: !2995, scopeLine: 929, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!450, !458, !458}
!2997 = !{!2998, !2999, !3000, !3001, !3002}
!2998 = !DILocalVariable(name: "ref1", arg: 1, scope: !2994, file: !3, line: 928, type: !458)
!2999 = !DILocalVariable(name: "ref2", arg: 2, scope: !2994, file: !3, line: 928, type: !458)
!3000 = !DILocalVariable(name: "r1", scope: !2994, file: !3, line: 930, type: !2508)
!3001 = !DILocalVariable(name: "r2", scope: !2994, file: !3, line: 930, type: !2508)
!3002 = !DILocalVariable(name: "res", scope: !2994, file: !3, line: 931, type: !450)
!3003 = !DILocation(line: 0, scope: !2994)
!3004 = !DILocation(line: 930, column: 3, scope: !2994)
!3005 = !DILocation(line: 932, column: 3, scope: !2994)
!3006 = !DILocation(line: 933, column: 3, scope: !2994)
!3007 = !DILocation(line: 934, column: 9, scope: !2994)
!3008 = !DILocation(line: 935, column: 7, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 935, column: 7)
!3010 = !DILocation(line: 935, column: 7, scope: !2994)
!3011 = !DILocation(line: 936, column: 5, scope: !3009)
!3012 = !DILocation(line: 938, column: 5, scope: !3009)
!3013 = !DILocation(line: 940, column: 1, scope: !2994)
!3014 = !DILocation(line: 939, column: 3, scope: !2994)
!3015 = distinct !DISubprogram(name: "refs_anti_dependent_p", scope: !3, file: !3, line: 946, type: !2995, scopeLine: 947, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3016)
!3016 = !{!3017, !3018, !3019, !3020}
!3017 = !DILocalVariable(name: "load", arg: 1, scope: !3015, file: !3, line: 946, type: !458)
!3018 = !DILocalVariable(name: "store", arg: 2, scope: !3015, file: !3, line: 946, type: !458)
!3019 = !DILocalVariable(name: "r1", scope: !3015, file: !3, line: 948, type: !2508)
!3020 = !DILocalVariable(name: "r2", scope: !3015, file: !3, line: 948, type: !2508)
!3021 = !DILocation(line: 0, scope: !3015)
!3022 = !DILocation(line: 948, column: 3, scope: !3015)
!3023 = !DILocation(line: 949, column: 3, scope: !3015)
!3024 = !DILocation(line: 950, column: 3, scope: !3015)
!3025 = !DILocation(line: 951, column: 10, scope: !3015)
!3026 = !DILocation(line: 952, column: 1, scope: !3015)
!3027 = !DILocation(line: 951, column: 3, scope: !3015)
!3028 = distinct !DISubprogram(name: "refs_output_dependent_p", scope: !3, file: !3, line: 958, type: !2995, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3029)
!3029 = !{!3030, !3031, !3032, !3033}
!3030 = !DILocalVariable(name: "store1", arg: 1, scope: !3028, file: !3, line: 958, type: !458)
!3031 = !DILocalVariable(name: "store2", arg: 2, scope: !3028, file: !3, line: 958, type: !458)
!3032 = !DILocalVariable(name: "r1", scope: !3028, file: !3, line: 960, type: !2508)
!3033 = !DILocalVariable(name: "r2", scope: !3028, file: !3, line: 960, type: !2508)
!3034 = !DILocation(line: 0, scope: !3028)
!3035 = !DILocation(line: 960, column: 3, scope: !3028)
!3036 = !DILocation(line: 961, column: 3, scope: !3028)
!3037 = !DILocation(line: 962, column: 3, scope: !3028)
!3038 = !DILocation(line: 963, column: 10, scope: !3028)
!3039 = !DILocation(line: 964, column: 1, scope: !3028)
!3040 = !DILocation(line: 963, column: 3, scope: !3028)
!3041 = distinct !DISubprogram(name: "ref_maybe_used_by_stmt_p", scope: !3, file: !3, line: 1163, type: !3042, scopeLine: 1164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!450, !782, !458}
!3044 = !{!3045, !3046, !3047}
!3045 = !DILocalVariable(name: "stmt", arg: 1, scope: !3041, file: !3, line: 1163, type: !782)
!3046 = !DILocalVariable(name: "ref", arg: 2, scope: !3041, file: !3, line: 1163, type: !458)
!3047 = !DILocalVariable(name: "rhs", scope: !3048, file: !3, line: 1167, type: !458)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 1166, column: 5)
!3049 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 1165, column: 7)
!3050 = !DILocation(line: 0, scope: !3041)
!3051 = !DILocation(line: 1165, column: 7, scope: !3049)
!3052 = !DILocation(line: 1165, column: 7, scope: !3041)
!3053 = !DILocation(line: 1170, column: 12, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 1170, column: 11)
!3055 = !DILocation(line: 1170, column: 11, scope: !3048)
!3056 = !DILocation(line: 1173, column: 13, scope: !3048)
!3057 = !DILocation(line: 0, scope: !3048)
!3058 = !DILocation(line: 1174, column: 11, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 1174, column: 11)
!3060 = !DILocation(line: 1175, column: 4, scope: !3059)
!3061 = !DILocation(line: 1175, column: 7, scope: !3059)
!3062 = !DILocation(line: 1176, column: 4, scope: !3059)
!3063 = !DILocation(line: 1176, column: 7, scope: !3059)
!3064 = !DILocation(line: 1176, column: 37, scope: !3059)
!3065 = !DILocation(line: 1174, column: 11, scope: !3048)
!3066 = !DILocation(line: 1179, column: 14, scope: !3048)
!3067 = !DILocation(line: 1179, column: 7, scope: !3048)
!3068 = !DILocation(line: 1181, column: 12, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 1181, column: 12)
!3070 = !DILocation(line: 1181, column: 12, scope: !3049)
!3071 = !DILocation(line: 1182, column: 12, scope: !3069)
!3072 = !DILocation(line: 1182, column: 5, scope: !3069)
!3073 = !DILocation(line: 1185, column: 1, scope: !3041)
!3074 = distinct !DISubprogram(name: "is_gimple_call", scope: !378, file: !378, line: 1870, type: !2830, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3075)
!3075 = !{!3076}
!3076 = !DILocalVariable(name: "gs", arg: 1, scope: !3074, file: !378, line: 1870, type: !2832)
!3077 = !DILocation(line: 0, scope: !3074)
!3078 = !DILocation(line: 1872, column: 10, scope: !3074)
!3079 = !DILocation(line: 1872, column: 27, scope: !3074)
!3080 = !DILocation(line: 1872, column: 3, scope: !3074)
!3081 = distinct !DISubprogram(name: "ref_maybe_used_by_call_p", scope: !3, file: !3, line: 1145, type: !3042, scopeLine: 1146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3082)
!3082 = !{!3083, !3084, !3085, !3086}
!3083 = !DILocalVariable(name: "call", arg: 1, scope: !3081, file: !3, line: 1145, type: !782)
!3084 = !DILocalVariable(name: "ref", arg: 2, scope: !3081, file: !3, line: 1145, type: !458)
!3085 = !DILocalVariable(name: "r", scope: !3081, file: !3, line: 1147, type: !2508)
!3086 = !DILocalVariable(name: "res", scope: !3081, file: !3, line: 1148, type: !450)
!3087 = !DILocation(line: 0, scope: !3081)
!3088 = !DILocation(line: 1147, column: 3, scope: !3081)
!3089 = !DILocation(line: 1149, column: 3, scope: !3081)
!3090 = !DILocation(line: 1150, column: 9, scope: !3081)
!3091 = !DILocation(line: 1151, column: 7, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 1151, column: 7)
!3093 = !DILocation(line: 1151, column: 7, scope: !3081)
!3094 = !DILocation(line: 1152, column: 5, scope: !3092)
!3095 = !DILocation(line: 1154, column: 5, scope: !3092)
!3096 = !DILocation(line: 1156, column: 1, scope: !3081)
!3097 = !DILocation(line: 1155, column: 3, scope: !3081)
!3098 = distinct !DISubprogram(name: "stmt_may_clobber_ref_p_1", scope: !3, file: !3, line: 1388, type: !3099, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!450, !782, !2507}
!3101 = !{!3102, !3103, !3104, !3107, !3110}
!3102 = !DILocalVariable(name: "stmt", arg: 1, scope: !3098, file: !3, line: 1388, type: !782)
!3103 = !DILocalVariable(name: "ref", arg: 2, scope: !3098, file: !3, line: 1388, type: !2507)
!3104 = !DILocalVariable(name: "lhs", scope: !3105, file: !3, line: 1392, type: !458)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 1391, column: 5)
!3106 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 1390, column: 7)
!3107 = !DILocalVariable(name: "r", scope: !3108, file: !3, line: 1396, type: !2508)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 1395, column: 2)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 1393, column: 11)
!3110 = !DILocalVariable(name: "r", scope: !3111, file: !3, line: 1406, type: !2508)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 1405, column: 5)
!3112 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 1404, column: 12)
!3113 = !DILocation(line: 0, scope: !3098)
!3114 = !DILocation(line: 1390, column: 7, scope: !3106)
!3115 = !DILocation(line: 1390, column: 7, scope: !3098)
!3116 = !DILocation(line: 1392, column: 18, scope: !3105)
!3117 = !DILocation(line: 0, scope: !3105)
!3118 = !DILocation(line: 1393, column: 11, scope: !3109)
!3119 = !DILocation(line: 1394, column: 4, scope: !3109)
!3120 = !DILocation(line: 1394, column: 8, scope: !3109)
!3121 = !DILocation(line: 1393, column: 11, scope: !3105)
!3122 = !DILocation(line: 1396, column: 4, scope: !3108)
!3123 = !DILocation(line: 0, scope: !3108)
!3124 = !DILocation(line: 1397, column: 4, scope: !3108)
!3125 = !DILocation(line: 1398, column: 8, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 1398, column: 8)
!3127 = !DILocation(line: 1400, column: 2, scope: !3109)
!3128 = !DILocation(line: 1402, column: 14, scope: !3105)
!3129 = !DILocation(line: 1402, column: 7, scope: !3105)
!3130 = !DILocation(line: 1404, column: 12, scope: !3112)
!3131 = !DILocation(line: 1404, column: 12, scope: !3106)
!3132 = !DILocation(line: 1406, column: 7, scope: !3111)
!3133 = !DILocation(line: 1407, column: 24, scope: !3111)
!3134 = !DILocation(line: 0, scope: !3111)
!3135 = !DILocation(line: 1407, column: 7, scope: !3111)
!3136 = !DILocation(line: 1408, column: 14, scope: !3111)
!3137 = !DILocation(line: 1409, column: 5, scope: !3112)
!3138 = !DILocation(line: 1410, column: 12, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 1410, column: 12)
!3140 = !DILocation(line: 1410, column: 31, scope: !3139)
!3141 = !DILocation(line: 1410, column: 12, scope: !3112)
!3142 = !DILocation(line: 1414, column: 1, scope: !3098)
!3143 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !378, file: !378, line: 1878, type: !2855, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3144)
!3144 = !{!3145}
!3145 = !DILocalVariable(name: "gs", arg: 1, scope: !3143, file: !378, line: 1878, type: !2832)
!3146 = !DILocation(line: 0, scope: !3143)
!3147 = !DILocation(line: 1881, column: 10, scope: !3143)
!3148 = !DILocation(line: 1881, column: 3, scope: !3143)
!3149 = distinct !DISubprogram(name: "call_may_clobber_ref_p_1", scope: !3, file: !3, line: 1191, type: !3099, scopeLine: 1192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3150)
!3150 = !{!3151, !3152, !3153, !3154, !3155, !3159, !3160, !3162, !3163, !3166, !3168, !3170, !3172, !3174, !3176, !3177, !3180}
!3151 = !DILocalVariable(name: "call", arg: 1, scope: !3149, file: !3, line: 1191, type: !782)
!3152 = !DILocalVariable(name: "ref", arg: 2, scope: !3149, file: !3, line: 1191, type: !2507)
!3153 = !DILocalVariable(name: "base", scope: !3149, file: !3, line: 1193, type: !458)
!3154 = !DILocalVariable(name: "callee", scope: !3149, file: !3, line: 1194, type: !458)
!3155 = !DILocalVariable(name: "dref", scope: !3156, file: !3, line: 1242, type: !2508)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1241, column: 4)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 1228, column: 7)
!3158 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1225, column: 7)
!3159 = !DILocalVariable(name: "size", scope: !3156, file: !3, line: 1243, type: !458)
!3160 = !DILocalVariable(name: "dref", scope: !3161, file: !3, line: 1253, type: !2508)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1252, column: 4)
!3162 = !DILocalVariable(name: "size", scope: !3161, file: !3, line: 1254, type: !458)
!3163 = !DILocalVariable(name: "pi", scope: !3164, file: !3, line: 1272, type: !1478)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 1271, column: 6)
!3165 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1269, column: 8)
!3166 = !DILocalVariable(name: "ptr", scope: !3167, file: !3, line: 1287, type: !458)
!3167 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1286, column: 4)
!3168 = !DILocalVariable(name: "out", scope: !3169, file: !3, line: 1297, type: !458)
!3169 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1296, column: 4)
!3170 = !DILocalVariable(name: "out", scope: !3171, file: !3, line: 1311, type: !458)
!3171 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1310, column: 4)
!3172 = !DILocalVariable(name: "out", scope: !3173, file: !3, line: 1318, type: !458)
!3173 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1317, column: 4)
!3174 = !DILocalVariable(name: "sin", scope: !3175, file: !3, line: 1329, type: !458)
!3175 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1328, column: 4)
!3176 = !DILocalVariable(name: "cos", scope: !3175, file: !3, line: 1330, type: !458)
!3177 = !DILocalVariable(name: "not_written", scope: !3178, file: !3, line: 1345, type: !1300)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 1344, column: 5)
!3179 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1340, column: 7)
!3180 = !DILocalVariable(name: "pi", scope: !3181, file: !3, line: 1358, type: !1478)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 1357, column: 5)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 1355, column: 12)
!3183 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1353, column: 7)
!3184 = !DILocation(line: 0, scope: !3149)
!3185 = !DILocation(line: 1197, column: 7, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1197, column: 7)
!3187 = !DILocation(line: 1198, column: 7, scope: !3186)
!3188 = !DILocation(line: 1197, column: 7, scope: !3149)
!3189 = !DILocation(line: 1201, column: 10, scope: !3149)
!3190 = !DILocation(line: 1202, column: 8, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1202, column: 7)
!3192 = !DILocation(line: 1202, column: 7, scope: !3149)
!3193 = !DILocation(line: 1205, column: 7, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1205, column: 7)
!3195 = !DILocation(line: 1205, column: 24, scope: !3194)
!3196 = !DILocation(line: 1206, column: 7, scope: !3194)
!3197 = !DILocation(line: 1206, column: 10, scope: !3194)
!3198 = !DILocation(line: 1205, column: 7, scope: !3149)
!3199 = !DILocation(line: 1211, column: 7, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1211, column: 7)
!3201 = !DILocation(line: 1212, column: 7, scope: !3200)
!3202 = !DILocation(line: 1212, column: 11, scope: !3200)
!3203 = !DILocation(line: 1216, column: 7, scope: !3200)
!3204 = !DILocation(line: 1216, column: 11, scope: !3200)
!3205 = !DILocation(line: 1217, column: 4, scope: !3200)
!3206 = !DILocation(line: 1217, column: 8, scope: !3200)
!3207 = !DILocation(line: 1211, column: 7, scope: !3149)
!3208 = !DILocation(line: 1220, column: 12, scope: !3149)
!3209 = !DILocation(line: 1225, column: 14, scope: !3158)
!3210 = !DILocation(line: 1226, column: 7, scope: !3158)
!3211 = !DILocation(line: 1226, column: 10, scope: !3158)
!3212 = !DILocation(line: 1226, column: 39, scope: !3158)
!3213 = !DILocation(line: 1225, column: 7, scope: !3149)
!3214 = !DILocation(line: 1227, column: 13, scope: !3158)
!3215 = !DILocation(line: 1227, column: 5, scope: !3158)
!3216 = !DILocation(line: 1242, column: 6, scope: !3156)
!3217 = !DILocation(line: 0, scope: !3156)
!3218 = !DILocation(line: 1244, column: 10, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 1244, column: 10)
!3220 = !DILocation(line: 1244, column: 38, scope: !3219)
!3221 = !DILocation(line: 1244, column: 10, scope: !3156)
!3222 = !DILocation(line: 1245, column: 15, scope: !3219)
!3223 = !DILocation(line: 1245, column: 8, scope: !3219)
!3224 = !DILocation(line: 1247, column: 9, scope: !3156)
!3225 = !DILocation(line: 1246, column: 6, scope: !3156)
!3226 = !DILocation(line: 1249, column: 13, scope: !3156)
!3227 = !DILocation(line: 1250, column: 4, scope: !3157)
!3228 = !DILocation(line: 1253, column: 6, scope: !3161)
!3229 = !DILocation(line: 1254, column: 18, scope: !3161)
!3230 = !DILocation(line: 0, scope: !3161)
!3231 = !DILocation(line: 1256, column: 9, scope: !3161)
!3232 = !DILocation(line: 1255, column: 6, scope: !3161)
!3233 = !DILocation(line: 1258, column: 13, scope: !3161)
!3234 = !DILocation(line: 1259, column: 4, scope: !3157)
!3235 = !DILocation(line: 1269, column: 8, scope: !3165)
!3236 = !DILocation(line: 1270, column: 8, scope: !3165)
!3237 = !DILocation(line: 1270, column: 11, scope: !3165)
!3238 = !DILocation(line: 1270, column: 31, scope: !3165)
!3239 = !DILocation(line: 1270, column: 28, scope: !3165)
!3240 = !DILocation(line: 1269, column: 8, scope: !3157)
!3241 = !DILocation(line: 1273, column: 12, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 1273, column: 12)
!3243 = !DILocation(line: 1274, column: 5, scope: !3242)
!3244 = !DILocation(line: 1274, column: 9, scope: !3242)
!3245 = !DILocation(line: 1273, column: 12, scope: !3164)
!3246 = !DILocation(line: 1276, column: 17, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 1276, column: 17)
!3248 = !DILocation(line: 1277, column: 10, scope: !3247)
!3249 = !DILocation(line: 1277, column: 13, scope: !3247)
!3250 = !DILocation(line: 1277, column: 48, scope: !3247)
!3251 = !DILocation(line: 1278, column: 10, scope: !3247)
!3252 = !DILocation(line: 1278, column: 19, scope: !3247)
!3253 = !DILocation(line: 0, scope: !3164)
!3254 = !DILocation(line: 1278, column: 17, scope: !3247)
!3255 = !DILocation(line: 1276, column: 17, scope: !3242)
!3256 = !DILocation(line: 1279, column: 17, scope: !3247)
!3257 = !DILocation(line: 1279, column: 10, scope: !3247)
!3258 = !DILocation(line: 1279, column: 26, scope: !3247)
!3259 = !DILocation(line: 1279, column: 3, scope: !3247)
!3260 = !DILocation(line: 1281, column: 4, scope: !3157)
!3261 = !DILocation(line: 1287, column: 17, scope: !3167)
!3262 = !DILocation(line: 0, scope: !3167)
!3263 = !DILocation(line: 1288, column: 13, scope: !3167)
!3264 = !DILocation(line: 1297, column: 17, scope: !3169)
!3265 = !DILocation(line: 0, scope: !3169)
!3266 = !DILocation(line: 1298, column: 10, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 1298, column: 10)
!3268 = !DILocation(line: 1298, column: 10, scope: !3169)
!3269 = !DILocation(line: 1300, column: 10, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 1300, column: 10)
!3271 = !DILocation(line: 1311, column: 17, scope: !3171)
!3272 = !DILocation(line: 0, scope: !3171)
!3273 = !DILocation(line: 1312, column: 13, scope: !3171)
!3274 = !DILocation(line: 1318, column: 17, scope: !3173)
!3275 = !DILocation(line: 0, scope: !3173)
!3276 = !DILocation(line: 1319, column: 10, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 1319, column: 10)
!3278 = !DILocation(line: 1319, column: 10, scope: !3173)
!3279 = !DILocation(line: 1321, column: 10, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 1321, column: 10)
!3281 = !DILocation(line: 1329, column: 17, scope: !3175)
!3282 = !DILocation(line: 0, scope: !3175)
!3283 = !DILocation(line: 1330, column: 17, scope: !3175)
!3284 = !DILocation(line: 1331, column: 14, scope: !3175)
!3285 = !DILocation(line: 1332, column: 7, scope: !3175)
!3286 = !DILocation(line: 1332, column: 10, scope: !3175)
!3287 = !DILocation(line: 1341, column: 7, scope: !3179)
!3288 = !DILocation(line: 1341, column: 10, scope: !3179)
!3289 = !DILocation(line: 1341, column: 27, scope: !3179)
!3290 = !DILocation(line: 1342, column: 7, scope: !3179)
!3291 = !DILocation(line: 1342, column: 10, scope: !3179)
!3292 = !DILocation(line: 1343, column: 7, scope: !3179)
!3293 = !DILocation(line: 1343, column: 11, scope: !3179)
!3294 = !DILocation(line: 1340, column: 7, scope: !3149)
!3295 = !DILocation(line: 1348, column: 47, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1347, column: 11)
!3297 = !DILocation(line: 1348, column: 9, scope: !3296)
!3298 = !DILocation(line: 0, scope: !3178)
!3299 = !DILocation(line: 1348, column: 7, scope: !3296)
!3300 = !DILocation(line: 1349, column: 4, scope: !3296)
!3301 = !DILocation(line: 1349, column: 34, scope: !3296)
!3302 = !DILocation(line: 1349, column: 7, scope: !3296)
!3303 = !DILocation(line: 1347, column: 11, scope: !3178)
!3304 = !DILocation(line: 1351, column: 5, scope: !3179)
!3305 = !DILocation(line: 1353, column: 7, scope: !3183)
!3306 = !DILocation(line: 1353, column: 7, scope: !3149)
!3307 = !DILocation(line: 1354, column: 12, scope: !3183)
!3308 = !DILocation(line: 1354, column: 5, scope: !3183)
!3309 = !DILocation(line: 1355, column: 12, scope: !3182)
!3310 = !DILocation(line: 1356, column: 5, scope: !3182)
!3311 = !DILocation(line: 1356, column: 8, scope: !3182)
!3312 = !DILocation(line: 1356, column: 43, scope: !3182)
!3313 = !DILocation(line: 1355, column: 12, scope: !3183)
!3314 = !DILocation(line: 1358, column: 33, scope: !3181)
!3315 = !DILocation(line: 0, scope: !3181)
!3316 = !DILocation(line: 1359, column: 12, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 1359, column: 11)
!3318 = !DILocation(line: 1359, column: 11, scope: !3181)
!3319 = !DILocation(line: 1362, column: 49, scope: !3181)
!3320 = !DILocation(line: 1362, column: 15, scope: !3181)
!3321 = !DILocation(line: 1363, column: 8, scope: !3181)
!3322 = !DILocation(line: 1363, column: 36, scope: !3181)
!3323 = !DILocation(line: 1363, column: 42, scope: !3181)
!3324 = !DILocation(line: 1363, column: 53, scope: !3181)
!3325 = !DILocation(line: 1363, column: 11, scope: !3181)
!3326 = !DILocation(line: 1362, column: 7, scope: !3181)
!3327 = !DILocation(line: 1367, column: 1, scope: !3149)
!3328 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !378, file: !378, line: 1694, type: !2855, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3329)
!3329 = !{!3330}
!3330 = !DILocalVariable(name: "gs", arg: 1, scope: !3328, file: !378, line: 1694, type: !2832)
!3331 = !DILocation(line: 0, scope: !3328)
!3332 = !DILocation(line: 1697, column: 10, scope: !3328)
!3333 = !DILocation(line: 1697, column: 3, scope: !3328)
!3334 = distinct !DISubprogram(name: "gimple_code", scope: !378, file: !378, line: 1052, type: !3335, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3337)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!377, !2832}
!3337 = !{!3338}
!3338 = !DILocalVariable(name: "g", arg: 1, scope: !3334, file: !378, line: 1052, type: !2832)
!3339 = !DILocation(line: 0, scope: !3334)
!3340 = !DILocation(line: 1054, column: 20, scope: !3334)
!3341 = !DILocation(line: 1054, column: 3, scope: !3334)
!3342 = distinct !DISubprogram(name: "stmt_may_clobber_ref_p", scope: !3, file: !3, line: 1417, type: !3042, scopeLine: 1418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3343)
!3343 = !{!3344, !3345, !3346}
!3344 = !DILocalVariable(name: "stmt", arg: 1, scope: !3342, file: !3, line: 1417, type: !782)
!3345 = !DILocalVariable(name: "ref", arg: 2, scope: !3342, file: !3, line: 1417, type: !458)
!3346 = !DILocalVariable(name: "r", scope: !3342, file: !3, line: 1419, type: !2508)
!3347 = !DILocation(line: 0, scope: !3342)
!3348 = !DILocation(line: 1419, column: 3, scope: !3342)
!3349 = !DILocation(line: 1420, column: 3, scope: !3342)
!3350 = !DILocation(line: 1421, column: 10, scope: !3342)
!3351 = !DILocation(line: 1422, column: 1, scope: !3342)
!3352 = !DILocation(line: 1421, column: 3, scope: !3342)
!3353 = distinct !DISubprogram(name: "get_continuation_for_phi", scope: !3, file: !3, line: 1469, type: !3354, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3357)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!458, !782, !2507, !3356}
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3365, !3366, !3367, !3368}
!3358 = !DILocalVariable(name: "phi", arg: 1, scope: !3353, file: !3, line: 1469, type: !782)
!3359 = !DILocalVariable(name: "ref", arg: 2, scope: !3353, file: !3, line: 1469, type: !2507)
!3360 = !DILocalVariable(name: "visited", arg: 3, scope: !3353, file: !3, line: 1469, type: !3356)
!3361 = !DILocalVariable(name: "nargs", scope: !3353, file: !3, line: 1471, type: !7)
!3362 = !DILocalVariable(name: "arg0", scope: !3363, file: !3, line: 1481, type: !458)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 1480, column: 5)
!3364 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 1479, column: 7)
!3365 = !DILocalVariable(name: "arg1", scope: !3363, file: !3, line: 1482, type: !458)
!3366 = !DILocalVariable(name: "def0", scope: !3363, file: !3, line: 1483, type: !782)
!3367 = !DILocalVariable(name: "def1", scope: !3363, file: !3, line: 1484, type: !782)
!3368 = !DILocalVariable(name: "common_vuse", scope: !3363, file: !3, line: 1485, type: !458)
!3369 = !DILocation(line: 0, scope: !3353)
!3370 = !DILocation(line: 1471, column: 20, scope: !3353)
!3371 = !DILocation(line: 1474, column: 7, scope: !3353)
!3372 = !DILocation(line: 1475, column: 12, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 1474, column: 7)
!3374 = !DILocation(line: 1475, column: 5, scope: !3373)
!3375 = !DILocation(line: 1481, column: 19, scope: !3363)
!3376 = !DILocation(line: 0, scope: !3363)
!3377 = !DILocation(line: 1482, column: 19, scope: !3363)
!3378 = !DILocation(line: 1483, column: 21, scope: !3363)
!3379 = !DILocation(line: 1484, column: 21, scope: !3363)
!3380 = !DILocation(line: 1487, column: 16, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 1487, column: 11)
!3382 = !DILocation(line: 1487, column: 11, scope: !3363)
!3383 = !DILocation(line: 1489, column: 16, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1489, column: 16)
!3385 = !DILocation(line: 1490, column: 9, scope: !3384)
!3386 = !DILocation(line: 1490, column: 14, scope: !3384)
!3387 = !DILocation(line: 1491, column: 6, scope: !3384)
!3388 = !DILocation(line: 1492, column: 11, scope: !3384)
!3389 = !DILocation(line: 1492, column: 29, scope: !3384)
!3390 = !DILocation(line: 1491, column: 9, scope: !3384)
!3391 = !DILocation(line: 1489, column: 16, scope: !3381)
!3392 = !DILocation(line: 1494, column: 8, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 1494, column: 8)
!3394 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 1493, column: 2)
!3395 = !DILocation(line: 1494, column: 8, scope: !3394)
!3396 = !DILocation(line: 1497, column: 16, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 1497, column: 16)
!3398 = !DILocation(line: 1498, column: 9, scope: !3397)
!3399 = !DILocation(line: 1499, column: 7, scope: !3397)
!3400 = !DILocation(line: 1499, column: 25, scope: !3397)
!3401 = !DILocation(line: 1498, column: 12, scope: !3397)
!3402 = !DILocation(line: 1497, column: 16, scope: !3384)
!3403 = !DILocation(line: 1501, column: 8, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 1501, column: 8)
!3405 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 1500, column: 2)
!3406 = !DILocation(line: 1501, column: 8, scope: !3405)
!3407 = !DILocation(line: 1517, column: 31, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 1517, column: 16)
!3409 = !DILocation(line: 1517, column: 29, scope: !3408)
!3410 = !DILocation(line: 1518, column: 9, scope: !3408)
!3411 = !DILocation(line: 1518, column: 27, scope: !3408)
!3412 = !DILocation(line: 1518, column: 24, scope: !3408)
!3413 = !DILocation(line: 1517, column: 16, scope: !3397)
!3414 = !DILocation(line: 1520, column: 9, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 1520, column: 8)
!3416 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 1519, column: 2)
!3417 = !DILocation(line: 1521, column: 8, scope: !3415)
!3418 = !DILocation(line: 1521, column: 12, scope: !3415)
!3419 = !DILocation(line: 1520, column: 8, scope: !3416)
!3420 = !DILocation(line: 1524, column: 5, scope: !3364)
!3421 = !DILocation(line: 1526, column: 3, scope: !3353)
!3422 = !DILocation(line: 1527, column: 1, scope: !3353)
!3423 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !378, file: !378, line: 3061, type: !3424, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!7, !2832}
!3426 = !{!3427}
!3427 = !DILocalVariable(name: "gs", arg: 1, scope: !3423, file: !378, line: 3061, type: !2832)
!3428 = !DILocation(line: 0, scope: !3423)
!3429 = !DILocation(line: 3064, column: 25, scope: !3423)
!3430 = !DILocation(line: 3064, column: 3, scope: !3423)
!3431 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2332, file: !2332, line: 427, type: !3432, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3437)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!458, !3434}
!3434 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !813, line: 30, baseType: !3435)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !135, line: 1893, baseType: !824)
!3437 = !{!3438}
!3438 = !DILocalVariable(name: "use", arg: 1, scope: !3431, file: !2332, line: 427, type: !3434)
!3439 = !DILocation(line: 0, scope: !3431)
!3440 = !DILocation(line: 429, column: 17, scope: !3431)
!3441 = !DILocation(line: 429, column: 10, scope: !3431)
!3442 = !DILocation(line: 429, column: 3, scope: !3431)
!3443 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2332, file: !2332, line: 442, type: !3444, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3446)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!3434, !782, !451}
!3446 = !{!3447, !3448}
!3447 = !DILocalVariable(name: "gs", arg: 1, scope: !3443, file: !2332, line: 442, type: !782)
!3448 = !DILocalVariable(name: "i", arg: 2, scope: !3443, file: !2332, line: 442, type: !451)
!3449 = !DILocation(line: 0, scope: !3443)
!3450 = !DILocation(line: 444, column: 11, scope: !3443)
!3451 = !DILocation(line: 444, column: 35, scope: !3443)
!3452 = !DILocation(line: 444, column: 3, scope: !3443)
!3453 = distinct !DISubprogram(name: "gimple_nop_p", scope: !378, file: !378, line: 4304, type: !2830, scopeLine: 4305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3454)
!3454 = !{!3455}
!3455 = !DILocalVariable(name: "g", arg: 1, scope: !3453, file: !378, line: 4304, type: !2832)
!3456 = !DILocation(line: 0, scope: !3453)
!3457 = !DILocation(line: 4306, column: 10, scope: !3453)
!3458 = !DILocation(line: 4306, column: 26, scope: !3453)
!3459 = !DILocation(line: 4306, column: 3, scope: !3453)
!3460 = distinct !DISubprogram(name: "gimple_bb", scope: !378, file: !378, line: 1112, type: !3461, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!746, !2832}
!3463 = !{!3464}
!3464 = !DILocalVariable(name: "g", arg: 1, scope: !3460, file: !378, line: 1112, type: !2832)
!3465 = !DILocation(line: 0, scope: !3460)
!3466 = !DILocation(line: 1114, column: 20, scope: !3460)
!3467 = !DILocation(line: 1114, column: 3, scope: !3460)
!3468 = distinct !DISubprogram(name: "maybe_skip_until", scope: !3, file: !3, line: 1430, type: !3469, scopeLine: 1432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!450, !782, !458, !2507, !458, !3356}
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477}
!3472 = !DILocalVariable(name: "phi", arg: 1, scope: !3468, file: !3, line: 1430, type: !782)
!3473 = !DILocalVariable(name: "target", arg: 2, scope: !3468, file: !3, line: 1430, type: !458)
!3474 = !DILocalVariable(name: "ref", arg: 3, scope: !3468, file: !3, line: 1430, type: !2507)
!3475 = !DILocalVariable(name: "vuse", arg: 4, scope: !3468, file: !3, line: 1431, type: !458)
!3476 = !DILocalVariable(name: "visited", arg: 5, scope: !3468, file: !3, line: 1431, type: !3356)
!3477 = !DILocalVariable(name: "def_stmt", scope: !3478, file: !3, line: 1441, type: !782)
!3478 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 1440, column: 5)
!3479 = !DILocation(line: 0, scope: !3468)
!3480 = !DILocation(line: 1433, column: 8, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 1433, column: 7)
!3482 = !DILocation(line: 1433, column: 7, scope: !3468)
!3483 = !DILocation(line: 1434, column: 16, scope: !3481)
!3484 = !DILocation(line: 1434, column: 14, scope: !3481)
!3485 = !DILocation(line: 1434, column: 5, scope: !3481)
!3486 = !DILocation(line: 1436, column: 19, scope: !3468)
!3487 = !DILocation(line: 1436, column: 29, scope: !3468)
!3488 = !DILocation(line: 1436, column: 3, scope: !3468)
!3489 = !DILocation(line: 1439, column: 3, scope: !3468)
!3490 = !DILocation(line: 1439, column: 15, scope: !3468)
!3491 = !DILocation(line: 1441, column: 25, scope: !3478)
!3492 = !DILocation(line: 0, scope: !3478)
!3493 = !DILocation(line: 1443, column: 11, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 1443, column: 11)
!3495 = !DILocation(line: 1443, column: 34, scope: !3494)
!3496 = !DILocation(line: 1443, column: 11, scope: !3478)
!3497 = !DILocation(line: 1446, column: 22, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 1446, column: 8)
!3499 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 1444, column: 2)
!3500 = !DILocation(line: 1446, column: 32, scope: !3498)
!3501 = !DILocation(line: 1446, column: 8, scope: !3498)
!3502 = !DILocation(line: 1446, column: 8, scope: !3499)
!3503 = !DILocation(line: 1448, column: 11, scope: !3499)
!3504 = !DILocation(line: 1449, column: 9, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 1449, column: 8)
!3506 = !DILocation(line: 0, scope: !3499)
!3507 = distinct !{!3507, !3489, !3508}
!3508 = !DILocation(line: 1458, column: 5, scope: !3468)
!3509 = !DILocation(line: 1454, column: 16, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 1454, column: 16)
!3511 = !DILocation(line: 1455, column: 9, scope: !3510)
!3512 = !DILocation(line: 1455, column: 12, scope: !3510)
!3513 = !DILocation(line: 1454, column: 16, scope: !3494)
!3514 = !DILocation(line: 1457, column: 14, scope: !3478)
!3515 = !DILocation(line: 1460, column: 1, scope: !3468)
!3516 = distinct !DISubprogram(name: "gimple_vuse", scope: !378, file: !378, line: 1365, type: !2855, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3517)
!3517 = !{!3518}
!3518 = !DILocalVariable(name: "g", arg: 1, scope: !3516, file: !378, line: 1365, type: !2832)
!3519 = !DILocation(line: 0, scope: !3516)
!3520 = !DILocation(line: 1367, column: 8, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3516, file: !378, line: 1367, column: 7)
!3522 = !DILocation(line: 1367, column: 7, scope: !3516)
!3523 = !DILocation(line: 1369, column: 23, scope: !3516)
!3524 = !DILocation(line: 1369, column: 3, scope: !3516)
!3525 = !DILocation(line: 1370, column: 1, scope: !3516)
!3526 = distinct !DISubprogram(name: "walk_non_aliased_vuses", scope: !3, file: !3, line: 1548, type: !3527, scopeLine: 1551, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3532)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!455, !2507, !458, !3529, !3529, !455}
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!455, !2507, !458, !455}
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540}
!3533 = !DILocalVariable(name: "ref", arg: 1, scope: !3526, file: !3, line: 1548, type: !2507)
!3534 = !DILocalVariable(name: "vuse", arg: 2, scope: !3526, file: !3, line: 1548, type: !458)
!3535 = !DILocalVariable(name: "walker", arg: 3, scope: !3526, file: !3, line: 1549, type: !3529)
!3536 = !DILocalVariable(name: "translate", arg: 4, scope: !3526, file: !3, line: 1550, type: !3529)
!3537 = !DILocalVariable(name: "data", arg: 5, scope: !3526, file: !3, line: 1550, type: !455)
!3538 = !DILocalVariable(name: "visited", scope: !3526, file: !3, line: 1552, type: !1300)
!3539 = !DILocalVariable(name: "res", scope: !3526, file: !3, line: 1553, type: !455)
!3540 = !DILocalVariable(name: "def_stmt", scope: !3541, file: !3, line: 1559, type: !782)
!3541 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1558, column: 5)
!3542 = !DILocation(line: 0, scope: !3526)
!3543 = !DILocation(line: 1552, column: 3, scope: !3526)
!3544 = !DILocation(line: 1552, column: 10, scope: !3526)
!3545 = !DILocation(line: 1555, column: 3, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 1555, column: 3)
!3547 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1555, column: 3)
!3548 = !DILocation(line: 1555, column: 3, scope: !3547)
!3549 = !DILocation(line: 0, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 1575, column: 12)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 1574, column: 6)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 1573, column: 8)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 1572, column: 2)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1569, column: 16)
!3555 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 1567, column: 11)
!3556 = !DILocation(line: 1557, column: 3, scope: !3526)
!3557 = !DILocation(line: 1562, column: 13, scope: !3541)
!3558 = !DILocation(line: 1563, column: 11, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 1563, column: 11)
!3560 = !DILocation(line: 1563, column: 11, scope: !3541)
!3561 = !DILocation(line: 1566, column: 18, scope: !3541)
!3562 = !DILocation(line: 0, scope: !3541)
!3563 = !DILocation(line: 1567, column: 11, scope: !3555)
!3564 = !DILocation(line: 1567, column: 11, scope: !3541)
!3565 = !DILocation(line: 1569, column: 16, scope: !3554)
!3566 = !DILocation(line: 1569, column: 39, scope: !3554)
!3567 = !DILocation(line: 1569, column: 16, scope: !3555)
!3568 = !DILocation(line: 1573, column: 8, scope: !3552)
!3569 = !DILocation(line: 1573, column: 8, scope: !3553)
!3570 = !DILocation(line: 1575, column: 12, scope: !3551)
!3571 = !DILocation(line: 1589, column: 11, scope: !3553)
!3572 = !DILocation(line: 1570, column: 9, scope: !3554)
!3573 = !DILocation(line: 1570, column: 2, scope: !3554)
!3574 = !DILocation(line: 1591, column: 5, scope: !3541)
!3575 = distinct !{!3575, !3556, !3576}
!3576 = !DILocation(line: 1592, column: 14, scope: !3526)
!3577 = !DILocation(line: 1594, column: 7, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1594, column: 7)
!3579 = !DILocation(line: 1577, column: 14, scope: !3551)
!3580 = !DILocation(line: 1579, column: 12, scope: !3551)
!3581 = !DILocation(line: 1586, column: 3, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 1585, column: 17)
!3583 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 1579, column: 12)
!3584 = !DILocation(line: 1594, column: 7, scope: !3526)
!3585 = !DILocation(line: 1595, column: 5, scope: !3578)
!3586 = !DILocation(line: 1597, column: 3, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 1597, column: 3)
!3588 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1597, column: 3)
!3589 = !DILocation(line: 1597, column: 3, scope: !3588)
!3590 = !DILocation(line: 1600, column: 1, scope: !3526)
!3591 = !DILocation(line: 1599, column: 3, scope: !3526)
!3592 = distinct !DISubprogram(name: "walk_aliased_vdefs", scope: !3, file: !3, line: 1655, type: !3593, scopeLine: 1658, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3598)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!7, !2507, !458, !3595, !455, !3356}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!450, !2507, !458, !455}
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3604, !3605}
!3599 = !DILocalVariable(name: "ref", arg: 1, scope: !3592, file: !3, line: 1655, type: !2507)
!3600 = !DILocalVariable(name: "vdef", arg: 2, scope: !3592, file: !3, line: 1655, type: !458)
!3601 = !DILocalVariable(name: "walker", arg: 3, scope: !3592, file: !3, line: 1656, type: !3595)
!3602 = !DILocalVariable(name: "data", arg: 4, scope: !3592, file: !3, line: 1656, type: !455)
!3603 = !DILocalVariable(name: "visited", arg: 5, scope: !3592, file: !3, line: 1657, type: !3356)
!3604 = !DILocalVariable(name: "local_visited", scope: !3592, file: !3, line: 1659, type: !1300)
!3605 = !DILocalVariable(name: "ret", scope: !3592, file: !3, line: 1660, type: !7)
!3606 = !DILocation(line: 0, scope: !3592)
!3607 = !DILocation(line: 1659, column: 3, scope: !3592)
!3608 = !DILocation(line: 1659, column: 10, scope: !3592)
!3609 = !DILocation(line: 1662, column: 3, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 1662, column: 3)
!3611 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 1662, column: 3)
!3612 = !DILocation(line: 1662, column: 3, scope: !3611)
!3613 = !DILocation(line: 1665, column: 10, scope: !3592)
!3614 = !DILocation(line: 1664, column: 9, scope: !3592)
!3615 = !DILocation(line: 1666, column: 7, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 1666, column: 7)
!3617 = !DILocation(line: 1666, column: 7, scope: !3592)
!3618 = !DILocation(line: 1667, column: 5, scope: !3616)
!3619 = !DILocation(line: 1669, column: 3, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 1669, column: 3)
!3621 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 1669, column: 3)
!3622 = !DILocation(line: 1669, column: 3, scope: !3621)
!3623 = !DILocation(line: 1672, column: 1, scope: !3592)
!3624 = !DILocation(line: 1671, column: 3, scope: !3592)
!3625 = distinct !DISubprogram(name: "walk_aliased_vdefs_1", scope: !3, file: !3, line: 1617, type: !3626, scopeLine: 1620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3628)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!7, !2507, !458, !3595, !455, !3356, !7}
!3628 = !{!3629, !3630, !3631, !3632, !3633, !3634, !3635, !3637}
!3629 = !DILocalVariable(name: "ref", arg: 1, scope: !3625, file: !3, line: 1617, type: !2507)
!3630 = !DILocalVariable(name: "vdef", arg: 2, scope: !3625, file: !3, line: 1617, type: !458)
!3631 = !DILocalVariable(name: "walker", arg: 3, scope: !3625, file: !3, line: 1618, type: !3595)
!3632 = !DILocalVariable(name: "data", arg: 4, scope: !3625, file: !3, line: 1618, type: !455)
!3633 = !DILocalVariable(name: "visited", arg: 5, scope: !3625, file: !3, line: 1619, type: !3356)
!3634 = !DILocalVariable(name: "cnt", arg: 6, scope: !3625, file: !3, line: 1619, type: !7)
!3635 = !DILocalVariable(name: "def_stmt", scope: !3636, file: !3, line: 1623, type: !782)
!3636 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 1622, column: 5)
!3637 = !DILocalVariable(name: "i", scope: !3638, file: !3, line: 1633, type: !7)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 1632, column: 2)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 1631, column: 16)
!3640 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 1629, column: 11)
!3641 = !DILocation(line: 0, scope: !3625)
!3642 = !DILocation(line: 0, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 1644, column: 11)
!3644 = !DILocation(line: 1621, column: 3, scope: !3625)
!3645 = !DILocation(line: 1623, column: 25, scope: !3636)
!3646 = !DILocation(line: 0, scope: !3636)
!3647 = !DILocation(line: 1625, column: 11, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 1625, column: 11)
!3649 = !DILocation(line: 1626, column: 4, scope: !3648)
!3650 = !DILocation(line: 1626, column: 34, scope: !3648)
!3651 = !DILocation(line: 1626, column: 8, scope: !3648)
!3652 = !DILocation(line: 1625, column: 11, scope: !3636)
!3653 = !DILocation(line: 1629, column: 11, scope: !3640)
!3654 = !DILocation(line: 1629, column: 11, scope: !3636)
!3655 = !DILocation(line: 1631, column: 16, scope: !3639)
!3656 = !DILocation(line: 1631, column: 39, scope: !3639)
!3657 = !DILocation(line: 1631, column: 16, scope: !3640)
!3658 = !DILocation(line: 1643, column: 10, scope: !3636)
!3659 = !DILocation(line: 1646, column: 7, scope: !3643)
!3660 = !DILocation(line: 1644, column: 11, scope: !3636)
!3661 = !DILocation(line: 1649, column: 14, scope: !3636)
!3662 = !DILocation(line: 1650, column: 5, scope: !3625)
!3663 = !DILocation(line: 1634, column: 9, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 1634, column: 8)
!3665 = !DILocation(line: 1634, column: 8, scope: !3638)
!3666 = !DILocation(line: 1635, column: 17, scope: !3664)
!3667 = !DILocation(line: 1635, column: 15, scope: !3664)
!3668 = !DILocation(line: 1635, column: 6, scope: !3664)
!3669 = !DILocation(line: 0, scope: !3638)
!3670 = !DILocation(line: 1636, column: 9, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 1636, column: 4)
!3672 = !DILocation(line: 1636, column: 20, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 1636, column: 4)
!3674 = !DILocation(line: 1636, column: 18, scope: !3673)
!3675 = !DILocation(line: 1636, column: 4, scope: !3671)
!3676 = !DILocation(line: 1637, column: 40, scope: !3673)
!3677 = !DILocation(line: 1637, column: 13, scope: !3673)
!3678 = !DILocation(line: 1637, column: 10, scope: !3673)
!3679 = !DILocation(line: 1636, column: 52, scope: !3673)
!3680 = !DILocation(line: 1636, column: 4, scope: !3673)
!3681 = distinct !{!3681, !3675, !3682}
!3682 = !DILocation(line: 1638, column: 31, scope: !3671)
!3683 = !DILocation(line: 1652, column: 1, scope: !3625)
!3684 = !DILocation(line: 1645, column: 8, scope: !3643)
!3685 = !DILocation(line: 1646, column: 4, scope: !3643)
!3686 = distinct !DISubprogram(name: "first_htab_element", scope: !2332, file: !2332, line: 58, type: !3687, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3690)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!455, !3689, !1214}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!3690 = !{!3691, !3692, !3693}
!3691 = !DILocalVariable(name: "hti", arg: 1, scope: !3686, file: !2332, line: 58, type: !3689)
!3692 = !DILocalVariable(name: "table", arg: 2, scope: !3686, file: !2332, line: 58, type: !1214)
!3693 = !DILocalVariable(name: "x", scope: !3694, file: !2332, line: 65, type: !455)
!3694 = distinct !DILexicalBlock(scope: !3686, file: !2332, line: 64, column: 5)
!3695 = !DILocation(line: 0, scope: !3686)
!3696 = !DILocation(line: 60, column: 8, scope: !3686)
!3697 = !DILocation(line: 60, column: 13, scope: !3686)
!3698 = !DILocation(line: 61, column: 22, scope: !3686)
!3699 = !DILocation(line: 61, column: 8, scope: !3686)
!3700 = !DILocation(line: 61, column: 13, scope: !3686)
!3701 = !DILocation(line: 62, column: 21, scope: !3686)
!3702 = !DILocation(line: 62, column: 28, scope: !3686)
!3703 = !DILocation(line: 62, column: 26, scope: !3686)
!3704 = !DILocation(line: 62, column: 8, scope: !3686)
!3705 = !DILocation(line: 62, column: 14, scope: !3686)
!3706 = !DILocation(line: 65, column: 22, scope: !3694)
!3707 = !DILocation(line: 63, column: 3, scope: !3686)
!3708 = !DILocation(line: 65, column: 15, scope: !3694)
!3709 = !DILocation(line: 66, column: 33, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3694, file: !2332, line: 66, column: 11)
!3711 = !DILocation(line: 68, column: 14, scope: !3686)
!3712 = !DILocation(line: 68, column: 28, scope: !3686)
!3713 = !DILocation(line: 68, column: 5, scope: !3694)
!3714 = distinct !{!3714, !3707, !3715}
!3715 = !DILocation(line: 68, column: 40, scope: !3686)
!3716 = !DILocation(line: 70, column: 12, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3686, file: !2332, line: 70, column: 7)
!3718 = !DILocation(line: 70, column: 17, scope: !3717)
!3719 = !DILocation(line: 70, column: 7, scope: !3686)
!3720 = !DILocation(line: 71, column: 12, scope: !3717)
!3721 = !DILocation(line: 71, column: 5, scope: !3717)
!3722 = !DILocation(line: 73, column: 1, scope: !3686)
!3723 = distinct !DISubprogram(name: "gimple_referenced_vars", scope: !2332, file: !2332, line: 40, type: !3724, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!1214, !2817}
!3726 = !{!3727}
!3727 = !DILocalVariable(name: "fun", arg: 1, scope: !3723, file: !2332, line: 40, type: !2817)
!3728 = !DILocation(line: 0, scope: !3723)
!3729 = !DILocation(line: 42, column: 13, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3723, file: !2332, line: 42, column: 7)
!3731 = !DILocation(line: 42, column: 8, scope: !3730)
!3732 = !DILocation(line: 42, column: 7, scope: !3723)
!3733 = !DILocation(line: 44, column: 26, scope: !3723)
!3734 = !DILocation(line: 44, column: 3, scope: !3723)
!3735 = !DILocation(line: 45, column: 1, scope: !3723)
!3736 = distinct !DISubprogram(name: "end_htab_p", scope: !2332, file: !2332, line: 79, type: !3737, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3741)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!450, !3739}
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2265)
!3741 = !{!3742}
!3742 = !DILocalVariable(name: "hti", arg: 1, scope: !3736, file: !2332, line: 79, type: !3739)
!3743 = !DILocation(line: 0, scope: !3736)
!3744 = !DILocation(line: 81, column: 12, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3736, file: !2332, line: 81, column: 7)
!3746 = !DILocation(line: 81, column: 25, scope: !3745)
!3747 = !DILocation(line: 81, column: 17, scope: !3745)
!3748 = !DILocation(line: 84, column: 1, scope: !3736)
!3749 = distinct !DISubprogram(name: "next_htab_element", scope: !2332, file: !2332, line: 90, type: !3750, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!455, !3689}
!3752 = !{!3753, !3754}
!3753 = !DILocalVariable(name: "hti", arg: 1, scope: !3749, file: !2332, line: 90, type: !3689)
!3754 = !DILocalVariable(name: "x", scope: !3755, file: !2332, line: 94, type: !455)
!3755 = distinct !DILexicalBlock(scope: !3749, file: !2332, line: 93, column: 5)
!3756 = !DILocation(line: 0, scope: !3749)
!3757 = !DILocation(line: 94, column: 22, scope: !3755)
!3758 = !DILocation(line: 92, column: 10, scope: !3749)
!3759 = !DILocation(line: 92, column: 31, scope: !3749)
!3760 = !DILocation(line: 92, column: 3, scope: !3749)
!3761 = !DILocation(line: 92, column: 24, scope: !3749)
!3762 = !DILocation(line: 94, column: 15, scope: !3755)
!3763 = !DILocation(line: 0, scope: !3755)
!3764 = !DILocation(line: 95, column: 33, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3755, file: !2332, line: 95, column: 11)
!3766 = distinct !{!3766, !3760, !3767}
!3767 = !DILocation(line: 97, column: 5, scope: !3749)
!3768 = !DILocation(line: 99, column: 1, scope: !3749)
!3769 = distinct !DISubprogram(name: "ranges_overlap_p", scope: !2332, file: !2332, line: 1192, type: !3770, scopeLine: 1196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3772)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!450, !512, !512, !512, !512}
!3772 = !{!3773, !3774, !3775, !3776}
!3773 = !DILocalVariable(name: "pos1", arg: 1, scope: !3769, file: !2332, line: 1192, type: !512)
!3774 = !DILocalVariable(name: "size1", arg: 2, scope: !3769, file: !2332, line: 1193, type: !512)
!3775 = !DILocalVariable(name: "pos2", arg: 3, scope: !3769, file: !2332, line: 1194, type: !512)
!3776 = !DILocalVariable(name: "size2", arg: 4, scope: !3769, file: !2332, line: 1195, type: !512)
!3777 = !DILocation(line: 0, scope: !3769)
!3778 = !DILocation(line: 1197, column: 12, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3769, file: !2332, line: 1197, column: 7)
!3780 = !DILocation(line: 1198, column: 7, scope: !3779)
!3781 = !DILocation(line: 1198, column: 17, scope: !3779)
!3782 = !DILocation(line: 1199, column: 20, scope: !3779)
!3783 = !DILocation(line: 1199, column: 12, scope: !3779)
!3784 = !DILocation(line: 1199, column: 4, scope: !3779)
!3785 = !DILocation(line: 1201, column: 12, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3769, file: !2332, line: 1201, column: 7)
!3787 = !DILocation(line: 1202, column: 7, scope: !3786)
!3788 = !DILocation(line: 1202, column: 17, scope: !3786)
!3789 = !DILocation(line: 1203, column: 20, scope: !3786)
!3790 = !DILocation(line: 1203, column: 12, scope: !3786)
!3791 = !DILocation(line: 1203, column: 4, scope: !3786)
!3792 = !DILocation(line: 1206, column: 3, scope: !3769)
!3793 = !DILocation(line: 1207, column: 1, scope: !3769)
!3794 = distinct !DISubprogram(name: "gimple_expr_code", scope: !378, file: !378, line: 1438, type: !2840, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3795)
!3795 = !{!3796, !3797}
!3796 = !DILocalVariable(name: "stmt", arg: 1, scope: !3794, file: !378, line: 1438, type: !2832)
!3797 = !DILocalVariable(name: "code", scope: !3794, file: !378, line: 1440, type: !377)
!3798 = !DILocation(line: 0, scope: !3794)
!3799 = !DILocation(line: 1440, column: 27, scope: !3794)
!3800 = !DILocation(line: 1441, column: 29, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3794, file: !378, line: 1441, column: 7)
!3802 = !DILocation(line: 1442, column: 42, scope: !3801)
!3803 = !DILocation(line: 1442, column: 5, scope: !3801)
!3804 = !DILocation(line: 1446, column: 5, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3801, file: !378, line: 1443, column: 12)
!3806 = !DILocation(line: 1448, column: 5, scope: !3794)
!3807 = !DILocation(line: 1450, column: 1, scope: !3794)
!3808 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !378, file: !378, line: 1686, type: !3809, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3811)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!416, !134}
!3811 = !{!3812}
!3812 = !DILocalVariable(name: "code", arg: 1, scope: !3808, file: !378, line: 1686, type: !134)
!3813 = !DILocation(line: 0, scope: !3808)
!3814 = !DILocation(line: 1688, column: 34, scope: !3808)
!3815 = !DILocation(line: 1688, column: 10, scope: !3808)
!3816 = !DILocation(line: 1688, column: 3, scope: !3808)
!3817 = distinct !DISubprogram(name: "gimple_op", scope: !378, file: !378, line: 1631, type: !3818, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!458, !2832, !7}
!3820 = !{!3821, !3822}
!3821 = !DILocalVariable(name: "gs", arg: 1, scope: !3817, file: !378, line: 1631, type: !2832)
!3822 = !DILocalVariable(name: "i", arg: 2, scope: !3817, file: !378, line: 1631, type: !7)
!3823 = !DILocation(line: 0, scope: !3817)
!3824 = !DILocation(line: 1633, column: 7, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3817, file: !378, line: 1633, column: 7)
!3826 = !DILocation(line: 1633, column: 7, scope: !3817)
!3827 = !DILocation(line: 1638, column: 14, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3825, file: !378, line: 1634, column: 5)
!3829 = !DILocation(line: 1638, column: 7, scope: !3828)
!3830 = !DILocation(line: 0, scope: !3825)
!3831 = !DILocation(line: 1642, column: 1, scope: !3817)
!3832 = distinct !DISubprogram(name: "gimple_has_ops", scope: !378, file: !378, line: 1274, type: !2830, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3833)
!3833 = !{!3834}
!3834 = !DILocalVariable(name: "g", arg: 1, scope: !3832, file: !378, line: 1274, type: !2832)
!3835 = !DILocation(line: 0, scope: !3832)
!3836 = !DILocation(line: 1276, column: 10, scope: !3832)
!3837 = !DILocation(line: 1276, column: 26, scope: !3832)
!3838 = !DILocation(line: 1276, column: 41, scope: !3832)
!3839 = !DILocation(line: 1276, column: 44, scope: !3832)
!3840 = !DILocation(line: 1276, column: 60, scope: !3832)
!3841 = !DILocation(line: 1276, column: 3, scope: !3832)
!3842 = distinct !DISubprogram(name: "gimple_ops", scope: !378, file: !378, line: 1614, type: !3843, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3845)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!817, !782}
!3845 = !{!3846, !3847}
!3846 = !DILocalVariable(name: "gs", arg: 1, scope: !3842, file: !378, line: 1614, type: !782)
!3847 = !DILocalVariable(name: "off", scope: !3842, file: !378, line: 1616, type: !928)
!3848 = !DILocation(line: 0, scope: !3842)
!3849 = !DILocation(line: 1621, column: 28, scope: !3842)
!3850 = !DILocation(line: 1621, column: 9, scope: !3842)
!3851 = !DILocation(line: 1622, column: 3, scope: !3842)
!3852 = !DILocation(line: 1624, column: 20, scope: !3842)
!3853 = !DILocation(line: 1624, column: 32, scope: !3842)
!3854 = !DILocation(line: 1624, column: 10, scope: !3842)
!3855 = !DILocation(line: 1624, column: 3, scope: !3842)
!3856 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !378, file: !378, line: 1073, type: !3857, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!422, !782}
!3859 = !{!3860}
!3860 = !DILocalVariable(name: "gs", arg: 1, scope: !3856, file: !378, line: 1073, type: !782)
!3861 = !DILocation(line: 0, scope: !3856)
!3862 = !DILocation(line: 1075, column: 24, scope: !3856)
!3863 = !DILocation(line: 1075, column: 10, scope: !3856)
!3864 = !DILocation(line: 1075, column: 3, scope: !3856)
!3865 = distinct !DISubprogram(name: "gss_for_code", scope: !378, file: !378, line: 1061, type: !3866, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!422, !377}
!3868 = !{!3869}
!3869 = !DILocalVariable(name: "code", arg: 1, scope: !3865, file: !378, line: 1061, type: !377)
!3870 = !DILocation(line: 0, scope: !3865)
!3871 = !DILocation(line: 1066, column: 10, scope: !3865)
!3872 = !DILocation(line: 1066, column: 3, scope: !3865)
!3873 = distinct !DISubprogram(name: "ptr_deref_may_alias_decl_p", scope: !3, file: !3, line: 167, type: !2995, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3874)
!3874 = !{!3875, !3876, !3877, !3878}
!3875 = !DILocalVariable(name: "ptr", arg: 1, scope: !3873, file: !3, line: 167, type: !458)
!3876 = !DILocalVariable(name: "decl", arg: 2, scope: !3873, file: !3, line: 167, type: !458)
!3877 = !DILocalVariable(name: "pi", scope: !3873, file: !3, line: 169, type: !1478)
!3878 = !DILocalVariable(name: "base", scope: !3879, file: !3, line: 186, type: !458)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 185, column: 5)
!3880 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 184, column: 7)
!3881 = !DILocation(line: 0, scope: !3873)
!3882 = !DILocation(line: 171, column: 3, scope: !3873)
!3883 = !DILocation(line: 179, column: 8, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 179, column: 7)
!3885 = !DILocation(line: 179, column: 7, scope: !3873)
!3886 = !DILocation(line: 184, column: 7, scope: !3880)
!3887 = !DILocation(line: 184, column: 23, scope: !3880)
!3888 = !DILocation(line: 184, column: 7, scope: !3873)
!3889 = !DILocation(line: 186, column: 37, scope: !3879)
!3890 = !DILocation(line: 186, column: 19, scope: !3879)
!3891 = !DILocation(line: 0, scope: !3879)
!3892 = !DILocation(line: 188, column: 4, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 187, column: 11)
!3894 = !DILocation(line: 188, column: 7, scope: !3893)
!3895 = !DILocation(line: 187, column: 11, scope: !3879)
!3896 = !DILocation(line: 189, column: 8, scope: !3893)
!3897 = !DILocation(line: 198, column: 5, scope: !3880)
!3898 = !DILocation(line: 191, column: 12, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 190, column: 16)
!3900 = !DILocation(line: 190, column: 16, scope: !3893)
!3901 = !DILocation(line: 192, column: 9, scope: !3899)
!3902 = !DILocation(line: 192, column: 2, scope: !3899)
!3903 = !DILocation(line: 194, column: 12, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 193, column: 16)
!3905 = !DILocation(line: 193, column: 16, scope: !3899)
!3906 = !DILocation(line: 197, column: 2, scope: !3904)
!3907 = !DILocation(line: 0, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 202, column: 7)
!3909 = !DILocation(line: 202, column: 7, scope: !3908)
!3910 = !DILocation(line: 202, column: 23, scope: !3908)
!3911 = !DILocation(line: 202, column: 7, scope: !3873)
!3912 = !DILocation(line: 207, column: 8, scope: !3873)
!3913 = !DILocation(line: 208, column: 8, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 208, column: 7)
!3915 = !DILocation(line: 208, column: 7, scope: !3873)
!3916 = !DILocation(line: 214, column: 7, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 214, column: 7)
!3918 = !DILocation(line: 215, column: 7, scope: !3917)
!3919 = !DILocation(line: 215, column: 10, scope: !3917)
!3920 = !DILocation(line: 216, column: 7, scope: !3917)
!3921 = !DILocation(line: 216, column: 17, scope: !3917)
!3922 = !DILocation(line: 216, column: 10, scope: !3917)
!3923 = !DILocation(line: 214, column: 7, scope: !3873)
!3924 = !DILocation(line: 217, column: 33, scope: !3917)
!3925 = !DILocation(line: 217, column: 39, scope: !3917)
!3926 = !DILocation(line: 217, column: 12, scope: !3917)
!3927 = !DILocation(line: 217, column: 5, scope: !3917)
!3928 = !DILocation(line: 219, column: 37, scope: !3873)
!3929 = !DILocation(line: 219, column: 10, scope: !3873)
!3930 = !DILocation(line: 219, column: 3, scope: !3873)
!3931 = !DILocation(line: 220, column: 1, scope: !3873)
!3932 = distinct !DISubprogram(name: "same_type_for_tbaa", scope: !3, file: !3, line: 526, type: !3933, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!451, !458, !458}
!3935 = !{!3936, !3937}
!3936 = !DILocalVariable(name: "type1", arg: 1, scope: !3932, file: !3, line: 526, type: !458)
!3937 = !DILocalVariable(name: "type2", arg: 2, scope: !3932, file: !3, line: 526, type: !458)
!3938 = !DILocation(line: 0, scope: !3932)
!3939 = !DILocation(line: 528, column: 11, scope: !3932)
!3940 = !DILocation(line: 529, column: 11, scope: !3932)
!3941 = !DILocation(line: 532, column: 7, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 532, column: 7)
!3943 = !DILocation(line: 533, column: 7, scope: !3942)
!3944 = !DILocation(line: 533, column: 10, scope: !3942)
!3945 = !DILocation(line: 532, column: 7, scope: !3932)
!3946 = !DILocation(line: 537, column: 30, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 537, column: 7)
!3948 = !DILocation(line: 537, column: 7, scope: !3932)
!3949 = !DILocation(line: 543, column: 7, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 543, column: 7)
!3951 = !DILocation(line: 543, column: 25, scope: !3950)
!3952 = !DILocation(line: 544, column: 7, scope: !3950)
!3953 = !DILocation(line: 544, column: 10, scope: !3950)
!3954 = !DILocation(line: 544, column: 28, scope: !3950)
!3955 = !DILocation(line: 543, column: 7, scope: !3932)
!3956 = !DILocation(line: 555, column: 7, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 555, column: 7)
!3958 = !DILocation(line: 555, column: 32, scope: !3957)
!3959 = !DILocation(line: 555, column: 29, scope: !3957)
!3960 = !DILocation(line: 560, column: 1, scope: !3932)
!3961 = distinct !DISubprogram(name: "aliasing_component_refs_p", scope: !3, file: !3, line: 567, type: !3962, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!450, !458, !458, !514, !514, !458, !458, !514, !514}
!3964 = !{!3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3979, !3980, !3981, !3985, !3986}
!3965 = !DILocalVariable(name: "ref1", arg: 1, scope: !3961, file: !3, line: 567, type: !458)
!3966 = !DILocalVariable(name: "type1", arg: 2, scope: !3961, file: !3, line: 567, type: !458)
!3967 = !DILocalVariable(name: "offset1", arg: 3, scope: !3961, file: !3, line: 568, type: !514)
!3968 = !DILocalVariable(name: "max_size1", arg: 4, scope: !3961, file: !3, line: 568, type: !514)
!3969 = !DILocalVariable(name: "ref2", arg: 5, scope: !3961, file: !3, line: 569, type: !458)
!3970 = !DILocalVariable(name: "type2", arg: 6, scope: !3961, file: !3, line: 569, type: !458)
!3971 = !DILocalVariable(name: "offset2", arg: 7, scope: !3961, file: !3, line: 570, type: !514)
!3972 = !DILocalVariable(name: "max_size2", arg: 8, scope: !3961, file: !3, line: 570, type: !514)
!3973 = !DILocalVariable(name: "refp", scope: !3961, file: !3, line: 578, type: !817)
!3974 = !DILocalVariable(name: "same_p", scope: !3961, file: !3, line: 579, type: !451)
!3975 = !DILocalVariable(name: "offadj", scope: !3976, file: !3, line: 593, type: !514)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 592, column: 5)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 591, column: 12)
!3978 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 589, column: 7)
!3979 = !DILocalVariable(name: "sztmp", scope: !3976, file: !3, line: 593, type: !514)
!3980 = !DILocalVariable(name: "msztmp", scope: !3976, file: !3, line: 593, type: !514)
!3981 = !DILocalVariable(name: "offadj", scope: !3982, file: !3, line: 609, type: !514)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 608, column: 5)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 607, column: 12)
!3984 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 605, column: 7)
!3985 = !DILocalVariable(name: "sztmp", scope: !3982, file: !3, line: 609, type: !514)
!3986 = !DILocalVariable(name: "msztmp", scope: !3982, file: !3, line: 609, type: !514)
!3987 = !DILocation(line: 0, scope: !3961)
!3988 = !DILocation(line: 584, column: 3, scope: !3961)
!3989 = !DILocation(line: 584, column: 31, scope: !3961)
!3990 = !DILocation(line: 584, column: 10, scope: !3961)
!3991 = !DILocation(line: 585, column: 3, scope: !3961)
!3992 = !DILocation(line: 585, column: 26, scope: !3961)
!3993 = !DILocation(line: 585, column: 6, scope: !3961)
!3994 = !DILocation(line: 585, column: 52, scope: !3961)
!3995 = !DILocation(line: 586, column: 13, scope: !3961)
!3996 = distinct !{!3996, !3988, !3995}
!3997 = !DILocation(line: 587, column: 32, scope: !3961)
!3998 = !DILocation(line: 587, column: 12, scope: !3961)
!3999 = !DILocation(line: 589, column: 7, scope: !3961)
!4000 = !DILocation(line: 600, column: 3, scope: !3961)
!4001 = !DILocation(line: 593, column: 7, scope: !3976)
!4002 = !DILocation(line: 594, column: 32, scope: !3976)
!4003 = !DILocation(line: 0, scope: !3976)
!4004 = !DILocation(line: 594, column: 7, scope: !3976)
!4005 = !DILocation(line: 595, column: 18, scope: !3976)
!4006 = !DILocation(line: 595, column: 15, scope: !3976)
!4007 = !DILocation(line: 596, column: 14, scope: !3976)
!4008 = !DILocation(line: 597, column: 5, scope: !3977)
!4009 = !DILocation(line: 600, column: 31, scope: !3961)
!4010 = !DILocation(line: 600, column: 10, scope: !3961)
!4011 = !DILocation(line: 601, column: 3, scope: !3961)
!4012 = !DILocation(line: 601, column: 26, scope: !3961)
!4013 = !DILocation(line: 601, column: 6, scope: !3961)
!4014 = !DILocation(line: 601, column: 52, scope: !3961)
!4015 = !DILocation(line: 602, column: 13, scope: !3961)
!4016 = distinct !{!4016, !4000, !4015}
!4017 = !DILocation(line: 603, column: 32, scope: !3961)
!4018 = !DILocation(line: 603, column: 12, scope: !3961)
!4019 = !DILocation(line: 605, column: 7, scope: !3961)
!4020 = !DILocation(line: 609, column: 7, scope: !3982)
!4021 = !DILocation(line: 610, column: 32, scope: !3982)
!4022 = !DILocation(line: 0, scope: !3982)
!4023 = !DILocation(line: 610, column: 7, scope: !3982)
!4024 = !DILocation(line: 611, column: 18, scope: !3982)
!4025 = !DILocation(line: 611, column: 15, scope: !3982)
!4026 = !DILocation(line: 612, column: 14, scope: !3982)
!4027 = !DILocation(line: 613, column: 5, scope: !3983)
!4028 = !DILocation(line: 616, column: 3, scope: !3961)
!4029 = !DILocation(line: 617, column: 1, scope: !3961)
!4030 = distinct !DISubprogram(name: "ptr_derefs_may_alias_p", scope: !3, file: !3, line: 227, type: !2995, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4031)
!4031 = !{!4032, !4033, !4034, !4035, !4036, !4039}
!4032 = !DILocalVariable(name: "ptr1", arg: 1, scope: !4030, file: !3, line: 227, type: !458)
!4033 = !DILocalVariable(name: "ptr2", arg: 2, scope: !4030, file: !3, line: 227, type: !458)
!4034 = !DILocalVariable(name: "pi1", scope: !4030, file: !3, line: 229, type: !1478)
!4035 = !DILocalVariable(name: "pi2", scope: !4030, file: !3, line: 229, type: !1478)
!4036 = !DILocalVariable(name: "base", scope: !4037, file: !3, line: 242, type: !458)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 241, column: 5)
!4038 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 240, column: 7)
!4039 = !DILocalVariable(name: "base", scope: !4040, file: !3, line: 254, type: !458)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 253, column: 5)
!4041 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 252, column: 7)
!4042 = !DILocation(line: 0, scope: !4030)
!4043 = !DILocation(line: 231, column: 3, scope: !4030)
!4044 = !DILocation(line: 240, column: 7, scope: !4038)
!4045 = !DILocation(line: 240, column: 24, scope: !4038)
!4046 = !DILocation(line: 240, column: 7, scope: !4030)
!4047 = !DILocation(line: 242, column: 37, scope: !4037)
!4048 = !DILocation(line: 242, column: 19, scope: !4037)
!4049 = !DILocation(line: 0, scope: !4037)
!4050 = !DILocation(line: 244, column: 4, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 243, column: 11)
!4052 = !DILocation(line: 244, column: 7, scope: !4051)
!4053 = !DILocation(line: 243, column: 11, scope: !4037)
!4054 = !DILocation(line: 245, column: 9, scope: !4051)
!4055 = !DILocation(line: 251, column: 5, scope: !4038)
!4056 = !DILocation(line: 247, column: 12, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 246, column: 16)
!4058 = !DILocation(line: 246, column: 16, scope: !4051)
!4059 = !DILocation(line: 248, column: 9, scope: !4057)
!4060 = !DILocation(line: 248, column: 2, scope: !4057)
!4061 = !DILocation(line: 252, column: 7, scope: !4041)
!4062 = !DILocation(line: 252, column: 24, scope: !4041)
!4063 = !DILocation(line: 252, column: 7, scope: !4030)
!4064 = !DILocation(line: 254, column: 37, scope: !4040)
!4065 = !DILocation(line: 254, column: 19, scope: !4040)
!4066 = !DILocation(line: 0, scope: !4040)
!4067 = !DILocation(line: 256, column: 4, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 255, column: 11)
!4069 = !DILocation(line: 256, column: 7, scope: !4068)
!4070 = !DILocation(line: 255, column: 11, scope: !4040)
!4071 = !DILocation(line: 257, column: 9, scope: !4068)
!4072 = !DILocation(line: 263, column: 5, scope: !4041)
!4073 = !DILocation(line: 259, column: 12, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 258, column: 16)
!4075 = !DILocation(line: 258, column: 16, scope: !4068)
!4076 = !DILocation(line: 260, column: 9, scope: !4074)
!4077 = !DILocation(line: 260, column: 2, scope: !4074)
!4078 = !DILocation(line: 267, column: 7, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 267, column: 7)
!4080 = !DILocation(line: 267, column: 24, scope: !4079)
!4081 = !DILocation(line: 268, column: 7, scope: !4079)
!4082 = !DILocation(line: 268, column: 10, scope: !4079)
!4083 = !DILocation(line: 268, column: 27, scope: !4079)
!4084 = !DILocation(line: 274, column: 12, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 274, column: 7)
!4086 = !DILocation(line: 267, column: 7, scope: !4030)
!4087 = !DILocation(line: 279, column: 9, scope: !4030)
!4088 = !DILocation(line: 280, column: 9, scope: !4030)
!4089 = !DILocation(line: 281, column: 8, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 281, column: 7)
!4091 = !DILocation(line: 281, column: 16, scope: !4090)
!4092 = !DILocation(line: 281, column: 12, scope: !4090)
!4093 = !DILocation(line: 286, column: 7, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 286, column: 7)
!4095 = !DILocation(line: 287, column: 7, scope: !4094)
!4096 = !DILocation(line: 287, column: 10, scope: !4094)
!4097 = !DILocation(line: 288, column: 7, scope: !4094)
!4098 = !DILocation(line: 288, column: 50, scope: !4094)
!4099 = !DILocation(line: 288, column: 60, scope: !4094)
!4100 = !DILocation(line: 288, column: 11, scope: !4094)
!4101 = !DILocation(line: 286, column: 7, scope: !4030)
!4102 = !DILocation(line: 293, column: 40, scope: !4030)
!4103 = !DILocation(line: 293, column: 50, scope: !4030)
!4104 = !DILocation(line: 293, column: 10, scope: !4030)
!4105 = !DILocation(line: 293, column: 3, scope: !4030)
!4106 = !DILocation(line: 294, column: 1, scope: !4030)
!4107 = distinct !DISubprogram(name: "ref_maybe_used_by_call_p_1", scope: !3, file: !3, line: 970, type: !3099, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4108)
!4108 = !{!4109, !4110, !4111, !4112, !4113, !4114, !4115, !4119, !4120, !4122, !4123, !4126, !4132, !4137, !4141, !4144}
!4109 = !DILocalVariable(name: "call", arg: 1, scope: !4107, file: !3, line: 970, type: !782)
!4110 = !DILocalVariable(name: "ref", arg: 2, scope: !4107, file: !3, line: 970, type: !2507)
!4111 = !DILocalVariable(name: "base", scope: !4107, file: !3, line: 972, type: !458)
!4112 = !DILocalVariable(name: "callee", scope: !4107, file: !3, line: 972, type: !458)
!4113 = !DILocalVariable(name: "i", scope: !4107, file: !3, line: 973, type: !7)
!4114 = !DILocalVariable(name: "flags", scope: !4107, file: !3, line: 974, type: !451)
!4115 = !DILocalVariable(name: "dref", scope: !4116, file: !3, line: 1014, type: !2508)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 1013, column: 4)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 1001, column: 7)
!4118 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 998, column: 7)
!4119 = !DILocalVariable(name: "size", scope: !4116, file: !3, line: 1015, type: !458)
!4120 = !DILocalVariable(name: "dref", scope: !4121, file: !3, line: 1025, type: !2508)
!4121 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 1024, column: 4)
!4122 = !DILocalVariable(name: "size", scope: !4121, file: !3, line: 1026, type: !458)
!4123 = !DILocalVariable(name: "not_read", scope: !4124, file: !3, line: 1067, type: !1300)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 1066, column: 5)
!4125 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 1063, column: 7)
!4126 = !DILocalVariable(name: "pi", scope: !4127, file: !3, line: 1088, type: !1478)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 1087, column: 2)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 1085, column: 16)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 1080, column: 11)
!4130 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 1079, column: 5)
!4131 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 1078, column: 7)
!4132 = !DILocalVariable(name: "pi", scope: !4133, file: !3, line: 1110, type: !1478)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 1109, column: 2)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 1107, column: 16)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 1102, column: 11)
!4136 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 1101, column: 5)
!4137 = !DILocalVariable(name: "op", scope: !4138, file: !3, line: 1126, type: !458)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 1125, column: 5)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 1124, column: 3)
!4140 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 1124, column: 3)
!4141 = !DILocalVariable(name: "r", scope: !4142, file: !3, line: 1134, type: !2508)
!4142 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 1133, column: 2)
!4143 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 1131, column: 11)
!4144 = !DILabel(scope: !4107, name: "process_args", file: !3, line: 1123)
!4145 = !DILocation(line: 0, scope: !4107)
!4146 = !DILocation(line: 974, column: 15, scope: !4107)
!4147 = !DILocation(line: 977, column: 8, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 977, column: 7)
!4149 = !DILocation(line: 978, column: 17, scope: !4148)
!4150 = !DILocation(line: 978, column: 7, scope: !4148)
!4151 = !DILocation(line: 981, column: 10, scope: !4107)
!4152 = !DILocation(line: 982, column: 8, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 982, column: 7)
!4154 = !DILocation(line: 982, column: 7, scope: !4107)
!4155 = !DILocation(line: 987, column: 7, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 987, column: 7)
!4157 = !DILocation(line: 988, column: 7, scope: !4156)
!4158 = !DILocation(line: 988, column: 11, scope: !4156)
!4159 = !DILocation(line: 990, column: 7, scope: !4156)
!4160 = !DILocation(line: 990, column: 11, scope: !4156)
!4161 = !DILocation(line: 987, column: 7, scope: !4107)
!4162 = !DILocation(line: 993, column: 12, scope: !4107)
!4163 = !DILocation(line: 998, column: 14, scope: !4118)
!4164 = !DILocation(line: 999, column: 7, scope: !4118)
!4165 = !DILocation(line: 999, column: 10, scope: !4118)
!4166 = !DILocation(line: 999, column: 39, scope: !4118)
!4167 = !DILocation(line: 998, column: 7, scope: !4107)
!4168 = !DILocation(line: 1000, column: 13, scope: !4118)
!4169 = !DILocation(line: 1000, column: 5, scope: !4118)
!4170 = !DILocation(line: 1014, column: 6, scope: !4116)
!4171 = !DILocation(line: 0, scope: !4116)
!4172 = !DILocation(line: 1016, column: 10, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 1016, column: 10)
!4174 = !DILocation(line: 1016, column: 38, scope: !4173)
!4175 = !DILocation(line: 1016, column: 10, scope: !4116)
!4176 = !DILocation(line: 1017, column: 15, scope: !4173)
!4177 = !DILocation(line: 1017, column: 8, scope: !4173)
!4178 = !DILocation(line: 1019, column: 9, scope: !4116)
!4179 = !DILocation(line: 1018, column: 6, scope: !4116)
!4180 = !DILocation(line: 1021, column: 13, scope: !4116)
!4181 = !DILocation(line: 1022, column: 4, scope: !4117)
!4182 = !DILocation(line: 1025, column: 6, scope: !4121)
!4183 = !DILocation(line: 1026, column: 18, scope: !4121)
!4184 = !DILocation(line: 0, scope: !4121)
!4185 = !DILocation(line: 1028, column: 9, scope: !4121)
!4186 = !DILocation(line: 1027, column: 6, scope: !4121)
!4187 = !DILocation(line: 1030, column: 13, scope: !4121)
!4188 = !DILocation(line: 1031, column: 4, scope: !4117)
!4189 = !DILocation(line: 1063, column: 7, scope: !4125)
!4190 = !DILocation(line: 1063, column: 24, scope: !4125)
!4191 = !DILocation(line: 1064, column: 7, scope: !4125)
!4192 = !DILocation(line: 1064, column: 10, scope: !4125)
!4193 = !DILocation(line: 1065, column: 7, scope: !4125)
!4194 = !DILocation(line: 1065, column: 11, scope: !4125)
!4195 = !DILocation(line: 1063, column: 7, scope: !4107)
!4196 = !DILocation(line: 1070, column: 4, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1069, column: 11)
!4198 = !DILocation(line: 1071, column: 47, scope: !4197)
!4199 = !DILocation(line: 1071, column: 12, scope: !4197)
!4200 = !DILocation(line: 0, scope: !4124)
!4201 = !DILocation(line: 1071, column: 10, scope: !4197)
!4202 = !DILocation(line: 1072, column: 4, scope: !4197)
!4203 = !DILocation(line: 1072, column: 31, scope: !4197)
!4204 = !DILocation(line: 1072, column: 7, scope: !4197)
!4205 = !DILocation(line: 1069, column: 11, scope: !4124)
!4206 = !DILocation(line: 1074, column: 5, scope: !4125)
!4207 = !DILocation(line: 0, scope: !4131)
!4208 = !DILocation(line: 1078, column: 13, scope: !4131)
!4209 = !DILocation(line: 1078, column: 7, scope: !4107)
!4210 = !DILocation(line: 1080, column: 11, scope: !4130)
!4211 = !DILocation(line: 1082, column: 8, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 1082, column: 8)
!4213 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 1081, column: 2)
!4214 = !DILocation(line: 1082, column: 8, scope: !4213)
!4215 = !DILocation(line: 1085, column: 16, scope: !4128)
!4216 = !DILocation(line: 1086, column: 9, scope: !4128)
!4217 = !DILocation(line: 1086, column: 12, scope: !4128)
!4218 = !DILocation(line: 1086, column: 47, scope: !4128)
!4219 = !DILocation(line: 1085, column: 16, scope: !4129)
!4220 = !DILocation(line: 1088, column: 30, scope: !4127)
!4221 = !DILocation(line: 0, scope: !4127)
!4222 = !DILocation(line: 1089, column: 9, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 1089, column: 8)
!4224 = !DILocation(line: 1089, column: 8, scope: !4127)
!4225 = !DILocation(line: 1092, column: 42, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 1092, column: 8)
!4227 = !DILocation(line: 1092, column: 8, scope: !4226)
!4228 = !DILocation(line: 1093, column: 8, scope: !4226)
!4229 = !DILocation(line: 1093, column: 36, scope: !4226)
!4230 = !DILocation(line: 1093, column: 42, scope: !4226)
!4231 = !DILocation(line: 1093, column: 53, scope: !4226)
!4232 = !DILocation(line: 1093, column: 11, scope: !4226)
!4233 = !DILocation(line: 1094, column: 8, scope: !4226)
!4234 = !DILocation(line: 1094, column: 36, scope: !4226)
!4235 = !DILocation(line: 1094, column: 42, scope: !4226)
!4236 = !DILocation(line: 1094, column: 53, scope: !4226)
!4237 = !DILocation(line: 1094, column: 11, scope: !4226)
!4238 = !DILocation(line: 1092, column: 8, scope: !4127)
!4239 = !DILocation(line: 1102, column: 11, scope: !4136)
!4240 = !DILocation(line: 1104, column: 8, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 1104, column: 8)
!4242 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 1103, column: 2)
!4243 = !DILocation(line: 1104, column: 8, scope: !4242)
!4244 = !DILocation(line: 1107, column: 16, scope: !4134)
!4245 = !DILocation(line: 1108, column: 9, scope: !4134)
!4246 = !DILocation(line: 1108, column: 12, scope: !4134)
!4247 = !DILocation(line: 1108, column: 47, scope: !4134)
!4248 = !DILocation(line: 1107, column: 16, scope: !4135)
!4249 = !DILocation(line: 1110, column: 30, scope: !4133)
!4250 = !DILocation(line: 0, scope: !4133)
!4251 = !DILocation(line: 1111, column: 9, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 1111, column: 8)
!4253 = !DILocation(line: 1111, column: 8, scope: !4133)
!4254 = !DILocation(line: 1114, column: 42, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 1114, column: 8)
!4256 = !DILocation(line: 1114, column: 8, scope: !4255)
!4257 = !DILocation(line: 1115, column: 8, scope: !4255)
!4258 = !DILocation(line: 1115, column: 36, scope: !4255)
!4259 = !DILocation(line: 1115, column: 42, scope: !4255)
!4260 = !DILocation(line: 1115, column: 53, scope: !4255)
!4261 = !DILocation(line: 1115, column: 11, scope: !4255)
!4262 = !DILocation(line: 1114, column: 8, scope: !4133)
!4263 = !DILocation(line: 1123, column: 1, scope: !4107)
!4264 = !DILocation(line: 0, scope: !4142)
!4265 = !DILocation(line: 1124, column: 8, scope: !4140)
!4266 = !DILocation(line: 0, scope: !4140)
!4267 = !DILocation(line: 1124, column: 19, scope: !4139)
!4268 = !DILocation(line: 1124, column: 17, scope: !4139)
!4269 = !DILocation(line: 1124, column: 3, scope: !4140)
!4270 = !DILocation(line: 1126, column: 17, scope: !4138)
!4271 = !DILocation(line: 0, scope: !4138)
!4272 = !DILocation(line: 1128, column: 11, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 1128, column: 11)
!4274 = !DILocation(line: 1128, column: 26, scope: !4273)
!4275 = !DILocation(line: 1128, column: 11, scope: !4138)
!4276 = !DILocation(line: 1129, column: 7, scope: !4273)
!4277 = !DILocation(line: 0, scope: !4143)
!4278 = !DILocation(line: 1131, column: 11, scope: !4143)
!4279 = !DILocation(line: 1131, column: 26, scope: !4143)
!4280 = !DILocation(line: 1129, column: 2, scope: !4273)
!4281 = !DILocation(line: 1132, column: 4, scope: !4143)
!4282 = !DILocation(line: 1132, column: 8, scope: !4143)
!4283 = !DILocation(line: 1131, column: 11, scope: !4138)
!4284 = !DILocation(line: 1134, column: 4, scope: !4142)
!4285 = !DILocation(line: 1135, column: 4, scope: !4142)
!4286 = !DILocation(line: 1136, column: 8, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 1136, column: 8)
!4288 = !DILocation(line: 1138, column: 2, scope: !4143)
!4289 = !DILocation(line: 1139, column: 5, scope: !4139)
!4290 = !DILocation(line: 1124, column: 48, scope: !4139)
!4291 = !DILocation(line: 1124, column: 3, scope: !4139)
!4292 = distinct !{!4292, !4269, !4293}
!4293 = !DILocation(line: 1139, column: 5, scope: !4140)
!4294 = !DILocation(line: 1142, column: 1, scope: !4107)
!4295 = distinct !DISubprogram(name: "gimple_call_chain", scope: !378, file: !378, line: 1983, type: !2855, scopeLine: 1984, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4296)
!4296 = !{!4297}
!4297 = !DILocalVariable(name: "gs", arg: 1, scope: !4295, file: !378, line: 1983, type: !2832)
!4298 = !DILocation(line: 0, scope: !4295)
!4299 = !DILocation(line: 1986, column: 10, scope: !4295)
!4300 = !DILocation(line: 1986, column: 3, scope: !4295)
!4301 = distinct !DISubprogram(name: "is_global_var", scope: !2332, file: !2332, line: 575, type: !2357, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4302)
!4302 = !{!4303}
!4303 = !DILocalVariable(name: "t", arg: 1, scope: !4301, file: !2332, line: 575, type: !2359)
!4304 = !DILocation(line: 0, scope: !4301)
!4305 = !DILocation(line: 577, column: 11, scope: !4301)
!4306 = !DILocation(line: 577, column: 27, scope: !4301)
!4307 = !DILocation(line: 577, column: 30, scope: !4301)
!4308 = !DILocation(line: 577, column: 3, scope: !4301)
!4309 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !378, file: !378, line: 1954, type: !2855, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4310)
!4310 = !{!4311, !4312}
!4311 = !DILocalVariable(name: "gs", arg: 1, scope: !4309, file: !378, line: 1954, type: !2832)
!4312 = !DILocalVariable(name: "addr", scope: !4309, file: !378, line: 1956, type: !458)
!4313 = !DILocation(line: 0, scope: !4309)
!4314 = !DILocation(line: 1956, column: 15, scope: !4309)
!4315 = !DILocation(line: 1957, column: 7, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4309, file: !378, line: 1957, column: 7)
!4317 = !DILocation(line: 1957, column: 24, scope: !4316)
!4318 = !DILocation(line: 1957, column: 7, scope: !4309)
!4319 = !DILocation(line: 1958, column: 12, scope: !4316)
!4320 = !DILocation(line: 1958, column: 5, scope: !4316)
!4321 = !DILocation(line: 1960, column: 1, scope: !4309)
!4322 = distinct !DISubprogram(name: "gimple_call_num_args", scope: !378, file: !378, line: 2013, type: !3424, scopeLine: 2014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4323)
!4323 = !{!4324, !4325}
!4324 = !DILocalVariable(name: "gs", arg: 1, scope: !4322, file: !378, line: 2013, type: !2832)
!4325 = !DILocalVariable(name: "num_ops", scope: !4322, file: !378, line: 2015, type: !7)
!4326 = !DILocation(line: 0, scope: !4322)
!4327 = !DILocation(line: 2017, column: 13, scope: !4322)
!4328 = !DILocation(line: 2018, column: 18, scope: !4322)
!4329 = !DILocation(line: 2018, column: 3, scope: !4322)
!4330 = distinct !DISubprogram(name: "gimple_call_arg", scope: !378, file: !378, line: 2025, type: !3818, scopeLine: 2026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4331)
!4331 = !{!4332, !4333}
!4332 = !DILocalVariable(name: "gs", arg: 1, scope: !4330, file: !378, line: 2025, type: !2832)
!4333 = !DILocalVariable(name: "index", arg: 2, scope: !4330, file: !378, line: 2025, type: !7)
!4334 = !DILocation(line: 0, scope: !4330)
!4335 = !DILocation(line: 2028, column: 31, scope: !4330)
!4336 = !DILocation(line: 2028, column: 10, scope: !4330)
!4337 = !DILocation(line: 2028, column: 3, scope: !4330)
!4338 = distinct !DISubprogram(name: "is_call_used", scope: !2332, file: !2332, line: 638, type: !2357, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4339)
!4339 = !{!4340}
!4340 = !DILocalVariable(name: "var", arg: 1, scope: !4338, file: !2332, line: 638, type: !2359)
!4341 = !DILocation(line: 0, scope: !4338)
!4342 = !DILocation(line: 640, column: 11, scope: !4338)
!4343 = !DILocation(line: 641, column: 4, scope: !4338)
!4344 = !DILocation(line: 641, column: 8, scope: !4338)
!4345 = !DILocation(line: 642, column: 8, scope: !4338)
!4346 = !DILocation(line: 642, column: 34, scope: !4338)
!4347 = !DILocation(line: 642, column: 40, scope: !4338)
!4348 = !DILocation(line: 642, column: 51, scope: !4338)
!4349 = !DILocation(line: 642, column: 11, scope: !4338)
!4350 = !DILocation(line: 640, column: 3, scope: !4338)
!4351 = distinct !DISubprogram(name: "is_call_clobbered", scope: !2332, file: !2332, line: 629, type: !2357, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4352)
!4352 = !{!4353}
!4353 = !DILocalVariable(name: "var", arg: 1, scope: !4351, file: !2332, line: 629, type: !2359)
!4354 = !DILocation(line: 0, scope: !4351)
!4355 = !DILocation(line: 631, column: 11, scope: !4351)
!4356 = !DILocation(line: 632, column: 4, scope: !4351)
!4357 = !DILocation(line: 632, column: 8, scope: !4351)
!4358 = !DILocation(line: 633, column: 8, scope: !4351)
!4359 = !DILocation(line: 633, column: 34, scope: !4351)
!4360 = !DILocation(line: 633, column: 40, scope: !4351)
!4361 = !DILocation(line: 633, column: 51, scope: !4351)
!4362 = !DILocation(line: 633, column: 11, scope: !4351)
!4363 = !DILocation(line: 631, column: 3, scope: !4351)
!4364 = distinct !DISubprogram(name: "gimple_call_fn", scope: !378, file: !378, line: 1911, type: !2855, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4365)
!4365 = !{!4366}
!4366 = !DILocalVariable(name: "gs", arg: 1, scope: !4364, file: !378, line: 1911, type: !2832)
!4367 = !DILocation(line: 0, scope: !4364)
!4368 = !DILocation(line: 1914, column: 10, scope: !4364)
!4369 = !DILocation(line: 1914, column: 3, scope: !4364)
!4370 = distinct !DISubprogram(name: "gimple_num_ops", scope: !378, file: !378, line: 1596, type: !3424, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4371)
!4371 = !{!4372}
!4372 = !DILocalVariable(name: "gs", arg: 1, scope: !4370, file: !378, line: 1596, type: !2832)
!4373 = !DILocation(line: 0, scope: !4370)
!4374 = !DILocation(line: 1598, column: 21, scope: !4370)
!4375 = !DILocation(line: 1598, column: 3, scope: !4370)
!4376 = distinct !DISubprogram(name: "ptr_deref_may_alias_ref_p_1", scope: !3, file: !3, line: 301, type: !4377, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4379)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!450, !458, !2507}
!4379 = !{!4380, !4381, !4382}
!4380 = !DILocalVariable(name: "ptr", arg: 1, scope: !4376, file: !3, line: 301, type: !458)
!4381 = !DILocalVariable(name: "ref", arg: 2, scope: !4376, file: !3, line: 301, type: !2507)
!4382 = !DILocalVariable(name: "base", scope: !4376, file: !3, line: 303, type: !458)
!4383 = !DILocation(line: 0, scope: !4376)
!4384 = !DILocation(line: 303, column: 15, scope: !4376)
!4385 = !DILocation(line: 305, column: 7, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 305, column: 7)
!4387 = !DILocation(line: 305, column: 7, scope: !4376)
!4388 = !DILocation(line: 306, column: 41, scope: !4386)
!4389 = !DILocation(line: 306, column: 12, scope: !4386)
!4390 = !DILocation(line: 306, column: 5, scope: !4386)
!4391 = !DILocation(line: 307, column: 12, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 307, column: 12)
!4393 = !DILocation(line: 307, column: 12, scope: !4386)
!4394 = !DILocation(line: 308, column: 12, scope: !4392)
!4395 = !DILocation(line: 308, column: 5, scope: !4392)
!4396 = !DILocation(line: 311, column: 1, scope: !4376)
!4397 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !378, file: !378, line: 3100, type: !4398, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4401)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!4400, !782, !7}
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!4401 = !{!4402, !4403}
!4402 = !DILocalVariable(name: "gs", arg: 1, scope: !4397, file: !378, line: 3100, type: !782)
!4403 = !DILocalVariable(name: "index", arg: 2, scope: !4397, file: !378, line: 3100, type: !7)
!4404 = !DILocation(line: 0, scope: !4397)
!4405 = !DILocation(line: 3103, column: 3, scope: !4397)
!4406 = !DILocation(line: 3104, column: 12, scope: !4397)
!4407 = !DILocation(line: 3104, column: 3, scope: !4397)
!4408 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2332, file: !2332, line: 434, type: !4409, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4412)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!458, !4411}
!4411 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !813, line: 27, baseType: !817)
!4412 = !{!4413}
!4413 = !DILocalVariable(name: "def", arg: 1, scope: !4408, file: !2332, line: 434, type: !4411)
!4414 = !DILocation(line: 0, scope: !4408)
!4415 = !DILocation(line: 436, column: 10, scope: !4408)
!4416 = !DILocation(line: 436, column: 3, scope: !4408)
!4417 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !378, file: !378, line: 3080, type: !3843, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4418)
!4418 = !{!4419}
!4419 = !DILocalVariable(name: "gs", arg: 1, scope: !4417, file: !378, line: 3080, type: !782)
!4420 = !DILocation(line: 0, scope: !4417)
!4421 = !DILocation(line: 3083, column: 26, scope: !4417)
!4422 = !DILocation(line: 3083, column: 3, scope: !4417)
!4423 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !378, file: !378, line: 1283, type: !2830, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4424)
!4424 = !{!4425}
!4425 = !DILocalVariable(name: "g", arg: 1, scope: !4423, file: !378, line: 1283, type: !2832)
!4426 = !DILocation(line: 0, scope: !4423)
!4427 = !DILocation(line: 1285, column: 10, scope: !4423)
!4428 = !DILocation(line: 1285, column: 26, scope: !4423)
!4429 = !DILocation(line: 1285, column: 43, scope: !4423)
!4430 = !DILocation(line: 1285, column: 46, scope: !4423)
!4431 = !DILocation(line: 1285, column: 62, scope: !4423)
!4432 = !DILocation(line: 1285, column: 3, scope: !4423)
!4433 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !2332, file: !2332, line: 450, type: !4434, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4436)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!458, !782, !928}
!4436 = !{!4437, !4438, !4439}
!4437 = !DILocalVariable(name: "gs", arg: 1, scope: !4433, file: !2332, line: 450, type: !782)
!4438 = !DILocalVariable(name: "index", arg: 2, scope: !4433, file: !2332, line: 450, type: !928)
!4439 = !DILocalVariable(name: "pd", scope: !4433, file: !2332, line: 452, type: !4400)
!4440 = !DILocation(line: 0, scope: !4433)
!4441 = !DILocation(line: 452, column: 46, scope: !4433)
!4442 = !DILocation(line: 452, column: 26, scope: !4433)
!4443 = !DILocation(line: 453, column: 33, scope: !4433)
!4444 = !DILocation(line: 453, column: 10, scope: !4433)
!4445 = !DILocation(line: 453, column: 3, scope: !4433)
