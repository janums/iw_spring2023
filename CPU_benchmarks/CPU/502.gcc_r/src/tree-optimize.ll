; ModuleID = 'tree-optimize.bc'
source_filename = "tree-optimize.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type { %struct.eh_region_d*, %struct.VEC_eh_region_gc*, %struct.VEC_eh_landing_pad_gc*, %struct.htab*, %struct.VEC_tree_gc*, %union.eh_status_u }
%struct.eh_region_d = type { %struct.eh_region_d*, %struct.eh_region_d*, %struct.eh_region_d*, i32, i32, %union.eh_region_u, %struct.eh_landing_pad_d*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { %union.tree_node*, %union.tree_node*, i32 }
%struct.eh_landing_pad_d = type { %struct.eh_landing_pad_d*, %struct.eh_region_d*, %union.tree_node*, %struct.rtx_def*, i32 }
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
%struct.VEC_eh_region_gc = type { %struct.VEC_eh_region_base }
%struct.VEC_eh_region_base = type { i32, i32, [1 x %struct.eh_region_d*] }
%struct.VEC_eh_landing_pad_gc = type { %struct.VEC_eh_landing_pad_base }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x %struct.eh_landing_pad_d*] }
%struct.VEC_tree_gc = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x %union.tree_node*] }
%union.eh_status_u = type { %struct.VEC_tree_gc* }
%struct.control_flow_graph = type { %struct.basic_block_def*, %struct.basic_block_def*, %struct.VEC_basic_block_gc*, i32, i32, i32, %struct.VEC_basic_block_gc*, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { %struct.VEC_edge_gc*, %struct.VEC_edge_gc*, i8*, %struct.loop*, [2 x %struct.et_node*], %struct.basic_block_def*, %struct.basic_block_def*, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%struct.VEC_edge_gc = type { %struct.VEC_edge_base }
%struct.VEC_edge_base = type { i32, i32, [1 x %struct.edge_def*] }
%struct.edge_def = type { %struct.basic_block_def*, %struct.basic_block_def*, %union.edge_def_insns, i8*, %union.tree_node*, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { %struct.gimple_seq_d* }
%struct.loop = type { i32, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.lpt_decision, i32, i32, %struct.VEC_loop_p_gc*, %struct.loop*, %struct.loop*, i8*, %union.tree_node*, %struct.double_int, %struct.double_int, i8, i8, i32, %struct.nb_iter_bound*, %struct.loop_exit*, i8, %union.tree_node* }
%struct.lpt_decision = type { i32, i32 }
%struct.VEC_loop_p_gc = type { %struct.VEC_loop_p_base }
%struct.VEC_loop_p_base = type { i32, i32, [1 x %struct.loop*] }
%struct.double_int = type { i64, i64 }
%struct.nb_iter_bound = type { %union.gimple_statement_d*, %struct.double_int, i8, %struct.nb_iter_bound* }
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_seq_d = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_node_d = type { %union.gimple_statement_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d* }
%struct.gimple_df = type { %struct.htab*, %struct.VEC_gimple_gc*, %struct.VEC_tree_gc*, %union.tree_node*, %struct.pt_solution, %struct.pt_solution, %struct.pointer_map_t*, %union.tree_node*, %struct.htab*, %struct.bitmap_head_def*, i8, %struct.ssa_operands }
%struct.VEC_gimple_gc = type { %struct.VEC_gimple_base }
%struct.VEC_gimple_base = type { i32, i32, [1 x %union.gimple_statement_d*] }
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
%struct.loops = type { i32, %struct.VEC_loop_p_gc*, %struct.htab*, %struct.loop* }
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
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
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [19 x i8] c"*all_optimizations\00", align 1
@pass_all_optimizations = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_all_optimizations, i32 ()* null, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [21 x i8] c"early_local_cleanups\00", align 1
@pass_early_local_passes = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8 ()* @gate_all_early_local_passes, i32 ()* null, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256 } }, align 8, !dbg !2141
@.str.2 = private unnamed_addr constant [20 x i8] c"early_optimizations\00", align 1
@pass_all_early_optimizations = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8 ()* @gate_all_early_optimizations, i32 ()* @execute_early_local_optimizations, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !2169
@.str.3 = private unnamed_addr constant [12 x i8] c"cleanup_cfg\00", align 1
@pass_cleanup_cfg = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8 ()* null, i32 ()* @execute_cleanup_cfg_pre_ipa, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1 } }, align 8, !dbg !2174
@.str.4 = private unnamed_addr constant [10 x i8] c"optimized\00", align 1
@pass_cleanup_cfg_post_optimizing = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8 ()* null, i32 ()* @execute_cleanup_cfg_post_optimizing, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 32769 } }, align 8, !dbg !2176
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"*free_cfg_annotations\00", align 1
@pass_fixup_cfg = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8 ()* null, i32 ()* @execute_fixup_cfg, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !2178
@.str.6 = private unnamed_addr constant [21 x i8] c"*init_datastructures\00", align 1
@pass_init_datastructures = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8 ()* null, i32 ()* @execute_init_datastructures, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !2180
@all_lowering_passes = external dso_local local_unnamed_addr global %struct.opt_pass*, align 8
@optimize = external dso_local local_unnamed_addr global i32, align 4
@cgraph_global_info_ready = external dso_local local_unnamed_addr global i8, align 1
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"tree-optimize.c\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@input_location = external dso_local local_unnamed_addr global i32, align 4
@reg_obstack = external dso_local global %struct.bitmap_obstack, align 8
@all_passes = external dso_local local_unnamed_addr global %struct.opt_pass*, align 8
@warn_larger_than = external dso_local local_unnamed_addr global i8, align 1
@larger_than_size = external dso_local local_unnamed_addr global i64, align 8
@.str.9 = private unnamed_addr constant [41 x i8] c"size of return value of %q+D is %u bytes\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"size of return value of %q+D is larger than %wd bytes\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@in_lto_p = external dso_local local_unnamed_addr global i8, align 1
@cgraph_state = external dso_local local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2186 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2199, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2200, metadata !DIExpression()), !dbg !2201
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2202
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2203
  ret i32 %call, !dbg !2204
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2205 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2209
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2210
  ret i32 %call, !dbg !2211
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2212 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2267, metadata !DIExpression()), !dbg !2268
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2269
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2269
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2269
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2269
  %cmp = icmp uge i8* %0, %1, !dbg !2269
  %conv1 = zext i1 %cmp to i64, !dbg !2269
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2269
  %tobool = icmp eq i64 %expval, 0, !dbg !2269
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2269

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2269
  br label %cond.end, !dbg !2269

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2269
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2269
  %2 = load i8, i8* %0, align 1, !dbg !2269
  %conv3 = zext i8 %2 to i32, !dbg !2269
  br label %cond.end, !dbg !2269

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2269
  ret i32 %cond, !dbg !2270
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2271 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2273, metadata !DIExpression()), !dbg !2274
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2275
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2275
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2275
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2275
  %cmp = icmp uge i8* %0, %1, !dbg !2275
  %conv1 = zext i1 %cmp to i64, !dbg !2275
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2275
  %tobool = icmp eq i64 %expval, 0, !dbg !2275
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2275

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2275
  br label %cond.end, !dbg !2275

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2275
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2275
  %2 = load i8, i8* %0, align 1, !dbg !2275
  %conv3 = zext i8 %2 to i32, !dbg !2275
  br label %cond.end, !dbg !2275

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2275
  ret i32 %cond, !dbg !2276
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2277 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2278
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2278
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2278
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2278
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2278
  %cmp = icmp uge i8* %1, %2, !dbg !2278
  %conv1 = zext i1 %cmp to i64, !dbg !2278
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2278
  %tobool = icmp eq i64 %expval, 0, !dbg !2278
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2278

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2278
  br label %cond.end, !dbg !2278

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2278
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2278
  %3 = load i8, i8* %1, align 1, !dbg !2278
  %conv3 = zext i8 %3 to i32, !dbg !2278
  br label %cond.end, !dbg !2278

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2278
  ret i32 %cond, !dbg !2279
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2280 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2284, metadata !DIExpression()), !dbg !2285
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2286
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2287
  ret i32 %call, !dbg !2288
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2289 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2293, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2294, metadata !DIExpression()), !dbg !2295
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2296
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2296
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2296
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2296
  %cmp = icmp uge i8* %0, %1, !dbg !2296
  %conv1 = zext i1 %cmp to i64, !dbg !2296
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2296
  %tobool = icmp eq i64 %expval, 0, !dbg !2296
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2296

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2296
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2296
  br label %cond.end, !dbg !2296

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2296
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2296
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2296
  store i8 %conv2, i8* %0, align 1, !dbg !2296
  %conv6 = and i32 %__c, 255, !dbg !2296
  br label %cond.end, !dbg !2296

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2296
  ret i32 %cond, !dbg !2297
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2298 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2300, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2301, metadata !DIExpression()), !dbg !2302
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2303
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2303
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2303
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2303
  %cmp = icmp uge i8* %0, %1, !dbg !2303
  %conv1 = zext i1 %cmp to i64, !dbg !2303
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2303
  %tobool = icmp eq i64 %expval, 0, !dbg !2303
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2303

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2303
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2303
  br label %cond.end, !dbg !2303

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2303
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2303
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2303
  store i8 %conv2, i8* %0, align 1, !dbg !2303
  %conv6 = and i32 %__c, 255, !dbg !2303
  br label %cond.end, !dbg !2303

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2303
  ret i32 %cond, !dbg !2304
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2305 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2307, metadata !DIExpression()), !dbg !2308
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2309
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2309
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2309
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2309
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2309
  %cmp = icmp uge i8* %1, %2, !dbg !2309
  %conv1 = zext i1 %cmp to i64, !dbg !2309
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2309
  %tobool = icmp eq i64 %expval, 0, !dbg !2309
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2309

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2309
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2309
  br label %cond.end, !dbg !2309

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2309
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2309
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2309
  store i8 %conv4, i8* %1, align 1, !dbg !2309
  %conv6 = and i32 %__c, 255, !dbg !2309
  br label %cond.end, !dbg !2309

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2309
  ret i32 %cond, !dbg !2310
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2311 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2317, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2318, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2319, metadata !DIExpression()), !dbg !2320
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2321
  ret i64 %call, !dbg !2322
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2323 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2325, metadata !DIExpression()), !dbg !2326
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2327
  %0 = load i32, i32* %_flags, align 8, !dbg !2327
  %and = lshr i32 %0, 4, !dbg !2327
  %and.lobit = and i32 %and, 1, !dbg !2327
  ret i32 %and.lobit, !dbg !2328
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2329 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2331, metadata !DIExpression()), !dbg !2332
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2333
  %0 = load i32, i32* %_flags, align 8, !dbg !2333
  %and = lshr i32 %0, 5, !dbg !2333
  %and.lobit = and i32 %and, 1, !dbg !2333
  ret i32 %and.lobit, !dbg !2334
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2335 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2338, metadata !DIExpression()), !dbg !2339
  %__c.off = add i32 %__c, 128, !dbg !2340
  %0 = icmp ult i32 %__c.off, 384, !dbg !2340
  br i1 %0, label %cond.true, label %cond.end, !dbg !2340

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2341
  %1 = load i32*, i32** %call, align 8, !dbg !2342
  %idxprom = sext i32 %__c to i64, !dbg !2343
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2343
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2343
  br label %cond.end, !dbg !2344

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2344
  ret i32 %cond, !dbg !2345
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2346 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2348, metadata !DIExpression()), !dbg !2349
  %__c.off = add i32 %__c, 128, !dbg !2350
  %0 = icmp ult i32 %__c.off, 384, !dbg !2350
  br i1 %0, label %cond.true, label %cond.end, !dbg !2350

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2351
  %1 = load i32*, i32** %call, align 8, !dbg !2352
  %idxprom = sext i32 %__c to i64, !dbg !2353
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2353
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2353
  br label %cond.end, !dbg !2354

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2354
  ret i32 %cond, !dbg !2355
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2356 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2361, metadata !DIExpression()), !dbg !2362
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2363
  %conv = trunc i64 %call to i32, !dbg !2364
  ret i32 %conv, !dbg !2365
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2366 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2370, metadata !DIExpression()), !dbg !2371
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2372
  ret i64 %call, !dbg !2373
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2374 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2379, metadata !DIExpression()), !dbg !2380
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2381
  ret i64 %call, !dbg !2382
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2383 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2389, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2390, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2391, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2392, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2393, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 0, metadata !2394, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2395, metadata !DIExpression()), !dbg !2399
  br label %while.cond, !dbg !2400

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2401
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2399
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2395, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2394, metadata !DIExpression()), !dbg !2399
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2402
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2400

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2403
  %div = lshr i64 %add, 1, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %div, metadata !2396, metadata !DIExpression()), !dbg !2399
  %mul = mul i64 %div, %__size, !dbg !2406
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2397, metadata !DIExpression()), !dbg !2399
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %call, metadata !2398, metadata !DIExpression()), !dbg !2399
  %cmp1 = icmp slt i32 %call, 0, !dbg !2409
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2411

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2412
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2414

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2394, metadata !DIExpression()), !dbg !2399
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2399
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2399
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2395, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2394, metadata !DIExpression()), !dbg !2399
  br label %while.cond, !dbg !2400, !llvm.loop !2416

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2399
  ret i8* %retval.0, !dbg !2418
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2419 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2425, metadata !DIExpression()), !dbg !2426
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2427
  ret double %call, !dbg !2428
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2429 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2438, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2439, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %base, metadata !2440, metadata !DIExpression()), !dbg !2441
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2442
  ret i64 %call, !dbg !2443
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2444 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2450, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2451, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 %base, metadata !2452, metadata !DIExpression()), !dbg !2453
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2454
  ret i64 %call, !dbg !2455
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2456 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2467, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2468, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 %base, metadata !2469, metadata !DIExpression()), !dbg !2470
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2471
  ret i64 %call, !dbg !2472
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2473 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2477, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2478, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %base, metadata !2479, metadata !DIExpression()), !dbg !2480
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2481
  ret i64 %call, !dbg !2482
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2483 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2523, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2524, metadata !DIExpression()), !dbg !2525
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2526
  ret i32 %call, !dbg !2527
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2528 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2530, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2531, metadata !DIExpression()), !dbg !2532
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2533
  ret i32 %call, !dbg !2534
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2535 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2540, metadata !DIExpression()), !dbg !2541
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2542
  ret i32 %call, !dbg !2543
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2544 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2548, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2549, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2550, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2551, metadata !DIExpression()), !dbg !2552
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2553
  ret i32 %call, !dbg !2554
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2555 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2559, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2560, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2561, metadata !DIExpression()), !dbg !2562
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2561, metadata !DIExpression(DW_OP_deref)), !dbg !2562
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2563
  ret i32 %call, !dbg !2564
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2565 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2569, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2571, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2572, metadata !DIExpression()), !dbg !2573
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2572, metadata !DIExpression(DW_OP_deref)), !dbg !2573
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2574
  ret i32 %call, !dbg !2575
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2576 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2601, metadata !DIExpression()), !dbg !2602
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2603
  ret i32 %call, !dbg !2604
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2605 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2608, metadata !DIExpression()), !dbg !2609
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2610
  ret i32 %call, !dbg !2611
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2612 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2616, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2617, metadata !DIExpression()), !dbg !2618
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2619
  ret i32 %call, !dbg !2620
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2621 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2625, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2626, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2627, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2628, metadata !DIExpression()), !dbg !2629
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2630
  ret i32 %call, !dbg !2631
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_all_optimizations() #5 !dbg !2632 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2633
  %cmp = icmp sgt i32 %0, 0, !dbg !2634
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2635

land.rhs:                                         ; preds = %entry
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2636
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 4, !dbg !2636
  %2 = load i32, i32* %arrayidx, align 8, !dbg !2636
  %tobool = icmp eq i32 %2, 0, !dbg !2636
  br i1 %tobool, label %lor.lhs.false, label %lor.rhs, !dbg !2637

lor.lhs.false:                                    ; preds = %land.rhs
  %arrayidx2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 5, !dbg !2638
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !2638
  %tobool3 = icmp eq i32 %3, 0, !dbg !2638
  br i1 %tobool3, label %land.end, label %lor.rhs, !dbg !2639

lor.rhs:                                          ; preds = %lor.lhs.false, %land.rhs
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2640
  %call = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %4) #7, !dbg !2641
  %tobool4 = icmp ne i8 %call, 0, !dbg !2639
  %phitmp = zext i1 %tobool4 to i8, !dbg !2639
  br label %land.end, !dbg !2639

land.end:                                         ; preds = %lor.lhs.false, %lor.rhs, %entry
  %5 = phi i8 [ 0, %entry ], [ 1, %lor.lhs.false ], [ %phitmp, %lor.rhs ]
  ret i8 %5, !dbg !2642
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_all_early_local_passes() #5 !dbg !2643 {
entry:
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2644
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 4, !dbg !2644
  %1 = load i32, i32* %arrayidx, align 8, !dbg !2644
  %tobool = icmp eq i32 %1, 0, !dbg !2644
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !2645

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 5, !dbg !2646
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !2646
  %tobool3 = icmp eq i32 %2, 0, !dbg !2646
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !2647

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i8, i8* @in_lto_p, align 1, !dbg !2648
  %tobool4 = icmp eq i8 %3, 0, !dbg !2649
  %phitmp = zext i1 %tobool4 to i8
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry, %land.rhs
  %4 = phi i8 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %4, !dbg !2650
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_all_early_optimizations() #5 !dbg !2651 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2652
  %cmp = icmp sgt i32 %0, 0, !dbg !2653
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2654

land.rhs:                                         ; preds = %entry
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2655
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 4, !dbg !2655
  %2 = load i32, i32* %arrayidx, align 8, !dbg !2655
  %tobool = icmp eq i32 %2, 0, !dbg !2655
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2656

lor.rhs:                                          ; preds = %land.rhs
  %arrayidx2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 5, !dbg !2657
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !2657
  %tobool3 = icmp eq i32 %3, 0, !dbg !2656
  %phitmp2 = zext i1 %tobool3 to i8, !dbg !2656
  br label %lor.end, !dbg !2656

lor.end:                                          ; preds = %land.rhs, %lor.rhs
  %4 = phi i8 [ 0, %land.rhs ], [ %phitmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %5 = phi i8 [ 0, %entry ], [ %4, %lor.end ]
  ret i8 %5, !dbg !2658
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_early_local_optimizations() #5 !dbg !2659 {
entry:
  %0 = load i32, i32* @cgraph_state, align 4, !dbg !2660
  %cmp = icmp ult i32 %0, 2, !dbg !2662
  br i1 %cmp, label %if.then, label %if.end, !dbg !2663

if.then:                                          ; preds = %entry
  store i32 2, i32* @cgraph_state, align 4, !dbg !2664
  br label %if.end, !dbg !2665

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !2666
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_cleanup_cfg_pre_ipa() #5 !dbg !2667 {
entry:
  %call = tail call zeroext i8 @cleanup_tree_cfg() #6, !dbg !2668
  ret i32 0, !dbg !2669
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_cleanup_cfg_post_optimizing() #5 !dbg !2670 {
entry:
  tail call void @fold_cond_expr_cond() #6, !dbg !2671
  %call = tail call zeroext i8 @cleanup_tree_cfg() #6, !dbg !2672
  tail call void @cleanup_dead_labels() #6, !dbg !2673
  tail call void @group_case_labels() #6, !dbg !2674
  ret i32 0, !dbg !2675
}

; Function Attrs: nounwind uwtable
define dso_local i32 @execute_free_datastructures() local_unnamed_addr #5 !dbg !2676 {
entry:
  tail call void @free_dominance_info(i32 1) #6, !dbg !2677
  tail call void @free_dominance_info(i32 2) #6, !dbg !2678
  tail call void @delete_tree_cfg_annotations() #6, !dbg !2679
  ret i32 0, !dbg !2680
}

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

declare dso_local void @delete_tree_cfg_annotations() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @execute_fixup_cfg() #5 !dbg !2681 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp68 = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2709
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2709
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2710
  %call = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %1) #7, !dbg !2711
  %tobool = icmp eq i8 %call, 0, !dbg !2711
  %cond = select i1 %tobool, i32 0, i32 4, !dbg !2711
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2691, metadata !DIExpression()), !dbg !2712
  %2 = bitcast %struct.edge_def** %e to i8*, !dbg !2713
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2713
  %3 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2714
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2714
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2715
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2715
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2715
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 0, !dbg !2715
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2715
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 8, !dbg !2717
  %7 = load i64, i64* %count, align 8, !dbg !2717
  %tobool2 = icmp eq i64 %7, 0, !dbg !2715
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2718

if.then:                                          ; preds = %entry
  %8 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2719
  %call3 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %8) #6, !dbg !2720
  %count4 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call3, i64 0, i32 23, !dbg !2721
  %9 = load i64, i64* %count4, align 8, !dbg !2721
  %mul = mul nsw i64 %9, 10000, !dbg !2722
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2723
  %cfg6 = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 1, !dbg !2723
  %11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6, align 8, !dbg !2723
  %x_entry_block_ptr7 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 0, !dbg !2723
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr7, align 8, !dbg !2723
  %count8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i64 0, i32 8, !dbg !2724
  %13 = load i64, i64* %count8, align 8, !dbg !2724
  %div = sdiv i64 %13, 2, !dbg !2725
  %add = add nsw i64 %mul, %div, !dbg !2726
  %div13 = sdiv i64 %add, %13, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %div13, metadata !2692, metadata !DIExpression()), !dbg !2712
  br label %if.end, !dbg !2728

if.end:                                           ; preds = %entry, %if.then
  %count_scale.0 = phi i64 [ %div13, %if.then ], [ 10000, %entry ], !dbg !2729
  call void @llvm.dbg.value(metadata i64 %count_scale.0, metadata !2692, metadata !DIExpression()), !dbg !2712
  %14 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2730
  %call14 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %14) #6, !dbg !2731
  %count15 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call14, i64 0, i32 23, !dbg !2732
  %15 = load i64, i64* %count15, align 8, !dbg !2732
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2733
  %cfg17 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !2733
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg17, align 8, !dbg !2733
  %x_entry_block_ptr18 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 0, !dbg !2733
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr18, align 8, !dbg !2733
  %count19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i64 0, i32 8, !dbg !2734
  store i64 %15, i64* %count19, align 8, !dbg !2735
  %19 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg17, align 8, !dbg !2736
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 1, !dbg !2736
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2736
  %count22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 8, !dbg !2737
  %21 = load i64, i64* %count22, align 8, !dbg !2737
  %mul23 = mul nsw i64 %21, %count_scale.0, !dbg !2738
  %add24 = add nsw i64 %mul23, 5000, !dbg !2739
  %div25 = sdiv i64 %add24, 10000, !dbg !2740
  store i64 %div25, i64* %count22, align 8, !dbg !2741
  %22 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg17, align 8, !dbg !2742
  %x_entry_block_ptr32 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %22, i64 0, i32 0, !dbg !2742
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr32, align 8, !dbg !2742
  %24 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2743
  %25 = bitcast %struct.edge_iterator* %tmp68 to i8*, !dbg !2744
  %26 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp68, i64 0, i32 0, !dbg !2744
  %27 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp68, i64 0, i32 1, !dbg !2744
  %28 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2746
  %29 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2746
  br label %for.cond, !dbg !2742

for.cond:                                         ; preds = %for.inc81, %if.end
  %30 = phi %struct.control_flow_graph* [ %22, %if.end ], [ %.pre1, %for.inc81 ], !dbg !2748
  %todo.0 = phi i32 [ %cond, %if.end ], [ %spec.select, %for.inc81 ], !dbg !2712
  %.pn = phi %struct.basic_block_def* [ %23, %if.end ], [ %bb.0, %for.inc81 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2749
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2749
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2683, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 %todo.0, metadata !2691, metadata !DIExpression()), !dbg !2712
  %x_exit_block_ptr35 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %30, i64 0, i32 1, !dbg !2748
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr35, align 8, !dbg !2748
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %31, !dbg !2748
  br i1 %cmp, label %for.end83, label %for.body, !dbg !2742

for.body:                                         ; preds = %for.cond
  %count37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 8, !dbg !2750
  %32 = load i64, i64* %count37, align 8, !dbg !2750
  %mul38 = mul nsw i64 %32, %count_scale.0, !dbg !2751
  %add39 = add nsw i64 %mul38, 5000, !dbg !2752
  %div40 = sdiv i64 %add39, 10000, !dbg !2753
  store i64 %div40, i64* %count37, align 8, !dbg !2754
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %24) #8, !dbg !2755
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !2755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %24, i64 24, i1 false), !dbg !2755
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %24) #8, !dbg !2755
  br label %for.cond42, !dbg !2756

for.cond42:                                       ; preds = %if.end61, %for.body
  %todo.1 = phi i32 [ %todo.0, %for.body ], [ %todo.3, %if.end61 ], !dbg !2712
  call void @llvm.dbg.value(metadata i32 %todo.1, metadata !2691, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2712
  %call43 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2757
  %tobool44 = icmp eq i8 %call43, 0, !dbg !2758
  br i1 %tobool44, label %for.body45, label %for.end, !dbg !2759

for.body45:                                       ; preds = %for.cond42
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2712
  %call46 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2760
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call46, metadata !2701, metadata !DIExpression()), !dbg !2761
  %call47 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call46) #7, !dbg !2762
  %tobool49 = icmp eq i8 %call47, 0, !dbg !2762
  br i1 %tobool49, label %cond.end, label %cond.true, !dbg !2762

cond.true:                                        ; preds = %for.body45
  %call50 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call46) #7, !dbg !2763
  br label %cond.end, !dbg !2762

cond.end:                                         ; preds = %for.body45, %cond.true
  %cond51 = phi %union.tree_node* [ %call50, %cond.true ], [ null, %for.body45 ], !dbg !2762
  call void @llvm.dbg.value(metadata %union.tree_node* %cond51, metadata !2708, metadata !DIExpression()), !dbg !2761
  %tobool52 = icmp eq %union.tree_node* %cond51, null, !dbg !2764
  br i1 %tobool52, label %if.end61, label %land.lhs.true, !dbg !2766

land.lhs.true:                                    ; preds = %cond.end
  %call53 = call i32 @gimple_call_flags(%union.gimple_statement_d* %call46) #6, !dbg !2767
  %and = and i32 %call53, 7, !dbg !2768
  %tobool54 = icmp eq i32 %and, 0, !dbg !2768
  br i1 %tobool54, label %if.end61, label %if.then55, !dbg !2769

if.then55:                                        ; preds = %land.lhs.true
  %33 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2770
  %call57 = call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %33) #7, !dbg !2773
  %tobool58 = icmp eq i8 %call57, 0, !dbg !2773
  br i1 %tobool58, label %if.end61, label %if.then59, !dbg !2774

if.then59:                                        ; preds = %if.then55
  %or = or i32 %todo.1, 2080, !dbg !2775
  call void @llvm.dbg.value(metadata i32 %or, metadata !2691, metadata !DIExpression()), !dbg !2712
  call void @mark_symbols_for_renaming(%union.gimple_statement_d* %call46) #6, !dbg !2777
  call fastcc void @update_stmt(%union.gimple_statement_d* %call46) #7, !dbg !2778
  br label %if.end61, !dbg !2779

if.end61:                                         ; preds = %if.then55, %land.lhs.true, %cond.end, %if.then59
  %todo.3 = phi i32 [ %todo.1, %land.lhs.true ], [ %todo.1, %cond.end ], [ %or, %if.then59 ], [ %todo.1, %if.then55 ], !dbg !2712
  call void @llvm.dbg.value(metadata i32 %todo.3, metadata !2691, metadata !DIExpression()), !dbg !2712
  %call62 = call zeroext i8 @maybe_clean_eh_stmt(%union.gimple_statement_d* %call46) #6, !dbg !2780
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2712
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2781
  br label %for.cond42, !dbg !2782, !llvm.loop !2783

for.end:                                          ; preds = %for.cond42
  %todo.1.lcssa = phi i32 [ %todo.1, %for.cond42 ], !dbg !2712
  call void @llvm.dbg.value(metadata i32 %todo.1.lcssa, metadata !2691, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 %todo.1.lcssa, metadata !2691, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 %todo.1.lcssa, metadata !2691, metadata !DIExpression()), !dbg !2712
  %call63 = call zeroext i8 @gimple_purge_dead_eh_edges(%struct.basic_block_def* %bb.0) #6, !dbg !2785
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2691, metadata !DIExpression()), !dbg !2712
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #8, !dbg !2787
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2787
  %call69 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2787
  %34 = extractvalue { i32, %struct.VEC_edge_gc** } %call69, 0, !dbg !2787
  store i32 %34, i32* %26, align 8, !dbg !2787
  %35 = extractvalue { i32, %struct.VEC_edge_gc** } %call69, 1, !dbg !2787
  store %struct.VEC_edge_gc** %35, %struct.VEC_edge_gc*** %27, align 8, !dbg !2787
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %25, i64 16, i1 false), !dbg !2787
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #8, !dbg !2787
  br label %for.cond70, !dbg !2787

for.cond70:                                       ; preds = %for.body73, %for.end
  %36 = load i32, i32* %28, align 8, !dbg !2788
  %37 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %29, align 8, !dbg !2788
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2693, metadata !DIExpression(DW_OP_deref)), !dbg !2712
  %call71 = call fastcc zeroext i8 @ei_cond(i32 %36, %struct.VEC_edge_gc** %37, %struct.edge_def** nonnull %e) #7, !dbg !2788
  %tobool72 = icmp eq i8 %call71, 0, !dbg !2787
  br i1 %tobool72, label %for.inc81, label %for.body73, !dbg !2787

for.body73:                                       ; preds = %for.cond70
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2789
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !2693, metadata !DIExpression()), !dbg !2712
  %count74 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i64 0, i32 9, !dbg !2790
  %39 = load i64, i64* %count74, align 8, !dbg !2790
  %mul75 = mul nsw i64 %39, %count_scale.0, !dbg !2791
  %add76 = add nsw i64 %mul75, 5000, !dbg !2792
  %div77 = sdiv i64 %add76, 10000, !dbg !2793
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !2693, metadata !DIExpression()), !dbg !2712
  store i64 %div77, i64* %count74, align 8, !dbg !2794
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2694, metadata !DIExpression(DW_OP_deref)), !dbg !2712
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2788
  br label %for.cond70, !dbg !2788, !llvm.loop !2795

for.inc81:                                        ; preds = %for.cond70
  %or66 = or i32 %todo.1.lcssa, 32, !dbg !2797
  %tobool64 = icmp eq i8 %call63, 0, !dbg !2785
  %spec.select = select i1 %tobool64, i32 %todo.1.lcssa, i32 %or66, !dbg !2798
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2748
  %cfg34.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2799
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg34.phi.trans.insert, align 8, !dbg !2748
  br label %for.cond, !dbg !2748, !llvm.loop !2800

for.end83:                                        ; preds = %for.cond
  %todo.0.lcssa = phi i32 [ %todo.0, %for.cond ], !dbg !2712
  call void @llvm.dbg.value(metadata i32 %todo.0.lcssa, metadata !2691, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 %todo.0.lcssa, metadata !2691, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 %todo.0.lcssa, metadata !2691, metadata !DIExpression()), !dbg !2712
  %cmp84 = icmp eq i64 %count_scale.0, 10000, !dbg !2802
  br i1 %cmp84, label %if.end87, label %if.then86, !dbg !2804

if.then86:                                        ; preds = %for.end83
  call void @compute_function_frequency() #6, !dbg !2805
  br label %if.end87, !dbg !2805

if.end87:                                         ; preds = %for.end83, %if.then86
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2806
  %tobool88 = icmp eq %struct._IO_FILE* %40, null, !dbg !2806
  br i1 %tobool88, label %if.end90, label %if.then89, !dbg !2808

if.then89:                                        ; preds = %if.end87
  %41 = load i32, i32* @dump_flags, align 4, !dbg !2809
  call void @gimple_dump_cfg(%struct._IO_FILE* nonnull %40, i32 %41) #6, !dbg !2810
  br label %if.end90, !dbg !2810

if.end90:                                         ; preds = %if.end87, %if.then89
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2811
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2811
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2811
  ret i32 %todo.0.lcssa, !dbg !2812
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %fun) unnamed_addr #0 !dbg !2813 {
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

declare dso_local %struct.cgraph_node* @cgraph_node(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2829 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2833, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2834, metadata !DIExpression()), !dbg !2837
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !2838
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2835, metadata !DIExpression()), !dbg !2836
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !2839
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2840
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2841
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2842
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2843
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2844
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2845
  ret void, !dbg !2846
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2847 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2851, metadata !DIExpression()), !dbg !2852
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2853
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2853
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2854
  %conv1 = zext i1 %cmp to i8, !dbg !2855
  ret i8 %conv1, !dbg !2856
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2857 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2861, metadata !DIExpression()), !dbg !2862
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2863
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2863
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2864
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2864
  ret %union.gimple_statement_d* %1, !dbg !2865
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2866 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2871, metadata !DIExpression()), !dbg !2872
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !2873
  %cmp = icmp eq i32 %call, 8, !dbg !2874
  %conv1 = zext i1 %cmp to i8, !dbg !2873
  ret i8 %conv1, !dbg !2875
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2876 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2880, metadata !DIExpression()), !dbg !2882
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !2883
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2881, metadata !DIExpression()), !dbg !2882
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2884
  %bf.load = load i64, i64* %0, align 8, !dbg !2884
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2886
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !2886
  br i1 %cmp, label %if.then, label %cleanup, !dbg !2887

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2888
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2888
  br label %cleanup, !dbg !2889

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !2882
  ret %union.tree_node* %retval.0, !dbg !2890
}

declare dso_local i32 @gimple_call_flags(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @mark_symbols_for_renaming(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !2891 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !2895, metadata !DIExpression()), !dbg !2896
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #7, !dbg !2897
  %tobool = icmp eq i8 %call, 0, !dbg !2897
  br i1 %tobool, label %if.end, label %if.then, !dbg !2899

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !2900
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !2902
  br label %if.end, !dbg !2903

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2904
}

declare dso_local zeroext i8 @maybe_clean_eh_stmt(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2905 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2910, metadata !DIExpression()), !dbg !2911
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2912
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2912
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2913
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2913
  %2 = load i64, i64* %1, align 8, !dbg !2913
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2914
  store i64 %2, i64* %3, align 8, !dbg !2914
  ret void, !dbg !2915
}

declare dso_local zeroext i8 @gimple_purge_dead_eh_edges(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2916 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2920, metadata !DIExpression()), !dbg !2922
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2923
  store i32 0, i32* %index, align 8, !dbg !2924
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2925
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2926
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2927
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2927
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2927
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2928 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2934, metadata !DIExpression()), !dbg !2935
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2936
  %tobool = icmp eq i8 %call, 0, !dbg !2936
  br i1 %tobool, label %if.then, label %if.else, !dbg !2938

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2939
  br label %return, !dbg !2941

if.else:                                          ; preds = %entry
  br label %return, !dbg !2942

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2944
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2944
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2944
  ret i8 %retval.0, !dbg !2945
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2946 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2951, metadata !DIExpression()), !dbg !2952
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2953
  %0 = load i32, i32* %index, align 8, !dbg !2953
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2953
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2953
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !2953
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2953
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2953

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2953
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2953
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !2953
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2953
  br label %cond.end, !dbg !2953

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2953
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2953
  %cmp = icmp ult i32 %0, %call2, !dbg !2953
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2953

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2953
  br label %cond.end5, !dbg !2953

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2954
  %inc = add i32 %5, 1, !dbg !2954
  store i32 %inc, i32* %index, align 8, !dbg !2954
  ret void, !dbg !2955
}

declare dso_local void @compute_function_frequency() local_unnamed_addr #2

declare dso_local void @gimple_dump_cfg(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @execute_init_datastructures() #5 !dbg !2956 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2957
  tail call void @init_tree_ssa(%struct.function* %0) #6, !dbg !2958
  ret i32 0, !dbg !2959
}

; Function Attrs: nounwind uwtable
define dso_local void @tree_lowering_passes(%union.tree_node* %fn) local_unnamed_addr #5 !dbg !2960 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fn, metadata !2964, metadata !DIExpression()), !dbg !2966
  %0 = load i64, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !2967
  store %union.tree_node* %fn, %union.tree_node** @current_function_decl, align 8, !dbg !2968
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %fn, i64 0, i32 0, i32 1, !dbg !2969
  %1 = load %struct.function*, %struct.function** %f, align 8, !dbg !2969
  tail call void @push_cfun(%struct.function* %1) #6, !dbg !2970
  tail call void @gimple_register_cfg_hooks() #6, !dbg !2971
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* null) #6, !dbg !2972
  %2 = load %struct.opt_pass*, %struct.opt_pass** @all_lowering_passes, align 8, !dbg !2973
  tail call void @execute_pass_list(%struct.opt_pass* %2) #6, !dbg !2974
  %3 = load i32, i32* @optimize, align 4, !dbg !2975
  %tobool = icmp eq i32 %3, 0, !dbg !2975
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2977

land.lhs.true:                                    ; preds = %entry
  %4 = load i8, i8* @cgraph_global_info_ready, align 1, !dbg !2978
  %tobool1 = icmp eq i8 %4, 0, !dbg !2978
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2979

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.opt_pass*, %struct.opt_pass** getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !dbg !2980
  tail call void @execute_pass_list(%struct.opt_pass* %5) #6, !dbg !2981
  br label %if.end, !dbg !2981

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  tail call void @free_dominance_info(i32 2) #6, !dbg !2982
  tail call void @free_dominance_info(i32 1) #6, !dbg !2983
  tail call void @compact_blocks() #6, !dbg !2984
  store i64 %0, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !2985
  tail call void @bitmap_obstack_release(%struct.bitmap_obstack* null) #6, !dbg !2986
  tail call void @pop_cfun() #6, !dbg !2987
  ret void, !dbg !2988
}

declare dso_local void @push_cfun(%struct.function*) local_unnamed_addr #2

declare dso_local void @gimple_register_cfg_hooks() local_unnamed_addr #2

declare dso_local void @bitmap_obstack_initialize(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local void @execute_pass_list(%struct.opt_pass*) local_unnamed_addr #2

declare dso_local void @compact_blocks() local_unnamed_addr #2

declare dso_local void @bitmap_obstack_release(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local void @pop_cfun() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @tree_rest_of_compilation(%union.tree_node* %fndecl) local_unnamed_addr #5 !dbg !2989 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl, metadata !2991, metadata !DIExpression()), !dbg !2999
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !3000
  %tobool = icmp eq i8 %0, 0, !dbg !3000
  br i1 %tobool, label %do.end, label %if.then, !dbg !3003

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 116) #6, !dbg !3000
  br label %do.end, !dbg !3000

do.end:                                           ; preds = %entry, %if.then
  %1 = load i8, i8* @cgraph_global_info_ready, align 1, !dbg !3004
  %tobool1 = icmp eq i8 %1, 0, !dbg !3004
  br i1 %tobool1, label %cond.true, label %cond.end, !dbg !3004

cond.true:                                        ; preds = %do.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 385, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3004
  br label %cond.end, !dbg !3004

cond.end:                                         ; preds = %do.end, %cond.true
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* null) #6, !dbg !3005
  store %union.tree_node* %fndecl, %union.tree_node** @current_function_decl, align 8, !dbg !3006
  %2 = load i32, i32* @input_location, align 4, !dbg !3007
  call void @llvm.dbg.value(metadata i32 %2, metadata !2992, metadata !DIExpression()), !dbg !2999
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3008
  %3 = load i32, i32* %locus, align 8, !dbg !3008
  store i32 %3, i32* @input_location, align 4, !dbg !3009
  tail call void @init_function_start(%union.tree_node* %fndecl) #6, !dbg !3010
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3011
  %dont_save_pending_sizes_p = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 20, !dbg !3012
  %bf.load = load i32, i32* %dont_save_pending_sizes_p, align 8, !dbg !3013
  %bf.set = or i32 %bf.load, 8388608, !dbg !3013
  store i32 %bf.set, i32* %dont_save_pending_sizes_p, align 8, !dbg !3013
  tail call void @gimple_register_cfg_hooks() #6, !dbg !3014
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* nonnull @reg_obstack) #6, !dbg !3015
  tail call void @execute_all_ipa_transforms() #6, !dbg !3016
  %call = tail call i32 @invoke_plugin_callbacks(i32 14, i8* null) #6, !dbg !3017
  %5 = load %struct.opt_pass*, %struct.opt_pass** @all_passes, align 8, !dbg !3018
  tail call void @execute_pass_list(%struct.opt_pass* %5) #6, !dbg !3019
  %call2 = tail call i32 @invoke_plugin_callbacks(i32 15, i8* null) #6, !dbg !3020
  tail call void @bitmap_obstack_release(%struct.bitmap_obstack* nonnull @reg_obstack) #6, !dbg !3021
  tail call void @bitmap_obstack_release(%struct.bitmap_obstack* null) #6, !dbg !3022
  tail call void @set_cfun(%struct.function* null) #6, !dbg !3023
  %6 = load i8, i8* @warn_larger_than, align 1, !dbg !3024
  %tobool3 = icmp eq i8 %6, 0, !dbg !3024
  br i1 %tobool3, label %if.end47, label %land.lhs.true, !dbg !3025

land.lhs.true:                                    ; preds = %cond.end
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3026
  %7 = bitcast i40* %decl_flag_1 to i64*, !dbg !3026
  %bf.load4 = load i64, i64* %7, align 8, !dbg !3026
  %bf.cast1 = and i64 %bf.load4, 33554432, !dbg !3026
  %tobool6 = icmp eq i64 %bf.cast1, 0, !dbg !3026
  br i1 %tobool6, label %land.lhs.true7, label %if.end47, !dbg !3027

land.lhs.true7:                                   ; preds = %land.lhs.true
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3028
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3028
  %tobool8 = icmp eq %union.tree_node* %8, null, !dbg !3028
  br i1 %tobool8, label %if.end47, label %if.then9, !dbg !3029

if.then9:                                         ; preds = %land.lhs.true7
  %type13 = getelementptr inbounds %union.tree_node, %union.tree_node* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3030
  %9 = load %union.tree_node*, %union.tree_node** %type13, align 8, !dbg !3030
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !2993, metadata !DIExpression()), !dbg !3031
  %tobool14 = icmp eq %union.tree_node* %9, null, !dbg !3032
  br i1 %tobool14, label %if.end47, label %land.lhs.true15, !dbg !3033

land.lhs.true15:                                  ; preds = %if.then9
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3034
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8, !dbg !3034
  %tobool17 = icmp eq %union.tree_node* %11, null, !dbg !3034
  br i1 %tobool17, label %if.end47, label %land.lhs.true18, !dbg !3035

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3035
  %bf.load21 = load i64, i64* %12, align 8, !dbg !3036
  %bf.cast232 = and i64 %bf.load21, 65535, !dbg !3037
  %cmp = icmp eq i64 %bf.cast232, 23, !dbg !3037
  br i1 %cmp, label %land.lhs.true25, label %if.end47, !dbg !3038

land.lhs.true25:                                  ; preds = %land.lhs.true18
  %13 = load i64, i64* @larger_than_size, align 8, !dbg !3039
  %call28 = tail call i32 @compare_tree_int(%union.tree_node* nonnull %11, i64 %13) #6, !dbg !3040
  %cmp29 = icmp sgt i32 %call28, 0, !dbg !3041
  br i1 %cmp29, label %if.then31, label %if.end47, !dbg !3042

if.then31:                                        ; preds = %land.lhs.true25
  %14 = bitcast %union.tree_node** %10 to %struct.tree_int_cst**, !dbg !3043
  %15 = load %struct.tree_int_cst*, %struct.tree_int_cst** %14, align 8, !dbg !3043
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %15, i64 0, i32 1, i32 0, !dbg !3043
  %16 = load i64, i64* %low, align 8, !dbg !3043
  call void @llvm.dbg.value(metadata i32 undef, metadata !2996, metadata !DIExpression()), !dbg !3044
  %.cast = bitcast %struct.tree_int_cst* %15 to %union.tree_node*, !dbg !3045
  %conv38 = and i64 %16, 4294967295, !dbg !3047
  %call39 = tail call i32 @compare_tree_int(%union.tree_node* %.cast, i64 %conv38) #6, !dbg !3048
  %cmp40 = icmp eq i32 %call39, 0, !dbg !3049
  br i1 %cmp40, label %if.then42, label %if.else, !dbg !3050

if.then42:                                        ; preds = %if.then31
  %conv35 = trunc i64 %16 to i32, !dbg !3043
  call void @llvm.dbg.value(metadata i32 %conv35, metadata !2996, metadata !DIExpression()), !dbg !3044
  %call43 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 121, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), %union.tree_node* %fndecl, i32 %conv35) #6, !dbg !3051
  br label %if.end47, !dbg !3051

if.else:                                          ; preds = %if.then31
  %17 = load i64, i64* @larger_than_size, align 8, !dbg !3052
  %call44 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 121, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), %union.tree_node* %fndecl, i64 %17) #6, !dbg !3053
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true15, %if.then9, %land.lhs.true7, %land.lhs.true, %cond.end, %land.lhs.true18, %land.lhs.true25, %if.else, %if.then42
  tail call void @gimple_set_body(%union.tree_node* %fndecl, %struct.gimple_seq_d* null) #6, !dbg !3054
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 1, !dbg !3055
  %18 = load %struct.function*, %struct.function** %f, align 8, !dbg !3055
  %cmp48 = icmp eq %struct.function* %18, null, !dbg !3057
  br i1 %cmp48, label %land.lhs.true50, label %if.end61, !dbg !3058

land.lhs.true50:                                  ; preds = %if.end47
  %call51 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %fndecl) #6, !dbg !3059
  %origin = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call51, i64 0, i32 5, !dbg !3060
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %origin, align 8, !dbg !3060
  %tobool52 = icmp eq %struct.cgraph_node* %19, null, !dbg !3059
  br i1 %tobool52, label %if.then53, label %if.end61, !dbg !3061

if.then53:                                        ; preds = %land.lhs.true50
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !3062
  %20 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !3062
  %cmp55 = icmp eq %union.tree_node* %20, null, !dbg !3065
  br i1 %cmp55, label %if.end61, label %if.then57, !dbg !3066

if.then57:                                        ; preds = %if.then53
  %21 = load i64, i64* bitcast ([131 x %union.tree_node*]* @global_trees to i64*), align 16, !dbg !3067
  %22 = bitcast %union.tree_node** %initial to i64*, !dbg !3068
  store i64 %21, i64* %22, align 8, !dbg !3068
  br label %if.end61, !dbg !3069

if.end61:                                         ; preds = %if.then53, %land.lhs.true50, %if.then57, %if.end47
  store i32 %2, i32* @input_location, align 4, !dbg !3070
  tail call void @ggc_collect() #6, !dbg !3071
  %23 = load i8, i8* @timevar_enable, align 1, !dbg !3072
  %tobool63 = icmp eq i8 %23, 0, !dbg !3072
  br i1 %tobool63, label %do.end67, label %if.then64, !dbg !3075

if.then64:                                        ; preds = %if.end61
  tail call void @timevar_pop_1(i32 116) #6, !dbg !3072
  br label %do.end67, !dbg !3072

do.end67:                                         ; preds = %if.end61, %if.then64
  ret void, !dbg !3076
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local void @init_function_start(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @execute_all_ipa_transforms() local_unnamed_addr #2

declare dso_local i32 @invoke_plugin_callbacks(i32, i8*) local_unnamed_addr #2

declare dso_local void @set_cfun(%struct.function*) local_unnamed_addr #2

declare dso_local i32 @compare_tree_int(%union.tree_node*, i64) local_unnamed_addr #2

declare dso_local zeroext i8 @warning(i32, i8*, ...) local_unnamed_addr #2

declare dso_local void @gimple_set_body(%union.tree_node*, %struct.gimple_seq_d*) local_unnamed_addr #2

declare dso_local void @ggc_collect() local_unnamed_addr #2

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #2

declare dso_local zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #2

declare dso_local void @fold_cond_expr_cond() local_unnamed_addr #2

declare dso_local void @cleanup_dead_labels() local_unnamed_addr #2

declare dso_local void @group_case_labels() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3077 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3084, metadata !DIExpression()), !dbg !3085
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3086
  %0 = load i32, i32* %flags, align 8, !dbg !3086
  %and = and i32 %0, 512, !dbg !3087
  %tobool = icmp eq i32 %and, 0, !dbg !3087
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3088

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3089
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3089
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3090
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3091

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3092
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3092
  br label %cond.end, !dbg !3091

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3091
  ret %struct.gimple_seq_d* %cond, !dbg !3093
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3094 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3101, metadata !DIExpression()), !dbg !3102
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3103
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3103

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3104
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3104
  br label %cond.end, !dbg !3103

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3103
  ret %struct.gimple_seq_node_d* %cond, !dbg !3105
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3106 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3110, metadata !DIExpression()), !dbg !3111
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3112
  %bf.load = load i32, i32* %0, align 8, !dbg !3112
  %bf.clear = and i32 %bf.load, 255, !dbg !3112
  ret i32 %bf.clear, !dbg !3113
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3114 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3116, metadata !DIExpression()), !dbg !3117
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3118
  ret %union.tree_node* %call, !dbg !3119
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3120 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3124, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 1, metadata !3125, metadata !DIExpression()), !dbg !3126
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3127
  %tobool = icmp eq i8 %call, 0, !dbg !3127
  br i1 %tobool, label %return, label %if.then, !dbg !3129

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3130
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 1, !dbg !3130
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3130
  br label %return, !dbg !3132

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3133
  ret %union.tree_node* %retval.0, !dbg !3134
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3135 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3137, metadata !DIExpression()), !dbg !3138
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3139
  %cmp = icmp eq i32 %call, 0, !dbg !3140
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3141

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3142
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3143
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3144
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3145 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3149, metadata !DIExpression()), !dbg !3151
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3152
  %idxprom = zext i32 %call to i64, !dbg !3153
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3153
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3153
  call void @llvm.dbg.value(metadata i64 %0, metadata !3150, metadata !DIExpression()), !dbg !3151
  %cmp = icmp eq i64 %0, 0, !dbg !3154
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3154

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3154
  br label %cond.end, !dbg !3154

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3155
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3156
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3157
  ret %union.tree_node** %2, !dbg !3158
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3159 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3163, metadata !DIExpression()), !dbg !3164
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3165
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3166
  ret i32 %call1, !dbg !3167
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3168 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3172, metadata !DIExpression()), !dbg !3173
  %idxprom = zext i32 %code to i64, !dbg !3174
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3174
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3174
  ret i32 %0, !dbg !3175
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3176 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3181
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3181
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3181

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3181
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3181
  br label %cond.end, !dbg !3181

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3181
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3181
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3182
  %conv3 = zext i1 %cmp to i8, !dbg !3183
  ret i8 %conv3, !dbg !3184
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3185 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3190
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3190
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3190

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3190
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3190
  br label %cond.end, !dbg !3190

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3190
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3190
  ret %struct.edge_def* %call2, !dbg !3191
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3192 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3198, metadata !DIExpression()), !dbg !3199
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3200
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3200

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3200
  %0 = load i32, i32* %num, align 8, !dbg !3200
  br label %cond.end, !dbg !3200

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3200
  ret i32 %cond, !dbg !3200
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3201 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3206
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3206

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3206
  br label %cond.end, !dbg !3206

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3207
  ret %struct.VEC_edge_gc* %0, !dbg !3208
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3209 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3213, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3214, metadata !DIExpression()), !dbg !3215
  br label %land.end, !dbg !3216

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3216
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3216
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3216
  ret %struct.edge_def* %0, !dbg !3216
}

declare dso_local void @init_tree_ssa(%struct.function*) local_unnamed_addr #2

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
!llvm.module.flags = !{!2182, !2183, !2184}
!llvm.ident = !{!2185}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_all_optimizations", scope: !2, file: !3, line: 66, type: !2171, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !645, globals: !2140, nameTableKind: None)
!3 = !DIFile(filename: "tree-optimize.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !324, !330, !335, !344, !348, !353, !372, !379, !386, !580, !619}
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
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !318, line: 30, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322, !323}
!320 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!323 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!324 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !325, line: 363, baseType: !7, size: 32, elements: !326)
!325 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!326 = !{!327, !328, !329}
!327 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!328 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!329 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !325, line: 355, baseType: !7, size: 32, elements: !331)
!331 = !{!332, !333, !334}
!332 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !336, line: 31, baseType: !7, size: 32, elements: !337)
!336 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!337 = !{!338, !339, !340, !341, !342, !343}
!338 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!339 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!340 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!341 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!342 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!343 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!344 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !336, line: 91, baseType: !7, size: 32, elements: !345)
!345 = !{!346, !347}
!346 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!347 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !349, line: 474, baseType: !7, size: 32, elements: !350)
!349 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!350 = !{!351, !352}
!351 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!352 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!353 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !354, line: 280, baseType: !7, size: 32, elements: !355)
!354 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371}
!356 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!372 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !354, line: 1817, baseType: !7, size: 32, elements: !373)
!373 = !{!374, !375, !376, !377, !378}
!374 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!377 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!378 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!379 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !354, line: 1805, baseType: !7, size: 32, elements: !380)
!380 = !{!381, !382, !383, !384, !385}
!381 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!382 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!383 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!384 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!385 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!386 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !354, line: 39, baseType: !7, size: 32, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!388 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!389 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!390 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!391 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!392 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!393 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!394 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!395 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!396 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!397 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!398 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!399 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!400 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!401 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!402 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!403 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!404 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!405 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!406 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!407 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!408 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!409 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!410 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!411 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!412 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!413 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!414 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!415 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!416 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!417 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!418 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!419 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!420 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!421 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!422 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!423 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!424 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!425 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!426 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!427 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!428 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!429 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!430 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!431 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!432 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!433 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!434 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!435 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!436 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!437 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!438 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!439 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!440 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!441 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!442 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!443 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!444 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!445 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!446 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!447 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!448 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!449 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!450 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!451 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!452 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!453 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!454 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!455 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!456 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!457 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!458 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!459 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!460 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!461 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!462 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!463 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!464 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!465 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!466 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!467 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!468 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!469 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!470 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!471 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!472 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!473 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!474 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!475 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!476 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!477 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!478 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!479 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!480 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!481 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!482 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!483 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!484 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!485 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!486 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!487 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!488 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!489 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!490 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!491 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!492 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!493 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!494 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!495 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!496 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!497 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!498 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!499 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!500 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!501 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!502 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!503 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!504 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!505 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!506 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!507 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!508 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!509 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!510 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!511 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!512 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!513 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!514 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!515 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!516 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!517 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!518 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!519 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!520 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!521 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!522 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!523 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!524 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!525 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!526 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!527 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!528 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!529 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!530 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!531 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!532 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!533 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!534 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!535 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!536 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!537 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!538 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!539 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!540 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!541 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!542 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!543 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!544 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!545 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!546 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!547 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!548 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!549 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!550 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!551 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!552 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!553 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!554 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!555 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!556 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!557 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!558 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!559 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!560 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!561 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!562 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!563 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!564 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!565 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!566 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!567 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!568 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!569 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!570 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!571 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!572 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!573 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!574 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!575 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!576 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!577 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!578 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!579 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !581, line: 51, baseType: !7, size: 32, elements: !582)
!581 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!583 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!584 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!585 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!586 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!587 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!588 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!589 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!590 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!591 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!592 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!593 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!594 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!595 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!596 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!598 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!599 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!600 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!601 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!602 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!605 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!606 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!607 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!608 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!609 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!610 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!611 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!612 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!613 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!614 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!615 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!616 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!617 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!618 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!619 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !581, line: 727, baseType: !7, size: 32, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!621 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!622 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!623 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!624 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!625 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!626 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!627 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!628 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!629 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!630 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!631 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!632 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!633 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!634 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!635 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!636 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!637 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!638 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!639 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!640 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!641 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!642 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!643 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!644 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!645 = !{!646, !647, !648, !649, !652, !653, !386, !655, !980, !2138, !1014, !650}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!648 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !656, line: 56, baseType: !657)
!656 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !354, line: 3371, size: 1792, elements: !659)
!659 = !{!660, !693, !699, !712, !731, !742, !747, !756, !762, !775, !787, !825, !1370, !1398, !1415, !1416, !1421, !1430, !1436, !1441, !1445, !1449, !1789, !1836, !1842, !1848, !1855, !1868, !1882, !1899, !1911, !1933, !1948, !2120}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !658, file: !354, line: 3372, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !354, line: 360, size: 64, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !661, file: !354, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !661, file: !354, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !661, file: !354, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !661, file: !354, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !661, file: !354, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !661, file: !354, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !661, file: !354, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !661, file: !354, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !661, file: !354, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !661, file: !354, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !661, file: !354, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !661, file: !354, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !661, file: !354, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !661, file: !354, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !661, file: !354, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !661, file: !354, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !661, file: !354, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !661, file: !354, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !661, file: !354, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !661, file: !354, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !661, file: !354, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !661, file: !354, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !661, file: !354, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !661, file: !354, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !661, file: !354, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !661, file: !354, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !661, file: !354, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !661, file: !354, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !661, file: !354, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !661, file: !354, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !658, file: !354, line: 3373, baseType: !694, size: 192)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !354, line: 402, size: 192, elements: !695)
!695 = !{!696, !697, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !694, file: !354, line: 403, baseType: !661, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !694, file: !354, line: 404, baseType: !655, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !354, line: 405, baseType: !655, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !658, file: !354, line: 3374, baseType: !700, size: 320)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !354, line: 1384, size: 320, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !700, file: !354, line: 1385, baseType: !694, size: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !700, file: !354, line: 1386, baseType: !704, size: 128, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !705, line: 58, baseType: !706)
!705 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !705, line: 54, size: 128, elements: !707)
!707 = !{!708, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !706, file: !705, line: 56, baseType: !709, size: 64)
!709 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !706, file: !705, line: 57, baseType: !711, size: 64, offset: 64)
!711 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !658, file: !354, line: 3375, baseType: !713, size: 256)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !354, line: 1397, size: 256, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !713, file: !354, line: 1398, baseType: !694, size: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !713, file: !354, line: 1399, baseType: !717, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !719, line: 52, size: 256, elements: !720)
!719 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!720 = !{!721, !722, !723, !724, !725, !726, !727}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !718, file: !719, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !718, file: !719, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !718, file: !719, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !718, file: !719, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !718, file: !719, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !718, file: !719, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !718, file: !719, line: 62, baseType: !728, size: 192, offset: 64)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 192, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 3)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !658, file: !354, line: 3376, baseType: !732, size: 256)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !354, line: 1408, size: 256, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !732, file: !354, line: 1409, baseType: !694, size: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !732, file: !354, line: 1410, baseType: !736, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !738, line: 27, size: 192, elements: !739)
!738 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !737, file: !738, line: 29, baseType: !704, size: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !737, file: !738, line: 30, baseType: !189, size: 32, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !658, file: !354, line: 3377, baseType: !743, size: 256)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !354, line: 1437, size: 256, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !743, file: !354, line: 1438, baseType: !694, size: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !743, file: !354, line: 1439, baseType: !655, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !658, file: !354, line: 3378, baseType: !748, size: 256)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !354, line: 1418, size: 256, elements: !749)
!749 = !{!750, !751, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !748, file: !354, line: 1419, baseType: !694, size: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !748, file: !354, line: 1420, baseType: !648, size: 32, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !748, file: !354, line: 1421, baseType: !753, size: 8, offset: 224)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 8, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 1)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !658, file: !354, line: 3379, baseType: !757, size: 320)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !354, line: 1428, size: 320, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !757, file: !354, line: 1429, baseType: !694, size: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !757, file: !354, line: 1430, baseType: !655, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !757, file: !354, line: 1431, baseType: !655, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !658, file: !354, line: 3380, baseType: !763, size: 320)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !354, line: 1460, size: 320, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !763, file: !354, line: 1461, baseType: !694, size: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !763, file: !354, line: 1462, baseType: !767, size: 128, offset: 192)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !768, line: 31, size: 128, elements: !769)
!768 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!769 = !{!770, !773, !774}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !767, file: !768, line: 32, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !767, file: !768, line: 33, baseType: !7, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !767, file: !768, line: 34, baseType: !7, size: 32, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !658, file: !354, line: 3381, baseType: !776, size: 384)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !354, line: 2507, size: 384, elements: !777)
!777 = !{!778, !779, !784, !785, !786}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !776, file: !354, line: 2508, baseType: !694, size: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !776, file: !354, line: 2509, baseType: !780, size: 32, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !781, line: 58, baseType: !782)
!781 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !783, line: 44, baseType: !7)
!783 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!784 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !776, file: !354, line: 2510, baseType: !7, size: 32, offset: 224)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !776, file: !354, line: 2511, baseType: !655, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !776, file: !354, line: 2512, baseType: !655, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !658, file: !354, line: 3382, baseType: !788, size: 896)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !354, line: 2652, size: 896, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !788, file: !354, line: 2653, baseType: !776, size: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !788, file: !354, line: 2654, baseType: !655, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !788, file: !354, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !788, file: !354, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !788, file: !354, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !788, file: !354, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !788, file: !354, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !788, file: !354, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !788, file: !354, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !788, file: !354, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !788, file: !354, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !788, file: !354, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !788, file: !354, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !788, file: !354, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !788, file: !354, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !788, file: !354, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !788, file: !354, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !788, file: !354, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !788, file: !354, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !788, file: !354, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !788, file: !354, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !788, file: !354, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !788, file: !354, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !788, file: !354, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !788, file: !354, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !788, file: !354, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !788, file: !354, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !788, file: !354, line: 2703, baseType: !7, size: 32, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !788, file: !354, line: 2705, baseType: !655, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !788, file: !354, line: 2706, baseType: !655, size: 64, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !788, file: !354, line: 2707, baseType: !655, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !788, file: !354, line: 2708, baseType: !655, size: 64, offset: 768)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !788, file: !354, line: 2711, baseType: !823, size: 64, offset: 832)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !354, line: 2711, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !658, file: !354, line: 3383, baseType: !826, size: 960)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !354, line: 2756, size: 960, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !826, file: !354, line: 2757, baseType: !788, size: 896)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !826, file: !354, line: 2758, baseType: !830, size: 64, offset: 896)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !656, line: 50, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !833, line: 240, size: 384, elements: !834)
!833 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !832, file: !833, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !832, file: !833, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !832, file: !833, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !832, file: !833, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !832, file: !833, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !832, file: !833, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !832, file: !833, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !832, file: !833, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !832, file: !833, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !832, file: !833, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !832, file: !833, line: 321, baseType: !846, size: 320, offset: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !833, line: 315, size: 320, elements: !847)
!847 = !{!848, !1303, !1305, !1368, !1369}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !846, file: !833, line: 316, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 64, elements: !754)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !833, line: 183, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !833, line: 166, size: 64, elements: !852)
!852 = !{!853, !854, !855, !856, !857, !865, !866, !878, !881, !941, !942, !1280, !1293, !1300}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !851, file: !833, line: 168, baseType: !648, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !851, file: !833, line: 169, baseType: !7, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !851, file: !833, line: 170, baseType: !653, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !851, file: !833, line: 171, baseType: !830, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !851, file: !833, line: 172, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !656, line: 53, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !833, line: 359, size: 128, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !860, file: !833, line: 360, baseType: !648, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !860, file: !833, line: 361, baseType: !864, size: 64, offset: 64)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 64, elements: !754)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !851, file: !833, line: 173, baseType: !189, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !851, file: !833, line: 174, baseType: !867, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !833, line: 133, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !833, line: 115, size: 32, elements: !869)
!869 = !{!870, !871, !872, !873, !874, !875, !876, !877}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !868, file: !833, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !868, file: !833, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !868, file: !833, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !868, file: !833, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !868, file: !833, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !868, file: !833, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !868, file: !833, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !868, file: !833, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !851, file: !833, line: 175, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !833, line: 175, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !851, file: !833, line: 176, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !884, line: 75, size: 256, elements: !885)
!884 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!885 = !{!886, !900, !901, !902}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !883, file: !884, line: 76, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !884, line: 68, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !884, line: 63, size: 320, elements: !890)
!890 = !{!891, !893, !894, !895}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !889, file: !884, line: 64, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !889, file: !884, line: 65, baseType: !892, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !889, file: !884, line: 66, baseType: !7, size: 32, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !889, file: !884, line: 67, baseType: !896, size: 128, offset: 192)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 128, elements: !898)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !884, line: 29, baseType: !709)
!898 = !{!899}
!899 = !DISubrange(count: 2)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !883, file: !884, line: 77, baseType: !887, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !883, file: !884, line: 78, baseType: !7, size: 32, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !883, file: !884, line: 79, baseType: !903, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !884, line: 49, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !884, line: 45, size: 832, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !905, file: !884, line: 46, baseType: !892, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !905, file: !884, line: 47, baseType: !882, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !905, file: !884, line: 48, baseType: !910, size: 704, offset: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !911, line: 164, size: 704, elements: !912)
!911 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!912 = !{!913, !914, !924, !925, !926, !927, !928, !929, !933, !937, !938, !939, !940}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !910, file: !911, line: 166, baseType: !711, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !910, file: !911, line: 167, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !911, line: 157, size: 192, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !916, file: !911, line: 159, baseType: !650, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !916, file: !911, line: 160, baseType: !915, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !916, file: !911, line: 161, baseType: !921, size: 32, offset: 128)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 32, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 4)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !910, file: !911, line: 168, baseType: !650, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !910, file: !911, line: 169, baseType: !650, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !910, file: !911, line: 170, baseType: !650, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !910, file: !911, line: 171, baseType: !711, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !910, file: !911, line: 172, baseType: !648, size: 32, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !910, file: !911, line: 176, baseType: !930, size: 64, offset: 448)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!915, !652, !711}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !910, file: !911, line: 177, baseType: !934, size: 64, offset: 512)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !652, !915}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !910, file: !911, line: 178, baseType: !652, size: 64, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !910, file: !911, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !910, file: !911, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !910, file: !911, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !851, file: !833, line: 177, baseType: !655, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !851, file: !833, line: 178, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !325, line: 217, size: 832, elements: !945)
!945 = !{!946, !1192, !1193, !1194, !1250, !1254, !1255, !1256, !1274, !1275, !1276, !1277, !1278, !1279}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !944, file: !325, line: 219, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !325, line: 151, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !325, line: 151, size: 128, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !949, file: !325, line: 151, baseType: !952, size: 128)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !325, line: 150, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !325, line: 150, size: 128, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !953, file: !325, line: 150, baseType: !7, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !953, file: !325, line: 150, baseType: !7, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !953, file: !325, line: 150, baseType: !958, size: 64, offset: 64)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !959, size: 64, elements: !754)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !656, line: 108, baseType: !960)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !325, line: 122, size: 512, elements: !962)
!962 = !{!963, !964, !965, !1184, !1185, !1186, !1187, !1188, !1189, !1190}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !961, file: !325, line: 124, baseType: !943, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !961, file: !325, line: 125, baseType: !943, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !961, file: !325, line: 131, baseType: !966, size: 64, offset: 128)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !325, line: 128, size: 64, elements: !967)
!967 = !{!968, !1183}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !966, file: !325, line: 129, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !656, line: 66, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !581, line: 143, size: 192, elements: !972)
!972 = !{!973, !1181, !1182}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !971, file: !581, line: 145, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !656, line: 69, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !581, line: 136, size: 192, elements: !977)
!977 = !{!978, !1179, !1180}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !976, file: !581, line: 137, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !656, line: 58, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !581, line: 737, size: 768, elements: !982)
!982 = !{!983, !1000, !1034, !1040, !1045, !1050, !1057, !1063, !1069, !1074, !1088, !1093, !1099, !1104, !1114, !1119, !1137, !1144, !1151, !1157, !1162, !1168, !1174}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !981, file: !581, line: 738, baseType: !984, size: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !581, line: 271, size: 256, elements: !985)
!985 = !{!986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !984, file: !581, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !984, file: !581, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !984, file: !581, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !984, file: !581, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !984, file: !581, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !984, file: !581, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !984, file: !581, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !984, file: !581, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !984, file: !581, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !984, file: !581, line: 312, baseType: !7, size: 32, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !984, file: !581, line: 316, baseType: !780, size: 32, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !984, file: !581, line: 319, baseType: !7, size: 32, offset: 96)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !984, file: !581, line: 323, baseType: !943, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !984, file: !581, line: 327, baseType: !655, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !981, file: !581, line: 739, baseType: !1001, size: 448)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !581, line: 350, size: 448, elements: !1002)
!1002 = !{!1003, !1032}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1001, file: !581, line: 353, baseType: !1004, size: 384)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !581, line: 333, size: 384, elements: !1005)
!1005 = !{!1006, !1007, !1015}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1004, file: !581, line: 336, baseType: !984, size: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1004, file: !581, line: 343, baseType: !1008, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1010, line: 37, size: 128, elements: !1011)
!1010 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1009, file: !1010, line: 39, baseType: !1008, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1009, file: !1010, line: 40, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1004, file: !581, line: 344, baseType: !1016, size: 64, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1010, line: 45, size: 320, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1017, file: !1010, line: 47, baseType: !1016, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1017, file: !1010, line: 48, baseType: !1021, size: 256, offset: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !354, line: 1883, size: 256, elements: !1022)
!1022 = !{!1023, !1025, !1026, !1031}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1021, file: !354, line: 1884, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1021, file: !354, line: 1885, baseType: !1024, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1021, file: !354, line: 1891, baseType: !1027, size: 64, offset: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !354, line: 1891, size: 64, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1027, file: !354, line: 1891, baseType: !979, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1027, file: !354, line: 1891, baseType: !655, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1021, file: !354, line: 1892, baseType: !1014, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1001, file: !581, line: 359, baseType: !1033, size: 64, offset: 384)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 64, elements: !754)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !981, file: !581, line: 740, baseType: !1035, size: 512)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !581, line: 365, size: 512, elements: !1036)
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1035, file: !581, line: 368, baseType: !1004, size: 384)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1035, file: !581, line: 373, baseType: !655, size: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1035, file: !581, line: 374, baseType: !655, size: 64, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !981, file: !581, line: 741, baseType: !1041, size: 576)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !581, line: 380, size: 576, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1041, file: !581, line: 383, baseType: !1035, size: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1041, file: !581, line: 389, baseType: !1033, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !981, file: !581, line: 742, baseType: !1046, size: 320)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !581, line: 395, size: 320, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1046, file: !581, line: 397, baseType: !984, size: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1046, file: !581, line: 400, baseType: !969, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !981, file: !581, line: 743, baseType: !1051, size: 448)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !581, line: 406, size: 448, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1051, file: !581, line: 408, baseType: !984, size: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1051, file: !581, line: 412, baseType: !655, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1051, file: !581, line: 420, baseType: !655, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1051, file: !581, line: 423, baseType: !969, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !981, file: !581, line: 744, baseType: !1058, size: 384)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !581, line: 429, size: 384, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1058, file: !581, line: 431, baseType: !984, size: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1058, file: !581, line: 434, baseType: !655, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1058, file: !581, line: 437, baseType: !969, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !981, file: !581, line: 745, baseType: !1064, size: 384)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !581, line: 443, size: 384, elements: !1065)
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1064, file: !581, line: 445, baseType: !984, size: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1064, file: !581, line: 449, baseType: !655, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1064, file: !581, line: 453, baseType: !969, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !981, file: !581, line: 746, baseType: !1070, size: 320)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !581, line: 459, size: 320, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1070, file: !581, line: 461, baseType: !984, size: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1070, file: !581, line: 464, baseType: !655, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !981, file: !581, line: 747, baseType: !1075, size: 768)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !581, line: 469, size: 768, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1075, file: !581, line: 471, baseType: !984, size: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1075, file: !581, line: 474, baseType: !7, size: 32, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1075, file: !581, line: 475, baseType: !7, size: 32, offset: 288)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1075, file: !581, line: 478, baseType: !655, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1075, file: !581, line: 481, baseType: !1082, size: 384, offset: 384)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1083, size: 384, elements: !754)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !354, line: 1917, size: 384, elements: !1084)
!1084 = !{!1085, !1086, !1087}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1083, file: !354, line: 1920, baseType: !1021, size: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1083, file: !354, line: 1921, baseType: !655, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1083, file: !354, line: 1922, baseType: !780, size: 32, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !981, file: !581, line: 748, baseType: !1089, size: 320)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !581, line: 487, size: 320, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1089, file: !581, line: 490, baseType: !984, size: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1089, file: !581, line: 494, baseType: !648, size: 32, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !981, file: !581, line: 749, baseType: !1094, size: 384)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !581, line: 500, size: 384, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1094, file: !581, line: 502, baseType: !984, size: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1094, file: !581, line: 506, baseType: !969, size: 64, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1094, file: !581, line: 510, baseType: !969, size: 64, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !981, file: !581, line: 750, baseType: !1100, size: 320)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !581, line: 529, size: 320, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1100, file: !581, line: 531, baseType: !984, size: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1100, file: !581, line: 540, baseType: !969, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !981, file: !581, line: 751, baseType: !1105, size: 704)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !581, line: 546, size: 704, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1105, file: !581, line: 549, baseType: !1035, size: 512)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1105, file: !581, line: 553, baseType: !653, size: 64, offset: 512)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1105, file: !581, line: 557, baseType: !647, size: 8, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1105, file: !581, line: 558, baseType: !647, size: 8, offset: 584)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1105, file: !581, line: 559, baseType: !647, size: 8, offset: 592)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1105, file: !581, line: 560, baseType: !647, size: 8, offset: 600)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1105, file: !581, line: 566, baseType: !1033, size: 64, offset: 640)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !981, file: !581, line: 752, baseType: !1115, size: 384)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !581, line: 571, size: 384, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1115, file: !581, line: 573, baseType: !1046, size: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1115, file: !581, line: 577, baseType: !655, size: 64, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !981, file: !581, line: 753, baseType: !1120, size: 576)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !581, line: 600, size: 576, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1127, !1136}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1120, file: !581, line: 602, baseType: !1046, size: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1120, file: !581, line: 605, baseType: !655, size: 64, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1120, file: !581, line: 609, baseType: !1125, size: 64, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1126, line: 46, baseType: !709)
!1126 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1120, file: !581, line: 612, baseType: !1128, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !581, line: 581, size: 320, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1134, !1135}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1129, file: !581, line: 583, baseType: !386, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1129, file: !581, line: 586, baseType: !655, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1129, file: !581, line: 589, baseType: !655, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1129, file: !581, line: 592, baseType: !655, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1129, file: !581, line: 595, baseType: !655, size: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1120, file: !581, line: 616, baseType: !969, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !981, file: !581, line: 754, baseType: !1138, size: 512)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !581, line: 622, size: 512, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1138, file: !581, line: 624, baseType: !1046, size: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1138, file: !581, line: 628, baseType: !655, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1138, file: !581, line: 632, baseType: !655, size: 64, offset: 384)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1138, file: !581, line: 636, baseType: !655, size: 64, offset: 448)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !981, file: !581, line: 755, baseType: !1145, size: 704)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !581, line: 642, size: 704, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1145, file: !581, line: 644, baseType: !1138, size: 512)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1145, file: !581, line: 648, baseType: !655, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1145, file: !581, line: 652, baseType: !655, size: 64, offset: 576)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1145, file: !581, line: 653, baseType: !655, size: 64, offset: 640)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !981, file: !581, line: 756, baseType: !1152, size: 448)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !581, line: 663, size: 448, elements: !1153)
!1153 = !{!1154, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1152, file: !581, line: 665, baseType: !1046, size: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1152, file: !581, line: 668, baseType: !655, size: 64, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1152, file: !581, line: 673, baseType: !655, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !981, file: !581, line: 757, baseType: !1158, size: 384)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !581, line: 694, size: 384, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1158, file: !581, line: 696, baseType: !1046, size: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1158, file: !581, line: 699, baseType: !655, size: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !981, file: !581, line: 758, baseType: !1163, size: 384)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !581, line: 681, size: 384, elements: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1163, file: !581, line: 683, baseType: !984, size: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1163, file: !581, line: 686, baseType: !655, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1163, file: !581, line: 689, baseType: !655, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !981, file: !581, line: 759, baseType: !1169, size: 384)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !581, line: 707, size: 384, elements: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1169, file: !581, line: 709, baseType: !984, size: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1169, file: !581, line: 712, baseType: !655, size: 64, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1169, file: !581, line: 712, baseType: !655, size: 64, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !981, file: !581, line: 760, baseType: !1175, size: 320)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !581, line: 718, size: 320, elements: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1175, file: !581, line: 720, baseType: !984, size: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1175, file: !581, line: 723, baseType: !655, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !976, file: !581, line: 138, baseType: !975, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !976, file: !581, line: 139, baseType: !975, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !971, file: !581, line: 146, baseType: !974, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !971, file: !581, line: 152, baseType: !969, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !966, file: !325, line: 130, baseType: !830, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !961, file: !325, line: 134, baseType: !652, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !961, file: !325, line: 137, baseType: !655, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !961, file: !325, line: 138, baseType: !780, size: 32, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !961, file: !325, line: 142, baseType: !7, size: 32, offset: 352)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !961, file: !325, line: 144, baseType: !648, size: 32, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !961, file: !325, line: 145, baseType: !648, size: 32, offset: 416)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !961, file: !325, line: 146, baseType: !1191, size: 64, offset: 448)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !325, line: 119, baseType: !711)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !944, file: !325, line: 220, baseType: !947, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !944, file: !325, line: 223, baseType: !652, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !944, file: !325, line: 226, baseType: !1195, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !336, line: 100, size: 1216, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1207, !1208, !1209, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1240, !1248, !1249}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1196, file: !336, line: 102, baseType: !648, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1196, file: !336, line: 105, baseType: !7, size: 32, offset: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1196, file: !336, line: 108, baseType: !943, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1196, file: !336, line: 111, baseType: !943, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1196, file: !336, line: 114, baseType: !1203, size: 64, offset: 192)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !336, line: 41, size: 64, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1203, file: !336, line: 42, baseType: !335, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1203, file: !336, line: 43, baseType: !7, size: 32, offset: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1196, file: !336, line: 117, baseType: !7, size: 32, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1196, file: !336, line: 120, baseType: !7, size: 32, offset: 288)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1196, file: !336, line: 123, baseType: !1210, size: 64, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !336, line: 87, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !336, line: 87, size: 128, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1212, file: !336, line: 87, baseType: !1215, size: 128)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !336, line: 85, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !336, line: 85, size: 128, elements: !1217)
!1217 = !{!1218, !1219, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1216, file: !336, line: 85, baseType: !7, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1216, file: !336, line: 85, baseType: !7, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1216, file: !336, line: 85, baseType: !1221, size: 64, offset: 64)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, size: 64, elements: !754)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !336, line: 84, baseType: !1195)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1196, file: !336, line: 126, baseType: !1195, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1196, file: !336, line: 129, baseType: !1195, size: 64, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1196, file: !336, line: 132, baseType: !652, size: 64, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1196, file: !336, line: 139, baseType: !655, size: 64, offset: 576)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1196, file: !336, line: 143, baseType: !704, size: 128, offset: 640)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1196, file: !336, line: 146, baseType: !704, size: 128, offset: 768)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1196, file: !336, line: 148, baseType: !647, size: 8, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1196, file: !336, line: 149, baseType: !647, size: 8, offset: 904)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1196, file: !336, line: 153, baseType: !344, size: 32, offset: 928)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1196, file: !336, line: 156, baseType: !1233, size: 64, offset: 960)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !336, line: 48, size: 320, elements: !1235)
!1235 = !{!1236, !1237, !1238, !1239}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1234, file: !336, line: 50, baseType: !979, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1234, file: !336, line: 59, baseType: !704, size: 128, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1234, file: !336, line: 64, baseType: !647, size: 8, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1234, file: !336, line: 67, baseType: !1233, size: 64, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1196, file: !336, line: 159, baseType: !1241, size: 64, offset: 1024)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !336, line: 72, size: 256, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1242, file: !336, line: 74, baseType: !960, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1242, file: !336, line: 77, baseType: !1241, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1242, file: !336, line: 78, baseType: !1241, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1242, file: !336, line: 81, baseType: !1241, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1196, file: !336, line: 162, baseType: !647, size: 8, offset: 1088)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1196, file: !336, line: 166, baseType: !655, size: 64, offset: 1152)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !944, file: !325, line: 229, baseType: !1251, size: 128, offset: 256)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1252, size: 128, elements: !898)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !325, line: 229, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !944, file: !325, line: 232, baseType: !943, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !944, file: !325, line: 233, baseType: !943, size: 64, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !944, file: !325, line: 238, baseType: !1257, size: 64, offset: 512)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !325, line: 235, size: 64, elements: !1258)
!1258 = !{!1259, !1265}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1257, file: !325, line: 236, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !325, line: 273, size: 128, elements: !1262)
!1262 = !{!1263, !1264}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1261, file: !325, line: 275, baseType: !969, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1261, file: !325, line: 278, baseType: !969, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1257, file: !325, line: 237, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !325, line: 259, size: 320, elements: !1268)
!1268 = !{!1269, !1270, !1271, !1272, !1273}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1267, file: !325, line: 261, baseType: !830, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1267, file: !325, line: 262, baseType: !830, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1267, file: !325, line: 266, baseType: !830, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1267, file: !325, line: 267, baseType: !830, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1267, file: !325, line: 270, baseType: !648, size: 32, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !944, file: !325, line: 241, baseType: !1191, size: 64, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !944, file: !325, line: 244, baseType: !648, size: 32, offset: 640)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !944, file: !325, line: 247, baseType: !648, size: 32, offset: 672)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !944, file: !325, line: 250, baseType: !648, size: 32, offset: 704)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !944, file: !325, line: 253, baseType: !648, size: 32, offset: 736)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !325, line: 256, baseType: !648, size: 32, offset: 768)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !851, file: !833, line: 179, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !833, line: 150, baseType: !1283)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !833, line: 142, size: 320, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1291, !1292}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1283, file: !833, line: 144, baseType: !655, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1283, file: !833, line: 145, baseType: !830, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1283, file: !833, line: 146, baseType: !830, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1283, file: !833, line: 147, baseType: !1289, size: 32, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1290, line: 31, baseType: !648)
!1290 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1283, file: !833, line: 148, baseType: !7, size: 32, offset: 224)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1283, file: !833, line: 149, baseType: !647, size: 8, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !851, file: !833, line: 180, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !833, line: 162, baseType: !1296)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !833, line: 159, size: 128, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1296, file: !833, line: 160, baseType: !655, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1296, file: !833, line: 161, baseType: !711, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !851, file: !833, line: 181, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !833, line: 181, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !846, file: !833, line: 317, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 64, elements: !754)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !846, file: !833, line: 318, baseType: !1306, size: 320)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !833, line: 188, size: 320, elements: !1307)
!1307 = !{!1308, !1310, !1367}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1306, file: !833, line: 190, baseType: !1309, size: 192)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 192, elements: !729)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1306, file: !833, line: 193, baseType: !1311, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !833, line: 206, size: 320, elements: !1313)
!1313 = !{!1314, !1352, !1353, !1354, !1366}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1312, file: !833, line: 208, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !656, line: 62, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1318, line: 538, size: 256, elements: !1319)
!1318 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1319 = !{!1320, !1324, !1330, !1343}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1317, file: !1318, line: 539, baseType: !1321, size: 32)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1318, line: 482, size: 32, elements: !1322)
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1321, file: !1318, line: 484, baseType: !7, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1317, file: !1318, line: 540, baseType: !1325, size: 192)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1318, line: 488, size: 192, elements: !1326)
!1326 = !{!1327, !1328, !1329}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1325, file: !1318, line: 489, baseType: !1321, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1325, file: !1318, line: 492, baseType: !653, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1325, file: !1318, line: 496, baseType: !655, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1317, file: !1318, line: 541, baseType: !1331, size: 256)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1318, line: 504, size: 256, elements: !1332)
!1332 = !{!1333, !1334, !1341, !1342}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1331, file: !1318, line: 505, baseType: !1321, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1331, file: !1318, line: 509, baseType: !1335, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1318, line: 501, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{null, !1339}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1331, file: !1318, line: 510, baseType: !1339, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1331, file: !1318, line: 513, baseType: !1315, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1317, file: !1318, line: 542, baseType: !1344, size: 128)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1318, line: 530, size: 128, elements: !1345)
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1344, file: !1318, line: 531, baseType: !1321, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1344, file: !1318, line: 534, baseType: !1348, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1318, line: 525, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!647, !655, !653, !709, !709}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1312, file: !833, line: 211, baseType: !7, size: 32, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1312, file: !833, line: 214, baseType: !711, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1312, file: !833, line: 224, baseType: !1355, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !833, line: 202, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !833, line: 202, size: 128, elements: !1358)
!1358 = !{!1359}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1357, file: !833, line: 202, baseType: !1360, size: 128)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !833, line: 200, baseType: !1361)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !833, line: 200, size: 128, elements: !1362)
!1362 = !{!1363, !1364, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1361, file: !833, line: 200, baseType: !7, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1361, file: !833, line: 200, baseType: !7, size: 32, offset: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1361, file: !833, line: 200, baseType: !864, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1312, file: !833, line: 234, baseType: !1355, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1306, file: !833, line: 197, baseType: !711, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !846, file: !833, line: 319, baseType: !718, size: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !846, file: !833, line: 320, baseType: !737, size: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !658, file: !354, line: 3384, baseType: !1371, size: 1472)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !354, line: 3114, size: 1472, elements: !1372)
!1372 = !{!1373, !1394, !1395, !1396, !1397}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1371, file: !354, line: 3115, baseType: !1374, size: 1216)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !354, line: 2984, size: 1216, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1374, file: !354, line: 2985, baseType: !826, size: 960)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1374, file: !354, line: 2986, baseType: !655, size: 64, offset: 960)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1374, file: !354, line: 2987, baseType: !655, size: 64, offset: 1024)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1374, file: !354, line: 2988, baseType: !655, size: 64, offset: 1088)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1374, file: !354, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1374, file: !354, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1374, file: !354, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1374, file: !354, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1374, file: !354, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1374, file: !354, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1374, file: !354, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1374, file: !354, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1374, file: !354, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1374, file: !354, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1374, file: !354, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1374, file: !354, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1374, file: !354, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1374, file: !354, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1371, file: !354, line: 3117, baseType: !655, size: 64, offset: 1216)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1371, file: !354, line: 3119, baseType: !655, size: 64, offset: 1280)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1371, file: !354, line: 3121, baseType: !655, size: 64, offset: 1344)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1371, file: !354, line: 3123, baseType: !655, size: 64, offset: 1408)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !658, file: !354, line: 3385, baseType: !1399, size: 1088)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !354, line: 2874, size: 1088, elements: !1400)
!1400 = !{!1401, !1402, !1403}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1399, file: !354, line: 2875, baseType: !826, size: 960)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1399, file: !354, line: 2876, baseType: !830, size: 64, offset: 960)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1399, file: !354, line: 2877, baseType: !1404, size: 64, offset: 1024)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1406, line: 172, size: 128, elements: !1407)
!1406 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1407 = !{!1408, !1409, !1410, !1411, !1412, !1413, !1414}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1405, file: !1406, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1405, file: !1406, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1405, file: !1406, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1405, file: !1406, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1405, file: !1406, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1405, file: !1406, line: 195, baseType: !7, size: 32, offset: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1405, file: !1406, line: 199, baseType: !655, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !658, file: !354, line: 3386, baseType: !1374, size: 1216)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !658, file: !354, line: 3387, baseType: !1417, size: 1280)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !354, line: 3093, size: 1280, elements: !1418)
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1417, file: !354, line: 3094, baseType: !1374, size: 1216)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1417, file: !354, line: 3095, baseType: !1404, size: 64, offset: 1216)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !658, file: !354, line: 3388, baseType: !1422, size: 1216)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !354, line: 2824, size: 1216, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1427, !1428, !1429}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1422, file: !354, line: 2825, baseType: !788, size: 896)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1422, file: !354, line: 2827, baseType: !655, size: 64, offset: 896)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1422, file: !354, line: 2828, baseType: !655, size: 64, offset: 960)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1422, file: !354, line: 2829, baseType: !655, size: 64, offset: 1024)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1422, file: !354, line: 2830, baseType: !655, size: 64, offset: 1088)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1422, file: !354, line: 2831, baseType: !655, size: 64, offset: 1152)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !658, file: !354, line: 3389, baseType: !1431, size: 1024)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !354, line: 2850, size: 1024, elements: !1432)
!1432 = !{!1433, !1434, !1435}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1431, file: !354, line: 2851, baseType: !826, size: 960)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1431, file: !354, line: 2852, baseType: !648, size: 32, offset: 960)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1431, file: !354, line: 2853, baseType: !648, size: 32, offset: 992)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !658, file: !354, line: 3390, baseType: !1437, size: 1024)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !354, line: 2857, size: 1024, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1437, file: !354, line: 2858, baseType: !826, size: 960)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1437, file: !354, line: 2859, baseType: !1404, size: 64, offset: 960)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !658, file: !354, line: 3391, baseType: !1442, size: 960)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !354, line: 2862, size: 960, elements: !1443)
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1442, file: !354, line: 2863, baseType: !826, size: 960)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !658, file: !354, line: 3392, baseType: !1446, size: 1472)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !354, line: 3304, size: 1472, elements: !1447)
!1447 = !{!1448}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1446, file: !354, line: 3305, baseType: !1371, size: 1472)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !658, file: !354, line: 3393, baseType: !1450, size: 1792)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !354, line: 3248, size: 1792, elements: !1451)
!1451 = !{!1452, !1453, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1450, file: !354, line: 3249, baseType: !1371, size: 1472)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1450, file: !354, line: 3251, baseType: !1454, size: 64, offset: 1472)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1456, line: 463, size: 1152, elements: !1457)
!1456 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1457 = !{!1458, !1617, !1648, !1649, !1704, !1712, !1713, !1714, !1715, !1716, !1717, !1741, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1455, file: !1456, line: 464, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !318, line: 194, size: 384, elements: !1461)
!1461 = !{!1462, !1511, !1524, !1538, !1586, !1598}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1460, file: !318, line: 197, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !318, line: 182, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !318, line: 116, size: 704, elements: !1466)
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1499, !1508, !1509, !1510}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1465, file: !318, line: 119, baseType: !1464, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1465, file: !318, line: 122, baseType: !1464, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1465, file: !318, line: 123, baseType: !1464, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1465, file: !318, line: 126, baseType: !648, size: 32, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1465, file: !318, line: 129, baseType: !317, size: 32, offset: 224)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1465, file: !318, line: 165, baseType: !1473, size: 192, offset: 256)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !318, line: 132, size: 192, elements: !1474)
!1474 = !{!1475, !1488, !1494}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1473, file: !318, line: 137, baseType: !1476, size: 128)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !318, line: 133, size: 128, elements: !1477)
!1477 = !{!1478, !1487}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1476, file: !318, line: 135, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !318, line: 93, size: 320, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1486}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1480, file: !318, line: 96, baseType: !1479, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1480, file: !318, line: 97, baseType: !1479, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1480, file: !318, line: 101, baseType: !655, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1480, file: !318, line: 106, baseType: !655, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1480, file: !318, line: 111, baseType: !655, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1476, file: !318, line: 136, baseType: !1479, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1473, file: !318, line: 151, baseType: !1489, size: 192)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !318, line: 139, size: 192, elements: !1490)
!1490 = !{!1491, !1492, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1489, file: !318, line: 141, baseType: !655, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1489, file: !318, line: 145, baseType: !655, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1489, file: !318, line: 150, baseType: !648, size: 32, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1473, file: !318, line: 164, baseType: !1495, size: 128)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !318, line: 153, size: 128, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1495, file: !318, line: 161, baseType: !655, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1495, file: !318, line: 163, baseType: !780, size: 32, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1465, file: !318, line: 168, baseType: !1500, size: 64, offset: 448)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !318, line: 67, size: 320, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1507}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1501, file: !318, line: 70, baseType: !1500, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1501, file: !318, line: 73, baseType: !1464, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1501, file: !318, line: 78, baseType: !655, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1501, file: !318, line: 85, baseType: !830, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1501, file: !318, line: 88, baseType: !648, size: 32, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1465, file: !318, line: 173, baseType: !830, size: 64, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1465, file: !318, line: 173, baseType: !830, size: 64, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1465, file: !318, line: 177, baseType: !647, size: 8, offset: 640)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1460, file: !318, line: 200, baseType: !1512, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !318, line: 185, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !318, line: 185, size: 128, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1514, file: !318, line: 185, baseType: !1517, size: 128)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !318, line: 184, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !318, line: 184, size: 128, elements: !1519)
!1519 = !{!1520, !1521, !1522}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1518, file: !318, line: 184, baseType: !7, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1518, file: !318, line: 184, baseType: !7, size: 32, offset: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1518, file: !318, line: 184, baseType: !1523, size: 64, offset: 64)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1463, size: 64, elements: !754)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1460, file: !318, line: 203, baseType: !1525, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, baseType: !1527)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, size: 128, elements: !1528)
!1528 = !{!1529}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1527, file: !318, line: 189, baseType: !1530, size: 128)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !318, line: 188, baseType: !1531)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !318, line: 188, size: 128, elements: !1532)
!1532 = !{!1533, !1534, !1535}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1531, file: !318, line: 188, baseType: !7, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1531, file: !318, line: 188, baseType: !7, size: 32, offset: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1531, file: !318, line: 188, baseType: !1536, size: 64, offset: 64)
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1537, size: 64, elements: !754)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !318, line: 180, baseType: !1500)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1460, file: !318, line: 207, baseType: !1539, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1540, line: 144, baseType: !1541)
!1540 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1540, line: 100, size: 896, elements: !1543)
!1543 = !{!1544, !1550, !1555, !1560, !1562, !1563, !1564, !1565, !1566, !1567, !1572, !1574, !1575, !1580, !1585}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1542, file: !1540, line: 102, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1540, line: 52, baseType: !1546)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!1549, !1339}
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1540, line: 47, baseType: !7)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1542, file: !1540, line: 105, baseType: !1551, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1540, line: 59, baseType: !1552)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!648, !1339, !1339}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1542, file: !1540, line: 108, baseType: !1556, size: 64, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1540, line: 63, baseType: !1557)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !652}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1542, file: !1540, line: 111, baseType: !1561, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1542, file: !1540, line: 114, baseType: !1125, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1542, file: !1540, line: 117, baseType: !1125, size: 64, offset: 320)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1542, file: !1540, line: 120, baseType: !1125, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1542, file: !1540, line: 124, baseType: !7, size: 32, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1542, file: !1540, line: 128, baseType: !7, size: 32, offset: 480)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1542, file: !1540, line: 131, baseType: !1568, size: 64, offset: 512)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1540, line: 75, baseType: !1569)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!652, !1125, !1125}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1542, file: !1540, line: 132, baseType: !1573, size: 64, offset: 576)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1540, line: 78, baseType: !1557)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1542, file: !1540, line: 135, baseType: !652, size: 64, offset: 640)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1542, file: !1540, line: 136, baseType: !1576, size: 64, offset: 704)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1540, line: 82, baseType: !1577)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!652, !652, !1125, !1125}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1542, file: !1540, line: 137, baseType: !1581, size: 64, offset: 768)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1540, line: 83, baseType: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !652, !652}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1542, file: !1540, line: 141, baseType: !7, size: 32, offset: 832)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1460, file: !318, line: 211, baseType: !1587, size: 64, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !354, line: 183, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !354, line: 183, size: 128, elements: !1590)
!1590 = !{!1591}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1589, file: !354, line: 183, baseType: !1592, size: 128)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !354, line: 182, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !354, line: 182, size: 128, elements: !1594)
!1594 = !{!1595, !1596, !1597}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1593, file: !354, line: 182, baseType: !7, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1593, file: !354, line: 182, baseType: !7, size: 32, offset: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1593, file: !354, line: 182, baseType: !1033, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1460, file: !318, line: 220, baseType: !1599, size: 64, offset: 320)
!1599 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !318, line: 217, size: 64, elements: !1600)
!1600 = !{!1601, !1602}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1599, file: !318, line: 218, baseType: !1587, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1599, file: !318, line: 219, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1605, line: 29, baseType: !1606)
!1605 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1605, line: 29, size: 96, elements: !1607)
!1607 = !{!1608}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1606, file: !1605, line: 29, baseType: !1609, size: 96)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1605, line: 27, baseType: !1610)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1605, line: 27, size: 96, elements: !1611)
!1611 = !{!1612, !1613, !1614}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1610, file: !1605, line: 27, baseType: !7, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1610, file: !1605, line: 27, baseType: !7, size: 32, offset: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1610, file: !1605, line: 27, baseType: !1615, size: 8, offset: 64)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1616, size: 8, elements: !754)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1605, line: 26, baseType: !647)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1455, file: !1456, line: 467, baseType: !1618, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !325, line: 374, size: 640, elements: !1620)
!1620 = !{!1621, !1623, !1624, !1637, !1638, !1639, !1640, !1641, !1642, !1644, !1646, !1647}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1619, file: !325, line: 377, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !656, line: 111, baseType: !943)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1619, file: !325, line: 378, baseType: !1622, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1619, file: !325, line: 381, baseType: !1625, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !325, line: 282, baseType: !1627)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !325, line: 282, size: 128, elements: !1628)
!1628 = !{!1629}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1627, file: !325, line: 282, baseType: !1630, size: 128)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !325, line: 281, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !325, line: 281, size: 128, elements: !1632)
!1632 = !{!1633, !1634, !1635}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1631, file: !325, line: 281, baseType: !7, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1631, file: !325, line: 281, baseType: !7, size: 32, offset: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1631, file: !325, line: 281, baseType: !1636, size: 64, offset: 64)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1622, size: 64, elements: !754)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1619, file: !325, line: 384, baseType: !648, size: 32, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1619, file: !325, line: 387, baseType: !648, size: 32, offset: 224)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1619, file: !325, line: 390, baseType: !648, size: 32, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1619, file: !325, line: 394, baseType: !1625, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1619, file: !325, line: 396, baseType: !324, size: 32, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1619, file: !325, line: 399, baseType: !1643, size: 64, offset: 416)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !898)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1619, file: !325, line: 402, baseType: !1645, size: 64, offset: 480)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !898)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1619, file: !325, line: 406, baseType: !648, size: 32, offset: 544)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1619, file: !325, line: 409, baseType: !648, size: 32, offset: 576)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1455, file: !1456, line: 470, baseType: !970, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1455, file: !1456, line: 473, baseType: !1650, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1406, line: 39, size: 1152, elements: !1652)
!1652 = !{!1653, !1654, !1667, !1668, !1669, !1681, !1682, !1686, !1687, !1688, !1689, !1690}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1651, file: !1406, line: 41, baseType: !1539, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1651, file: !1406, line: 48, baseType: !1655, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !581, line: 35, baseType: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !581, line: 35, size: 128, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1657, file: !581, line: 35, baseType: !1660, size: 128)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !581, line: 33, baseType: !1661)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !581, line: 33, size: 128, elements: !1662)
!1662 = !{!1663, !1664, !1665}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1661, file: !581, line: 33, baseType: !7, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1661, file: !581, line: 33, baseType: !7, size: 32, offset: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1661, file: !581, line: 33, baseType: !1666, size: 64, offset: 64)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 64, elements: !754)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1651, file: !1406, line: 51, baseType: !1587, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1651, file: !1406, line: 54, baseType: !655, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1651, file: !1406, line: 57, baseType: !1670, size: 128, offset: 256)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1671, line: 31, size: 128, elements: !1672)
!1671 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1670, file: !1671, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1670, file: !1671, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1670, file: !1671, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1670, file: !1671, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1670, file: !1671, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1670, file: !1671, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1670, file: !1671, line: 56, baseType: !1680, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !656, line: 47, baseType: !882)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1651, file: !1406, line: 60, baseType: !1670, size: 128, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1651, file: !1406, line: 64, baseType: !1683, size: 64, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1685, line: 33, flags: DIFlagFwdDecl)
!1685 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1651, file: !1406, line: 67, baseType: !655, size: 64, offset: 576)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1651, file: !1406, line: 73, baseType: !1539, size: 64, offset: 640)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1651, file: !1406, line: 77, baseType: !1680, size: 64, offset: 704)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1651, file: !1406, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1651, file: !1406, line: 82, baseType: !1691, size: 320, offset: 832)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1010, line: 62, size: 320, elements: !1692)
!1692 = !{!1693, !1699, !1700, !1701, !1702, !1703}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1691, file: !1010, line: 63, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1010, line: 56, size: 128, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1695, file: !1010, line: 57, baseType: !1694, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1695, file: !1010, line: 58, baseType: !753, size: 8, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1691, file: !1010, line: 64, baseType: !7, size: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1691, file: !1010, line: 66, baseType: !7, size: 32, offset: 96)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1691, file: !1010, line: 68, baseType: !647, size: 8, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1691, file: !1010, line: 70, baseType: !1008, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1691, file: !1010, line: 71, baseType: !1016, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1455, file: !1456, line: 476, baseType: !1705, size: 64, offset: 256)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !336, line: 187, size: 256, elements: !1707)
!1707 = !{!1708, !1709, !1710, !1711}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1706, file: !336, line: 189, baseType: !648, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1706, file: !336, line: 192, baseType: !1210, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1706, file: !336, line: 197, baseType: !1539, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1706, file: !336, line: 200, baseType: !1195, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1455, file: !1456, line: 479, baseType: !1539, size: 64, offset: 320)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1455, file: !1456, line: 484, baseType: !655, size: 64, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1455, file: !1456, line: 488, baseType: !655, size: 64, offset: 448)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1455, file: !1456, line: 493, baseType: !655, size: 64, offset: 512)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1455, file: !1456, line: 496, baseType: !655, size: 64, offset: 576)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1455, file: !1456, line: 501, baseType: !1718, size: 64, offset: 640)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !349, line: 2355, size: 576, elements: !1720)
!1720 = !{!1721, !1724, !1725, !1726, !1727, !1729, !1730, !1735, !1736, !1737, !1738, !1739, !1740}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1719, file: !349, line: 2356, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !349, line: 2356, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1719, file: !349, line: 2357, baseType: !653, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1719, file: !349, line: 2358, baseType: !648, size: 32, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1719, file: !349, line: 2359, baseType: !648, size: 32, offset: 160)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1719, file: !349, line: 2360, baseType: !1728, size: 128, offset: 192)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 128, elements: !922)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1719, file: !349, line: 2364, baseType: !648, size: 32, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1719, file: !349, line: 2367, baseType: !1731, size: 128, offset: 384)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !349, line: 2349, size: 128, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1731, file: !349, line: 2351, baseType: !830, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1731, file: !349, line: 2352, baseType: !711, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1719, file: !349, line: 2371, baseType: !348, size: 32, offset: 512)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1719, file: !349, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1719, file: !349, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1719, file: !349, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1719, file: !349, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1719, file: !349, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1455, file: !1456, line: 504, baseType: !1742, size: 64, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1456, line: 504, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1455, file: !1456, line: 507, baseType: !1539, size: 64, offset: 768)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1455, file: !1456, line: 510, baseType: !648, size: 32, offset: 832)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1455, file: !1456, line: 513, baseType: !648, size: 32, offset: 864)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1455, file: !1456, line: 516, baseType: !780, size: 32, offset: 896)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1455, file: !1456, line: 519, baseType: !780, size: 32, offset: 928)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1455, file: !1456, line: 522, baseType: !7, size: 32, offset: 960)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1455, file: !1456, line: 523, baseType: !7, size: 32, offset: 992)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1455, file: !1456, line: 528, baseType: !653, size: 64, offset: 1024)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1455, file: !1456, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1455, file: !1456, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1455, file: !1456, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1455, file: !1456, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1455, file: !1456, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1455, file: !1456, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1455, file: !1456, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1455, file: !1456, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1455, file: !1456, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1455, file: !1456, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1455, file: !1456, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1455, file: !1456, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1455, file: !1456, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1455, file: !1456, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1455, file: !1456, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1455, file: !1456, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1450, file: !354, line: 3254, baseType: !655, size: 64, offset: 1536)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1450, file: !354, line: 3257, baseType: !655, size: 64, offset: 1600)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1450, file: !354, line: 3258, baseType: !655, size: 64, offset: 1664)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1450, file: !354, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1450, file: !354, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1450, file: !354, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1450, file: !354, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1450, file: !354, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1450, file: !354, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1450, file: !354, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1450, file: !354, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1450, file: !354, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1450, file: !354, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1450, file: !354, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1450, file: !354, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1450, file: !354, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1450, file: !354, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1450, file: !354, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1450, file: !354, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1450, file: !354, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1450, file: !354, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !354, line: 3394, baseType: !1790, size: 1344)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !354, line: 2279, size: 1344, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1790, file: !354, line: 2280, baseType: !694, size: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1790, file: !354, line: 2281, baseType: !655, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1790, file: !354, line: 2282, baseType: !655, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1790, file: !354, line: 2283, baseType: !655, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1790, file: !354, line: 2284, baseType: !655, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1790, file: !354, line: 2285, baseType: !7, size: 32, offset: 448)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1790, file: !354, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1790, file: !354, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1790, file: !354, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1790, file: !354, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1790, file: !354, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1790, file: !354, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1790, file: !354, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1790, file: !354, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1790, file: !354, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1790, file: !354, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1790, file: !354, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1790, file: !354, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1790, file: !354, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1790, file: !354, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1790, file: !354, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1790, file: !354, line: 2305, baseType: !7, size: 32, offset: 512)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1790, file: !354, line: 2306, baseType: !1289, size: 32, offset: 544)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1790, file: !354, line: 2307, baseType: !655, size: 64, offset: 576)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1790, file: !354, line: 2308, baseType: !655, size: 64, offset: 640)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1790, file: !354, line: 2314, baseType: !1818, size: 64, offset: 704)
!1818 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !354, line: 2309, size: 64, elements: !1819)
!1819 = !{!1820, !1821, !1822}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1818, file: !354, line: 2310, baseType: !648, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1818, file: !354, line: 2311, baseType: !653, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1818, file: !354, line: 2312, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !354, line: 2277, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1790, file: !354, line: 2315, baseType: !655, size: 64, offset: 768)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1790, file: !354, line: 2316, baseType: !655, size: 64, offset: 832)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1790, file: !354, line: 2317, baseType: !655, size: 64, offset: 896)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1790, file: !354, line: 2318, baseType: !655, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1790, file: !354, line: 2319, baseType: !655, size: 64, offset: 1024)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1790, file: !354, line: 2320, baseType: !655, size: 64, offset: 1088)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1790, file: !354, line: 2321, baseType: !655, size: 64, offset: 1152)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1790, file: !354, line: 2322, baseType: !655, size: 64, offset: 1216)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1790, file: !354, line: 2324, baseType: !1834, size: 64, offset: 1280)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !354, line: 2324, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !658, file: !354, line: 3395, baseType: !1837, size: 320)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !354, line: 1469, size: 320, elements: !1838)
!1838 = !{!1839, !1840, !1841}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1837, file: !354, line: 1470, baseType: !694, size: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1837, file: !354, line: 1471, baseType: !655, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1837, file: !354, line: 1472, baseType: !655, size: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !658, file: !354, line: 3396, baseType: !1843, size: 320)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !354, line: 1482, size: 320, elements: !1844)
!1844 = !{!1845, !1846, !1847}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1843, file: !354, line: 1483, baseType: !694, size: 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1843, file: !354, line: 1484, baseType: !648, size: 32, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1843, file: !354, line: 1485, baseType: !1033, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !658, file: !354, line: 3397, baseType: !1849, size: 384)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !354, line: 1829, size: 384, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1849, file: !354, line: 1830, baseType: !694, size: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1849, file: !354, line: 1831, baseType: !780, size: 32, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1849, file: !354, line: 1832, baseType: !655, size: 64, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1849, file: !354, line: 1835, baseType: !1033, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !658, file: !354, line: 3398, baseType: !1856, size: 704)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !354, line: 1898, size: 704, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1867}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1856, file: !354, line: 1899, baseType: !694, size: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1856, file: !354, line: 1902, baseType: !655, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1856, file: !354, line: 1905, baseType: !979, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1856, file: !354, line: 1908, baseType: !7, size: 32, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1856, file: !354, line: 1911, baseType: !1863, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1406, line: 117, size: 128, elements: !1865)
!1865 = !{!1866}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1864, file: !1406, line: 120, baseType: !1670, size: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1856, file: !354, line: 1914, baseType: !1021, size: 256, offset: 448)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !658, file: !354, line: 3399, baseType: !1869, size: 704)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !354, line: 2008, size: 704, elements: !1870)
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1869, file: !354, line: 2009, baseType: !694, size: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1869, file: !354, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1869, file: !354, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1869, file: !354, line: 2014, baseType: !780, size: 32, offset: 224)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1869, file: !354, line: 2016, baseType: !655, size: 64, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1869, file: !354, line: 2017, baseType: !1587, size: 64, offset: 320)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1869, file: !354, line: 2019, baseType: !655, size: 64, offset: 384)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1869, file: !354, line: 2020, baseType: !655, size: 64, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1869, file: !354, line: 2021, baseType: !655, size: 64, offset: 512)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1869, file: !354, line: 2022, baseType: !655, size: 64, offset: 576)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1869, file: !354, line: 2023, baseType: !655, size: 64, offset: 640)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !658, file: !354, line: 3400, baseType: !1883, size: 832)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !354, line: 2430, size: 832, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1883, file: !354, line: 2431, baseType: !694, size: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1883, file: !354, line: 2433, baseType: !655, size: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1883, file: !354, line: 2434, baseType: !655, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1883, file: !354, line: 2435, baseType: !655, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1883, file: !354, line: 2436, baseType: !655, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1883, file: !354, line: 2437, baseType: !1587, size: 64, offset: 448)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1883, file: !354, line: 2438, baseType: !655, size: 64, offset: 512)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1883, file: !354, line: 2440, baseType: !655, size: 64, offset: 576)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1883, file: !354, line: 2441, baseType: !655, size: 64, offset: 640)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1883, file: !354, line: 2443, baseType: !1895, size: 128, offset: 704)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !354, line: 182, baseType: !1896)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !354, line: 182, size: 128, elements: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1896, file: !354, line: 182, baseType: !1592, size: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !658, file: !354, line: 3401, baseType: !1900, size: 320)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !354, line: 3327, size: 320, elements: !1901)
!1901 = !{!1902, !1903, !1910}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1900, file: !354, line: 3329, baseType: !694, size: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1900, file: !354, line: 3330, baseType: !1904, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !354, line: 3320, size: 192, elements: !1906)
!1906 = !{!1907, !1908, !1909}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1905, file: !354, line: 3322, baseType: !1904, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1905, file: !354, line: 3323, baseType: !1904, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1905, file: !354, line: 3324, baseType: !655, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1900, file: !354, line: 3331, baseType: !1904, size: 64, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !658, file: !354, line: 3402, baseType: !1912, size: 256)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !354, line: 1540, size: 256, elements: !1913)
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1912, file: !354, line: 1541, baseType: !694, size: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1912, file: !354, line: 1542, baseType: !1916, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !354, line: 1538, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !354, line: 1538, size: 192, elements: !1919)
!1919 = !{!1920}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1918, file: !354, line: 1538, baseType: !1921, size: 192)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !354, line: 1537, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !354, line: 1537, size: 192, elements: !1923)
!1923 = !{!1924, !1925, !1926}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1922, file: !354, line: 1537, baseType: !7, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1922, file: !354, line: 1537, baseType: !7, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1922, file: !354, line: 1537, baseType: !1927, size: 128, offset: 64)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1928, size: 128, elements: !754)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !354, line: 1535, baseType: !1929)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !354, line: 1532, size: 128, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1929, file: !354, line: 1533, baseType: !655, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1929, file: !354, line: 1534, baseType: !655, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !658, file: !354, line: 3403, baseType: !1934, size: 512)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !354, line: 1938, size: 512, elements: !1935)
!1935 = !{!1936, !1937, !1938, !1939, !1945, !1946, !1947}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1934, file: !354, line: 1939, baseType: !694, size: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1934, file: !354, line: 1940, baseType: !780, size: 32, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1934, file: !354, line: 1941, baseType: !353, size: 32, offset: 224)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1934, file: !354, line: 1946, baseType: !1940, size: 32, offset: 256)
!1940 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !354, line: 1942, size: 32, elements: !1941)
!1941 = !{!1942, !1943, !1944}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1940, file: !354, line: 1943, baseType: !372, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1940, file: !354, line: 1944, baseType: !379, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1940, file: !354, line: 1945, baseType: !386, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1934, file: !354, line: 1950, baseType: !969, size: 64, offset: 320)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1934, file: !354, line: 1951, baseType: !969, size: 64, offset: 384)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1934, file: !354, line: 1953, baseType: !1033, size: 64, offset: 448)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !658, file: !354, line: 3404, baseType: !1949, size: 1664)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !354, line: 3337, size: 1664, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1949, file: !354, line: 3338, baseType: !694, size: 192)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1949, file: !354, line: 3341, baseType: !1953, size: 1472, offset: 192)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1954, line: 410, size: 1472, elements: !1955)
!1954 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1953, file: !1954, line: 412, baseType: !648, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1953, file: !1954, line: 413, baseType: !648, size: 32, offset: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1953, file: !1954, line: 414, baseType: !648, size: 32, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1953, file: !1954, line: 415, baseType: !648, size: 32, offset: 96)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1953, file: !1954, line: 416, baseType: !648, size: 32, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1953, file: !1954, line: 417, baseType: !648, size: 32, offset: 160)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1953, file: !1954, line: 418, baseType: !647, size: 8, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1953, file: !1954, line: 419, baseType: !647, size: 8, offset: 200)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1953, file: !1954, line: 420, baseType: !1965, size: 8, offset: 208)
!1965 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1953, file: !1954, line: 421, baseType: !1965, size: 8, offset: 216)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1953, file: !1954, line: 422, baseType: !1965, size: 8, offset: 224)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1953, file: !1954, line: 423, baseType: !1965, size: 8, offset: 232)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1953, file: !1954, line: 424, baseType: !1965, size: 8, offset: 240)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1953, file: !1954, line: 425, baseType: !1965, size: 8, offset: 248)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1953, file: !1954, line: 426, baseType: !1965, size: 8, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1953, file: !1954, line: 427, baseType: !1965, size: 8, offset: 264)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1953, file: !1954, line: 428, baseType: !1965, size: 8, offset: 272)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1953, file: !1954, line: 429, baseType: !1965, size: 8, offset: 280)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1953, file: !1954, line: 430, baseType: !1965, size: 8, offset: 288)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1953, file: !1954, line: 431, baseType: !1965, size: 8, offset: 296)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1953, file: !1954, line: 432, baseType: !1965, size: 8, offset: 304)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1953, file: !1954, line: 433, baseType: !1965, size: 8, offset: 312)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1953, file: !1954, line: 434, baseType: !1965, size: 8, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1953, file: !1954, line: 435, baseType: !1965, size: 8, offset: 328)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1953, file: !1954, line: 436, baseType: !1965, size: 8, offset: 336)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1953, file: !1954, line: 437, baseType: !1965, size: 8, offset: 344)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1953, file: !1954, line: 438, baseType: !1965, size: 8, offset: 352)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1953, file: !1954, line: 439, baseType: !1965, size: 8, offset: 360)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1953, file: !1954, line: 440, baseType: !1965, size: 8, offset: 368)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1953, file: !1954, line: 441, baseType: !1965, size: 8, offset: 376)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1953, file: !1954, line: 442, baseType: !1965, size: 8, offset: 384)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1953, file: !1954, line: 443, baseType: !1965, size: 8, offset: 392)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1953, file: !1954, line: 444, baseType: !1965, size: 8, offset: 400)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1953, file: !1954, line: 445, baseType: !1965, size: 8, offset: 408)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1953, file: !1954, line: 446, baseType: !1965, size: 8, offset: 416)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1953, file: !1954, line: 447, baseType: !1965, size: 8, offset: 424)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1953, file: !1954, line: 448, baseType: !1965, size: 8, offset: 432)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1953, file: !1954, line: 449, baseType: !1965, size: 8, offset: 440)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1953, file: !1954, line: 450, baseType: !1965, size: 8, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1953, file: !1954, line: 451, baseType: !1965, size: 8, offset: 456)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1953, file: !1954, line: 452, baseType: !1965, size: 8, offset: 464)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1953, file: !1954, line: 453, baseType: !1965, size: 8, offset: 472)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1953, file: !1954, line: 454, baseType: !1965, size: 8, offset: 480)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1953, file: !1954, line: 455, baseType: !1965, size: 8, offset: 488)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1953, file: !1954, line: 456, baseType: !1965, size: 8, offset: 496)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1953, file: !1954, line: 457, baseType: !1965, size: 8, offset: 504)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1953, file: !1954, line: 458, baseType: !1965, size: 8, offset: 512)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1953, file: !1954, line: 459, baseType: !1965, size: 8, offset: 520)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1953, file: !1954, line: 460, baseType: !1965, size: 8, offset: 528)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1953, file: !1954, line: 461, baseType: !1965, size: 8, offset: 536)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1953, file: !1954, line: 462, baseType: !1965, size: 8, offset: 544)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1953, file: !1954, line: 463, baseType: !1965, size: 8, offset: 552)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1953, file: !1954, line: 464, baseType: !1965, size: 8, offset: 560)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1953, file: !1954, line: 465, baseType: !1965, size: 8, offset: 568)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1953, file: !1954, line: 466, baseType: !1965, size: 8, offset: 576)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1953, file: !1954, line: 467, baseType: !1965, size: 8, offset: 584)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1953, file: !1954, line: 468, baseType: !1965, size: 8, offset: 592)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1953, file: !1954, line: 469, baseType: !1965, size: 8, offset: 600)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1953, file: !1954, line: 470, baseType: !1965, size: 8, offset: 608)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1953, file: !1954, line: 471, baseType: !1965, size: 8, offset: 616)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1953, file: !1954, line: 472, baseType: !1965, size: 8, offset: 624)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1953, file: !1954, line: 473, baseType: !1965, size: 8, offset: 632)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1953, file: !1954, line: 474, baseType: !1965, size: 8, offset: 640)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1953, file: !1954, line: 475, baseType: !1965, size: 8, offset: 648)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1953, file: !1954, line: 476, baseType: !1965, size: 8, offset: 656)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1953, file: !1954, line: 477, baseType: !1965, size: 8, offset: 664)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1953, file: !1954, line: 478, baseType: !1965, size: 8, offset: 672)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1953, file: !1954, line: 479, baseType: !1965, size: 8, offset: 680)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1953, file: !1954, line: 480, baseType: !1965, size: 8, offset: 688)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1953, file: !1954, line: 481, baseType: !1965, size: 8, offset: 696)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1953, file: !1954, line: 482, baseType: !1965, size: 8, offset: 704)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1953, file: !1954, line: 483, baseType: !1965, size: 8, offset: 712)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1953, file: !1954, line: 484, baseType: !1965, size: 8, offset: 720)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1953, file: !1954, line: 485, baseType: !1965, size: 8, offset: 728)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1953, file: !1954, line: 486, baseType: !1965, size: 8, offset: 736)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1953, file: !1954, line: 487, baseType: !1965, size: 8, offset: 744)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1953, file: !1954, line: 488, baseType: !1965, size: 8, offset: 752)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1953, file: !1954, line: 489, baseType: !1965, size: 8, offset: 760)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1953, file: !1954, line: 490, baseType: !1965, size: 8, offset: 768)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1953, file: !1954, line: 491, baseType: !1965, size: 8, offset: 776)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1953, file: !1954, line: 492, baseType: !1965, size: 8, offset: 784)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1953, file: !1954, line: 493, baseType: !1965, size: 8, offset: 792)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1953, file: !1954, line: 494, baseType: !1965, size: 8, offset: 800)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1953, file: !1954, line: 495, baseType: !1965, size: 8, offset: 808)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1953, file: !1954, line: 496, baseType: !1965, size: 8, offset: 816)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1953, file: !1954, line: 497, baseType: !1965, size: 8, offset: 824)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1953, file: !1954, line: 498, baseType: !1965, size: 8, offset: 832)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1953, file: !1954, line: 499, baseType: !1965, size: 8, offset: 840)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1953, file: !1954, line: 500, baseType: !1965, size: 8, offset: 848)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1953, file: !1954, line: 501, baseType: !1965, size: 8, offset: 856)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1953, file: !1954, line: 502, baseType: !1965, size: 8, offset: 864)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1953, file: !1954, line: 503, baseType: !1965, size: 8, offset: 872)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1953, file: !1954, line: 504, baseType: !1965, size: 8, offset: 880)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1953, file: !1954, line: 505, baseType: !1965, size: 8, offset: 888)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1953, file: !1954, line: 506, baseType: !1965, size: 8, offset: 896)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1953, file: !1954, line: 507, baseType: !1965, size: 8, offset: 904)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1953, file: !1954, line: 508, baseType: !1965, size: 8, offset: 912)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1953, file: !1954, line: 509, baseType: !1965, size: 8, offset: 920)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1953, file: !1954, line: 510, baseType: !1965, size: 8, offset: 928)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1953, file: !1954, line: 511, baseType: !1965, size: 8, offset: 936)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1953, file: !1954, line: 512, baseType: !1965, size: 8, offset: 944)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1953, file: !1954, line: 513, baseType: !1965, size: 8, offset: 952)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1953, file: !1954, line: 514, baseType: !1965, size: 8, offset: 960)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1953, file: !1954, line: 515, baseType: !1965, size: 8, offset: 968)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1953, file: !1954, line: 516, baseType: !1965, size: 8, offset: 976)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1953, file: !1954, line: 517, baseType: !1965, size: 8, offset: 984)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1953, file: !1954, line: 518, baseType: !1965, size: 8, offset: 992)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1953, file: !1954, line: 519, baseType: !1965, size: 8, offset: 1000)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1953, file: !1954, line: 520, baseType: !1965, size: 8, offset: 1008)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1953, file: !1954, line: 521, baseType: !1965, size: 8, offset: 1016)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1953, file: !1954, line: 522, baseType: !1965, size: 8, offset: 1024)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1953, file: !1954, line: 523, baseType: !1965, size: 8, offset: 1032)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1953, file: !1954, line: 524, baseType: !1965, size: 8, offset: 1040)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1953, file: !1954, line: 525, baseType: !1965, size: 8, offset: 1048)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1953, file: !1954, line: 526, baseType: !1965, size: 8, offset: 1056)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1953, file: !1954, line: 527, baseType: !1965, size: 8, offset: 1064)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1953, file: !1954, line: 528, baseType: !1965, size: 8, offset: 1072)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1953, file: !1954, line: 529, baseType: !1965, size: 8, offset: 1080)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1953, file: !1954, line: 530, baseType: !1965, size: 8, offset: 1088)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1953, file: !1954, line: 531, baseType: !1965, size: 8, offset: 1096)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1953, file: !1954, line: 532, baseType: !1965, size: 8, offset: 1104)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1953, file: !1954, line: 533, baseType: !1965, size: 8, offset: 1112)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1953, file: !1954, line: 534, baseType: !1965, size: 8, offset: 1120)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1953, file: !1954, line: 535, baseType: !1965, size: 8, offset: 1128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1953, file: !1954, line: 536, baseType: !1965, size: 8, offset: 1136)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1953, file: !1954, line: 537, baseType: !1965, size: 8, offset: 1144)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1953, file: !1954, line: 538, baseType: !1965, size: 8, offset: 1152)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1953, file: !1954, line: 539, baseType: !1965, size: 8, offset: 1160)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1953, file: !1954, line: 540, baseType: !1965, size: 8, offset: 1168)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1953, file: !1954, line: 541, baseType: !1965, size: 8, offset: 1176)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1953, file: !1954, line: 542, baseType: !1965, size: 8, offset: 1184)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1953, file: !1954, line: 543, baseType: !1965, size: 8, offset: 1192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1953, file: !1954, line: 544, baseType: !1965, size: 8, offset: 1200)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1953, file: !1954, line: 545, baseType: !1965, size: 8, offset: 1208)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1953, file: !1954, line: 546, baseType: !1965, size: 8, offset: 1216)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1953, file: !1954, line: 547, baseType: !1965, size: 8, offset: 1224)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1953, file: !1954, line: 548, baseType: !1965, size: 8, offset: 1232)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1953, file: !1954, line: 549, baseType: !1965, size: 8, offset: 1240)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1953, file: !1954, line: 550, baseType: !1965, size: 8, offset: 1248)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1953, file: !1954, line: 551, baseType: !1965, size: 8, offset: 1256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1953, file: !1954, line: 552, baseType: !1965, size: 8, offset: 1264)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1953, file: !1954, line: 553, baseType: !1965, size: 8, offset: 1272)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1953, file: !1954, line: 554, baseType: !1965, size: 8, offset: 1280)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1953, file: !1954, line: 555, baseType: !1965, size: 8, offset: 1288)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1953, file: !1954, line: 556, baseType: !1965, size: 8, offset: 1296)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1953, file: !1954, line: 557, baseType: !1965, size: 8, offset: 1304)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1953, file: !1954, line: 558, baseType: !1965, size: 8, offset: 1312)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1953, file: !1954, line: 559, baseType: !1965, size: 8, offset: 1320)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1953, file: !1954, line: 560, baseType: !1965, size: 8, offset: 1328)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1953, file: !1954, line: 561, baseType: !1965, size: 8, offset: 1336)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1953, file: !1954, line: 562, baseType: !1965, size: 8, offset: 1344)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1953, file: !1954, line: 563, baseType: !1965, size: 8, offset: 1352)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1953, file: !1954, line: 564, baseType: !1965, size: 8, offset: 1360)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1953, file: !1954, line: 565, baseType: !1965, size: 8, offset: 1368)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1953, file: !1954, line: 566, baseType: !1965, size: 8, offset: 1376)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1953, file: !1954, line: 567, baseType: !1965, size: 8, offset: 1384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1953, file: !1954, line: 568, baseType: !1965, size: 8, offset: 1392)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1953, file: !1954, line: 569, baseType: !1965, size: 8, offset: 1400)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1953, file: !1954, line: 570, baseType: !1965, size: 8, offset: 1408)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1953, file: !1954, line: 571, baseType: !1965, size: 8, offset: 1416)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1953, file: !1954, line: 572, baseType: !1965, size: 8, offset: 1424)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1953, file: !1954, line: 573, baseType: !1965, size: 8, offset: 1432)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1953, file: !1954, line: 574, baseType: !1965, size: 8, offset: 1440)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !658, file: !354, line: 3405, baseType: !2121, size: 384)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !354, line: 3352, size: 384, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2121, file: !354, line: 3353, baseType: !694, size: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2121, file: !354, line: 3356, baseType: !2125, size: 192, offset: 192)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1954, line: 578, size: 192, elements: !2126)
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2125, file: !1954, line: 580, baseType: !648, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2125, file: !1954, line: 581, baseType: !648, size: 32, offset: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2125, file: !1954, line: 582, baseType: !648, size: 32, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2125, file: !1954, line: 583, baseType: !648, size: 32, offset: 96)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2125, file: !1954, line: 584, baseType: !647, size: 8, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2125, file: !1954, line: 585, baseType: !647, size: 8, offset: 136)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2125, file: !1954, line: 586, baseType: !647, size: 8, offset: 144)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2125, file: !1954, line: 587, baseType: !647, size: 8, offset: 152)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2125, file: !1954, line: 588, baseType: !647, size: 8, offset: 160)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2125, file: !1954, line: 589, baseType: !647, size: 8, offset: 168)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2125, file: !1954, line: 590, baseType: !647, size: 8, offset: 176)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !981)
!2140 = !{!0, !2141, !2169, !2174, !2176, !2178, !2180}
!2141 = !DIGlobalVariableExpression(var: !2142, expr: !DIExpression())
!2142 = distinct !DIGlobalVariable(name: "pass_early_local_passes", scope: !2, file: !3, line: 94, type: !2143, isLocal: false, isDefinition: true)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_ipa_opt_pass", file: !6, line: 202, size: 640, elements: !2144)
!2144 = !{!2145}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2143, file: !6, line: 204, baseType: !2146, size: 640)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2147)
!2147 = !{!2148, !2149, !2150, !2154, !2158, !2160, !2161, !2162, !2164, !2165, !2166, !2167, !2168}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2146, file: !6, line: 117, baseType: !5, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2146, file: !6, line: 121, baseType: !653, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2146, file: !6, line: 125, baseType: !2151, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!647}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2146, file: !6, line: 130, baseType: !2155, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!7}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2146, file: !6, line: 133, baseType: !2159, size: 64, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2146, file: !6, line: 136, baseType: !2159, size: 64, offset: 320)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2146, file: !6, line: 139, baseType: !648, size: 32, offset: 384)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2146, file: !6, line: 143, baseType: !2163, size: 32, offset: 416)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2146, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2146, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2146, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2146, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2146, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2169 = !DIGlobalVariableExpression(var: !2170, expr: !DIExpression())
!2170 = distinct !DIGlobalVariable(name: "pass_all_early_optimizations", scope: !2, file: !3, line: 135, type: !2171, isLocal: false, isDefinition: true)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !2172)
!2172 = !{!2173}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2171, file: !6, line: 158, baseType: !2146, size: 640)
!2174 = !DIGlobalVariableExpression(var: !2175, expr: !DIExpression())
!2175 = distinct !DIGlobalVariable(name: "pass_cleanup_cfg", scope: !2, file: !3, line: 166, type: !2171, isLocal: false, isDefinition: true)
!2176 = !DIGlobalVariableExpression(var: !2177, expr: !DIExpression())
!2177 = distinct !DIGlobalVariable(name: "pass_cleanup_cfg_post_optimizing", scope: !2, file: !3, line: 201, type: !2171, isLocal: false, isDefinition: true)
!2178 = !DIGlobalVariableExpression(var: !2179, expr: !DIExpression())
!2179 = distinct !DIGlobalVariable(name: "pass_fixup_cfg", scope: !2, file: !3, line: 306, type: !2171, isLocal: false, isDefinition: true)
!2180 = !DIGlobalVariableExpression(var: !2181, expr: !DIExpression())
!2181 = distinct !DIGlobalVariable(name: "pass_init_datastructures", scope: !2, file: !3, line: 336, type: !2171, isLocal: false, isDefinition: true)
!2182 = !{i32 2, !"Dwarf Version", i32 4}
!2183 = !{i32 2, !"Debug Info Version", i32 3}
!2184 = !{i32 1, !"wchar_size", i32 4}
!2185 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2186 = distinct !DISubprogram(name: "vprintf", scope: !2187, file: !2187, line: 39, type: !2188, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2198)
!2187 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!648, !2190, !2191}
!2190 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !653)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2197}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2192, file: !3, baseType: !7, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2192, file: !3, baseType: !7, size: 32, offset: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2192, file: !3, baseType: !652, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2192, file: !3, baseType: !652, size: 64, offset: 128)
!2198 = !{!2199, !2200}
!2199 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2186, file: !2187, line: 39, type: !2190)
!2200 = !DILocalVariable(name: "__arg", arg: 2, scope: !2186, file: !2187, line: 39, type: !2191)
!2201 = !DILocation(line: 0, scope: !2186)
!2202 = !DILocation(line: 41, column: 20, scope: !2186)
!2203 = !DILocation(line: 41, column: 10, scope: !2186)
!2204 = !DILocation(line: 41, column: 3, scope: !2186)
!2205 = distinct !DISubprogram(name: "getchar", scope: !2187, file: !2187, line: 47, type: !2206, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!648}
!2208 = !{}
!2209 = !DILocation(line: 49, column: 16, scope: !2205)
!2210 = !DILocation(line: 49, column: 10, scope: !2205)
!2211 = !DILocation(line: 49, column: 3, scope: !2205)
!2212 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2187, file: !2187, line: 56, type: !2213, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2266)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!648, !2215}
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2217, line: 7, baseType: !2218)
!2217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2219, line: 49, size: 1728, elements: !2220)
!2219 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2220 = !{!2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2236, !2238, !2239, !2240, !2243, !2245, !2246, !2247, !2250, !2252, !2255, !2258, !2259, !2260, !2261, !2262}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2218, file: !2219, line: 51, baseType: !648, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2218, file: !2219, line: 54, baseType: !650, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2218, file: !2219, line: 55, baseType: !650, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2218, file: !2219, line: 56, baseType: !650, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2218, file: !2219, line: 57, baseType: !650, size: 64, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2218, file: !2219, line: 58, baseType: !650, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2218, file: !2219, line: 59, baseType: !650, size: 64, offset: 384)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2218, file: !2219, line: 60, baseType: !650, size: 64, offset: 448)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2218, file: !2219, line: 61, baseType: !650, size: 64, offset: 512)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2218, file: !2219, line: 64, baseType: !650, size: 64, offset: 576)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2218, file: !2219, line: 65, baseType: !650, size: 64, offset: 640)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2218, file: !2219, line: 66, baseType: !650, size: 64, offset: 704)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2218, file: !2219, line: 68, baseType: !2234, size: 64, offset: 768)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2219, line: 36, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2218, file: !2219, line: 70, baseType: !2237, size: 64, offset: 832)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2218, file: !2219, line: 72, baseType: !648, size: 32, offset: 896)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2218, file: !2219, line: 73, baseType: !648, size: 32, offset: 928)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2218, file: !2219, line: 74, baseType: !2241, size: 64, offset: 960)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2242, line: 152, baseType: !711)
!2242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2218, file: !2219, line: 77, baseType: !2244, size: 16, offset: 1024)
!2244 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2218, file: !2219, line: 78, baseType: !1965, size: 8, offset: 1040)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2218, file: !2219, line: 79, baseType: !753, size: 8, offset: 1048)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2218, file: !2219, line: 81, baseType: !2248, size: 64, offset: 1088)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2219, line: 43, baseType: null)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2218, file: !2219, line: 89, baseType: !2251, size: 64, offset: 1152)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2242, line: 153, baseType: !711)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2218, file: !2219, line: 91, baseType: !2253, size: 64, offset: 1216)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2219, line: 37, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2218, file: !2219, line: 92, baseType: !2256, size: 64, offset: 1280)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2219, line: 38, flags: DIFlagFwdDecl)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2218, file: !2219, line: 93, baseType: !2237, size: 64, offset: 1344)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2218, file: !2219, line: 94, baseType: !652, size: 64, offset: 1408)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2218, file: !2219, line: 95, baseType: !1125, size: 64, offset: 1472)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2218, file: !2219, line: 96, baseType: !648, size: 32, offset: 1536)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2218, file: !2219, line: 98, baseType: !2263, size: 160, offset: 1568)
!2263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 160, elements: !2264)
!2264 = !{!2265}
!2265 = !DISubrange(count: 20)
!2266 = !{!2267}
!2267 = !DILocalVariable(name: "__fp", arg: 1, scope: !2212, file: !2187, line: 56, type: !2215)
!2268 = !DILocation(line: 0, scope: !2212)
!2269 = !DILocation(line: 58, column: 10, scope: !2212)
!2270 = !DILocation(line: 58, column: 3, scope: !2212)
!2271 = distinct !DISubprogram(name: "getc_unlocked", scope: !2187, file: !2187, line: 66, type: !2213, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2272)
!2272 = !{!2273}
!2273 = !DILocalVariable(name: "__fp", arg: 1, scope: !2271, file: !2187, line: 66, type: !2215)
!2274 = !DILocation(line: 0, scope: !2271)
!2275 = !DILocation(line: 68, column: 10, scope: !2271)
!2276 = !DILocation(line: 68, column: 3, scope: !2271)
!2277 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2187, file: !2187, line: 73, type: !2206, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2278 = !DILocation(line: 75, column: 10, scope: !2277)
!2279 = !DILocation(line: 75, column: 3, scope: !2277)
!2280 = distinct !DISubprogram(name: "putchar", scope: !2187, file: !2187, line: 82, type: !2281, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!648, !648}
!2283 = !{!2284}
!2284 = !DILocalVariable(name: "__c", arg: 1, scope: !2280, file: !2187, line: 82, type: !648)
!2285 = !DILocation(line: 0, scope: !2280)
!2286 = !DILocation(line: 84, column: 21, scope: !2280)
!2287 = !DILocation(line: 84, column: 10, scope: !2280)
!2288 = !DILocation(line: 84, column: 3, scope: !2280)
!2289 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2187, file: !2187, line: 91, type: !2290, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!648, !648, !2215}
!2292 = !{!2293, !2294}
!2293 = !DILocalVariable(name: "__c", arg: 1, scope: !2289, file: !2187, line: 91, type: !648)
!2294 = !DILocalVariable(name: "__stream", arg: 2, scope: !2289, file: !2187, line: 91, type: !2215)
!2295 = !DILocation(line: 0, scope: !2289)
!2296 = !DILocation(line: 93, column: 10, scope: !2289)
!2297 = !DILocation(line: 93, column: 3, scope: !2289)
!2298 = distinct !DISubprogram(name: "putc_unlocked", scope: !2187, file: !2187, line: 101, type: !2290, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2299)
!2299 = !{!2300, !2301}
!2300 = !DILocalVariable(name: "__c", arg: 1, scope: !2298, file: !2187, line: 101, type: !648)
!2301 = !DILocalVariable(name: "__stream", arg: 2, scope: !2298, file: !2187, line: 101, type: !2215)
!2302 = !DILocation(line: 0, scope: !2298)
!2303 = !DILocation(line: 103, column: 10, scope: !2298)
!2304 = !DILocation(line: 103, column: 3, scope: !2298)
!2305 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2187, file: !2187, line: 108, type: !2281, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2306)
!2306 = !{!2307}
!2307 = !DILocalVariable(name: "__c", arg: 1, scope: !2305, file: !2187, line: 108, type: !648)
!2308 = !DILocation(line: 0, scope: !2305)
!2309 = !DILocation(line: 110, column: 10, scope: !2305)
!2310 = !DILocation(line: 110, column: 3, scope: !2305)
!2311 = distinct !DISubprogram(name: "getline", scope: !2187, file: !2187, line: 118, type: !2312, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2316)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!2314, !649, !2315, !2215}
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2242, line: 193, baseType: !711)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!2316 = !{!2317, !2318, !2319}
!2317 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2311, file: !2187, line: 118, type: !649)
!2318 = !DILocalVariable(name: "__n", arg: 2, scope: !2311, file: !2187, line: 118, type: !2315)
!2319 = !DILocalVariable(name: "__stream", arg: 3, scope: !2311, file: !2187, line: 118, type: !2215)
!2320 = !DILocation(line: 0, scope: !2311)
!2321 = !DILocation(line: 120, column: 10, scope: !2311)
!2322 = !DILocation(line: 120, column: 3, scope: !2311)
!2323 = distinct !DISubprogram(name: "feof_unlocked", scope: !2187, file: !2187, line: 128, type: !2213, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2324)
!2324 = !{!2325}
!2325 = !DILocalVariable(name: "__stream", arg: 1, scope: !2323, file: !2187, line: 128, type: !2215)
!2326 = !DILocation(line: 0, scope: !2323)
!2327 = !DILocation(line: 130, column: 10, scope: !2323)
!2328 = !DILocation(line: 130, column: 3, scope: !2323)
!2329 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2187, file: !2187, line: 135, type: !2213, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2330)
!2330 = !{!2331}
!2331 = !DILocalVariable(name: "__stream", arg: 1, scope: !2329, file: !2187, line: 135, type: !2215)
!2332 = !DILocation(line: 0, scope: !2329)
!2333 = !DILocation(line: 137, column: 10, scope: !2329)
!2334 = !DILocation(line: 137, column: 3, scope: !2329)
!2335 = distinct !DISubprogram(name: "tolower", scope: !2336, file: !2336, line: 207, type: !2281, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2337)
!2336 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2337 = !{!2338}
!2338 = !DILocalVariable(name: "__c", arg: 1, scope: !2335, file: !2336, line: 207, type: !648)
!2339 = !DILocation(line: 0, scope: !2335)
!2340 = !DILocation(line: 209, column: 22, scope: !2335)
!2341 = !DILocation(line: 209, column: 39, scope: !2335)
!2342 = !DILocation(line: 209, column: 38, scope: !2335)
!2343 = !DILocation(line: 209, column: 37, scope: !2335)
!2344 = !DILocation(line: 209, column: 10, scope: !2335)
!2345 = !DILocation(line: 209, column: 3, scope: !2335)
!2346 = distinct !DISubprogram(name: "toupper", scope: !2336, file: !2336, line: 213, type: !2281, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2347)
!2347 = !{!2348}
!2348 = !DILocalVariable(name: "__c", arg: 1, scope: !2346, file: !2336, line: 213, type: !648)
!2349 = !DILocation(line: 0, scope: !2346)
!2350 = !DILocation(line: 215, column: 22, scope: !2346)
!2351 = !DILocation(line: 215, column: 39, scope: !2346)
!2352 = !DILocation(line: 215, column: 38, scope: !2346)
!2353 = !DILocation(line: 215, column: 37, scope: !2346)
!2354 = !DILocation(line: 215, column: 10, scope: !2346)
!2355 = !DILocation(line: 215, column: 3, scope: !2346)
!2356 = distinct !DISubprogram(name: "atoi", scope: !2357, file: !2357, line: 361, type: !2358, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2360)
!2357 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!648, !653}
!2360 = !{!2361}
!2361 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2356, file: !2357, line: 361, type: !653)
!2362 = !DILocation(line: 0, scope: !2356)
!2363 = !DILocation(line: 363, column: 16, scope: !2356)
!2364 = !DILocation(line: 363, column: 10, scope: !2356)
!2365 = !DILocation(line: 363, column: 3, scope: !2356)
!2366 = distinct !DISubprogram(name: "atol", scope: !2357, file: !2357, line: 366, type: !2367, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!711, !653}
!2369 = !{!2370}
!2370 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2366, file: !2357, line: 366, type: !653)
!2371 = !DILocation(line: 0, scope: !2366)
!2372 = !DILocation(line: 368, column: 10, scope: !2366)
!2373 = !DILocation(line: 368, column: 3, scope: !2366)
!2374 = distinct !DISubprogram(name: "atoll", scope: !2357, file: !2357, line: 373, type: !2375, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2378)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!2377, !653}
!2377 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2378 = !{!2379}
!2379 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2374, file: !2357, line: 373, type: !653)
!2380 = !DILocation(line: 0, scope: !2374)
!2381 = !DILocation(line: 375, column: 10, scope: !2374)
!2382 = !DILocation(line: 375, column: 3, scope: !2374)
!2383 = distinct !DISubprogram(name: "bsearch", scope: !2384, file: !2384, line: 20, type: !2385, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2388)
!2384 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!652, !1339, !1339, !1125, !1125, !2387}
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2357, line: 808, baseType: !1552)
!2388 = !{!2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398}
!2389 = !DILocalVariable(name: "__key", arg: 1, scope: !2383, file: !2384, line: 20, type: !1339)
!2390 = !DILocalVariable(name: "__base", arg: 2, scope: !2383, file: !2384, line: 20, type: !1339)
!2391 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2383, file: !2384, line: 20, type: !1125)
!2392 = !DILocalVariable(name: "__size", arg: 4, scope: !2383, file: !2384, line: 20, type: !1125)
!2393 = !DILocalVariable(name: "__compar", arg: 5, scope: !2383, file: !2384, line: 21, type: !2387)
!2394 = !DILocalVariable(name: "__l", scope: !2383, file: !2384, line: 23, type: !1125)
!2395 = !DILocalVariable(name: "__u", scope: !2383, file: !2384, line: 23, type: !1125)
!2396 = !DILocalVariable(name: "__idx", scope: !2383, file: !2384, line: 23, type: !1125)
!2397 = !DILocalVariable(name: "__p", scope: !2383, file: !2384, line: 24, type: !1339)
!2398 = !DILocalVariable(name: "__comparison", scope: !2383, file: !2384, line: 25, type: !648)
!2399 = !DILocation(line: 0, scope: !2383)
!2400 = !DILocation(line: 29, column: 3, scope: !2383)
!2401 = !DILocation(line: 27, column: 7, scope: !2383)
!2402 = !DILocation(line: 29, column: 14, scope: !2383)
!2403 = !DILocation(line: 31, column: 20, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2383, file: !2384, line: 30, column: 5)
!2405 = !DILocation(line: 31, column: 27, scope: !2404)
!2406 = !DILocation(line: 32, column: 56, scope: !2404)
!2407 = !DILocation(line: 32, column: 47, scope: !2404)
!2408 = !DILocation(line: 33, column: 22, scope: !2404)
!2409 = !DILocation(line: 34, column: 24, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2404, file: !2384, line: 34, column: 11)
!2411 = !DILocation(line: 34, column: 11, scope: !2404)
!2412 = !DILocation(line: 36, column: 29, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2410, file: !2384, line: 36, column: 16)
!2414 = !DILocation(line: 36, column: 16, scope: !2410)
!2415 = !DILocation(line: 37, column: 14, scope: !2413)
!2416 = distinct !{!2416, !2400, !2417}
!2417 = !DILocation(line: 40, column: 5, scope: !2383)
!2418 = !DILocation(line: 43, column: 1, scope: !2383)
!2419 = distinct !DISubprogram(name: "atof", scope: !2420, file: !2420, line: 25, type: !2421, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2424)
!2420 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!2423, !653}
!2423 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2424 = !{!2425}
!2425 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2419, file: !2420, line: 25, type: !653)
!2426 = !DILocation(line: 0, scope: !2419)
!2427 = !DILocation(line: 27, column: 10, scope: !2419)
!2428 = !DILocation(line: 27, column: 3, scope: !2419)
!2429 = distinct !DISubprogram(name: "strtoimax", scope: !2430, file: !2430, line: 324, type: !2431, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2437)
!2430 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!2433, !2190, !2436, !648}
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2434, line: 101, baseType: !2435)
!2434 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2242, line: 72, baseType: !711)
!2436 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !649)
!2437 = !{!2438, !2439, !2440}
!2438 = !DILocalVariable(name: "nptr", arg: 1, scope: !2429, file: !2430, line: 324, type: !2190)
!2439 = !DILocalVariable(name: "endptr", arg: 2, scope: !2429, file: !2430, line: 324, type: !2436)
!2440 = !DILocalVariable(name: "base", arg: 3, scope: !2429, file: !2430, line: 324, type: !648)
!2441 = !DILocation(line: 0, scope: !2429)
!2442 = !DILocation(line: 327, column: 10, scope: !2429)
!2443 = !DILocation(line: 327, column: 3, scope: !2429)
!2444 = distinct !DISubprogram(name: "strtoumax", scope: !2430, file: !2430, line: 336, type: !2445, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2449)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!2447, !2190, !2436, !648}
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2434, line: 102, baseType: !2448)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2242, line: 73, baseType: !709)
!2449 = !{!2450, !2451, !2452}
!2450 = !DILocalVariable(name: "nptr", arg: 1, scope: !2444, file: !2430, line: 336, type: !2190)
!2451 = !DILocalVariable(name: "endptr", arg: 2, scope: !2444, file: !2430, line: 336, type: !2436)
!2452 = !DILocalVariable(name: "base", arg: 3, scope: !2444, file: !2430, line: 336, type: !648)
!2453 = !DILocation(line: 0, scope: !2444)
!2454 = !DILocation(line: 339, column: 10, scope: !2444)
!2455 = !DILocation(line: 339, column: 3, scope: !2444)
!2456 = distinct !DISubprogram(name: "wcstoimax", scope: !2430, file: !2430, line: 348, type: !2457, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2466)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!2433, !2459, !2463, !648}
!2459 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2460)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2462)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2430, line: 34, baseType: !648)
!2463 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2464)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2466 = !{!2467, !2468, !2469}
!2467 = !DILocalVariable(name: "nptr", arg: 1, scope: !2456, file: !2430, line: 348, type: !2459)
!2468 = !DILocalVariable(name: "endptr", arg: 2, scope: !2456, file: !2430, line: 348, type: !2463)
!2469 = !DILocalVariable(name: "base", arg: 3, scope: !2456, file: !2430, line: 348, type: !648)
!2470 = !DILocation(line: 0, scope: !2456)
!2471 = !DILocation(line: 351, column: 10, scope: !2456)
!2472 = !DILocation(line: 351, column: 3, scope: !2456)
!2473 = distinct !DISubprogram(name: "wcstoumax", scope: !2430, file: !2430, line: 362, type: !2474, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!2447, !2459, !2463, !648}
!2476 = !{!2477, !2478, !2479}
!2477 = !DILocalVariable(name: "nptr", arg: 1, scope: !2473, file: !2430, line: 362, type: !2459)
!2478 = !DILocalVariable(name: "endptr", arg: 2, scope: !2473, file: !2430, line: 362, type: !2463)
!2479 = !DILocalVariable(name: "base", arg: 3, scope: !2473, file: !2430, line: 362, type: !648)
!2480 = !DILocation(line: 0, scope: !2473)
!2481 = !DILocation(line: 365, column: 10, scope: !2473)
!2482 = !DILocation(line: 365, column: 3, scope: !2473)
!2483 = distinct !DISubprogram(name: "stat", scope: !2484, file: !2484, line: 453, type: !2485, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2522)
!2484 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!648, !653, !2487}
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2489, line: 46, size: 1152, elements: !2490)
!2489 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2490 = !{!2491, !2493, !2495, !2497, !2499, !2501, !2503, !2504, !2505, !2506, !2508, !2510, !2518, !2519, !2520}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2488, file: !2489, line: 48, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2242, line: 145, baseType: !709)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2488, file: !2489, line: 53, baseType: !2494, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2242, line: 148, baseType: !709)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2488, file: !2489, line: 61, baseType: !2496, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2242, line: 151, baseType: !709)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2488, file: !2489, line: 62, baseType: !2498, size: 32, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2242, line: 150, baseType: !7)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2488, file: !2489, line: 64, baseType: !2500, size: 32, offset: 224)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2242, line: 146, baseType: !7)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2488, file: !2489, line: 65, baseType: !2502, size: 32, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2242, line: 147, baseType: !7)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2488, file: !2489, line: 67, baseType: !648, size: 32, offset: 288)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2488, file: !2489, line: 69, baseType: !2492, size: 64, offset: 320)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2488, file: !2489, line: 74, baseType: !2241, size: 64, offset: 384)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2488, file: !2489, line: 78, baseType: !2507, size: 64, offset: 448)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2242, line: 174, baseType: !711)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2488, file: !2489, line: 80, baseType: !2509, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2242, line: 179, baseType: !711)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2488, file: !2489, line: 91, baseType: !2511, size: 128, offset: 576)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2512, line: 10, size: 128, elements: !2513)
!2512 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2513 = !{!2514, !2516}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2511, file: !2512, line: 12, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2242, line: 160, baseType: !711)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2511, file: !2512, line: 16, baseType: !2517, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2242, line: 196, baseType: !711)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2488, file: !2489, line: 92, baseType: !2511, size: 128, offset: 704)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2488, file: !2489, line: 93, baseType: !2511, size: 128, offset: 832)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2488, file: !2489, line: 106, baseType: !2521, size: 192, offset: 960)
!2521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2517, size: 192, elements: !729)
!2522 = !{!2523, !2524}
!2523 = !DILocalVariable(name: "__path", arg: 1, scope: !2483, file: !2484, line: 453, type: !653)
!2524 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2483, file: !2484, line: 453, type: !2487)
!2525 = !DILocation(line: 0, scope: !2483)
!2526 = !DILocation(line: 455, column: 10, scope: !2483)
!2527 = !DILocation(line: 455, column: 3, scope: !2483)
!2528 = distinct !DISubprogram(name: "lstat", scope: !2484, file: !2484, line: 460, type: !2485, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2529)
!2529 = !{!2530, !2531}
!2530 = !DILocalVariable(name: "__path", arg: 1, scope: !2528, file: !2484, line: 460, type: !653)
!2531 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2528, file: !2484, line: 460, type: !2487)
!2532 = !DILocation(line: 0, scope: !2528)
!2533 = !DILocation(line: 462, column: 10, scope: !2528)
!2534 = !DILocation(line: 462, column: 3, scope: !2528)
!2535 = distinct !DISubprogram(name: "fstat", scope: !2484, file: !2484, line: 467, type: !2536, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!648, !648, !2487}
!2538 = !{!2539, !2540}
!2539 = !DILocalVariable(name: "__fd", arg: 1, scope: !2535, file: !2484, line: 467, type: !648)
!2540 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2535, file: !2484, line: 467, type: !2487)
!2541 = !DILocation(line: 0, scope: !2535)
!2542 = !DILocation(line: 469, column: 10, scope: !2535)
!2543 = !DILocation(line: 469, column: 3, scope: !2535)
!2544 = distinct !DISubprogram(name: "fstatat", scope: !2484, file: !2484, line: 474, type: !2545, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!648, !648, !653, !2487, !648}
!2547 = !{!2548, !2549, !2550, !2551}
!2548 = !DILocalVariable(name: "__fd", arg: 1, scope: !2544, file: !2484, line: 474, type: !648)
!2549 = !DILocalVariable(name: "__filename", arg: 2, scope: !2544, file: !2484, line: 474, type: !653)
!2550 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2544, file: !2484, line: 474, type: !2487)
!2551 = !DILocalVariable(name: "__flag", arg: 4, scope: !2544, file: !2484, line: 474, type: !648)
!2552 = !DILocation(line: 0, scope: !2544)
!2553 = !DILocation(line: 477, column: 10, scope: !2544)
!2554 = !DILocation(line: 477, column: 3, scope: !2544)
!2555 = distinct !DISubprogram(name: "mknod", scope: !2484, file: !2484, line: 483, type: !2556, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!648, !653, !2498, !2492}
!2558 = !{!2559, !2560, !2561}
!2559 = !DILocalVariable(name: "__path", arg: 1, scope: !2555, file: !2484, line: 483, type: !653)
!2560 = !DILocalVariable(name: "__mode", arg: 2, scope: !2555, file: !2484, line: 483, type: !2498)
!2561 = !DILocalVariable(name: "__dev", arg: 3, scope: !2555, file: !2484, line: 483, type: !2492)
!2562 = !DILocation(line: 0, scope: !2555)
!2563 = !DILocation(line: 485, column: 10, scope: !2555)
!2564 = !DILocation(line: 485, column: 3, scope: !2555)
!2565 = distinct !DISubprogram(name: "mknodat", scope: !2484, file: !2484, line: 491, type: !2566, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!648, !648, !653, !2498, !2492}
!2568 = !{!2569, !2570, !2571, !2572}
!2569 = !DILocalVariable(name: "__fd", arg: 1, scope: !2565, file: !2484, line: 491, type: !648)
!2570 = !DILocalVariable(name: "__path", arg: 2, scope: !2565, file: !2484, line: 491, type: !653)
!2571 = !DILocalVariable(name: "__mode", arg: 3, scope: !2565, file: !2484, line: 491, type: !2498)
!2572 = !DILocalVariable(name: "__dev", arg: 4, scope: !2565, file: !2484, line: 491, type: !2492)
!2573 = !DILocation(line: 0, scope: !2565)
!2574 = !DILocation(line: 494, column: 10, scope: !2565)
!2575 = !DILocation(line: 494, column: 3, scope: !2565)
!2576 = distinct !DISubprogram(name: "stat64", scope: !2484, file: !2484, line: 502, type: !2577, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2599)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!648, !653, !2579}
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2489, line: 119, size: 1152, elements: !2581)
!2581 = !{!2582, !2583, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2595, !2596, !2597, !2598}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2580, file: !2489, line: 121, baseType: !2492, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2580, file: !2489, line: 123, baseType: !2584, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2242, line: 149, baseType: !709)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2580, file: !2489, line: 124, baseType: !2496, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2580, file: !2489, line: 125, baseType: !2498, size: 32, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2580, file: !2489, line: 132, baseType: !2500, size: 32, offset: 224)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2580, file: !2489, line: 133, baseType: !2502, size: 32, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2580, file: !2489, line: 135, baseType: !648, size: 32, offset: 288)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2580, file: !2489, line: 136, baseType: !2492, size: 64, offset: 320)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2580, file: !2489, line: 137, baseType: !2241, size: 64, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2580, file: !2489, line: 143, baseType: !2507, size: 64, offset: 448)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2580, file: !2489, line: 144, baseType: !2594, size: 64, offset: 512)
!2594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2242, line: 180, baseType: !711)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2580, file: !2489, line: 152, baseType: !2511, size: 128, offset: 576)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2580, file: !2489, line: 153, baseType: !2511, size: 128, offset: 704)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2580, file: !2489, line: 154, baseType: !2511, size: 128, offset: 832)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2580, file: !2489, line: 164, baseType: !2521, size: 192, offset: 960)
!2599 = !{!2600, !2601}
!2600 = !DILocalVariable(name: "__path", arg: 1, scope: !2576, file: !2484, line: 502, type: !653)
!2601 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2576, file: !2484, line: 502, type: !2579)
!2602 = !DILocation(line: 0, scope: !2576)
!2603 = !DILocation(line: 504, column: 10, scope: !2576)
!2604 = !DILocation(line: 504, column: 3, scope: !2576)
!2605 = distinct !DISubprogram(name: "lstat64", scope: !2484, file: !2484, line: 509, type: !2577, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2606)
!2606 = !{!2607, !2608}
!2607 = !DILocalVariable(name: "__path", arg: 1, scope: !2605, file: !2484, line: 509, type: !653)
!2608 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2605, file: !2484, line: 509, type: !2579)
!2609 = !DILocation(line: 0, scope: !2605)
!2610 = !DILocation(line: 511, column: 10, scope: !2605)
!2611 = !DILocation(line: 511, column: 3, scope: !2605)
!2612 = distinct !DISubprogram(name: "fstat64", scope: !2484, file: !2484, line: 516, type: !2613, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!648, !648, !2579}
!2615 = !{!2616, !2617}
!2616 = !DILocalVariable(name: "__fd", arg: 1, scope: !2612, file: !2484, line: 516, type: !648)
!2617 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2612, file: !2484, line: 516, type: !2579)
!2618 = !DILocation(line: 0, scope: !2612)
!2619 = !DILocation(line: 518, column: 10, scope: !2612)
!2620 = !DILocation(line: 518, column: 3, scope: !2612)
!2621 = distinct !DISubprogram(name: "fstatat64", scope: !2484, file: !2484, line: 523, type: !2622, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!648, !648, !653, !2579, !648}
!2624 = !{!2625, !2626, !2627, !2628}
!2625 = !DILocalVariable(name: "__fd", arg: 1, scope: !2621, file: !2484, line: 523, type: !648)
!2626 = !DILocalVariable(name: "__filename", arg: 2, scope: !2621, file: !2484, line: 523, type: !653)
!2627 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2621, file: !2484, line: 523, type: !2579)
!2628 = !DILocalVariable(name: "__flag", arg: 4, scope: !2621, file: !2484, line: 523, type: !648)
!2629 = !DILocation(line: 0, scope: !2621)
!2630 = !DILocation(line: 526, column: 10, scope: !2621)
!2631 = !DILocation(line: 526, column: 3, scope: !2621)
!2632 = distinct !DISubprogram(name: "gate_all_optimizations", scope: !3, file: !3, line: 58, type: !2152, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2633 = !DILocation(line: 60, column: 11, scope: !2632)
!2634 = !DILocation(line: 60, column: 20, scope: !2632)
!2635 = !DILocation(line: 63, column: 4, scope: !2632)
!2636 = !DILocation(line: 63, column: 10, scope: !2632)
!2637 = !DILocation(line: 63, column: 21, scope: !2632)
!2638 = !DILocation(line: 63, column: 24, scope: !2632)
!2639 = !DILocation(line: 63, column: 36, scope: !2632)
!2640 = !DILocation(line: 63, column: 56, scope: !2632)
!2641 = !DILocation(line: 63, column: 39, scope: !2632)
!2642 = !DILocation(line: 60, column: 3, scope: !2632)
!2643 = distinct !DISubprogram(name: "gate_all_early_local_passes", scope: !3, file: !3, line: 88, type: !2152, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2644 = !DILocation(line: 91, column: 12, scope: !2643)
!2645 = !DILocation(line: 91, column: 23, scope: !2643)
!2646 = !DILocation(line: 91, column: 27, scope: !2643)
!2647 = !DILocation(line: 91, column: 38, scope: !2643)
!2648 = !DILocation(line: 91, column: 42, scope: !2643)
!2649 = !DILocation(line: 91, column: 41, scope: !2643)
!2650 = !DILocation(line: 91, column: 3, scope: !2643)
!2651 = distinct !DISubprogram(name: "gate_all_early_optimizations", scope: !3, file: !3, line: 128, type: !2152, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2652 = !DILocation(line: 130, column: 11, scope: !2651)
!2653 = !DILocation(line: 130, column: 20, scope: !2651)
!2654 = !DILocation(line: 132, column: 4, scope: !2651)
!2655 = !DILocation(line: 132, column: 9, scope: !2651)
!2656 = !DILocation(line: 132, column: 20, scope: !2651)
!2657 = !DILocation(line: 132, column: 23, scope: !2651)
!2658 = !DILocation(line: 130, column: 3, scope: !2651)
!2659 = distinct !DISubprogram(name: "execute_early_local_optimizations", scope: !3, file: !3, line: 114, type: !2156, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2660 = !DILocation(line: 120, column: 7, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 120, column: 7)
!2662 = !DILocation(line: 120, column: 20, scope: !2661)
!2663 = !DILocation(line: 120, column: 7, scope: !2659)
!2664 = !DILocation(line: 121, column: 18, scope: !2661)
!2665 = !DILocation(line: 121, column: 5, scope: !2661)
!2666 = !DILocation(line: 122, column: 3, scope: !2659)
!2667 = distinct !DISubprogram(name: "execute_cleanup_cfg_pre_ipa", scope: !3, file: !3, line: 160, type: !2156, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2668 = !DILocation(line: 162, column: 3, scope: !2667)
!2669 = !DILocation(line: 163, column: 3, scope: !2667)
!2670 = distinct !DISubprogram(name: "execute_cleanup_cfg_post_optimizing", scope: !3, file: !3, line: 192, type: !2156, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2671 = !DILocation(line: 194, column: 3, scope: !2670)
!2672 = !DILocation(line: 195, column: 3, scope: !2670)
!2673 = !DILocation(line: 196, column: 3, scope: !2670)
!2674 = !DILocation(line: 197, column: 3, scope: !2670)
!2675 = !DILocation(line: 198, column: 3, scope: !2670)
!2676 = distinct !DISubprogram(name: "execute_free_datastructures", scope: !3, file: !3, line: 225, type: !2156, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2677 = !DILocation(line: 227, column: 3, scope: !2676)
!2678 = !DILocation(line: 228, column: 3, scope: !2676)
!2679 = !DILocation(line: 231, column: 3, scope: !2676)
!2680 = !DILocation(line: 233, column: 3, scope: !2676)
!2681 = distinct !DISubprogram(name: "execute_fixup_cfg", scope: !3, file: !3, line: 244, type: !2156, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2682)
!2682 = !{!2683, !2684, !2691, !2692, !2693, !2694, !2701, !2708}
!2683 = !DILocalVariable(name: "bb", scope: !2681, file: !3, line: 246, type: !1622)
!2684 = !DILocalVariable(name: "gsi", scope: !2681, file: !3, line: 247, type: !2685)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !581, line: 265, baseType: !2686)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !581, line: 254, size: 192, elements: !2687)
!2687 = !{!2688, !2689, !2690}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2686, file: !581, line: 257, baseType: !974, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2686, file: !581, line: 263, baseType: !969, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2686, file: !581, line: 264, baseType: !1622, size: 64, offset: 128)
!2691 = !DILocalVariable(name: "todo", scope: !2681, file: !3, line: 248, type: !648)
!2692 = !DILocalVariable(name: "count_scale", scope: !2681, file: !3, line: 249, type: !1191)
!2693 = !DILocalVariable(name: "e", scope: !2681, file: !3, line: 250, type: !959)
!2694 = !DILocalVariable(name: "ei", scope: !2681, file: !3, line: 251, type: !2695)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !325, line: 682, baseType: !2696)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 679, size: 128, elements: !2697)
!2697 = !{!2698, !2699}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2696, file: !325, line: 680, baseType: !7, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2696, file: !325, line: 681, baseType: !2700, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!2701 = !DILocalVariable(name: "stmt", scope: !2702, file: !3, line: 269, type: !979)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 268, column: 2)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 267, column: 7)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 267, column: 7)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 264, column: 5)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 263, column: 3)
!2707 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 263, column: 3)
!2708 = !DILocalVariable(name: "decl", scope: !2702, file: !3, line: 270, type: !655)
!2709 = !DILocation(line: 247, column: 3, scope: !2681)
!2710 = !DILocation(line: 248, column: 31, scope: !2681)
!2711 = !DILocation(line: 248, column: 14, scope: !2681)
!2712 = !DILocation(line: 0, scope: !2681)
!2713 = !DILocation(line: 250, column: 3, scope: !2681)
!2714 = !DILocation(line: 251, column: 3, scope: !2681)
!2715 = !DILocation(line: 253, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 253, column: 7)
!2717 = !DILocation(line: 253, column: 24, scope: !2716)
!2718 = !DILocation(line: 253, column: 7, scope: !2681)
!2719 = !DILocation(line: 254, column: 33, scope: !2716)
!2720 = !DILocation(line: 254, column: 20, scope: !2716)
!2721 = !DILocation(line: 254, column: 57, scope: !2716)
!2722 = !DILocation(line: 254, column: 63, scope: !2716)
!2723 = !DILocation(line: 255, column: 12, scope: !2716)
!2724 = !DILocation(line: 255, column: 29, scope: !2716)
!2725 = !DILocation(line: 255, column: 35, scope: !2716)
!2726 = !DILocation(line: 255, column: 10, scope: !2716)
!2727 = !DILocation(line: 255, column: 40, scope: !2716)
!2728 = !DILocation(line: 254, column: 5, scope: !2716)
!2729 = !DILocation(line: 0, scope: !2716)
!2730 = !DILocation(line: 259, column: 41, scope: !2681)
!2731 = !DILocation(line: 259, column: 28, scope: !2681)
!2732 = !DILocation(line: 259, column: 65, scope: !2681)
!2733 = !DILocation(line: 259, column: 3, scope: !2681)
!2734 = !DILocation(line: 259, column: 20, scope: !2681)
!2735 = !DILocation(line: 259, column: 26, scope: !2681)
!2736 = !DILocation(line: 260, column: 28, scope: !2681)
!2737 = !DILocation(line: 260, column: 44, scope: !2681)
!2738 = !DILocation(line: 260, column: 50, scope: !2681)
!2739 = !DILocation(line: 261, column: 9, scope: !2681)
!2740 = !DILocation(line: 261, column: 33, scope: !2681)
!2741 = !DILocation(line: 260, column: 25, scope: !2681)
!2742 = !DILocation(line: 263, column: 3, scope: !2707)
!2743 = !DILocation(line: 0, scope: !2704)
!2744 = !DILocation(line: 0, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 292, column: 7)
!2746 = !DILocation(line: 0, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 292, column: 7)
!2748 = !DILocation(line: 263, column: 3, scope: !2706)
!2749 = !DILocation(line: 0, scope: !2707)
!2750 = !DILocation(line: 265, column: 24, scope: !2705)
!2751 = !DILocation(line: 265, column: 30, scope: !2705)
!2752 = !DILocation(line: 266, column: 6, scope: !2705)
!2753 = !DILocation(line: 266, column: 30, scope: !2705)
!2754 = !DILocation(line: 265, column: 17, scope: !2705)
!2755 = !DILocation(line: 267, column: 18, scope: !2704)
!2756 = !DILocation(line: 267, column: 12, scope: !2704)
!2757 = !DILocation(line: 267, column: 38, scope: !2703)
!2758 = !DILocation(line: 267, column: 37, scope: !2703)
!2759 = !DILocation(line: 267, column: 7, scope: !2704)
!2760 = !DILocation(line: 269, column: 18, scope: !2702)
!2761 = !DILocation(line: 0, scope: !2702)
!2762 = !DILocation(line: 270, column: 16, scope: !2702)
!2763 = !DILocation(line: 271, column: 11, scope: !2702)
!2764 = !DILocation(line: 274, column: 8, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 274, column: 8)
!2766 = !DILocation(line: 275, column: 8, scope: !2765)
!2767 = !DILocation(line: 275, column: 11, scope: !2765)
!2768 = !DILocation(line: 275, column: 36, scope: !2765)
!2769 = !DILocation(line: 274, column: 8, scope: !2702)
!2770 = !DILocation(line: 279, column: 29, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 279, column: 12)
!2772 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 278, column: 6)
!2773 = !DILocation(line: 279, column: 12, scope: !2771)
!2774 = !DILocation(line: 279, column: 12, scope: !2772)
!2775 = !DILocation(line: 281, column: 10, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 280, column: 3)
!2777 = !DILocation(line: 282, column: 5, scope: !2776)
!2778 = !DILocation(line: 283, column: 5, scope: !2776)
!2779 = !DILocation(line: 284, column: 3, scope: !2776)
!2780 = !DILocation(line: 287, column: 4, scope: !2702)
!2781 = !DILocation(line: 267, column: 55, scope: !2703)
!2782 = !DILocation(line: 267, column: 7, scope: !2703)
!2783 = distinct !{!2783, !2759, !2784}
!2784 = !DILocation(line: 288, column: 2, scope: !2704)
!2785 = !DILocation(line: 290, column: 11, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 290, column: 11)
!2787 = !DILocation(line: 292, column: 7, scope: !2745)
!2788 = !DILocation(line: 292, column: 7, scope: !2747)
!2789 = !DILocation(line: 293, column: 21, scope: !2747)
!2790 = !DILocation(line: 293, column: 24, scope: !2747)
!2791 = !DILocation(line: 293, column: 30, scope: !2747)
!2792 = !DILocation(line: 294, column: 7, scope: !2747)
!2793 = !DILocation(line: 294, column: 31, scope: !2747)
!2794 = !DILocation(line: 293, column: 18, scope: !2747)
!2795 = distinct !{!2795, !2787, !2796}
!2796 = !DILocation(line: 294, column: 33, scope: !2745)
!2797 = !DILocation(line: 291, column: 7, scope: !2786)
!2798 = !DILocation(line: 290, column: 11, scope: !2705)
!2799 = !DILocation(line: 0, scope: !2706)
!2800 = distinct !{!2800, !2742, !2801}
!2801 = !DILocation(line: 295, column: 5, scope: !2707)
!2802 = !DILocation(line: 296, column: 19, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 296, column: 7)
!2804 = !DILocation(line: 296, column: 7, scope: !2681)
!2805 = !DILocation(line: 297, column: 5, scope: !2803)
!2806 = !DILocation(line: 300, column: 7, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 300, column: 7)
!2808 = !DILocation(line: 300, column: 7, scope: !2681)
!2809 = !DILocation(line: 301, column: 33, scope: !2807)
!2810 = !DILocation(line: 301, column: 5, scope: !2807)
!2811 = !DILocation(line: 304, column: 1, scope: !2681)
!2812 = !DILocation(line: 303, column: 3, scope: !2681)
!2813 = distinct !DISubprogram(name: "gimple_in_ssa_p", scope: !2814, file: !2814, line: 33, type: !2815, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2819)
!2814 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!647, !2817}
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!2819 = !{!2820}
!2820 = !DILocalVariable(name: "fun", arg: 1, scope: !2813, file: !2814, line: 33, type: !2817)
!2821 = !DILocation(line: 0, scope: !2813)
!2822 = !DILocation(line: 35, column: 10, scope: !2813)
!2823 = !DILocation(line: 35, column: 14, scope: !2813)
!2824 = !DILocation(line: 35, column: 22, scope: !2813)
!2825 = !DILocation(line: 35, column: 17, scope: !2813)
!2826 = !DILocation(line: 35, column: 32, scope: !2813)
!2827 = !DILocation(line: 35, column: 51, scope: !2813)
!2828 = !DILocation(line: 35, column: 3, scope: !2813)
!2829 = distinct !DISubprogram(name: "gsi_start_bb", scope: !581, file: !581, line: 4418, type: !2830, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!2685, !1622}
!2832 = !{!2833, !2834, !2835}
!2833 = !DILocalVariable(name: "bb", arg: 1, scope: !2829, file: !581, line: 4418, type: !1622)
!2834 = !DILocalVariable(name: "i", scope: !2829, file: !581, line: 4420, type: !2685)
!2835 = !DILocalVariable(name: "seq", scope: !2829, file: !581, line: 4421, type: !969)
!2836 = !DILocation(line: 0, scope: !2829)
!2837 = !DILocation(line: 4420, column: 24, scope: !2829)
!2838 = !DILocation(line: 4423, column: 9, scope: !2829)
!2839 = !DILocation(line: 4424, column: 11, scope: !2829)
!2840 = !DILocation(line: 4424, column: 5, scope: !2829)
!2841 = !DILocation(line: 4424, column: 9, scope: !2829)
!2842 = !DILocation(line: 4425, column: 5, scope: !2829)
!2843 = !DILocation(line: 4425, column: 9, scope: !2829)
!2844 = !DILocation(line: 4426, column: 5, scope: !2829)
!2845 = !DILocation(line: 4426, column: 8, scope: !2829)
!2846 = !DILocation(line: 4429, column: 1, scope: !2829)
!2847 = distinct !DISubprogram(name: "gsi_end_p", scope: !581, file: !581, line: 4467, type: !2848, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!647, !2685}
!2850 = !{!2851}
!2851 = !DILocalVariable(name: "i", arg: 1, scope: !2847, file: !581, line: 4467, type: !2685)
!2852 = !DILocation(line: 4467, column: 33, scope: !2847)
!2853 = !DILocation(line: 4469, column: 12, scope: !2847)
!2854 = !DILocation(line: 4469, column: 16, scope: !2847)
!2855 = !DILocation(line: 4469, column: 10, scope: !2847)
!2856 = !DILocation(line: 4469, column: 3, scope: !2847)
!2857 = distinct !DISubprogram(name: "gsi_stmt", scope: !581, file: !581, line: 4501, type: !2858, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!979, !2685}
!2860 = !{!2861}
!2861 = !DILocalVariable(name: "i", arg: 1, scope: !2857, file: !581, line: 4501, type: !2685)
!2862 = !DILocation(line: 4501, column: 32, scope: !2857)
!2863 = !DILocation(line: 4503, column: 12, scope: !2857)
!2864 = !DILocation(line: 4503, column: 17, scope: !2857)
!2865 = !DILocation(line: 4503, column: 3, scope: !2857)
!2866 = distinct !DISubprogram(name: "is_gimple_call", scope: !581, file: !581, line: 1870, type: !2867, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2870)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!647, !2869}
!2869 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !656, line: 60, baseType: !2138)
!2870 = !{!2871}
!2871 = !DILocalVariable(name: "gs", arg: 1, scope: !2866, file: !581, line: 1870, type: !2869)
!2872 = !DILocation(line: 0, scope: !2866)
!2873 = !DILocation(line: 1872, column: 10, scope: !2866)
!2874 = !DILocation(line: 1872, column: 27, scope: !2866)
!2875 = !DILocation(line: 1872, column: 3, scope: !2866)
!2876 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !581, file: !581, line: 1954, type: !2877, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!655, !2869}
!2879 = !{!2880, !2881}
!2880 = !DILocalVariable(name: "gs", arg: 1, scope: !2876, file: !581, line: 1954, type: !2869)
!2881 = !DILocalVariable(name: "addr", scope: !2876, file: !581, line: 1956, type: !655)
!2882 = !DILocation(line: 0, scope: !2876)
!2883 = !DILocation(line: 1956, column: 15, scope: !2876)
!2884 = !DILocation(line: 1957, column: 7, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2876, file: !581, line: 1957, column: 7)
!2886 = !DILocation(line: 1957, column: 24, scope: !2885)
!2887 = !DILocation(line: 1957, column: 7, scope: !2876)
!2888 = !DILocation(line: 1958, column: 12, scope: !2885)
!2889 = !DILocation(line: 1958, column: 5, scope: !2885)
!2890 = !DILocation(line: 1960, column: 1, scope: !2876)
!2891 = distinct !DISubprogram(name: "update_stmt", scope: !581, file: !581, line: 1456, type: !2892, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{null, !979}
!2894 = !{!2895}
!2895 = !DILocalVariable(name: "s", arg: 1, scope: !2891, file: !581, line: 1456, type: !979)
!2896 = !DILocation(line: 0, scope: !2891)
!2897 = !DILocation(line: 1458, column: 7, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2891, file: !581, line: 1458, column: 7)
!2899 = !DILocation(line: 1458, column: 7, scope: !2891)
!2900 = !DILocation(line: 1460, column: 7, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2898, file: !581, line: 1459, column: 5)
!2902 = !DILocation(line: 1461, column: 7, scope: !2901)
!2903 = !DILocation(line: 1462, column: 5, scope: !2901)
!2904 = !DILocation(line: 1463, column: 1, scope: !2891)
!2905 = distinct !DISubprogram(name: "gsi_next", scope: !581, file: !581, line: 4485, type: !2906, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2909)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{null, !2908}
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2909 = !{!2910}
!2910 = !DILocalVariable(name: "i", arg: 1, scope: !2905, file: !581, line: 4485, type: !2908)
!2911 = !DILocation(line: 0, scope: !2905)
!2912 = !DILocation(line: 4487, column: 15, scope: !2905)
!2913 = !DILocation(line: 4487, column: 20, scope: !2905)
!2914 = !DILocation(line: 4487, column: 10, scope: !2905)
!2915 = !DILocation(line: 4488, column: 1, scope: !2905)
!2916 = distinct !DISubprogram(name: "ei_start_1", scope: !325, file: !325, line: 696, type: !2917, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!2695, !2700}
!2919 = !{!2920, !2921}
!2920 = !DILocalVariable(name: "ev", arg: 1, scope: !2916, file: !325, line: 696, type: !2700)
!2921 = !DILocalVariable(name: "i", scope: !2916, file: !325, line: 698, type: !2695)
!2922 = !DILocation(line: 0, scope: !2916)
!2923 = !DILocation(line: 700, column: 5, scope: !2916)
!2924 = !DILocation(line: 700, column: 11, scope: !2916)
!2925 = !DILocation(line: 701, column: 5, scope: !2916)
!2926 = !DILocation(line: 701, column: 15, scope: !2916)
!2927 = !DILocation(line: 703, column: 3, scope: !2916)
!2928 = distinct !DISubprogram(name: "ei_cond", scope: !325, file: !325, line: 771, type: !2929, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2932)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!647, !2695, !2931}
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!2932 = !{!2933, !2934}
!2933 = !DILocalVariable(name: "ei", arg: 1, scope: !2928, file: !325, line: 771, type: !2695)
!2934 = !DILocalVariable(name: "p", arg: 2, scope: !2928, file: !325, line: 771, type: !2931)
!2935 = !DILocation(line: 0, scope: !2928)
!2936 = !DILocation(line: 773, column: 8, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2928, file: !325, line: 773, column: 7)
!2938 = !DILocation(line: 773, column: 7, scope: !2928)
!2939 = !DILocation(line: 775, column: 12, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2937, file: !325, line: 774, column: 5)
!2941 = !DILocation(line: 776, column: 7, scope: !2940)
!2942 = !DILocation(line: 781, column: 7, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2937, file: !325, line: 779, column: 5)
!2944 = !DILocation(line: 0, scope: !2937)
!2945 = !DILocation(line: 783, column: 1, scope: !2928)
!2946 = distinct !DISubprogram(name: "ei_next", scope: !325, file: !325, line: 736, type: !2947, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2950)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !2949}
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2950 = !{!2951}
!2951 = !DILocalVariable(name: "i", arg: 1, scope: !2946, file: !325, line: 736, type: !2949)
!2952 = !DILocation(line: 0, scope: !2946)
!2953 = !DILocation(line: 738, column: 3, scope: !2946)
!2954 = !DILocation(line: 739, column: 11, scope: !2946)
!2955 = !DILocation(line: 740, column: 1, scope: !2946)
!2956 = distinct !DISubprogram(name: "execute_init_datastructures", scope: !3, file: !3, line: 329, type: !2156, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2957 = !DILocation(line: 332, column: 18, scope: !2956)
!2958 = !DILocation(line: 332, column: 3, scope: !2956)
!2959 = !DILocation(line: 333, column: 3, scope: !2956)
!2960 = distinct !DISubprogram(name: "tree_lowering_passes", scope: !3, file: !3, line: 356, type: !2961, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{null, !655}
!2963 = !{!2964, !2965}
!2964 = !DILocalVariable(name: "fn", arg: 1, scope: !2960, file: !3, line: 356, type: !655)
!2965 = !DILocalVariable(name: "saved_current_function_decl", scope: !2960, file: !3, line: 358, type: !655)
!2966 = !DILocation(line: 0, scope: !2960)
!2967 = !DILocation(line: 358, column: 38, scope: !2960)
!2968 = !DILocation(line: 360, column: 25, scope: !2960)
!2969 = !DILocation(line: 361, column: 14, scope: !2960)
!2970 = !DILocation(line: 361, column: 3, scope: !2960)
!2971 = !DILocation(line: 362, column: 3, scope: !2960)
!2972 = !DILocation(line: 363, column: 3, scope: !2960)
!2973 = !DILocation(line: 364, column: 22, scope: !2960)
!2974 = !DILocation(line: 364, column: 3, scope: !2960)
!2975 = !DILocation(line: 365, column: 7, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 365, column: 7)
!2977 = !DILocation(line: 365, column: 16, scope: !2976)
!2978 = !DILocation(line: 365, column: 19, scope: !2976)
!2979 = !DILocation(line: 365, column: 7, scope: !2960)
!2980 = !DILocation(line: 366, column: 53, scope: !2976)
!2981 = !DILocation(line: 366, column: 5, scope: !2976)
!2982 = !DILocation(line: 367, column: 3, scope: !2960)
!2983 = !DILocation(line: 368, column: 3, scope: !2960)
!2984 = !DILocation(line: 369, column: 3, scope: !2960)
!2985 = !DILocation(line: 370, column: 25, scope: !2960)
!2986 = !DILocation(line: 371, column: 3, scope: !2960)
!2987 = !DILocation(line: 372, column: 3, scope: !2960)
!2988 = !DILocation(line: 373, column: 1, scope: !2960)
!2989 = distinct !DISubprogram(name: "tree_rest_of_compilation", scope: !3, file: !3, line: 379, type: !2961, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2990)
!2990 = !{!2991, !2992, !2993, !2996}
!2991 = !DILocalVariable(name: "fndecl", arg: 1, scope: !2989, file: !3, line: 379, type: !655)
!2992 = !DILocalVariable(name: "saved_loc", scope: !2989, file: !3, line: 381, type: !780)
!2993 = !DILocalVariable(name: "ret_type", scope: !2994, file: !3, line: 430, type: !655)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 429, column: 5)
!2995 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 428, column: 7)
!2996 = !DILocalVariable(name: "size_as_int", scope: !2997, file: !3, line: 437, type: !7)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 436, column: 2)
!2998 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 432, column: 11)
!2999 = !DILocation(line: 0, scope: !2989)
!3000 = !DILocation(line: 383, column: 3, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 383, column: 3)
!3002 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 383, column: 3)
!3003 = !DILocation(line: 383, column: 3, scope: !3002)
!3004 = !DILocation(line: 385, column: 3, scope: !2989)
!3005 = !DILocation(line: 388, column: 3, scope: !2989)
!3006 = !DILocation(line: 391, column: 25, scope: !2989)
!3007 = !DILocation(line: 392, column: 15, scope: !2989)
!3008 = !DILocation(line: 393, column: 20, scope: !2989)
!3009 = !DILocation(line: 393, column: 18, scope: !2989)
!3010 = !DILocation(line: 394, column: 3, scope: !2989)
!3011 = !DILocation(line: 400, column: 3, scope: !2989)
!3012 = !DILocation(line: 400, column: 9, scope: !2989)
!3013 = !DILocation(line: 400, column: 35, scope: !2989)
!3014 = !DILocation(line: 402, column: 3, scope: !2989)
!3015 = !DILocation(line: 404, column: 3, scope: !2989)
!3016 = !DILocation(line: 406, column: 3, scope: !2989)
!3017 = !DILocation(line: 411, column: 3, scope: !2989)
!3018 = !DILocation(line: 413, column: 22, scope: !2989)
!3019 = !DILocation(line: 413, column: 3, scope: !2989)
!3020 = !DILocation(line: 416, column: 3, scope: !2989)
!3021 = !DILocation(line: 418, column: 3, scope: !2989)
!3022 = !DILocation(line: 421, column: 3, scope: !2989)
!3023 = !DILocation(line: 423, column: 3, scope: !2989)
!3024 = !DILocation(line: 428, column: 7, scope: !2995)
!3025 = !DILocation(line: 428, column: 24, scope: !2995)
!3026 = !DILocation(line: 428, column: 28, scope: !2995)
!3027 = !DILocation(line: 428, column: 51, scope: !2995)
!3028 = !DILocation(line: 428, column: 54, scope: !2995)
!3029 = !DILocation(line: 428, column: 7, scope: !2989)
!3030 = !DILocation(line: 430, column: 23, scope: !2994)
!3031 = !DILocation(line: 0, scope: !2994)
!3032 = !DILocation(line: 432, column: 11, scope: !2998)
!3033 = !DILocation(line: 432, column: 20, scope: !2998)
!3034 = !DILocation(line: 432, column: 23, scope: !2998)
!3035 = !DILocation(line: 433, column: 4, scope: !2998)
!3036 = !DILocation(line: 433, column: 7, scope: !2998)
!3037 = !DILocation(line: 433, column: 45, scope: !2998)
!3038 = !DILocation(line: 434, column: 4, scope: !2998)
!3039 = !DILocation(line: 435, column: 8, scope: !2998)
!3040 = !DILocation(line: 434, column: 11, scope: !2998)
!3041 = !DILocation(line: 434, column: 9, scope: !2998)
!3042 = !DILocation(line: 432, column: 11, scope: !2994)
!3043 = !DILocation(line: 438, column: 8, scope: !2997)
!3044 = !DILocation(line: 0, scope: !2997)
!3045 = !DILocation(line: 440, column: 26, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 440, column: 8)
!3047 = !DILocation(line: 440, column: 53, scope: !3046)
!3048 = !DILocation(line: 440, column: 8, scope: !3046)
!3049 = !DILocation(line: 440, column: 66, scope: !3046)
!3050 = !DILocation(line: 440, column: 8, scope: !2997)
!3051 = !DILocation(line: 441, column: 6, scope: !3046)
!3052 = !DILocation(line: 445, column: 30, scope: !3046)
!3053 = !DILocation(line: 444, column: 6, scope: !3046)
!3054 = !DILocation(line: 449, column: 3, scope: !2989)
!3055 = !DILocation(line: 450, column: 7, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 450, column: 7)
!3057 = !DILocation(line: 450, column: 37, scope: !3056)
!3058 = !DILocation(line: 451, column: 7, scope: !3056)
!3059 = !DILocation(line: 451, column: 11, scope: !3056)
!3060 = !DILocation(line: 451, column: 33, scope: !3056)
!3061 = !DILocation(line: 450, column: 7, scope: !2989)
!3062 = !DILocation(line: 458, column: 11, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 458, column: 11)
!3064 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 452, column: 5)
!3065 = !DILocation(line: 458, column: 33, scope: !3063)
!3066 = !DILocation(line: 458, column: 11, scope: !3064)
!3067 = !DILocation(line: 459, column: 26, scope: !3063)
!3068 = !DILocation(line: 459, column: 24, scope: !3063)
!3069 = !DILocation(line: 459, column: 2, scope: !3063)
!3070 = !DILocation(line: 462, column: 18, scope: !2989)
!3071 = !DILocation(line: 464, column: 3, scope: !2989)
!3072 = !DILocation(line: 465, column: 3, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 465, column: 3)
!3074 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 465, column: 3)
!3075 = !DILocation(line: 465, column: 3, scope: !3074)
!3076 = !DILocation(line: 466, column: 1, scope: !2989)
!3077 = distinct !DISubprogram(name: "bb_seq", scope: !581, file: !581, line: 237, type: !3078, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3083)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!969, !3080}
!3080 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !656, line: 112, baseType: !3081)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!3083 = !{!3084}
!3084 = !DILocalVariable(name: "bb", arg: 1, scope: !3077, file: !581, line: 237, type: !3080)
!3085 = !DILocation(line: 0, scope: !3077)
!3086 = !DILocation(line: 239, column: 17, scope: !3077)
!3087 = !DILocation(line: 239, column: 23, scope: !3077)
!3088 = !DILocation(line: 239, column: 33, scope: !3077)
!3089 = !DILocation(line: 239, column: 43, scope: !3077)
!3090 = !DILocation(line: 239, column: 36, scope: !3077)
!3091 = !DILocation(line: 239, column: 10, scope: !3077)
!3092 = !DILocation(line: 239, column: 68, scope: !3077)
!3093 = !DILocation(line: 239, column: 3, scope: !3077)
!3094 = distinct !DISubprogram(name: "gimple_seq_first", scope: !581, file: !581, line: 159, type: !3095, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3100)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!974, !3097}
!3097 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !656, line: 67, baseType: !3098)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!3100 = !{!3101}
!3101 = !DILocalVariable(name: "s", arg: 1, scope: !3094, file: !581, line: 159, type: !3097)
!3102 = !DILocation(line: 0, scope: !3094)
!3103 = !DILocation(line: 161, column: 10, scope: !3094)
!3104 = !DILocation(line: 161, column: 17, scope: !3094)
!3105 = !DILocation(line: 161, column: 3, scope: !3094)
!3106 = distinct !DISubprogram(name: "gimple_code", scope: !581, file: !581, line: 1052, type: !3107, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!580, !2869}
!3109 = !{!3110}
!3110 = !DILocalVariable(name: "g", arg: 1, scope: !3106, file: !581, line: 1052, type: !2869)
!3111 = !DILocation(line: 0, scope: !3106)
!3112 = !DILocation(line: 1054, column: 20, scope: !3106)
!3113 = !DILocation(line: 1054, column: 3, scope: !3106)
!3114 = distinct !DISubprogram(name: "gimple_call_fn", scope: !581, file: !581, line: 1911, type: !2877, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3115)
!3115 = !{!3116}
!3116 = !DILocalVariable(name: "gs", arg: 1, scope: !3114, file: !581, line: 1911, type: !2869)
!3117 = !DILocation(line: 0, scope: !3114)
!3118 = !DILocation(line: 1914, column: 10, scope: !3114)
!3119 = !DILocation(line: 1914, column: 3, scope: !3114)
!3120 = distinct !DISubprogram(name: "gimple_op", scope: !581, file: !581, line: 1631, type: !3121, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!655, !2869, !7}
!3123 = !{!3124, !3125}
!3124 = !DILocalVariable(name: "gs", arg: 1, scope: !3120, file: !581, line: 1631, type: !2869)
!3125 = !DILocalVariable(name: "i", arg: 2, scope: !3120, file: !581, line: 1631, type: !7)
!3126 = !DILocation(line: 0, scope: !3120)
!3127 = !DILocation(line: 1633, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3120, file: !581, line: 1633, column: 7)
!3129 = !DILocation(line: 1633, column: 7, scope: !3120)
!3130 = !DILocation(line: 1638, column: 14, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3128, file: !581, line: 1634, column: 5)
!3132 = !DILocation(line: 1638, column: 7, scope: !3131)
!3133 = !DILocation(line: 0, scope: !3128)
!3134 = !DILocation(line: 1642, column: 1, scope: !3120)
!3135 = distinct !DISubprogram(name: "gimple_has_ops", scope: !581, file: !581, line: 1274, type: !2867, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3136)
!3136 = !{!3137}
!3137 = !DILocalVariable(name: "g", arg: 1, scope: !3135, file: !581, line: 1274, type: !2869)
!3138 = !DILocation(line: 0, scope: !3135)
!3139 = !DILocation(line: 1276, column: 10, scope: !3135)
!3140 = !DILocation(line: 1276, column: 26, scope: !3135)
!3141 = !DILocation(line: 1276, column: 41, scope: !3135)
!3142 = !DILocation(line: 1276, column: 44, scope: !3135)
!3143 = !DILocation(line: 1276, column: 60, scope: !3135)
!3144 = !DILocation(line: 1276, column: 3, scope: !3135)
!3145 = distinct !DISubprogram(name: "gimple_ops", scope: !581, file: !581, line: 1614, type: !3146, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!1014, !979}
!3148 = !{!3149, !3150}
!3149 = !DILocalVariable(name: "gs", arg: 1, scope: !3145, file: !581, line: 1614, type: !979)
!3150 = !DILocalVariable(name: "off", scope: !3145, file: !581, line: 1616, type: !1125)
!3151 = !DILocation(line: 0, scope: !3145)
!3152 = !DILocation(line: 1621, column: 28, scope: !3145)
!3153 = !DILocation(line: 1621, column: 9, scope: !3145)
!3154 = !DILocation(line: 1622, column: 3, scope: !3145)
!3155 = !DILocation(line: 1624, column: 20, scope: !3145)
!3156 = !DILocation(line: 1624, column: 32, scope: !3145)
!3157 = !DILocation(line: 1624, column: 10, scope: !3145)
!3158 = !DILocation(line: 1624, column: 3, scope: !3145)
!3159 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !581, file: !581, line: 1073, type: !3160, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!619, !979}
!3162 = !{!3163}
!3163 = !DILocalVariable(name: "gs", arg: 1, scope: !3159, file: !581, line: 1073, type: !979)
!3164 = !DILocation(line: 0, scope: !3159)
!3165 = !DILocation(line: 1075, column: 24, scope: !3159)
!3166 = !DILocation(line: 1075, column: 10, scope: !3159)
!3167 = !DILocation(line: 1075, column: 3, scope: !3159)
!3168 = distinct !DISubprogram(name: "gss_for_code", scope: !581, file: !581, line: 1061, type: !3169, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3171)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!619, !580}
!3171 = !{!3172}
!3172 = !DILocalVariable(name: "code", arg: 1, scope: !3168, file: !581, line: 1061, type: !580)
!3173 = !DILocation(line: 0, scope: !3168)
!3174 = !DILocation(line: 1066, column: 10, scope: !3168)
!3175 = !DILocation(line: 1066, column: 3, scope: !3168)
!3176 = distinct !DISubprogram(name: "ei_end_p", scope: !325, file: !325, line: 721, type: !3177, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3179)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!647, !2695}
!3179 = !{!3180}
!3180 = !DILocalVariable(name: "i", arg: 1, scope: !3176, file: !325, line: 721, type: !2695)
!3181 = !DILocation(line: 723, column: 22, scope: !3176)
!3182 = !DILocation(line: 723, column: 19, scope: !3176)
!3183 = !DILocation(line: 723, column: 10, scope: !3176)
!3184 = !DILocation(line: 723, column: 3, scope: !3176)
!3185 = distinct !DISubprogram(name: "ei_edge", scope: !325, file: !325, line: 752, type: !3186, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!959, !2695}
!3188 = !{!3189}
!3189 = !DILocalVariable(name: "i", arg: 1, scope: !3185, file: !325, line: 752, type: !2695)
!3190 = !DILocation(line: 754, column: 10, scope: !3185)
!3191 = !DILocation(line: 754, column: 3, scope: !3185)
!3192 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !325, file: !325, line: 150, type: !3193, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3197)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!7, !3195}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!3197 = !{!3198}
!3198 = !DILocalVariable(name: "vec_", arg: 1, scope: !3192, file: !325, line: 150, type: !3195)
!3199 = !DILocation(line: 0, scope: !3192)
!3200 = !DILocation(line: 150, column: 1, scope: !3192)
!3201 = distinct !DISubprogram(name: "ei_container", scope: !325, file: !325, line: 685, type: !3202, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!947, !2695}
!3204 = !{!3205}
!3205 = !DILocalVariable(name: "i", arg: 1, scope: !3201, file: !325, line: 685, type: !2695)
!3206 = !DILocation(line: 687, column: 3, scope: !3201)
!3207 = !DILocation(line: 688, column: 10, scope: !3201)
!3208 = !DILocation(line: 688, column: 3, scope: !3201)
!3209 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !325, file: !325, line: 150, type: !3210, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!959, !3195, !7}
!3212 = !{!3213, !3214}
!3213 = !DILocalVariable(name: "vec_", arg: 1, scope: !3209, file: !325, line: 150, type: !3195)
!3214 = !DILocalVariable(name: "ix_", arg: 2, scope: !3209, file: !325, line: 150, type: !7)
!3215 = !DILocation(line: 0, scope: !3209)
!3216 = !DILocation(line: 150, column: 1, scope: !3209)
